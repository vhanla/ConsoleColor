unit ColorPicker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, StdCtrls, Math, Buttons, System.ImageList,
  UCL.TUButton;

const
  CM_COLORUPDATE = WM_USER + 1984; // Custom Message...

type
  PRGB = ^TRGB;
  TRGB = record b, g, r: Byte;
  end;
  PRGBA = ^TRGBA;
  TRGBA = record b, g, r, a: Byte;
  end;
  PRGBArray = ^TRGBArray;
  TRGBARRAY = array[0..0] of TRGB;
  THSB = record h, s, b: Word;
  end;

  TfrmColorPicker = class(TForm)
    ilMain: TImageList;
    editColor2: TEdit;
    editColor3: TEdit;
    editColor1: TEdit;
    timeAni: TTimer;
    editColor: TEdit;
    labHex: TLabel;
    Panel1: TPanel;
    imgColorBox: TImage;
    imgZBar: TImage;
    imgColor: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnVar: TSpeedButton;
    imgAlpha: TImage;
    imgPal: TImage;
    imgDropper: TImage;
    tmrDropper: TTimer;
    UButton1: TUButton;
    UButton2: TUButton;
    procedure PaintColorPnl;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure imgColorBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgColorBarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgColorBarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgColorBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgColorBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgColorBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure timeAniTimer(Sender: TObject);
    procedure btnVarClick(Sender: TObject);
    procedure imgColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgAlphaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgAlphaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgAlphaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgPalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure editColor1KeyPress(Sender: TObject; var Key: Char);
    procedure editColor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editColor1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editColor1Change(Sender: TObject);
    procedure editColor2Change(Sender: TObject);
    procedure editColor3Change(Sender: TObject);
    procedure imgDropperClick(Sender: TObject);
    procedure UButton1Click(Sender: TObject);
    procedure UButton2Click(Sender: TObject);
  private
    FAlphaMode: Boolean;
    procedure PaintAlphaBar;
    procedure SetAlphaMode(const Value: Boolean);
    procedure PaintAlphaColor;
    { Private declarations }
  public
    { Public declarations }
    function GetColor: TColor;
    procedure SetColor(Color: TColor; Update: Boolean); overload;
    procedure SetColor(Color: TColor; Alpha: Byte; Update: Boolean); overload;
    procedure PaintVar;
    procedure PaintColorHue;
    procedure PaintHueBar;
    property AlphaMode: Boolean read FAlphaMode write SetAlphaMode;
  end;

const
  AniStep = 4;

var
  frmColorPicker: TfrmColorPicker;
  HBoxBmp, HBarBmp, ABarBmp, ColorBmp: TBitmap;
  RGBColor: TRGB;
  RGBAlpha: Byte;
  HSBColor: THSB;
  ColorMode, CellMul, CellDiv: Byte;
  DoColor, DoBar, DoVar, DoLive, DoAlpha: Boolean;
  LUT138: array[0..138] of Byte;
  CTab: array[0..255] of TRGB;
  WebSafeColorLut: array[0..255] of Byte;
  VarIdx: Integer;
  AniCount: Integer;
  NewColor: TColor;
  OldColor: TColor;
  PrevColor: TColor;
  OldAlpha: Byte;
  BoxX, BoxY, BarX, BarA: Integer;
  LastHue: Integer;
  TextEnter: Boolean;

implementation

{$R *.dfm}

uses
  ColorUtils, Dropper, Main;

function TfrmColorPicker.GetColor: TColor;
begin
  Result := RGB(RGBColor.r, RGBColor.g, RGBColor.b);
end;

procedure TfrmColorPicker.imgDropperClick(Sender: TObject);
begin
  PrevColor := GetColor;
  imgDropper.Visible := False;
  if frmDropper.ShowModal = mrOk then
  begin
    SetColor(GetColor, True);
  end
  else
    SetColor(PrevColor, True);
  imgDropper.Visible := True;
  Screen.Cursor := crDefault;
end;

procedure TfrmColorPicker.SetAlphaMode(const Value: Boolean);
begin
  FAlphaMode := Value;
  imgAlpha.Visible := FAlphaMode;
  if FAlphaMode then
  begin
    labHex.Left := 144;
    labHex.Caption := 'A';
    editColor.Left := 156;
    editColor.Width := 27;
  end
  else
  begin
    labHex.Left := 142;
    labHex.Caption := '#';
    editColor.Left := 153;
    editColor.Width := 53;
  end;
  editColor.ReadOnly := not FAlphaMode;
end;

procedure TfrmColorPicker.SetColor(Color: TColor; Alpha: Byte; Update: Boolean);
begin
  RGBAlpha := Alpha;
  SetColor(Color, Update);
end;

procedure TfrmColorPicker.SetColor(Color: TColor; Update: Boolean);
var
  c: Integer;
  h, s, b: Word;
begin
  if not UpDate then
    OldColor := Color;
  c := ColorToRGB(Color);
  RGBColor.b := Byte(c shr 16);
  RGBColor.g := Byte(c shr 8);
  RGBColor.r := Byte(c);
  RGBtoHSB(RGBColor.r, RGBColor.g, RGBColor.b, h, s, b);
  BoxX := MulDiv(137, s, 255);
  BoxY := 137 - MulDiv(137, b, 255);
  BarX := MulDiv(192, h, 360);
  BarA := MulDiv(137, RGBAlpha, 255);
  LastHue := -1;
  PaintColorPnl;
end;

procedure TfrmColorPicker.PaintVar;
var
  x, y, i, j, k, q, h: Integer;
  col: TColor;
  cell: TRect;
  s: Double;
  mode16: Boolean;
begin
  mode16 := True;
  imgColorBox.Canvas.Brush.Color := clBlack;
  imgColorBox.Canvas.Rectangle(Canvas.ClipRect);
  // 16 or 64 mode ...
  if mode16 then
  begin
    CellMul := 4;
    CellDiv := 34;
    q := 8;
  end
  else
  begin
    CellMul := 8;
    CellDiv := 17;
    q := 32;
  end;
  s := 255 / (q - 1);
  j := (q * 2) - 1;
  h := MulDiv(360, BarX, 192);
  for i := 0 to q - 1 do
  begin
    k := Trunc(s * i);
    HSBtoRGB(h, k, 255, CTab[i].r, CTab[i].g, CTab[i].b);
    HSBtoRGB(h, 255, k, CTab[j - i].r, CTab[j - i].g, CTab[j - i].b);
  end;
  HBoxBmp.Canvas.Brush.Style := bsClear;
  HBoxBmp.Canvas.Brush.Color := clBlack;
  HBoxBmp.Canvas.Pen.Color := clBlack;
  HBoxBmp.Canvas.Rectangle(0, 0, 138, 138);
  HBoxBmp.Canvas.Brush.Style := bsSolid;
  for y := 0 to CellMul - 1 do
  begin
    for x := 0 to CellMul - 1 do
    begin
      i := (y * CellMul) + x;
      col := (cTab[i].b shl 16) + (cTab[i].g shl 8) + cTab[i].r;
      HBoxBmp.Canvas.Brush.Color := col;
      HBoxBmp.Canvas.Pen.Color := col;
      cell.Left := 1 + (x * CellDiv);
      cell.Top := 1 + (y * CellDiv);
      Cell.Right := Cell.Left + CellDiv - 2;
      Cell.Bottom := Cell.Top + CellDiv - 2;
      HBoxBmp.Canvas.Rectangle(Cell);
    end;
  end;
  imgColorBox.Canvas.Draw(1, 1, HBoxBmp);
end;

procedure TfrmColorPicker.PaintColorPnl;
begin
  NewColor := (RGBColor.b shl 16) + (RGBColor.g shl 8) + RGBColor.r;
  PaintHueBar;
  PaintAlphaBar;
  if DoVar then
    PaintVar
  else
    PaintColorHue;
  if FAlphaMode then
  begin
    PaintAlphaColor;
    imgColor.Canvas.Pen.Color := clBlack;
    imgColor.Canvas.Brush.Style := bsClear;
  end
  else
  begin
    imgColor.Canvas.Pen.Color := clBlack;
    imgColor.Canvas.Brush.Color := OldColor;
    imgColor.Canvas.Rectangle(0, 0, 22, 20);
    imgColor.Canvas.Brush.Color := NewColor;
    imgColor.Canvas.Rectangle(0, 19, 22, 39);
  end;
  if not TextEnter then
  begin
    editColor1.Text := IntToStr(RGBColor.r);
    editColor2.Text := IntToStr(RGBColor.g);
    editColor3.Text := IntToStr(RGBColor.b);
    if FAlphaMode then
      editColor.Text := IntToStr(RGBAlpha)
    else
      editColor.Text := IntToHex(RGBColor.r, 2) + IntToHex(RGBColor.g, 2) +
        IntToHex(RGBColor.b, 2);
  end;
  if DoLive then
    PostMessage(Handle, CM_COLORUPDATE, OldColor, NewColor);
end;

procedure TfrmColorPicker.btnVarClick(Sender: TObject);
begin
  DoVar := btnVar.Down;
  LastHue := -1;
  PaintColorPnl;
end;

procedure TfrmColorPicker.editColor1Change(Sender: TObject);
var
  r,g,b: byte;
  aColor: LongInt;
begin
  r := 255;
  g := StrToInt(editColor1.Text);
  b := StrToInt(editColor1.Text);
  editColor1.Color := RGB(r,g,b);
  if g > 128 then
    editColor1.Font.Color := RGB(0,0,0)
  else
    editColor1.Font.Color := RGB(255,255,255);
end;

procedure TfrmColorPicker.editColor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  idx, i: Integer;
begin
  TextEnter := True;
  if Key = 13 then
  begin
    idx := (Sender as TEdit).Tag;
    case idx of
      0:
        begin
          i := StrToIntDef(editColor1.Text, -1);
          if (i >= 0) and (i <= 255) then
            RGBColor.r := i;
        end;
      1:
        begin
          i := StrToIntDef(editColor2.Text, -1);
          if (i >= 0) and (i <= 255) then
            RGBColor.g := i;
        end;
      2:
        begin
          i := StrToIntDef(editColor3.Text, -1);
          if (i >= 0) and (i <= 255) then
            RGBColor.b := i;
        end;
      3:
        begin
          if FAlphaMode then
          begin
            i := StrToIntDef(editColor.Text, -1);
            if (i >= 0) and (i <= 255) then
            begin
              RGBAlpha := i;
              BarA := MulDiv(137, i, 255);
            end;
          end;
        end;
    end;
    PaintColorPnl;
  end;
end;

procedure TfrmColorPicker.editColor1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    Key := #0;
end;

procedure TfrmColorPicker.editColor1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TextEnter := False;
end;

procedure TfrmColorPicker.editColor2Change(Sender: TObject);
var
  r,g,b: byte;
  aColor: LongInt;
begin
  g := 255;
  r := StrToInt(editColor2.Text);
  b := StrToInt(editColor2.Text);
  editColor2.Color := RGB(r,g,b);
  if r < 256 then
    editColor2.Font.Color := RGB(0,0,0)
  else
    editColor2.Font.Color := RGB(255,255,255);
end;

procedure TfrmColorPicker.editColor3Change(Sender: TObject);
var
  r,g,b: byte;
  aColor: LongInt;
begin
  b := 255;
  g := StrToInt(editColor3.Text);
  r := StrToInt(editColor3.Text);
  editColor3.Color := RGB(r,g,b);
  if r > 128 then
    editColor3.Font.Color := RGB(0,0,0)
  else
    editColor3.Font.Color := RGB(255,255,255);
end;

procedure TfrmColorPicker.FormCreate(Sender: TObject);
const
  Colors: array[0..15] of TColor = (clBlack, clWhite, clGray, clSilver,
    clMaroon, clRed, clGreen, clLime, clOlive, clYellow, clNavy, clBlue,
    clPurple, clFuchsia, clTeal, clAqua);
var
  i, j: Integer;
begin
  HBoxBmp := TBitmap.Create;
  HBoxBmp.PixelFormat := pf24bit;
  HBoxBmp.Width := 138;
  HBoxBmp.Height := 138;
  HBarBmp := TBitmap.Create;
  HBarBmp.PixelFormat := pf24bit;
  HBarBmp.Width := 192;
  HBarBmp.Height := 1;
  ABarBmp := TBitmap.Create;
  ABarBmp.PixelFormat := pf24bit;
  ABarBmp.Width := 22;
  ABarBmp.Height := 138;
  ColorBmp := TBitmap.Create;
  ColorBmp.PixelFormat := pf24bit;
  ColorBmp.Width := 22;
  ColorBmp.Height := 40;
  Alphamode := True;
  Randomize;
  RGBColor.r := Random(255);
  RGBColor.g := Random(255);
  RGBColor.b := Random(255);
  RGBAlpha := Random(255);
  OldColor := (RGBColor.b shl 16) + (RGBColor.g shl 8) + RGBColor.r;
  OldAlpha := RGBAlpha;
  SetColor((RGBColor.b shl 16) + (RGBColor.g shl 8) + (RGBColor.r), RGBAlpha,
    False);
  for i := 0 to 255 do
    WebSafeColorLut[I] := ((I + $19) div $33) * $33;
  for i := 0 to 137 do
    Lut138[i] := MulDiv(255, i, 137);
  DoColor := False;
  DoBar := False;
  DoVar := False;
  DoLive := False;
  VarIdx := -1;
  LastHue := -1;
  PaintColorPnl;
  // Paint 16 colors palette
  i := 0;
  j := 0;
  while j < 8 do
  begin
    imgPal.Canvas.Brush.Color := Colors[i];
    imgPal.Canvas.FillRect(Rect(0, j * 9, 11, (j + 1) * 9));
    imgPal.Canvas.Brush.Color := Colors[i + 1];
    imgPal.Canvas.FillRect(Rect(11, j * 9, 22, (j + 1) * 9));
    inc(i, 2);
    inc(j);
  end;
end;

procedure TfrmColorPicker.FormDestroy(Sender: TObject);
begin
  ColorBmp.Free;
  ABarBmp.Free;
  HBarBmp.Free;
  HBoxBmp.Free;

end;

procedure TfrmColorPicker.imgAlphaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DoAlpha := True;
  if y < 0 then
    Y := 0;
  if y > imgAlpha.Height - 1 then
    y := imgAlpha.Height - 1;
  BarA := Y;
  RGBAlpha := MulDiv(255, BarA, 137);
  PaintColorPnl;
end;

procedure TfrmColorPicker.imgAlphaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if not DoAlpha then
    Exit;
  if y < 0 then
    y := 0;
  if y > imgAlpha.Height - 1 then
    y := imgAlpha.Height - 1;
  BarA := Y;
  RGBAlpha := MulDiv(255, BarA, 137);
  PaintColorPnl;
end;

procedure TfrmColorPicker.imgAlphaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  DoAlpha := False;
end;

procedure TfrmColorPicker.imgColorBarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DoBar := True;
  if x < 0 then
    x := 0;
  if x > imgZBar.Width - 1 then
    x := imgZBar.Width - 1;
  BarX := x;
  HSBtoRGB(MulDiv(360, BarX, 192), LUT138[BoxX], 255 - LUT138[BoxY],
    RGBColor.r, RGBColor.g, RGBColor.b);
  PaintcolorPnl;
end;

procedure TfrmColorPicker.imgColorBarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if not DoBar then
    Exit;
  if x < 0 then
    x := 0;
  if x > imgZBar.Width - 1 then
    x := imgZBar.Width - 1;
  BarX := x;
  HSBtoRGB(MulDiv(360, BarX, 192), LUT138[BoxX], 255 - LUT138[BoxY],
    RGBColor.r, RGBColor.g, RGBColor.b);
  PaintcolorPnl;
end;

procedure TfrmColorPicker.imgColorBarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DoBar := False;
end;

procedure TfrmColorPicker.imgColorBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DoVar then
  begin
    VarIdx := ((y div CellDiv) * CellMul) + (x div CellDiv);
    RGBColor.r := CTab[VarIdx].r;
    RGBColor.g := CTab[VarIdx].g;
    RGBColor.b := CTab[VarIdx].b;
    RGBtoHSB(RGBColor.r, RGBColor.g, RGBColor.b, HSBColor.h, HSBColor.s,
      HSBColor.b);
    BoxX := MulDiv(137, HSBColor.s, 255);
    BoxY := 137 - MulDiv(137, HSBColor.b, 255);
    PaintColorPnl;
    AniCount := AniStep;
    TimeAni.Enabled := VarIdx <> -1;
    Exit;
  end;
  DoColor := True;
  if x < 0 then
    x := 0;
  if x > imgColorBox.Width - 1 then
    x := imgColorBox.Width - 1;
  if y < 0 then
    y := 0;
  if y > imgColorBox.Height - 1 then
    y := imgColorBox.Height - 1;
  BoxX := x;
  BoxY := y;
  HSBtoRGB(MulDiv(360, BarX, 192), LUT138[BoxX], 255 - LUT138[BoxY],
    RGBColor.r, RGBColor.g, RGBColor.b);
  PaintcolorPnl;
end;

procedure TfrmColorPicker.imgColorBoxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if not DoColor then
    Exit;
  if x < 0 then
    x := 0;
  if x > imgColorBox.Width - 1 then
    x := imgColorBox.Width - 1;
  if y < 0 then
    y := 0;
  if y > imgColorBox.Height - 1 then
    y := imgColorBox.Height - 1;
  BoxX := x;
  BoxY := y;
  HSBtoRGB(MulDiv(360, BarX, 192), LUT138[BoxX], 255 - LUT138[BoxY],
    RGBColor.r, RGBColor.g, RGBColor.b);
  PaintColorPnl;
end;

procedure TfrmColorPicker.imgColorBoxMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DoColor := False;
end;

procedure TfrmColorPicker.imgColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if y < 19 then
    SetColor(OldColor, OldAlpha, False);
end;

procedure TfrmColorPicker.imgPalMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetColor(imgPal.Canvas.Pixels[x, y], 255, True);
end;

procedure TfrmColorPicker.PaintColorHue;
var
  Row: PRGBArray;
  slMain, slSize, slPtr: Integer;
  x, y, w, h: Integer;
  m1, q1, q2, q3, s1, s2: Integer;
  r, g, b: Byte;
  LUT: array of Byte;
begin
  h := MulDiv(360, BarX, 192);
  if h <> LastHue then
  begin // Only update if needed
    LastHue := h;
    HSBtoRGB(h, 255, 255, r, g, b);
    h := HBoxBmp.Height - 1;
    w := HBoxBmp.Width - 1;
    SetLength(LUT, w);
    for x := 0 to w do
      LUT[x] := MulDiv(255, x, w);
    slMain := Integer(HBoxBmp.ScanLine[0]);
    slSize := Integer(HBoxBmp.ScanLine[1]) - slMain;
    slPtr := slMain;
    for y := 0 to h do
    begin
      s1 := LUT[y];
      m1 := s1 * -255 shr 8 + 255;
      q1 := (s1 * -r shr 8 + r) - m1; // Red
      q2 := (s1 * -g shr 8 + g) - m1; // Green
      q3 := (s1 * -b shr 8 + b) - m1; // Blue
      for x := 0 to w do
      begin
        s2 := LUT[x];
        Row := PRGBArray(slPtr);
        Row[x].r := Byte(s2 * q1 shr 8 + m1);
        Row[x].g := Byte(s2 * q2 shr 8 + m1);
        Row[x].b := Byte(s2 * q3 shr 8 + m1);
      end;
      slPtr := slPtr + slSize;
    end;
    LUT := nil;
  end;
  imgColorBox.Canvas.Draw(0, 0, HBoxBmp);
  ilMain.Draw(imgColorBox.Canvas, BoxX - 7, BoxY - 7, 0, True); // Paint Marker
end;

procedure TfrmColorPicker.PaintHueBar;
var
  Row: PRGBArray;
  x: Integer;
begin
  Row := PRGBArray(HBarBmp.ScanLine[0]);
  for x := 0 to HBarBmp.Width - 1 do
    HSBToRGB(MulDiv(360, x, 192), 255, 255, Row[x].r, Row[x].g, Row[x].b);
  imgZBar.Canvas.StretchDraw(Rect(0, 0, HBarBmp.Width, 18), HBarBmp);
  ilMain.Draw(imgZBar.Canvas, BarX - 7, 1, 0, True); // Paint Marker
end;

procedure TfrmColorPicker.PaintAlphaColor;
var
  Row: PRGBArray;
  RowOff: Integer;
  x, y, a: Integer;
  bool: Boolean;
  c1, c2, c3: TRGB;
begin
  c1.R := 0;
  c1.G := 0;
  c1.B := 0;
  c2.R := 255;
  c2.G := 255;
  c2.B := 255;
  Row := PRGBArray(ColorBmp.ScanLine[0]);
  RowOff := Integer(ColorBmp.ScanLine[1]) - Integer(ColorBmp.ScanLine[0]);
  a := 255 - OldAlpha;
  c3.b := Byte(OldColor shr 16);
  c3.g := Byte(OldColor shr 8);
  c3.r := Byte(OldColor);
  for y := 0 to ColorBmp.Height - 1 do
  begin
    bool := (y and 4 = 0);
    if y = 20 then
    begin
      a := 255 - RGBAlpha;
      c3.r := RGBColor.r;
      c3.g := RGBColor.g;
      c3.b := RGBColor.b;
    end;
    c1.R := a * (0 - c3.r) shr 8 + c3.r;
    c1.G := a * (0 - c3.g) shr 8 + c3.g;
    c1.B := a * (0 - c3.b) shr 8 + c3.b;
    c2.R := a * (255 - c3.r) shr 8 + c3.r;
    c2.G := a * (255 - c3.g) shr 8 + c3.g;
    c2.B := a * (255 - c3.b) shr 8 + c3.b;
    for x := 0 to ABarBmp.Width - 1 do
    begin
      if ((x + 1) mod 4 = 0) then
        bool := not bool;
      if bool then
        Row[x] := c1
      else
        Row[x] := c2;
    end;
    Row := PRGBArray(Integer(Row) + RowOff);
  end;
  imgColor.Canvas.Draw(0, 0, ColorBmp);
end;

procedure TfrmColorPicker.PaintAlphaBar;
var
  Row: PRGBArray;
  RowOff: Integer;
  x, y, a: Integer;
  bool: Boolean;
  c1, c2: TRGB;
begin
  c1.R := 0;
  c1.G := 0;
  c1.B := 0;
  c2.R := 255;
  c2.G := 255;
  c2.B := 255;
  Row := PRGBArray(ABarBmp.ScanLine[0]);
  RowOff := Integer(ABarBmp.ScanLine[1]) - Integer(ABarBmp.ScanLine[0]);
  for y := 0 to ABarBmp.Height - 1 do
  begin
    bool := (y and 4 = 0);
    a := 255 - MulDiv(255, y, 137);
    c1.R := a * (0 - RGBColor.r) shr 8 + RGBColor.r;
    c1.G := a * (0 - RGBColor.g) shr 8 + RGBColor.g;
    c1.B := a * (0 - RGBColor.b) shr 8 + RGBColor.b;
    c2.R := a * (255 - RGBColor.r) shr 8 + RGBColor.r;
    c2.G := a * (255 - RGBColor.g) shr 8 + RGBColor.g;
    c2.B := a * (255 - RGBColor.b) shr 8 + RGBColor.b;
    for x := 0 to ABarBmp.Width - 1 do
    begin
      if ((x + 1) mod 4 = 0) then
        bool := not bool;
      if bool then
        Row[x] := c1
      else
        Row[x] := c2;
    end;
    Row := PRGBArray(Integer(Row) + RowOff);
  end;
  imgAlpha.Canvas.Draw(0, 0, ABarBmp);
  ilMain.Draw(imgAlpha.Canvas, 11 - 8, BarA - 7, 0, True); // Paint Marker
end;

procedure TfrmColorPicker.timeAniTimer(Sender: TObject);
var
  x, y: Integer;
  c: Integer;
begin
  AniCount := AniCount - 1;
  if VarIdx <> -1 then
  begin
    y := (VarIdx div CellMul);
    x := (VarIdx - (CellMul * y));
    x := CellDiv * x;
    y := CellDiv * y;
    c := (CTab[VarIdx].b shl 16) + (CTab[VarIdx].g shl 8) + CTab[VarIdx].r;
    if VarIdx < 8 then
      c := Blend(clBlack, c, Trunc(AniCount * (100 / AniStep)))
    else
      c := Blend(clWhite, c, Trunc(AniCount * (100 / AniStep)));
    HBoxBmp.Canvas.Pen.Color := c;
    HBoxBmp.Canvas.Brush.Color := c;
    HBoxBmp.Canvas.Brush.Style := bsSolid;
    HBoxBmp.Canvas.Rectangle(x + 1, y + 1, x + CellDiv - 1, y + CellDiv - 1);
    imgColorBox.Canvas.Draw(1, 1, HBoxBmp);
  end;
  timeAni.Enabled := (AniCount > 0) or (VarIdx = -1);
end;

procedure TfrmColorPicker.UButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  //Close;
end;

procedure TfrmColorPicker.UButton2Click(Sender: TObject);
begin
  ModalResult := mrOk;
  //CloseModal;
end;

end.



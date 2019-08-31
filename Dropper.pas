unit Dropper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DWMApi, ActiveX, GDIPApi, GDIPObj;

type
  TfrmDropper = class(TForm)
    tmrDropper: TTimer;
    procedure tmrDropperTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DrawBubble;
  end;

var
  frmDropper: TfrmDropper;
  DC: HDC;

implementation

uses ColorPicker;

{$R *.dfm}

type
  TFixedStreamAdapter = class(TStreamAdapter)
  public
    function Stat(out statstg: TStatStg; grfStatFlag: DWORD): HResult; override; stdcall;
  end;

function TFixedStreamAdapter.Stat(out statstg: TStatStg; grfStatFlag: DWORD): HResult;
begin
  Result := inherited Stat(statstg, grfStatFlag);
  statstg.pwcsName := nil;
end;

procedure TfrmDropper.DrawBubble;
var
  bmp: TBitmap;
  Stream: TStream;
  StreamAdapter: IStream;
  PNGBitmap: TGPBitmap;
  BitmapHandle: HBITMAP;
  BlendFunction: TBlendFunction;
  BitmapPos: TPoint;
  BitmapSize: TSize;



  graph: TGPGraphics;
  brush: TGPSolidBrush;


begin
  bmp := TBitmap.Create;
  try
    bmp.PixelFormat := pf32bit;


    Stream := TResourceStream.Create(HInstance, 'PngImage_1', RT_RCDATA);

    try
      StreamAdapter := TFixedStreamAdapter.Create(Stream);
      try
        PNGBitmap := TGPBitmap.Create(StreamAdapter);
        try
          PNGBitmap.GetHBITMAP(MakeColor(0, 0, 0, 0), BitmapHandle);
          bmp.Handle := BitmapHandle;
        finally
          PNGBitmap.Free;
        end;
      finally
        StreamAdapter := nil;
      end;
    finally
      Stream.Free;
    end;

    Assert(bmp.PixelFormat = pf32bit, 'Wrong bitmap format, must be 32 bits/pixel');


    ClientWidth := bmp.Width;
    ClientHeight := bmp.Height;

    // Position bitmap on form
    BitmapPos := Point(0, 0);
    BitmapSize.cx := bmp.Width;
    BitmapSize.cy := bmp.Height;

    // Setup alpha blending parameters
    BlendFunction.BlendOp := AC_SRC_OVER;
    BlendFunction.BlendFlags := 0;
    BlendFunction.SourceConstantAlpha := 255; // Start completely transparent
    BlendFunction.AlphaFormat := AC_SRC_ALPHA;

    UpdateLayeredWindow(Handle, 0, nil, @BitmapSize, bmp.Canvas.Handle,
        @BitmapPos, 0, @BlendFunction, ULW_ALPHA);

  finally
    bmp.Free;
  end;
end;

procedure TfrmDropper.FormClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmDropper.FormCreate(Sender: TObject);
var
  renderPolicy: DWMWINDOWATTRIBUTE;
begin
  Screen.Cursors[1024] := LoadCursor(HInstance, 'Cursor_1');
  BorderStyle := bsNone;
  FormStyle := fsStayOnTop;
  DC := CreateDC(PChar('DISPLAY'), 0, 0, nil);
  DwmSetWindowAttribute(Handle, DWMWA_EXCLUDED_FROM_PEEK or DWMWA_FLIP3D_POLICY, @renderpolicy, SizeOf(Integer));
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) Or WS_EX_LAYERED OR WS_EX_TOOLWINDOW );
  SetLayeredWindowAttributes(Handle,0,1, LWA_ALPHA);
  KeyPreview := True;
end;

procedure TfrmDropper.FormDestroy(Sender: TObject);
begin
  DeleteDC(DC);
end;

procedure TfrmDropper.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
end;

procedure TfrmDropper.FormShow(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
  DrawBubble();
  Screen.Cursor := 1024;
end;

procedure TfrmDropper.tmrDropperTimer(Sender: TObject);
const
  CLR_INVALID = $FFFFFFFF;
var
  p: TPoint;
  col: TColor;
begin
  if not Self.Visible then Exit;

  tmrDropper.Enabled := False;

  GetCursorPos(p);
  Left := p.X - Width div 2;
  Top := p.Y - Height div 2;
  col := GetPixel(DC, p.X, p.Y);
  if col <> CLR_INVALID then
    frmColorPicker.SetColor(col, True);

  tmrDropper.Enabled := True;
end;

end.

{
The MIT License (MIT)

Copyright (c) 2017 Victor Alberto Gil <vhanla>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

TODO:
- Add multiple profile manager, for PowerShell, Cmd, ConEmu, etc.
}
unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Registry,
  Vcl.ComCtrls, Winapi.Richedit, IniFiles, Vcl.Menus;

type

  TRichEdit = class(Vcl.ComCtrls.TRichedit)
  private
    FType: TAttributeType;
    function GetBackColor: TColor;
    procedure SetBackColor(const Value: TColor);
    procedure GetAttributes(var Format: TCharFormat2);
    procedure SetAttributes(var Format: TCharFormat2);
  public
    property BackColor: TColor read GetBackColor write SetBackColor;
  end;
  TForm1 = class(TForm)
    ColorDialog1: TColorDialog;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    col00: TPanel;
    col01: TPanel;
    col02: TPanel;
    col03: TPanel;
    col04: TPanel;
    col05: TPanel;
    col06: TPanel;
    col07: TPanel;
    col08: TPanel;
    col09: TPanel;
    col10: TPanel;
    col11: TPanel;
    col12: TPanel;
    col13: TPanel;
    col14: TPanel;
    col15: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    btnApply: TButton;
    Button2: TButton;
    btnNew: TButton;
    btnSave: TButton;
    btnResetCmd: TButton;
    Timer1: TTimer;
    btnReload: TButton;
    btnDelete: TButton;
    procedure PickColor(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnResetCmdClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnReloadClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadDefaultColors;
    procedure LoadLegacyColors;
    procedure LoadColorsFromRegistry;
    procedure TextPreview;
    procedure UpdateCollectionList;
    function HashColors: String;
    procedure UpdateCollectionIndex;
    procedure LoadColor(const fname: String);
  public
    { Public declarations }
  end;

const
  COLORSPATH = 'collection';
var
  Form1: TForm1;
  ColorsPaths: String;

  //ColorTable00 to ColorTable15 on HKCU\Console\ REG_DWORD
  HexText: array [0..15] of char =('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
  RegistryColors: array [0..15] of integer;
  LegacyColors: array [0..15] of integer = (
    $00000000,$00800000,$00008000,$00808000,$00000080,$00800080,$00008080,$00c0c0c0,
    $00808080,$00ff0000,$0000ff00,$00ffff00,$000000ff,$00ff00ff,$0000ffff,$00ffffff
    );
  DefaultColors: array [0..15] of integer = (
    $000C0C0C,$00da3700,$000ea113,$00dd963a,$001f0fc5,$00981788,$00009cc1,$00cccccc,
    $00767676,$00ff783b,$000cc616,$00d6d661,$005648e7,$009e00b4,$00a5f1f9,$00f2f2f2
  );
  CurrentColorsHash: String;
  CollectionHash: TStringList;

implementation

{$R *.dfm}

function IsValidFilename(const fname: String): Boolean;
const
  InvalidChars : set of char = ['\', '/', ':', '*', '?', '"', '<', '>', '|'];
var
  I: Integer;
begin
  Result := fname <> '';

  if Result then
  begin
    for I := 1 to Length(fname) do
    begin
      Result := NOT (fname[I] in InvalidChars);
      if NOT Result then Break;
    end;
  end;
end;

procedure TForm1.btnApplyClick(Sender: TObject);
var
  Reg: TRegistry;
  I: Integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Console',true) then
    begin
      for I := 0 to 15 do
      begin
        Reg.WriteInteger(
          Format('ColorTable%.*d',[2, I]),
          TPanel( FindComponent(Format('col%.*d',[2,I])) ).color
        );
      end;
      Reg.CloseKey;
    end;

  finally
    Reg.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  OutPutDemo: String;
  Buffer: TStringStream;
begin
  OutPutDemo :=   '@echo off ' +
  #13#10+'setlocal EnableDelayedExpansion ' +
  #13#10+'set "CSI=[" ' +
  #13#10+'echo/ ' +
  #13#10+'echo                     Ansi color table of console text colors ' +
  #13#10+'echo/ ' +
  #13#10+'echo                                        ^| -^> Foreground light colors ' +
  #13#10+'echo                                        ^| ' +
  #13#10+'for /L %%b in (40,1,47) do ( ' +
  #13#10+'   set "line=%CSI%%%b;30m%%b30" ' +
  #13#10+'   for /L %%f in (31,1,37) do set "line=!line!%CSI%%%b;%%fm %%b%%f" ' +
  #13#10+'   for /L %%f in (30,1,37) do set "line=!line!%CSI%%%b;%%f;1m %%b%%f" ' +
  #13#10+'   echo !line! ' +
  #13#10+') ' +
  #13#10+'echo/ ' +
  #13#10+'for /L %%b in (40,1,47) do ( ' +
  #13#10+'   set "line=%CSI%%%b;5;30m%%b30" ' +
  #13#10+'   for /L %%f in (31,1,37) do set "line=!line!%CSI%%%b;5;%%fm %%b%%f" ' +
  #13#10+'   for /L %%f in (30,1,37) do set "line=!line!%CSI%%%b;5;%%f;1m %%b%%f" ' +
  #13#10+'   echo !line! ' +
  #13#10+') ' +
  #13#10+'echo/ ' +
  #13#10+'pause ';

  if not FileExists(ExtractFilePath(ParamStr(0))+'colors.cmd') then
  begin
    Buffer := TStringStream.Create;
    try
      Buffer.WriteString(OutPutDemo);
      Buffer.SaveToFile(ExtractFilePath(ParamStr(0))+'colors.cmd');
    finally
      Buffer.Free;
    end;
  end;


  WinExec(PAnsiChar('cmd /c colors.cmd'), SW_SHOWNORMAL);
end;

procedure TForm1.btnNewClick(Sender: TObject);
var
  fname: String;
  ini: TIniFile;
  I: Integer;
begin
  fname := Trim(InputBox('New Color Scheme','Name',''));
  if fname = '' then Exit;

  if not IsValidFilename(fname) then
  begin
    MessageDlg('Don''t use the following chars: <,>,",:,\,/,|,?,*', mtWarning, [mbOK], 0);
    Exit;
  end;

  if (LowerCase(fname) = 'legacy colors') or (LowerCase(fname) = 'default colors') then
  begin
    MessageDlg('Name reserved, use another name.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if FileExists(ColorsPaths + fname + '.wincolor') then
  begin
    MessageDlg('Color name already exists!', mtWarning, [mbOK], 0);
    Exit;
  end;

  if not DirectoryExists(ColorsPaths) then
    if not CreateDir(ColorsPaths) then
    begin
      MessageDlg('Current directory is write protected!',mtError, [mbOK], 0);
      Exit;
    end;

  ini := TIniFile.Create(ColorsPaths+fname+'.wincolor');
  try
    for I := 0 to 15 do
    begin
      ini.WriteInteger('COLORS',Format('col%.*d',[2,I]),0);
      TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := 0;
    end;

  finally
    ini.Free;
  end;

  UpdateCollectionList;
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(fname);
  LoadColor(ComboBox1.Text);
end;

procedure TForm1.btnSaveClick(Sender: TObject);
var
  ini : TIniFile;
  I: Integer;
begin
  if ComboBox1.ItemIndex < 2 then
    Exit;

  ini := TIniFile.Create(ColorsPaths+ComboBox1.Text+'.wincolor');
  try
    for I := 0 to 15 do
    begin
      ini.WriteInteger('COLORS',Format('col%.*d',[2,I]),TPanel(FindComponent(Format('col%.*d',[2, I]))).Color);
    end;

    ini.WriteString('DETAILS', 'hashcode', HashColors);
  finally
    ini.Free;
  end;
end;

procedure TForm1.btnReloadClick(Sender: TObject);
begin
  //ComboBox1Change(Sender);
  LoadColor(ComboBox1.Text);

end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  if MessageDlg('This procedure cannot be undone'
  +#13'Do you really want to delete "'+ComboBox1.Items[ComboBox1.ItemIndex]+'" color scheme?',mtConfirmation,[mbYes,mbNo], 0) = mrYes then
  begin
    if DeleteFile(ColorsPaths + ComboBox1.Items[ComboBox1.ItemIndex]+'.wincolor') then
    begin

    end
    else
    begin
      MessageDlg('This color scheme couldn''t be deleted. Something went wrong',mtError, [mbOK], 0);
    end;

    UpdateCollectionList;
    UpdateCollectionIndex;
    LoadColor(ComboBox1.Text);
  end;
end;

procedure TForm1.btnResetCmdClick(Sender: TObject);
var
  reg: TRegistry;
begin
  if MessageDlg('This will delete all customizations done to you cmd.exe settings/properties.'#13'Are you sure?',mtConfirmation,[mbYes,mbNo], 0) = mrYes then
  begin
    reg := TRegistry.Create;
    try
      reg.RootKey := HKEY_CURRENT_USER;
      if reg.OpenKey('\Console\%SystemRoot%_system32_cmd.exe',False) then
        reg.DeleteKey('\Console\%SystemRoot%_system32_cmd.exe');
    finally
      reg.Free;
    end;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  ini: TIniFile;
  I: Integer;
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      LoadLegacyColors;
      btnSave.Enabled := False;
      btnReload.Enabled := False;
      btnDelete.Enabled := False;
    end;
    1:
    begin
      LoadDefaultColors;
      btnSave.Enabled := False;
      btnReload.Enabled := False;
      btnDelete.Enabled := False;
    end
  else
    begin
      ini := TIniFile.Create(ColorsPaths+ComboBox1.Items[ComboBox1.ItemIndex]+'.wincolor');
      try
        for I := 0 to 15 do
        begin
          TPanel(FindComponent(Format('col%.*d',[2, I]))).Color := ini.ReadInteger('COLORS', Format('col%.*d',[2, I]),0);
        end;
      finally
        ini.Free;
      end;

      btnSave.Enabled := True;
      btnReload.Enabled := True;
      btnDelete.Enabled := True;
    end;
  end;
  TextPreview;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CollectionHash := TStringList.Create;

  ColorsPaths :=  ExtractFilePath(ParamStr(0))+COLORSPATH+'\';

  LoadColorsFromRegistry;

  UpdateCollectionList;

  TextPreview;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  CollectionHash.Free;
end;

// It will hash colors as written in registry, so it will match easier on
// collection files to match with
function TForm1.HashColors: String;
var
  ConcatenatedColors: AnsiString;
  I: Integer;
begin
  ConcatenatedColors := '';
  for I := 0 to 15 do
  begin
    ConcatenatedColors := ConcatenatedColors
      + IntToHex(ColorToRGB(TPanel(FindComponent(Format('col%.*d',[2, I]))).Color));
  end;

  Result := IntToStr(HashName(PAnsiChar(ConcatenatedColors)));
end;

procedure TForm1.LoadColor(const fname: String);
var
  ini: TIniFile;
  I: Integer;
begin
  if ComboBox1.ItemIndex < 2  then Exit;

  ini := TIniFile.Create(ColorsPaths+fname+'.wincolor');
  try
    for I := 0 to 15 do
    begin
      TPanel(FindComponent(Format('col%.*d',[2, I]))).Color := ini.ReadInteger('COLORS', Format('col%.*d',[2, I]),0);
    end;
  finally
    ini.Free;
  end;

  btnSave.Enabled := True;
  btnReload.Enabled := True;
  btnDelete.Enabled := True;

  TextPreview;
end;

procedure TForm1.LoadColorsFromRegistry;
var
  Reg: TRegistry;
  I: Integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Console',true) then
    begin
      for I := 0 to 15 do
      begin
        RegistryColors[I] := Reg.ReadInteger(Format('ColorTable%.*d',[2, I]));
        TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := RegistryColors[I];
      end;
      Reg.CloseKey;
    end;

  finally
    Reg.Free;
  end;

  CurrentColorsHash := HashColors;

end;

procedure TForm1.LoadDefaultColors;
var
  I: Integer;
begin
  for I := 0 to 15 do
  begin
    TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := DefaultColors[I];
  end;
end;

procedure TForm1.LoadLegacyColors;
var
  I: Integer;
begin
  for I := 0 to 15 do
  begin
    TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := LegacyColors[I];
  end;
end;

procedure TForm1.PickColor(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  CurColor: TColor;
  hexColor: String;
  colore: LongInt;
begin
  if Sender is TPanel then
  begin
    CurColor := TPanel(Sender).Color;

    colore := ColorToRGB(CurColor);
    hexColor := '#00'+IntToHex(GetBValue(colore))
              + IntToHex(GetGValue(colore))
              + IntToHex(GetRValue(colore));

    if ssCtrl in Shift then
    begin
      hexColor := InputBox('Write a Hex Color value', 'Hexadecimal color:',hexColor);
      if hexColor[1] <> '#' then
        hexColor := '#'+hexColor;
      CurColor := StrToInt(StringReplace(hexColor, '#', '$',[rfReplaceAll]));
    end;
    //else
    begin
      ColorDialog1.Options := [cdFullOpen, cdAnyColor];
      ColorDialog1.Color := CurColor;
      if ColorDialog1.Execute then
      begin
        TPanel(Sender).Color := ColorDialog1.Color;
      end;
    end;
  end;

  TextPreview;
end;

procedure TForm1.TextPreview;
var
  I: Integer;
  J: Integer;
begin
  RichEdit1.Color := col00.Color;
  RichEdit1.Font.Color := col07.Color;
  RichEdit1.Font.Name := 'Consolas';
  RichEdit1.Font.Size := 11;

  RichEdit1.Text := '';
  RichEdit1.Lines.Add('COLOR SCHEME PREVIEW ON A DEFAULT CMD SETTING');

  for I := 0 to 15 do
  begin
    RichEdit1.SetBackColor(TPanel(FindComponent(Format('col%.*d',[2, 15-I]))).Color);
    RichEdit1.SelAttributes.Color := TPanel(FindComponent(Format('col%.*d',[2, I]))).Color;
    RichEdit1.SelText := 'Text ' + HexText[I] + ' Back ' + HexText[15-I] ;
    RichEdit1.SelText := ' e.g. C:\>COLOR ';
    for J := 0 to 15 do
    begin
      RichEdit1.SetBackColor(TPanel(FindComponent(Format('col%.*d',[2, I]))).Color);
      RichEdit1.SelAttributes.Color := TPanel(FindComponent(Format('col%.*d',[2, J]))).Color;
      if I <> J then
        RichEdit1.SelText := HexText[I] + HexText[J] + ' ';
    end;
    RichEdit1.SelText := #13#10;
  end;



end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey('\Console\%SystemRoot%_system32_cmd.exe',False) then
      btnResetCmd.Enabled := True
    else
      btnResetCmd.Enabled := False;
  finally
    reg.Free;
  end;
end;

procedure TForm1.UpdateCollectionIndex;
begin
  ComboBox1.ItemIndex := CollectionHash.IndexOf(CurrentColorsHash);
end;

procedure TForm1.UpdateCollectionList;
var
  dir: TSearchRec;
  ini: TIniFile;
begin
  ComboBox1.Items.Clear;
  ComboBox1.Items.BeginUpdate;
  CollectionHash.Clear;
  CollectionHash.BeginUpdate;

  ComboBox1.Items.Add('Legacy Colors');
  ComboBox1.Items.Add('Default Colors');

  CollectionHash.Add('1946312581');
  CollectionHash.Add('909587897');

  if FindFirst(ColorsPaths + '*.wincolor', faArchive, dir) = 0 then
  begin
    repeat
      if (LowerCase(dir.Name) <> 'legacy colors.wincolor')
      and (LowerCase(dir.Name) <> 'default colors.wincolor')
      then
      begin
        ComboBox1.Items.Add(ChangeFileExt(dir.Name, ''));

        ini := TIniFile.Create(ColorsPaths + ChangeFileExt(dir.Name, '.wincolor'));
        try
          CollectionHash.Add(ini.ReadString('DETAILS', 'hashcode', ''));
        finally
          ini.Free;
        end;

      end;
    until FindNext(dir) <> 0;
    FindClose(dir);
  end;

  CollectionHash.EndUpdate;
  ComboBox1.Items.EndUpdate;

  ComboBox1.ItemIndex := CollectionHash.IndexOf(CurrentColorsHash);

end;

{ TRicheEdit }

procedure TRichEdit.GetAttributes(var Format: TCharFormat2);
begin
  FillChar(Format, SizeOf(TCHarFormat2), 0);
  Format.cbSize := SizeOf(TCharFormat2);

  if Self.HandleAllocated then
    SendGetStructMessage(Self.Handle, EM_GETCHARFORMAT, WPARAM(FType = atSelected), Format, True);
end;

function TRichEdit.GetBackColor: TColor;
var
  Format: TCharFormat2;
begin
  GetAttributes(Format);
  with Format do
    if (dwEffects and CFE_AUTOBACKCOLOR) <> 0 then
      Result := clWindow
    else
      Result := crBackColor;
end;

procedure TRichEdit.SetAttributes(var Format: TCharFormat2);
var
  Flag : LongInt;
begin
  if FType = atSelected then
    Flag := SCF_SELECTION
  else
    Flag := 0;
  if Self.HandleAllocated then
    SendStructMessage(Self.Handle, EM_SETCHARFORMAT, Flag, Format);
end;

procedure TRichEdit.SetBackColor(const Value: TColor);
var
  Format: TCharFormat2;
begin
  FillChar(Format, SizeOf(TCharFormat2), 0);
  Format.cbSize := SizeOf(TCharFormat2);
  with Format do
  begin
    dwMask := CFM_BACKCOLOR;
    if Value = clWindowText then
      dwEffects := CFE_AUTOBACKCOLOR
    else
      crBackColor := ColorToRGB(Value);
  end;
  SetAttributes(Format);
end;

end.

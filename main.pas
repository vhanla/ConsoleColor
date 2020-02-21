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

CHANGELOG:

2017-09-12
  - Added importing features from MSColorTool ini files
  - Added importing iTermColors (partial, since Background, Alpha and Foreground are omitted)

KNOWN BUG:
- If unknown color scheme is loaded and it defaults to Default Color in combo box
  picking color gets delayed in textpreview procedure
}
unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Registry,
  Vcl.ComCtrls, Winapi.Richedit, IniFiles, Vcl.Menus, ShlObj, Activex, ComObj, ShellApi,
  System.ImageList, Vcl.ImgList, MSXML, IOUtils, UCL.TUCaptionBar, UCL.TUForm,
  UCL.TUThemeManager, UCL.TUSymbolButton, UCL.TUPanel, UCL.IntAnimation, UCL.IntAnimation.Helpers,
  UCL.TUButton, UCL.TUScrollBox, pngimage, System.Generics.Collections,
  UCL.TUCheckBox, UCL.TUText, UCL.TUPopupMenu, UCL.TUEdit, UCL.TUSlider, functions,
  UCL.TURadioButton, System.JSON, UCL.TUQuickButton, ES.BaseControls, ES.Switch;

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

  TfrmMain = class(TUForm)
    ColorDialog1: TColorDialog;
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
    RichEdit1: TRichEdit;
    btnColorCmd: TButton;
    btnResetCmd: TButton;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    UCaptionBar1: TUCaptionBar;
    UThemeManager1: TUThemeManager;
    drawerNavigation: TUPanel;
    buttonOpenMenu: TUSymbolButton;
    buttonMenuSettings: TUSymbolButton;
    buttonMenuProfile: TUSymbolButton;
    buttonMenuSave: TUSymbolButton;
    buttonMenuOpen: TUSymbolButton;
    buttonMenuRate: TUSymbolButton;
    btnReload: TUButton;
    btnSave: TUButton;
    btnCmdPreview: TUButton;
    btnPSPreview: TUButton;
    btnImport: TUButton;
    btnDelete: TUButton;
    btnNew: TUButton;
    btnApply: TUButton;
    UScrollBox1: TUScrollBox;
    USymbolButton1: TUSymbolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cbConsoles: TComboBox;
    Label2: TLabel;
    btnClear: TUButton;
    UText1: TUText;
    UCheckBox1: TUCheckBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    UText2: TUText;
    UText3: TUText;
    UText4: TUText;
    UText5: TUText;
    HotKey1: THotKey;
    UScrollBox2: TUScrollBox;
    HotKey2: THotKey;
    HotKey3: THotKey;
    HotKey4: THotKey;
    HotKey5: THotKey;
    HotKey6: THotKey;
    HotKey7: THotKey;
    HotKey8: THotKey;
    HotKey9: THotKey;
    HotKey10: THotKey;
    HotKey11: THotKey;
    HotKey12: THotKey;
    HotKey13: THotKey;
    HotKey14: THotKey;
    HotKey15: THotKey;
    HotKey16: THotKey;
    HotKey17: THotKey;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    HotKey18: THotKey;
    HotKey19: THotKey;
    HotKey20: THotKey;
    HotKey21: THotKey;
    HotKey22: THotKey;
    HotKey23: THotKey;
    HotKey24: THotKey;
    HotKey25: THotKey;
    HotKey26: THotKey;
    HotKey27: THotKey;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    UText6: TUText;
    UText7: TUText;
    UText8: TUText;
    UEdit1: TUEdit;
    UText9: TUText;
    UEdit2: TUEdit;
    UCheckBox2: TUCheckBox;
    UCheckBox3: TUCheckBox;
    UEdit3: TUEdit;
    UEdit4: TUEdit;
    UEdit5: TUEdit;
    USymbolButton2: TUSymbolButton;
    TabSheet6: TTabSheet;
    UText10: TUText;
    USlider1: TUSlider;
    UText11: TUText;
    UText12: TUText;
    UEdit6: TUEdit;
    UText13: TUText;
    UCheckBox4: TUCheckBox;
    USymbolButton3: TUSymbolButton;
    UText14: TUText;
    UEdit7: TUEdit;
    UEdit8: TUEdit;
    UEdit9: TUEdit;
    USymbolButton4: TUSymbolButton;
    ComboBox2: TComboBox;
    USlider2: TUSlider;
    USlider3: TUSlider;
    URadioButton1: TURadioButton;
    URadioButton2: TURadioButton;
    URadioButton3: TURadioButton;
    UQuickButton1: TUQuickButton;
    UQuickButton2: TUQuickButton;
    UQuickButton3: TUQuickButton;
    UQuickButton4: TUQuickButton;
    ListBox1: TListBox;
    tmrDetectWt: TTimer;
    UText15: TUText;
    procedure PickColor(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnColorCmdClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnResetCmdClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPSPreviewClick(Sender: TObject);
    procedure ImportClick(Sender: TObject);
    procedure btnCmdPreviewClick(Sender: TObject);
    procedure buttonOpenMenuClick(Sender: TObject);
    procedure btnReloadClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure USymbolButton1Click(Sender: TObject);
    procedure UButton2Click(Sender: TObject);
    procedure UButton3Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure buttonMenuOpenClick(Sender: TObject);
    procedure buttonMenuSettingsClick(Sender: TObject);
    procedure buttonMenuSaveClick(Sender: TObject);
    procedure buttonMenuProfileClick(Sender: TObject);
    procedure buttonMenuRateClick(Sender: TObject);
    procedure USymbolButton2Click(Sender: TObject);
    procedure USymbolButton3Click(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure tmrDetectWtTimer(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
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
    procedure ImportRegfile(const fname: String);
    procedure ImportITermFile(const fname: String);
    procedure ImportINIFile(const fname: String);
    procedure ListRegisteredShells;
    procedure LoadWinTermSettings;
    function DetectWindowsTerminal: boolean;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

const
  COLORSPATH = 'collection';
var
  frmMain: TfrmMain;
  AeroApplied: Boolean = False;
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

  MSColors: Array[0..15] of string = (
    'DARK_BLACK',
    'DARK_BLUE',
    'DARK_GREEN',
    'DARK_CYAN',
    'DARK_RED',
    'DARK_MAGENTA',
    'DARK_YELLOW',
    'DARK_WHITE',
    'BRIGHT_BLACK',
    'BRIGHT_BLUE',
    'BRIGHT_GREEN',
    'BRIGHT_CYAN',
    'BRIGHT_RED',
    'BRIGHT_MAGENTA',
    'BRIGHT_YELLOW',
    'BRIGHT_WHITE'
    );
  iTermColors: Array[0..15] of String = (
    'Ansi 0 Color',
    'Ansi 4 Color',
    'Ansi 2 Color',
    'Ansi 6 Color',
    'Ansi 1 Color',
    'Ansi 5 Color',
    'Ansi 3 Color',
    'Ansi 7 Color',
    'Ansi 8 Color',
    'Ansi 12 Color',
    'Ansi 10 Color',
    'Ansi 14 Color',
    'Ansi 9 Color',
    'Ansi 13 Color',
    'Ansi 11 Color',
    'Ansi 15 Color'
  );

implementation

uses ColorPicker;

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

function IsWow64: Boolean;
type
  TIsWow64Process = function(hProcess: THandle; var bWow64Process: BOOL):
BOOL; stdcall;
var
  IsWow64Process: TIsWow64Process;
  bWow64Process: BOOL;
begin
  Result := False;
  @IsWow64Process := GetProcAddress(GetModuleHandle('kernel32.dll'), 'IsWow64Process');
  if @IsWow64Process <> nil then
  begin
    IsWow64Process(GetCurrentProcess(), bWow64Process);
    Result := bWow64Process;
  end;
end;

procedure TfrmMain.btnApplyClick(Sender: TObject);
var
  Reg: TRegistry;
  I: Integer;
  shell: String;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    shell := StringReplace(cbConsoles.Text, '\', '_', [rfReplaceAll]);

    if cbConsoles.Text = 'Global' then
    begin
      shell := '';
      if MessageDlg('Modifying global colors is not recommended!'#13#13'It will only affect those console shells without custom colors or new ones.'#13#13'It is recommended to apply colors to each one.', mtConfirmation, mbYesNo, 0) = mrNo then
        Exit;
    end;

    if Reg.OpenKey('\Console\' + shell ,true) then
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

    MessageDlg('Colors applied successfully to '+ shell, mtInformation, [mbOK], 0);

  finally
    Reg.Free;
  end;
end;

procedure TfrmMain.btnPSPreviewClick(Sender: TObject);
var
  IObject: IUnknown;
  ISLink: IShellLink;
  ISShell: IShellLinkDataList;
  dBlock: PNTConsoleProps;
  pBlock: Pointer;
  IPFile: IPersistFile;
  LinkName: string;
  //Flags: DWORD;
  Res: HRESULT;
begin
  btnColorCmdClick(Sender);
  LinkName := ExtractFilePath(ParamStr(0)) + 'Windows PowerShell.lnk';

  CoInitialize(nil);

  IObject := CreateComObject(CLSID_ShellLink);

  ISLink := IObject as IShellLink;

  with ISLink do
  begin
    SetDescription('Performs object-based (command-line) functions');
    SetWorkingDirectory('%HOMEDRIVE%%HOMEPATH%');
    SetPath(PChar('%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe'));
    //SetArguments(PChar('-NoProfile -Command "Start-Process ''colors.cmd''"'));
    SetArguments(PChar('-NoExit -Command "'+ExtractFilePath(ParamStr(0))+'colors.cmd"'));
    //SetPath(PChar('%windir%\system32\cmd.exe'));
    //SetArguments(PChar('/k "'+ExtractFilePath(ParamStr(0))+'colors.cmd"'));
  end;

  ISShell := IObject as IShellLinkDataList;

  with ISShell do
  begin
    Res := S_FALSE;
    Res := RemoveDataBlock(NT_CONSOLE_PROPS_SIG);

//    Res := CopyDataBlock(NT_CONSOLE_PROPS_SIG, Pointer(dBlock));
    if Res = S_OK then
    begin
//      RemoveDataBlock(NT_CONSOLE_PROPS_SIG);
//    end
//    else
//    begin
      New(dBlock);
      ZeroMemory(dBlock, SizeOf(TNTConsoleProps));
    end;

    with dBlock^ do
    begin
      dbh.cbSize := SizeOf(TNTConsoleProps);
      dbh.dwSignature := NT_CONSOLE_PROPS_SIG;
      wFillAttribute := $007;
      wPopupFillAttribute := $00f5;
      dwScreenBufferSize.X := 80;
      dwScreenBufferSize.Y := 25;
      dwWindowSize.X := 80;
      dwWindowSize.Y := 25;
      dwWindowOrigin.X := 110;
      dwWindowOrigin.Y := 110;
      nFont := 0;
      nInputBufferSize := 0;
      dwFontSize.X := 10;
      dwFontSize.Y := 14;
      uFontFamily := 54; //0;
      uFontWeight := 0;
      StringToWideChar('AnonymicePowerline NF', PWideChar(@FaceName), LF_FACESIZE);
      uCursorSize := 2;
      bFullScreen := False;
      bQuickEdit := True;
      bInsertMode := False;
      bAutoPosition := False;
      uHistoryBufferSize := 50;
      uNumberOfHistoryBuffers := 4;
      bHistoryNoDup := False;
      ColorTable[0] := col00.Color;
      ColorTable[1] := col01.Color;
      ColorTable[2] := col02.Color;
      ColorTable[3] := col03.Color;
      ColorTable[4] := col04.Color;
      ColorTable[5] := col05.Color;
      ColorTable[6] := col06.Color;
      ColorTable[7] := col07.Color;
      ColorTable[8] := col08.Color;
      ColorTable[9] := col09.Color;
      ColorTable[10] := col10.Color;
      ColorTable[11] := col11.Color;
      ColorTable[12] := col12.Color;
      ColorTable[13] := col13.Color;
      ColorTable[14] := col14.Color;
      ColorTable[15] := col15.Color;
    end;

    pBlock := dBlock;

    //Res :=
     AddDataBlock(Pointer(pBlock^));
    //GetFlags(Flags);
    //SetFlags(Flags or SLDF_RUNAS_USER);
  end;

  IPFile := IObject as IPersistFile;

  IPFile.Save(PWideChar(WideString(LinkName)), False);

  Dispose(dBlock);

  CoUninitialize;

  Sleep(100);

  ShellExecute(0, 'OPEN', PChar(LinkName),nil,nil,SW_SHOWNORMAL);end;

procedure TfrmMain.btnColorCmdClick(Sender: TObject);
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
  #13#10+'pause ' +
  #13#10+'cls' +
  #13#10+'color 07 ';

  OutPutDemo := '@echo off' +
  #13#10+'cls' +
  #13#10+'setlocal EnableDelayedExpansion' +
  #13#10+'set "CSI=["' +
  #13#10+'set "T=gYw"' +
  #13#10+'set "FGs=m 1m"' +
  #13#10+'echo/                 40m     41m     42m     43m     44m     45m     46m     47m' +
  #13#10+'for %%f in (%FGs%) do (' +
  #13#10+'	set "ff=     %%f"' +
  #13#10+'	set "line= %CSI%0m!ff:~-5! %CSI%%%f  %T%  "' +
  #13#10+'	for /L %%b in (40,1,47) do set "line=!line! %CSI%%%bm  %T%  %CSI%40m"' +
  #13#10+'	echo !line!' +
  #13#10+')' +
  #13#10+'for /L %%f in (30,1,37) do (' +
  #13#10+'	set "ff=     %%fm"' +
  #13#10+'	set "line= %CSI%0m!ff:~-5! %CSI%0;%%fm  %T%  "' +
  #13#10+'	for /L %%b in (40,1,47) do set "line=!line! %CSI%0;%%f;%%bm  %T%  %CSI%40m"' +
  #13#10+'	echo !line!' +
  #13#10+'	set "ff=     1;%%fm"' +
  #13#10+'	set "line= %CSI%0m!ff:~-5! %CSI%1;%%fm  %T%  "' +
  #13#10+'	for /L %%b in (40,1,47) do set "line=!line! %CSI%1;%%f;%%bm  %T%  %CSI%40m"' +
  #13#10+'	echo !line!' +
  #13#10+')';

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


  //WinExec(PAnsiChar('cmd /c colors.cmd'), SW_SHOWNORMAL);
end;

procedure TfrmMain.ImportClick(Sender: TObject);
begin

end;

// Imports ini files used by MSColorTool
procedure TfrmMain.ImportINIFile(const fname: String);
  function CSRGB(const csrgb: String): TColor;
  var
    line: TStringList;
    r,g,b: Byte;
  begin
    line := TStringList.Create;
    try
      line.Text := StringReplace(csrgb,',',#13#10,[rfReplaceAll]);
      r := StrToInt(line[0]);
      g := StrToInt(line[1]);
      b := StrToInt(line[2]);
    finally
      line.Free;
    end;
    Result := RGB(r,g,b);
  end;
var
  ini: TIniFile;
  I: Integer;
begin
  ini := TIniFile.Create(fname);
  try
   for I := 0 to 15 do
    begin
      TPanel(FindComponent(Format('col%.*d',[2, I]))).Color := CSRGB(ini.ReadString('table', MSColors[I],''));
    end;
  finally
    ini.Free;
  end;
  TextPreview;
end;

procedure TfrmMain.ImportITermFile(const fname: String);
var
  xmlstr: WideString;
  xml: IXMLDOMDocument;
  node, sibnode: IXMLDOMNode;
  nodes_row, nodes_se: IXMLDOMNodeList;
  I, J: Integer;
  a,r,g,b: Byte;
  col: PByte;
  rcol: Real;
begin
  xmlstr := TFile.ReadAllText(fname);

  xml := CreateOleObject('Microsoft.XMLDOM') as IXMLDOMDocument;
//  xml := CoDOMDocument.Create;
  xml.async := False;

  xml.loadXML(xmlstr);
  if xml.parseError.errorCode <> 0 then
    raise Exception.Create('Corrupt or unsupported iTermFile ' + xml.parseError.reason);

  for I := 0 to 15 do
  begin
    node := xml.selectSingleNode('//key[text()="'+iTermColors[I]+'"]');
    if Assigned(node) then
    begin
      sibnode := node.nextSibling; // dict
      nodes_row := sibnode.childNodes;
      if Assigned(nodes_row) then
      begin
        for J := 0 to nodes_row.length - 1 do
        begin
          node := nodes_row.item[J];
          if node.firstChild.nodeValue = 'Alpha Component' then
            col := @a;
          if node.firstChild.nodeValue = 'Blue Component' then
            col := @b;
          if node.firstChild.nodeValue = 'Green Component' then
            col := @g;
          if node.firstChild.nodeValue = 'Red Component' then
            col := @r;
          if node.nodeName = 'real' then
          begin
            rcol := StrToFloat(StringReplace(node.firstChild.nodeValue,'.',',',[rfReplaceAll]));
            col^ := Trunc(255*rcol);
          end;
        end;
      end;
      TPanel(FindComponent(Format('col%.*d',[2, I]))).Color := RGB(r,g,b);
    end;

  end;

  TextPreview;
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
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

procedure TfrmMain.btnSaveClick(Sender: TObject);
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

procedure TfrmMain.buttonMenuOpenClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfrmMain.buttonMenuProfileClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet4;
end;

procedure TfrmMain.buttonMenuRateClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet6;
end;

procedure TfrmMain.buttonMenuSaveClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
end;

procedure TfrmMain.buttonMenuSettingsClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfrmMain.buttonOpenMenuClick(Sender: TObject);
var
  DPI: Single;
  AniWidth: Integer;
begin
  DPI := PPI / 96;
  AniWidth := Round((175 - 45 ) * DPI);
  if drawerNavigation.Width <> Round(45 * DPI) then
    AniWidth := - AniWidth;

  drawerNavigation.AnimationFromCurrent(apWidth, AniWidth, 20, 200, akOut, afkQuartic, nil);
end;

procedure TfrmMain.btnCmdPreviewClick(Sender: TObject);
var
  IObject: IUnknown;
  ISLink: IShellLink;
  ISShell: IShellLinkDataList;
  dBlock: PNTConsoleProps;
  pBlock: Pointer;
  IPFile: IPersistFile;
  LinkName: string;
  Res: HRESULT;
begin
  btnColorCmdClick(Sender);
  LinkName := ExtractFilePath(ParamStr(0)) + 'Command Prompt.lnk';

  CoInitialize(nil);

  IObject := CreateComObject(CLSID_ShellLink);

  ISLink := IObject as IShellLink;

  with ISLink do
  begin
    SetDescription('Performs text-based (command-line) functions');
    SetWorkingDirectory('%HOMEDRIVE%%HOMEPATH%');
    SetPath(PChar('%windir%\system32\cmd.exe'));
    //prompt $E[0;45m$p$E[0;35m $_$E[0;31m$$[$E[0;35m$t$E[0;31m]λ$E[0;37m
    SetArguments(PChar('/k "'+ExtractFilePath(ParamStr(0))+'colors.cmd&prompt $E[0;45m$p$E[0;35m $_$E[0;31m$$[$E[0;35m$t$E[0;31m]λ$E[0;37m"'));
  end;

  ISShell := IObject as IShellLinkDataList;

  with ISShell do
  begin
    Res := S_FALSE;
    Res := RemoveDataBlock(NT_CONSOLE_PROPS_SIG);
    if Res = S_OK then
    begin
      New(dBlock);
      ZeroMemory(dBlock, SizeOf(TNTConsoleProps));
    end;

    with dBlock^ do
    begin
      dbh.cbSize := SizeOf(TNTConsoleProps);
      dbh.dwSignature := NT_CONSOLE_PROPS_SIG;
      wFillAttribute := $007;
      wPopupFillAttribute := $00f5;
      dwScreenBufferSize.X := 80;
      dwScreenBufferSize.Y := 25;
      dwWindowSize.X := 80;
      dwWindowSize.Y := 25;
      dwWindowOrigin.X := 110;
      dwWindowOrigin.Y := 110;
      nFont := 0;
      nInputBufferSize := 0;
      dwFontSize.X := 10;
      dwFontSize.Y := 14;
      uFontFamily := 54; //0;
      uFontWeight := 0;
      StringToWideChar('AnonymicePowerline NF', PWideChar(@FaceName), LF_FACESIZE);
      uCursorSize := 2;
      bFullScreen := False;
      bQuickEdit := True;
      bInsertMode := False;
      bAutoPosition := False;
      uHistoryBufferSize := 50;
      uNumberOfHistoryBuffers := 4;
      bHistoryNoDup := False;
      ColorTable[0] := col00.Color;
      ColorTable[1] := col01.Color;
      ColorTable[2] := col02.Color;
      ColorTable[3] := col03.Color;
      ColorTable[4] := col04.Color;
      ColorTable[5] := col05.Color;
      ColorTable[6] := col06.Color;
      ColorTable[7] := col07.Color;
      ColorTable[8] := col08.Color;
      ColorTable[9] := col09.Color;
      ColorTable[10] := col10.Color;
      ColorTable[11] := col11.Color;
      ColorTable[12] := col12.Color;
      ColorTable[13] := col13.Color;
      ColorTable[14] := col14.Color;
      ColorTable[15] := col15.Color;
    end;

    pBlock := dBlock;

    AddDataBlock(Pointer(pBlock^));
  end;

  IPFile := IObject as IPersistFile;

  IPFile.Save(PWideChar(WideString(LinkName)), False);

  Dispose(dBlock);

  CoUninitialize;

  Sleep(100);

  ShellExecute(0, 'OPEN', PChar(LinkName),nil,nil,SW_SHOWNORMAL);end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
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

procedure TfrmMain.btnImportClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Microsoft ColorTool|*.ini|iTerm Colors|*.itermcolors|Registry Files|*.reg';

  if OpenDialog1.Execute then
  begin
    if ExtractFileExt(OpenDialog1.FileName) = '.itermcolors' then
      ImportITermFile(OpenDialog1.FileName)
    else if ExtractFileExt(OpenDialog1.FileName) = '.ini' then
      ImportINIFile(OpenDialog1.FileName)
    else
      ImportRegfile(OpenDialog1.FileName);
  end;

end;

procedure TfrmMain.btnResetCmdClick(Sender: TObject);
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

procedure TfrmMain.ComboBox1Change(Sender: TObject);
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

procedure TfrmMain.ComboBox2Select(Sender: TObject);
begin
  USymbolButton3.Text := ComboBox2.Text;
  ComboBox2.Visible := False;
end;

procedure TfrmMain.CreateParams(var Params: TCreateParams);
var
  AeroEnabled: LongBool;
begin
  inherited;

  AeroEnabled := False;
  if (Win32MajorVersion >= 6) and not AeroApplied then
  begin
    AeroApplied := True;
    EnableBlur(Handle);
  end;
end;

function TfrmMain.DetectWindowsTerminal: boolean;
begin
  //
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  CollectionHash := TStringList.Create;

  ColorsPaths :=  ExtractFilePath(ParamStr(0))+COLORSPATH+'\';

  ListRegisteredShells;

  LoadColorsFromRegistry;

  UpdateCollectionList;

  TextPreview;

  ThemeManager := UThemeManager1;

  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  TabSheet6.TabVisible := False;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  CollectionHash.Free;
end;

// It will hash colors as written in registry, so it will match easier on
// collection files to match with
function TfrmMain.HashColors: String;
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

procedure TfrmMain.ImportRegfile(const fname: String);
var
  I: Integer;
  list: TStringList;
  analize: Boolean;
  line: String;
  hexColor: String;
  colNo: String;
begin
  analize := False;
  list := TStringList.Create;
  try
    list.LoadFromFile(fname);
    // analize line by line
    if Pos('Windows Registry Editor', list[0]) = 1 then
    begin
      for I := 1 to list.Count - 2 do
      begin
        if analize then
        begin
          if Pos('"ColorTable', list[I]) = 1 then
          begin
            line := StringReplace(list[I],' ', '', [rfReplaceAll]);
            if Pos('=dword:', line) > 1 then
            begin
              colNo:= Copy(line,12 ,2);
              hexColor := '$'+Copy(line,22,8);

              TPanel(FindComponent('col'+colNo)).Color := StrToInt(hexColor);
            end;
          end;
        end;
        if Pos('[HKEY_CURRENT_USER\Console]', list[I]) = 1 then
          analize := True;
      end;
    end;
  finally
    list.Free;
  end;
  TextPreview;
end;

procedure TfrmMain.ListBox1DblClick(Sender: TObject);
var
  str: TStringList;
begin
  if (ListBox1.ItemIndex >= 0) and (ListBox1.ItemIndex < ListBox1.Items.Count) then
  begin
    str := TStringList.Create;
    try
      str.Delimiter := '-';
      str.StrictDelimiter := True;
      str.DelimitedText := ListBox1.Items[ListBox1.ItemIndex];
      if str.Count > 0 then
      begin
        SetForegroundWindow(StrToInt(Trim(str[0])));
      end;
    finally
      str.Free;
    end;
  end;
end;

procedure TfrmMain.ListRegisteredShells;
var
  reg: TRegistry;
  list: TStringList;
  I: Integer;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;

    if reg.OpenKey('Console', False) then
    begin
      list := TStringList.Create;
      try
        reg.GetKeyNames(list);

        cbConsoles.Items.BeginUpdate;
        cbConsoles.Items.Clear;

        cbConsoles.Items.Add('Global');
        for I := 0 to list.Count - 1 do
        begin
          cbConsoles.Items.Add( StringReplace(list[I], '_', '\', [rfReplaceAll]) );
        end;
        cbConsoles.Items.EndUpdate;

        reg.CloseKey;
      finally
        list.Free;
      end;
    end;

    cbConsoles.ItemIndex := 0;
  finally
    reg.Free;
  end;
end;

procedure TfrmMain.LoadColor(const fname: String);
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

procedure TfrmMain.LoadColorsFromRegistry;
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

procedure TfrmMain.LoadDefaultColors;
var
  I: Integer;
begin
  for I := 0 to 15 do
  begin
    TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := DefaultColors[I];
  end;
end;

procedure TfrmMain.LoadLegacyColors;
var
  I: Integer;
begin
  for I := 0 to 15 do
  begin
    TPanel( FindComponent(Format('col%.*d',[2,I])) ).color := LegacyColors[I];
  end;
end;

procedure TfrmMain.LoadWinTermSettings;
var
  JSObj: TJSONObject;
  JSVal: TJSONValue;
  st:String;
  Br: String;
begin
  JSObj := TJSONObject.Create;
  try

  finally
    JSObj.Free;
  end;
  JSVal := TJSONObject.ParseJSONValue(st);
  br := JSVal.GetValue<String>('');
  JsVal.Free;
end;

procedure TfrmMain.PickColor(Sender: TObject; Button: TMouseButton;
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
      frmColorPicker.AlphaMode := False;

      frmColorPicker.SetColor(CurColor,255, False);
      frmColorPicker.SetColor(CurColor,255, True);

      frmColorPicker.Caption := 'Pick a color';

      frmColorPicker.Left := Left + RichEdit1.Left + TPanel(Sender).Left;
      frmColorPicker.Top := Top + RichEdit1.Top + 30;
      if frmColorPicker.ShowModal = mrOk then
      begin
        TPanel(Sender).Color := frmColorPicker.GetColor;
        TextPreview;
      end;
      {ColorDialog1.Options := [cdFullOpen, cdAnyColor];
      ColorDialog1.Color := CurColor;
      if ColorDialog1.Execute then
      begin
        TPanel(Sender).Color := ColorDialog1.Color;
      end;}
    end;
  end;

end;

procedure TfrmMain.TextPreview;
var
  I: Integer;
  J: Integer;
begin
  RichEdit1.Lines.BeginUpdate;
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
  RichEdit1.Lines.EndUpdate;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
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

procedure TfrmMain.tmrDetectWtTimer(Sender: TObject);
var
  LHDesktop: HWND;
  LHWindow: HWND;
  LHParent: HWND;
  LExStyle: DWORD;
  AppClassName: array[0..255] of char;
  titleLength: Integer;
  title: string;
begin
  LHDesktop:=GetDesktopWindow;
  LHWindow:=GetWindow(LHDesktop,GW_CHILD);
  ListBox1.Clear;
  while LHWindow <> 0 do
  begin
    GetClassName(LHWindow, AppClassName, 255);
//    if AppClassName = 'ApplicationFrameWindow' then
//      EnumPropsEx(LHWindow, @MyEnumProc , 0);
    LHParent:=GetWindowLong(LHWindow,GWL_HWNDPARENT);
    LExStyle:=GetWindowLong(LHWindow,GWL_EXSTYLE);

    if IsWindowVisible(LHWindow)
    and (GetProp(LHWindow, 'ITaskList_Deleted') = 0)
    and (AppClassName = 'CASCADIA_HOSTING_WINDOW_CLASS')
    //and not ((AppClassName = 'ApplicationFrameWindow') and not uwpidle)
    and ((LHParent=0)or(LHParent=LHDesktop))
    and (Application.Handle<>LHWindow)
    and ((LExStyle and WS_EX_TOOLWINDOW = 0)or(LExStyle and WS_EX_APPWINDOW <> 0))
    then
    begin
      titleLength := GetWindowTextLength(LHWindow);
      SetLength(title, titlelength);
      GetWindowText(LHWindow, PChar(title), titleLength + 1);
      title := PChar(title);
      ListBox1.Items.Add(IntToStr(LHWindow)+ ' - ' + title);
    end;
    LHWindow:=GetWindow(LHWindow, GW_HWNDNEXT);
  end;

end;

procedure TfrmMain.btnReloadClick(Sender: TObject);
begin
  //ComboBox1Change(Sender);
  LoadColor(ComboBox1.Text);

end;

procedure TfrmMain.UButton2Click(Sender: TObject);
begin
  if WindowState = wsNormal then
    WindowState := wsMaximized
  else
    WindowState := wsNormal;
end;

procedure TfrmMain.UButton3Click(Sender: TObject);
begin
  WindowState := wsMinimized;
end;

procedure TfrmMain.btnClearClick(Sender: TObject);
const
  // default colors for powershell
  PowerShellColor05 = $562401;
  PowerShellColor06 = $f0edee;
var
  Reg: TRegistry;
  I: Integer;
  shell: String;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    shell := StringReplace(cbConsoles.Text, '\', '_', [rfReplaceAll]);

    if cbConsoles.Text = 'Global' then
    begin
      MessageDlg('You shouldn''t clear global colors, it is not recommended. It only clears each console''s colors.'#13#13'Instead apply Default Colors scheme.', mtWarning, [mbOK], 0);
      Exit;
    end;

    if Reg.OpenKey('\Console\' + shell ,true) then
    begin
      for I := 0 to 15 do
      begin
        if (I = 5) or (I = 6) then
        begin
          if Pos('powershell.exe', shell) > 0 then
          begin
            if I = 5 then
              Reg.WriteInteger(Format('ColorTable%.*d',[2, I]),PowerShellColor05)
            else
              Reg.WriteInteger(Format('ColorTable%.*d',[2, I]),PowerShellColor06);
          end
          else
            Reg.DeleteValue(Format('ColorTable%.*d',[2, I]));
        end
        else
          Reg.DeleteValue(Format('ColorTable%.*d',[2, I]));
      end;
      Reg.CloseKey;
    end;

    MessageDlg('Colors cleared successfully for '+ shell, mtInformation, [mbOK], 0);

  finally
    Reg.Free;
  end;
end;

procedure TfrmMain.UpdateCollectionIndex;
begin
  ComboBox1.ItemIndex := CollectionHash.IndexOf(CurrentColorsHash);
end;

procedure TfrmMain.UpdateCollectionList;
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

procedure TfrmMain.USymbolButton1Click(Sender: TObject);
var
  WindowsTerminalPath: String;
  reg: TRegistry;
  lista: TStringList;
  I,J,K: Integer;

  programfiles: String;
  xml: IXMLDOMDocument2;
  node: IXMLDOMNode;
  nodes_row, nodes_se: IXMLDOMNodeList;

  xmlstr: WideString;
  name, vers, arqt, appid: string;
  appUserModelID: string;

  LogoDefaultPath, LogoNewPath: String;
  pnglogo: TPngImage;
  bmpout: TBitmap;

  outBuff: array[0..1023] of widechar;// PWideString;
  intptrzero: Pointer;
  priPath : String;
  resourceKey: String;
  tmpstr: string;

  tmpstrlst : TStringList;
  InstallLocation: String;
begin
  if IsWow64 then
    programfiles := GetEnvironmentVariable('PROGRAMW6432')
  else
    programfiles := GetEnvironmentVariable('PROGRAMFILES');

  // detect if windows terminal uwp is installed
  reg := TRegistry.Create;
  lista := TStringList.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKeyReadOnly('Software\Classes\ActivatableClasses\Package');
    reg.GetKeyNames(lista);
    for I := 0 to lista.Count - 1 do
    begin
      if Pos('Microsoft.WindowsTerminal_', lista[I]) > 0 then
      begin
        WindowsTerminalPath := lista[I];
        Break;
      end;
    end;

  finally
    lista.Free;
    reg.Free;
  end;

  InstallLocation := programfiles + '\WindowsApps\' + WindowsTerminalPath;

  if FileExists(programfiles + '\WindowsApps\' + WindowsTerminalPath + '\AppxManifest.xml') then
  begin
    xmlstr := TFile.ReadAllText(programfiles + '\WindowsApps\' + WindowsTerminalPath + '\AppxManifest.xml');

    xml := CreateOleObject('Microsoft.XMLDOM') as IXMLDOMDocument2;
    xml.async := False;

    xml.loadXML(xmlstr);
    if xml.parseError.errorCode <> 0 then
      raise Exception.Create('XML Load Error: ' + xml.parseError.reason);

    nodes_row := xml.selectNodes('/Package');

    for I := 0 to nodes_row.length - 1 do
    begin
      node := nodes_row.item[I];
      name := node.selectSingleNode('Identity').attributes.getNamedItem('Name').text;
      vers := node.selectSingleNode('Identity').attributes.getNamedItem('Version').text;
      arqt := node.selectSingleNode('Identity').attributes.getNamedItem('ProcessorArchitecture').text;

      nodes_se := node.selectNodes('Applications');
      for J := 0 to nodes_se.length - 1 do
      begin
        node := nodes_se.item[J];
        appid := node.selectSingleNode('Application').attributes.getNamedItem('Id').text;
        appUserModelID := name + Copy(WindowsTerminalPath, StrLen(PChar(name + '_' + vers + '_' + arqt + '_')) + 1,
                          StrLen(PChar(WindowsTerminalPath)) - StrLen(PChar(name + '_' + vers + '_' + arqt + '_')) )
                          + '!' + appid;
      end;
    end;

    //ShellExecute(0, 'OPEN', PChar(InstallLocation), nil, nil, SW_SHOWNORMAL);
    ShellExecute(0, 'OPEN', PChar('shell:AppsFolder\' + appUserModelID), nil, nil, SW_SHOWNORMAL);
  end;

end;

procedure TfrmMain.USymbolButton2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet5;
end;

procedure TfrmMain.USymbolButton3Click(Sender: TObject);
begin
  ComboBox2.Visible := True;
  ComboBox2.DroppedDown := True;
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

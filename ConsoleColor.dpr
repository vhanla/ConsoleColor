program ConsoleColor;

{$R *.dres}

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  ColorPicker in 'ColorPicker.pas' {frmColorPicker},
  Dropper in 'Dropper.pas' {frmDropper},
  functions in 'functions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmColorPicker, frmColorPicker);
  Application.CreateForm(TfrmDropper, frmDropper);
  Application.Run;
end.

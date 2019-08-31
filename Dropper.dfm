object frmDropper: TfrmDropper
  Left = 0
  Top = 0
  Caption = 'frmDropper'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tmrDropper: TTimer
    Interval = 25
    OnTimer = tmrDropperTimer
    Left = 216
    Top = 104
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Console Color Editor v1.0'
  ClientHeight = 442
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 11
    Width = 74
    Height = 13
    Caption = 'Color Schemes:'
  end
  object Label2: TLabel
    Left = 428
    Top = 408
    Width = 184
    Height = 13
    Caption = 'Console Color Editor written by vhanla'
  end
  object Panel1: TPanel
    Left = 15
    Top = 71
    Width = 601
    Height = 332
    BevelOuter = bvLowered
    TabOrder = 0
    object RichEdit1: TRichEdit
      Left = 1
      Top = 1
      Width = 599
      Height = 330
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      Zoom = 100
      ExplicitLeft = 0
    end
  end
  object GridPanel1: TGridPanel
    Left = 15
    Top = 32
    Width = 600
    Height = 33
    BorderWidth = 2
    ColumnCollection = <
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = col00
        Row = 0
      end
      item
        Column = 1
        Control = col01
        Row = 0
      end
      item
        Column = 2
        Control = col02
        Row = 0
      end
      item
        Column = 3
        Control = col03
        Row = 0
      end
      item
        Column = 4
        Control = col04
        Row = 0
      end
      item
        Column = 5
        Control = col05
        Row = 0
      end
      item
        Column = 6
        Control = col06
        Row = 0
      end
      item
        Column = 7
        Control = col07
        Row = 0
      end
      item
        Column = 8
        Control = col08
        Row = 0
      end
      item
        Column = 9
        Control = col09
        Row = 0
      end
      item
        Column = 10
        Control = col10
        Row = 0
      end
      item
        Column = 11
        Control = col11
        Row = 0
      end
      item
        Column = 12
        Control = col12
        Row = 0
      end
      item
        Column = 13
        Control = col13
        Row = 0
      end
      item
        Column = 14
        Control = col14
        Row = 0
      end
      item
        Column = 15
        Control = col15
        Row = 0
      end>
    Ctl3D = True
    ParentCtl3D = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    object col00: TPanel
      Left = 3
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '0'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnMouseUp = PickColor
      ExplicitLeft = 2
      ExplicitTop = 2
    end
    object col01: TPanel
      Left = 40
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnMouseUp = PickColor
      ExplicitLeft = 39
      ExplicitTop = 2
    end
    object col02: TPanel
      Left = 77
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '2'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnMouseUp = PickColor
      ExplicitLeft = 76
      ExplicitTop = 2
    end
    object col03: TPanel
      Left = 114
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '3'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnMouseUp = PickColor
      ExplicitLeft = 113
      ExplicitTop = 2
    end
    object col04: TPanel
      Left = 151
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '4'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnMouseUp = PickColor
      ExplicitLeft = 150
      ExplicitTop = 2
    end
    object col05: TPanel
      Left = 188
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '5'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnMouseUp = PickColor
      ExplicitLeft = 187
      ExplicitTop = 2
    end
    object col06: TPanel
      Left = 225
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '6'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnMouseUp = PickColor
      ExplicitLeft = 224
      ExplicitTop = 2
    end
    object col07: TPanel
      Left = 262
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '7'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnMouseUp = PickColor
      ExplicitLeft = 261
      ExplicitTop = 2
    end
    object col08: TPanel
      Left = 299
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '8'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnMouseUp = PickColor
      ExplicitLeft = 298
      ExplicitTop = 2
    end
    object col09: TPanel
      Left = 336
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = '9'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnMouseUp = PickColor
      ExplicitLeft = 335
      ExplicitTop = 2
    end
    object col10: TPanel
      Left = 373
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'A'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnMouseUp = PickColor
      ExplicitLeft = 372
      ExplicitTop = 2
    end
    object col11: TPanel
      Left = 410
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'B'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnMouseUp = PickColor
      ExplicitLeft = 409
      ExplicitTop = 2
    end
    object col12: TPanel
      Left = 447
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'C'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnMouseUp = PickColor
      ExplicitLeft = 446
      ExplicitTop = 2
    end
    object col13: TPanel
      Left = 484
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'D'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnMouseUp = PickColor
      ExplicitLeft = 483
      ExplicitTop = 2
    end
    object col14: TPanel
      Left = 521
      Top = 3
      Width = 37
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'E'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnMouseUp = PickColor
      ExplicitLeft = 520
      ExplicitTop = 2
    end
    object col15: TPanel
      Left = 558
      Top = 3
      Width = 41
      Height = 29
      Cursor = crHandPoint
      Hint = 'Hold Ctrl and click to paste Hexadecimal color'
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'F'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnMouseUp = PickColor
      ExplicitLeft = 557
      ExplicitTop = 2
    end
  end
  object ComboBox1: TComboBox
    Left = 95
    Top = 8
    Width = 210
    Height = 21
    TabOrder = 2
    Text = 'Default Colors'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Legacy Colors'
      'Default Colors')
  end
  object btnApply: TButton
    Left = 560
    Top = 8
    Width = 56
    Height = 21
    Caption = 'Apply'
    TabOrder = 3
    OnClick = btnApplyClick
  end
  object Button2: TButton
    Left = 16
    Top = 409
    Width = 104
    Height = 25
    Caption = 'Preview in CMD'
    TabOrder = 4
    OnClick = Button2Click
  end
  object btnNew: TButton
    Left = 498
    Top = 8
    Width = 56
    Height = 21
    Caption = 'New'
    TabOrder = 5
    OnClick = btnNewClick
  end
  object btnSave: TButton
    Left = 374
    Top = 8
    Width = 56
    Height = 21
    Caption = 'Save'
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object btnResetCmd: TButton
    Left = 126
    Top = 408
    Width = 128
    Height = 25
    Caption = 'Reset CMD settings'
    ElevationRequired = True
    Enabled = False
    TabOrder = 7
    OnClick = btnResetCmdClick
  end
  object btnReload: TButton
    Left = 312
    Top = 8
    Width = 56
    Height = 21
    Caption = 'Reload'
    TabOrder = 8
    OnClick = btnReloadClick
  end
  object btnDelete: TButton
    Left = 436
    Top = 8
    Width = 56
    Height = 21
    Caption = 'Delete'
    TabOrder = 9
    OnClick = btnDeleteClick
  end
  object ColorDialog1: TColorDialog
    Left = 7
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 311
    Top = 200
  end
end

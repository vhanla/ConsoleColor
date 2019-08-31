object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Console Color Editor v1.0'
  ClientHeight = 485
  ClientWidth = 801
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
  object UCaptionBar1: TUCaptionBar
    Left = 0
    Top = 0
    Width = 801
    Height = 32
    ThemeManager = UThemeManager1
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Console Color'
    Color = 15921906
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object UButton4: TUButton
      Left = 0
      Top = 0
      Width = 45
      Height = 32
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = #57510
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
    end
    object UButton3: TUButton
      Left = 674
      Top = 0
      Width = 48
      Height = 32
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = #59192
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = UButton3Click
      ExplicitLeft = 637
      ExplicitTop = -6
    end
    object UButton2: TUButton
      Left = 722
      Top = 0
      Width = 32
      Height = 32
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = #59193
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = UButton2Click
      ExplicitLeft = 672
    end
    object UButton1: TUButton
      Left = 754
      Top = 0
      Width = 47
      Height = 32
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 2298344
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = #57610
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = UButton1Click
      ExplicitLeft = 753
    end
  end
  object drawerNavigation: TUPanel
    Left = 0
    Top = 32
    Width = 175
    Height = 453
    CustomTextColor = clBlack
    CustomBackColor = 15132390
    Align = alLeft
    BevelOuter = bvNone
    DoubleBuffered = True
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    object buttonOpenMenu: TUSymbolButton
      Left = 0
      Top = 0
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -15
      TextFont.Name = 'Segoe UI'
      TextFont.Style = [fsBold]
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59136
      Text = 'Menu'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      Constraints.MaxWidth = 175
      TabOrder = 0
      TabStop = True
      OnClick = buttonOpenMenuClick
    end
    object buttonMenuSettings: TUSymbolButton
      Left = 0
      Top = 90
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59745
      Text = 'Keybindings'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      TabOrder = 1
      TabStop = True
    end
    object buttonMenuProfile: TUSymbolButton
      Left = 0
      Top = 180
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #57621
      Text = 'Settings'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      TabOrder = 2
      TabStop = True
    end
    object buttonMenuSave: TUSymbolButton
      Left = 0
      Top = 135
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59249
      Text = 'Themes'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      TabOrder = 3
      TabStop = True
    end
    object buttonMenuOpen: TUSymbolButton
      Left = 0
      Top = 45
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59222
      Text = 'Terminal'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      TabOrder = 4
      TabStop = True
    end
    object buttonMenuRate: TUSymbolButton
      Left = 0
      Top = 408
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clBlack
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59267
      Text = 'About'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alBottom
      TabOrder = 5
      TabStop = True
    end
  end
  object UScrollBox1: TUScrollBox
    Left = 175
    Top = 32
    Width = 626
    Height = 453
    Align = alClient
    AutoSize = True
    BorderStyle = bsNone
    DoubleBuffered = True
    Color = clWhite
    ParentColor = False
    ParentDoubleBuffered = False
    TabOrder = 2
    MaxScrollCount = 6
    object Label1: TLabel
      Left = 15
      Top = 11
      Width = 74
      Height = 13
      Caption = 'Color Schemes:'
    end
    object Panel1: TPanel
      Left = 15
      Top = 71
      Width = 601
      Height = 332
      BevelOuter = bvLowered
      TabOrder = 0
      object ListBox1: TListBox
        Left = 3
        Top = 48
        Width = 136
        Height = 225
        ItemHeight = 13
        TabOrder = 0
        Visible = False
      end
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
        TabOrder = 1
        Zoom = 100
      end
    end
    object GridPanel1: TGridPanel
      Left = 15
      Top = 37
      Width = 600
      Height = 33
      BorderWidth = 2
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 37.000000000000000000
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
        Height = 27
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
      end
      object col01: TPanel
        Left = 40
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col02: TPanel
        Left = 77
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col03: TPanel
        Left = 114
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col04: TPanel
        Left = 151
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col05: TPanel
        Left = 188
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col06: TPanel
        Left = 225
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col07: TPanel
        Left = 262
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col08: TPanel
        Left = 299
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col09: TPanel
        Left = 336
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col10: TPanel
        Left = 373
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col11: TPanel
        Left = 410
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col12: TPanel
        Left = 447
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col13: TPanel
        Left = 484
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col14: TPanel
        Left = 521
        Top = 3
        Width = 37
        Height = 27
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
      end
      object col15: TPanel
        Left = 558
        Top = 3
        Width = 37
        Height = 27
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
      end
    end
    object ComboBox1: TComboBox
      Left = 95
      Top = 8
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Legacy Colors'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Legacy Colors'
        'Default Colors')
    end
    object Button1: TButton
      Left = 537
      Top = 409
      Width = 75
      Height = 25
      Caption = 'Export'
      ImageIndex = 2
      Images = ImageList1
      TabOrder = 3
      OnClick = ImportClick
    end
    object btnNew: TUButton
      Left = 432
      Top = 6
      Width = 61
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'New'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = btnNewClick
    end
    object btnPSPreview: TUButton
      Left = 119
      Top = 409
      Width = 90
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Preview'
      ImageIndex = 1
      Images = ImageList1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
      OnClick = btnPSPreviewClick
    end
    object btnReload: TUButton
      Left = 246
      Top = 6
      Width = 62
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Reload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnClick = btnReloadClick
    end
    object btnResetCmd: TButton
      Left = 371
      Top = 377
      Width = 128
      Height = 25
      Caption = 'Reset CMD settings'
      ElevationRequired = True
      Enabled = False
      TabOrder = 7
      Visible = False
      OnClick = btnResetCmdClick
    end
    object btnSave: TUButton
      Left = 314
      Top = 6
      Width = 50
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = True
      OnClick = btnSaveClick
    end
    object btnApply: TUButton
      Left = 531
      Top = 6
      Width = 82
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Apply'
      Highlight = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = True
      OnClick = btnApplyClick
    end
    object btnCmdPreview: TUButton
      Left = 16
      Top = 409
      Width = 97
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Preview'
      ImageIndex = 0
      Images = ImageList1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = True
      OnClick = btnCmdPreviewClick
    end
    object btnColorCmd: TButton
      Left = 499
      Top = 377
      Width = 104
      Height = 25
      Caption = 'Preview in CMD'
      TabOrder = 11
      Visible = False
      OnClick = btnColorCmdClick
    end
    object btnDelete: TUButton
      Left = 370
      Top = 6
      Width = 56
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = True
      OnClick = btnDeleteClick
    end
    object btnImport: TUButton
      Left = 215
      Top = 409
      Width = 93
      Height = 30
      ThemeManager = UThemeManager1
      CustomBorderColors.None = 15921906
      CustomBorderColors.Hover = 15132390
      CustomBorderColors.Press = 13421772
      CustomBorderColors.Disabled = 15921906
      CustomBorderColors.Focused = 15921906
      CustomBackColors.None = 15921906
      CustomBackColors.Hover = 15132390
      CustomBackColors.Press = 13421772
      CustomBackColors.Disabled = 15921906
      CustomBackColors.Focused = 15921906
      CustomTextColors.Disabled = clGray
      Text = 'Import'
      ImageIndex = 2
      Images = ImageList1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      TabStop = True
      OnClick = btnImportClick
    end
    object USymbolButton1: TUSymbolButton
      Left = 351
      Top = 408
      Width = 156
      Height = 31
      ThemeManager = UThemeManager1
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      TextFont.Charset = DEFAULT_CHARSET
      TextFont.Color = clWindowText
      TextFont.Height = -13
      TextFont.Name = 'Segoe UI'
      TextFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59222
      Text = 'Windows Terminal'
      Detail = 'Detail'
      ShowDetail = False
      TabOrder = 14
      TabStop = True
      OnClick = USymbolButton1Click
    end
  end
  object ColorDialog1: TColorDialog
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 671
    Top = 120
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 311
    Top = 200
  end
  object OpenDialog1: TOpenDialog
    Left = 664
    Top = 56
  end
  object ImageList1: TImageList
    Left = 384
    Top = 208
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000091908FFF8F8F
      8DFF8E8D8CFF8D8C8BFF8B8A89FF8A8988FF888886FF878685FF868583FF8484
      82FF838280FF82817FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000929290FFFBFB
      FAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFB
      FAFFFBFBFAFF838280FF0000000000000000000000006C655BFFCDC9C3600000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFFE4A580AFE69F75BFE79F76BFE89F
      76BFE9A077BFEAA177BFEBA178BFECA278BFEDA278BFEEA378BFEFA378BFEEA3
      78BFEEA378BFFED5BE60000000000000000000000000CC8800FFCC8800FFCC88
      00FFCC8800FFCC8800FFCC8800FFCC8800FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFFBFBFAFF848482FF000000000000000000000000D4D0CA608D8373FFCDC9
      C360000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFFDF7F49FFE8854CFFE79261FFB97F
      5BFFBB6C3BFFD87B46FFD47945FFD07744FFC28B69FFBA8766FFB98666FFB17B
      58FFA86135FFEA9A6CCF000000000000000000000000CC8800FFFFD352FFCC88
      00FFFFD352FFCC8800FFFFD352FFCC8800FFF7F7F6FFF7F6F5FFF7F6F5FFF7F6
      F5FFFBFBFAFF868583FF00000000000000000000000000000000D4D0CA60887F
      6FFFAA7918FFCC8800FFCC8800FFCC8800FFCC8800FFCC8800FFCC8800FFCC88
      00FFCC8800FF00000000000000000000000097928FFF000000FF000000FFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFF000000FF97928FFFE19569CFEC874DFFF4C2A6FFFFFF
      FFFFCFB5A3FFAA6940FFD37945FFEABCA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC4A189FFDB7D47FFFEF8F4100000000000000000CC8800FFCC8800FF9966
      00FF996600FF996600FF996600FF996600FFF8F7F6FFF8F7F6FFF7F6F5FFF7F6
      F5FFFBFBFAFF878685FF0000000000000000000000000000000000000000AB7A
      1AFF9E947EFF9C8B5AFF988E7AFF97907EFF9F8C56FFCA8A0AFFFFD352FFFFD3
      52FFCC8800FF00000000000000000000000097928FFF000000FFFFFFFFFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFF0000
      00FF000000FF000000FF000000FF97928FFFE4B2968FF0894EFFED8E58FFF8D9
      C7FFFFFFFFFFEADFD7FFAA7755FFCB906CFFEABCA2FFE8BBA1FFE6BAA1FFE4B9
      A0FFCE8A63FFCB7442FFFEDCC9500000000000000000CC8800FFFFD352FF9966
      00FFD9A300FF996600FFD9A300FF996600FFF8F7F6FFF8F7F6FFF8F7F6FFF7F6
      F6FFFBFBFAFF888886FF0000000000000000000000000000000000000000CC88
      00FF887A51FFD9CCB0FFF6E2BFFFFFF0CEFFC5BAA0FF8C7037FFFFD352FFFFD3
      52FFCC8800FF00000000000000000000000097928FFF000000FFFFFFFFFF0000
      00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FF97928FFFEED3C350EB864DFFEF894EFFEB86
      4DFFF2BA9AFFFFFFFFFFFFFFFFFFC19F88FFAF6537FFCF7643FFCF7643FFCB74
      42FFC77141FFC26F3FFFFABF9D8F0000000000000000CC8800FFCC8800FF9966
      00FF996600FF996600FF996600FF996600FFE7DCC9FFA5781FFFE6DCC8FFF8F7
      F6FFFBFBFBFF8A8988FF0000000000000000000000000000000000000000CC88
      00FFABA08CFFF8E5C5FFEEDDC1FFEFDEBFFFEEDCBEFF918978FFA76F00FFA76F
      00FFA76F00FF00000000000000000000000097928FFF000000FFFFFFFFFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF97928FFFFBF6F310E1814AFFF38B4FFFEF88
      4EFFEB864DFFEC9B6DFFFAE8DDFFFFFFFFFFE4D5CAFFB36739FFD27844FFCE76
      43FFCA7342FFC67140FFEA9A6CCF0000000000000000CC8800FFFFD352FF9966
      00FFD9A300FF996600FFF9F8F8FFF9F8F7FFA5781FFFE6B83EFFA5781FFFF8F7
      F6FFFCFBFBFF8B8A89FF0000000000000000000000000000000000000000CC88
      00FFAEA696FFFFF1D7FFF4E2C6FFF9E7C1FFF8E7BFFF958C7BFFD9A300FFD9A3
      00FF996600FF00000000000000000000000097928FFF000000FF000000FFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF97928FFF00000000E09469CFF68D50FFF28A
      4FFFEE884EFFEA864CFFECA278FFFFFFFFFFFDF7F4FFCC7542FFD67A46FFD278
      44FFCE7543FFCA7342FFDD7E48FFFEF7F41000000000CC8800FFCC8800FF9966
      00FF996600FF996600FFE7DDC9FFA5781FFFD5C19BFFA5781FFFE7DCC9FFF8F7
      F6FFFCFBFBFF8D8C8BFF0000000000000000000000000000000000000000CC88
      00FF8A7E5EFFF2E8D6FFF7E8D1FFFAE9C7FFD5C6A7FF7B6840FFD9A300FFD9A3
      00FF996600FF00000000000000000000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF00000000E0AF948FFA8F52FFF68C
      50FFF28A4FFFF19E6FFFFEF7F4FFFDF7F4FFE7986CFFDE7F48FFD97C47FFD57A
      45FFD27844FFCD7543FFD27844FFFCDBC85000000000000000009D9D9CFFFDFC
      FCFFFAF9F9FFFAF9F8FFA5781FFFE6B83EFFA5781FFFF9F8F7FFF9F8F7FFF8F8
      F7FFFCFBFBFF8E8D8CFF0000000000000000000000000000000000000000CC88
      00FFB17A0BFF80704EFFABA495FF9E9585FF6E5E3CFF936303FF996600FF9966
      00FF996600FF00000000000000000000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF00000000EBD1C250F28A4FFFFA8E
      52FFF7A271FFFEF8F4FFF8F4F2FFE8996CFFE5834BFFE18149FFDD7E48FFD97C
      47FFD57A45FFD17744FFCD7543FFF6BC9B8F00000000000000009E9E9EFFFDFD
      FCFFFAFAF9FFFAF9F9FFE8DECAFFA5781FFFE7DDC9FFF9F8F8FFF9F8F7FFF9F8
      F7FFFCFBFBFF8F8F8DFF0000000000000000000000000000000000000000CC88
      00FFFFD352FFFFD352FFA76F00FFD9A300FFD9A300FF996600FF000000000000
      000000000000EBE2CF30A57920DFEBE2CF3097928FFFCDCCCAFFCDCCCAFFCDCC
      CAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCC
      CAFFCDCCCAFFCDCCCAFFCDCCCAFF97928FFF00000000FAF5F210E2814AFFFD90
      53FFFEE3D4FFFFFFFFFFF6B691FFED874DFFE9854CFFE5834BFFE18049FFDD7E
      48FFD97C47FFD57945FFD17744FFE9996CCF0000000000000000A09F9FFFFDFD
      FDFFFAFAF9FFFAFAF9FFFAF9F9FFFAF9F8FFFAF9F8FFF9F9F8FFF9F8F8FFF9F8
      F7FFFCFBFBFF91908FFF0000000000000000000000000000000000000000CC88
      00FFFFD352FFFFD352FFA76F00FFD9A300FFD9A300FF996600FF000000000000
      000000000000A57920DFE6B83EFFA57920DF97928FFFE0D9D3FFE0D9D3FFE0D9
      D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FF917968FFE0D9
      D3FF917968FFE0D9D3FF917968FF97928FFF0000000000000000DE9368CFFE91
      53FFFEB389FFFBB188FFF58C50FFF1894FFFEC874DFFE9854CFFE4824BFFE080
      49FFDC7E48FFD87B46FFD47945FFE08049FF0000000000000000A1A1A1FFFDFD
      FDFFFBFAFAFFFAFAF9FFFAFAF9FFFAF9F9FFFAF9F8FFF9F9F8FFA6A6A6FF8C8C
      8CFF8C8C8CFF929290FF0000000000000000000000000000000000000000CC88
      00FFCC8800FFCC8800FFA76F00FF996600FF996600FF996600FF000000000000
      000000000000EBE2CF30A57920DFEBE2CF3097928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF0000000000000000E6C8B660DE9A
      73BFDE9A73BFE09B74BFE19C74BFE19C74BFE39C75BFE49D75BFE49E75BFE69E
      75BFE79F76BFE79F76BFE9A077BFEEAA83AF0000000000000000A2A2A2FFFDFD
      FDFFFBFBFAFFFBFAFAFFFAFAF9FFFAF9F9FFFAF9F8FFFAF9F8FFA6A6A6FFEAEA
      EAFFD5D5D5FF9F9E9DEF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBE2CF30A579
      20DFEBE2CF300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A3FFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFCFFFDFCFCFFFDFCFCFFFDFCFCFFA6A6A6FFD6D6
      D6FFA1A1A0EFEBEAEA3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A57920DFE6B8
      3EFFA57920DF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5FFA4A4
      A3FFA2A2A2FFA1A1A1FFA09F9FFF9E9E9EFF9D9D9CFF9B9B9BFF9A9A99FFA3A3
      A3EFEBEBEB300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBE2CF30A579
      20DFEBE2CF30000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC003FFFF0000FFFFC0039FFF
      0000000380038FFF000000038003C007000000018003E007000000018003E007
      000000018003E007000000018003E007000080008003E00700008000C003E007
      00008000C003E03800008000C003E0380000C000C003E0380000C000C003FFC7
      FFFFFFFFC003FFC7FFFFFFFFC007FFC700000000000000000000000000000000
      000000000000}
  end
  object UThemeManager1: TUThemeManager
    Left = 287
    Top = 111
  end
end

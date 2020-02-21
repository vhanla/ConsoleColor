object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Console Color Editor v1.0'
  ClientHeight = 611
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
    ThemeManager = UThemeManager1
    BackColor.Enabled = False
    BackColor.Color = clBlack
    BackColor.LightColor = 15921906
    BackColor.DarkColor = 2829099
    object UQuickButton1: TUQuickButton
      Left = 756
      Top = 0
      ButtonStyle = sbsQuit
      LightColor = 2298344
      DarkColor = 2298344
      PressBrightnessDelta = 32
      Align = alRight
      Caption = #57606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 769
    end
    object UQuickButton2: TUQuickButton
      Left = 711
      Top = 0
      ButtonStyle = sbsMax
      LightColor = 13619151
      DarkColor = 3947580
      PressBrightnessDelta = -32
      Align = alRight
      Caption = #57347
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 701
    end
    object UQuickButton3: TUQuickButton
      Left = 666
      Top = 0
      ButtonStyle = sbsMin
      LightColor = 13619151
      DarkColor = 3947580
      PressBrightnessDelta = -32
      Align = alRight
      Caption = #59192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 648
      ExplicitTop = 8
    end
    object UQuickButton4: TUQuickButton
      Left = 0
      Top = 0
      ButtonStyle = sbsHighlight
      LightColor = 14120960
      DarkColor = 14120960
      Align = alLeft
      Caption = #57510
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 288
      ExplicitTop = 16
    end
  end
  object drawerNavigation: TUPanel
    Left = 0
    Top = 32
    Width = 175
    Height = 579
    Align = alLeft
    Color = 15132390
    DoubleBuffered = True
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    ThemeManager = UThemeManager1
    BackColor.Enabled = False
    BackColor.Color = clBlack
    BackColor.LightColor = 15132390
    BackColor.DarkColor = 2039583
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
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59222
      Text = 'Windows Terminal'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      OnClick = buttonMenuSettingsClick
    end
    object buttonMenuProfile: TUSymbolButton
      Left = 0
      Top = 220
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59280
      Text = 'Themes'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      OnClick = buttonMenuProfileClick
    end
    object buttonMenuSave: TUSymbolButton
      Left = 0
      Top = 175
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
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
      OnClick = buttonMenuSaveClick
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
      OnClick = buttonMenuOpenClick
    end
    object buttonMenuRate: TUSymbolButton
      Left = 0
      Top = 534
      Width = 175
      Height = 45
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
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
      OnClick = buttonMenuRateClick
    end
    object USymbolButton2: TUSymbolButton
      Left = 0
      Top = 135
      Width = 175
      SymbolFont.Charset = DEFAULT_CHARSET
      SymbolFont.Color = clWindowText
      SymbolFont.Height = -16
      SymbolFont.Name = 'Segoe MDL2 Assets'
      SymbolFont.Style = []
      DetailFont.Charset = DEFAULT_CHARSET
      DetailFont.Color = clWindowText
      DetailFont.Height = -13
      DetailFont.Name = 'Segoe UI'
      DetailFont.Style = []
      SymbolChar = #59249
      Text = 'Profiles'
      TextOffset = 45
      Detail = 'Detail'
      ShowDetail = False
      Align = alTop
      OnClick = USymbolButton2Click
    end
  end
  object PageControl1: TPageControl
    Left = 175
    Top = 32
    Width = 626
    Height = 579
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object UScrollBox1: TUScrollBox
        Left = 0
        Top = 0
        Width = 618
        Height = 548
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoSize = True
        DoubleBuffered = True
        Color = clWhite
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 0
        AniSet.AniKind = akOut
        AniSet.AniFunctionKind = afkQuartic
        AniSet.DelayStartTime = 0
        AniSet.Duration = 250
        AniSet.Step = 25
        BackColor.Enabled = False
        BackColor.Color = clBlack
        BackColor.LightColor = 15132390
        BackColor.DarkColor = 2039583
        MaxScrollCount = 6
        object Label1: TLabel
          Left = 15
          Top = 56
          Width = 74
          Height = 13
          Caption = 'Color Schemes:'
        end
        object Label2: TLabel
          Left = 15
          Top = 19
          Width = 47
          Height = 13
          Caption = 'Consoles:'
        end
        object GridPanel1: TGridPanel
          Left = 15
          Top = 82
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
          TabOrder = 0
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
          Top = 53
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'Legacy Colors'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Legacy Colors'
            'Default Colors')
        end
        object btnNew: TUButton
          Left = 314
          Top = 49
          Width = 61
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
          Caption = '&New'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnNewClick
        end
        object btnPSPreview: TUButton
          Left = 122
          Top = 489
          Width = 90
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
          ImageIndex = 1
          Images = ImageList1
          Caption = 'Preview'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnPSPreviewClick
        end
        object btnReload: TUButton
          Left = 246
          Top = 49
          Width = 62
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
          Caption = '&Reload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnReloadClick
        end
        object btnResetCmd: TButton
          Left = 374
          Top = 457
          Width = 128
          Height = 25
          Caption = 'Reset CMD settings'
          ElevationRequired = True
          Enabled = False
          TabOrder = 5
          Visible = False
          OnClick = btnResetCmdClick
        end
        object btnSave: TUButton
          Left = 443
          Top = 49
          Width = 62
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
          Caption = '&Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnSaveClick
        end
        object btnApply: TUButton
          Left = 430
          Top = 13
          Width = 92
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
          Highlight = True
          Caption = '&Apply'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnApplyClick
        end
        object btnCmdPreview: TUButton
          Left = 19
          Top = 489
          Width = 97
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
          ImageIndex = 0
          Images = ImageList1
          Caption = 'Preview'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCmdPreviewClick
        end
        object btnColorCmd: TButton
          Left = 502
          Top = 457
          Width = 104
          Height = 25
          Caption = 'Preview in CMD'
          TabOrder = 9
          Visible = False
          OnClick = btnColorCmdClick
        end
        object btnDelete: TUButton
          Left = 381
          Top = 49
          Width = 56
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
          Caption = '&Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnDeleteClick
        end
        object btnImport: TUButton
          Left = 522
          Top = 49
          Width = 93
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
          ImageIndex = 2
          Images = ImageList1
          Caption = '&Import'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnImportClick
        end
        object USymbolButton1: TUSymbolButton
          Left = 218
          Top = 488
          Width = 156
          Height = 31
          ThemeManager = UThemeManager1
          SymbolFont.Charset = DEFAULT_CHARSET
          SymbolFont.Color = clWindowText
          SymbolFont.Height = -16
          SymbolFont.Name = 'Segoe MDL2 Assets'
          SymbolFont.Style = []
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -13
          DetailFont.Name = 'Segoe UI'
          DetailFont.Style = []
          SymbolChar = #59222
          Text = 'Windows Terminal'
          Detail = 'Detail'
          ShowDetail = False
          OnClick = USymbolButton1Click
        end
        object cbConsoles: TComboBox
          Left = 68
          Top = 14
          Width = 349
          Height = 21
          TabOrder = 13
        end
        object RichEdit1: TRichEdit
          Left = 19
          Top = 121
          Width = 599
          Height = 330
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
          TabOrder = 14
          Zoom = 100
        end
        object btnClear: TUButton
          Left = 528
          Top = 13
          Width = 86
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
          Caption = '&Clear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnClearClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object UText1: TUText
        Left = 24
        Top = 92
        Width = 89
        Height = 17
        Caption = 'Default Profile: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText5: TUText
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 618
        Height = 28
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Windows Terminal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TextKind = tkHeading
        ExplicitWidth = 159
      end
      object UText6: TUText
        Left = 24
        Top = 134
        Width = 66
        Height = 17
        Caption = 'Initial Cols: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText7: TUText
        Left = 24
        Top = 170
        Width = 72
        Height = 17
        Caption = 'Initial Rows: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText8: TUText
        Left = 24
        Top = 206
        Width = 108
        Height = 17
        Caption = 'Requested Theme:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText9: TUText
        Left = 24
        Top = 314
        Width = 97
        Height = 17
        Caption = 'Word Delimiters:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UCheckBox1: TUCheckBox
        Left = 16
        Top = 56
        Width = 142
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        State = cbsChecked
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UCheckBox2: TUCheckBox
        Left = 16
        Top = 236
        Width = 164
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        State = cbsChecked
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UCheckBox3: TUCheckBox
        Left = 16
        Top = 272
        Width = 218
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        State = cbsChecked
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object USlider2: TUSlider
        Left = 216
        Top = 128
        Width = 257
        Min = 1
        Max = 999
        Value = 120
      end
      object USlider3: TUSlider
        Left = 216
        Top = 168
        Width = 257
        Min = 1
        Max = 999
        Value = 30
      end
      object URadioButton1: TURadioButton
        Left = 216
        Top = 199
        Width = 81
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        CustomActiveColor = 14120960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object URadioButton2: TURadioButton
        Left = 311
        Top = 199
        Width = 68
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        CustomActiveColor = 14120960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object URadioButton3: TURadioButton
        Left = 401
        Top = 199
        Width = 67
        ThemeManager = UThemeManager1
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        CustomActiveColor = 14120960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText15: TUText
        Left = 16
        Top = 369
        Width = 190
        Height = 17
        Caption = 'List of Window Terminal running:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UEdit1: TUEdit
        Left = 138
        Top = 200
        Width = 63
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ThemeManager = UThemeManager1
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 56
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = 'system'
      end
      object UEdit2: TUEdit
        Left = 138
        Top = 308
        Width = 335
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ThemeManager = UThemeManager1
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 328
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = ' ./\\()\"'#39'-:,.;<>~!@#$%^&*|+=[]{}~?\u2502'
      end
      object UEdit3: TUEdit
        Left = 138
        Top = 92
        Width = 335
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ThemeManager = UThemeManager1
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 328
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = '{61c54bbd-c2c6-5271-96e7-009a87ff44bf}'
      end
      object UEdit4: TUEdit
        Left = 138
        Top = 128
        Width = 63
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ThemeManager = UThemeManager1
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 56
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = '120'
      end
      object UEdit5: TUEdit
        Left = 138
        Top = 164
        Width = 63
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ThemeManager = UThemeManager1
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 56
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = '30'
      end
      object ListBox1: TListBox
        Left = 16
        Top = 392
        Width = 377
        Height = 97
        ItemHeight = 13
        TabOrder = 5
        OnDblClick = ListBox1DblClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object UScrollBox2: TUScrollBox
        Left = 0
        Top = 0
        Width = 618
        Height = 548
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        DoubleBuffered = True
        Color = clWhite
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 0
        AniSet.AniKind = akOut
        AniSet.AniFunctionKind = afkQuartic
        AniSet.DelayStartTime = 0
        AniSet.Duration = 250
        AniSet.Step = 25
        BackColor.Enabled = False
        BackColor.Color = clBlack
        BackColor.LightColor = 15132390
        BackColor.DarkColor = 2039583
        MaxScrollCount = 6
        object UText4: TUText
          AlignWithMargins = True
          Left = 0
          Top = 20
          Width = 618
          Height = 28
          Margins.Left = 0
          Margins.Top = 20
          Margins.Right = 0
          Margins.Bottom = 5
          Align = alTop
          Caption = 'Keybindings'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TextKind = tkHeading
          ExplicitWidth = 108
        end
        object Label3: TLabel
          Left = 20
          Top = 72
          Width = 47
          Height = 13
          Caption = 'Close Tab'
        end
        object Label4: TLabel
          Left = 20
          Top = 97
          Width = 42
          Height = 13
          Caption = 'New Tab'
        end
        object Label5: TLabel
          Left = 20
          Top = 122
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 0'
        end
        object Label6: TLabel
          Left = 20
          Top = 146
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 1'
        end
        object Label7: TLabel
          Left = 20
          Top = 172
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 2'
        end
        object Label8: TLabel
          Left = 20
          Top = 197
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 3'
        end
        object Label9: TLabel
          Left = 20
          Top = 222
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 4'
        end
        object Label10: TLabel
          Left = 20
          Top = 247
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 5'
        end
        object Label11: TLabel
          Left = 20
          Top = 272
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 6'
        end
        object Label12: TLabel
          Left = 19
          Top = 296
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 7'
        end
        object Label13: TLabel
          Left = 20
          Top = 324
          Width = 84
          Height = 13
          Caption = 'New Tab Profile 8'
        end
        object Label14: TLabel
          Left = 20
          Top = 349
          Width = 44
          Height = 13
          Caption = 'Next Tab'
        end
        object Label15: TLabel
          Left = 20
          Top = 374
          Width = 68
          Height = 13
          Caption = 'Open Settings'
        end
        object Label16: TLabel
          Left = 20
          Top = 398
          Width = 43
          Height = 13
          Caption = 'Prev Tab'
        end
        object Label17: TLabel
          Left = 312
          Top = 72
          Width = 55
          Height = 13
          Caption = 'Scroll Down'
        end
        object Label18: TLabel
          Left = 312
          Top = 99
          Width = 82
          Height = 13
          Caption = 'Scroll Down Page'
        end
        object Label19: TLabel
          Left = 312
          Top = 122
          Width = 41
          Height = 13
          Caption = 'Scroll Up'
        end
        object Label20: TLabel
          Left = 312
          Top = 146
          Width = 68
          Height = 13
          Caption = 'Scroll Up Page'
        end
        object Label21: TLabel
          Left = 312
          Top = 172
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 0'
        end
        object Label22: TLabel
          Left = 312
          Top = 197
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 1'
        end
        object Label23: TLabel
          Left = 312
          Top = 222
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 2'
        end
        object Label24: TLabel
          Left = 312
          Top = 247
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 3'
        end
        object Label25: TLabel
          Left = 312
          Top = 272
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 4'
        end
        object Label26: TLabel
          Left = 313
          Top = 296
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 5'
        end
        object Label27: TLabel
          Left = 312
          Top = 324
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 6'
        end
        object Label28: TLabel
          Left = 312
          Top = 347
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 7'
        end
        object Label29: TLabel
          Left = 312
          Top = 374
          Width = 74
          Height = 13
          Caption = 'Switch to Tab 8'
        end
        object HotKey1: THotKey
          Left = 110
          Top = 68
          Width = 180
          Height = 19
          HotKey = 16471
          Modifiers = [hkCtrl]
          TabOrder = 0
        end
        object HotKey3: THotKey
          Left = 110
          Top = 118
          Width = 180
          Height = 19
          HotKey = 24625
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 1
        end
        object HotKey4: THotKey
          Left = 110
          Top = 143
          Width = 180
          Height = 19
          HotKey = 24626
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 2
        end
        object HotKey5: THotKey
          Left = 110
          Top = 168
          Width = 180
          Height = 19
          HotKey = 24627
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 3
        end
        object HotKey6: THotKey
          Left = 110
          Top = 193
          Width = 180
          Height = 19
          HotKey = 24628
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 4
        end
        object HotKey7: THotKey
          Left = 110
          Top = 218
          Width = 180
          Height = 19
          HotKey = 24629
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 5
        end
        object HotKey8: THotKey
          Left = 110
          Top = 243
          Width = 180
          Height = 19
          HotKey = 24630
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 6
        end
        object HotKey9: THotKey
          Left = 110
          Top = 268
          Width = 180
          Height = 19
          HotKey = 24631
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 7
        end
        object HotKey10: THotKey
          Left = 399
          Top = 118
          Width = 180
          Height = 19
          HotKey = 24614
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 8
        end
        object HotKey11: THotKey
          Left = 399
          Top = 93
          Width = 180
          Height = 19
          HotKey = 24610
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 9
        end
        object HotKey12: THotKey
          Left = 399
          Top = 68
          Width = 180
          Height = 19
          HotKey = 24616
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 10
        end
        object HotKey13: THotKey
          Left = 110
          Top = 395
          Width = 180
          Height = 19
          HotKey = 24585
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 11
        end
        object HotKey14: THotKey
          Left = 110
          Top = 370
          Width = 180
          Height = 19
          HotKey = 16401
          Modifiers = [hkCtrl]
          TabOrder = 12
        end
        object HotKey15: THotKey
          Left = 110
          Top = 345
          Width = 180
          Height = 19
          HotKey = 16393
          Modifiers = [hkCtrl]
          TabOrder = 13
        end
        object HotKey16: THotKey
          Left = 110
          Top = 320
          Width = 180
          Height = 19
          HotKey = 24633
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 14
        end
        object HotKey17: THotKey
          Left = 110
          Top = 293
          Width = 180
          Height = 19
          HotKey = 24632
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 15
        end
        object HotKey2: THotKey
          Left = 110
          Top = 93
          Width = 180
          Height = 19
          HotKey = 16468
          Modifiers = [hkCtrl]
          TabOrder = 16
        end
        object HotKey18: THotKey
          Left = 399
          Top = 143
          Width = 180
          Height = 19
          HotKey = 24609
          Modifiers = [hkShift, hkCtrl]
          TabOrder = 17
        end
        object HotKey19: THotKey
          Left = 399
          Top = 168
          Width = 180
          Height = 19
          HotKey = 32817
          TabOrder = 18
        end
        object HotKey20: THotKey
          Left = 399
          Top = 193
          Width = 180
          Height = 19
          HotKey = 32818
          TabOrder = 19
        end
        object HotKey21: THotKey
          Left = 399
          Top = 218
          Width = 180
          Height = 19
          HotKey = 32819
          TabOrder = 20
        end
        object HotKey22: THotKey
          Left = 399
          Top = 243
          Width = 180
          Height = 19
          HotKey = 32820
          TabOrder = 21
        end
        object HotKey23: THotKey
          Left = 399
          Top = 268
          Width = 180
          Height = 19
          HotKey = 32821
          TabOrder = 22
        end
        object HotKey24: THotKey
          Left = 399
          Top = 293
          Width = 180
          Height = 19
          HotKey = 32822
          TabOrder = 23
        end
        object HotKey25: THotKey
          Left = 399
          Top = 318
          Width = 180
          Height = 19
          HotKey = 32823
          TabOrder = 24
        end
        object HotKey26: THotKey
          Left = 399
          Top = 343
          Width = 180
          Height = 19
          HotKey = 32824
          TabOrder = 25
        end
        object HotKey27: THotKey
          Left = 399
          Top = 368
          Width = 180
          Height = 19
          HotKey = 32825
          TabOrder = 26
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object UText3: TUText
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 618
        Height = 28
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Themes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TextKind = tkHeading
        ExplicitWidth = 66
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
      object UText2: TUText
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 618
        Height = 28
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Profiles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TextKind = tkHeading
        ExplicitWidth = 64
      end
      object UText11: TUText
        Left = 32
        Top = 80
        Width = 88
        Height = 17
        Caption = 'Acrylic Opacity:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText12: TUText
        Left = 48
        Top = 111
        Width = 72
        Height = 17
        Caption = 'Background:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText13: TUText
        Left = 36
        Top = 183
        Width = 84
        Height = 17
        Caption = 'Color Scheme:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object UText14: TUText
        Left = 30
        Top = 229
        Width = 90
        Height = 17
        Caption = 'Command Line:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object USlider1: TUSlider
        Left = 126
        Top = 80
        Width = 185
      end
      object UCheckBox4: TUCheckBox
        Left = 120
        Top = 147
        Width = 115
        IconFont.Charset = DEFAULT_CHARSET
        IconFont.Color = clWindowText
        IconFont.Height = -20
        IconFont.Name = 'Segoe MDL2 Assets'
        IconFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 126
        Top = 183
        Width = 203
        Height = 21
        TabOrder = 1
        Text = 'ComboBox2'
        Visible = False
        OnSelect = ComboBox2Select
        Items.Strings = (
          '123'
          '123'
          '123'
          '123'
          '12')
      end
      object UEdit6: TUEdit
        Left = 126
        Top = 111
        Width = 185
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 178
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = '#012456'
      end
      object USymbolButton3: TUSymbolButton
        Left = 126
        Top = 183
        Width = 185
        Height = 30
        SymbolFont.Charset = DEFAULT_CHARSET
        SymbolFont.Color = clWindowText
        SymbolFont.Height = -16
        SymbolFont.Name = 'Segoe MDL2 Assets'
        SymbolFont.Style = []
        DetailFont.Charset = DEFAULT_CHARSET
        DetailFont.Color = clWindowText
        DetailFont.Height = -13
        DetailFont.Name = 'Segoe UI'
        DetailFont.Style = []
        SymbolChar = #60559
        Text = 'Campbell'
        Detail = 'Detail'
        ShowDetail = False
        OnClick = USymbolButton3Click
      end
      object UEdit7: TUEdit
        Left = 126
        Top = 223
        Width = 185
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 178
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
        Edit.Text = 'powershell.exe'
      end
      object UEdit8: TUEdit
        Left = 126
        Top = 259
        Width = 185
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 178
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
      end
      object UEdit9: TUEdit
        Left = 126
        Top = 335
        Width = 185
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Edit.Left = 4
        Edit.Top = 4
        Edit.Width = 178
        Edit.Height = 23
        Edit.ParentColor = False
        Edit.ParentFont = False
      end
      object USymbolButton4: TUSymbolButton
        Left = 126
        Top = 295
        Width = 185
        Height = 30
        SymbolFont.Charset = DEFAULT_CHARSET
        SymbolFont.Color = clWindowText
        SymbolFont.Height = -16
        SymbolFont.Name = 'Segoe MDL2 Assets'
        SymbolFont.Style = []
        DetailFont.Charset = DEFAULT_CHARSET
        DetailFont.Color = clWindowText
        DetailFont.Height = -13
        DetailFont.Name = 'Segoe UI'
        DetailFont.Style = []
        SymbolChar = #60559
        Text = 'bar'
        Detail = 'Detail'
        ShowDetail = False
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      object UText10: TUText
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 618
        Height = 28
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'About'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TextKind = tkHeading
        ExplicitWidth = 55
      end
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
    Left = 79
    Top = 312
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 119
    Top = 352
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 304
  end
  object ImageList1: TImageList
    Left = 144
    Top = 296
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
    Left = 23
    Top = 375
  end
  object tmrDetectWt: TTimer
    OnTimer = tmrDetectWtTimer
    Left = 595
    Top = 419
  end
end

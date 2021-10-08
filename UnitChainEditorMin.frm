object _FormChainEditor: T_FormChainEditor
  Left = 350
  Height = 601
  Top = 147
  Width = 839
  HelpContext = 20
  ClientHeight = 601
  ClientWidth = 839
  Color = clBtnFace
  Constraints.MinWidth = 375
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  KeyPreview = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  Position = poDesktopCenter
  LCLVersion = '7.4'
  object PageControl: TPageControl
    Left = 0
    Height = 601
    Top = 0
    Width = 839
    ActivePage = TabSheetChainEditor
    Align = alClient
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    MultiLine = True
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControlChange
    OnChanging = PageControlChanging
    OnResize = PageControlResize
    Options = [nboMultiLine]
    object TabSheetChainEditor: TTabSheet
      HelpContext = 30
      Caption = 'C&hain'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ParentFont = False
      object LabelChainFileName: TLabel
        Left = 0
        Height = 13
        Top = 0
        Width = 831
        Align = alTop
        Caption = 'Chain file:'
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentColor = False
        ParentFont = False
      end
      object SplitterHorzChainEdit: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 3
        Top = 451
        Width = 831
        Align = alBottom
        Beveled = True
        ResizeAnchor = akBottom
      end
      object PanelChainBottom: TPanel
        Left = 0
        Height = 121
        Top = 454
        Width = 831
        Align = alBottom
        BevelInner = bvLowered
        ClientHeight = 121
        ClientWidth = 831
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 0
        object StringGridStateLink: TBKStringGrid
          Left = 2
          Height = 117
          Top = 2
          Width = 683
          Align = alClient
          ColCount = 2
          DefaultColWidth = 24
          DefaultRowHeight = 15
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          RowCount = 15
          TabOrder = 0
          OnKeyDown = StringGridStateLinkKeyDown
          OnSelectCell = StringGridStateLinkSelectCell
          CaseSensitive = False
          SortByFixedCol = False
          Filename = 'TBKStringGrid.txt'
          BlanksDown = True
          Encryption = True
          OnUserChangedCell = StringGridStateLinkUserChangedCell
        end
        object PanelChainRightBottom: TPanel
          Left = 685
          Height = 117
          Top = 2
          Width = 144
          Align = alRight
          BevelInner = bvRaised
          BevelOuter = bvLowered
          ClientHeight = 117
          ClientWidth = 144
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 1
          object SpeedButtonInfo: TSpeedButton
            Left = 101
            Height = 32
            Hint = 'Info'
            Top = 73
            Width = 32
            Flat = True
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888800008888888444444888888800008888844444444448888800008888
              4446FF644444888800008884444FFFF64444488800008844444FF64844444488
              000088444446FF4444444488010184444444FF64444444480833844444446FF4
              444444480000844444444FF64444444800008444444846FF4444444800008444
              4446FFFF444444480000844444446FF644444448000088444444444444444488
              00008844444444664444448800008884444446FF6444488800008888444446FF
              6444888800008888844444664448888800008888888444444888888800008888
              88888888888888880000
            }
            OnClick = SpeedButtonInfoClick
            ShowHint = True
            ParentFont = False
            ParentShowHint = False
          end
          object ButtonLookInOOB: TButton
            Left = 50
            Height = 25
            Hint = 'Look in data file'
            Top = 0
            Width = 75
            Caption = 'I&n file'
            Enabled = False
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonLookInOOBClick
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object ButtonToChain: TButton
            Left = 50
            Height = 25
            Top = 44
            Width = 75
            Caption = '&To data'
            Enabled = False
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonToChainClick
            ParentFont = False
            TabOrder = 1
          end
          object ButtonTestChain: TButton
            Left = 18
            Height = 25
            Top = 80
            Width = 75
            Caption = 'Test'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonTestChainClick
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
        end
      end
      object PanelChainEditBig: TPanel
        Left = 0
        Height = 438
        Top = 13
        Width = 831
        Align = alClient
        ClientHeight = 438
        ClientWidth = 831
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 1
        object ScrollBoxCAD: TScrollBox
          Left = 1
          Height = 436
          Top = 1
          Width = 667
          HorzScrollBar.Page = 11
          VertScrollBar.Page = 11
          Align = alClient
          ClientHeight = 432
          ClientWidth = 663
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 1
          object Image: TImage
            Left = 1
            Height = 10
            Top = 1
            Width = 10
            OnMouseDown = ImageMouseDown
            OnMouseUp = ImageMouseUp
          end
        end
        object PanelChainRight: TScrollBox
          Left = 668
          Height = 436
          Top = 1
          Width = 162
          HorzScrollBar.Page = 156
          VertScrollBar.Page = 425
          Align = alRight
          BorderStyle = bsNone
          ClientHeight = 436
          ClientWidth = 162
          Color = clBtnFace
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object ButtonRepaint: TButton
            Left = 39
            Height = 25
            Top = 400
            Width = 75
            Caption = 'Repaint'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonRepaintClick
            ParentFont = False
            TabOrder = 2
          end
          object ButtonClearChainEditor: TButton
            Left = 8
            Height = 25
            Top = 64
            Width = 72
            Caption = 'Clear'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonClearChainEditorClick
            ParentFont = False
            TabOrder = 3
          end
          object ProgressBarLoad: TProgressBar
            Left = 112
            Height = 57
            Top = 32
            Width = 13
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Max = 64
            Orientation = pbVertical
            ParentFont = False
            TabOrder = 5
          end
          object GroupBoxStates: TGroupBox
            Left = 2
            Height = 144
            Top = 92
            Width = 152
            Caption = '&States'
            ClientHeight = 126
            ClientWidth = 148
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 6
            object EditState: TEdit
              Left = 0
              Height = 21
              Top = 0
              Width = 105
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnKeyUp = EditStateKeyUp
              ParentFont = False
              TabOrder = 0
            end
            object CheckBoxBuildLinks: TCheckBox
              Left = 53
              Height = 17
              Top = 38
              Width = 71
              Caption = 'Build Links'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = CheckBoxBuildLinksClick
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
            object ButtonAddState: TButton
              Left = 1
              Height = 25
              Top = 24
              Width = 47
              Caption = 'Add'
              Enabled = False
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonAddStateClick
              ParentFont = False
              TabOrder = 6
            end
            object ButtonDeleteState: TButton
              Left = 85
              Height = 25
              Top = 92
              Width = 49
              Caption = 'Delete'
              Enabled = False
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonDeleteStateClick
              ParentFont = False
              TabOrder = 8
            end
            object ComboBoxStates: TComboBox
              Left = 1
              Height = 21
              Top = 94
              Width = 77
              DropDownCount = 13
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ItemHeight = 13
              OnChange = ComboBoxStatesChange
              ParentFont = False
              Style = csDropDownList
              TabOrder = 9
            end
            object CheckBoxCapture: TCheckBox
              Left = 1
              Height = 17
              Top = 58
              Width = 57
              Caption = 'Capture'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              State = cbChecked
              TabOrder = 3
            end
            object CheckBoxFission: TCheckBox
              Left = 1
              Height = 17
              Top = 74
              Width = 52
              Caption = 'Fission'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              State = cbChecked
              TabOrder = 4
            end
            object CheckBoxDecay: TCheckBox
              Left = 65
              Height = 17
              Top = 58
              Width = 51
              Caption = 'Decay'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              State = cbChecked
              TabOrder = 7
            end
            object CheckBoxThreshold: TCheckBox
              Left = 65
              Height = 17
              Top = 74
              Width = 67
              Caption = 'Threshold'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              State = cbChecked
              TabOrder = 5
            end
            object BitBtnEditAddStatesList: TBitBtn
              Left = 108
              Height = 21
              Hint = 'Edit...'
              Top = 0
              Width = 24
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777777777777777777777777777770077007700777777007700770
                0777777777777777777777777777777777777777777777777777777777777777
                7777777777777777777777777777777777777777777777777777777777777777
                7777777777777777777777777777777777777777777777777777
              }
              OnClick = BitBtnEditAddStatesListClick
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object GroupBoxLinks: TGroupBox
            Left = 4
            Height = 157
            Top = 240
            Width = 152
            Caption = '&Links'
            ClientHeight = 139
            ClientWidth = 148
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 7
            OnMouseUp = GroupBoxLinksMouseUp
            object LabelStart4Link: TLabel
              Left = 20
              Height = 13
              Top = 8
              Width = 22
              Caption = 'Start'
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object LabelEnd4Link: TLabel
              Left = 20
              Height = 13
              Top = 24
              Width = 19
              Caption = 'End'
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object ButtonAddLink: TButton
              Left = 32
              Height = 21
              Top = 48
              Width = 73
              Caption = 'Add'
              Enabled = False
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonAddLinkClick
              ParentFont = False
              TabOrder = 2
            end
            object ComboBoxLinks: TComboBox
              Left = 8
              Height = 21
              Top = 76
              Width = 129
              DropDownCount = 13
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ItemHeight = 13
              OnChange = ComboBoxLinksChange
              ParentFont = False
              Sorted = True
              Style = csDropDownList
              TabOrder = 3
            end
            object ButtonDeleteLink: TButton
              Left = 52
              Height = 25
              Top = 96
              Width = 43
              Caption = 'Delete'
              Enabled = False
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonDeleteLinkClick
              ParentFont = False
              TabOrder = 4
            end
            object EditLinkStart: TComboBox
              Left = 51
              Height = 21
              Top = 0
              Width = 88
              DropDownCount = 13
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ItemHeight = 13
              MaxLength = 13
              OnChange = EditLinkStartEndChange
              ParentFont = False
              TabOrder = 0
            end
            object EditLinkFinish: TComboBox
              Left = 51
              Height = 21
              Top = 20
              Width = 88
              DropDownCount = 13
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ItemHeight = 13
              MaxLength = 13
              OnChange = EditLinkStartEndChange
              ParentFont = False
              TabOrder = 1
            end
          end
          object ButtonSaveChain: TButton
            Left = 8
            Height = 25
            Top = 34
            Width = 72
            Caption = 'Save Chain'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonSaveChainClick
            ParentFont = False
            TabOrder = 4
          end
          object ButtonLoadChain: TButton
            Left = 8
            Height = 25
            Top = 4
            Width = 72
            Caption = 'Loa&d Chain'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonLoadChainClick
            ParentFont = False
            TabOrder = 0
          end
          object ButtonLoadDB: TButton
            Left = 88
            Height = 25
            Top = 3
            Width = 53
            Caption = 'Load D&B'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonLoadDBClick
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object TabSheetConditions: TTabSheet
      HelpContext = 40
      Caption = 'C&onditions'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ImageIndex = 1
      OnShow = TabSheetConditionsShow
      ParentFont = False
      object ScrollBoxConditions: TScrollBox
        Left = 0
        Height = 575
        Top = 0
        Width = 831
        HorzScrollBar.Page = 825
        VertScrollBar.Page = 518
        Align = alClient
        ClientHeight = 571
        ClientWidth = 827
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 0
        object PanelDepressionSSK: TPanel
          Left = 409
          Height = 571
          Top = 0
          Width = 418
          Align = alClient
          BevelOuter = bvNone
          ClientHeight = 571
          ClientWidth = 418
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 0
          object GroupBoxDepression: TGroupBox
            Left = 0
            Height = 53
            Top = 0
            Width = 418
            Align = alTop
            Caption = '&Depression'
            ClientHeight = 35
            ClientWidth = 414
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 0
            object LabelDepressionVolume: TLabel
              Left = 76
              Height = 13
              Top = 0
              Width = 76
              Caption = 'Volume, cub.cm'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object LabelDeplessionL: TLabel
              Left = 244
              Height = 13
              Top = 0
              Width = 34
              Caption = '<l>, cm'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object CheckBoxDepression: TCheckBox
              Left = 0
              Height = 17
              Top = 0
              Width = 61
              Caption = 'Consider'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = CheckBoxConsiderClick
              ParentFont = False
              TabOrder = 0
            end
            object EditDepressionVolume: TEdit
              Left = 64
              Height = 21
              Top = 0
              Width = 125
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 1
              Text = '1.0'
            end
            object EditDepressionL: TEdit
              Left = 208
              Height = 21
              Top = 0
              Width = 121
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 2
              Text = '1.0'
            end
          end
          object GroupBoxSSKinitial: TGroupBox
            Left = 0
            Height = 518
            Top = 53
            Width = 418
            Align = alClient
            Caption = '&Self-Shielding'
            ClientHeight = 500
            ClientWidth = 414
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 1
            object GroupBoxRAs: TGroupBox
              Left = 0
              Height = 184
              Top = 124
              Width = 414
              Align = alClient
              Caption = '&Res.absorbers'
              ClientHeight = 166
              ClientWidth = 410
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 4
              object PanelRAs: TPanel
                Left = 0
                Height = 42
                Top = 0
                Width = 410
                Align = alTop
                BevelOuter = bvNone
                ClientHeight = 42
                ClientWidth = 410
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 0
                object LabelRA_V: TLabel
                  Left = 6
                  Height = 13
                  Top = 0
                  Width = 7
                  Caption = 'V'
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  ParentColor = False
                  ParentFont = False
                end
                object LabelRA_M: TLabel
                  Left = 84
                  Height = 13
                  Top = 16
                  Width = 9
                  Caption = 'M'
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  ParentColor = False
                  ParentFont = False
                  Visible = False
                end
                object LabelNperCM3: TLabel
                  Left = 158
                  Height = 15
                  Top = 22
                  Width = 119
                  Caption = 'N - nuclei per cub.cm'
                  Font.CharSet = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object EditRA_V: TEdit
                  Left = 24
                  Height = 21
                  Top = 0
                  Width = 52
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  ParentFont = False
                  TabOrder = 0
                  Text = '20.0'
                end
                object EditRA_M: TEdit
                  Left = 100
                  Height = 21
                  Top = 11
                  Width = 52
                  Color = clMoneyGreen
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  ParentFont = False
                  TabOrder = 1
                  Text = '0.24e-3'
                  Visible = False
                end
                object ButtonLoadResPar: TButton
                  Left = 172
                  Height = 24
                  Top = 0
                  Width = 68
                  Caption = 'Load Res'
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  OnClick = ButtonLoadResParClick
                  ParentFont = False
                  TabOrder = 2
                end
                object ButtonRA_FillDefaults: TButton
                  Left = 332
                  Height = 24
                  Top = 0
                  Width = 68
                  Caption = 'Defaults'
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  OnClick = ButtonRA_FillDefaultsClick
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object StringGridRA_Rs: TStringGrid
                Left = 0
                Height = 124
                Top = 42
                Width = 410
                Align = alClient
                DefaultColWidth = 70
                DefaultRowHeight = 16
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
                ParentFont = False
                TabOrder = 1
                OnDblClick = StringGridRA_RsDblClick
                OnSelectCell = StringGridRA_RsSelectCell
                OnSetEditText = StringGridRA_RsSetEditText
              end
            end
            object GroupBoxMM: TGroupBox
              Left = 0
              Height = 103
              Top = 308
              Width = 414
              Align = alBottom
              Caption = 'Mi&xed moderators'
              ClientHeight = 85
              ClientWidth = 410
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 5
              object LabelMM_V: TLabel
                Left = 268
                Height = 13
                Top = 0
                Width = 7
                Caption = 'V'
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Transparent = False
                Visible = False
              end
              object LabelMM_M: TLabel
                Left = 268
                Height = 13
                Top = 20
                Width = 9
                Caption = 'M'
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Transparent = False
                Visible = False
              end
              object EditMM_V: TEdit
                Left = 278
                Height = 21
                Top = 0
                Width = 80
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 1
                Text = '0'
                Visible = False
              end
              object EditMM_M: TEdit
                Left = 278
                Height = 21
                Top = 16
                Width = 80
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 2
                Text = '0'
                Visible = False
              end
              object ButtonSaveMM: TButton
                Left = 294
                Height = 24
                Top = 32
                Width = 80
                Caption = 'Save'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonSaveMMClick
                ParentFont = False
                TabOrder = 4
              end
              object ButtonLoadMM: TButton
                Left = 292
                Height = 24
                Top = 0
                Width = 80
                Caption = 'Load'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonLoadMMClick
                ParentFont = False
                TabOrder = 3
              end
              object StringGridMM: TBKStringGrid
                Left = 0
                Height = 85
                Top = 0
                Width = 251
                Align = alLeft
                ColCount = 3
                DefaultColWidth = 80
                DefaultRowHeight = 16
                FixedCols = 0
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                ParentFont = False
                RowCount = 2
                TabOrder = 0
                OnKeyUp = StringGridMMKeyUp
                CaseSensitive = False
                SortByFixedCol = False
                Filename = 'TBKStringGrid.txt'
                BlanksDown = True
                Encryption = True
              end
            end
            object GroupBoxOM: TGroupBox
              Left = 0
              Height = 89
              Top = 411
              Width = 414
              Align = alBottom
              Caption = 'Ou&ter Moderator'
              ClientHeight = 71
              ClientWidth = 410
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 6
              object LabelOM_V: TLabel
                Left = 48
                Height = 13
                Top = 25
                Width = 7
                Caption = 'V'
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Transparent = False
                Visible = False
              end
              object LabelOM_M: TLabel
                Left = 264
                Height = 13
                Top = 0
                Width = 9
                Caption = 'M'
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Transparent = False
                Visible = False
              end
              object StringGridOM: TBKStringGrid
                Left = 0
                Height = 42
                Top = 0
                Width = 251
                ColCount = 3
                DefaultColWidth = 80
                DefaultRowHeight = 16
                FixedCols = 0
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                ParentFont = False
                RowCount = 2
                TabOrder = 0
                CaseSensitive = False
                SortByFixedCol = False
                Filename = 'TBKStringGrid.txt'
                BlanksDown = True
                Encryption = True
              end
              object EditOM_V: TEdit
                Left = 62
                Height = 21
                Top = 20
                Width = 80
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 1
                Text = '30000'
                Visible = False
              end
              object EditOM_M: TEdit
                Left = 262
                Height = 21
                Top = 7
                Width = 80
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 2
                Text = '0'
                Visible = False
              end
              object ButtonLoadOM: TButton
                Left = 292
                Height = 24
                Top = 0
                Width = 80
                Caption = 'Load'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonLoadOMClick
                ParentFont = False
                TabOrder = 3
              end
              object ButtonSaveOM: TButton
                Left = 292
                Height = 24
                Top = 40
                Width = 80
                Caption = 'Save'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonSaveOMClick
                ParentFont = False
                TabOrder = 4
              end
            end
            object PaneRA_Top: TPanel
              Left = 0
              Height = 22
              Top = 0
              Width = 414
              Align = alTop
              BevelOuter = bvNone
              ClientHeight = 22
              ClientWidth = 414
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 7
              object CheckBoxSSKconsider: TCheckBox
                Left = 4
                Height = 17
                Top = 2
                Width = 61
                Caption = 'Consider'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = CheckBoxConsiderClick
                ParentFont = False
                TabOrder = 0
              end
            end
            object PanelBlock: TGroupBox
              Left = 0
              Height = 102
              Top = 22
              Width = 414
              Align = alTop
              Caption = '&Block properties'
              ClientHeight = 84
              ClientWidth = 410
              Color = clBtnFace
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 3
              object LabelVblock: TLabel
                Left = 256
                Height = 13
                Top = 12
                Width = 36
                Alignment = taRightJustify
                Caption = 'V block'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Visible = False
              end
              object LabelSkin_V: TLabel
                Left = 256
                Height = 13
                Top = 0
                Width = 29
                Alignment = taRightJustify
                Caption = 'V skin'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
              end
              object LabelBlock_M: TLabel
                Left = 170
                Height = 13
                Top = 48
                Width = 38
                Alignment = taRightJustify
                Caption = 'M block'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Visible = False
              end
              object LabelSkin_M: TLabel
                Left = 326
                Height = 13
                Top = 36
                Width = 31
                Alignment = taRightJustify
                Caption = 'M skin'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
                Visible = False
              end
              object LabelLmean4SSK: TLabel
                Left = 4
                Height = 13
                Top = 44
                Width = 34
                Caption = '<l>, cm'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
              end
              object LabelTemperature4SSK: TLabel
                Left = 104
                Height = 13
                Top = 44
                Width = 20
                Alignment = taRightJustify
                Caption = 'T, K'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
              end
              object LabelUnits_MV: TLabel
                Left = 112
                Height = 15
                Top = 0
                Width = 66
                Caption = 'V in cub.cm'
                Font.CharSet = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object RadioGroupCellType: TRadioGroup
                Left = 0
                Height = 33
                Top = 0
                Width = 257
                AutoFill = True
                Caption = 'Ce&ll'
                ChildSizing.LeftRightSpacing = 6
                ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
                ChildSizing.EnlargeVertical = crsHomogenousChildResize
                ChildSizing.ShrinkHorizontal = crsScaleChilds
                ChildSizing.ShrinkVertical = crsScaleChilds
                ChildSizing.Layout = cclLeftToRightThenTopToBottom
                ChildSizing.ControlsPerLine = 3
                ClientHeight = 15
                ClientWidth = 253
                Columns = 3
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ItemIndex = 0
                Items.Strings = (
                  'No'
                  'Sq'
                  'Hex'
                )
                OnClick = RadioGroupCellTypeClick
                ParentFont = False
                TabOrder = 0
              end
              object EditTemperature: TEdit
                Left = 128
                Height = 21
                Top = 40
                Width = 37
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 2
                Text = '320'
              end
              object EditBlock_V: TEdit
                Left = 292
                Height = 21
                Top = 8
                Width = 48
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 5
                Text = '250'
                Visible = False
              end
              object EditSkin_V: TEdit
                Left = 288
                Height = 21
                Top = 0
                Width = 48
                Color = clWhite
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 3
                Text = '0'
              end
              object EditBlock_M: TEdit
                Left = 272
                Height = 21
                Top = 32
                Width = 48
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 4
                Text = '270'
                Visible = False
              end
              object EditSkin_M: TEdit
                Left = 360
                Height = 21
                Top = 32
                Width = 48
                Color = clMoneyGreen
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 6
                Text = '0,0012345'
                Visible = False
              end
              object Editl_mean: TEdit
                Left = 44
                Height = 21
                Top = 40
                Width = 57
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentFont = False
                TabOrder = 1
                Text = '1'
              end
              object ButtonSaveSSKconditions: TButton
                Left = 208
                Height = 24
                Top = 57
                Width = 75
                Caption = 'Save'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = ButtonSaveSSKconditionsClick
                ParentFont = False
                TabOrder = 7
              end
              object ButtonLoadSSKconditions: TButton
                Left = 296
                Height = 24
                Top = 56
                Width = 75
                Caption = 'Load'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                OnClick = ButtonLoadSSKconditionsClick
                ParentFont = False
                TabOrder = 8
              end
            end
            object ButtonBuildResTable: TButton
              Left = 114
              Height = 24
              Top = 0
              Width = 75
              Caption = 'Build Table'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonBuildResTableClick
              ParentFont = False
              TabOrder = 0
            end
            object ButtonLoadResTable: TButton
              Left = 226
              Height = 24
              Top = 0
              Width = 75
              Caption = 'Load Table'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonLoadResTableClick
              ParentFont = False
              TabOrder = 1
            end
            object ButtonSaveResTable: TButton
              Left = 316
              Height = 24
              Top = 0
              Width = 75
              Caption = 'Save Table'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = ButtonSaveResTableClick
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object GroupBoxInitialValues: TGroupBox
          Left = 0
          Height = 571
          Top = 0
          Width = 409
          Align = alLeft
          Caption = 'Initial &Values                     |   Tolerances  '
          ClientHeight = 553
          ClientWidth = 405
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 1
          object GroupBoxInitialWhat: TGroupBox
            Left = 267
            Height = 553
            Top = 0
            Width = 139
            Align = alLeft
            Caption = '&Mass, g '
            ClientHeight = 535
            ClientWidth = 135
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 1
            object RadioButtonNuclei: TRadioButton
              Left = 48
              Height = 17
              Top = 0
              Width = 50
              Caption = 'Nuclei'
              Color = clMoneyGreen
              Enabled = False
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = RadioButtonMassesNucleiClick
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              Visible = False
            end
            object RadioButtonMasses: TRadioButton
              Left = 4
              Height = 17
              Top = 0
              Width = 68
              Caption = 'Masses, g'
              Checked = True
              Color = clMoneyGreen
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnClick = RadioButtonMassesNucleiClick
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              TabStop = True
              Visible = False
            end
            object StringGridMasses: TStringGrid
              Left = 0
              Height = 384
              Top = 0
              Width = 135
              ColCount = 2
              DefaultRowHeight = 16
              FixedRows = 0
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
              ParentFont = False
              RowCount = 2
              TabOrder = 2
              OnKeyDown = StringGridMassesKeyDown
              OnSetEditText = StringGridMassesSetEditText
            end
            object PanelMassButtons: TPanel
              Left = 0
              Height = 110
              Top = 372
              Width = 135
              BevelOuter = bvNone
              ClientHeight = 110
              ClientWidth = 135
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              TabOrder = 3
              object LabelTotalMass: TLabel
                Left = 4
                Height = 13
                Top = 0
                Width = 64
                Caption = 'Total Mass, g'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                ParentFont = False
              end
              object EditTotalMass: TEdit
                Left = 4
                Height = 21
                Top = 10
                Width = 105
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnChange = EditTotalMassChange
                ParentFont = False
                TabOrder = 0
              end
              object ButtonLoadInitials: TButton
                Left = 20
                Height = 25
                Top = 38
                Width = 75
                Caption = 'Load'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonLoadInitialsClick
                ParentFont = False
                TabOrder = 1
              end
              object ButtonSaveInitials: TButton
                Left = 20
                Height = 25
                Top = 70
                Width = 75
                Caption = 'Save'
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                OnClick = ButtonSaveInitialsClick
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          object StringGridInitialValues: TBKStringGrid
            Left = 0
            Height = 553
            Top = 0
            Width = 267
            Align = alLeft
            ColCount = 4
            DefaultColWidth = 60
            DefaultRowHeight = 16
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            RowCount = 2
            TabOrder = 0
            OnKeyDown = StringGridInitialValuesKeyDown
            OnSetEditText = StringGridInitialValuesSetEditText
            CaseSensitive = False
            SortByFixedCol = False
            Filename = 'TBKStringGrid.txt'
            BlanksDown = True
            Encryption = True
            OnUserChangedCell = StringGridInitialValuesUserChangedCell
          end
          object CheckBoxPercent: TCheckBox
            Left = 78
            Height = 17
            Top = -16
            Width = 28
            Caption = '&%'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object TabSheetTimes: TTabSheet
      HelpContext = 50
      Caption = 'T&imes'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ImageIndex = 2
      ParentFont = False
      object LabelTimesFileName: TLabel
        Left = 0
        Height = 13
        Top = 0
        Width = 831
        Align = alTop
        Caption = 'File: '
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentColor = False
        ParentFont = False
      end
      object ScrollBoxTimes: TScrollBox
        Left = 0
        Height = 526
        Top = 13
        Width = 831
        HorzScrollBar.Increment = 18
        HorzScrollBar.Page = 188
        HorzScrollBar.Smooth = True
        VertScrollBar.Page = 200
        Align = alClient
        ClientHeight = 522
        ClientWidth = 827
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Tag = 1
          Left = 0
          Height = 522
          Top = 0
          Width = 188
          Align = alLeft
          Caption = 'Time Intervals 1'
          ClientHeight = 504
          ClientWidth = 184
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 0
          object Memo1: TMemo
            Tag = 1
            Left = 0
            Height = 343
            Top = 0
            Width = 184
            Align = alClient
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnChange = TimesChange
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object Panel1: TPanel
            Left = 0
            Height = 161
            Top = 343
            Width = 184
            Align = alBottom
            BevelOuter = bvNone
            ClientHeight = 161
            ClientWidth = 184
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 1
            object Label1: TLabel
              Left = 68
              Height = 13
              Top = 24
              Width = 30
              Caption = 'Fluxes'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object Label2: TLabel
              Tag = 1
              Left = 2
              Height = 13
              Top = 48
              Width = 13
              Caption = 'Th'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object Label3: TLabel
              Tag = 2
              Left = 2
              Height = 13
              Top = 72
              Width = 19
              Caption = 'Res'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object Label4: TLabel
              Tag = 3
              Left = 2
              Height = 13
              Top = 96
              Width = 20
              Caption = 'Fast'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object Label5: TLabel
              Tag = 4
              Left = 8
              Height = 13
              Top = 124
              Width = 38
              Caption = 'Nominal'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
            object CheckBox1: TCheckBox
              Tag = 1
              Left = 20
              Height = 17
              Top = 4
              Width = 42
              Caption = 'Tn.g'
              Checked = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object Edit4: TEdit
              Tag = 4
              Left = 64
              Height = 21
              Top = 0
              Width = 57
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnChange = TimesChange
              ParentFont = False
              TabOrder = 1
              Text = '300.0'
            end
            object Edit1: TEdit
              Tag = 1
              Left = 24
              Height = 21
              Top = 40
              Width = 140
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnChange = TimesChange
              ParentFont = False
              TabOrder = 2
              Text = '0'
            end
            object Edit2: TEdit
              Tag = 2
              Left = 24
              Height = 21
              Top = 64
              Width = 140
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnChange = TimesChange
              ParentFont = False
              TabOrder = 3
              Text = '0'
            end
            object Edit3: TEdit
              Tag = 3
              Left = 24
              Height = 21
              Top = 88
              Width = 140
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnChange = TimesChange
              ParentFont = False
              TabOrder = 4
              Text = '0'
            end
            object Edit5: TEdit
              Tag = 5
              Left = 52
              Height = 21
              Top = 116
              Width = 73
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              OnChange = TimesChange
              ParentFont = False
              TabOrder = 5
              Text = '100'
            end
            object Label6: TLabel
              Tag = 8
              Left = 0
              Height = 13
              Hint = 'Days     Power*Days'
              Top = 148
              Width = 184
              Align = alBottom
              Alignment = taCenter
              Caption = 'd Wd'
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              ParentColor = False
              ParentFont = False
            end
          end
        end
      end
      object PanelTimesCommon: TPanel
        Left = 0
        Height = 36
        Top = 539
        Width = 831
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        ClientHeight = 36
        ClientWidth = 831
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 1
        OnResize = PanelTimesCommonResize
        object BitBtnApplyAllTimes: TBitBtn
          Tag = 1
          Left = 4
          Height = 25
          Top = 4
          Width = 57
          Caption = 'Apply'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Kind = bkYes
          NumGlyphs = 2
          OnClick = BitBtnApplyAllTimesClick
          ParentFont = False
          TabOrder = 0
        end
        object ButtonTimesFileSave: TButton
          Left = 744
          Height = 25
          Top = 4
          Width = 75
          Caption = 'Save'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = ButtonTimesFileSaveClick
          ParentFont = False
          TabOrder = 2
        end
        object ButtonTimesFileOpen: TButton
          Left = 656
          Height = 25
          Top = 4
          Width = 75
          Caption = 'Load'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = ButtonTimesFileOpenClick
          ParentFont = False
          TabOrder = 1
        end
        object CheckBoxTimesAutoApply: TCheckBox
          Left = 68
          Height = 17
          Top = 8
          Width = 68
          Caption = 'AutoApply'
          Checked = True
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
        object EditSumTotalTimeRO: TEdit
          Left = 148
          Height = 21
          Top = 4
          Width = 120
          Alignment = taCenter
          Color = 14540253
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '0 d'
        end
        object EditSumTotalPowerMultTimeRO: TEdit
          Left = 280
          Height = 21
          Top = 4
          Width = 120
          Alignment = taCenter
          Color = 14540253
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '0 Wd'
        end
        object BitBtnNewTimeInterval: TButton
          Tag = 3
          Left = 440
          Height = 25
          Top = 4
          Width = 59
          Caption = 'New'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = BitBtnNewTimeIntervalClick
          ParentFont = False
          TabOrder = 6
        end
        object BitBtnDelLastTimeInterval: TButton
          Tag = 2
          Left = 520
          Height = 25
          Top = 4
          Width = 57
          Caption = 'Del'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = BitBtnDelLastTimeIntervalClick
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object TabSheetCalc: TTabSheet
      HelpContext = 60
      Caption = '&Calc'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ImageIndex = 3
      OnShow = TabSheetCalcShow
      ParentFont = False
      object SplitterCalcPage: TSplitter
        Left = 575
        Height = 514
        Top = 61
        Width = 5
        Align = alRight
        ResizeAnchor = akRight
      end
      object PanelCalcRight: TPanel
        Left = 580
        Height = 514
        Top = 61
        Width = 251
        Align = alRight
        BevelInner = bvRaised
        BevelOuter = bvLowered
        ClientHeight = 514
        ClientWidth = 251
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 2
        object LabelSolverStdOut: TLabel
          Left = 2
          Height = 13
          Top = 2
          Width = 247
          Align = alTop
          Caption = '  Solver messages'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentColor = False
          ParentFont = False
        end
        object MemoCalculatorStdOut: TMemo
          Left = 2
          Height = 497
          Top = 15
          Width = 247
          Align = alClient
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
      object StringGridResults: TStringGrid
        Left = 0
        Height = 514
        Top = 61
        Width = 575
        Align = alClient
        Color = clSilver
        ColCount = 3
        DefaultRowHeight = 21
        FixedCols = 2
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
        ParentFont = False
        RowCount = 2
        TabOrder = 1
      end
      object PanelCalcTop: TScrollBox
        Left = 0
        Height = 61
        Top = 0
        Width = 831
        HorzScrollBar.Page = 733
        VertScrollBar.Page = 45
        Align = alTop
        BorderStyle = bsNone
        ClientHeight = 61
        ClientWidth = 831
        Color = clBtnFace
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object ProgressBarCalc: TProgressBar
          Left = 532
          Height = 15
          Top = 5
          Width = 201
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Max = 128
          ParentFont = False
          TabOrder = 0
        end
        object CheckBoxDLL: TCheckBox
          Left = 376
          Height = 17
          Top = 11
          Width = 40
          Caption = '&DLL'
          Checked = True
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
        object CheckBoxJAC: TCheckBox
          Left = 376
          Height = 17
          Top = 28
          Width = 39
          Caption = '&JAC'
          Checked = True
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          State = cbChecked
          TabOrder = 2
        end
        object ButtonCalc: TButton
          Left = 424
          Height = 25
          Top = 12
          Width = 101
          Caption = 'C&alc'
          Default = True
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = ButtonCalcClick
          ParentFont = False
          TabOrder = 4
        end
        object ButtonAbortCalc: TButton
          Left = 553
          Height = 21
          Hint = 'Abort Calc'
          Top = 24
          Width = 167
          Caption = 'A&bort Calc'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = ButtonAbortCalcClick
          ParentFont = False
          TabOrder = 5
        end
        object RadioGroupSolver: TGroupBox
          Left = 4
          Height = 41
          Top = 4
          Width = 369
          Caption = 'Solver'
          ClientHeight = 23
          ClientWidth = 365
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 3
          OnClick = RadioGroupSolverClick
          object RadioButtonVODE: TRadioButton
            Left = 96
            Height = 17
            Top = 0
            Width = 50
            Caption = '&VODE'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = RadioGroupSolverClick
            ParentFont = False
            TabOrder = 0
          end
          object RadioButtonLSODA: TRadioButton
            Left = 4
            Height = 17
            Top = 0
            Width = 56
            Caption = '&LSODA'
            Checked = True
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = RadioGroupSolverClick
            ParentFont = False
            TabOrder = 1
            TabStop = True
          end
          object RadioButtonRADAU: TRadioButton
            Left = 189
            Height = 17
            Top = 0
            Width = 58
            Caption = '&RADAU'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = RadioGroupSolverClick
            ParentFont = False
            TabOrder = 2
          end
          object RadioButtonMEBDF: TRadioButton
            Left = 284
            Height = 17
            Top = 0
            Width = 57
            Caption = '&MEBDF'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = RadioGroupSolverClick
            ParentFont = False
            TabOrder = 3
          end
        end
      end
    end
    object TabSheetAnswers: TTabSheet
      HelpContext = 70
      Caption = 'Ans&wers'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ImageIndex = 4
      OnShow = TabSheetAnswersShow
      ParentFont = False
      object StringGridAnswers: TStringGrid
        Left = 0
        Height = 575
        Top = 0
        Width = 644
        Align = alClient
        ColCount = 3
        DefaultRowHeight = 21
        FixedCols = 2
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
        ParentFont = False
        RowCount = 2
        TabOrder = 0
        OnKeyDown = StringGridAnswersKeyDown
        OnSelectCell = StringGridAnswersSelectCell
      end
      object ScrollBox1: TScrollBox
        Left = 644
        Height = 575
        Top = 0
        Width = 187
        HorzScrollBar.Page = 163
        VertScrollBar.Page = 441
        Align = alRight
        ClientHeight = 571
        ClientWidth = 183
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 1
        object PanelAnswers: TPanel
          Left = 0
          Height = 441
          Top = 0
          Width = 163
          BevelOuter = bvNone
          ClientHeight = 441
          ClientWidth = 163
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          TabOrder = 0
          object RadioGroupAnswers: TRadioGroup
            Left = 0
            Height = 303
            Top = 22
            Width = 149
            AutoFill = True
            Caption = 'Wh&at'
            ChildSizing.LeftRightSpacing = 6
            ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
            ChildSizing.EnlargeVertical = crsHomogenousChildResize
            ChildSizing.ShrinkHorizontal = crsScaleChilds
            ChildSizing.ShrinkVertical = crsScaleChilds
            ChildSizing.Layout = cclLeftToRightThenTopToBottom
            ChildSizing.ControlsPerLine = 1
            ClientHeight = 285
            ClientWidth = 145
            Enabled = False
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ItemIndex = 1
            Items.Strings = (
              'Nuclei'
              'Isotope mass, g'
              'Element mass, g'
              'Activity A'
              'Activity B-'
              'Activity EC'
              'Activity IT'
              'Activity Total'
              'Activity per element g'
              'Isotopes parts'
              'Mass yield'
              'Depression'
              'SSK (slow !!!)'
              'SSK approx.'
              'Fiss.engr.(MeV,on 200)'
            )
            OnClick = RadioGroupAnswersClick
            ParentFont = False
            TabOrder = 1
          end
          object RadioGroupActivityUnits: TRadioGroup
            Left = 0
            Height = 45
            Top = 332
            Width = 149
            AutoFill = True
            Caption = 'Activity &Units'
            ChildSizing.LeftRightSpacing = 6
            ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
            ChildSizing.EnlargeVertical = crsHomogenousChildResize
            ChildSizing.ShrinkHorizontal = crsScaleChilds
            ChildSizing.ShrinkVertical = crsScaleChilds
            ChildSizing.Layout = cclLeftToRightThenTopToBottom
            ChildSizing.ControlsPerLine = 2
            ClientHeight = 27
            ClientWidth = 145
            Columns = 2
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ItemIndex = 1
            Items.Strings = (
              'Bq'
              'Ci'
            )
            OnClick = RadioGroupActivityUnitsClick
            ParentFont = False
            TabOrder = 2
          end
          object CheckBoxAnswersA_Z: TCheckBox
            Left = 4
            Height = 20
            Top = 0
            Width = 51
            Caption = 'A...&Z'
            Checked = True
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            OnClick = CheckBoxAnswersA_ZClick
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object CheckBoxSaveSlow: TCheckBox
            Left = 20
            Height = 17
            Top = 412
            Width = 102
            Caption = 'Sa&ve slow results'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TabOrder = 3
          end
          object ButtonExcelExport: TButton
            Left = 12
            Height = 25
            Top = 380
            Width = 75
            Caption = 'E&xcel'
            Enabled = False
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            OnClick = ButtonExcelExportClick
            ParentFont = False
            TabOrder = 4
          end
        end
      end
    end
    object TabSheetSpectra: TTabSheet
      Caption = 'Spectra'
      ClientHeight = 575
      ClientWidth = 831
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      ImageIndex = 5
      OnShow = TabSheetSpectraShow
      ParentFont = False
      object StringGridGroupUpKeV: TStringGrid
        Left = 0
        Height = 575
        Top = 0
        Width = 157
        Align = alLeft
        ColCount = 2
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        RowCount = 200
        TabOrder = 0
      end
      object PanelSpectraBottom: TPanel
        Left = 704
        Height = 575
        Top = 0
        Width = 127
        Align = alRight
        BevelInner = bvRaised
        ClientHeight = 575
        ClientWidth = 127
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 1
        object ButtonCalcSpectra: TButton
          Left = 20
          Height = 25
          Top = 488
          Width = 75
          Caption = 'Calc'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = ButtonCalcSpectraClick
          ParentFont = False
          TabOrder = 0
        end
        object RadioGroupSpectraWhat: TRadioGroup
          Left = 0
          Height = 257
          Top = 0
          Width = 85
          AutoFill = True
          Caption = 'What'
          ChildSizing.LeftRightSpacing = 6
          ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
          ChildSizing.EnlargeVertical = crsHomogenousChildResize
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 1
          ClientHeight = 239
          ClientWidth = 81
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ItemIndex = 0
          Items.Strings = (
            'Eg'
            'EgNg'
            'Eb'
            'EbNb'
            'Ea'
            'EaNa'
          )
          OnClick = RadioGroupSpectraWhatClick
          ParentFont = False
          TabOrder = 1
        end
        object CheckBoxSpectraPercent: TCheckBox
          Left = 8
          Height = 17
          Top = 263
          Width = 28
          Caption = '%'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = CheckBoxSpectraPercentClick
          ParentFont = False
          TabOrder = 2
        end
        object CheckBoxSpectraGasFPonly: TCheckBox
          Left = 8
          Height = 17
          Top = 296
          Width = 90
          Caption = 'Gas FProducts'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          OnClick = CheckBoxSpectraGasFPonlyClick
          ParentFont = False
          TabOrder = 3
        end
      end
      object StringGridSpectra: TStringGrid
        Left = 157
        Height = 575
        Top = 0
        Width = 547
        Align = alClient
        FixedCols = 2
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '.chn'
    Filter = 'Chain Files (*.chn)|*.chn|Power graphic files (*.pow)|*.pow|Mixed Moderators (*.mm)|*.mm|Outer Moderators (*.om)|*.om|Res Table (*.rtb)|*.rtb|Initial Values file (*.ivl)|*.ivl|Excel Files   (*.xls)|*.xls|Self-shielding Conditions (*.ssc)|*.ssc|All Files   (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 76
    Top = 152
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.chn'
    Filter = 'Chain Files (*.chn)|*.chn|Power graphic files (*.pow)|*.pow|Mixed Moderators (*.mm)|*.mm|Outer Moderators (*.om)|*.om|Res Table (*.rtb)|*.rtb|Initial Values file (*.ivl)|*.ivl|Excel Files  (*.xls)|*.xls|Self-shielding Conditions (*.ssc)|*.ssc|All Files  (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 80
    Top = 76
  end
  object PopupMenuLink: TPopupMenu
    AutoPopup = False
    Left = 208
    Top = 336
    object LinkPopupItemUseIndYieldForLink: TMenuItem
      Caption = 'Use- &IndYield'
      OnClick = LinkPopupItemUseIndYieldForLinkClick
    end
    object LinkPopupItemUseCumYieldForLink: TMenuItem
      Caption = 'Use- &CumYields'
      OnClick = LinkPopupItemUseCumYieldForLinkClick
    end
  end
  object PopupMenuCAD: TPopupMenu
    AutoPopup = False
    OnPopup = PopupMenuCADPopup
    Left = 208
    Top = 224
    object ItemShowHalfLifes: TMenuItem
      Caption = 'Show &half-life'
      OnClick = ItemShowHalfLifesClick
    end
    object ItemShowCrossSections: TMenuItem
      Caption = 'Show cro&ss-sections'
      OnClick = ItemShowCrossSectionsClick
    end
    object ItemShowRI: TMenuItem
      Caption = 'Show &RI'
      OnClick = ItemShowRIClick
    end
    object CopyStateNames: TMenuItem
      Caption = 'Copy state &names'
      OnClick = CopyStateNamesClick
    end
    object ItemHidefissionlinks: TMenuItem
      Caption = 'Hide &fission links'
      OnClick = ItemHidefissionlinksClick
    end
    object ItemUseIndYieldsForState: TMenuItem
      Caption = 'Use &IndYields'
      OnClick = ItemUseIndYieldsForStateClick
    end
    object ItemUseCumYieldsForState: TMenuItem
      Caption = 'Use &CumYields'
      OnClick = ItemUseCumYieldsForStateClick
    end
    object ItemZoomIn: TMenuItem
      Caption = '&Zoom In'
      OnClick = ItemZoomInClick
    end
    object ItemZoomOut: TMenuItem
      Caption = 'Zoom &Out'
      OnClick = ItemZoomOutClick
    end
    object ItemSaveCADimage: TMenuItem
      Caption = 'Save i&mage'
      OnClick = ItemSaveCADimageClick
    end
    object ItemAddStateChilds: TMenuItem
      Caption = 'Add &descendants'
      OnClick = ItemAddStateChildsClick
    end
  end
  object SaveCadImageDialog: TSavePictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|Portable Network Graphic (*.png)|*.png|All files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofPathMustExist, ofEnableSizing, ofViewDetail, ofAutoPreview]
    Left = 208
    Top = 276
  end
end

object _FormMemoOKCancel: T_FormMemoOKCancel
  Left = 340
  Height = 277
  Top = 209
  Width = 869
  BorderStyle = bsDialog
  Caption = '_FormMemoOKCancel'
  ClientHeight = 277
  ClientWidth = 869
  KeyPreview = True
  OnKeyDown = FormKeyDown
  LCLVersion = '7.4'
  object GroupBox1: TGroupBox
    Left = 0
    Height = 117
    Top = 0
    Width = 869
    Align = alTop
    Caption = 'States in the chain'
    ClientHeight = 99
    ClientWidth = 865
    TabOrder = 0
    object MemoInChain: TMemo
      Left = 0
      Height = 99
      Top = 0
      Width = 865
      Align = alClient
      Color = clSilver
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Height = 160
    Top = 117
    Width = 869
    Align = alClient
    Caption = 'States to Add'
    ClientHeight = 142
    ClientWidth = 865
    TabOrder = 1
    object Memo: TMemo
      Left = 0
      Height = 109
      Top = 0
      Width = 865
      Align = alClient
      Lines.Strings = (
        ''
      )
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object PanelControls: TPanel
      Left = 0
      Height = 33
      Top = 81
      Width = 865
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ClientHeight = 33
      ClientWidth = 865
      TabOrder = 1
      object BitBtnOK: TButton
        Left = 12
        Height = 25
        Top = 0
        Width = 75
        Caption = '&Add'
        Default = True
        DoubleBuffered = True
        ModalResult = 1
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object BitBtnCancel: TButton
        Left = 180
        Height = 25
        Top = 0
        Width = 75
        Cancel = True
        Caption = 'Cancel'
        DoubleBuffered = True
        ModalResult = 2
        ParentDoubleBuffered = False
        TabOrder = 1
      end
    end
  end
end

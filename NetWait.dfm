object NetWaitNotifyForm: TNetWaitNotifyForm
  Left = 197
  Top = 103
  Width = 488
  Height = 183
  Caption = 'Сетевая задержка...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabInfo: TLabel
    Left = 13
    Top = 16
    Width = 453
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ошибка при открытии файла C:\GAME.EXE для чтения'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel
    Left = 41
    Top = 56
    Width = 398
    Height = 16
    Caption = 'Возможно, этот файл заблокирован другим пользователем.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object AddInfoLab: TLabel
    Left = 36
    Top = 76
    Width = 409
    Height = 16
    Caption = 'Ждите, пока блокировка будет снята или отмените операцию.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnRetry: TButton
    Left = 28
    Top = 116
    Width = 137
    Height = 23
    Caption = 'Попробовать еще раз'
    Default = True
    TabOrder = 0
    OnClick = btnRetryClick
  end
  object btnIgnore: TButton
    Left = 315
    Top = 116
    Width = 138
    Height = 23
    Caption = 'Игнорировать ошибку'
    TabOrder = 2
    OnClick = btnIgnoreClick
  end
  object btnCancel: TButton
    Left = 175
    Top = 116
    Width = 130
    Height = 23
    Cancel = True
    Caption = 'Отменить операцию'
    TabOrder = 1
    OnClick = btnCancelClick
  end
end

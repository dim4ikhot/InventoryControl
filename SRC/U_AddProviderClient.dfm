object F_AddClientProvider: TF_AddClientProvider
  Left = 723
  Top = 289
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '
  ClientHeight = 175
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel2: TRzLabel
    Left = 8
    Top = 48
    Width = 40
    Height = 15
    Caption = #1040#1076#1088#1077#1089#1089':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel3: TRzLabel
    Left = 8
    Top = 88
    Width = 68
    Height = 15
    Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ProviderClientName: TRzEdit
    Left = 8
    Top = 24
    Width = 185
    Height = 21
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 0
  end
  object ProviderClientAdress: TRzEdit
    Left = 8
    Top = 64
    Width = 185
    Height = 21
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 1
  end
  object ProviderClientPhone: TRzEdit
    Left = 8
    Top = 104
    Width = 185
    Height = 21
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 8
    Top = 136
    Width = 89
    HotTrack = True
    TabOrder = 3
    Kind = bkOK
  end
  object RzBitBtn2: TRzBitBtn
    Left = 104
    Top = 136
    Width = 89
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 4
    Kind = bkCancel
  end
end

object F_BaseConnection: TF_BaseConnection
  Left = 503
  Top = 215
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
  ClientHeight = 254
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    497
    254)
  PixelsPerInch = 96
  TextHeight = 13
  object SetConnection: TRzBitBtn
    Left = 336
    Top = 225
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 0
    Kind = bkOK
  end
  object CancelConnect: TRzBitBtn
    Left = 416
    Top = 225
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 1
    Kind = bkCancel
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 497
    Height = 218
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object RzGroupBox2: TRzGroupBox
      Left = 8
      Top = 16
      Width = 481
      Height = 57
      Caption = #1051#1086#1082#1072#1083#1100#1085#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077':'
      TabOrder = 0
      object RzEdit1: TRzEdit
        Left = 8
        Top = 16
        Width = 433
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
      end
      object BrowsePathToBase: TRzButton
        Left = 440
        Top = 16
        Width = 35
        Height = 23
        Caption = '...'
        HotTrack = True
        TabOrder = 1
      end
    end
    object RzGroupBox3: TRzGroupBox
      Left = 8
      Top = 80
      Width = 481
      Height = 113
      Caption = #1057#1077#1090#1077#1074#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077':'
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 16
        Width = 43
        Height = 15
        Caption = #1057#1077#1088#1074#1077#1088':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 64
        Width = 68
        Height = 15
        Caption = #1055#1091#1090#1100' '#1082' '#1073#1072#1079#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzEdit2: TRzEdit
        Left = 8
        Top = 32
        Width = 145
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
      end
      object RzEdit3: TRzEdit
        Left = 8
        Top = 80
        Width = 433
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameVisible = True
        ParentFont = False
        TabOrder = 1
      end
      object ServerBasePath: TRzButton
        Left = 440
        Top = 80
        Width = 35
        Height = 23
        Caption = '...'
        HotTrack = True
        TabOrder = 2
      end
      object BrowseServer: TRzButton
        Left = 152
        Top = 32
        Width = 27
        Height = 23
        Caption = '...'
        HotTrack = True
        TabOrder = 3
      end
    end
  end
  object doNotAskAnyMore: TRzCheckBox
    Left = 8
    Top = 197
    Width = 481
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1053#1077' '#1089#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1073#1086#1083#1100#1096#1077
    HotTrack = True
    State = cbUnchecked
    TabOrder = 3
  end
  object BrowseDBOP: TOpenDialog
    Title = #1055#1091#1090#1100' '#1082' '#1073#1072#1079#1077
    Left = 448
    Top = 64
  end
end

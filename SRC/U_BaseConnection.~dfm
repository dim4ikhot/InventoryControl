object F_BaseConnection: TF_BaseConnection
  Left = 503
  Top = 215
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
  ClientHeight = 291
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
    291)
  PixelsPerInch = 96
  TextHeight = 13
  object SetConnection: TRzBitBtn
    Left = 336
    Top = 262
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 0
    Kind = bkOK
  end
  object CancelConnect: TRzBitBtn
    Left = 416
    Top = 262
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
    Height = 255
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    DesignSize = (
      497
      255)
    object gbLocalConnection: TRzGroupBox
      Left = 24
      Top = 32
      Width = 465
      Height = 57
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 0
      DesignSize = (
        465
        57)
      object localBasePath: TRzEdit
        Left = 8
        Top = 16
        Width = 417
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Left = 424
        Top = 16
        Width = 35
        Height = 23
        Anchors = [akRight, akBottom]
        Caption = '...'
        HotTrack = True
        TabOrder = 1
        OnClick = BrowsePathToBaseClick
      end
    end
    object gbRemoteConnection: TRzGroupBox
      Left = 24
      Top = 112
      Width = 465
      Height = 113
      Anchors = [akLeft, akRight, akBottom]
      Enabled = False
      TabOrder = 1
      DesignSize = (
        465
        113)
      object RzLabel1: TRzLabel
        Left = 8
        Top = 16
        Width = 43
        Height = 15
        Anchors = [akTop]
        Caption = #1057#1077#1088#1074#1077#1088':'
        Enabled = False
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
        Anchors = [akTop]
        Caption = #1055#1091#1090#1100' '#1082' '#1073#1072#1079#1077':'
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditServerNAme: TRzEdit
        Left = 8
        Top = 32
        Width = 145
        Height = 23
        Anchors = [akTop]
        Enabled = False
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
      object remoteBasePath: TRzEdit
        Left = 8
        Top = 80
        Width = 417
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        Enabled = False
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
        Left = 424
        Top = 80
        Width = 35
        Height = 23
        Anchors = [akRight, akBottom]
        Caption = '...'
        Enabled = False
        HotTrack = True
        TabOrder = 2
        OnClick = ServerBasePathClick
      end
      object BrowseServer: TRzButton
        Left = 148
        Top = 32
        Width = 27
        Height = 23
        Anchors = [akTop]
        Caption = '...'
        Enabled = False
        HotTrack = True
        TabOrder = 3
        OnClick = BrowseServerClick
      end
    end
    object rbLocalConection: TRzRadioButton
      Left = 8
      Top = 16
      Width = 115
      Height = 17
      Caption = #1051#1086#1082#1072#1083#1100#1085#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077':'
      Checked = True
      HotTrack = True
      TabOrder = 2
      TabStop = True
      OnClick = rbLocalConectionClick
    end
    object rbRemoteConnection: TRzRadioButton
      Left = 8
      Top = 96
      Width = 257
      Height = 17
      Caption = #1057#1077#1090#1077#1074#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 3
      OnClick = rbRemoteConnectionClick
    end
  end
  object doNotAskAnyMore: TRzCheckBox
    Left = 8
    Top = 234
    Width = 481
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1053#1077' '#1089#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1073#1086#1083#1100#1096#1077
    HotTrack = True
    State = cbUnchecked
    TabOrder = 3
  end
  object ODLocal: TRzOpenDialog
    FrameVisible = True
    HotTrack = True
    Left = 456
    Top = 72
  end
  object FDHost: TRzSelectFolderDialog
    Title = #1042#1099#1073#1086#1088' '#1089#1077#1088#1074#1077#1088#1072
    FrameVisible = True
    HotTrack = True
    Left = 456
    Top = 136
  end
end

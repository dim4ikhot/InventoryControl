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
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    497
    291)
  PixelsPerInch = 96
  TextHeight = 14
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
      Width = 289
      Height = 17
      Caption = #1051#1086#1082#1072#1083#1100#1085#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077':'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
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
  object LangConnect: TsiLangLinked
    Version = '6.5.4.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDispatcher = DM.ProgramLangs
    LangDelim = 1
    LangNames.Strings = (
      'RUS'
      'UKR')
    Language = 'RUS'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 152
    Top = 232
    TranslationData = {
      737443617074696F6E730D0A54465F42617365436F6E6E656374696F6E01CFEE
      E4EAEBFEF7E5EDE8E501CFB3E4EAEBFEF7E5EDEDFF010D0A536574436F6E6E65
      6374696F6E014F4B01010D0A43616E63656C436F6E6E65637401CEF2ECE5EDE0
      01C2B3E4ECB3EDE0010D0A42726F77736550617468546F42617365012E2E2E01
      010D0A527A4C6162656C3101D1E5F0E2E5F03A01D1E5F0E2E5F03A010D0A527A
      4C6162656C3201CFF3F2FC20EA20E1E0E7E53A01D8EBFFF520E4EE20E1E0E7E8
      3A010D0A5365727665724261736550617468012E2E2E01010D0A42726F777365
      536572766572012E2E2E01010D0A72624C6F63616C436F6E656374696F6E01CB
      EEEAE0EBFCEDEEE520EFEEE4EAEBFEF7E5EDE8E53A01CBEEEAE0EBFCEDE520EF
      B3E4EAEBFEF7E5EDEDFF3A010D0A726252656D6F7465436F6E6E656374696F6E
      01D1E5F2E5E2EEE520EFEEE4EAEBFEF7E5EDE8E53A01CCE5F0E5E6E5E2E520EF
      B3E4EAEBFEF7E5EDEDFF3A010D0A646F4E6F7441736B416E794D6F726501CDE5
      20F1EFF0E0F8E8E2E0F2FC20E1EEEBFCF8E501CDE520EFE8F2E0F2E820E1B3EB
      FCF8E5010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A
      7374466F6E74730D0A54465F42617365436F6E6E656374696F6E0154696D6573
      204E657720526F6D616E0154696D6573204E657720526F6D616E010D0A6C6F63
      616C42617365506174680154696D6573204E657720526F6D616E0154696D6573
      204E657720526F6D616E010D0A527A4C6162656C310154696D6573204E657720
      526F6D616E0154696D6573204E657720526F6D616E010D0A527A4C6162656C32
      0154696D6573204E657720526F6D616E0154696D6573204E657720526F6D616E
      010D0A456469745365727665724E416D650154696D6573204E657720526F6D61
      6E0154696D6573204E657720526F6D616E010D0A72656D6F7465426173655061
      74680154696D6573204E657720526F6D616E0154696D6573204E657720526F6D
      616E010D0A726252656D6F7465436F6E6E656374696F6E0154696D6573204E65
      7720526F6D616E0154696D6573204E657720526F6D616E010D0A72624C6F6361
      6C436F6E656374696F6E0154696D6573204E657720526F6D616E01010D0A7374
      4D756C74694C696E65730D0A7374537472696E67730D0A73744F746865725374
      72696E67730D0A4644486F73742E5469746C6501C2FBE1EEF020F1E5F0E2E5F0
      E001C2E8E1B3F020F1E5F0E2E5F0F3010D0A7374436F6C6C656374696F6E730D
      0A737443686172536574730D0A54465F42617365436F6E6E656374696F6E0144
      454641554C545F4348415253455401010D0A6C6F63616C426173655061746801
      5255535349414E5F4348415253455401010D0A527A4C6162656C310152555353
      49414E5F4348415253455401010D0A527A4C6162656C32015255535349414E5F
      4348415253455401010D0A456469745365727665724E416D6501525553534941
      4E5F4348415253455401010D0A72656D6F746542617365506174680152555353
      49414E5F4348415253455401010D0A726252656D6F7465436F6E6E656374696F
      6E015255535349414E5F4348415253455401010D0A72624C6F63616C436F6E65
      6374696F6E0144454641554C545F4348415253455401010D0A}
  end
end

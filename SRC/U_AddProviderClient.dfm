object F_AddClientProvider: TF_AddClientProvider
  Left = 521
  Top = 217
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 230
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  DesignSize = (
    329
    230)
  PixelsPerInch = 96
  TextHeight = 14
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
    Top = 53
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
    Top = 140
    Width = 72
    Height = 15
    Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel4: TRzLabel
    Left = 208
    Top = 8
    Width = 76
    Height = 15
    Caption = #1050#1086#1076' '#1045#1043#1056#1055#1054#1059':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel5: TRzLabel
    Left = 8
    Top = 96
    Width = 32
    Height = 15
    Caption = #1041#1072#1085#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel6: TRzLabel
    Left = 168
    Top = 96
    Width = 91
    Height = 15
    Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
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
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 0
  end
  object ProviderClientAdress: TRzEdit
    Left = 8
    Top = 70
    Width = 313
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 1
  end
  object ProviderClientPhone: TRzEdit
    Left = 8
    Top = 156
    Width = 145
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 167
    Top = 195
    Width = 73
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 3
    OnClick = RzBitBtn1Click
    Kind = bkOK
  end
  object RzBitBtn2: TRzBitBtn
    Left = 247
    Top = 195
    Width = 73
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 4
    Kind = bkCancel
  end
  object ProviderClientEDRPOU: TRzEdit
    Left = 208
    Top = 24
    Width = 113
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 5
    OnKeyPress = ProviderClientEDRPOUKeyPress
  end
  object ProviderClientBank: TRzEdit
    Left = 8
    Top = 112
    Width = 145
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 6
  end
  object ProviderClientAccmun: TRzEdit
    Left = 168
    Top = 112
    Width = 153
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 7
  end
  object LangClientProv: TsiLangLinked
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
    Left = 32
    Top = 208
    TranslationData = {
      737443617074696F6E730D0A54465F416464436C69656E7450726F7669646572
      01C4EEE1E0E2E8F2FC01C4EEE4E0F2E8010D0A527A4C6162656C3101CDE0E8EC
      E5EDEEE2E0EDE8E53A01CDE0E9ECE5EDF3E2E0EDEDFF3A010D0A527A4C616265
      6C3201C0E4F0E5F1F13A01C0E4F0E5F1E03A010D0A527A4C6162656C3301B920
      F2E5EBE5F4EEEDE03A01B920F2E5EBE5F4EEEDF33A010D0A527A42697442746E
      31014F4B01010D0A527A42697442746E3201CEF2ECE5EDE001C2B3E4ECB3EDE0
      010D0A527A4C6162656C3401CAEEE420C5C3D0CFCED33A01CAEEE420AAC4D0CF
      CED33A010D0A527A4C6162656C3501C1E0EDEA3A01010D0A527A4C6162656C36
      01D0E0F1F7E5F2EDFBE920F1F7E5F23A01D0EEE7F0E0F5F3EDEAEEE2E8E920F0
      E0F5F3EDEEEA3A010D0A737448696E74730D0A7374446973706C61794C616265
      6C730D0A7374466F6E74730D0A54465F416464436C69656E7450726F76696465
      720154696D6573204E657720526F6D616E0154696D6573204E657720526F6D61
      6E010D0A527A4C6162656C310154696D6573204E657720526F6D616E0154696D
      6573204E657720526F6D616E010D0A527A4C6162656C320154696D6573204E65
      7720526F6D616E0154696D6573204E657720526F6D616E010D0A527A4C616265
      6C330154696D6573204E657720526F6D616E0154696D6573204E657720526F6D
      616E010D0A527A4C6162656C340154696D6573204E657720526F6D616E015469
      6D6573204E657720526F6D616E010D0A527A4C6162656C350154696D6573204E
      657720526F6D616E0154696D6573204E657720526F6D616E010D0A527A4C6162
      656C360154696D6573204E657720526F6D616E0154696D6573204E657720526F
      6D616E010D0A73744D756C74694C696E65730D0A7374537472696E67730D0A73
      744F74686572537472696E67730D0A7374436F6C6C656374696F6E730D0A7374
      43686172536574730D0A54465F416464436C69656E7450726F76696465720144
      454641554C545F434841525345540144454641554C545F43484152534554010D
      0A527A4C6162656C31015255535349414E5F434841525345540144454641554C
      545F43484152534554010D0A527A4C6162656C32015255535349414E5F434841
      525345540144454641554C545F43484152534554010D0A527A4C6162656C3301
      5255535349414E5F434841525345540144454641554C545F4348415253455401
      0D0A527A4C6162656C340144454641554C545F43484152534554014445464155
      4C545F43484152534554010D0A527A4C6162656C350144454641554C545F4348
      41525345540144454641554C545F43484152534554010D0A527A4C6162656C36
      0144454641554C545F434841525345540144454641554C545F43484152534554
      010D0A}
  end
end

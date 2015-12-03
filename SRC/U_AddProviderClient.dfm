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
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
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
    Top = 64
    Width = 185
    Height = 22
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 1
  end
  object ProviderClientPhone: TRzEdit
    Left = 8
    Top = 104
    Width = 185
    Height = 22
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
    OnClick = RzBitBtn1Click
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
    Left = 144
    Top = 8
    TranslationData = {
      737443617074696F6E730D0A54465F416464436C69656E7450726F7669646572
      01C4EEE1E0E2E8F2FC2001C4EEE4E0F2E8010D0A527A4C6162656C3101CDE0E8
      ECE5EDEEE2E0EDE8E53A01CDE0E9ECE5EDF3E2E0EDEDFF3A010D0A527A4C6162
      656C3201C0E4F0E5F1F13A01C0E4F0E5F1E03A010D0A527A4C6162656C3301B9
      20F2E5EBE5F4EEEDE03A01B920F2E5EBE5F4EEEDF33A010D0A527A4269744274
      6E31014F4B01010D0A527A42697442746E3201CEF2ECE5EDE001C2B3E4ECB3ED
      E0010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A7374
      466F6E74730D0A54465F416464436C69656E7450726F76696465720154696D65
      73204E657720526F6D616E01010D0A527A4C6162656C310154696D6573204E65
      7720526F6D616E01010D0A527A4C6162656C320154696D6573204E657720526F
      6D616E01010D0A527A4C6162656C330154696D6573204E657720526F6D616E01
      010D0A73744D756C74694C696E65730D0A7374537472696E67730D0A73744F74
      686572537472696E67730D0A7374436F6C6C656374696F6E730D0A7374436861
      72536574730D0A54465F416464436C69656E7450726F76696465720144454641
      554C545F4348415253455401010D0A527A4C6162656C31015255535349414E5F
      4348415253455401010D0A527A4C6162656C32015255535349414E5F43484152
      53455401010D0A527A4C6162656C33015255535349414E5F4348415253455401
      010D0A}
  end
end

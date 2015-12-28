object F_Autority: TF_Autority
  Left = 630
  Top = 241
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 133
  ClientWidth = 170
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    170
    133)
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 103
    Height = 15
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 9
    Top = 54
    Width = 41
    Height = 15
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzBitBtn1: TRzBitBtn
    Left = 8
    Top = 101
    Width = 73
    Anchors = [akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    TabOrder = 2
    OnClick = RzBitBtn1Click
    Kind = bkOK
  end
  object RzBitBtn2: TRzBitBtn
    Left = 88
    Top = 101
    Width = 73
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    TabOrder = 3
    OnClick = RzBitBtn2Click
    Kind = bkCancel
  end
  object Edit1: TRzEdit
    Left = 8
    Top = 24
    Width = 153
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TRzEdit
    Left = 8
    Top = 72
    Width = 153
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object Lang_Autority: TsiLangLinked
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
    Left = 72
    Top = 24
    TranslationData = {
      737443617074696F6E730D0A54465F4175746F7269747901C0E2F2EEF0E8E7E0
      F6E8FF01C0E2F2EEF0E8E7E0F6B3FF010D0A4C6162656C3101C8ECFF20EFEEEB
      FCE7EEE2E0F2E5EBFF01B2EC27FF20EAEEF0E8F1F2F3E2E0F7E0010D0A4C6162
      656C3201CFE0F0EEEBFC01CFE0F0EEEBFC010D0A527A42697442746E31014F4B
      01010D0A527A42697442746E3201CEF2ECE5EDE001C2B3E4ECB3EDE0010D0A73
      7448696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E7473
      0D0A54465F4175746F726974790154696D6573204E657720526F6D616E015469
      6D6573204E657720526F6D616E010D0A4C6162656C310154696D6573204E6577
      20526F6D616E0154696D6573204E657720526F6D616E010D0A4C6162656C3201
      54696D6573204E657720526F6D616E0154696D6573204E657720526F6D616E01
      0D0A527A42697442746E310154696D6573204E657720526F6D616E0154696D65
      73204E657720526F6D616E010D0A527A42697442746E320154696D6573204E65
      7720526F6D616E0154696D6573204E657720526F6D616E010D0A456469743101
      54696D6573204E657720526F6D616E0154696D6573204E657720526F6D616E01
      0D0A45646974320154696D6573204E657720526F6D616E0154696D6573204E65
      7720526F6D616E010D0A73744D756C74694C696E65730D0A7374537472696E67
      730D0A4572726F725469746C6501CEF8E8E1EAE02E2E2E01CFEEECE8EBEAE02E
      2E2E010D0A4572726F7243617074696F6E01C8ECFF20EFEEEBFCE7EEE2E0F2E5
      EBFF20E8EBE820EFE0F0EEEBFC20E2E2E5E4E5EDFB20EDE5EFF0E8E2E8EBFCED
      EE2E01B2EC27FF20EAEEF0E8F1F2F3E2E0F7E020E0E1EE20EFE0F0EEEBFC20E2
      E2E5E4E5EDEE20EDE5EAEEF0E5EAF2EDEE2E010D0A73744F7468657253747269
      6E67730D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A
      54465F4175746F726974790144454641554C545F434841525345540144454641
      554C545F43484152534554010D0A4C6162656C31015255535349414E5F434841
      525345540144454641554C545F43484152534554010D0A4C6162656C32015255
      535349414E5F434841525345540144454641554C545F43484152534554010D0A
      527A42697442746E31015255535349414E5F434841525345540144454641554C
      545F43484152534554010D0A527A42697442746E32015255535349414E5F4348
      41525345540144454641554C545F43484152534554010D0A4564697431015255
      535349414E5F434841525345540144454641554C545F43484152534554010D0A
      4564697432015255535349414E5F434841525345540144454641554C545F4348
      4152534554010D0A}
  end
end

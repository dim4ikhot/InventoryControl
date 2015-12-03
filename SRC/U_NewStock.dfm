object addNewStock: TaddNewStock
  Left = 524
  Top = 248
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1089#1082#1083#1072#1076
  ClientHeight = 239
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    226
    239)
  PixelsPerInch = 96
  TextHeight = 14
  object RzLabel1: TRzLabel
    Left = 8
    Top = 8
    Width = 125
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1082#1083#1072#1076#1072':'
    Font.Charset = DEFAULT_CHARSET
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
    Width = 93
    Height = 15
    Caption = #8470' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
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
    Width = 118
    Height = 15
    Caption = #1044#1086#1074#1077#1088#1080#1090#1077#1083#1100#1085#1086#1077' '#1083#1080#1094#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel4: TRzLabel
    Left = 8
    Top = 128
    Width = 68
    Height = 15
    Caption = #1050#1086#1076' '#1045#1043#1056#1055#1054':'
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
    Top = 168
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
  object cancelStock: TRzBitBtn
    Left = 144
    Top = 211
    Width = 73
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 0
    Kind = bkCancel
  end
  object applyStock: TRzBitBtn
    Left = 64
    Top = 211
    Width = 73
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 1
    OnClick = applyStockClick
    Kind = bkOK
  end
  object RzEdit1: TRzEdit
    Left = 8
    Top = 24
    Width = 209
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 2
  end
  object RzEdit2: TRzEdit
    Left = 8
    Top = 64
    Width = 209
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 3
  end
  object RzEdit3: TRzEdit
    Left = 8
    Top = 104
    Width = 209
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 4
  end
  object RzEdit4: TRzEdit
    Left = 8
    Top = 144
    Width = 209
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 5
  end
  object RzEdit5: TRzEdit
    Left = 8
    Top = 184
    Width = 209
    Height = 23
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 6
  end
  object LangNewStock: TsiLangLinked
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
    Left = 168
    TranslationData = {
      737443617074696F6E730D0A546164644E657753746F636B01CDEEE2FBE920F1
      EAEBE0E401CDEEE2E8E920F1EAEBE0E4010D0A527A4C6162656C3101CDE0E8EC
      E5EDEEE2E0EDE8E520F1EAEBE0E4E03A01CDE0E9ECE5EDF3E2E0EDEDFF20F1EA
      EBE0E4F33A010D0A527A4C6162656C3201B920E4EEE2E5F0E5EDEDEEF1F2E83A
      01B920E4EEF0F3F7E5EDEDEEF1F2B33A010D0A527A4C6162656C3301C4EEE2E5
      F0E8F2E5EBFCEDEEE520EBE8F6EE3A01C4EEF0F3F7E5EDE520EBE8F6E53A010D
      0A527A4C6162656C3401CAEEE420C5C3D0CFCE3A01CAEEE420AAC4D0CFCE3A01
      0D0A527A4C6162656C3501C1E0EDEA3A01C1E0EDEA3A010D0A63616E63656C53
      746F636B01CEF2ECE5EDE001C2B3E4ECB3EDE0010D0A6170706C7953746F636B
      014F4B01010D0A737448696E74730D0A7374446973706C61794C6162656C730D
      0A7374466F6E74730D0A546164644E657753746F636B0154696D6573204E6577
      20526F6D616E01010D0A527A4C6162656C310154696D6573204E657720526F6D
      616E01010D0A527A4C6162656C320154696D6573204E657720526F6D616E0101
      0D0A527A4C6162656C330154696D6573204E657720526F6D616E01010D0A527A
      4C6162656C340154696D6573204E657720526F6D616E01010D0A527A4C616265
      6C350154696D6573204E657720526F6D616E01010D0A527A4564697431015469
      6D6573204E657720526F6D616E01010D0A527A45646974320154696D6573204E
      657720526F6D616E01010D0A527A45646974330154696D6573204E657720526F
      6D616E01010D0A527A45646974340154696D6573204E657720526F6D616E0101
      0D0A527A45646974350154696D6573204E657720526F6D616E01010D0A73744D
      756C74694C696E65730D0A7374537472696E67730D0A73744F74686572537472
      696E67730D0A7374436F6C6C656374696F6E730D0A737443686172536574730D
      0A546164644E657753746F636B0144454641554C545F4348415253455401010D
      0A527A4C6162656C310144454641554C545F4348415253455401010D0A527A4C
      6162656C320144454641554C545F4348415253455401010D0A527A4C6162656C
      330144454641554C545F4348415253455401010D0A527A4C6162656C34014445
      4641554C545F4348415253455401010D0A527A4C6162656C350144454641554C
      545F4348415253455401010D0A527A4564697431015255535349414E5F434841
      5253455401010D0A527A4564697432015255535349414E5F4348415253455401
      010D0A527A4564697433015255535349414E5F4348415253455401010D0A527A
      4564697434015255535349414E5F4348415253455401010D0A527A4564697435
      015255535349414E5F4348415253455401010D0A}
  end
end

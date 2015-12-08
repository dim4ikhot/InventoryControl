object addNewStock: TaddNewStock
  Left = 524
  Top = 248
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1089#1082#1083#1072#1076
  ClientHeight = 201
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
    201)
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
    Width = 35
    Height = 15
    Caption = #1040#1076#1088#1077#1089':'
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
    Width = 72
    Height = 15
    Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072':'
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
    Width = 49
    Height = 15
    Caption = #1053#1044#1057'(%):'
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
    Top = 173
    Width = 73
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 0
    Kind = bkCancel
  end
  object applyStock: TRzBitBtn
    Left = 64
    Top = 173
    Width = 73
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 1
    OnClick = applyStockClick
    Kind = bkOK
  end
  object StockName: TRzEdit
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
  object StockAddr: TRzEdit
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
  object StockPhone: TRzEdit
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
  object StockNds: TRzSpinEdit
    Left = 8
    Top = 144
    Width = 81
    Height = 23
    Decimals = 2
    FlatButtons = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FrameHotTrack = True
    FrameVisible = True
    ParentFont = False
    TabOrder = 5
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
      EBE0E4F33A010D0A527A4C6162656C3201C0E4F0E5F13A01C0E4F0E5F1E03A01
      0D0A527A4C6162656C3301B920F2E5EBE5F4EEEDE03A01B920F2E5EBE5F4EEED
      F33A010D0A527A4C6162656C3401CDC4D12825293A01CDC4D12825293A010D0A
      63616E63656C53746F636B01CEF2ECE5EDE001C2B3E4ECB3EDE0010D0A617070
      6C7953746F636B014F4B01010D0A737448696E74730D0A7374446973706C6179
      4C6162656C730D0A7374466F6E74730D0A546164644E657753746F636B015469
      6D6573204E657720526F6D616E01010D0A527A4C6162656C310154696D657320
      4E657720526F6D616E01010D0A527A4C6162656C320154696D6573204E657720
      526F6D616E01010D0A527A4C6162656C330154696D6573204E657720526F6D61
      6E01010D0A527A4C6162656C340154696D6573204E657720526F6D616E01010D
      0A53746F636B4E616D650154696D6573204E657720526F6D616E01010D0A5374
      6F636B416464720154696D6573204E657720526F6D616E01010D0A53746F636B
      50686F6E650154696D6573204E657720526F6D616E01010D0A53746F636B4E64
      730154696D6573204E657720526F6D616E01010D0A73744D756C74694C696E65
      730D0A7374537472696E67730D0A73744F74686572537472696E67730D0A7374
      436F6C6C656374696F6E730D0A737443686172536574730D0A546164644E6577
      53746F636B0144454641554C545F434841525345540144454641554C545F4348
      4152534554010D0A527A4C6162656C310144454641554C545F43484152534554
      0144454641554C545F43484152534554010D0A527A4C6162656C320144454641
      554C545F434841525345540144454641554C545F43484152534554010D0A527A
      4C6162656C330144454641554C545F434841525345540144454641554C545F43
      484152534554010D0A527A4C6162656C340144454641554C545F434841525345
      540144454641554C545F43484152534554010D0A53746F636B4E616D65015255
      535349414E5F434841525345540144454641554C545F43484152534554010D0A
      53746F636B41646472015255535349414E5F434841525345540144454641554C
      545F43484152534554010D0A53746F636B50686F6E65015255535349414E5F43
      4841525345540144454641554C545F43484152534554010D0A53746F636B4E64
      730144454641554C545F434841525345540144454641554C545F434841525345
      54010D0A}
  end
end

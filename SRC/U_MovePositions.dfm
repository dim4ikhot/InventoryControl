object F_MovePosition: TF_MovePosition
  Left = 367
  Top = 225
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
  ClientHeight = 317
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    680
    317)
  PixelsPerInch = 96
  TextHeight = 14
  object GridMovePositions: TDBGridEh
    Left = 0
    Top = 0
    Width = 681
    Height = 249
    AutoFitColWidths = True
    DataSource = SourceMovePositions
    DynProps = <>
    Flat = True
    FrozenCols = 1
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDrawColumnCell = GridMovePositionsDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Checkboxes = False
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'moveName'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 182
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'moveCode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        Width = 86
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'moveCount'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 71
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'moveMeasured'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'movePrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 75
      end
      item
        Alignment = taLeftJustify
        DynProps = <>
        EditButtons = <>
        FieldName = 'MoveStock'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 107
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object CancelMove: TRzBitBtn
    Left = 600
    Top = 288
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 1
    Kind = bkCancel
  end
  object ApplyMove: TRzBitBtn
    Left = 520
    Top = 288
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 2
    OnClick = ApplyMoveClick
    Kind = bkOK
  end
  object RzBitBtn1: TRzBitBtn
    Left = 0
    Top = 256
    Width = 169
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    HotTrack = True
    TabOrder = 3
    ImageIndex = 2
    Images = F_Main.ProjIcon
  end
  object LangMove: TsiLangLinked
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
    Left = 208
    Top = 256
    TranslationData = {
      737443617074696F6E730D0A54465F4D6F7665506F736974696F6E01CFE5F0E5
      ECE5F9E5EDE8E501CFE5F0E5ECB3F9E5EDEDFF010D0A43616E63656C4D6F7665
      01CEF2ECE5EDE001C2B3E4ECB3EDE0010D0A4170706C794D6F7665014F4B0101
      0D0A527A42697442746E3101D1F4EEF0ECE8F0EEE2E0F2FC20EDE0EAEBE0E4ED
      F3FE01D1F4EEF0ECF3E2E0F2E820EDE0EAEBE0E4EDF3010D0A737448696E7473
      0D0A7374446973706C61794C6162656C730D0A6D744D6F766550726F64756374
      736D6F76654E616D65016D6F76654E616D6501010D0A6D744D6F766550726F64
      756374736D6F7665436F756E74016D6F7665436F756E7401010D0A6D744D6F76
      6550726F64756374736D6F76654D65617375726564016D6F76654D6561737572
      656401010D0A6D744D6F766550726F64756374736D6F76655072696365016D6F
      7665507269636501010D0A6D744D6F766550726F64756374734D6F766553746F
      636B014D6F766553746F636B01010D0A6D744D6F766550726F64756374736D6F
      7665436F6465016D6F7665436F646501010D0A7374466F6E74730D0A54465F4D
      6F7665506F736974696F6E0154696D6573204E657720526F6D616E01010D0A73
      744D756C74694C696E65730D0A7374537472696E67730D0A73744F7468657253
      7472696E67730D0A6D744D6F766550726F64756374732E56657273696F6E0135
      2E3030206265746101010D0A7374436F6C6C656374696F6E730D0A477269644D
      6F7665506F736974696F6E732E436F6C756D6E735B305D2E5469746C652E4361
      7074696F6E01B901010D0A477269644D6F7665506F736974696F6E732E436F6C
      756D6E735B315D2E5469746C652E43617074696F6E01CDE0ECE5EDEEE2E0EDE8
      E501CDE0E9ECE5EDF3E2E0EDEDFF010D0A477269644D6F7665506F736974696F
      6E732E436F6C756D6E735B325D2E5469746C652E43617074696F6E01CAEEE420
      F2EEE2E0F0E001CAEEE420F2EEE2E0F0F3010D0A477269644D6F7665506F7369
      74696F6E732E436F6C756D6E735B335D2E5469746C652E43617074696F6E01CA
      EEEB2DE2EE01CAB3EBFC2DF1F2FC010D0A477269644D6F7665506F736974696F
      6E732E436F6C756D6E735B345D2E5469746C652E43617074696F6E01C5E42E20
      E8E7EC2E01CEE42E20E2E8EC2E010D0A477269644D6F7665506F736974696F6E
      732E436F6C756D6E735B355D2E5469746C652E43617074696F6E01D1F2EEE8EC
      EEF1F2FC01C2E0F0F2B3F1F2FC010D0A477269644D6F7665506F736974696F6E
      732E436F6C756D6E735B365D2E5469746C652E43617074696F6E01D1EAEBE0E4
      01D1EAEBE0E4010D0A737443686172536574730D0A54465F4D6F7665506F7369
      74696F6E0144454641554C545F434841525345540144454641554C545F434841
      52534554010D0A}
  end
  object mtMoveProducts: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'moveName'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'moveCount'
        DataType = ftInteger
      end
      item
        Name = 'moveMeasured'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'movePrice'
        DataType = ftFloat
      end
      item
        Name = 'moveStock'
        DataType = ftInteger
      end
      item
        Name = 'moveCode'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 304
    Top = 256
    object mtMoveProductsmoveName: TStringField
      FieldName = 'moveName'
      Size = 500
    end
    object mtMoveProductsmoveCount: TIntegerField
      FieldName = 'moveCount'
    end
    object mtMoveProductsmoveMeasured: TStringField
      FieldName = 'moveMeasured'
      Size = 100
    end
    object mtMoveProductsmovePrice: TFloatField
      FieldName = 'movePrice'
    end
    object mtMoveProductsMoveStock: TIntegerField
      FieldName = 'MoveStock'
    end
    object mtMoveProductsmoveCode: TStringField
      FieldName = 'moveCode'
      Size = 100
    end
  end
  object SourceMovePositions: TDataSource
    DataSet = mtMoveProducts
    Left = 408
    Top = 256
  end
end

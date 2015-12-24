object F_InvoiceIn: TF_InvoiceIn
  Left = 170
  Top = 210
  BorderStyle = bsDialog
  Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  ClientHeight = 496
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object GridInvoiceIn: TDBGridEh
    Left = 0
    Top = 0
    Width = 1028
    Height = 455
    Align = alClient
    AutoFitColWidths = True
    DataSource = DM.SourceAddProducts
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnCellClick = GridInvoiceInCellClick
    OnDrawColumnCell = GridInvoiceInDrawColumnCell
    OnKeyPress = GridInvoiceInKeyPress
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productName'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productCode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productCount'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 70
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productMeasured'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'.'#1080#1079#1084'.'
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productPrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 80
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productTotalPrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productProvider'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 110
      end
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1047#1072#1082#1072#1079#1095#1080#1082
        Visible = False
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productStock'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 110
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productEmploee'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        Width = 110
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 455
    Width = 1028
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 1
    object addInvoiceIn: TRzBitBtn
      Left = 16
      Top = 8
      Width = 89
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      HotTrack = True
      TabOrder = 0
      OnClick = addInvoiceInClick
      ImageIndex = 0
      Images = F_Main.ProjIcon
    end
    object CancelInvoiceIn: TRzBitBtn
      Left = 960
      Top = 8
      Width = 81
      Caption = #1054#1090#1084#1077#1085#1072
      HotTrack = True
      TabOrder = 1
      OnClick = CancelInvoiceInClick
      Kind = bkCancel
    end
    object ReportInvoice: TRzBitBtn
      Left = 120
      Top = 4
      Width = 129
      Height = 33
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      HotTrack = True
      TabOrder = 2
      OnClick = ReportInvoiceClick
      ImageIndex = 2
      Images = F_Main.ProjIcon
    end
  end
  object LangInvoices: TsiLangLinked
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
    Left = 88
    Top = 240
    TranslationData = {
      737443617074696F6E730D0A54465F496E766F696365496E01CFF0E8F5EEE4ED
      E0FF20EDE0EAEBE0E4EDE0FF01CFF0E8E1F3F2EAEEE2E020EDE0EAEBE0E4EDE0
      010D0A616464496E766F696365496E01C4EEE1E0E2E8F2FC01C4EEE4E0F2E801
      0D0A43616E63656C496E766F696365496E01CEF2ECE5EDE001C2B3E4ECB3EDE0
      010D0A5265706F7274496E766F69636501D1F4EEF0ECE8F0EEE2E0F2FC20EDE0
      EAEBE0E4EDF3FE01D1F4EEF0ECF3E2E0F2E820EDE0EAEBE0E4EDF3010D0A7374
      48696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D
      0A54465F496E766F696365496E0154696D6573204E657720526F6D616E015469
      6D6573204E657720526F6D616E010D0A73744D756C74694C696E65730D0A7374
      537472696E67730D0A73744F74686572537472696E67730D0A7374436F6C6C65
      6374696F6E730D0A47726964496E766F696365496E2E436F6C756D6E735B305D
      2E5469746C652E43617074696F6E01B901010D0A47726964496E766F69636549
      6E2E436F6C756D6E735B315D2E5469746C652E43617074696F6E01CDE0E8ECE5
      EDEEE2E0EDE8E501CDE0E9ECE5EDF3E2E0EDEDFF010D0A47726964496E766F69
      6365496E2E436F6C756D6E735B325D2E5469746C652E43617074696F6E01CAEE
      E420F2EEE2E0F0E001CAEEE420F2EEE2E0F0F3010D0A47726964496E766F6963
      65496E2E436F6C756D6E735B335D2E5469746C652E43617074696F6E01CAEEEB
      2DE2EE01CA2DF1F2FC010D0A47726964496E766F696365496E2E436F6C756D6E
      735B345D2E5469746C652E43617074696F6E01C5E42EE8E7EC2E01CEE42EE2E8
      EC2E010D0A47726964496E766F696365496E2E436F6C756D6E735B355D2E5469
      746C652E43617074696F6E01D6E5EDE001D6B3EDE0010D0A47726964496E766F
      696365496E2E436F6C756D6E735B365D2E5469746C652E43617074696F6E01CE
      E1F9E0FF20F6E5EDE001C7E0E3E0EBFCEDE020E2E0F0F2B3F1F2FC010D0A4772
      6964496E766F696365496E2E436F6C756D6E735B375D2E5469746C652E436170
      74696F6E01CFEEF1F2E0E2F9E8EA01CFEEF1F2E0F7E0EBFCEDE8EA010D0A4772
      6964496E766F696365496E2E436F6C756D6E735B385D2E5469746C652E436170
      74696F6E01C7E0EAE0E7F7E8EA01C7E0ECEEE2EDE8EA010D0A47726964496E76
      6F696365496E2E436F6C756D6E735B395D2E5469746C652E43617074696F6E01
      D1EAEBE0E401D1EAEBE0E4010D0A47726964496E766F696365496E2E436F6C75
      6D6E735B31305D2E5469746C652E43617074696F6E01D1EEF2F0F3E4EDE8EA01
      D1EFB3E2F0EEE1B3F2EDE8EA010D0A737443686172536574730D0A54465F496E
      766F696365496E0144454641554C545F434841525345540144454641554C545F
      43484152534554010D0A}
  end
end

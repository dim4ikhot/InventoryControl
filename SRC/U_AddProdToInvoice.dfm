object AddProdToInvoice: TAddProdToInvoice
  Left = 307
  Top = 118
  Width = 696
  Height = 480
  Caption = 'AddProdToInvoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 24
    Width = 649
    Height = 377
    AllowedOperations = []
    AllowedSelections = [gstRecordBookmarks, gstAll]
    DataSource = DM.DataSource_ProductsSelect
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    OnCellClick = DBGridEh1CellClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'MEASURE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1045#1076'.'#1080#1079#1084
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOLVO'
        Footers = <>
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE'
        Footers = <>
        Title.Caption = #1094#1077#1085#1072
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ARTICUL'
        Footers = <>
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Caption = #1082#1086#1076
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end

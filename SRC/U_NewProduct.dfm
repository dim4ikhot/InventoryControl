object F_NewProduct: TF_NewProduct
  Left = 442
  Top = 233
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
  ClientHeight = 399
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    700
    399)
  PixelsPerInch = 96
  TextHeight = 14
  object addProduct: TRzBitBtn
    Left = 520
    Top = 368
    Width = 83
    Anchors = [akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    TabOrder = 0
    Kind = bkOK
  end
  object cancelProduct: TRzBitBtn
    Left = 608
    Top = 368
    Width = 83
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    TabOrder = 1
    Kind = bkCancel
  end
  object GridNewProducts: TDBGridEh
    Left = 0
    Top = 104
    Width = 704
    Height = 249
    Anchors = [akLeft, akTop, akRight]
    AutoFitColWidths = True
    DataSource = DM.SourceAddProducts
    DynProps = <>
    FrozenCols = 1
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 2
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 36
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productName'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 168
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productCode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 73
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productCount'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 69
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productMeasured'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productPrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 72
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productTotalPrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1042#1089#1077#1075#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 71
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'productStock'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 107
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 700
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object RzLabel6: TRzLabel
      Left = 416
      Top = 58
      Width = 63
      Height = 15
      Caption = #1042#1089#1077#1075#1086'('#1075#1088#1085'.):'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzLabel5: TRzLabel
      Left = 600
      Top = 16
      Width = 61
      Height = 15
      Caption = #1062#1077#1085#1072'('#1075#1088#1085'.):'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel4: TRzLabel
      Left = 472
      Top = 16
      Width = 113
      Height = 15
      Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel3: TRzLabel
      Left = 368
      Top = 16
      Width = 64
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 264
      Top = 16
      Width = 63
      Height = 15
      Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel1: TRzLabel
      Left = 8
      Top = 16
      Width = 124
      Height = 15
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel7: TRzLabel
      Left = 8
      Top = 56
      Width = 39
      Height = 15
      Caption = #1057#1082#1083#1072#1076':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzLabel8: TRzLabel
      Left = 264
      Top = 58
      Width = 66
      Height = 15
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProductPrice: TRzSpinEdit
      Left = 600
      Top = 32
      Width = 97
      Height = 23
      AllowKeyEdit = True
      Decimals = 2
      Max = 10000000000.000000000000000000
      FlatButtons = True
      FrameVisible = True
      TabOrder = 0
    end
    object ProductCode: TRzEdit
      Left = 264
      Top = 32
      Width = 97
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 1
    end
    object ProductCount: TRzSpinEdit
      Left = 368
      Top = 32
      Width = 97
      Height = 23
      AllowKeyEdit = True
      Decimals = 2
      Max = 10000000000.000000000000000000
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 2
    end
    object ProductMeasured: TRzEdit
      Left = 472
      Top = 32
      Width = 121
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 3
    end
    object ProductName: TRzEdit
      Left = 8
      Top = 32
      Width = 249
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 4
    end
    object ProductTotalPrice: TRzEdit
      Left = 416
      Top = 72
      Width = 97
      Height = 23
      Enabled = False
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 5
    end
    object CBAllStocks: TRzComboBox
      Left = 8
      Top = 72
      Width = 249
      Height = 23
      Ctl3D = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 6
    end
    object AddToMemTable: TRzBitBtn
      Left = 520
      Top = 72
      Width = 81
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      HotTrack = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      ImageIndex = 0
      Images = F_Main.ProjIcon
    end
    object InvoiceBtn: TRzBitBtn
      Left = 606
      Top = 72
      Width = 91
      Hint = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1087#1086' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1085#1099#1084' '#1090#1086#1074#1072#1088#1072#1084
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
      HotTrack = True
      TabOrder = 8
      ImageIndex = 2
      Images = F_Main.ProjIcon
    end
    object RzComboBox1: TRzComboBox
      Left = 264
      Top = 72
      Width = 145
      Height = 23
      Ctl3D = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 9
    end
  end
end

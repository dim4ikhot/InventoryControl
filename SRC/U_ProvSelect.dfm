object F_ProvSelect: TF_ProvSelect
  Left = 282
  Top = 169
  Width = 361
  Height = 412
  BorderIcons = [biSystemMenu]
  Caption = ' '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 355
    Width = 345
    Height = 19
    Panels = <
      item
        Text = 'ESC - '#1074#1099#1093#1086#1076
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 321
    Height = 305
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RzBitBtn1: TRzBitBtn
    Left = 168
    Top = 320
    Caption = #1054#1050
    TabOrder = 2
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn2: TRzBitBtn
    Left = 251
    Top = 320
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = RzBitBtn2Click
  end
  object pFIBDataSet1: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    PROVIDERS ')
    Transaction = DM.TrmainBase
    Database = DM.mainBase
    Left = 32
    Top = 16
    object pFIBDataSet1ID: TFIBIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object pFIBDataSet1NAME: TFIBStringField
      DisplayWidth = 50
      FieldName = 'NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object pFIBDataSet1POSTIND: TFIBIntegerField
      FieldName = 'POSTIND'
      Visible = False
    end
    object pFIBDataSet1ADDR1: TFIBStringField
      FieldName = 'ADDR1'
      Visible = False
      Size = 500
      EmptyStrToNull = True
    end
    object pFIBDataSet1PHONE: TFIBStringField
      FieldName = 'PHONE'
      Visible = False
      Size = 50
      EmptyStrToNull = True
    end
    object pFIBDataSet1PHONEFAX: TFIBStringField
      FieldName = 'PHONEFAX'
      Visible = False
      Size = 50
      EmptyStrToNull = True
    end
    object pFIBDataSet1PHONEMOBILE: TFIBStringField
      FieldName = 'PHONEMOBILE'
      Visible = False
      Size = 50
      EmptyStrToNull = True
    end
    object pFIBDataSet1BOSS: TFIBStringField
      FieldName = 'BOSS'
      Visible = False
      Size = 70
      EmptyStrToNull = True
    end
    object pFIBDataSet1CONTACTOR: TFIBStringField
      FieldName = 'CONTACTOR'
      Visible = False
      Size = 70
      EmptyStrToNull = True
    end
    object pFIBDataSet1CONT_POST: TFIBStringField
      FieldName = 'CONT_POST'
      Visible = False
      Size = 50
      EmptyStrToNull = True
    end
    object pFIBDataSet1EDRPOU: TFIBIntegerField
      FieldName = 'EDRPOU'
      Visible = False
    end
    object pFIBDataSet1IPN: TFIBIntegerField
      FieldName = 'IPN'
      Visible = False
    end
    object pFIBDataSet1MFO: TFIBIntegerField
      FieldName = 'MFO'
      Visible = False
    end
    object pFIBDataSet1ACCNUMBER: TFIBIntegerField
      FieldName = 'ACCNUMBER'
      Visible = False
    end
    object pFIBDataSet1ACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Visible = False
      Size = 50
      EmptyStrToNull = True
    end
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet1
    Left = 136
    Top = 16
  end
  object ActionList1: TActionList
    Left = 216
    Top = 136
    object Action1: TAction
      Caption = 'Action1'
    end
  end
end

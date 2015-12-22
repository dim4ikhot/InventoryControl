object F_InOrder: TF_InOrder
  Left = 369
  Top = 172
  Width = 590
  Height = 497
  Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 24
    Top = 20
    Width = 82
    Height = 16
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    FlyByEnabled = True
  end
  object Edit1: TEdit
    Left = 24
    Top = 44
    Width = 477
    Height = 21
    TabOrder = 0
  end
  object RzBitBtn1: TRzBitBtn
    Left = 533
    Top = 42
    Width = 28
    Hint = #1074#1099#1073#1088#1072#1090#1100' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
    Caption = '...'
    HotTrack = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = RzBitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 73
    Width = 537
    Height = 289
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 440
    Width = 574
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object PrnBtn: TRzBitBtn
    Left = 376
    Top = 373
    Width = 89
    Height = 57
    Caption = 'PrnBtn'
    TabOrder = 4
  end
  object ExitBtn: TRzBitBtn
    Left = 472
    Top = 373
    Width = 89
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = ExitBtnClick
  end
  object RzBitBtn2: TRzBitBtn
    Left = 504
    Top = 42
    Width = 28
    Hint = #1086#1095#1080#1089#1090#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = RzBitBtn2Click
  end
  object RzBitBtn3: TRzBitBtn
    Left = 288
    Top = 384
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
  end
  object kbmMemTable1: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 112
    Top = 136
  end
  object kbmThreadDataSet1: TkbmThreadDataSet
    Dataset = kbmMemTable1
    Left = 144
    Top = 136
  end
end

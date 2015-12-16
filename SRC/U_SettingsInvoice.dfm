object F_PrepareInvoice: TF_PrepareInvoice
  Left = 618
  Top = 243
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072'...'
  ClientHeight = 200
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    353
    200)
  PixelsPerInch = 96
  TextHeight = 14
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 353
    Height = 161
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object BySelected: TRzCheckBox
      Left = 16
      Top = 24
      Width = 137
      Height = 17
      Caption = #1055#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1084
      HotTrack = True
      State = cbUnchecked
      TabOrder = 0
      Transparent = True
    end
    object RzBitBtn1: TRzBitBtn
      Left = 216
      Top = 104
      Width = 129
      Height = 49
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      HotTrack = True
      TabOrder = 1
      OnClick = RzBitBtn1Click
    end
    object RzGroupBox2: TRzGroupBox
      Left = 16
      Top = 72
      Width = 185
      Height = 81
      Enabled = False
      TabOrder = 2
      object RzLabel1: TRzLabel
        Left = 8
        Top = 20
        Width = 13
        Height = 15
        Caption = #1057':'
        Enabled = False
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 52
        Width = 23
        Height = 15
        Caption = #1055#1054':'
        Enabled = False
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 32
        Top = 16
        Width = 145
        Height = 23
        EditType = etDate
        Enabled = False
        FlatButtons = True
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 32
        Top = 48
        Width = 145
        Height = 23
        EditType = etDate
        Enabled = False
        FlatButtons = True
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
      end
    end
    object ByPeriod: TRzCheckBox
      Left = 16
      Top = 48
      Width = 115
      Height = 17
      Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
      HotTrack = True
      State = cbUnchecked
      TabOrder = 3
      OnClick = ByPeriodClick
    end
  end
  object RzBitBtn2: TRzBitBtn
    Left = 268
    Top = 168
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 1
    Kind = bkCancel
  end
  object LangReport: TsiLangLinked
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
    Left = 272
    Top = 16
    TranslationData = {
      737443617074696F6E730D0A54465F50726570617265496E766F69636501CFEE
      E4E3EEF2EEE2EAE02E2E2E01CFB3E4E3EEF2EEE2EAE02E2E2E010D0A527A4772
      6F7570426F783101CFE0F0E0ECE5F2F0FB3A01CFE0F0E0ECE5F2F0E82E2E2E01
      0D0A427953656C656374656401CFEE20E2FBE4E5EBE5EDEDFBEC01CFEE20E2E8
      E4B3EBE8EDE8EC010D0A527A42697442746E3101D1F4EEF0ECE8F0EEE2E0F2FC
      01D1F4EEF0ECF3E2E0F2E8010D0A527A4C6162656C3101D13A01C73A010D0A52
      7A4C6162656C3201CFCE3A01010D0A4279506572696F6401C7E020EFE5F0E8EE
      E401C7E020EFE5F0B3EEE4010D0A527A42697442746E3201CEF2ECE5EDE001C2
      B3E4ECB3EDE0010D0A737448696E74730D0A7374446973706C61794C6162656C
      730D0A7374466F6E74730D0A54465F50726570617265496E766F696365015469
      6D6573204E657720526F6D616E0154696D6573204E657720526F6D616E010D0A
      527A47726F7570426F78310154696D6573204E657720526F6D616E0154696D65
      73204E657720526F6D616E010D0A73744D756C74694C696E65730D0A73745374
      72696E67730D0A73744F74686572537472696E67730D0A7374436F6C6C656374
      696F6E730D0A737443686172536574730D0A54465F50726570617265496E766F
      6963650144454641554C545F434841525345540144454641554C545F43484152
      534554010D0A527A47726F7570426F7831015255535349414E5F434841525345
      540144454641554C545F43484152534554010D0A}
  end
end

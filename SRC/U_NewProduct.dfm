object F_NewProduct: TF_NewProduct
  Left = 442
  Top = 233
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
  ClientHeight = 242
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    416
    242)
  PixelsPerInch = 96
  TextHeight = 14
  object cancelProduct: TRzBitBtn
    Left = 324
    Top = 211
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
    TabOrder = 0
    Kind = bkCancel
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 416
    Height = 202
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      416
      202)
    object RzLabel6: TRzLabel
      Left = 288
      Top = 99
      Width = 63
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = #1042#1089#1077#1075#1086'('#1075#1088#1085'.):'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzLabel5: TRzLabel
      Left = 144
      Top = 97
      Width = 61
      Height = 15
      Anchors = [akLeft, akBottom]
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
      Left = 280
      Top = 57
      Width = 113
      Height = 15
      Anchors = [akLeft, akBottom]
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
      Left = 8
      Top = 97
      Width = 68
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 144
      Top = 56
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
      Top = 145
      Width = 39
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = #1057#1082#1083#1072#1076':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzLabel8: TRzLabel
      Left = 144
      Top = 147
      Width = 66
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzLabel9: TRzLabel
      Left = 8
      Top = 56
      Width = 78
      Height = 15
      Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RzLabel10: TRzLabel
      Left = 280
      Top = 147
      Width = 63
      Height = 15
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ProductPrice: TRzSpinEdit
      Left = 144
      Top = 113
      Width = 121
      Height = 23
      AllowKeyEdit = True
      Decimals = 2
      IntegersOnly = False
      Max = 10000000000.000000000000000000
      OnButtonClick = ProductPriceButtonClick
      Anchors = [akLeft, akBottom]
      FlatButtons = True
      FrameVisible = True
      TabOrder = 0
      OnChange = ProductPriceChange
    end
    object ProductCode: TRzEdit
      Left = 144
      Top = 72
      Width = 121
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 1
      OnKeyPress = ProductCodeKeyPress
    end
    object ProductCount: TRzSpinEdit
      Left = 8
      Top = 113
      Width = 121
      Height = 23
      AllowKeyEdit = True
      Max = 10000000000.000000000000000000
      OnButtonClick = ProductCountButtonClick
      Anchors = [akLeft, akBottom]
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 2
      OnChange = ProductCountChange
    end
    object ProductMeasured: TRzEdit
      Left = 280
      Top = 73
      Width = 129
      Height = 23
      Anchors = [akLeft, akBottom]
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 3
    end
    object ProductName: TRzEdit
      Left = 8
      Top = 32
      Width = 401
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 4
      Visible = False
    end
    object ProductTotalPrice: TRzEdit
      Left = 280
      Top = 113
      Width = 129
      Height = 23
      Anchors = [akLeft, akBottom]
      Enabled = False
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 5
    end
    object CBAllStocks: TRzComboBox
      Left = 8
      Top = 161
      Width = 121
      Height = 23
      Anchors = [akLeft, akBottom]
      Ctl3D = False
      Enabled = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 6
    end
    object CBAllProviders: TRzComboBox
      Left = 144
      Top = 161
      Width = 121
      Height = 23
      Anchors = [akLeft, akBottom]
      Ctl3D = False
      Enabled = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 7
      OnChange = CBAllProvidersChange
      Items.Strings = (
        #1044#1086#1073#1072#1074#1080#1090#1100'...')
    end
    object invoiceNumber: TRzEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 23
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 8
      OnKeyPress = invoiceNumberKeyPress
    end
    object CBAllEmploees: TRzComboBox
      Left = 280
      Top = 161
      Width = 129
      Height = 23
      Ctl3D = False
      Enabled = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 9
      OnChange = CBAllEmploeesChange
      Items.Strings = (
        #1044#1086#1073#1072#1074#1080#1090#1100'...')
    end
    object CBNames: TRzComboBox
      Left = 8
      Top = 32
      Width = 401
      Height = 23
      Ctl3D = False
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 10
    end
  end
  object AddToMemTable: TRzBitBtn
    Left = 236
    Top = 211
    Width = 81
    Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
    Default = True
    Anchors = [akRight, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    HotTrack = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = AddToMemTableClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000000000000000003300
      00006600000099000000CC000000FF0000000033000033330000663300009933
      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
      000000990000339900006699000099990000CC990000FF99000000CC000033CC
      000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
      0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
      330000333300333333006633330099333300CC333300FF333300006633003366
      33006666330099663300CC663300FF6633000099330033993300669933009999
      3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
      330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
      66006600660099006600CC006600FF0066000033660033336600663366009933
      6600CC336600FF33660000666600336666006666660099666600CC666600FF66
      660000996600339966006699660099996600CC996600FF99660000CC660033CC
      660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
      6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
      990000339900333399006633990099339900CC339900FF339900006699003366
      99006666990099669900CC669900FF6699000099990033999900669999009999
      9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
      990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
      CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
      CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
      CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
      CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
      CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
      FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
      FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
      FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
      FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
      000000808000800000008000800080800000C0C0C00080808000191919004C4C
      4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
      82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
      F100C56A31000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE180C
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEEEEEEEEEEEE181212
      0CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEEEEEEEE18121212
      120CEEEEEEEEEEEEEEEEEEEEE281818181DFEEEEEEEEEEEEEEEEEE1812121212
      12120CEEEEEEEEEEEEEEEEE2818181818181DFEEEEEEEEEEEEEEEE1812120C18
      1212120CEEEEEEEEEEEEEEE28181DFE2818181DFEEEEEEEEEEEEEE18120CEEEE
      181212120CEEEEEEEEEEEEE281DFEEEEE2818181DFEEEEEEEEEEEE180CEEEEEE
      EE181212120CEEEEEEEEEEE2DFEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEE
      EEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEE
      EEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEE
      EEEEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEE
      EEEEEEEEEE1812120CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEE
      EEEEEEEEEEEE18120CEEEEEEEEEEEEEEEEEEEEEEEEEEE281DFEEEEEEEEEEEEEE
      EEEEEEEEEEEEEE180CEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
    ImageIndex = 0
    Images = F_Main.ProjIcon
    NumGlyphs = 2
  end
  object LangNewProduct: TsiLangLinked
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
    Left = 80
    Top = 192
    TranslationData = {
      737443617074696F6E730D0A54465F4E657750726F6475637401CDEEE2FBE920
      F2EEE2E0F001CDEEE2E8E920F2EEE2E0F0010D0A63616E63656C50726F647563
      7401CEF2ECE5EDE001C2B3E4ECB3EDE0010D0A527A4C6162656C3601C2F1E5E3
      EE28E3F0ED2E293A01C2F1FCEEE3EE28E3F0ED2E293A010D0A527A4C6162656C
      3501D6E5EDE028E3F0ED2E293A01D6B3EDE028E3F0ED2E293A010D0A527A4C61
      62656C3401C5E4E8EDE8F6E020E8E7ECE5F0E5EDE8FF3A01CEE4E8EDE8F6FF20
      E2E8ECB3F0F33A010D0A527A4C6162656C3301CAEEEBE8F7E5F1F2E2EE3A01CA
      B3EBFCEAB3F1F2FC3A010D0A527A4C6162656C3201CAEEE420F2EEE2E0F0E03A
      01CAEEE420F2EEE2E0F0F33A010D0A527A4C6162656C3101CDE0E8ECE5EDEEE2
      E0EDE8E520F2EEE2E0F0E03A01CDE0E9ECE5EDF3E2E0EDEDFF20F2EEE2E0F0F3
      3A010D0A527A4C6162656C3701D1EAEBE0E43A01D1EAEBE0E43A010D0A527A4C
      6162656C3801CFEEF1F2E0E2F9E8EA3A01CFEEF1F2E0F7E0EBFCEDE8EA3A010D
      0A416464546F4D656D5461626C6501C4EEE1E0E2E8F2FC01C4EEE4E0F2E8010D
      0A527A4C6162656C3901B920EDE0EAEBE0E4EDEEE93A01B920EDE0EAEBE0E4ED
      EEBF3A010D0A527A4C6162656C313001D1EEF2F0F3E4EDE8EA3A01D1EFB3E2F0
      EEE1B3F2EDE8EA3A010D0A737448696E74730D0A416464546F4D656D5461626C
      6501C4EEE1E0E2E8F2FC20EDEEE2FBE920F2EEE2E0F001C4EEE4E0F2E820EDEE
      E2E8E920F2EEE2E0F0010D0A7374446973706C61794C6162656C730D0A737446
      6F6E74730D0A54465F4E657750726F647563740154696D6573204E657720526F
      6D616E0154696D6573204E657720526F6D616E010D0A63616E63656C50726F64
      7563740154696D6573204E657720526F6D616E0154696D6573204E657720526F
      6D616E010D0A527A47726F7570426F78310154696D6573204E657720526F6D61
      6E0154696D6573204E657720526F6D616E010D0A527A4C6162656C360154696D
      6573204E657720526F6D616E0154696D6573204E657720526F6D616E010D0A52
      7A4C6162656C350154696D6573204E657720526F6D616E0154696D6573204E65
      7720526F6D616E010D0A527A4C6162656C340154696D6573204E657720526F6D
      616E0154696D6573204E657720526F6D616E010D0A527A4C6162656C33015469
      6D6573204E657720526F6D616E0154696D6573204E657720526F6D616E010D0A
      527A4C6162656C320154696D6573204E657720526F6D616E0154696D6573204E
      657720526F6D616E010D0A527A4C6162656C310154696D6573204E657720526F
      6D616E0154696D6573204E657720526F6D616E010D0A527A4C6162656C370154
      696D6573204E657720526F6D616E0154696D6573204E657720526F6D616E010D
      0A527A4C6162656C380154696D6573204E657720526F6D616E0154696D657320
      4E657720526F6D616E010D0A527A4C6162656C390154696D6573204E65772052
      6F6D616E0154696D6573204E657720526F6D616E010D0A527A4C6162656C3130
      0154696D6573204E657720526F6D616E0154696D6573204E657720526F6D616E
      010D0A73744D756C74694C696E65730D0A4342416C6C50726F7669646572732E
      4974656D7301C4EEE1E0E2E8F2FC2E2E2E01C4EEE4E0F2E82E2E2E010D0A4342
      416C6C456D706C6F6565732E4974656D7301C4EEE1E0E2E8F2FC2E2E2E01C4EE
      E4E0F2E82E2E2E010D0A7374537472696E67730D0A456D7074794669656C6443
      61707401CFF0E5E4F3EFF0E5E6E4E5EDE8E52E2E2E01CFEEEFE5F0E5E4E6E5ED
      EDFF2E2E2E010D0A456D7074794669656C6401CEE4EDEE20E8EBE820EDE5F1EA
      EEEBFCEAEE20EFEEEBE5E920EDE520E7E0EFEEEBEDE5EDFB2E01CEE4EDE520E0
      E1EE20E4E5EAB3EBFCEAE020EFEEEBB3E220EDE520E7E0EFEEE2EDE5EDE52E01
      0D0A50726F6475637445786973747301D2EEE2E0F020F120F2E0EAE8EC20EAEE
      E4EEEC20F3E6E520F7F3F9E5F1F2E2F3E5F220EDE020F1EAEBE0E4E52E20C6E5
      EBE0E5F2E520E4EEEFEEEBEDE8F2FC20EFEEE7E8F6E8FE3F01D2EEE2E0F020E7
      20F2E0EAE8EC20EAEEE4EEEC20E2E6E520B3F1EDF3BA20EDE020F1EAEBE0E4B3
      2E20C1E0E6E0BAF2E520E4EEEFEEE2EDE8F2E820EFEEE7E8F6B3FE3F010D0A73
      744F74686572537472696E67730D0A7374436F6C6C656374696F6E730D0A7374
      43686172536574730D0A54465F4E657750726F64756374015255535349414E5F
      434841525345540144454641554C545F43484152534554010D0A63616E63656C
      50726F64756374015255535349414E5F434841525345540144454641554C545F
      43484152534554010D0A527A47726F7570426F7831015255535349414E5F4348
      41525345540144454641554C545F43484152534554010D0A527A4C6162656C36
      015255535349414E5F434841525345540144454641554C545F43484152534554
      010D0A527A4C6162656C35015255535349414E5F434841525345540144454641
      554C545F43484152534554010D0A527A4C6162656C34015255535349414E5F43
      4841525345540144454641554C545F43484152534554010D0A527A4C6162656C
      33015255535349414E5F434841525345540144454641554C545F434841525345
      54010D0A527A4C6162656C32015255535349414E5F4348415253455401444546
      41554C545F43484152534554010D0A527A4C6162656C31015255535349414E5F
      434841525345540144454641554C545F43484152534554010D0A527A4C616265
      6C37015255535349414E5F434841525345540144454641554C545F4348415253
      4554010D0A527A4C6162656C38015255535349414E5F43484152534554014445
      4641554C545F43484152534554010D0A527A4C6162656C39015255535349414E
      5F434841525345540144454641554C545F43484152534554010D0A527A4C6162
      656C3130015255535349414E5F434841525345540144454641554C545F434841
      52534554010D0A}
  end
end

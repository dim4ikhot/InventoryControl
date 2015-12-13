object F_Emploee: TF_Emploee
  Left = 297
  Top = 165
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 180
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    271
    180)
  PixelsPerInch = 96
  TextHeight = 14
  object RzLabel1: TRzLabel
    Left = 8
    Top = 8
    Width = 128
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'('#1060'.'#1048'.'#1054'):'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel2: TRzLabel
    Left = 8
    Top = 50
    Width = 82
    Height = 15
    Caption = #1055#1086#1095#1090#1072'(E-Mail):'
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
    Top = 96
    Width = 72
    Height = 15
    Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object AddEmpl: TRzBitBtn
    Left = 110
    Top = 147
    Anchors = [akRight, akBottom]
    HotTrack = True
    TabOrder = 0
    OnClick = AddEmplClick
    Kind = bkOK
  end
  object dellEmpl: TRzBitBtn
    Left = 190
    Top = 147
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    HotTrack = True
    TabOrder = 1
    Kind = bkCancel
  end
  object emploeeName: TRzEdit
    Left = 8
    Top = 24
    Width = 257
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
  object emploeeMail: TRzEdit
    Left = 8
    Top = 67
    Width = 257
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
  object emploeePhone: TRzEdit
    Left = 8
    Top = 112
    Width = 257
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
  object Lang_Emploee: TsiLangLinked
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
    Left = 200
    Top = 88
    TranslationData = {
      737443617074696F6E730D0A54465F456D706C6F656501C4EEE1E0E2E8F2FC20
      F1EEF2F0F3E4EDE8EAE001C4EEE4E0F2E820F1EFB3E2F0EEE1B3F2EDE8EAE001
      0D0A416464456D706C014F4B01010D0A64656C6C456D706C01CEF2ECE5EDE001
      C2B3E4ECB3EDE0010D0A527A4C6162656C3101CDE0E8ECE5EDEEE2E0EDE8E528
      D42EC82ECE293A01CDE0E9ECE5EDF3E2E0EDEDFF28CF2EB22EC1293A010D0A52
      7A4C6162656C3201CFEEF7F2E028452D4D61696C293A01CFEEF8F2E028452D4D
      61696C29010D0A527A4C6162656C3301B920F2E5EBE5F4EEEDE03A01B920F2E5
      EBE5F4EEEDF3010D0A737448696E74730D0A7374446973706C61794C6162656C
      730D0A7374466F6E74730D0A54465F456D706C6F65650154696D6573204E6577
      20526F6D616E0154696D6573204E657720526F6D616E010D0A656D706C6F6565
      4E616D650154696D6573204E657720526F6D616E0154696D6573204E65772052
      6F6D616E010D0A656D706C6F65654D61696C0154696D6573204E657720526F6D
      616E0154696D6573204E657720526F6D616E010D0A656D706C6F656550686F6E
      650154696D6573204E657720526F6D616E0154696D6573204E657720526F6D61
      6E010D0A527A4C6162656C310154696D6573204E657720526F6D616E0154696D
      6573204E657720526F6D616E010D0A527A4C6162656C320154696D6573204E65
      7720526F6D616E0154696D6573204E657720526F6D616E010D0A527A4C616265
      6C330154696D6573204E657720526F6D616E0154696D6573204E657720526F6D
      616E010D0A73744D756C74694C696E65730D0A7374537472696E67730D0A7374
      4F74686572537472696E67730D0A7374436F6C6C656374696F6E730D0A737443
      686172536574730D0A54465F456D706C6F6565015255535349414E5F43484152
      534554015255535349414E5F43484152534554010D0A656D706C6F65654E616D
      65015255535349414E5F43484152534554015255535349414E5F434841525345
      54010D0A656D706C6F65654D61696C015255535349414E5F4348415253455401
      5255535349414E5F43484152534554010D0A656D706C6F656550686F6E650152
      55535349414E5F43484152534554015255535349414E5F43484152534554010D
      0A527A4C6162656C31015255535349414E5F4348415253455401525553534941
      4E5F43484152534554010D0A527A4C6162656C32015255535349414E5F434841
      52534554015255535349414E5F43484152534554010D0A527A4C6162656C3301
      5255535349414E5F43484152534554015255535349414E5F4348415253455401
      0D0A}
  end
end

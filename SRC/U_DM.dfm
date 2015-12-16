object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 290
  Top = 134
  Height = 567
  Width = 1038
  object SourceStocks: TDataSource
    DataSet = tableStoks
    Left = 96
    Top = 56
  end
  object SourceProducts: TDataSource
    DataSet = tableProducts
    Left = 96
    Top = 104
  end
  object SourceClients: TDataSource
    DataSet = tableClients
    Left = 96
    Top = 152
  end
  object SourceProviders: TDataSource
    DataSet = tableProviders
    Left = 96
    Top = 200
  end
  object mtAddProducts: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'productName'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'productCode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'productCount'
        DataType = ftInteger
      end
      item
        Name = 'productMeasured'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'productPrice'
        DataType = ftFloat
      end
      item
        Name = 'productTotalPrice'
        DataType = ftFloat
      end
      item
        Name = 'productStock'
        DataType = ftInteger
      end
      item
        Name = 'productProvider'
        DataType = ftInteger
      end
      item
        Name = 'productEmploee'
        DataType = ftInteger
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
    Left = 32
    Top = 408
    object mtAddProductsproductName: TStringField
      FieldName = 'productName'
      Size = 1000
    end
    object mtAddProductsproductCode: TStringField
      FieldName = 'productCode'
      Size = 100
    end
    object mtAddProductsproductCount: TFloatField
      FieldName = 'productCount'
    end
    object mtAddProductsproductMeasured: TStringField
      FieldName = 'productMeasured'
      Size = 100
    end
    object mtAddProductsproductPrice: TFloatField
      FieldName = 'productPrice'
    end
    object mtAddProductsproductTotalPrice: TFloatField
      FieldName = 'productTotalPrice'
    end
    object mtAddProductsproductStock: TIntegerField
      FieldName = 'productStock'
    end
    object mtAddProductsproductProvider: TIntegerField
      FieldName = 'productProvider'
    end
    object mtAddProductsproductEmploee: TIntegerField
      FieldName = 'productEmploee'
    end
  end
  object mainBase: TpFIBDatabase
    DBName = 'D:\PROJECTS\'#1057#1082#1083#1072#1076#1089#1082#1086#1081' '#1091#1095#1077#1090'\Data\STOCK.DAT'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251'
      'sql_role_name=')
    DefaultTransaction = TrmainBase
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    LibraryName = 'D:\PROJECTS\'#1057#1082#1083#1072#1076#1089#1082#1086#1081' '#1091#1095#1077#1090'\GDS32.dll'
    WaitForRestoreConnect = 0
    Left = 24
    Top = 8
  end
  object tableStoks: TpFIBDataSet
    UpdateSQL.Strings = (
      'update STOCK set'
      '    Name = ?name,'
      '    phone = ?phone,'
      '    ADDR1 = ?ADDR1,'
      '    NDS = ?NDS,'
      '    STARTED = ?STARTED'
      'WHERE'
      '  ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'Delete from Stock where ID = ?Old_ID')
    InsertSQL.Strings = (
      'Insert into STOCK('
      '    ID,'
      '    Name,'
      '    phone,'
      '    ADDR1,'
      '    NDS,'
      '    STARTED'
      ')values('
      '    ?ID,'
      '    ?Name,'
      '    ?phone,'
      '    ?ADDR1,'
      '    ?NDS,'
      '    ?STARTED'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PHONE,'
      '    ADDR1,'
      '    NDS,'
      '    STARTED'
      'FROM'
      '    STOCK '
      'WHERE'
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PHONE,'
      '    ADDR1,'
      '    NDS,'
      '    STARTED'
      'FROM'
      '    STOCK ')
    AutoUpdateOptions.UpdateTableName = 'STOCK'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_STOCK_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterScroll = tableStoksAfterScroll
    Transaction = TRStoks
    Database = mainBase
    UpdateTransaction = TrStoksUPD
    AutoCommit = True
    Left = 24
    Top = 56
    object tableStoksNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 1000
      EmptyStrToNull = True
    end
    object tableStoksPHONE: TFIBStringField
      FieldName = 'PHONE'
      EmptyStrToNull = True
    end
    object tableStoksADDR1: TFIBStringField
      FieldName = 'ADDR1'
      Size = 500
      EmptyStrToNull = True
    end
    object tableStoksID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableStoksNDS: TFIBFloatField
      FieldName = 'NDS'
    end
    object tableStoksSTARTED: TFIBSmallIntField
      FieldName = 'STARTED'
    end
  end
  object tableProducts: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUCTS set'
      '    NAME = ?NAME,'
      '    STOCK_ID = ?STOCK_ID,'
      '    ARTICUL = ?ARTICUL,'
      '    MEASURE = ?MEASURED,'
      '    KOLVO = ?KOLVO,'
      '    PRICE = ?PRICE,'
      '    KOD = ?KOD,'
      '    TOTALPRICE = ?TOTALPRICE,'
      '    REST_COUNT = ?REST_COUNT'
      'WHERE'
      '    ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'delete from Products where id = ?old_id')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTS('
      '    ID,'
      '    NAME,'
      '    STOCK_ID,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    PRICE,'
      '    KOD,'
      '    TOTALPRICE,'
      '    REST_COUNT'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?NAME,'
      '    ?STOCK_ID,'
      '    ?ARTICUL,'
      '    ?MEASURE,'
      '    ?KOLVO,'
      '    ?PRICE,'
      '    ?KOD,'
      '    ?TOTALPRICE,'
      '    ?REST_COUNT '
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    STOCK_ID,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    PRICE,'
      '    KOD,'
      '    TOTALPRICE,'
      '    REST_COUNT'
      'FROM'
      '    PRODUCTS '
      'WHERE'
      '    ID = ?ODL_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    STOCK_ID,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    PRICE,'
      '    KOD,'
      '    TOTALPRICE,'
      '    REST_COUNT'
      'FROM'
      '    PRODUCTS ')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'PRODUCTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRODUCTS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrProducts
    Database = mainBase
    UpdateTransaction = TrProductsUpd
    AutoCommit = True
    Filtered = True
    Left = 24
    Top = 104
    object tableProductsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableProductsSTOCK_ID: TFIBIntegerField
      FieldName = 'STOCK_ID'
    end
    object tableProductsARTICUL: TFIBIntegerField
      FieldName = 'ARTICUL'
    end
    object tableProductsMEASURE: TFIBStringField
      FieldName = 'MEASURE'
      Size = 10
      EmptyStrToNull = True
    end
    object tableProductsKOLVO: TFIBIntegerField
      FieldName = 'KOLVO'
    end
    object tableProductsPRICE: TFIBFloatField
      FieldName = 'PRICE'
    end
    object tableProductsTOTALPRICE: TFIBFloatField
      FieldName = 'TOTALPRICE'
    end
    object tableProductsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 1000
      EmptyStrToNull = True
    end
    object tableProductsREST_COUNT: TFIBIntegerField
      FieldName = 'REST_COUNT'
    end
    object tableProductsKOD: TFIBStringField
      FieldName = 'KOD'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object tableClients: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CUSTOMERS SET'
      '    NAME = ?NAME,'
      '    ADDR1 = ?ADDR1,'
      '    PHONE = ?PHONE,'
      '    PHONEFAX = ?PHONEFAX,'
      '    ACCNUM = ?ACCNUM,'
      '    ACCPERSON = ?ACCPERSON,'
      '    ACCBOSS = ?ACCBOSS,'
      '    EDRPOU = ?EDRPOU,'
      '    IPN = ?IPN,'
      '    MFO = ?MFO,'
      '    ACCBANK = ACCBANK'
      'WHERE '
      '    ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM CUSTOMERS WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO CUSTOMERS('
      '    ID,'
      '    NAME,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    ACCNUM,'
      '    ACCPERSON,'
      '    ACCBOSS,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCBANK'
      ')'
      'values('
      '    ?ID,'
      '    ?NAME,'
      '    ?ADDR1,'
      '    ?PHONE,'
      '    ?PHONEFAX,'
      '    ?ACCNUM,'
      '    ?ACCPERSON,'
      '    ?ACCBOSS,'
      '    ?EDRPOU,'
      '    ?IPN,'
      '    ?MFO,'
      '    ?ACCBANK'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    ACCNUM,'
      '    ACCPERSON,'
      '    ACCBOSS,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCBANK'
      'FROM'
      '    CUSTOMERS'
      'WHERE'
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    ACCNUM,'
      '    ACCPERSON,'
      '    ACCBOSS,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCBANK'
      'FROM'
      '    CUSTOMERS ')
    AutoUpdateOptions.UpdateTableName = 'CUSTOMERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_CUSTOMERS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrClients
    Database = mainBase
    UpdateTransaction = TrClientsUpd
    AutoCommit = True
    Left = 24
    Top = 152
    object tableClientsID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableClientsNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 120
      EmptyStrToNull = True
    end
    object tableClientsADDR1: TFIBStringField
      FieldName = 'ADDR1'
      Size = 500
      EmptyStrToNull = True
    end
    object tableClientsPHONE: TFIBStringField
      FieldName = 'PHONE'
      Size = 50
      EmptyStrToNull = True
    end
    object tableClientsPHONEFAX: TFIBStringField
      FieldName = 'PHONEFAX'
      Size = 50
      EmptyStrToNull = True
    end
    object tableClientsACCNUM: TFIBIntegerField
      FieldName = 'ACCNUM'
    end
    object tableClientsACCPERSON: TFIBStringField
      FieldName = 'ACCPERSON'
      Size = 70
      EmptyStrToNull = True
    end
    object tableClientsACCBOSS: TFIBStringField
      FieldName = 'ACCBOSS'
      Size = 70
      EmptyStrToNull = True
    end
    object tableClientsEDRPOU: TFIBIntegerField
      FieldName = 'EDRPOU'
    end
    object tableClientsIPN: TFIBIntegerField
      FieldName = 'IPN'
    end
    object tableClientsMFO: TFIBIntegerField
      FieldName = 'MFO'
    end
    object tableClientsACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object tableProviders: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PROVIDERS SET'
      '    NAME = ?NAME,'
      '    POSTIND = ?POSTIND,'
      '    ADDR1 = ?ADDR1,'
      '    PHONE = ?PHONE,'
      '    PHONEFAX = ?PHONEFAX,'
      '    PHONEMOBILE = ?PHONEMOBILE,'
      '    BOSS = ?BOSS,'
      '    CONTACTOR = ?CONTACTOR,'
      '    CONT_POST = ?CONT_POST,'
      '    EDRPOU = ?EDRPOU,'
      '    IPN = ?IPN,'
      '    MFO = ?MFO,'
      '    ACCNUMBER = ?ACCNUMBER,'
      '    ACCBANK = ?ACCBANK'
      'WHERE ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM PROVIDERS WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PROVIDERS('
      '    ID,'
      '    NAME,'
      '    POSTIND,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    PHONEMOBILE,'
      '    BOSS,'
      '    CONTACTOR,'
      '    CONT_POST,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCNUMBER,'
      '    ACCBANK'
      ')'
      'values('
      '    ?ID,'
      '    ?NAME,'
      '    ?POSTIND,'
      '    ?ADDR1,'
      '    ?PHONE,'
      '    ?PHONEFAX,'
      '    ?PHONEMOBILE,'
      '    ?BOSS,'
      '    ?CONTACTOR,'
      '    ?CONT_POST,'
      '    ?EDRPOU,'
      '    ?IPN,'
      '    ?MFO,'
      '    ?ACCNUMBER,'
      '    ?ACCBANK'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    POSTIND,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    PHONEMOBILE,'
      '    BOSS,'
      '    CONTACTOR,'
      '    CONT_POST,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCNUMBER,'
      '    ACCBANK'
      'FROM'
      '    PROVIDERS '
      'WHERE'
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    POSTIND,'
      '    ADDR1,'
      '    PHONE,'
      '    PHONEFAX,'
      '    PHONEMOBILE,'
      '    BOSS,'
      '    CONTACTOR,'
      '    CONT_POST,'
      '    EDRPOU,'
      '    IPN,'
      '    MFO,'
      '    ACCNUMBER,'
      '    ACCBANK'
      'FROM'
      '    PROVIDERS ')
    AutoUpdateOptions.UpdateTableName = 'PROVIDERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_PROVIDERS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrProviders
    Database = mainBase
    UpdateTransaction = TrProvidersUpd
    AutoCommit = True
    Left = 24
    Top = 200
    object tableProvidersID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableProvidersNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 120
      EmptyStrToNull = True
    end
    object tableProvidersPOSTIND: TFIBIntegerField
      FieldName = 'POSTIND'
    end
    object tableProvidersADDR1: TFIBStringField
      FieldName = 'ADDR1'
      Size = 200
      EmptyStrToNull = True
    end
    object tableProvidersPHONE: TFIBStringField
      FieldName = 'PHONE'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersPHONEFAX: TFIBStringField
      FieldName = 'PHONEFAX'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersPHONEMOBILE: TFIBStringField
      FieldName = 'PHONEMOBILE'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersBOSS: TFIBStringField
      FieldName = 'BOSS'
      Size = 70
      EmptyStrToNull = True
    end
    object tableProvidersCONTACTOR: TFIBStringField
      FieldName = 'CONTACTOR'
      Size = 70
      EmptyStrToNull = True
    end
    object tableProvidersCONT_POST: TFIBStringField
      FieldName = 'CONT_POST'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersEDRPOU: TFIBIntegerField
      FieldName = 'EDRPOU'
    end
    object tableProvidersIPN: TFIBIntegerField
      FieldName = 'IPN'
    end
    object tableProvidersMFO: TFIBIntegerField
      FieldName = 'MFO'
    end
    object tableProvidersACCNUMBER: TFIBIntegerField
      FieldName = 'ACCNUMBER'
    end
    object tableProvidersACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object TRStoks: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 56
  end
  object TrStoksUPD: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 56
  end
  object TrProducts: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 104
  end
  object TrProductsUpd: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 104
  end
  object TrClients: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 152
  end
  object TrClientsUpd: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 152
  end
  object TrProviders: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 200
  end
  object TrProvidersUpd: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 200
  end
  object SourceAddProducts: TDataSource
    DataSet = mtAddProducts
    Left = 128
    Top = 408
  end
  object TrmainBase: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 96
    Top = 8
  end
  object ProgramLangs: TsiLangDispatcher
    ActiveLanguage = 1
    NumOfLanguages = 2
    LangNames.Strings = (
      'RUS'
      'UKR')
    Language = 'RUS'
    Left = 168
    Top = 16
  end
  object tableInvoiceIn: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DELIVERYIN SET    '
      '    DATEIN = ?DATEIN,'
      '    PROVIDER_ID = ?PROVIDER_ID,'
      '    NAME = ?NAME,'
      '    ARTICUL = ?ARTICUL,'
      '    MEASURE = ?MEASURE,'
      '    KOLVO = ?KOLVO,'
      '    KOD = ?KOD,'
      '    EMPLOEE_ID = ?EMPLOEE_ID,'
      '    PRICE = ?PRICE,'
      '    NUMBER = ?NUMBER,'
      '    TOTALPRICE = ?TOTALPRICE'
      'WHERE'
      '    ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM DELIVERYIN WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO DELIVERYIN('
      '    ID,'
      '    DATEIN,'
      '    PROVIDER_ID,'
      '    NAME,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    KOD,'
      '    EMPLOEE_ID,'
      '    PRICE,'
      '    NUMBER,'
      '    TOTALPRICE'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?DATEIN,'
      '    ?PROVIDER_ID,'
      '    ?NAME,'
      '    ?ARTICUL,'
      '    ?MEASURE,'
      '    ?KOLVO,'
      '    ?KOD,'
      '    ?EMPLOEE_ID,'
      '    ?PRICE,'
      '    ?NUMBER,'
      '    ?TOTALPRICE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DATEIN,'
      '    PROVIDER_ID,'
      '    NAME,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    KOD,'
      '    EMPLOEE_ID,'
      '    PRICE,'
      '    NUMBER,'
      '    TOTALPRICE'
      'FROM'
      '    DELIVERYIN '
      'WHERE '
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DATEIN,'
      '    PROVIDER_ID,'
      '    NAME,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    KOD,'
      '    EMPLOEE_ID,'
      '    PRICE,'
      '    NUMBER,'
      '    TOTALPRICE'
      'FROM'
      '    DELIVERYIN ')
    AutoUpdateOptions.UpdateTableName = 'DELIVERYIN'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_DELIVERYIN_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = trInvoiceIn
    Database = mainBase
    UpdateTransaction = trInvoiceInWS
    AutoCommit = True
    Left = 24
    Top = 248
    object tableInvoiceInID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableInvoiceInDATEIN: TFIBDateField
      FieldName = 'DATEIN'
    end
    object tableInvoiceInPROVIDER_ID: TFIBIntegerField
      FieldName = 'PROVIDER_ID'
    end
    object tableInvoiceInARTICUL: TFIBIntegerField
      FieldName = 'ARTICUL'
    end
    object tableInvoiceInMEASURE: TFIBStringField
      FieldName = 'MEASURE'
      Size = 50
      EmptyStrToNull = True
    end
    object tableInvoiceInKOLVO: TFIBIntegerField
      FieldName = 'KOLVO'
    end
    object tableInvoiceInEMPLOEE_ID: TFIBIntegerField
      FieldName = 'EMPLOEE_ID'
    end
    object tableInvoiceInPRICE: TFIBFloatField
      FieldName = 'PRICE'
    end
    object tableInvoiceInNUMBER: TFIBIntegerField
      FieldName = 'NUMBER'
    end
    object tableInvoiceInTOTALPRICE: TFIBFloatField
      FieldName = 'TOTALPRICE'
    end
    object tableInvoiceInNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 1000
      EmptyStrToNull = True
    end
    object tableInvoiceInKOD: TFIBStringField
      FieldName = 'KOD'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object tableInvoiceOut: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DELIVERYOUT SET'
      '   CUSTOMER_ID = ?CUSTOMER_ID'
      'WHERE ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM DELIVERYOUT WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO DELIVERYOUT('
      '    ID,'
      '    CUSTOMER_ID'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?CUSTOMER_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    CUSTOMER_ID'
      'FROM'
      '    DELIVERYOUT '
      'WHERE '
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    CUSTOMER_ID'
      'FROM'
      '    DELIVERYOUT ')
    AutoUpdateOptions.UpdateTableName = 'DELIVERYOUT'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_DELIVERYOUT_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = trInvoiceOut
    Database = mainBase
    UpdateTransaction = trInvoiceOutWS
    AutoCommit = True
    Left = 24
    Top = 296
    object tableInvoiceOutID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableInvoiceOutCUSTOMER_ID: TFIBIntegerField
      FieldName = 'CUSTOMER_ID'
    end
  end
  object trInvoiceIn: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 248
  end
  object trInvoiceInWS: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 248
  end
  object trInvoiceOut: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 296
  end
  object trInvoiceOutWS: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 296
  end
  object SourceInvoiceIn: TDataSource
    DataSet = tableInvoiceIn
    Left = 96
    Top = 248
  end
  object SourceInvoiceOut: TDataSource
    DataSet = tableInvoiceOut
    Left = 96
    Top = 296
  end
  object TrEmploee: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 168
    Top = 344
  end
  object TrEmploeeUpd: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 240
    Top = 344
  end
  object SourceEmploee: TDataSource
    DataSet = tableEmploee
    Left = 96
    Top = 344
  end
  object tableEmploee: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE EMPLOYEE SET'
      '    NAME = ?NAME,'
      '    TELEPHONE = ?TELEPHONE,'
      '    POSHTA = ?POSHTA'
      'WHERE'
      '    ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM EMPLOYEE WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO EMPLOYEE('
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?NAME,'
      '    ?TELEPHONE,'
      '    ?POSHTA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA'
      'FROM'
      '    EMPLOYEE '
      'WHERE'
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA'
      'FROM'
      '    EMPLOYEE ')
    AutoUpdateOptions.UpdateTableName = 'EMPLOYEE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_EMPLOYEE_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrEmploee
    Database = mainBase
    UpdateTransaction = TrEmploeeUpd
    AutoCommit = True
    Left = 24
    Top = 344
    object tableEmploeeID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableEmploeeNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object tableEmploeeTELEPHONE: TFIBStringField
      FieldName = 'TELEPHONE'
      EmptyStrToNull = True
    end
    object tableEmploeePOSHTA: TFIBStringField
      FieldName = 'POSHTA'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object mtInvoiceOut: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'productName'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'productCode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'productCount'
        DataType = ftInteger
      end
      item
        Name = 'productMeasured'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'productPrice'
        DataType = ftFloat
      end
      item
        Name = 'productTotalPrice'
        DataType = ftFloat
      end
      item
        Name = 'productStock'
        DataType = ftInteger
      end
      item
        Name = 'productCustomer'
        DataType = ftInteger
      end
      item
        Name = 'productEmploee'
        DataType = ftInteger
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
    Left = 32
    Top = 464
    object mtInvoiceOutproductName: TStringField
      FieldName = 'productName'
      Size = 500
    end
    object mtInvoiceOutproductCode: TStringField
      FieldName = 'productCode'
      Size = 100
    end
    object mtInvoiceOutproductCount: TIntegerField
      FieldName = 'productCount'
    end
    object mtInvoiceOutproductMeasured: TStringField
      FieldName = 'productMeasured'
      Size = 100
    end
    object mtInvoiceOutproductPrice: TFloatField
      FieldName = 'productPrice'
    end
    object mtInvoiceOutproductTotalPrice: TFloatField
      FieldName = 'productTotalPrice'
    end
    object mtInvoiceOutproductStock: TIntegerField
      FieldName = 'productStock'
    end
    object mtInvoiceOutproductEmploee: TIntegerField
      FieldName = 'productEmploee'
    end
    object mtInvoiceOutproductCustomer: TIntegerField
      FieldName = 'productCustomer'
    end
  end
  object SourceInvoiceOutmt: TDataSource
    DataSet = mtInvoiceOut
    Left = 120
    Top = 464
  end
end

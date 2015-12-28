object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 300
  Top = 130
  Height = 569
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
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'productCode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'productCount'
        DataType = ftFloat
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
      end
      item
        Name = 'productName'
        DataType = ftInteger
      end
      item
        Name = 'productNumber'
        DataType = ftInteger
      end
      item
        Name = 'productFullName'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'productStockName'
        DataType = ftString
        Size = 500
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
    object mtAddProductsproductName: TIntegerField
      FieldName = 'productName'
    end
    object mtAddProductsproductNumber: TIntegerField
      FieldName = 'productNumber'
    end
    object mtAddProductsproductFullName: TStringField
      FieldName = 'productFullName'
      Size = 1000
    end
    object mtAddProductsproductStockName: TStringField
      FieldName = 'productStockName'
      Size = 500
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
      '    STARTED = ?STARTED,'
      '    MFO = ?MFO,'
      '    EDRPOU = ?EDRPOU,'
      '    IPN = ?IPN,'
      '    ACCNUM = ?ACCNUM,'
      '    ACCBANK =ACCBANK,'
      '    ADDR2 = ?ADDR2,'
      '    SVIDNUM = ?SVIDNUM'
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
      '    STARTED,    '
      '    MFO,'
      '    EDRPOU,'
      '    IPN,'
      '    ACCNUM,'
      '    ACCBANK,'
      '    ADDR2,'
      '    SVIDNUM'
      ')values('
      '    ?ID,'
      '    ?Name,'
      '    ?phone,'
      '    ?ADDR1,'
      '    ?NDS,'
      '    ?STARTED,'
      '    ?MFO,'
      '    ?EDRPOU,'
      '    ?IPN,'
      '    ?ACCNUM,'
      '    ?ACCBANK,'
      '    ?ADDR2,'
      '    ?SVIDNUM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PHONE,'
      '    ADDR1,'
      '    NDS,'
      '    STARTED,'
      '    MFO,'
      '    EDRPOU,'
      '    IPN,'
      '    ACCNUM,'
      '    ACCBANK,'
      '    ADDR2,'
      '    SVIDNUM'
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
      '    STARTED,'
      '    MFO,'
      '    EDRPOU,'
      '    IPN,'
      '    ACCNUM,'
      '    ACCBANK,'
      '    ADDR2,'
      '    SVIDNUM'
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
    object tableStoksMFO: TFIBIntegerField
      FieldName = 'MFO'
    end
    object tableStoksEDRPOU: TFIBIntegerField
      FieldName = 'EDRPOU'
    end
    object tableStoksIPN: TFIBStringField
      FieldName = 'IPN'
      EmptyStrToNull = True
    end
    object tableStoksACCNUM: TFIBStringField
      FieldName = 'ACCNUM'
      Size = 50
      EmptyStrToNull = True
    end
    object tableStoksACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Size = 200
      EmptyStrToNull = True
    end
    object tableStoksADDR2: TFIBStringField
      FieldName = 'ADDR2'
      Size = 500
      EmptyStrToNull = True
    end
    object tableStoksSVIDNUM: TFIBIntegerField
      FieldName = 'SVIDNUM'
    end
  end
  object tableProducts: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUCTS set'
      '    NAME_ID = ?NAME_ID,'
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
      '    NAME_ID,'
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
      '    ?NAME_ID,'
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
      '    NAME_ID,'
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
      '    STOCK_ID,'
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    PRICE,'
      '    KOD,'
      '    TOTALPRICE,'
      '    REST_COUNT,'
      '    NAME_ID'
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
    object tableProductsREST_COUNT: TFIBIntegerField
      FieldName = 'REST_COUNT'
    end
    object tableProductsKOD: TFIBStringField
      FieldName = 'KOD'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProductsNAME_ID: TFIBIntegerField
      FieldName = 'NAME_ID'
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
    object tableClientsMFO: TFIBIntegerField
      FieldName = 'MFO'
    end
    object tableClientsACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Size = 50
      EmptyStrToNull = True
    end
    object tableClientsACCNUM: TFIBStringField
      FieldName = 'ACCNUM'
      Size = 50
      EmptyStrToNull = True
    end
    object tableClientsIPN: TFIBStringField
      FieldName = 'IPN'
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
      Size = 200
      EmptyStrToNull = True
    end
    object tableProvidersPOSTIND: TFIBIntegerField
      FieldName = 'POSTIND'
    end
    object tableProvidersADDR1: TFIBStringField
      FieldName = 'ADDR1'
      Size = 500
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
    object tableProvidersMFO: TFIBIntegerField
      FieldName = 'MFO'
    end
    object tableProvidersACCBANK: TFIBStringField
      FieldName = 'ACCBANK'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersACCNUMBER: TFIBStringField
      FieldName = 'ACCNUMBER'
      Size = 50
      EmptyStrToNull = True
    end
    object tableProvidersIPN: TFIBStringField
      FieldName = 'IPN'
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
    Left = 120
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
      '    NAME_ID = ?NAME_ID,'
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
      '    NAME_ID,'
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
      '    ?NAME_ID,'
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
      '    NAME_ID,'
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
      '    ARTICUL,'
      '    MEASURE,'
      '    KOLVO,'
      '    KOD,'
      '    EMPLOEE_ID,'
      '    PRICE,'
      '    NUMBER,'
      '    TOTALPRICE,'
      '    NAME_ID'
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
      DisplayFormat = 'dd.mm.yyyy'
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
    object tableInvoiceInKOD: TFIBStringField
      FieldName = 'KOD'
      Size = 50
      EmptyStrToNull = True
    end
    object tableInvoiceInNAME_ID: TFIBIntegerField
      FieldName = 'NAME_ID'
    end
  end
  object tableInvoiceOut: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DELIVERYOUT SET'
      '    CUSTOMER_ID = ?CUSTOMER_ID,'
      '    DATEOUT = ?DATEOUT,'
      '    ARTICUL = ?ARTICUL,'
      '    NAME_ID = ?NAME_ID,'
      '    "COUNT" = ?CNT,'
      '    MEASURE = ?MEASURE,'
      '    PRICE = ?PRICE,'
      '    CODE = ?CODE,'
      '    EMPLOEE_ID = ?EMPLOEE_ID,'
      '    NUMBER = ?NUMBER,'
      '    TOTALPRICE = ?TOTALPRICE'
      'WHERE ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM DELIVERYOUT WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO DELIVERYOUT('
      '    ID,'
      '    DATEOUT,'
      '    CUSTOMER_ID,'
      '    ARTICUL,'
      '    NAME_ID,'
      '    "COUNT",'
      '    MEASURE,'
      '    PRICE,'
      '    CODE,'
      '    EMPLOEE_ID,'
      '    NUMBER,'
      '    TOTALPRICE'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?DATEOUT,'
      '    ?CUSTOMER_ID,'
      '    ?ARTICUL,'
      '    ?NAME_ID,'
      '    ?"COUNT",'
      '    ?MEASURE,'
      '    ?PRICE,'
      '    ?CODE,'
      '    ?EMPLOEE_ID,'
      '    ?NUMBER,'
      '    ?TOTALPRICE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DATEOUT,'
      '    CUSTOMER_ID,'
      '    ARTICUL,'
      '    NAME_ID,'
      '    "COUNT",'
      '    MEASURE,'
      '    PRICE,'
      '    CODE,'
      '    EMPLOEE_ID,'
      '    NUMBER,'
      '    TOTALPRICE'
      'FROM'
      '    DELIVERYOUT '
      'WHERE '
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DATEOUT,'
      '    CUSTOMER_ID,'
      '    ARTICUL,'
      '    NAME_ID,'
      '    "COUNT",'
      '    MEASURE,'
      '    PRICE,'
      '    CODE,'
      '    EMPLOEE_ID,'
      '    NUMBER,'
      '    TOTALPRICE'
      'FROM'
      '    DELIVERYOUT '
      'WHERE CODE = ?CODE')
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
    object tableInvoiceOutDATEOUT: TFIBDateField
      FieldName = 'DATEOUT'
    end
    object tableInvoiceOutARTICUL: TFIBIntegerField
      FieldName = 'ARTICUL'
    end
    object tableInvoiceOutNAME_ID: TFIBIntegerField
      FieldName = 'NAME_ID'
    end
    object tableInvoiceOutCOUNT: TFIBIntegerField
      FieldName = 'COUNT'
    end
    object tableInvoiceOutMEASURE: TFIBStringField
      FieldName = 'MEASURE'
      Size = 100
      EmptyStrToNull = True
    end
    object tableInvoiceOutPRICE: TFIBFloatField
      FieldName = 'PRICE'
    end
    object tableInvoiceOutCODE: TFIBStringField
      FieldName = 'CODE'
      Size = 100
      EmptyStrToNull = True
    end
    object tableInvoiceOutEMPLOEE_ID: TFIBIntegerField
      FieldName = 'EMPLOEE_ID'
    end
    object tableInvoiceOutNUMBER: TFIBIntegerField
      FieldName = 'NUMBER'
    end
    object tableInvoiceOutTOTALPRICE: TFIBFloatField
      FieldName = 'TOTALPRICE'
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
      '    POSHTA = ?POSHTA,'
      '    USERNAME = ?USERNAME,'
      '    USERPASS = ?USERPASS,'
      '    ISADMIN = ?ISADMIN,'
      '    POST = ?POST,'
      '    STOCK_ID = ?STOCK_ID'
      'WHERE'
      '    ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM EMPLOYEE WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO EMPLOYEE('
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA,'
      '    USERNAME,'
      '    USERPASS,'
      '    ISADMIN,'
      '    POST,'
      '    STOCK_ID'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?NAME,'
      '    ?TELEPHONE,'
      '    ?POSHTA,'
      '    ?USERNAME,'
      '    ?USERPASS,'
      '    ?ISADMIN,'
      '    ?POST,'
      '    ?STOCK_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA,'
      '    USERNAME,'
      '    USERPASS,'
      '    ISADMIN,'
      '    POST,'
      '    STOCK_ID'
      'FROM'
      '    EMPLOYEE '
      'WHERE'
      '    ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    TELEPHONE,'
      '    POSHTA,'
      '    USERNAME,'
      '    USERPASS,'
      '    ISADMIN,'
      '    POST,'
      '    STOCK_ID'
      'FROM'
      '    EMPLOYEE '
      'ORDER BY ID')
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
    object tableEmploeeUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      EmptyStrToNull = True
    end
    object tableEmploeeUSERPASS: TFIBStringField
      FieldName = 'USERPASS'
      EmptyStrToNull = True
    end
    object tableEmploeeISADMIN: TFIBIntegerField
      FieldName = 'ISADMIN'
    end
    object tableEmploeePOST: TFIBStringField
      FieldName = 'POST'
      Size = 50
      EmptyStrToNull = True
    end
    object tableEmploeeSTOCK_ID: TFIBIntegerField
      FieldName = 'STOCK_ID'
    end
  end
  object mtInvoiceOut: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
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
        Name = 'productEmploee'
        DataType = ftInteger
      end
      item
        Name = 'productCustomer'
        DataType = ftInteger
      end
      item
        Name = 'productName'
        DataType = ftInteger
      end
      item
        Name = 'productNumber'
        DataType = ftInteger
      end
      item
        Name = 'productFullName'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'productStockName'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'productIPN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'productMFO'
        DataType = ftInteger
      end
      item
        Name = 'productAccNum'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'productAccBank'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'productAdres'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'productPhone'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'productEDRPOU'
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
    object mtInvoiceOutproductName: TIntegerField
      FieldName = 'productName'
    end
    object mtInvoiceOutproductNumber: TIntegerField
      FieldName = 'productNumber'
    end
    object mtInvoiceOutproductFullName: TStringField
      FieldName = 'productFullName'
      Size = 1000
    end
    object mtInvoiceOutproductStockName: TStringField
      FieldName = 'productStockName'
      Size = 500
    end
    object mtInvoiceOutproductIPN: TStringField
      FieldName = 'productIPN'
    end
    object mtInvoiceOutproductMFO: TIntegerField
      FieldName = 'productMFO'
    end
    object mtInvoiceOutproductAccNum: TStringField
      FieldName = 'productAccNum'
      Size = 50
    end
    object mtInvoiceOutproductAccBank: TStringField
      FieldName = 'productAccBank'
      Size = 50
    end
    object mtInvoiceOutproductAdres: TStringField
      FieldName = 'productAdres'
      Size = 200
    end
    object mtInvoiceOutproductPhone: TStringField
      FieldName = 'productPhone'
      Size = 50
    end
    object mtInvoiceOutproductEDRPOU: TIntegerField
      FieldName = 'productEDRPOU'
    end
  end
  object SourceInvoiceOutmt: TDataSource
    DataSet = mtInvoiceOut
    Left = 120
    Top = 464
  end
  object tableMoveStockPosition: TpFIBDataSet
    SelectSQL.Strings = (
      'Select * from Products where STOCK_ID <> ?stockId')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'PRODUCTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRODUCTS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRmovePosition
    Database = mainBase
    UpdateTransaction = TRMovePositionWS
    AutoCommit = True
    Filtered = True
    Left = 376
    Top = 32
    object tableMoveStockPositionID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableMoveStockPositionSTOCK_ID: TFIBIntegerField
      FieldName = 'STOCK_ID'
    end
    object tableMoveStockPositionARTICUL: TFIBIntegerField
      FieldName = 'ARTICUL'
    end
    object tableMoveStockPositionMEASURE: TFIBStringField
      FieldName = 'MEASURE'
      Size = 10
      EmptyStrToNull = True
    end
    object tableMoveStockPositionKOLVO: TFIBIntegerField
      FieldName = 'KOLVO'
    end
    object tableMoveStockPositionPRICE: TFIBFloatField
      FieldName = 'PRICE'
    end
    object tableMoveStockPositionKOD: TFIBStringField
      FieldName = 'KOD'
      Size = 50
      EmptyStrToNull = True
    end
    object tableMoveStockPositionTOTALPRICE: TFIBFloatField
      FieldName = 'TOTALPRICE'
    end
    object tableMoveStockPositionREST_COUNT: TFIBIntegerField
      FieldName = 'REST_COUNT'
    end
    object tableMoveStockPositionNAME_ID: TFIBIntegerField
      FieldName = 'NAME_ID'
    end
  end
  object TRmovePosition: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 544
    Top = 32
  end
  object TRMovePositionWS: TpFIBTransaction
    TimeoutAction = TARollback
    Left = 632
    Top = 32
  end
  object SourceMove: TDataSource
    DataSet = tableMoveStockPosition
    Left = 472
    Top = 32
  end
  object mtMoveProducts: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
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
        Name = 'MoveStock'
        DataType = ftInteger
      end
      item
        Name = 'moveCode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'moveTotalPrice'
        DataType = ftFloat
      end
      item
        Name = 'moveName'
        DataType = ftInteger
      end
      item
        Name = 'moveEmploee'
        DataType = ftInteger
      end
      item
        Name = 'moveNumber'
        DataType = ftInteger
      end
      item
        Name = 'moveFullName'
        DataType = ftString
        Size = 1000
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
    Left = 376
    Top = 88
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
    object mtMoveProductsmoveTotalPrice: TFloatField
      FieldName = 'moveTotalPrice'
    end
    object mtMoveProductsmoveName: TIntegerField
      FieldName = 'moveName'
    end
    object mtMoveProductsmoveEmploee: TIntegerField
      FieldName = 'moveEmploee'
    end
    object mtMoveProductsmoveNumber: TIntegerField
      FieldName = 'moveNumber'
    end
    object mtMoveProductsmoveFullName: TStringField
      FieldName = 'moveFullName'
      Size = 1000
    end
  end
  object SourceMovePositions: TDataSource
    DataSet = mtMoveProducts
    Left = 480
    Top = 88
  end
  object Autority_Table: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    *    '
      'FROM'
      '    EMPLOYEE ')
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrmainBase
    Database = mainBase
    AutoCommit = True
    Filtered = True
    Left = 376
    Top = 136
    object Autority_TableID: TFIBIntegerField
      FieldName = 'ID'
    end
    object Autority_TableNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object Autority_TableTELEPHONE: TFIBStringField
      FieldName = 'TELEPHONE'
      EmptyStrToNull = True
    end
    object Autority_TablePOSHTA: TFIBStringField
      FieldName = 'POSHTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Autority_TableUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      EmptyStrToNull = True
    end
    object Autority_TableUSERPASS: TFIBStringField
      FieldName = 'USERPASS'
      EmptyStrToNull = True
    end
    object Autority_TableISADMIN: TFIBIntegerField
      FieldName = 'ISADMIN'
    end
    object Autority_TablePOST: TFIBStringField
      FieldName = 'POST'
      Size = 50
      EmptyStrToNull = True
    end
    object Autority_TableSTOCK_ID: TFIBIntegerField
      FieldName = 'STOCK_ID'
    end
  end
  object pFIBUpdateObject1: TpFIBUpdateObject
    Transaction = TrmainBase
    Database = mainBase
    DataSet = Autority_Table
    OrderInList = 0
    Left = 488
    Top = 136
  end
  object tableNames: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODNAMES SET NAME = ?NAME WHERE ID = ?OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM PRODNAMES WHERE ID = ?OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PRODNAMES('
      '    ID,'
      '    NAME'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?NAME'
      ')'
      '    ')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME'
      'FROM'
      '    PRODNAMES'
      'WHERE ID = ?OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME'
      'FROM'
      '    PRODNAMES ')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'PRODNAMES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.GeneratorName = 'GEN_PRODNAMES_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRName
    Database = mainBase
    UpdateTransaction = TrNameWS
    AutoCommit = True
    Filtered = True
    Left = 376
    Top = 192
    object tableNamesID: TFIBIntegerField
      FieldName = 'ID'
    end
    object tableNamesNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 1000
      EmptyStrToNull = True
    end
  end
  object TRName: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 528
    Top = 192
  end
  object TrNameWS: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 592
    Top = 192
  end
  object SourceName: TDataSource
    DataSet = tableNames
    Left = 456
    Top = 192
  end
  object Table_NewInvoice: TkbmMemTable
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
    Left = 368
    Top = 320
  end
  object kbmThreadDataSet1: TkbmThreadDataSet
    Dataset = Table_NewInvoice
    Left = 472
    Top = 320
  end
  object NewInvoice: TDataSource
    DataSet = Table_NewInvoice
    Left = 552
    Top = 320
  end
end

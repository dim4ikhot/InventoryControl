object DM: TDM
  OldCreateOrder = False
  Left = 426
  Top = 172
  Height = 449
  Width = 761
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
    Left = 24
    Top = 248
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
  end
  object mainBase: TpFIBDatabase
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    DefaultTransaction = TrmainBase
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    WaitForRestoreConnect = 0
    Left = 24
    Top = 8
  end
  object tableStoks: TpFIBDataSet
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRStoks
    Database = mainBase
    UpdateTransaction = TrStoksUPD
    AutoCommit = True
    Left = 24
    Top = 56
  end
  object tableProducts: TpFIBDataSet
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrProducts
    Database = mainBase
    UpdateTransaction = TrProductsUpd
    AutoCommit = True
    Left = 24
    Top = 104
  end
  object tableClients: TpFIBDataSet
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrClients
    Database = mainBase
    UpdateTransaction = TrClientsUpd
    AutoCommit = True
    Left = 24
    Top = 152
  end
  object tableProviders: TpFIBDataSet
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TrProviders
    Database = mainBase
    UpdateTransaction = TrProvidersUpd
    AutoCommit = True
    Left = 24
    Top = 200
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
    Left = 96
    Top = 248
  end
  object TrmainBase: TpFIBTransaction
    DefaultDatabase = mainBase
    TimeoutAction = TARollback
    Left = 96
    Top = 8
  end
end

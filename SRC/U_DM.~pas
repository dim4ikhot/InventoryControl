unit U_DM;

interface

uses
  SysUtils, Classes, DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, kbmMemTable, pFIBQuery, siComp, IniFiles, Forms, FIBQuery;

type
  TDM = class(TDataModule)
    SourceStocks: TDataSource;
    SourceProducts: TDataSource;
    SourceClients: TDataSource;
    SourceProviders: TDataSource;
    mtAddProducts: TkbmMemTable;
    mainBase: TpFIBDatabase;
    tableStoks: TpFIBDataSet;
    tableProducts: TpFIBDataSet;
    tableClients: TpFIBDataSet;
    tableProviders: TpFIBDataSet;
    TRStoks: TpFIBTransaction;
    TrStoksUPD: TpFIBTransaction;
    TrProducts: TpFIBTransaction;
    TrProductsUpd: TpFIBTransaction;
    TrClients: TpFIBTransaction;
    TrClientsUpd: TpFIBTransaction;
    TrProviders: TpFIBTransaction;
    TrProvidersUpd: TpFIBTransaction;
    SourceAddProducts: TDataSource;
    mtAddProductsproductCode: TStringField;
    mtAddProductsproductCount: TFloatField;
    mtAddProductsproductMeasured: TStringField;
    mtAddProductsproductPrice: TFloatField;
    mtAddProductsproductTotalPrice: TFloatField;
    TrmainBase: TpFIBTransaction;
    mtAddProductsproductStock: TIntegerField;
    mtAddProductsproductProvider: TIntegerField;
    ProgramLangs: TsiLangDispatcher;
    tableStoksNAME: TFIBStringField;
    tableStoksPHONE: TFIBStringField;
    tableStoksADDR1: TFIBStringField;
    tableStoksID: TFIBIntegerField;
    tableProductsID: TFIBIntegerField;
    tableProductsSTOCK_ID: TFIBIntegerField;
    tableProductsARTICUL: TFIBIntegerField;
    tableProductsMEASURE: TFIBStringField;
    tableProductsKOLVO: TFIBIntegerField;
    tableProductsPRICE: TFIBFloatField;
    tableClientsID: TFIBIntegerField;
    tableClientsNAME: TFIBStringField;
    tableClientsADDR1: TFIBStringField;
    tableClientsPHONE: TFIBStringField;
    tableClientsPHONEFAX: TFIBStringField;
    tableClientsACCPERSON: TFIBStringField;
    tableClientsACCBOSS: TFIBStringField;
    tableClientsEDRPOU: TFIBIntegerField;
    tableClientsMFO: TFIBIntegerField;
    tableClientsACCBANK: TFIBStringField;
    tableProvidersID: TFIBIntegerField;
    tableProvidersNAME: TFIBStringField;
    tableProvidersPOSTIND: TFIBIntegerField;
    tableProvidersADDR1: TFIBStringField;
    tableProvidersPHONE: TFIBStringField;
    tableProvidersPHONEFAX: TFIBStringField;
    tableProvidersPHONEMOBILE: TFIBStringField;
    tableProvidersBOSS: TFIBStringField;
    tableProvidersCONTACTOR: TFIBStringField;
    tableProvidersCONT_POST: TFIBStringField;
    tableProvidersEDRPOU: TFIBIntegerField;
    tableProvidersMFO: TFIBIntegerField;
    tableProvidersACCBANK: TFIBStringField;
    tableInvoiceIn: TpFIBDataSet;
    tableInvoiceOut: TpFIBDataSet;
    trInvoiceIn: TpFIBTransaction;
    trInvoiceInWS: TpFIBTransaction;
    trInvoiceOut: TpFIBTransaction;
    trInvoiceOutWS: TpFIBTransaction;
    SourceInvoiceIn: TDataSource;
    SourceInvoiceOut: TDataSource;
    tableInvoiceInID: TFIBIntegerField;
    tableInvoiceInDATEIN: TFIBDateField;
    tableInvoiceInPROVIDER_ID: TFIBIntegerField;
    tableInvoiceInARTICUL: TFIBIntegerField;
    tableInvoiceInMEASURE: TFIBStringField;
    tableInvoiceInKOLVO: TFIBIntegerField;
    tableInvoiceInEMPLOEE_ID: TFIBIntegerField;
    tableInvoiceInPRICE: TFIBFloatField;
    tableInvoiceInNUMBER: TFIBIntegerField;
    tableInvoiceOutID: TFIBIntegerField;
    tableInvoiceOutCUSTOMER_ID: TFIBIntegerField;
    tableStoksNDS: TFIBFloatField;
    tableStoksSTARTED: TFIBSmallIntField;
    tableProductsTOTALPRICE: TFIBFloatField;
    tableInvoiceInTOTALPRICE: TFIBFloatField;
    TrEmploee: TpFIBTransaction;
    TrEmploeeUpd: TpFIBTransaction;
    SourceEmploee: TDataSource;
    tableEmploee: TpFIBDataSet;
    tableEmploeeID: TFIBIntegerField;
    tableEmploeeNAME: TFIBStringField;
    tableEmploeeTELEPHONE: TFIBStringField;
    tableEmploeePOSHTA: TFIBStringField;
    tableProductsREST_COUNT: TFIBIntegerField;
    tableProductsKOD: TFIBStringField;
    tableInvoiceInKOD: TFIBStringField;
    mtAddProductsproductEmploee: TIntegerField;
    mtInvoiceOut: TkbmMemTable;
    SourceInvoiceOutmt: TDataSource;
    mtInvoiceOutproductCustomer: TIntegerField;
    mtInvoiceOutproductCode: TStringField;
    mtInvoiceOutproductCount: TIntegerField;
    mtInvoiceOutproductMeasured: TStringField;
    mtInvoiceOutproductPrice: TFloatField;
    mtInvoiceOutproductTotalPrice: TFloatField;
    mtInvoiceOutproductStock: TIntegerField;
    mtInvoiceOutproductEmploee: TIntegerField;

    tableMoveStockPosition: TpFIBDataSet;
    TRmovePosition: TpFIBTransaction;
    TRMovePositionWS: TpFIBTransaction;
    SourceMove: TDataSource;
    tableMoveStockPositionID: TFIBIntegerField;
    tableMoveStockPositionSTOCK_ID: TFIBIntegerField;
    tableMoveStockPositionARTICUL: TFIBIntegerField;
    tableMoveStockPositionMEASURE: TFIBStringField;
    tableMoveStockPositionKOLVO: TFIBIntegerField;
    tableMoveStockPositionPRICE: TFIBFloatField;
    tableMoveStockPositionKOD: TFIBStringField;
    tableMoveStockPositionTOTALPRICE: TFIBFloatField;
    tableMoveStockPositionREST_COUNT: TFIBIntegerField;
    mtMoveProducts: TkbmMemTable;
    mtMoveProductsmoveCount: TIntegerField;
    mtMoveProductsmoveMeasured: TStringField;
    mtMoveProductsmovePrice: TFloatField;
    mtMoveProductsMoveStock: TIntegerField;
    mtMoveProductsmoveCode: TStringField;
    SourceMovePositions: TDataSource;
    mtMoveProductsmoveTotalPrice: TFloatField;
    //added by Tolik
    Autority_Table: TpFIBDataSet;
    pFIBUpdateObject1: TpFIBUpdateObject;
    tableProvidersACCNUMBER: TFIBStringField;
    tableClientsACCNUM: TFIBStringField;
    tableClientsIPN: TFIBStringField;
    tableProvidersIPN: TFIBStringField;
    tableNames: TpFIBDataSet;
    TRName: TpFIBTransaction;
    TrNameWS: TpFIBTransaction;
    SourceName: TDataSource;
    tableNamesID: TFIBIntegerField;
    tableNamesNAME: TFIBStringField;
    tableProductsNAME_ID: TFIBIntegerField;
    mtAddProductsproductName: TIntegerField;
    tableInvoiceInNAME_ID: TFIBIntegerField;
    mtInvoiceOutproductName: TIntegerField;
    mtMoveProductsmoveName: TIntegerField;

    tableEmploeeUSERNAME: TFIBStringField;
    tableEmploeeUSERPASS: TFIBStringField;
    tableEmploeeISADMIN: TFIBIntegerField;
    tableEmploeePOST: TFIBStringField;

    Table_NewInvoice: TkbmMemTable;
    kbmThreadDataSet1: TkbmThreadDataSet;
    NewInvoice: TDataSource;
	tableProductsSelect: TpFIBDataSet;
	DataSource_ProductsSelect: TDataSource;
	tableProductsSelectNAME: TFIBStringField;
	tableProductsSelectMEASURE: TFIBStringField;
	tableProductsSelectKOLVO: TFIBIntegerField;
	tableProductsSelectPRICE: TFIBFloatField;
	tableProductsSelectARTICUL: TFIBIntegerField;
	tableProductsSelectKOD: TFIBStringField;
	Table_NewInvoiceNpp: TIntegerField;
	Table_NewInvoiceName: TStringField;
	Table_NewInvoicemeasure: TStringField;
	Table_NewInvoicekolvo: TIntegerField;
	Table_NewInvoicePrice: TCurrencyField;
	Table_NewInvoiceRowsum: TCurrencyField;
    mtAddProductsproductNumber: TIntegerField;
    mtAddProductsproductFullName: TStringField;
    tableInvoiceOutDATEOUT: TFIBDateField;
    tableInvoiceOutARTICUL: TFIBIntegerField;
    tableInvoiceOutNAME_ID: TFIBIntegerField;
    tableInvoiceOutCOUNT: TFIBIntegerField;
    tableInvoiceOutMEASURE: TFIBStringField;
    tableInvoiceOutPRICE: TFIBFloatField;
    tableInvoiceOutCODE: TFIBStringField;
    tableInvoiceOutEMPLOEE_ID: TFIBIntegerField;
    tableInvoiceOutNUMBER: TFIBIntegerField;
    mtInvoiceOutproductNumber: TIntegerField;
    mtInvoiceOutproductFullName: TStringField;
    tableInvoiceOutTOTALPRICE: TFIBFloatField;
    tableMoveStockPositionNAME_ID: TFIBIntegerField;
    mtMoveProductsmoveEmploee: TIntegerField;
    mtMoveProductsmoveNumber: TIntegerField;
    mtMoveProductsmoveFullName: TStringField;
    mtInvoiceOutproductStockName: TStringField;
    mtInvoiceOutproductIPN: TStringField;
    mtInvoiceOutproductMFO: TIntegerField;
    mtInvoiceOutproductAccNum: TStringField;
    mtInvoiceOutproductAccBank: TStringField;
    mtInvoiceOutproductAdres: TStringField;
    mtInvoiceOutproductPhone: TStringField;
    mtInvoiceOutproductEDRPOU: TIntegerField;
    tableStoksMFO: TFIBIntegerField;
    tableStoksEDRPOU: TFIBIntegerField;
    tableStoksIPN: TFIBStringField;
    tableStoksACCNUM: TFIBStringField;
    tableStoksACCBANK: TFIBStringField;
    mtAddProductsproductStockName: TStringField;
    tableStoksADDR2: TFIBStringField;
    tableStoksSVIDNUM: TFIBIntegerField;
    tableEmploeeSTOCK_ID: TFIBIntegerField;
    Autority_TableID: TFIBIntegerField;
    Autority_TableNAME: TFIBStringField;
    Autority_TableTELEPHONE: TFIBStringField;
    Autority_TablePOSHTA: TFIBStringField;
    Autority_TableUSERNAME: TFIBStringField;
    Autority_TableUSERPASS: TFIBStringField;
    Autority_TableISADMIN: TFIBIntegerField;
    Autority_TablePOST: TFIBStringField;
    Autority_TableSTOCK_ID: TFIBIntegerField;
    TableMaxInvoiceNumber: TpFIBDataSet;
    Table_Invoices: TpFIBDataSet;
    Table_Clients: TpFIBDataSet;
    DataSource1: TDataSource;


    procedure DataModuleCreate(Sender: TObject);
    procedure tableStoksAfterScroll(DataSet: TDataSet);
    procedure Table_NewInvoiceAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function CreateFIBQuery: TpFIBQuery;
    procedure DestroyFIBQuery(var AQuery: TpFIBQuery);
    function CheckForBasePath:Boolean;
    function ConnectToBase(basePath: String): Boolean;
    { Public declarations }
  end;

var
  DM: TDM;
  BasePath, ServerName:string;
implementation

uses U_BaseConnection,U_MessageCP,U_Common,U_Main, U_InOrder;

{$R *.dfm}
function TDM.CreateFIBQuery: TpFIBQuery;                                  // Создаем временный Query.
var
  TrTempQuery: TpFIBTransaction;
begin
  Result := TpFIBQuery.Create(DM);
  TrTempQuery := TpFIBTransaction.Create(DM);
  Result.Database := MainBase;
  TrTempQuery.DefaultDatabase := MainBase;
  Result.Transaction := TrTempQuery;
  TrTempQuery.Active := True;
end;

procedure TDM.DestroyFIBQuery(var AQuery: TpFIBQuery);                    // Убиваем временный Query.
begin
  if AQuery.Transaction <> nil then
    AQuery.Transaction.Free;
  FreeAndNil(AQuery);
end;

function TDM.CheckForBasePath: Boolean;
var
   ini: TIniFile;
   showformConn: Boolean;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\settings.ini');
  showformConn := Ini.ReadBool('ProgramSettings','ShowFormConnection',True);
  BasePath := ini.ReadString('ProgramSettings','BasePath','');
  ServerName := ini.ReadString('ProgramSettings','ServerName','');
  FreeAndNil(ini);
  Result := showformConn;
  if ((not Result )and (BasePath = ''))or(not FileExists(BasePath)) then
    Result := True;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if CheckForBasePath then
  begin
    try
      Application.CreateForm(TF_BaseConnection, F_BaseConnection);
      F_BaseConnection.ShowModal;
    finally
      FreeAndNil(F_BaseConnection);
    end;
  end
  else
  begin
    //Base connect
    if not ConnectToBase(ServerName +':'+BasePath) then
    begin
      try
        Application.CreateForm(TF_BaseConnection, F_BaseConnection);
        F_BaseConnection.ShowModal;
      finally
        FreeAndNil(F_BaseConnection);
      end;
    end;
  end;
end;

function TDM.ConnectToBase(basePath: String): Boolean;
var
  Server, Local: String;
begin
  MainBase.LibraryName := ExtractFilePath(Application.ExeName) + 'Gds32.dll';
  MainBase.Connected := False;
  Result := MainBase.Connected;
  ExtractServerName(basePath, Server, Local);                                  // Делим строку на имя серва и путь к базе.
  if trim(Server) <> '' then                                                   // Если удаленно тогда дописывать ":"
    Server := Server + ':';
  MainBase.DBName := Server + Local;                                           // Указываем имя к базе.
  try
    MainBase.Connected := True;
    Result := MainBase.Connected;
    TrmainBase.Active := True;

    //Table Stock
    tableStoks.Active := True;
    TRStoks.Active := True;
    TrStoksUPD.Active := True;

    //table Products
    tableProducts.Active := True;
    TrProducts.Active := True;
    TrProductsUpd.Active := True;

    //table Cliesnts
    tableClients.Active := true;
    TrClients.Active := true;
    TrClientsUpd.Active := True;

    //table Providers
    tableProviders.Active := True;
    TrProviders.Active := True;
    TrProvidersUpd.Active:= True;

    //table invoice in
    tableInvoiceIn.Active := True;
    trInvoiceIn.Active := True;
    trInvoiceInWS.Active := True;

    //table invoice out
    tableInvoiceOut.Active := True;
    trInvoiceOut.Active := True;
    trInvoiceOutWS.Active := True;

    //table emploee
    tableEmploee.Active := True;
    TrEmploee.Active := True;
    TrEmploeeUpd.Active := True;

    //table NAMES
    tableNames.Active := True;
    TRName.Active := True;
    TrNameWS.Active := True;

  except
    ShowMessagerCP('Ошибка...','Невозможно подключиться к базе.Желаете проверить правильность пути?',mtError,[mbYes,mbNo]);
    Result := False;
  end;
end;

procedure TDM.tableStoksAfterScroll(DataSet: TDataSet);
begin
  if Assigned(F_main) then
  begin
    F_main.StartStock.Visible := DataSet.FieldByName('STARTED').AsInteger = 0;
    F_main.removeStock.Visible := DataSet.FieldByName('STARTED').AsInteger = 0;
    F_Main.MoveToStock.Visible := DataSet.FieldByName('STARTED').AsInteger <> 0;
  end;
end;

procedure TDM.Table_NewInvoiceAfterPost(DataSet: TDataSet);
begin
  Table_NewInvoice.Edit;
  Table_NewInvoice.Fields.FieldByName('Npp').AsInteger := Table_NewInvoice.RecNo; 
  Table_NewInvoice.Fields.FieldByName('RowSum').AsCurrency :=
  Table_NewInvoice.Fields.Fields[3].Value * Table_NewInvoice.Fields.Fields[4].Value;
end;

end.

unit U_DM;

interface

uses
  SysUtils, Classes, DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, kbmMemTable, pFIBQuery, siComp, IniFiles, Forms;

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
    mtAddProductsproductName: TStringField;
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
    tableProductsNAME_ID: TFIBIntegerField;
    tableProductsSTOCK_ID: TFIBIntegerField;
    tableProductsARTICUL: TFIBIntegerField;
    tableProductsMEASURE: TFIBStringField;
    tableProductsKOLVO: TFIBIntegerField;
    tableProductsPRICE: TFIBFloatField;
    tableProductsKOD: TFIBIntegerField;
    tableClientsID: TFIBIntegerField;
    tableClientsNAME: TFIBStringField;
    tableClientsADDR1: TFIBStringField;
    tableClientsPHONE: TFIBStringField;
    tableClientsPHONEFAX: TFIBStringField;
    tableClientsACCNUM: TFIBIntegerField;
    tableClientsACCPERSON: TFIBStringField;
    tableClientsACCBOSS: TFIBStringField;
    tableClientsEDRPOU: TFIBIntegerField;
    tableClientsIPN: TFIBIntegerField;
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
    tableProvidersIPN: TFIBIntegerField;
    tableProvidersMFO: TFIBIntegerField;
    tableProvidersACCNUMBER: TFIBIntegerField;
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
    tableInvoiceInNAME_ID: TFIBIntegerField;
    tableInvoiceInARTICUL: TFIBIntegerField;
    tableInvoiceInMEASURE: TFIBStringField;
    tableInvoiceInKOLVO: TFIBIntegerField;
    tableInvoiceInKOD: TFIBIntegerField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure tableStoksAfterScroll(DataSet: TDataSet);
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

uses U_BaseConnection,U_MessageCP,U_Common,U_Main;

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
  if (not Result )and (BasePath = '') then
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
    MainBase.LibraryName := ExtractFilePath(Application.ExeName) + 'Gds32.dll';
    ConnectToBase(ServerName +':'+BasePath);
  end;
end;

function TDM.ConnectToBase(basePath: String): Boolean;
var
  Server, Local: String;
begin
  MainBase.Connected := False;
  Result := MainBase.Connected;
  ExtractServerName(basePath, Server, Local);                                  // Делим строку на имя серва и путь к базе.
  if trim(Server) <> '' then                                                   // Если удаленно тогда дописывать ":"
    Server := Server + ':';
  MainBase.DBName := Server + Local;                                           // Указываем имя к базе.
  try
    MainBase.Connected := True;
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
    
  except
    ShowMessagerCP('','',mtError,[mbYes,mbNo]);
  end;
end;

procedure TDM.tableStoksAfterScroll(DataSet: TDataSet);
begin
  if Assigned(F_main) then
    F_main.BtnStartStock.Visible := DataSet.FieldByName('STARTED').AsInteger = 0;
end;

end.

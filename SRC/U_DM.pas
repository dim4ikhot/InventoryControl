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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function CreateFIBQuery: TpFIBQuery;
    procedure DestroyFIBQuery(var AQuery: TpFIBQuery);
    function CheckForBasePath:Boolean;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses U_BaseConnection;

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
   BasePath, ServerName:string;
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
  end;
end;

end.

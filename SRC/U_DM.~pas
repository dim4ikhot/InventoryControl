unit U_DM;

interface

uses
  SysUtils, Classes, DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, kbmMemTable, pFIBQuery;

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
  private
    { Private declarations }
  public
    function CreateFIBQuery: TpFIBQuery;
    procedure DestroyFIBQuery(var AQuery: TpFIBQuery);
    { Public declarations }
  end;

var
  DM: TDM;

implementation

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

end.

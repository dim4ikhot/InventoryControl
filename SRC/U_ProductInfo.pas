unit U_ProductInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, ExtCtrls, RzPanel, StdCtrls,
  RzLabel, Mask, RzEdit,U_DM, siComp, siLngLnk;

type
  TF_ProductInfo = class(TForm)
    infoProductName: TRzEdit;
    infoProductCode: TRzEdit;
    infoProductMeasured: TRzEdit;
    infoProductTotalPrice: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    infoProductStock: TRzEdit;
    infoProductProvider: TRzEdit;
    infoProductAddDate: TRzEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    RzBitBtn1: TRzBitBtn;
    InfoProductOut: TDBGridEh;
    infoProductCount: TRzEdit;
    infoProductPrice: TRzEdit;
    LangInfo: TsiLangLinked;
    infoProductEmploee: TRzEdit;
    RzLabel10: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure InfoProductOutDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function findItenInKeyList(stockID: Integer):Integer;


var
  F_ProductInfo: TF_ProductInfo;

implementation

uses U_Main, DB;

{$R *.dfm}

function findItenInKeyList(stockID: Integer):Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to F_Main.GridProducts.Columns[7].KeyList.Count -1 do
  begin
    if F_Main.GridProducts.Columns[7].KeyList[i] = IntToStr(stockID) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TF_ProductInfo.FormCreate(Sender: TObject);
begin
  DM.tableInvoiceIn.Locate('KOD',DM.tableProductsKOD.AsInteger,[]);
  DM.tableNames.Locate('ID', DM.tableProductsNAME_ID.AsInteger, []);
  infoProductName.Text := DM.tableNamesNAME.AsString; //DM.tableProductsNAME_ID.AsString;
  infoProductCode.Text := DM.tableProductsKOD.AsString;
  infoProductMeasured.Text := DM.tableProductsMEASURE.AsString;
  infoProductTotalPrice.Text := DM.tableProductsTOTALPRICE.AsString;
  infoProductAddDate.Text := DM.tableInvoiceInDATEIN.AsString;
  infoProductCount.Text := DM.tableProductsKOLVO.AsString;
  infoProductPrice.Text := DM.tableProductsPRICE.AsString;
  infoProductStock.Text := F_Main.GridProducts.Columns[7].PickList.
                                     Strings[findItenInKeyList(DM.tableProductsSTOCK_ID.AsInteger)];
  DM.tableProviders.Locate('ID', DM.tableInvoiceInPROVIDER_ID.AsInteger,[]);
  infoProductProvider.Text := DM.tableProvidersNAME.AsString;

  DM.tableEmploee.Locate('ID', DM.tableInvoiceInEMPLOEE_ID.AsInteger,[]);
  infoProductEmploee.Text := DM.tableEmploeeNAME.AsString;

  DM.tableInvoiceOut.Active := False;
  DM.tableInvoiceOut.ParamByName('CODE').AsString :=  DM.tableProductsKOD.AsString;
  DM.tableInvoiceOut.Active := True;

  Dm.tableClients.First;
  while not Dm.tableClients.Eof do
  begin
    InfoProductOut.Columns[2].KeyList.Add(Dm.tableClientsID.AsString);
    InfoProductOut.Columns[2].PickList.Add(Dm.tableClientsNAME.AsString);
    Dm.tableClients.Next;
  end;
end;

procedure TF_ProductInfo.InfoProductOutDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // ’‡- ı‡ - ı‡ ¡À¿!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));
end;

end.

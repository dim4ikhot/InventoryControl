unit U_ProductsOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,U_DM, siComp, siLngLnk, RzButton, ExtCtrls, RzPanel,U_Main;

type
  TF_ProductsOut = class(TForm)
    RzPanel1: TRzPanel;
    AddSelectedProducts: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    LangInvoiceOut: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddSelectedProductsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProductsOut: TF_ProductsOut;
  F_MoveToStock: TF_ProductsOut;

implementation

uses U_InvoiceIn;
{$R *.dfm}

procedure TF_ProductsOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_Main.GridProducts.Parent := F_Main.TabProducts;
  F_Main.PanelSettingsProduct.Parent := F_Main.TabProducts;
  F_Main.GBLists.Visible := True;
  F_Main.stockFilter.Enabled := True;
  F_Main.stockFilter.ItemIndex := 0;
  DM.tableProducts.Filtered := False;
//  F_Main.GBReports.Visible := True;
  if F_MoveToStock <> nil then
    F_Main.GridProducts.DataSource := DM.SourceProducts;
end;

procedure TF_ProductsOut.AddSelectedProductsClick(Sender: TObject);
var
  i: Integer;
begin
  if F_ProductsOut <> nil then
  begin
    if not DM.mtInvoiceOut.Active then
      DM.mtInvoiceOut.Active := True;
    for i:= 0 to F_Main.GridProducts.SelectedRows.Count - 1 do
    begin
      DM.tableProducts.Bookmark := F_Main.GridProducts.SelectedRows[i];

      DM.mtInvoiceOut.Append;
      DM.mtInvoiceOut.Edit;
      DM.mtInvoiceOutproductName.AsInteger := DM.tableProductsNAME_ID.AsInteger;
      DM.tableNames.Locate('ID',DM.tableProductsNAME_ID.AsInteger, []);
      DM.mtInvoiceOutproductFullName.AsString := DM.tableNamesNAME.AsString;
      DM.mtInvoiceOutproductCustomer.AsInteger := DM.tableClientsID.AsInteger;
      DM.mtInvoiceOutproductCode.asstring := DM.tableProductsKOD.AsString;
      DM.mtInvoiceOutproductCount.asinteger := DM.tableProductsREST_COUNT.AsInteger;
      DM.mtInvoiceOutproductMeasured.asString := DM.tableProductsMEASURE.AsString;
      DM.mtInvoiceOutproductPrice.asfloat := DM.tableProductsPRICE.AsFloat;
      DM.mtInvoiceOutproductTotalPrice.AsFloat := DM.tableProductsREST_COUNT.AsInteger *
                                                                  DM.tableProductsPRICE.AsFloat;
      DM.mtInvoiceOutproductStock.AsInteger := DM.tableProductsSTOCK_ID.AsInteger;
      if DM.tableStoks.Locate('ID',DM.tableProductsSTOCK_ID.AsInteger, []) then
      begin
        DM.mtInvoiceOutproductStockName.AsString := DM.tableStoksNAME.AsString;

        DM.mtInvoiceOutproductMFO.AsInteger := DM.tableStoksMFO.AsInteger;
        DM.mtInvoiceOutproductAccNum.AsString := DM.tableStoksACCNUM.AsString;
        DM.mtInvoiceOutproductEDRPOU.AsInteger := DM.tableStoksEDRPOU.AsInteger;
        DM.mtInvoiceOutproductAccBank.AsString := DM.tableStoksACCBANK.AsString;
        DM.mtInvoiceOutproductAdres.AsString := DM.tableStoksADDR1.AsString;
        if DM.tableEmploee.Locate('STOCK_ID',DM.tableStoksID.AsInteger,[]) then
          DM.mtInvoiceOutproductPhone.AsString := DM.tableEmploeeTELEPHONE.AsString;
      end;

  //    DM.mtInvoiceOutproductEmploee.AsInteger :=
      DM.mtInvoiceOut.Post;
    end;
  end
  else
  begin
    if not DM.mtMoveProducts.Active then
      DM.mtMoveProducts.Active := True;

    for i:= 0 to F_Main.GridProducts.SelectedRows.Count - 1 do
    begin
      if F_Main.GridProducts.DataSource.DataSet.Name = 'tableProducts' then
        DM.tableProducts.Bookmark := F_Main.GridProducts.SelectedRows[i]
      else
        DM.tableMoveStockPosition.Bookmark := F_Main.GridProducts.SelectedRows[i];

      DM.mtMoveProducts.Append;
      DM.mtMoveProducts.Edit;
      DM.mtMoveProductsmoveName.AsInteger := DM.tableMoveStockPositionNAME_ID.AsInteger;
      //DM.mtMoveProductsmoveCustomer.AsInteger := DM.tableClientsID.AsInteger;
      DM.mtMoveProductsmoveCode.asstring := DM.tableMoveStockPositionKOD.AsString;
      DM.mtMoveProductsmoveCount.asinteger := DM.tableMoveStockPositionKOLVO.AsInteger;
      DM.mtMoveProductsmoveMeasured.asString := DM.tableMoveStockPositionMEASURE.AsString;
      DM.mtMoveProductsmovePrice.asfloat := DM.tableMoveStockPositionPRICE.AsFloat;
      DM.mtMoveProductsmoveTotalPrice.AsFloat := DM.tableMoveStockPositionTOTALPRICE.AsFloat;
      DM.mtMoveProductsMoveStock.AsInteger := DM.tableMoveStockPositionSTOCK_ID.AsInteger;
  //    DM.mtInvoiceOutproductEmploee.AsInteger :=
      DM.mtMoveProducts.Post;
    end;
  end;
end;

end.

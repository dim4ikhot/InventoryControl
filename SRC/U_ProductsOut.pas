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

implementation

uses U_InvoiceIn;
{$R *.dfm}

procedure TF_ProductsOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_Main.GridProducts.Parent := F_Main.TabProducts;
  F_Main.PanelSettingsProduct.Parent := F_Main.TabProducts;
  F_Main.GBReports.Visible := True;
end;

procedure TF_ProductsOut.AddSelectedProductsClick(Sender: TObject);
var
  i: Integer;
begin
  if not DM.mtInvoiceOut.Active then
    DM.mtInvoiceOut.Active := True;
  for i:= 0 to F_Main.GridProducts.SelectedRows.Count - 1 do
  begin
    DM.tableProducts.Bookmark := F_Main.GridProducts.SelectedRows[i];

    DM.mtInvoiceOut.Append;
    DM.mtInvoiceOut.Edit;
    DM.mtInvoiceOutproductName.AsString := DM.tableProductsNAME.AsString;
    DM.mtInvoiceOutproductCustomer.AsInteger := DM.tableClientsID.AsInteger;
    DM.mtInvoiceOutproductCode.asstring := DM.tableProductsKOD.AsString;
    DM.mtInvoiceOutproductCount.asinteger := DM.tableProductsKOLVO.AsInteger;
    DM.mtInvoiceOutproductMeasured.asString := DM.tableProductsMEASURE.AsString;
    DM.mtInvoiceOutproductPrice.asfloat := DM.tableProductsPRICE.AsFloat;
    DM.mtInvoiceOutproductTotalPrice.AsFloat := DM.tableProductsTOTALPRICE.AsFloat;
    DM.mtInvoiceOutproductStock.AsInteger := DM.tableProductsSTOCK_ID.AsInteger;
//    DM.mtInvoiceOutproductEmploee.AsInteger :=
    DM.mtInvoiceOut.Post;
  end;

end;

end.

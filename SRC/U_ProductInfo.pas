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
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function findItenInKeyList(stockID: Integer):Integer;


var
  F_ProductInfo: TF_ProductInfo;

implementation

uses U_Main;

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
  infoProductCode.Text := IntToStr(DM.tableProductsKOD.AsInteger);
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
end;

end.

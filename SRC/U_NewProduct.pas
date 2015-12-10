unit U_NewProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzSpnEdt, StdCtrls, Mask, RzEdit, RzLabel,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzCmboBx,
  ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh, DBGridEh, U_DM, U_Common,
  pFibQuery, siComp, siLngLnk;

type
  TF_NewProduct = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    ProductName: TRzEdit;
    ProductCode: TRzEdit;
    ProductMeasured: TRzEdit;
    ProductCount: TRzSpinEdit;
    ProductPrice: TRzSpinEdit;
    ProductTotalPrice: TRzEdit;
    RzLabel6: TRzLabel;
    cancelProduct: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    CBAllStocks: TRzComboBox;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    CBAllProviders: TRzComboBox;
    AddToMemTable: TRzBitBtn;
    LangNewProduct: TsiLangLinked;
    RzLabel9: TRzLabel;
    invoiceNumber: TRzEdit;
    procedure AddToMemTableClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ProductCountChange(Sender: TObject);
    procedure ProductCountButtonClick(Sender: TObject;
      Button: TSpinButtonType);
    procedure ProductPriceButtonClick(Sender: TObject;
      Button: TSpinButtonType);
    procedure ProductPriceChange(Sender: TObject);
    procedure GridNewProductsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NewProduct: TF_NewProduct;
  stocksList: TStringList;
  ProvidersList: TStringList;

implementation

uses U_Main, U_MessageCP;

{$R *.dfm}

procedure calcTotal;
begin
  F_NewProduct.ProductTotalPrice.Text :=
                          FloatToStr(RoundX(F_NewProduct.ProductCount.Value *
                                         F_NewProduct.ProductPrice.Value,2));
end;

procedure TF_NewProduct.AddToMemTableClick(Sender: TObject);
begin
  try
    if (CBAllStocks.Text <> '')and(CBAllProviders.Text <> '')and(ProductName.Text <> '')
        and (ProductMeasured.Text <> '')and(ProductCode.Text <> '')and
        (ProductCount.Value <> 0)and(ProductPrice.Value <> 0) then
    begin
      DM.tableProducts.Insert;
      DM.tableProducts.Edit;
      DM.tableProductsSTOCK_ID.AsInteger := StrToIntDef(CBAllStocks.Values[CBAllStocks.ItemIndex],0);
      DM.tableProductsMEASURE.AsString := ProductMeasured.Text;
      DM.tableProductsKOLVO.AsFloat := ProductCount.Value;
      DM.tableProductsPRICE.AsFloat := ProductPrice.Value;
      DM.tableProductsKOD.AsInteger := StrToIntDef(ProductCode.Text,0);
      DM.tableProductsTOTALPRICE.AsFloat := StrToIntDef(ProductTotalPrice.Text,0);
      DM.tableProducts.Post;

      DM.tableInvoiceIn.Insert;
      DM.tableInvoiceIn.Edit;
      DM.tableInvoiceInMEASURE.AsString := ProductMeasured.Text;
      DM.tableInvoiceInKOLVO.AsFloat := ProductCount.Value;
      DM.tableInvoiceInPRICE.AsFloat := ProductPrice.Value;
      DM.tableInvoiceInKOD.AsInteger := StrToIntDef(ProductCode.Text,0);
      DM.tableInvoiceInTOTALPRICE.AsFloat := StrToIntDef(ProductTotalPrice.Text,0);
      DM.tableInvoiceInDATEIN.AsDateTime := Now;
      DM.tableInvoiceInEMPLOEE_ID.AsInteger := 0;
      DM.tableInvoiceInPROVIDER_ID.AsInteger := StrToIntDef(CBAllProviders.Values[CBAllProviders.itemIndex],0);
      DM.tableInvoiceIn.Post;
    end
    else
    begin
      ShowMessagerCP(LangNewProduct.GetText('EmptyFieldCapt'),LangNewProduct.GetText('EmptyField'),mtWarning,[mbOK]);
    end;
  except
  end;
end;

procedure getStocks;
var
  QselStock: TpFIBQuery;
begin
  QselStock := DM.CreateFIBQuery;
  QselStock.SQL.Text := 'Select ID, Name from Stocks';
  QselStock.ExecQuery;
  while not QselStock.Eof do
  begin
    stocksList.Values[QselStock.fn('Name').AsString] := QselStock.fn('ID').AsString;
    F_NewProduct.CBAllStocks.Items.Add(QselStock.fn('Name').AsString);
    QselStock.Next;
  end;
  DM.DestroyFIBQuery(QselStock);
end;

procedure getProviders;
var
  QselProv: TpFIBQuery;
begin
  QselProv := DM.CreateFIBQuery;
  QselProv.SQL.Text := 'Select ID, Name from providers';
  QselProv.ExecQuery;
  while not QselProv.Eof do
  begin
    ProvidersList.Values[QselProv.fn('Name').AsString] := QselProv.fn('ID').AsString;
    F_NewProduct.CBAllProviders.Items.Add(QselProv.fn('Name').AsString);
    QselProv.Next;
  end;
  DM.DestroyFIBQuery(QselProv);
end;

procedure TF_NewProduct.FormCreate(Sender: TObject);
begin
  stocksList := TStringList.Create;
  ProvidersList := TStringList.Create;

  dm.tableStoks.First;
  while not dm.tableStoks.Eof do
  begin
    CBAllStocks.AddItemValue(dm.tableStoksNAME.AsString, dm.tableStoksID.AsString);
    stocksList.Add(dm.tableStoksID.AsString);
    dm.tableStoks.Next;
  end;

  dm.tableProviders.First;
  while not dm.tableProviders.Eof do
  begin
    CBAllProviders.AddItemValue(dm.tableProvidersNAME.AsString, dm.tableProvidersID.AsString);
    ProvidersList.Add(dm.tableProvidersID.AsString);
    dm.tableProviders.Next;
  end;
end;

procedure TF_NewProduct.ProductCountChange(Sender: TObject);
begin
  calcTotal;
end;

procedure TF_NewProduct.ProductCountButtonClick(Sender: TObject;
  Button: TSpinButtonType);
begin
  calcTotal;
end;

procedure TF_NewProduct.ProductPriceButtonClick(Sender: TObject;
  Button: TSpinButtonType);
begin
  calcTotal;
end;

procedure TF_NewProduct.ProductPriceChange(Sender: TObject);
begin
  calcTotal;
end;

procedure TF_NewProduct.GridNewProductsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

end.

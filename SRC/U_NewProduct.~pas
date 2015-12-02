unit U_NewProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzSpnEdt, StdCtrls, Mask, RzEdit, RzLabel,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzCmboBx,
  ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh, DBGridEh, U_DM, U_Common,
  pFibQuery;

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
    addProduct: TRzBitBtn;
    cancelProduct: TRzBitBtn;
    GridNewProducts: TDBGridEh;
    RzGroupBox1: TRzGroupBox;
    CBAllStocks: TRzComboBox;
    RzLabel7: TRzLabel;
    AddToMemTable: TRzBitBtn;
    InvoiceBtn: TRzBitBtn;
    RzLabel8: TRzLabel;
    CBAllProviders: TRzComboBox;
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

uses U_Main;

{$R *.dfm}

procedure calcTotal;
begin
  F_NewProduct.ProductTotalPrice.Text :=
                          FloatToStr(RoundX(F_NewProduct.ProductCount.Value *
                                         F_NewProduct.ProductPrice.Value,2));
end;

procedure TF_NewProduct.AddToMemTableClick(Sender: TObject);
begin
  if not DM.mtAddProducts.Active then
    DM.mtAddProducts.Active := true;
  try
    DM.mtAddProducts.Insert;
    DM.mtAddProducts.Edit;
    DM.mtAddProductsproductName.AsString := ProductName.Text;
    DM.mtAddProductsproductCode.AsString := ProductCode.Text;
    DM.mtAddProductsproductCount.AsFloat := ProductCount.Value;
    DM.mtAddProductsproductMeasured.AsString := ProductMeasured.Text;
    DM.mtAddProductsproductPrice.AsFloat := ProductPrice.Value;
    DM.mtAddProductsproductTotalPrice.AsFloat := StrToFloatDef(ProductTotalPrice.Text,0);
    if CBAllStocks.Text <> '' then
      DM.mtAddProductsproductStock.AsInteger := StrToIntDef(stocksList.Values[CBAllStocks.Text],0);
    if CBAllProviders.Text <> '' then
    DM.mtAddProductsproductProvider.AsInteger := StrToIntDef(ProvidersList.Values[CBAllProviders.Text],0);
    DM.mtAddProducts.Post;
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

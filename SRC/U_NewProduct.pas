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
    RzLabel10: TRzLabel;
    CBAllEmploees: TRzComboBox;
    CBNames: TRzComboBox;
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
    procedure CBAllProvidersChange(Sender: TObject);
    procedure CBAllEmploeesChange(Sender: TObject);
    procedure invoiceNumberKeyPress(Sender: TObject; var Key: Char);
    procedure ProductCodeKeyPress(Sender: TObject; var Key: Char);
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

uses U_Main, U_MessageCP, U_Emploee, U_InvoiceIn;

{$R *.dfm}

procedure calcTotal;
begin
  F_NewProduct.ProductTotalPrice.Text :=
                          FloatToStr(RoundX(F_NewProduct.ProductCount.Value *
                                         F_NewProduct.ProductPrice.Value,2));
end;

procedure TF_NewProduct.AddToMemTableClick(Sender: TObject);
var
  providerIndex:Integer;
begin
  try
    if (CBAllStocks.Text <> ''){and(CBAllProviders.Text <> '')}and
    ({ProductName.Text <> ''}(CBNames.ItemIndex <> -1)or(CBNames.Text <> ''))
        and (ProductMeasured.Text <> '')and(ProductCode.Text <> '')and
        (ProductCount.Value <> 0)and(ProductPrice.Value <> 0) then
    begin
      begin
        try
         //TODO: Move This code to afterPrint Invoice In
          if(CBNames.ItemIndex = -1)then
          begin
            DM.tableNames.Insert;
            DM.tableNames.Edit;
            DM.tableNamesNAME.AsString := CBNames.Text;
            DM.tableNames.Post;
            CBNames.AddItemValue(dm.tableNamesNAME.AsString, dm.tableNamesID.AsString);
            if F_InvoiceIn <> nil then
            begin
              F_InvoiceIn.GridInvoiceIn.Columns[1].KeyList.Add(DM.tableNamesID.AsString);
              F_InvoiceIn.GridInvoiceIn.Columns[1].PickList.Add(DM.tableNamesNAME.AsString);
            end
            else
            if F_InvoiceInRest <> nil then
            begin
              F_InvoiceInRest.GridInvoiceIn.Columns[1].KeyList.Add(DM.tableNamesID.AsString);
              F_InvoiceInRest.GridInvoiceIn.Columns[1].PickList.Add(DM.tableNamesNAME.AsString);
            end;

            F_Main.GridProducts.Columns[1].KeyList.Add(dm.tableNamesID.AsString);
            F_Main.GridProducts.Columns[1].PickList.Add(dm.tableNamesNAME.AsString);
          end;

          if not DM.mtAddProducts.Active then
            DM.mtAddProducts.Active := True;

          DM.mtAddProducts.Append;
          dm.mtAddProducts.Edit;
          dm.mtAddProductsproductMeasured.AsString := ProductMeasured.Text;
          dm.mtAddProductsproductCount.AsFloat := ProductCount.Value;
          dm.mtAddProductsproductPrice.AsFloat := ProductPrice.Value;
          dm.mtAddProductsproductCode.AsString := ProductCode.Text;
          dm.mtAddProductsproductTotalPrice.AsFloat := StrToFloatDef(ProductTotalPrice.Text,0);
          if(CBNames.ItemIndex <> -1)then
            dm.mtAddProductsproductName.AsString := CBNames.Values[CBNames.ItemIndex] //ProductName.Text;
          else
            dm.mtAddProductsproductName.AsString := CBNames.Text;
          dm.mtAddProductsproductFullName.AsString := CBNames.Text;
          dm.mtAddProductsproductEmploee.AsInteger := StrToIntDef(CBAllEmploees.Values[CBAllEmploees.itemIndex-1],0);
          if F_InvoiceInRest <> nil then
            dm.mtAddProductsproductProvider.AsInteger := 0
          else
            dm.mtAddProductsproductProvider.AsInteger := StrToIntDef(CBAllProviders.Values[CBAllProviders.itemIndex-1],0);
          dm.mtAddProductsproductStock.AsInteger := StrToIntDef(CBAllStocks.Values[CBAllStocks.ItemIndex],0);
          dm.mtAddProductsproductStockName.AsString := CBAllStocks.Text;
          dm.mtAddProductsproductNumber.AsInteger := StrToIntDef(invoiceNumber.Text,0);

          dm.mtAddProducts.Post;

          ProductName.Text := '';
          ProductCode.Text := '';
          ProductMeasured.Text := '';
          ProductCount.IntValue := 0;
          ProductPrice.Value := 0;
          ProductTotalPrice.Text := '';
          invoiceNumber.Text := '';
          CBNames.ItemIndex := -1;
          //CBAllProviders.ItemIndex := -1;
          //CBAllEmploees.ItemIndex := -1;
          //CBAllStocks.ItemIndex := -1;
        except
          ShowMessagerCP(LangNewProduct.GetText('EmptyFieldCapt'),LangNewProduct.GetText('EmptyField'),mtError,[mbOK]);
        end
      end;
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
var
  RememberProvider: Integer;
  RememberStockID: Integer;
  providerItemIndex: Integer;
  EmploeeIndex: Integer;
  StockItemIndex: Integer;
begin
  stocksList := TStringList.Create;
  ProvidersList := TStringList.Create;
  RememberProvider := DM.tableProvidersID.AsInteger;
  RememberStockID := dm.tableStoksID.AsInteger;

  dm.tableStoks.First;
  while not dm.tableStoks.Eof do
  begin
    CBAllStocks.AddItemValue(dm.tableStoksNAME.AsString, dm.tableStoksID.AsString);
    if dm.tableStoksID.AsInteger = currentUser.userStockId then
      StockItemIndex := CBAllStocks.IndexOf(dm.tableStoksNAME.AsString);
    stocksList.Add(dm.tableStoksID.AsString);
    dm.tableStoks.Next;
  end;
  dm.tableStoks.Locate('ID',RememberStockID, []);
//  if not dm.tableStoks.Locate('EMPLOEE_ID',currentUser.userID,[])  then
    CBAllStocks.ItemIndex := StockItemIndex;
{  else
  begin
    StockItemIndex := CBAllStocks.IndexOf(dm.tableStoksNAME.AsString);
    CBAllStocks.ItemIndex := StockItemIndex;
  end;
  }

  if F_InvoiceInRest <> nil then
  begin
    CBAllStocks.ItemIndex := StockItemIndex;
    CBAllStocks.Enabled := False;
    CBAllProviders.Visible := False;
    RzLabel8.Visible := False;
  end
  else
  begin
    dm.tableProviders.First;
    while not dm.tableProviders.Eof do
    begin
      CBAllProviders.AddItemValue(dm.tableProvidersNAME.AsString, dm.tableProvidersID.AsString);
      if dm.tableProvidersID.AsInteger = RememberProvider then
        providerItemIndex := CBAllProviders.IndexOf(dm.tableProvidersNAME.AsString);
      ProvidersList.Add(dm.tableProvidersID.AsString);
      dm.tableProviders.Next;
    end;
    CBAllProviders.ItemIndex := providerItemIndex;
  end;

  dm.tableEmploee.First;
  while not dm.tableEmploee.Eof do
  begin
    CBAllEmploees.AddItemValue(dm.tableEmploeeNAME.AsString, dm.tableEmploeeID.AsString);
    if DM.tableEmploeeUSERNAME.AsString = currentUser.UName then
      EmploeeIndex := CBAllEmploees.IndexOf(dm.tableEmploeeNAME.AsString);
    dm.tableEmploee.Next;
  end;
  CBAllEmploees.ItemIndex := EmploeeIndex;

  dm.tableNames.First;
  while not dm.tableNames.Eof do
  begin
    CBNames.AddItemValue(dm.tableNamesNAME.AsString, dm.tableNamesID.AsString);
    dm.tableNames.Next;
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
    if Column.Index = 0 then                                                   // ��- �� - �� ���!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // ������ ID ����� ���������� ����� � �����.
end;

procedure TF_NewProduct.CBAllProvidersChange(Sender: TObject);
begin
  if (Pos('��������...',CBAllProviders.Text)<> 0)or(Pos('������...',CBAllProviders.Text) <> 0) then
  begin
    addProvider;
    CBAllProviders.AddItemValue(dm.tableProvidersNAME.AsString, dm.tableProvidersID.AsString);
  end;
end;

procedure TF_NewProduct.CBAllEmploeesChange(Sender: TObject);
begin
  if (Pos('��������...',CBAllEmploees.Text)<> 0)or(Pos('������...',CBAllEmploees.Text)<>0) then
  begin
    try
      Application.CreateForm(TF_Emploee, F_Emploee);
      F_Emploee.ShowModal;
    finally
      FreeAndNil(F_Emploee);
      CBAllEmploees.AddItemValue(dm.tableEmploeeNAME.AsString, dm.tableEmploeeID.AsString);
    end;
  end;
end;

procedure TF_NewProduct.invoiceNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))then
    Key := #0;
end;

procedure TF_NewProduct.ProductCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))then
    Key := #0;
end;

end.

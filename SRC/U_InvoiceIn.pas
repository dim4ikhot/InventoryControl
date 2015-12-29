unit U_InvoiceIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_DM, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh, DBGridEh, U_Main, RzButton,
  siComp, siLngLnk, DB, U_FR, U_MessageCP;

type
  TF_InvoiceIn = class(TForm)
    GridInvoiceIn: TDBGridEh;
    RzPanel1: TRzPanel;
    addInvoiceIn: TRzBitBtn;
    CancelInvoiceIn: TRzBitBtn;
    ReportInvoice: TRzBitBtn;
    LangInvoices: TsiLangLinked;
    procedure addInvoiceInClick(Sender: TObject);
    procedure GridInvoiceInDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ReportInvoiceClick(Sender: TObject);
    procedure GridInvoiceInCellClick(Column: TColumnEh);
    procedure GridInvoiceInKeyPress(Sender: TObject; var Key: Char);
    procedure CancelInvoiceInClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InvoiceIn: TF_InvoiceIn;
  F_InvoiceInRest: TF_InvoiceIn;
  F_InvoiceOut: TF_InvoiceIn;
  F_MoveProducts: TF_InvoiceIn;
implementation

Uses U_ProductsOut , RzCmboBx, U_Common;

{$R *.dfm}

procedure TF_InvoiceIn.addInvoiceInClick(Sender: TObject);
var
  tmpGridProducts: TDBGridEh;
begin
  if (F_InvoiceIn <> nil)or(F_InvoiceInRest <> nil) then
    addProductProc
  else
  if F_InvoiceOut <> nil then
  begin
    try
      Application.CreateForm(TF_ProductsOut, F_ProductsOut);
      F_Main.GridProducts.Parent := F_ProductsOut;
      F_Main.PanelSettingsProduct.Parent := F_ProductsOut;
      DM.tableStoks.Locate('ID', currentUser.userStockId, []);
      DM.tableProducts.Filtered := True;
      DM.tableProducts.Filter := 'STOCK_ID = '+''''+ DM.tableStoksID.AsString +'''';

      F_Main.stockFilter.ItemIndex := F_Main.stockFilter.IndexOf(DM.tableStoksNAME.AsString);
      F_Main.stockFilter.Enabled := False;
      F_Main.GBLists.Visible := False;
      F_Main.GBReports.Visible := False;
      F_ProductsOut.ShowModal;
    finally
      FreeAndNil(F_ProductsOut);
    end;
  end;
end;

procedure TF_InvoiceIn.GridInvoiceInDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // ��- �� - �� ���!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));  
end;

procedure TF_InvoiceIn.FormCreate(Sender: TObject);
var
  RememberProvider,
  rememberEmploee,
  rememberClient,
  rememberStockID: Integer;
begin
  rememberStockID := DM.tableStoksID.AsInteger;
  DM.tableStoks.First;
  while not DM.tableStoks.Eof do
  begin
    GridInvoiceIn.Columns[9].KeyList.Add(DM.tableStoksID.AsString);
    GridInvoiceIn.Columns[9].PickList.Add(DM.tableStoksNAME.AsString);
    DM.tableStoks.Next;
  end;
  DM.tableStoks.Locate('ID', rememberStockID,[]);

  DM.tableNames.First;
  while not DM.tableNames.Eof do
  begin
    GridInvoiceIn.Columns[1].KeyList.Add(DM.tableNamesID.AsString);
    GridInvoiceIn.Columns[1].PickList.Add(DM.tableNamesNAME.AsString);
    DM.tableNames.Next;
  end;

  rememberEmploee := DM.tableEmploeeID.AsInteger;
  DM.tableEmploee.First;
  while not DM.tableEmploee.Eof do
  begin
    GridInvoiceIn.Columns[10].KeyList.Add(DM.tableEmploeeID.AsString);
    GridInvoiceIn.Columns[10].PickList.Add(DM.tableEmploeeNAME.AsString);
    DM.tableEmploee.Next;
  end;
  DM.tableEmploee.Locate('ID',RememberProvider, []);

  RememberProvider := DM.tableProvidersID.AsInteger;
  DM.tableProviders.First;
  while not DM.tableProviders.Eof do
  begin
    GridInvoiceIn.Columns[7].KeyList.Add(DM.tableProvidersID.AsString);
    GridInvoiceIn.Columns[7].PickList.Add(DM.tableProvidersNAME.AsString);
    DM.tableProviders.Next;
  end;
  DM.tableProviders.Locate('ID', RememberProvider, []);

  rememberClient := DM.tableClientsID.AsInteger;
  DM.tableClients.First;
  while not DM.tableClients.Eof do
  begin
    GridInvoiceIn.Columns[8].KeyList.Add(DM.tableClientsID.AsString);
    GridInvoiceIn.Columns[8].PickList.Add(DM.tableClientsNAME.AsString);
    DM.tableClients.Next;
  end;
  DM.tableClients.Locate('ID', rememberClient, []);
end;

procedure TF_InvoiceIn.ReportInvoiceClick(Sender: TObject);
begin
  if (F_InvoiceIn <> nil)then
  begin
  //Create invoice in
    try
      Application.CreateForm(TF_FR ,F_PrinInvoiceIn);
      F_PrinInvoiceIn.ReportInvoiceIn.Preview := F_PrinInvoiceIn.frxPreview1;
      F_PrinInvoiceIn.ReportInvoiceIn.PrepareReport;
      F_PrinInvoiceIn.ShowModal;
    finally
      FreeAndNil(F_PrinInvoiceIn);
    end;
  end
  else
  if (F_InvoiceInRest <> nil) then
  begin
  //Create invoice in
    try
      Application.CreateForm(TF_FR ,F_PrinInvoiceIn);
      F_PrinInvoiceIn.ReportInvoiceRest.Preview := F_PrinInvoiceIn.frxPreview1;
      F_PrinInvoiceIn.ReportInvoiceRest.PrepareReport;
      F_PrinInvoiceIn.ShowModal;
    finally
      FreeAndNil(F_PrinInvoiceIn);
    end;
  end
  else
  if F_InvoiceOut <> nil then
  begin
    //create invoice out
    try
      Application.CreateForm(TF_FR ,F_PrinInvoiceOut);
      F_PrinInvoiceOut.ReportInvoiceOut.Preview := F_PrinInvoiceOut.frxPreview1;
      F_PrinInvoiceOut.ReportInvoiceOut.PrepareReport;
      F_PrinInvoiceOut.ShowModal;
    finally
      FreeAndNil(F_PrinInvoiceOut);
    end;
  end;
end;

procedure TF_InvoiceIn.GridInvoiceInCellClick(Column: TColumnEh);
begin
  if F_InvoiceOut <> nil then
  begin
    if DM.mtInvoiceOut.State = dsEdit then
    begin
      DM.tableProducts.Locate('KOD', DM.mtInvoiceOutproductCode.AsString, []);
      if DM.tableProductsREST_COUNT.AsInteger > DM.mtInvoiceOutproductCount.AsInteger then
      begin
        DM.mtInvoiceOutproductTotalPrice.AsFloat :=
          DM.mtInvoiceOutproductCount.AsInteger *
            DM.mtInvoiceOutproductPrice.AsFloat;
      end
      else
      begin
        ShowMessagerCP(LangInvoices.GetText('ErrorTitle'),LangInvoices.GetText('ToMachCountEntered'),mtError,[mbOK]);
        DM.mtInvoiceOutproductCount.AsInteger := DM.tableProductsREST_COUNT.AsInteger;
        DM.mtInvoiceOutproductTotalPrice.AsFloat :=
          DM.tableProductsREST_COUNT.AsInteger *
            DM.mtInvoiceOutproductPrice.AsFloat;

      end;
      DM.mtInvoiceOut.Post;
    end;
  end;
end;

procedure TF_InvoiceIn.GridInvoiceInKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if F_InvoiceOut <> nil then
    begin
      if DM.mtInvoiceOut.State = dsEdit then
      begin
        DM.tableProducts.Locate('KOD', DM.mtInvoiceOutproductCode.AsString, []);
        if DM.tableProductsRest_Count.AsInteger > DM.mtInvoiceOutproductCount.AsInteger then
        begin
          DM.mtInvoiceOutproductTotalPrice.AsFloat :=
            DM.mtInvoiceOutproductCount.AsInteger *
              DM.mtInvoiceOutproductPrice.AsFloat;
        end
        else
        begin
          ShowMessagerCP(LangInvoices.GetText('ErrorTitle'),LangInvoices.GetText('ToMachCountEntered'),mtError,[mbOK]);
          DM.mtInvoiceOutproductCount.AsInteger := DM.tableProductsREST_COUNT.AsInteger;
          DM.mtInvoiceOutproductTotalPrice.AsFloat :=
            DM.tableProductsREST_COUNT.AsInteger *
              DM.mtInvoiceOutproductPrice.AsFloat;

        end;
        DM.mtInvoiceOut.Post;
      end;
    end;
  end;
end;

procedure TF_InvoiceIn.CancelInvoiceInClick(Sender: TObject);
begin
  if F_InvoiceIn <> nil then
    DM.mtAddProducts.EmptyTable
  else
  if F_InvoiceOut <> nil then
    DM.mtInvoiceOut.EmptyTable;
end;

procedure TF_InvoiceIn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.mtAddProducts.EmptyTable;
  DM.mtInvoiceOut.EmptyTable;
  DM.mtMoveProducts.EmptyTable;
end;

end.

unit U_InvoiceIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_DM, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh, DBGridEh, U_Main, RzButton,
  siComp, siLngLnk, DB;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InvoiceIn: TF_InvoiceIn;
  F_InvoiceOut: TF_InvoiceIn;

implementation

Uses U_ProductsOut;

{$R *.dfm}

procedure TF_InvoiceIn.addInvoiceInClick(Sender: TObject);
begin
  if F_InvoiceIn <> nil then
    addProductProc
  else
  if F_InvoiceOut <> nil then
  begin
    try
      Application.CreateForm(TF_ProductsOut, F_ProductsOut);
      F_Main.GridProducts.Parent := F_ProductsOut;
      F_Main.PanelSettingsProduct.Parent := F_ProductsOut;
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
  RememberProvider,rememberEmploee,rememberClient:Integer;
begin
  DM.tableStoks.First;
  while not DM.tableStoks.Eof do
  begin
    GridInvoiceIn.Columns[9].KeyList.Add(DM.tableStoksID.AsString);
    GridInvoiceIn.Columns[9].PickList.Add(DM.tableStoksNAME.AsString);
    DM.tableStoks.Next;
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
  if F_InvoiceIn <> nil then
  //Create invoice in
  else
  if F_InvoiceOut <> nil then
  //create invoice out
end;

procedure TF_InvoiceIn.GridInvoiceInCellClick(Column: TColumnEh);
begin
  if F_InvoiceOut <> nil then
  begin
    if DM.mtInvoiceOut.State = dsEdit then
    begin
      begin
        DM.mtInvoiceOutproductTotalPrice.AsFloat :=
          DM.mtInvoiceOutproductCount.AsInteger *
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
        begin
          DM.mtInvoiceOutproductTotalPrice.AsFloat :=
            DM.mtInvoiceOutproductCount.AsInteger *
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

end.

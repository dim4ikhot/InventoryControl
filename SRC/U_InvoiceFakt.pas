unit U_InvoiceFakt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, RzLabel, RzButton, Menus,
  DB, kbmMemTable, RzDBGrid, Mask, RzEdit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls,
  RzPanel, RzDTP, RzCmboBx, RzDBCmbo;

type
  TF_InvoiceFakt = class(TForm)
    StatusBar1: TStatusBar;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit3: TRzEdit;
    DateTimePicker1: TRzDateTimePicker;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    InvoiceGrid: TDBGridEh;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzEdit5: TRzEdit;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    RzDBComboBox1: TRzDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure InvoiceGridColumns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InvoiceFakt: TF_InvoiceFakt;

implementation

uses U_DM, U_FR, U_AddProdToInvoice, U_Main;

{$R *.dfm}

procedure TF_InvoiceFakt.FormShow(Sender: TObject);
begin
  self.StatusBar1.Panels.Items[0].Text := DM.Autority_Table.FieldValues['Name'];
  self.StatusBar1.Refresh;
end;

procedure TF_InvoiceFakt.RzBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TF_InvoiceFakt.RzBitBtn1Click(Sender: TObject);
begin
  if not assigned(F_fr) then
    f_fr := TF_FR.Create(self);
  f_fr.frxInvoice.ShowReport;

end;

procedure TF_InvoiceFakt.N3Click(Sender: TObject);
begin
  if not assigned(AddProdToInvoice) then
    AddProdToInvoice := TAddProdToInvoice.Create(self);
  if not DM.tableProductsSelect.Active then
    DM.tableProductsSelect.Active := true;
  AddProdToInvoice.ShowModal;
end;

procedure TF_InvoiceFakt.N4Click(Sender: TObject);
var SumInvoice: double;
begin
  SumInvoice := 0;
  // удаляем, если только не пустая таблица
  if not DM.Table_NewInvoice.IsEmpty then
  begin
    DM.Table_NewInvoice.DisableControls;
    DM.Table_NewInvoice.Edit;
    DM.Table_NewInvoice.delete;
    DM.Table_NewInvoice.Post;
    // пересчитываем позиции в счете для оставшихся строчек
    if DM.Table_NewInvoice.RecordCount > 0 then
    begin
      DM.Table_NewInvoice.First;
      DM.Table_NewInvoice.Edit;
      DM.Table_NewInvoice.FieldByName('Npp').AsInteger :=
          DM.Table_NewInvoice.RecNo;
      DM.Table_NewInvoice.Post;
      //SumInvoice := SumInvoice + dm.Table_NewInvoice.Fieldvalues['RowSum'];
        while not DM.Table_NewInvoice.Eof do
        begin
          DM.Table_NewInvoice.Next;
          DM.Table_NewInvoice.Edit;
          DM.Table_NewInvoice.FieldByName('Npp').AsInteger :=
            DM.Table_NewInvoice.RecNo;
          DM.Table_NewInvoice.Post;
                SumInvoice := SumInvoice + dm.Table_NewInvoice.Fieldvalues['RowSum'];
        end;

      DM.Table_NewInvoice.First;
    end;
    DM.Table_NewInvoice.EnableControls;
  end;
  F_InvoiceFakt.RzEdit3.text := formatFloat('#', SumInvoice);
  F_InvoiceFakt.InvoiceGrid.Refresh;
end;

Procedure ChangeTotalSum;
var I :integer;
    SumInvoice: double;
begin
  SumInvoice := 0;
  if not DM.Table_NewInvoice.IsEmpty then
  begin
    DM.Table_NewInvoice.First;
    SumInvoice := SumInvoice + dm.Table_NewInvoice.FieldValues['RowSum'];
    // other records
    if DM.Table_NewInvoice.RecordCount > 1 then
    begin
      for i := 1 to DM.Table_NewInvoice.RecordCount - 1  do
      begin
        DM.Table_NewInvoice.Next;
        SumInvoice := SumInvoice + dm.Table_NewInvoice.FieldValues['RowSum'];
      end;
    end;
  end;
  F_InvoiceFakt.RzEdit3.text := formatFloat('#', SumInvoice);
end;

procedure TF_InvoiceFakt.InvoiceGridColumns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var i: Integer;
    NewInvoice_bookmark: TBookmark;
begin
  DM.Table_NewInvoice.Edit;
  DM.Table_NewInvoice.FieldByName('Kolvo').AsInteger := Value;
  DM.Table_NewInvoice.FieldByName('RowSum').AsCurrency :=
    DM.Table_NewInvoice.FieldValues['Kolvo'] * DM.Table_NewInvoice.FieldValues['Price'];
  DM.Table_NewInvoice.post;


  NewInvoice_bookmark := DM.Table_NewInvoice.GetBookmark;
  DM.Table_NewInvoice.DisableControls;

  ChangeTotalSum;
  DM.Table_NewInvoice.GotoBookmark(NewInvoice_bookmark);
  DM.Table_NewInvoice.EnableControls;
end;

end.

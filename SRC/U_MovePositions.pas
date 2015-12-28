unit U_MovePositions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  RzButton, GridsEh, DBAxisGridsEh, DBGridEh, U_Main, U_DM, siComp,
  siLngLnk, DB, kbmMemTable, ExtCtrls, RzPanel;

type
  TF_MovePosition = class(TForm)
    GridMovePositions: TDBGridEh;
    CancelMove: TRzBitBtn;
    ApplyMove: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    LangMove: TsiLangLinked;
    RzPanel1: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    procedure ApplyMoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridMovePositionsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure GridMovePositionsCellClick(Column: TColumnEh);
    procedure GridMovePositionsKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MovePosition: TF_MovePosition;

implementation

uses U_ProductsOut, U_FR, U_MessageCP;
{$R *.dfm}

procedure TF_MovePosition.ApplyMoveClick(Sender: TObject);
begin
  //Do move positions

  MessageBox(Self.Handle,'������� ���������� ��������� �� ������������ �������?' + #13#10 +
             '(���� ������ "���", ��������� ����������� ����� ����������)',
              '����������� ���������...', MB_YESNO);
end;

procedure TF_MovePosition.FormCreate(Sender: TObject);
var
  i: Integer;
  rememberStckID: Integer;
begin
 { if not DM.mtMoveProducts.Active then
    DM.mtMoveProducts.Active := True;
  for i := 0 to F_Main.GridProducts.SelectedRows.Count - 1 do
  begin
    DM.tableProducts.Bookmark := F_Main.GridProducts.SelectedRows[i];
    DM.mtMoveProducts.Append;
    DM.mtMoveProducts.Edit;
    DM.mtMoveProductsmoveName.AsString := DM.tableProductsNAME.AsString;
    DM.mtMoveProductsmoveCount.AsInteger := DM.tableProductsKOLVO.AsInteger;
    DM.mtMoveProductsmoveMeasured.AsString := DM.tableProductsMEASURE.AsString;
    DM.mtMoveProductsmovePrice.AsFloat := DM.tableProductsPRICE.AsFloat;
    DM.mtMoveProductsMoveStock.AsInteger := DM.tableProductsSTOCK_ID.AsInteger;
    DM.mtMoveProductsmoveCode.AsString := DM.tableProductsKOD.AsString;
    DM.mtMoveProducts.post;
    DM.tableStoks.Locate('ID', DM.tableProductsSTOCK_ID.AsInteger, []);
    GridMovePositions.Columns[6].KeyList.Add(DM.tableProductsSTOCK_ID.AsString);
    GridMovePositions.Columns[6].PickList.Add(DM.tableStoksNAME.AsString);
  end;  }
  rememberStckID := DM.tableStoksID.AsInteger;
  DM.tableStoks.First;
  while not DM.tableStoks.Eof do
  begin
    GridMovePositions.Columns[6].KeyList.Add(DM.tableStoksID.AsString);
    GridMovePositions.Columns[6].PickList.Add(DM.tableStoksNAME.AsString);
    DM.tableStoks.Next;
  end;
  DM.tableStoks.Locate('ID', rememberStckID, []);

  DM.tableNames.First;
  while not DM.tableNames.Eof do
  begin
    GridMovePositions.Columns[1].KeyList.Add(DM.tableNamesID.AsString);
    GridMovePositions.Columns[1].PickList.Add(DM.tableNamesNAME.AsString);
    DM.tableNames.Next;
  end;
end;

procedure TF_MovePosition.GridMovePositionsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // ��- �� - �� ���!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // ������ ID ����� ���������� ����� � �����.
end;

procedure TF_MovePosition.RzBitBtn2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TF_ProductsOut, F_MoveToStock);
    F_Main.GridProducts.Parent := F_MoveToStock;
    F_Main.GridProducts.DataSource := DM.SourceMove;
    F_Main.PanelSettingsProduct.Parent := F_MoveToStock;
    F_Main.GBLists.Visible := False;
    F_Main.GBReports.Visible := False;
    F_MoveToStock.ShowModal;
  finally
    FreeAndNil(F_MoveToStock);
  end;
end;

procedure TF_MovePosition.RzBitBtn1Click(Sender: TObject);
begin
  //Create invoice in
  try
    Application.CreateForm(TF_FR ,F_PrinInvoiceMove);
    F_PrinInvoiceMove.ReportMove.Preview := F_PrinInvoiceMove.frxPreview1;
    F_PrinInvoiceMove.ReportMove.PrepareReport;
    F_PrinInvoiceMove.ShowModal;
  finally
    FreeAndNil(F_PrinInvoiceIn);
  end;
end;

procedure TF_MovePosition.GridMovePositionsCellClick(Column: TColumnEh);
begin
  if DM.mtMoveProducts.State = dsEdit then
  begin
    DM.tableProducts.Locate('KOD', DM.mtMoveProductsmoveCode.AsString, []);
    if DM.tableProductsKOLVO.AsInteger > DM.mtMoveProductsmoveCount.AsInteger then
    begin
      DM.mtMoveProductsmoveTotalPrice.AsFloat :=
        DM.mtMoveProductsmoveCount.AsInteger *
          DM.mtMoveProductsmovePrice.AsFloat;
    end
    else
    begin
      ShowMessagerCP(LangMove.GetText('ErrorTitle'),LangMove.GetText('ToMachCountMove'),mtError,[mbOK]);
      DM.mtMoveProductsmoveCount.AsInteger := DM.tableProductsKOLVO.AsInteger;
      DM.mtMoveProductsmoveTotalPrice.AsFloat :=
        DM.tableProductsKOLVO.AsInteger *
          DM.mtMoveProductsmovePrice.AsFloat;
    end;
    DM.mtMoveProducts.Post;
  end;
end;

procedure TF_MovePosition.GridMovePositionsKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
    if DM.mtMoveProducts.State = dsEdit then
    begin
      DM.tableProducts.Locate('KOD', DM.mtMoveProductsmoveCode.AsString, []);
      if DM.tableProductsKOLVO.AsInteger > DM.mtMoveProductsmoveCount.AsInteger then
      begin
        DM.mtMoveProductsmoveTotalPrice.AsFloat :=
          DM.mtMoveProductsmoveCount.AsInteger *
            DM.mtMoveProductsmovePrice.AsFloat;
      end
      else
      begin
        ShowMessagerCP(LangMove.GetText('ErrorTitle'),LangMove.GetText('ToMachCountMove'),mtError,[mbOK]);
        DM.mtMoveProductsmoveCount.AsInteger := DM.tableProductsKOLVO.AsInteger;
        DM.mtMoveProductsmoveTotalPrice.AsFloat :=
          DM.tableProductsKOLVO.AsInteger *
            DM.mtMoveProductsmovePrice.AsFloat;
      end;
      DM.mtMoveProducts.Post;
    end;
  end;
end;

procedure TF_MovePosition.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.mtMoveProducts.EmptyTable;
end;

end.

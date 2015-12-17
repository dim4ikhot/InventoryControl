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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MovePosition: TF_MovePosition;

implementation

uses U_ProductsOut;
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

end.

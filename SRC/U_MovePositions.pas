unit U_MovePositions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  RzButton, GridsEh, DBAxisGridsEh, DBGridEh, U_Main, U_DM, siComp,
  siLngLnk, DB, kbmMemTable;

type
  TF_MovePosition = class(TForm)
    GridMovePositions: TDBGridEh;
    CancelMove: TRzBitBtn;
    ApplyMove: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    LangMove: TsiLangLinked;
    mtMoveProducts: TkbmMemTable;
    SourceMovePositions: TDataSource;
    mtMoveProductsmoveName: TStringField;
    mtMoveProductsmoveCount: TIntegerField;
    mtMoveProductsmoveMeasured: TStringField;
    mtMoveProductsmovePrice: TFloatField;
    mtMoveProductsMoveStock: TIntegerField;
    procedure ApplyMoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MovePosition: TF_MovePosition;

implementation

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
  if not mtMoveProducts.Active then
    mtMoveProducts.Active := True;
  for i := 0 to F_Main.GridProducts.SelectedRows.Count - 1 do
  begin
    DM.tableProducts.Bookmark := F_Main.GridProducts.SelectedRows[i];
    mtMoveProducts.Insert;
    mtMoveProducts.Edit;
    mtMoveProductsmoveName.AsString := DM.tableProductsNAME.AsString;
    mtMoveProductsmoveCount.AsInteger := DM.tableProductsKOLVO.AsInteger;
    mtMoveProductsmoveMeasured.AsString := DM.tableProductsMEASURE.AsString;
    mtMoveProductsmovePrice.AsFloat := DM.tableProductsPRICE.AsFloat;
    mtMoveProductsMoveStock.AsInteger := DM.tableProductsSTOCK_ID.AsInteger;
    mtMoveProducts.post;
    DM.tableStoks.Locate('ID', DM.tableProductsSTOCK_ID.AsInteger, []);
    GridMovePositions.Columns[5].KeyList.Add(DM.tableStoksID.AsString);
    GridMovePositions.Columns[5].PickList.Add(DM.tableStoksNAME.AsString);

  end;
end;

end.

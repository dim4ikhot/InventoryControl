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
    mtMoveProductsmoveCode: TStringField;
    procedure ApplyMoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridMovePositionsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
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

  MessageBox(Self.Handle,'Желаете отобразить накладную по перемещённым товарам?' + #13#10 +
             '(если нажать "нет", накладную просмотреть будет невозможно)',
              'Просмотреть накладную...', MB_YESNO);
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
    mtMoveProducts.Append;
    mtMoveProducts.Edit;
    mtMoveProductsmoveName.AsString := DM.tableProductsNAME.AsString;
    mtMoveProductsmoveCount.AsInteger := DM.tableProductsKOLVO.AsInteger;
    mtMoveProductsmoveMeasured.AsString := DM.tableProductsMEASURE.AsString;
    mtMoveProductsmovePrice.AsFloat := DM.tableProductsPRICE.AsFloat;
    mtMoveProductsMoveStock.AsInteger := DM.tableProductsSTOCK_ID.AsInteger;
    mtMoveProductsmoveCode.AsString := DM.tableProductsKOD.AsString;
    mtMoveProducts.post;
    DM.tableStoks.Locate('ID', DM.tableProductsSTOCK_ID.AsInteger, []);
    GridMovePositions.Columns[6].KeyList.Add(DM.tableProductsSTOCK_ID.AsString);
    GridMovePositions.Columns[6].PickList.Add(DM.tableStoksNAME.AsString);
  end;
end;

procedure TF_MovePosition.GridMovePositionsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

end.

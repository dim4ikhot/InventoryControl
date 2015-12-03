unit U_MovePositions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  RzButton, GridsEh, DBAxisGridsEh, DBGridEh, U_Main, U_DM, siComp,
  siLngLnk;

type
  TF_MovePosition = class(TForm)
    GridMovePositions: TDBGridEh;
    CancelMove: TRzBitBtn;
    ApplyMove: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    LangMove: TsiLangLinked;
    procedure ApplyMoveClick(Sender: TObject);
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

  MessageBox(Self.Handle,'∆елаете отобразить накладную по перемещЄнным товарам?' + #13#10 +
             '(если нажать "нет", накладную просмотреть будет невозможно)',
              'ѕросмотреть накладную...', MB_YESNO);
end;

end.

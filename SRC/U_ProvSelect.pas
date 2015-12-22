unit U_ProvSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, ComCtrls, Grids, DBGrids, ActnList,
  RzButton;

type
  TF_ProvSelect = class(TForm)
    StatusBar1: TStatusBar;
    pFIBDataSet1: TpFIBDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    pFIBDataSet1ID: TFIBIntegerField;
    pFIBDataSet1NAME: TFIBStringField;
    pFIBDataSet1POSTIND: TFIBIntegerField;
    pFIBDataSet1ADDR1: TFIBStringField;
    pFIBDataSet1PHONE: TFIBStringField;
    pFIBDataSet1PHONEFAX: TFIBStringField;
    pFIBDataSet1PHONEMOBILE: TFIBStringField;
    pFIBDataSet1BOSS: TFIBStringField;
    pFIBDataSet1CONTACTOR: TFIBStringField;
    pFIBDataSet1CONT_POST: TFIBStringField;
    pFIBDataSet1EDRPOU: TFIBIntegerField;
    pFIBDataSet1IPN: TFIBIntegerField;
    pFIBDataSet1MFO: TFIBIntegerField;
    pFIBDataSet1ACCNUMBER: TFIBIntegerField;
    pFIBDataSet1ACCBANK: TFIBStringField;
    ActionList1: TActionList;
    Action1: TAction;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProvSelect: TF_ProvSelect;

implementation

uses U_DM, U_InOrder;

{$R *.dfm}

procedure TF_ProvSelect.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
  begin
    key := 0;
    close;
  end;
end;

procedure TF_ProvSelect.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    key := #0;
    close;
  end;
end;

procedure TF_ProvSelect.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
  begin
    key := 0;
    close;
  end;
end;

procedure TF_ProvSelect.RzBitBtn1Click(Sender: TObject);
begin
  F_InOrder.Edit1.Text := Self.pFIBDataSet1.FieldValues['NAME'];
  Close;
end;

procedure TF_ProvSelect.RzBitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.

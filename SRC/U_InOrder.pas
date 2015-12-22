unit U_InOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, kbmMemTable, DB, RzButton, StdCtrls, RzLabel, ComCtrls, Grids,
  DBGrids, RzCmboBx, RzDBCmbo;

type
  TF_InOrder = class(TForm)
    Edit1: TEdit;
    RzBitBtn1: TRzBitBtn;
    kbmMemTable1: TkbmMemTable;
    kbmThreadDataSet1: TkbmThreadDataSet;
    RzLabel1: TRzLabel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    PrnBtn: TRzBitBtn;
    ExitBtn: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InOrder: TF_InOrder;

implementation

uses U_DM, U_ProvSelect;

{$R *.dfm}

procedure TF_InOrder.FormShow(Sender: TObject);
var CurrentUser: string;
begin
  CurrentUser := DM.Autority_Table.FieldValues['Name'];
  F_InOrder.StatusBar1.Panels[0].Text := CurrentUser;
end;

procedure TF_InOrder.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TF_InOrder.RzBitBtn1Click(Sender: TObject);
begin
  if not Assigned(F_ProvSelect) then
  begin
    F_ProvSelect := TF_ProvSelect.Create(Self);
    F_Provselect.pFIBDataSet1.Active := true;
  end;
  F_ProvSelect.ShowModal;
end;

procedure TF_InOrder.RzBitBtn2Click(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
end;

end.

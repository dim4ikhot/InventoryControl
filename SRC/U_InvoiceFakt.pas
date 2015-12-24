unit U_InvoiceFakt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, RzLabel, RzButton, Menus,
  DB, kbmMemTable, RzDBGrid, Mask, RzEdit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls,
  RzPanel, RzDTP;

type
  TF_InvoiceFakt = class(TForm)
    StatusBar1: TStatusBar;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    DateTimePicker1: TRzDateTimePicker;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InvoiceFakt: TF_InvoiceFakt;

implementation

uses U_DM;

{$R *.dfm}

procedure TF_InvoiceFakt.FormShow(Sender: TObject);
begin
  self.StatusBar1.Panels[0].Text := DM.Autority_Table.FieldValues['Name'];
end;

procedure TF_InvoiceFakt.RzBitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.

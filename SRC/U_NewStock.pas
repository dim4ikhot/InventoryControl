unit U_NewStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzButton,U_DM, siComp, siLngLnk,
  RzSpnEdt;

type
  TaddNewStock = class(TForm)
    cancelStock: TRzBitBtn;
    applyStock: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    StockName: TRzEdit;
    StockAddr: TRzEdit;
    StockPhone: TRzEdit;
    LangNewStock: TsiLangLinked;
    StockNds: TRzSpinEdit;
    procedure applyStockClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addNewStock: TaddNewStock;

implementation

{$R *.dfm}

procedure TaddNewStock.applyStockClick(Sender: TObject);
begin
  DM.tableStoks.Insert;
  DM.tableStoks.Edit;
  DM.tableStoksNAME.AsString := StockName.Text;
  DM.tableStoksPHONE.AsString := StockPhone.Text;
  DM.tableStoksADDR1.AsString := StockAddr.Text;
  DM.tableStoksNDS.AsFloat := StockNds.Value;
  DM.tableStoksSTARTED.AsInteger := 0;
  DM.tableStoks.Post;
end;

end.

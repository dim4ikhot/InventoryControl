unit U_NewStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzButton,U_DM, siComp, siLngLnk;

type
  TaddNewStock = class(TForm)
    cancelStock: TRzBitBtn;
    applyStock: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    RzEdit5: TRzEdit;
    LangNewStock: TsiLangLinked;
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
  //fill need fields
  DM.tableStoks.Post;
end;

end.

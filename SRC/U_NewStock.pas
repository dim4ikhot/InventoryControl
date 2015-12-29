unit U_NewStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzButton,U_DM, siComp, siLngLnk,
  RzSpnEdt, RzCmboBx,U_Common;

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
    RzLabel5: TRzLabel;
    StockEdrpou: TRzEdit;
    StockBank: TRzEdit;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    StockAccNum: TRzEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    StockInn: TRzEdit;
    StockMFO: TRzEdit;
    RzLabel10: TRzLabel;
    CBEmploeers: TRzComboBox;
    RzLabel11: TRzLabel;
    StockLegalAddr: TRzEdit;
    procedure applyStockClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StockEdrpouKeyPress(Sender: TObject; var Key: Char);
    procedure StockMFOKeyPress(Sender: TObject; var Key: Char);
    procedure StockInnKeyPress(Sender: TObject; var Key: Char);
    procedure StockAccNumKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function checkForEmptyFields:Boolean;

var
  addNewStock: TaddNewStock;

implementation

uses U_Main,U_MessageCP;

{$R *.dfm}

function checkForEmptyFields:Boolean;
begin
  with addNewStock do
  begin
    Result := (StockName.text = '')and(StockAddr.Text = '')and(StockLegalAddr.Text = '')
    and(StockEdrpou.Text = '')and(StockPhone.Text = '')and(StockBank.Text = '')and
    (StockAccNum.Text = '')and(StockMFO.Text = '')and(StockInn.Text = '');
  end
end;

procedure TaddNewStock.applyStockClick(Sender: TObject);
var
  emploeeID: Integer;
begin
  if not checkForEmptyFields then
  begin
    emploeeID := StrToInt(CBEmploeers.Values[CBEmploeers.ItemIndex]);
    DM.tableEmploee.Locate('ID',emploeeID, []);

    DM.tableStoks.Insert;
    DM.tableStoks.Edit;
    DM.tableStoksNAME.AsString := StockName.Text;
    DM.tableStoksPHONE.AsString := StockPhone.Text;
    DM.tableStoksADDR1.AsString := StockAddr.Text;
    DM.tableStoksADDR2.AsString := StockLegalAddr.Text;
    DM.tableStoksNDS.AsFloat := StockNds.Value;
    DM.tableStoksSTARTED.AsInteger := 0;

    DM.tableStoksMFO.AsString := StockMFO.Text;
    DM.tableStoksEDRPOU.AsString := StockEdrpou.Text;
    DM.tableStoksIPN.AsString := StockInn.Text;
    DM.tableStoksACCNUM.AsString := StockAccNum.Text;
    DM.tableStoksACCBANK.AsString := StockBank.Text;
    DM.tableStoks.Post;

    DM.tableEmploee.Edit;
    DM.tableEmploeeSTOCK_ID.AsInteger := DM.tableStoksID.AsInteger;
    DM.tableEmploee.Post;

    //Add Data to grid visible
    F_main.stockFilter.AddItemValue(dm.tableStoksNAME.AsString, dm.tableStoksID.AsString);
    F_main.GridProducts.Columns[7].KeyList.Add(dm.tableStoksID.AsString);
    F_main.GridProducts.Columns[7].PickList.Add(dm.tableStoksNAME.AsString);
     ModalResult := mrOk;
  end
  else
  begin
    ShowMessagerCP(LangNewStock.GetText('Attention'),LangNewStock.GetText('SomeFieldsEmpty'),mtWarning,[mbOK]);
    ModalResult := mrNone;
  end;
end;

procedure TaddNewStock.FormCreate(Sender: TObject);
var
  rememberEmploeeIndex: Integer;
begin
  dm.tableEmploee.First;
  while not dm.tableEmploee.Eof do
  begin
    if dm.tableEmploeeISADMIN.AsInteger <> 1 then
    begin
      CBEmploeers.AddItemValue(dm.tableEmploeeUSERNAME.AsString, dm.tableEmploeeID.AsString);
      if dm.tableEmploeeID.AsInteger = currentUser.userID then
        rememberEmploeeIndex := CBEmploeers.IndexOf(dm.tableEmploeeUSERNAME.AsString);
    end;
    dm.tableEmploee.Next;
  end;
  CBEmploeers.ItemIndex := rememberEmploeeIndex;
end;

procedure TaddNewStock.StockEdrpouKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))or((Length(StockEdrpou.Text)>7)and(Key <> #8) ) then
    Key := #0;
end;

procedure TaddNewStock.StockMFOKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))or((Length(StockMFO.Text)>5)and(Key <> #8) ) then
    key := #0;
end;

procedure TaddNewStock.StockInnKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))or((Length(StockInn.Text)>11)and(Key <> #8) ) then
    key := #0;
end;

procedure TaddNewStock.StockAccNumKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8])) then
    key := #0;
end;

end.

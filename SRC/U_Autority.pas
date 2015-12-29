unit U_Autority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, ActnList, Mask, RzEdit, U_Common, siComp,
  siLngLnk;

type
  TF_Autority = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Edit1: TRzEdit;
    Edit2: TRzEdit;
    Lang_Autority: TsiLangLinked;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Autority: TF_Autority;

implementation

uses U_DM, U_Main, FIBDataSet,U_MessageCP, DB;

{$R *.dfm}

procedure TF_Autority.RzBitBtn2Click(Sender: TObject);
begin
  F_Autority.ModalResult := 2;
  Close;
end;

procedure TF_Autority.RzBitBtn1Click(Sender: TObject);
begin
  F_Autority.ModalResult := 0;
  DM.Autority_Table.Active := False;
  DM.Autority_Table.SQLs.SelectSQL.BeginUpdate;
  DM.Autority_Table.SQLs.SelectSQL.Clear;
  DM.Autority_Table.SQLs.SelectSQL.add('Select * from Employee');
  DM.Autority_Table.SQLs.SelectSQL.add('WHERE UserName = '+''''+Edit1.Text+''''+
                                       ' and ((UserPass = '+''''+Edit2.Text+''') or(UserPass is null)) ' );
  DM.Autority_Table.SQLs.SelectSQL.EndUpdate;
  DM.Autority_Table.Active := True;
  if DM.Autority_Table.IsEmpty then
  begin
    ShowMessagerCP(Lang_Autority.GetText('ErrorTitle'),Lang_Autority.GetText('ErrorCaption'),mtError, [mbOk]);
    F_Autority.ModalResult := 0;
  end
  else
  begin
    F_Main.Current_User := DM.Autority_TableNAME.AsString;
    currentUser.userID := DM.Autority_Table.FieldValues['ID'];
    currentUser.UFullName := DM.Autority_TableNAME.AsString;
    currentUser.UName := DM.Autority_TableUSERNAME.AsString;
    currentUser.UIsAdmin := Boolean(DM.Autority_TableISADMIN.AsInteger);
    if DM.Autority_TableSTOCK_ID.AsString <> '' then
      currentUser.userStockId := DM.Autority_TableSTOCK_ID.AsInteger;
    Close;
    F_Autority.ModalResult := 6;
  end;
end;

procedure TF_Autority.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

end.

unit U_Emploee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, siComp, siLngLnk, StdCtrls, RzLabel, Mask, RzEdit, RzButton, U_DM;

type
  TF_Emploee = class(TForm)
    AddEmpl: TRzBitBtn;
    dellEmpl: TRzBitBtn;
    emploeeName: TRzEdit;
    emploeeMail: TRzEdit;
    emploeePhone: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Lang_Emploee: TsiLangLinked;
    procedure AddEmplClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Emploee: TF_Emploee;

implementation

{$R *.dfm}

procedure TF_Emploee.AddEmplClick(Sender: TObject);
begin
  DM.tableEmploee.Insert;
  DM.tableEmploee.Edit;
  DM.tableEmploeeNAME.AsString :=  emploeeName.Text;
  DM.tableEmploeePOSHTA.AsString := emploeeMail.Text;
  DM.tableEmploeeTELEPHONE.AsString := emploeePhone.Text;
  DM.tableEmploee.Post;
end;

end.

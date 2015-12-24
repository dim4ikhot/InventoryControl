unit U_PassWord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzButton, Mask, RzEdit, ExtCtrls, RzPanel,
  siComp, siLngLnk, RzAnimtr,DB;

type
  TF_Password = class(TForm)
    RzGroupBox1: TRzGroupBox;
    OldPassword: TRzEdit;
    Newpassword: TRzEdit;
    repietpassword: TRzEdit;
    OkPass: TRzBitBtn;
    CancelPass: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    EditPassLang: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure OkPassClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Password: TF_Password;

implementation

Uses U_DM, U_Users, U_Common;
{$R *.dfm}

procedure TF_Password.FormCreate(Sender: TObject);
begin
  if dm.tableEmploeeUSERPASS.AsString = '' then
  begin
    OldPassword.Visible := false;
    RzLabel1.Visible := false;
    Height := 200;
    Width := 201;
  end
  else
  begin
    OldPassword.Visible := true;
    RzLabel1.Visible := true;
    Height := 266;
    Width := 201;
  end;
end;

procedure TF_Password.OkPassClick(Sender: TObject);
var
  MemStr: TMemoryStream;
begin
  if Assigned(F_Users) then
  begin
    If (Trim(OldPassword.Text) = Trim(Dm.tableEmploeeUSERPASS.AsString))or(not OldPassword.Visible) then
    begin
      if Trim(Newpassword.Text) = Trim(repietpassword.Text) then
      begin
        DM.tableEmploee.Edit;
        Dm.tableEmploeeUSERPASS.AsString := Newpassword.Text;
        Dm.tableEmploee.Post;
        Close;
      end
      else
        ShowMessage(EditPassLang.GetText('PassDoNotIdentical'));
    end
    else
      ShowMessage(EditPassLang.GetText('WrongOldPass'));
  end
  else
  begin
   { if DM.tableEmploee.Locate('UserName;LevelAccess;UserGuid', VarArrayOf([activeUser.UserName,activeUser.LevelAccess,activeUser.UserGuid]),[]) then
    begin
      DM.tableEmploee.Edit;
      DM.tableEmploeeUSERPASS.AsString := Newpassword.Text;
      DM.tableEmploee.Post;
      DM.tableEmploee.First;
      Close;
    end;  }
  end;
end;

procedure TF_Password.FormShow(Sender: TObject);
begin
  if DM.tableEmploeeUSERPASS.AsString = '' then
    Newpassword.SetFocus
  else
    OldPassword.SetFocus;
end;

end.

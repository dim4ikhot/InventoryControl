unit U_Users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, siComp, siLngLnk, RzDBLbl, StdCtrls, RzLabel,
  RzButton, RzPanel, ExtCtrls,DB, kbmMemTable, RzRadChk, pFIBQuery, pFIBProps,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh;

type
  TF_Users = class(TForm)
    DBUsersGrid: TDBGridEh;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    AddUser: TRzToolButton;
    RzSpacer2: TRzSpacer;
    DeleteUser: TRzToolButton;
    RzSpacer3: TRzSpacer;
    RzGroupBox1: TRzGroupBox;
    OkBtn: TRzBitBtn;
    CancelBtn: TRzBitBtn;
    RzLabel1: TRzLabel;
    User_Lang: TsiLangLinked;
    RzLabel2: TRzLabel;
    ShowPassword: TRzCheckBox;
    UsersTimer: TTimer;
    procedure AddUserClick(Sender: TObject);
    procedure DBUsersGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBUsersGridColumns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBUsersGridColumns0EditButtons0Down(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBUsersGridColumns1EditButtons0Down(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure DeleteUserClick(Sender: TObject);
    procedure ShowPasswordClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UsersTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Users: TF_Users;

implementation

Uses U_DM, U_Main, U_Password, U_Common;

{$R *.dfm}

procedure TF_Users.AddUserClick(Sender: TObject);
var
  UserNum: Integer;
  NumStr: String;
  RecCnt: Integer;
begin
  UserNum := 0;
  RecCnt := 0;
  While not Dm.tableEmploee.Eof do
  begin
    NumStr := Copy(DM.tableEmploeeUSERNAME.AsString,5, length(DM.tableEmploeeUSERNAME.AsString));
    if NumStr <> '' then
    begin
      try
        UserNum := Strtoint(NumStr);
        inc(RecCnt);
      except
      end;
    end
    else
    if Length(DM.tableEmploeeUSERNAME.AsString) >= 4 then
      inc(RecCnt);
    DM.tableEmploee.next;
  end;
  IF (UserNum > 0)or(RecCnt > 0) then
    Inc(UserNum);
  DM.tableEmploee.Append;
  DM.tableEmploeeISADMIN.AsInteger := 0;
  if UserNum <> 0 then
    DM.tableEmploeeUSERNAME.AsString := 'User' + InttoStr(UserNum)
  else
    DM.tableEmploeeUserName.AsString := 'User';
  DM.tableEmploee.Post;
end;

procedure TF_Users.DBUsersGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  Text1: string;
begin
 { if Column.Index = 3 then
  begin
    if Column.Field.Text <> '' then
    begin
      case StrToInt(Column.Field.Text) of
      1: begin
           Text1 := User_Lang.GetText('ReadWrite');    //'Чтение/запись';
         end;
      2: begin
           Text1 := User_Lang.GetText('ReadONnly');    //'Чтение';
         end;
      0: begin
           Text1 := User_Lang.GetText('AccessDenied'); //'Доступ ограничен';
         end;
      3: Begin
           Text1 := User_Lang.GetText('Administrator');//'Администрирование';
         end;
      end;
      DBUsersGrid.Canvas.TextOut((Rect.Right + Rect.Left)
          div 2 - Canvas.TextWidth(Text1) div 2, Rect.Top + 2, Text1);
    end;
  end
  else   }
  if (Column.Index = 1)and(not ShowPassword.Checked) then
  begin
    TExt1 := User_Lang.GetText('Change'); //'Изменить...';
    DBUsersGrid.Canvas.TextOut(Rect.Left, Rect.Top + 2, Text1);
  end;

end;

procedure TF_Users.DBUsersGridColumns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Text <> '' then
    Text := IntToStr(DBUsersGrid.Columns.Items[3].PickList.IndexOf(Text));
end;

procedure TF_Users.DBUsersGridColumns0EditButtons0Down(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
var
  sName: String;
begin
  sName := DM.tableEmploeeUserName.AsString;
  if InputQuery(User_Lang.GetText('EditName'), User_Lang.GetText('Name'), sName) then
  begin
    if sName = '' then Exit;
    if (not DM.tableEmploee.Locate('UserName',sName,[])) then
    begin
      DM.tableEmploee.Edit;
      DM.tableEmploeeUserName.AsString := sName;
      DM.tableEmploee.Post;
    end
    else
      Showmessage(User_Lang.GetText('ExistUser'));//Пользователь с таким именем уже существует!
  end;
end;

procedure TF_Users.DBUsersGridColumns1EditButtons0Down(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  try
    Application.CreateForm(TF_Password, F_Password);
    F_Password.ShowModal;
    FreeAndNil(F_Password);
  except
    FreeAndNil(F_Password);
  end;
end;

procedure TF_Users.FormCreate(Sender: TObject);
var
  MemStr: TMemorystream;
begin
  //добавить украинские записи в PickList
  DBUsersGrid.Columns[3].PickList.Clear;
  DBUsersGrid.Columns[3].PickList.Add(User_Lang.GetText('ReadWrite'));    //'Чтение/запись';
  DBUsersGrid.Columns[3].PickList.Add(User_Lang.GetText('Administrator'));//'Администрирование'

  DBUsersGrid.Columns[3].KeyList.Clear;
  DBUsersGrid.Columns[3].KeyList.Add('0');    //'Чтение/запись';
  DBUsersGrid.Columns[3].KeyList.Add('1');     //'Администрирование'

 // RzLabel2.Caption := ActiveUSer.UserName;
  UsersTimer.Enabled := true;
end;

procedure TF_Users.OkBtnClick(Sender: TObject);
begin
  if DM.tableEmploee.State = dsEdit then
    DM.tableEmploee.Post;
end;

procedure TF_Users.DeleteUserClick(Sender: TObject);
begin
 { if (ActiveUSer.UserName = DM.mtUsersUserName.AsString)and(ActiveUSer.Password = DM.mtUsersPassWord.AsString)and
     (ActiveUser.LevelAccess = DM.mtUsersLevelAccess.AsInteger) then
    ShowMessage(User_Lang.GetText('CantDeleteActiveUser'))
  else  }
  begin
    if DM.tableEmploeeISADMIN.AsInteger <> 1 then
    begin
      if MessageBox(Self.Handle, User_Lang.GetTextC('DelCurUser'), User_Lang.GetTextC('DelCaption'), MB_YESNO) = 6 then
      begin
        DM.tableEmploee.Delete;
      end;
    end
    else
      ShowMessage(User_Lang.GetText('CantDeleteActiveUser'));
  end
end;

procedure TF_Users.ShowPasswordClick(Sender: TObject);
begin
  if ShowPassword.Checked then
  begin
    DBUsersGrid.Columns[1].FieldName := 'PASSWORD';
  end
  else
    DBUsersGrid.Columns[1].FieldName := '';
end;


procedure TF_Users.FormDestroy(Sender: TObject);
begin
  UsersTimer.Enabled := false;
end;

procedure TF_Users.UsersTimerTimer(Sender: TObject);
begin
  with DBUsersGrid do
  begin
//    if ActiveUser.AdminRights = 0 then
    begin
      if (DM.tableEmploeeISADMIN.AsInteger = 1) then
      begin
        Columns[0].EditButtons[0].Visible := false;
        Columns[3].ReadOnly := true;
      end
      else
      begin
        Columns[3].ReadOnly := false;
        Columns[0].EditButtons[0].Visible := true;
      end;
   { end
    else
    begin
      if DM.mtUsersUserGuid.AsString = ActiveUser.UserGuid then
      begin
        Columns[0].EditButtons[0].Visible := false;
        Columns[3].ReadOnly := true;
      end
      else
      begin
        Columns[3].ReadOnly := false;
        Columns[0].EditButtons[0].Visible := true;
      end; }
    end;
  end;
end;

end.

unit U_BaseConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, Mask, RzEdit, RzRadChk, ExtCtrls, RzPanel,
  RzButton, RzShellDialogs, ShlObj, ShellAPI, ActiveX, U_Common;

type
  TShareInfo2 = packed record
      shi2_netname : PWChar;
      shi2_type: DWORD;
      shi2_remark :PWChar;
      shi2_permissions: DWORD;
      shi2_max_uses : DWORD;
      shi2_current_uses : DWORD;
      shi2_path : PWChar;
      shi2_passwd : PWChar;
    end;
    PShareInfo2 = ^ TShareInfo2;
  TShareInfo2Array = array [0..512] of TShareInfo2;
  PShareInfo2Array = ^ TShareInfo2Array;

  TShareInfo50 = packed record
     shi50_netname : array [0..12] of Char;
     shi50_type : Byte;
     shi50_flags : Word;
     shi50_remark : PChar;
     shi50_path : PChar;
     shi50_rw_password : array [0..8] of Char;
     shi50_ro_password : array [0..8] of Char;
    end;

    TShareInfo298 = packed record
     shi2_netname : array[0..12] of Char;
     shi2_type: Byte;
     shi2_remark : PChar;
     shi2_max_uses : DWORD;
     shi2_current_uses : DWORD;
     shi2_path : PChar;
     shi2_passwd : array[0..9] of Char;
    end;

    TSERVER_INFO_100 = record
      sv100_platform_id: DWORD;
      sv100_name: LPTSTR;
    end;

  TF_BaseConnection = class(TForm)
    SetConnection: TRzBitBtn;
    CancelConnect: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    doNotAskAnyMore: TRzCheckBox;
    gbLocalConnection: TRzGroupBox;
    gbRemoteConnection: TRzGroupBox;
    localBasePath: TRzEdit;
    BrowsePathToBase: TRzButton;
    EditServerNAme: TRzEdit;
    remoteBasePath: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    ServerBasePath: TRzButton;
    BrowseServer: TRzButton;
    ODLocal: TRzOpenDialog;
    FDHost: TRzSelectFolderDialog;
    rbLocalConection: TRzRadioButton;
    rbRemoteConnection: TRzRadioButton;
    procedure BrowseServerClick(Sender: TObject);
    procedure ServerBasePathClick(Sender: TObject);
    procedure BrowsePathToBaseClick(Sender: TObject);
    procedure rbRemoteConnectionClick(Sender: TObject);
    procedure rbLocalConectionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BaseConnection: TF_BaseConnection;

implementation

{$R *.dfm}

// Диалог выбора компа в сети.
function BrowseComputer(ADialogTitle, ADefComputer: string; bNewStyle: boolean=false): String;
const
  BIF_USENEWUI = 28;
var
  BrowseInfo: TBrowseInfo;
  ItemIDList: PItemIDList;
  ComputerName: array[0..MAX_PATH] of Char;
  Title: string;
  WindowList: Pointer;
  ShellMalloc: IMalloc;
  IsOk: Boolean;

  procedure CallBackAll(Wnd: HWnd; uMsg: Uint; lParam, lpData: LPARAM); stdcall;
  var
    S: string;
    TempPath : array[0..MAX_PATH] of char;
    DriveChar: string;
    DriveType: integer;
  begin
    // Выделить комп из параметра ADefComputer
    if uMsg  = BFFM_INITIALIZED then
      SendMessage(Wnd, BFFM_SETSELECTION, Ord(True), Integer(lpData));
    if uMsg = BFFM_SELCHANGED then
    begin
      // Если не сетевая папка, то разрешаем кнопку ОК
      if Not SHGetPathFromIDList(PItemIDList(lParam), TempPath) then
        SendMessage(wnd, BFFM_ENABLEOK, 0, 1)
      else
        SendMessage(wnd, BFFM_ENABLEOK, 0, 0);
    end;
  end;

begin
  Result := '';
  IsOk := false;
  if Failed( SHGetSpecialFolderLocation( Application.Handle, CSIDL_NETWORK, ItemIDList ) ) then
    raise Exception.Create( 'Unable open browse computer dialog' );
  try
    FillChar( BrowseInfo, SizeOf( BrowseInfo ), 0 );
    BrowseInfo.hwndOwner := Application.Handle;
    BrowseInfo.pidlRoot := ItemIDList;
    BrowseInfo.pszDisplayName := ComputerName;
    Title := ADialogTitle;
    BrowseInfo.lpszTitle := PChar( Pointer( Title ) );
    if bNewStyle then
      BrowseInfo.ulFlags := BIF_BROWSEFORCOMPUTER or BIF_USENEWUI
    else
      BrowseInfo.ulFlags := BIF_BROWSEFORCOMPUTER;
    BrowseInfo.lpfn := @CallBackAll;
    if ADefComputer <> '' then
      BrowseInfo.lparam := Integer(PChar(ADefComputer));
    WindowList := DisableTaskWindows( 0 );
    try
      IsOk := SHBrowseForFolder( BrowseInfo ) <> nil;
    finally
      EnableTaskWindows( WindowList );
    end;
    if IsOk then
      Result := ComputerName;
  finally
    if Succeeded( SHGetMalloc( ShellMalloc ) ) then
      ShellMalloc.Free( ItemIDList );
  end;
end;

function IsNT(var Value: Boolean): Boolean;
var Ver: TOSVersionInfo;
    BRes: Boolean;
begin
  Ver.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  BRes := GetVersionEx(Ver);
  if not BRes then   //Проверка
  begin
    Result := False; //Информация не получена
    Exit;            //уходим
  end else
    Result := True;  //Информация получена

  case Ver.dwPlatformId of //определяемся
    VER_PLATFORM_WIN32_NT       : Value := True;  //Windows NT - подходит
    VER_PLATFORM_WIN32_WINDOWS  : Value := False; //Windows 9x-Me - подходит
    VER_PLATFORM_WIN32s         : Result := False //Windows 3.x - не подходит
  end;
end;

function GetLocalPath(Server: string; NetDrive: string): string;
var
  i:Integer;
  FLibHandle : THandle;
  ShareNT : PShareInfo2Array;     //<= Перемеменные
  entriesread,totalentries:DWORD; //<= для Windows NT
  Share : array [0..512] of TShareInfo50; //<= Перемеменные
  Share2: array [0..512] of TShareInfo298;
  pcEntriesRead,pcTotalAvail:Word;        //<= для Windows 9x-Me
  OS: Boolean;
  Res: integer;
  ServName: PWideChar;
  LocPath: string;

  SERVER_INFO_100: TSERVER_INFO_100;

  NetShareEnumNT: function ( servername:PWChar;
                          level:DWORD;
                          bufptr:Pointer;
                          prefmaxlen:DWORD;
                          entriesread,
                          totalentries,
                          resume_handle:LPDWORD): DWORD; stdcall;
                          
  NetShareEnum:function ( pszServer : PChar;
                        sLevel  : Cardinal;
                        pbBuffer : Pchar;
                        cbBuffer : Cardinal;
                        pcEntriesRead,
                        pcTotalAvail: Pointer):DWORD; stdcall;
begin
  result := '';

  if not IsNT(OS) then exit; //Определяем тип системы

  // Получить тип сервера
  //NetServerGetInfo( Server, 100, @SERVER_INFO_100);

  if OS then begin  //Код для NT
    FLibHandle := LoadLibrary('NETAPI32.DLL'); //Загружаем библиотеку
    if FLibHandle = 0 then Exit;
    //Связываем функцию
    @NetShareEnumNT := GetProcAddress(FLibHandle,'NetShareEnum');
    if not Assigned(NetShareEnumNT) then //Проверка
    begin
      FreeLibrary(FLibHandle);
      Exit;
    end;
    ShareNT := nil; //Очищаем указатель на массив структур
    //Вызов функции
    GetMem(ServName, length(Server) * 2 + 1);
    StringToWideChar(Server, ServName, length(Server) * 2 + 1);
    Res := NetShareEnumNT(ServName, 2, @ShareNT, DWORD(-1), @entriesread, @totalentries, nil);
    FreeMem(ServName);
    if Res <> 0 then
    begin  //Если вызов неудачен выгружаем библиотеку
      FreeLibrary(FLibHandle);
      Exit;
    end;
    if entriesread > 0 then
    begin  //Обработка результатов
      NetDrive := AnsiUpperCase(NetDrive);
      try
        for i:= 0 to entriesread - 1 do
        begin
          LocPath := String(ShareNT^[i].shi2_netname);
          LocPath := AnsiUpperCase(LocPath);
          if NetDrive = LocPath then
            result := String(ShareNT^[i].shi2_path);
        end;
      except
      end;
    end
  end
  else
  begin //Код для 9х-Ме
    if length(server) >= 2 then
    begin
      if (server[1] <> '\') and (server[2] <> '\') then
        server := '\\' + server;
    end;
    FLibHandle := LoadLibrary('SVRAPI.DLL'); //Загружаем библиотеку
    if FLibHandle = 0 then Exit;
    //Связываем функцию
    @NetShareEnum := GetProcAddress(FLibHandle,'NetShareEnum');
    if not Assigned(NetShareEnum) then //Проверка
    begin
      FreeLibrary(FLibHandle);
      Exit;
    end;
    //Вызов функции
    Res := NetShareEnum(PChar(Server), 50, @Share, SizeOf(Share), @pcEntriesRead, @pcTotalAvail);
    if Res <> 0 then
    begin
      Res := NetShareEnum(PChar(Server), 2, @Share2, SizeOf(Share2), @pcEntriesRead, @pcTotalAvail);
      if Res <> 0 then
      begin  //Если вызов неудачен выгружаем библиотеку
        FreeLibrary(FLibHandle);
        Exit;
      end;
      if pcEntriesRead > 0 then //Обработка результатов
      begin
        NetDrive := AnsiUpperCase(NetDrive);
        try
          for i:= 0 to entriesread - 1 do
          begin
            LocPath := String(Share2[i].shi2_netname);
            LocPath := AnsiUpperCase(LocPath);
            if NetDrive = LocPath then
              result := String(Share2[i].shi2_path);
          end;
        except
        end;
      end;
      FreeLibrary(FLibHandle); //Не забываем выгрузить библиотеку
      exit;
    end;
    if pcEntriesRead > 0 then //Обработка результатов
    begin
      NetDrive := AnsiUpperCase(NetDrive);
      try
        for i:= 0 to entriesread - 1 do
        begin
          LocPath := String(Share[i].shi50_netname);
          LocPath := AnsiUpperCase(LocPath);
          if NetDrive = LocPath then
            result := String(Share[i].shi50_path);
        end;
      except
      end;  
    end;
  end;
  FreeLibrary(FLibHandle); //Не забываем выгрузить библиотеку
end;

function GetFullRemotePath(APath: String): String;
var
  TempPath: String;
  NetServer: string;
  NetFolder: string;
  PathTmp: string;
begin
  Result := APath;
  TempPath := APath;
  if (length(APath) > 1) {and (DirectoryExists(APath))} then
  begin
    if (pos('\\', TempPath) = 1) {and (DirectoryExists(TempPath))} then
    begin
      try
        PathTmp := '';
        NetServer := copy(TempPath, 3, length(TempPath));
        NetFolder := copy(NetServer, pos('\', NetServer) + 1, length(NetServer));
        NetServer := copy(NetServer, 1, pos('\', NetServer) - 1);
        if pos('\', NetFolder) <> 0 then
        begin
          PathTmp := copy(NetFolder, pos('\', NetFolder) + 1, length(NetFolder));
          NetFolder := copy(NetFolder, 1, pos('\', NetFolder) - 1);
        end;
        NetFolder := GetLocalPath(NetServer, NetFolder);
        NetFolder := NetFolder;
        if NetFolder[length(NetFolder)] <> '\' then
          NetFolder := NetFolder + '\';
        Result := NetServer + ':' + NetFolder + PathTmp;
        if Result[length(Result)] <> '\' then
          Result := Result + '\';
      except
      end;
    end
    else
    begin
      try
        Result := copy(TempPath, 1, length(TempPath));
        if Result[length(Result)] <> '\' then
          Result := Result + '\';
      except
      end;
    end;
  end
end;

// Диалог просмотра папок в сети.
function BrowseDialogRemote(AHandle: THandle; ADefFolder, ATitle: String): String;
var
  TitleName : string;
  BrowseInfo : TBrowseInfo;
//  ISh: IShellFolder;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
  Buff: PChar;
  PIDL: PItemIDList;
  NetServer: string;
  NetFolder: string;
  sr: TSearchRec;
  FileAttrs: Integer;
  PFileInfo: PSHFileInfo;
  SizePFInfo: integer;
  PathTmp: string;
  FullPath: string;
  TempStr: string;
  i: integer;
  FileN: string;

  lpItemID : PItemIDList;
  BaseFolder: String;

  procedure CallBackAll(Wnd: HWnd; uMsg: Uint; lParam, lpData: LPARAM); stdcall;
  var
    S: string;
    TempPath : array[0..MAX_PATH] of char;
    DriveChar: string;
    DriveType: integer;
  begin
  //  S := 'Выберите папку для установки программы';
  //  SendMessage(Wnd, BFFM_SetStatusText, 0, LongInt(@S[1]));
    if uMsg  = BFFM_INITIALIZED then
      SendMessage(Wnd, BFFM_SETSELECTION, Ord(True), Integer(lpData));
    if uMsg = BFFM_SELCHANGED then
    begin
      if Not SHGetPathFromIDList(PItemIDList(lParam), TempPath) then
        SendMessage(wnd, BFFM_ENABLEOK, 0, 0)
      else
      begin
        try
          DriveChar := ExtractFileDrive(TempPath);
          DriveType := GetDriveType(PChar(DriveChar + '\'));
          if (DriveType = 3) or ((DriveType = 4) And (Pos('\\', TempPath) <> 0))  then
            SendMessage(wnd, BFFM_ENABLEOK, 0, 1)
          else
            SendMessage(wnd, BFFM_ENABLEOK, 0, 0);
        except
            SendMessage(wnd, BFFM_ENABLEOK, 0, 0);
        end;
      end;
    end;
  end;

begin
  BaseFolder := ADefFolder;

  TempPath := '';
  try
//    SHGetSpecialFolderLocation(Handle, CSIDL_DRIVES, PIDL);
//    TitleName := 'Please specify a directory';

    PIDL := nil;
    TitleName := ATitle;

    FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
    BrowseInfo.hwndOwner := AHandle;
    BrowseInfo.pszDisplayName := @DisplayName;
    BrowseInfo.lpszTitle := PChar(TitleName);
    BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
    BrowseInfo.pidlRoot := PIDL;
    BrowseInfo.lpfn := @CallBackAll;
    if ADefFolder <> '' then
    begin
      //BrowseInfo.lparam := Integer(PChar(copy(ADefFolder, 2, length(ADefFolder) - 1)));
      //BrowseInfo.lparam := Integer(PChar(copy(ADefFolder, 3, length(ADefFolder) - 2)));
      BrowseInfo.lparam := Integer(PChar(ADefFolder));
    end;
       lpItemID := SHBrowseForFolder(BrowseInfo);
    if lpItemId <> nil then
    begin
      SHGetPathFromIDList(lpItemID, TempPath);
      GlobalFreePtr(lpItemID);
    end;
  except
        on E: Exception do
           ShowMessage('BrowseDialogRemote   ' + E.Message);
  end;
  Result := GetFullRemotePath(TempPath);
end;

procedure TF_BaseConnection.BrowseServerClick(Sender: TObject);
begin
  EditServerNAme.Text := BrowseComputer('Выберете сервер','\\');
end;

procedure TF_BaseConnection.ServerBasePathClick(Sender: TObject);
var
  Server, Local: String;
begin
  ExtractServerName(BrowseDialogRemote(Handle, '\\' + EditServerNAme.Text, ''), Server, Local);
  if Local = '' then Exit;
  remoteBasePath.Text := Local + '\DATA.DAT';
  EditServerNAme.Text := Server;
end;

procedure TF_BaseConnection.BrowsePathToBaseClick(Sender: TObject);
begin
  if ODLocal.Execute then
  begin
    localBasePath.Text := ODLocal.FileName;
  end;
end;

procedure TF_BaseConnection.rbRemoteConnectionClick(Sender: TObject);
begin
  gbRemoteConnection.Enabled := True;
  gbLocalConnection.Enabled := False;
end;

procedure TF_BaseConnection.rbLocalConectionClick(Sender: TObject);
begin
  gbRemoteConnection.Enabled := False;
  gbLocalConnection.Enabled := True;
end;

end.

unit U_Common;

interface

uses
  Windows, ActiveX, SysUtils, Controls, Registry, Forms, Messages, Dialogs, Classes,
  DateUtils, StdCtrls, ExtCtrls, INIFiles, Graphics, Math, DB, WinSock,
  tlhelp32, ShellAPI;

  procedure ExtractServerName(const AFileName: String; var AServerName, ALocalPath: String);
  function GetCharCountFromStr(AChar: Char; AStr: String): Integer;


implementation

{===================  ќтдел€ем им€ сервера от пути к базе  ====================}
function GetCharCountFromStr(AChar: Char; AStr: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(AStr) do
    if AStr[i] = AChar then
      Inc(Result);
end;

procedure ExtractServerName(const AFileName: String; var AServerName, ALocalPath: String);
var
  i: Integer;
  TotalColonCount: Integer; //общщее количество двоеточий
  CurrColonCount: Integer;  //текущее количество двоеточий
begin
  AServerName := '';
  ALocalPath := '';

  TotalColonCount := GetCharCountFromStr(':', AFileName);
  if pos(':/', AFileName) >= 1 then
  begin
    TotalColonCount := 2;
  end;
  //*** ≈сли нет двоеточий, или одно, то это локальный путь
  if TotalColonCount <= 1 then
    ALocalPath := AFileName
  else
  //*** ≈сли 2 двоеточий, то это сетевой путь
  if TotalColonCount = 2 then
  begin
    CurrColonCount := 0;
    for i := 1 to Length(AFileName) do
    begin
      if AFileName[i] = ':' then
      begin
        Inc(CurrColonCount);
        //*** пропускаеи 1- двоеточие  - граница между именем сервера и локальным путем
        if CurrColonCount = 1 then
          Continue; //// CONTINUE ////
      end;

      if CurrColonCount = 0 then
        AServerName := AServerName + AFileName[i]
      else
        ALocalPath := ALocalPath + AFileName[i];
    end;
  end;
end;

end.

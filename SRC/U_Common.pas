unit U_Common;

interface

uses
  Windows, ActiveX, SysUtils, Controls, Registry, Forms, Messages, Dialogs, Classes,
  DateUtils, StdCtrls, ExtCtrls, INIFiles, Graphics, Math, DB, WinSock,
  tlhelp32, ShellAPI;

  procedure ExtractServerName(const AFileName: String; var AServerName, ALocalPath: String);
  function GetCharCountFromStr(AChar: Char; AStr: String): Integer;
  function RoundX(Num: Extended; Dig: integer): Extended;
  procedure createIniFile;
  procedure destroyIniFile;


var
  Inif: TIniFile;
implementation

procedure createIniFile;
begin
  Inif := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\settings.ini');
end;

procedure destroyIniFile;
begin
  FreeAndNil(Inif);
end;

{===================  �������� ��� ������� �� ���� � ����  ====================}
function GetCharCountFromStr(AChar: Char; AStr: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(AStr) do
    if AStr[i] = AChar then
      Inc(Result);
end;

function RoundX(Num: Extended; Dig: integer): Extended;
const
  epsilon: Double = 0.000001;
var
  Fakt: Extended;
  Vrem: Extended;
  pw: Extended;
begin
  SetPrecisionMode(pmExtended);
  Set8087CW(Default8087CW);

  pw := Power(10, Dig);
  Fakt := Frac(Num);
  Fakt := pw * Fakt;
  Vrem := Frac(Fakt);
  Fakt := Int(Fakt);
  if (Vrem - 0.5) >= -epsilon then
    Fakt := Fakt + 1
  else if (Vrem + 0.5) <= -epsilon then
    Fakt := Fakt - 1;
  Result := Int(Num) + Fakt/pw;
end;

procedure ExtractServerName(const AFileName: String; var AServerName, ALocalPath: String);
var
  i: Integer;
  TotalColonCount: Integer; //������ ���������� ���������
  CurrColonCount: Integer;  //������� ���������� ���������
begin
  AServerName := '';
  ALocalPath := '';

  TotalColonCount := GetCharCountFromStr(':', AFileName);
  if pos(':/', AFileName) >= 1 then
  begin
    TotalColonCount := 2;
  end;
  //*** ���� ��� ���������, ��� ����, �� ��� ��������� ����
  if TotalColonCount <= 1 then
    ALocalPath := AFileName
  else
  //*** ���� 2 ���������, �� ��� ������� ����
  if TotalColonCount = 2 then
  begin
    CurrColonCount := 0;
    for i := 1 to Length(AFileName) do
    begin
      if AFileName[i] = ':' then
      begin
        Inc(CurrColonCount);
        //*** ���������� 1- ���������  - ������� ����� ������ ������� � ��������� �����
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

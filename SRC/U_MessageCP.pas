{******************************************************************************}
{   Unit Name: U_MessageCP                                                     }
{   Author:    Malyar Dmitriy Valer'evich  .::SK::.                            }
{   Date:      22.07.2012                                                      }
{   Unit:      ����� ��������� ������� MessagerDlg                             }
{******************************************************************************}
unit U_MessageCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLabel, ExtCtrls, ImgList, Buttons, Consts,
  U_DM;

type
  TMsgCPType = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
  TMsgCPBtn = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore, mbAll, mbNoToAll, mbYesToAll, mbHelp);
  TMsgCPButton = Set of TMsgCPBtn;

  TF_MessageCP = class(TForm)
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  ModalResults: array[TMsgCPBtn] of Integer = (mrYes, mrNo, mrOk, mrCancel, mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll, mrYesToAll, 0);
  ButtonNames: array[TMsgCPBtn] of string = ('Yes', 'No', 'OK', 'Cancel', 'Abort', 'Retry', 'Ignore', 'All', 'NoToAll', 'YesToAll', 'Help');
  BtnCaptionRUS: array[TMsgCPBtn] of String = ('��', '���', '��', '������', '��������', '���������', '������������', '���', '��� ��� ����', '�� ��� ����', '������');
  BtnCaptionUKR: array[TMsgCPBtn] of String = ('���', 'ͳ', '��', '���������', '���������', '���������', '����������', '���', '�� ��� ���', '��� ���', '��������');

  IconIDs: array[TMsgCPType] of PChar = (IDI_EXCLAMATION, IDI_HAND, IDI_ASTERISK, IDI_QUESTION, nil);

  function ShowMessagerCP(ACaption, AMessagerText: String; AMsgTypeConfig:TMsgCPType; AMsgButton: TMsgCPButton): TModalResult;

var
  F_MessageCP: TF_MessageCP;

implementation

{$R *.dfm}

const
  IndentBtn: Integer = 10;
  DefaultWidthBtn: Integer = 75;
  DefaultWidthFrm: Integer = 350;
  IconH: byte = 8;
  IconW: byte = 8;

function ShowMessagerCP(ACaption, AMessagerText: String; AMsgTypeConfig:TMsgCPType; AMsgButton: TMsgCPButton): TModalResult;
var
  MessagerCP: TForm;
  Btn: TMsgCPBtn;
  CountBtn, TotalPosBtn, cBtn: Integer;

  TotalWidthBtn: Integer;
  IconiD: PChar;
begin
  F_MessageCP := TF_MessageCP.Create(Application);
  F_MessageCP.Position := poScreenCenter;
  F_MessageCP.BorderStyle := bsDialog;
  F_MessageCP.Width := DefaultWidthFrm;
  F_MessageCP.Height := 130;
  F_MessageCP.Caption := ACaption;
  try
    TotalWidthBtn := 0;
    CountBtn := 0;
    for Btn := Low(TMsgCPBtn) to High(TMsgCPBtn) do
    begin
      if Btn in AMsgButton then
      begin
        TotalWidthBtn := TotalWidthBtn + DefaultWidthBtn + IndentBtn;

        Inc(CountBtn);
      end;
    end;
    TotalWidthBtn := TotalWidthBtn + 40;

    IconID := IconIDs[AMsgTypeConfig];

    if TotalWidthBtn > DefaultWidthFrm then
      F_MessageCP.Width := TotalWidthBtn
    else
      F_MessageCP.Width := DefaultWidthFrm;

    if IconID <> nil then
      with TImage.Create(F_MessageCP) do
      begin
        Name := 'Image';
        Parent := F_MessageCP;
        Picture.Icon.Handle := LoadIcon(0, IconID);
        SetBounds(IconH, IconW, 32, 32);
      end;

    with TLabel.Create(F_MessageCP) do
    begin
      Parent := F_MessageCP;
      Name := 'MessagerText';
      AutoSize := True;
      Transparent := True;
      Caption := AMessagerText;
      if IconID <> nil then
        Left := 78
      else
        Left := 30;
      Top := 20;
      if Left + Width > F_MessageCP.Width then
        F_MessageCP.Width := Left + Width + 20;
      Left := (F_MessageCP.Width div 2) - (Width div 2);
    end;

    TotalPosBtn := (F_MessageCP.Width div 2) - ((CountBtn * 80) div 2);
    cBtn := 0;
    for Btn := Low(TMsgCPBtn) to High(TMsgCPBtn) do
    begin
      if Btn in AMsgButton then
      begin
        with TRzBitBtn.Create(F_MessageCP) do
        begin
          if cBtn <> 0 then
            TotalPosBtn := TotalPosBtn + 80;
          Name := ButtonNames[Btn];
          Parent := F_MessageCP;
          If Assigned(DM) then
          begin
            if DM.ProgramLangs.ActiveLanguage = 1 then
              Caption := BtnCaptionRUS[Btn];

            if DM.ProgramLangs.ActiveLanguage = 2 then
              Caption := BtnCaptionUKR[Btn];
          end
          else
            Caption := BtnCaptionRUS[Btn];

          Top := F_MessageCP.ClientRect.Bottom - 30;
          Left := TotalPosBtn;
          HotTrack := True;
          ModalResult := ModalResults[Btn];
          Inc(cBtn);
        end;
      end;
    end;

    F_MessageCP.ShowModal;
  finally
    Result := F_MessageCP.ModalResult;
    FreeAndNil(F_MessageCP);
    Application.ProcessMessages;
  end;
end;  

{ TF_MessageCP }

procedure TF_MessageCP.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    ModalResult := mrCancel;
    Close;
  end;
end;

end.


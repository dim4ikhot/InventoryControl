unit U_AddProviderClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzLabel, U_DM, siComp,
  siLngLnk;

type
  TF_AddClientProvider = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    ProviderClientName: TRzEdit;
    ProviderClientAdress: TRzEdit;
    ProviderClientPhone: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    LangClientProv: TsiLangLinked;
    RzLabel4: TRzLabel;
    ProviderClientEDRPOU: TRzEdit;
    ProviderClientBank: TRzEdit;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    ProviderClientAccmun: TRzEdit;
    RzLabel7: TRzLabel;
    ProviderClientIPN: TRzEdit;
    ProviderClientMFO: TRzEdit;
    RzLabel8: TRzLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure ProviderClientEDRPOUKeyPress(Sender: TObject; var Key: Char);
    procedure ProviderClientAccmunKeyPress(Sender: TObject; var Key: Char);
    procedure ProviderClientMFOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AddProvider: TF_AddClientProvider;
  F_AddClient: TF_AddClientProvider;

implementation

{$R *.dfm}

procedure TF_AddClientProvider.RzBitBtn1Click(Sender: TObject);
begin
  if F_AddProvider <> nil then
  begin
    DM.tableProviders.Insert;
    DM.tableProviders.Edit;
    DM.tableProvidersNAME.AsString := ProviderClientName.Text;
    DM.tableProvidersADDR1.AsString := ProviderClientAdress.Text;
    DM.tableProvidersPHONE.AsString := ProviderClientPhone.Text;
    DM.tableProvidersEDRPOU.AsString := ProviderClientEDRPOU.Text;
    DM.tableProvidersACCBANK.AsString := ProviderClientBank.Text;
    DM.tableProvidersACCNUMBER.AsString := ProviderClientAccmun.Text;
    DM.tableProvidersIPN.AsString := ProviderClientIPN.Text;
    DM.tableProvidersMFO.AsString := ProviderClientMFO.Text;
    DM.tableProviders.Post;
  end
  else
  begin
    DM.tableClients.Insert;
    DM.tableClients.Edit;
    DM.tableClientsNAME.AsString := ProviderClientName.Text;
    DM.tableClientsPHONE.AsString := ProviderClientPhone.Text;
    DM.tableClientsADDR1.AsString := ProviderClientAdress.Text;
    DM.tableClientsEDRPOU.AsString := ProviderClientEDRPOU.Text;
    DM.tableClientsIPN.AsString := ProviderClientIPN.Text;
    DM.tableClientsMFO.AsString := ProviderClientMFO.Text;
    DM.tableClientsACCBANK.AsString := ProviderClientBank.Text;
    DM.tableClientsACCNUM.AsString := ProviderClientAccmun.Text;
    DM.tableClients.Post;
  end;
end;

procedure TF_AddClientProvider.ProviderClientEDRPOUKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))or((Length(ProviderClientEDRPOU.Text)>7)and(Key <> #8) ) then
    Key := #0;
end;

procedure TF_AddClientProvider.ProviderClientAccmunKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',#8])) then
    key := #0;
end;

procedure TF_AddClientProvider.ProviderClientMFOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not (key in ['0'..'9',#8]))or((Length(ProviderClientMFO.Text)>5)and(Key <> #8) ) then
    key := #0;
end;

end.

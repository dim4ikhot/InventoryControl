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
    procedure RzBitBtn1Click(Sender: TObject);
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

    DM.tableProviders.Post;
  end
  else
  begin
    DM.tableClients.Insert;
    DM.tableClients.Edit;

    DM.tableClients.Post;
  end;
end;

end.

unit U_ClientsProviders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Main;

type
  TF_ClientsProviders = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Clients: TF_ClientsProviders;
  F_Providers: TF_ClientsProviders;
implementation

{$R *.dfm}

procedure TF_ClientsProviders.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if F_Providers <> nil then
  begin
    F_Main.GridProviders.Parent := F_Main.RzSplitter3;
    F_Main.PanelProviders.Parent := F_Main.RzSplitter3;
    F_Main.ToolbarProviders.Parent := F_Main.RzSplitter3;
  end
  else
  begin
    F_Main.GridClients.Parent := F_Main.ListEmploeeCustomers;
    F_Main.PanelCustomers.Parent := F_Main.ListEmploeeCustomers;
    F_Main.ToolbarCustomers.Parent := F_Main.ListEmploeeCustomers;
  end;
end;

end.

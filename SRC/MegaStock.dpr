program MegaStock;

uses
  Forms,
  SysUtils,
  U_Main in 'U_Main.pas' {F_Main},
  U_NewStock in 'U_NewStock.pas' {addNewStock},
  U_NewProduct in 'U_NewProduct.pas' {F_NewProduct},
  U_AddProviderClient in 'U_AddProviderClient.pas' {F_AddClientProvider},
  U_ProductInfo in 'U_ProductInfo.pas' {F_ProductInfo},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_BaseConnection in 'U_BaseConnection.pas' {F_BaseConnection},
  U_Common in 'U_Common.pas',
  U_MovePositions in 'U_MovePositions.pas' {F_MovePosition},
  U_BaseUpdate in 'U_BaseUpdate.pas',
  U_about in 'U_about.pas' {F_About},
  U_FR in 'U_FR.pas' {F_FR},
  XLSFile in 'XLSFile.pas',
  U_MessageCP in 'U_MessageCP.pas' {F_MessageCP},
  U_Splash in 'U_Splash.pas' {F_Splash},
  U_Emploee in 'U_Emploee.pas' {F_Emploee},
  U_SettingsInvoice in 'U_SettingsInvoice.pas' {F_PrepareInvoice},
  U_InvoiceIn in 'U_InvoiceIn.pas' {F_InvoiceIn},
  U_ProductsOut in 'U_ProductsOut.pas' {F_ProductsOut},
  U_ClientsProviders in 'U_ClientsProviders.pas' {F_ClientsProviders};

{$R *.res}
var i: Integer = 0;

begin
  Application.Initialize;
  try
    F_Splash := TF_Splash.Create(Application);
    F_Splash.Show;
    F_Splash.Refresh;
  finally
    while i < 20 do
    begin
      Sleep(100);
      Application.ProcessMessages;
      Inc(i);
    end;
    freeAndNil(F_Splash);
  end;
  Application.CreateForm(TDM, DM);
  Application.Title := 'Складской учет';
  Application.CreateForm(TF_Main, F_Main);


  Application.Run;
end.

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
  U_MessageCP in 'U_MessageCP.pas' {F_MessageCP},
  U_Splash in 'U_Splash.pas' {F_Splash},
  U_Emploee in 'U_Emploee.pas' {F_Emploee},
  U_SettingsInvoice in 'U_SettingsInvoice.pas' {F_PrepareInvoice},
  U_InvoiceIn in 'U_InvoiceIn.pas' {F_InvoiceIn},
  U_ProductsOut in 'U_ProductsOut.pas' {F_ProductsOut},
  U_ClientsProviders in 'U_ClientsProviders.pas' {F_ClientsProviders},
  U_Autority in 'U_Autority.pas' {F_Autority},
  U_InOrder in 'U_InOrder.pas' {F_InOrder},
  U_ProvSelect in 'U_ProvSelect.pas' {F_ProvSelect},
  U_Users in 'U_Users.pas' {F_Users},
  U_PassWord in 'U_PassWord.pas' {F_Password},
  U_InvoiceFakt in 'U_InvoiceFakt.pas' {F_InvoiceFakt};


{$R *.res}
var i: Integer = 0;
    Autorized: Boolean;
begin
  Application.Initialize;
  Autorized := False;
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
 // Application.CreateForm(TF_InvoiceFakt, F_InvoiceFakt);
  Application.Title := 'Мега-склад';
  Application.CreateForm(TF_Main, F_Main);
  Application.CreateForm(TF_Autority, F_Autority);
  F_Autority.ShowModal;
  if (F_Autority.ModalResult = 6) and (dm.Autority_Table.Active and (not dm.Autority_Table.IsEmpty)) then
  begin
    //Application.CreateForm(TF_InOrder, F_InOrder);
    F_Main.Show;
    Application.Run;
  end
  else
  begin
    //Application.Destroy;
   // Application.Terminate;
   DM.Free;
   F_Main.OnClose := nil;
   F_Main.Free;
   Application.Terminate;
  end;
end.

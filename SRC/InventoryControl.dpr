program InventoryControl;

uses
  Forms,
  U_Main in 'U_Main.pas' {F_Main},
  U_NewStock in 'U_NewStock.pas' {addNewStock},
  U_NewProduct in 'U_NewProduct.pas' {F_NewProduct},
  U_AddProviderClient in 'U_AddProviderClient.pas' {F_AddClientProvider},
  U_ProductInfo in 'U_ProductInfo.pas' {F_ProductInfo},
  U_DM in 'U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Складской учет';
  Application.CreateForm(TF_Main, F_Main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

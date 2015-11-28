program InventoryControl;

uses
  Forms,
  U_Main in 'U_Main.pas' {F_Main},
  U_NewStock in 'U_NewStock.pas' {addNewStock},
  U_NewProduct in 'U_NewProduct.pas' {F_NewProduct},
  U_AddProviderClient in 'U_AddProviderClient.pas' {F_AddClientProvider},
  U_ProductInfo in 'U_ProductInfo.pas' {F_ProductInfo},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_BaseConnection in 'U_BaseConnection.pas' {F_BaseConnection},
  U_Common in 'U_Common.pas',
  U_MovePositions in 'U_MovePositions.pas' {F_MovePosition},
  U_BaseUpdate in 'U_BaseUpdate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.Title := '��������� ����';
  Application.CreateForm(TF_Main, F_Main);
  Application.Run;
end.

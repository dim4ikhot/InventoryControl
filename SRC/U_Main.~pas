unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzSplit, RzTabs, RzPanel, ExtCtrls, RzButton, ImgList, U_NewStock,
  U_NewProduct, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Menus, GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, RzCmboBx,
  RzLabel, U_AddProviderClient, U_ProductInfo, U_DM, U_BaseConnection,
  RzPrgres;

type
  TF_Main = class(TForm)
    RzStatusBar1: TRzStatusBar;
    PCMainTabs: TRzPageControl;
    TabStock: TRzTabSheet;
    TabProducts: TRzTabSheet;
    RzSplitter1: TRzSplitter;
    RzSplitter2: TRzSplitter;
    ProjIcon: TImageList;
    addProduct: TRzBitBtn;
    delProduct: TRzBitBtn;
    addStock: TRzBitBtn;
    removeStock: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    MainMenu: TMainMenu;
    FileItem: TMenuItem;
    aboutItem: TMenuItem;
    ExitItem: TMenuItem;
    GridProducts: TDBGridEh;
    stockFilter: TRzComboBox;
    RzLabel1: TRzLabel;
    TabClientsProviders: TRzTabSheet;
    RzSplitter3: TRzSplitter;
    RzToolbar1: TRzToolbar;
    RzToolbar2: TRzToolbar;
    GridProviders: TDBGridEh;
    GridClients: TDBGridEh;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    CheckingAccaunt: TRzBitBtn;
    InvoiceOut: TRzBitBtn;
    MovoeToOtherStock: TRzBitBtn;
    Option: TMenuItem;
    BaseConnection: TMenuItem;
    AddNewProvider: TRzBitBtn;
    deleteProvider: TRzBitBtn;
    addClient: TRzBitBtn;
    deleteClient: TRzBitBtn;
    ProgressAllOperations: TRzProgressBar;
    RzLabel2: TRzLabel;
    procedure addStockClick(Sender: TObject);
    procedure removeStockClick(Sender: TObject);
    procedure delProductClick(Sender: TObject);
    procedure addProductClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AddNewProviderClick(Sender: TObject);
    procedure addClientClick(Sender: TObject);
    procedure deleteClientClick(Sender: TObject);
    procedure deleteProviderClick(Sender: TObject);
    procedure GridProductsDblClick(Sender: TObject);
    procedure BaseConnectionClick(Sender: TObject);
    procedure MovoeToOtherStockClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure GridProductsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure GridProvidersDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure GridClientsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure removeProductProc;
  procedure removeStockProc;
  procedure addProductProc;
  procedure addStockProc;
  procedure addProvider;
  procedure addNewClient;
  procedure removeProvider;
  procedure removeNewClient;

var
  F_Main: TF_Main;

implementation

uses U_MovePositions;

{$R *.dfm}

procedure addStockProc;
begin
  try
    Application.CreateForm(TaddNewStock, addNewStock);
    addNewStock.ShowModal;
  finally
    FreeAndNil(addNewStock);
  end;
end;

procedure TF_Main.addStockClick(Sender: TObject);
begin
  addStockProc;
end;

procedure removeStockProc;
begin
  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить склад?', 'Удаление...', MB_YESNO) = 6 then
  begin

  end;
end;

procedure TF_Main.removeStockClick(Sender: TObject);
begin
  removeStockProc;
end;

procedure removeProductProc;
begin
  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить товар?', 'Удаление...', MB_YESNO) = 6 then
  begin

  end;
end;

procedure TF_Main.delProductClick(Sender: TObject);
begin
  removeProductProc;
end;

procedure addProductProc;
begin
  try
    Application.CreateForm(TF_NewProduct, F_NewProduct);
    F_NewProduct.ShowModal;
  finally
    FreeAndNil(F_NewProduct);
  end;
end;

procedure TF_Main.addProductClick(Sender: TObject);
begin
  addProductProc;
end;

procedure TF_Main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
  begin
    case PCMainTabs.ActivePageIndex of
      0:begin
          removeStockProc;
        end;
      1:begin
          removeProductProc;
        end;
    end;
  end
  else if Key = 45 then
  begin
    case PCMainTabs.ActivePageIndex of
      0:begin
          addStockProc;
        end;
      1:begin
          addProductProc;
        end;
    end;
  end;
end;

procedure addProvider;
begin
  try
    Application.CreateForm(TF_AddClientProvider, F_AddProvider);
    F_AddProvider.ShowModal;
  finally
    FreeAndNil(F_AddProvider);
  end;
end;

procedure addNewClient;
begin
  try
    Application.CreateForm(TF_AddClientProvider, F_AddClient);
    F_AddClient.ProviderClientAdress.Visible := False;
    F_AddClient.RzLabel2.Visible := False;
    F_AddClient.ProviderClientPhone.Top := F_AddClient.ProviderClientAdress.Top;
    F_AddClient.RzLabel3.Top := F_AddClient.RzLabel2.Top;
    F_AddClient.ShowModal;
  finally
    FreeAndNil(F_AddClient);
  end;
end;

procedure removeProvider;
begin
  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить поставщика?', 'Удаление...', MB_YESNO) = 6 then
  begin

  end;
end;

procedure removeNewClient;
begin
  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить клиента?', 'Удаление...', MB_YESNO) = 6 then
  begin

  end;
end;

procedure TF_Main.AddNewProviderClick(Sender: TObject);
begin
  addProvider;
end;

procedure TF_Main.addClientClick(Sender: TObject);
begin
  addNewClient;
end;

procedure TF_Main.deleteClientClick(Sender: TObject);
begin
  removeNewClient;
end;

procedure TF_Main.deleteProviderClick(Sender: TObject);
begin
  removeProvider;
end;

procedure TF_Main.GridProductsDblClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_ProductInfo, F_ProductInfo);
    F_ProductInfo.ShowModal;
  finally
    FreeAndNil(F_ProductInfo);
  end;
end;

procedure TF_Main.BaseConnectionClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_BaseConnection, F_BaseConnection);
    F_BaseConnection.showModal;
  finally
    FreeAndNil(F_BaseConnection);
  end;
end;

procedure TF_Main.MovoeToOtherStockClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_MovePosition, F_MovePosition);
    F_MovePosition.ShowModal;
  finally
    FreeAndNil(F_MovePosition);
  end;
end;

procedure TF_Main.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

procedure TF_Main.GridProductsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

procedure TF_Main.GridProvidersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

procedure TF_Main.GridClientsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.RecNo > 0 then
    if Column.Index = 0 then                                                   // Ха- ха - ха БЛА!!!
      TDBGridEh(Sender).Canvas.TextOut(Rect.Left + 5, Rect.Top,
          IntToStr(TDBGridEh(Sender).DataSource.DataSet.RecNo));               // Вместо ID пишем порядковый номер в гриде.
end;

end.

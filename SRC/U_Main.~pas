unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzSplit, RzTabs, RzPanel, ExtCtrls, RzButton, ImgList, U_NewStock,
  U_NewProduct, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Menus, GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, RzCmboBx,
  RzLabel, U_AddProviderClient, U_ProductInfo, U_DM, U_BaseConnection,
  RzPrgres, U_about, Mask, RzEdit, U_FR, siComp, siLngLnk, U_MessageCP,
  U_Common, U_Emploee, RzRadGrp;

type
  TF_Main = class(TForm)
    RzStatusBar1: TRzStatusBar;
    PCMainTabs: TRzPageControl;
    TabStock: TRzTabSheet;
    TabProducts: TRzTabSheet;
    ProjIcon: TImageList;
    MainMenu: TMainMenu;
    FileItem: TMenuItem;
    aboutItem: TMenuItem;
    ExitItem: TMenuItem;
    TabClientsProviders: TRzTabSheet;
    RzSplitter3: TRzSplitter;
    RzToolbar1: TRzToolbar;
    GridProviders: TDBGridEh;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    Option: TMenuItem;
    BaseConnection: TMenuItem;
    AddNewProvider: TRzBitBtn;
    deleteProvider: TRzBitBtn;
    ProgressAllOperations: TRzProgressBar;
    RzLabel2: TRzLabel;
    RzSizePanel1: TRzSizePanel;
    RzLabel3: TRzLabel;
    addProduct: TRzBitBtn;
    CheckingAccaunt: TRzBitBtn;
    delProduct: TRzBitBtn;
    InvoiceOut: TRzBitBtn;
    InvoiceBtn: TRzBitBtn;
    MovoeToOtherStock: TRzBitBtn;
    NameFilter: TRzEdit;
    stockFilter: TRzComboBox;
    GridProducts: TDBGridEh;
    GBReports: TRzGroupBox;
    RzSizePanel2: TRzSizePanel;
    addStock: TRzBitBtn;
    removeStock: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    LangMain: TsiLangLinked;
    ProgLang: TMenuItem;
    RussianLang: TMenuItem;
    UkraianianLang: TMenuItem;
    RzPanel1: TRzPanel;
    BtnStartStock: TRzBitBtn;
    RzPanel3: TRzPanel;
    ListEmploeeCustomers: TRzSplitter;
    RzPanel2: TRzPanel;
    GridClients: TDBGridEh;
    RzPanel4: TRzPanel;
    GridEmploee: TDBGridEh;
    RzToolbar2: TRzToolbar;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    addClient: TRzBitBtn;
    deleteClient: TRzBitBtn;
    RzToolbar3: TRzToolbar;
    AddEmpoee: TRzBitBtn;
    RemoveEmploee: TRzBitBtn;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    FindingBy: TRzRadioGroup;
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
    procedure aboutItemClick(Sender: TObject);
    procedure InvoiceBtnClick(Sender: TObject);
    procedure ExitItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RussianLangClick(Sender: TObject);
    procedure UkraianianLangClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnStartStockClick(Sender: TObject);
    procedure AddEmpoeeClick(Sender: TObject);
    procedure PCMainTabsChange(Sender: TObject);
    procedure stockFilterChange(Sender: TObject);
    procedure NameFilterChange(Sender: TObject);
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

uses U_MovePositions, U_SettingsInvoice;

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
//  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить склад?', 'Удаление...', MB_YESNO) = 6 then
  if ShowMessagerCP( F_Main.LangMain.gettext('Deleting'), F_Main.LangMain.gettext('DeletingStock'),mtConfirmation,[mbYes, mbNo]) = 6 then
  begin
  end;
end;

procedure TF_Main.removeStockClick(Sender: TObject);
begin
  removeStockProc;
end;

procedure removeProductProc;
begin
  //if MessageBox(F_Main.Handle,'Вы действительно желаете удалить товар?', 'Удаление...', MB_YESNO) = 6 then
  if ShowMessagerCP( F_Main.LangMain.gettext('Deleting'), F_Main.LangMain.gettext('DeletingProduct'),mtConfirmation,[mbYes, mbNo]) = 6 then
  begin
    DM.tableProducts.Delete;
    DM.tableProducts.Transaction.CommitRetaining;
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
  if DM.tableStoks.RecordCount > 0 then
  begin
    if DM.tableProviders.RecordCount > 0 then
      addProductProc
    else
    begin
      if ShowMessagerCP( F_Main.LangMain.gettext('Warning'), F_Main.LangMain.gettext('HaveNoAnyProviders'),mtWarning,[mbYes, mbNo]) = 6 then
      begin
        PCMainTabs.ActivePageIndex := 2;
        AddProvider;
      end;
    end;
  end
  else
  begin
    if ShowMessagerCP( F_Main.LangMain.gettext('Warning'), F_Main.LangMain.gettext('HaveNoStocks'),mtWarning,[mbYes, mbNo]) = 6 then
    begin
      PCMainTabs.ActivePageIndex := 0;
      addStockProc;
    end;
  end;
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
    F_AddClient.RzLabel5.Top := F_AddClient.RzLabel3.Top;
    F_AddClient.ProviderClientBank.Top := F_AddClient.ProviderClientPhone.Top;
    F_AddClient.ProviderClientPhone.Top := F_AddClient.ProviderClientAdress.Top;
    F_AddClient.RzLabel3.Top := F_AddClient.RzLabel2.Top;
    F_AddClient.ShowModal;
  finally
    FreeAndNil(F_AddClient);
  end;
end;

procedure removeProvider;
begin
  if ShowMessagerCP( F_Main.LangMain.gettext('Deleting'), F_Main.LangMain.gettext('DeletingProvidr'),mtConfirmation,[mbYes, mbNo]) = 6 then
  begin
    DM.tableProviders.Delete;
  end;
end;

procedure removeNewClient;
begin
//  if MessageBox(F_Main.Handle,'Вы действительно желаете удалить клиента?', 'Удаление...', MB_YESNO) = 6 then
  if ShowMessagerCP( F_Main.LangMain.gettext('Deleting'), F_Main.LangMain.gettext('DeletingClient'),mtConfirmation,[mbYes, mbNo]) = 6 then
  begin
    DM.tableClients.Delete;
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

procedure TF_Main.aboutItemClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_About, F_About);
    F_About.showmodal;
  finally
    FreeAndNil(F_About);
  end;
end;

procedure TF_Main.InvoiceBtnClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_PrepareInvoice, F_PrepareInvoice);
    F_PrepareInvoice.showModal;
  finally
    FreeAndNil(F_PrepareInvoice);
  end;
end;

procedure TF_Main.ExitItemClick(Sender: TObject);
begin
  close;
end;

procedure TF_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if MessageBox(Self.Handle,'Закрыть программу?','Закрыть...', MB_YESNO) = mrNo then
  if ShowMessagerCP(LangMain.GetText('ClosintProg'), LangMain.GetText('ExitProgram'),mtConfirmation,[mbYes, mbNo]) = mrNo then
    Action := caNone;
end;

procedure TF_Main.RussianLangClick(Sender: TObject);
begin
  TMenuItem(Sender).Checked := True;
  UkraianianLang.Checked := False;
  DM.ProgramLangs.ActiveLanguage := 1;
  Inif.WriteInteger('ProgramSettings', 'Language', 1);
end;

procedure TF_Main.UkraianianLangClick(Sender: TObject);
begin
  TMenuItem(Sender).Checked := True;
  RussianLang.Checked := False;
  DM.ProgramLangs.ActiveLanguage := 2;
  Inif.WriteInteger('ProgramSettings', 'Language', 2);
end;

procedure TF_Main.FormCreate(Sender: TObject);
begin
  createIniFile;
  DM.ProgramLangs.ActiveLanguage := Inif.ReadInteger('ProgramSettings', 'Language',1);
  dm.tableStoks.First;
  while not dm.tableStoks.Eof do
  begin
    stockFilter.AddItemValue(dm.tableStoksNAME.AsString, dm.tableStoksID.AsString);
    GridProducts.Columns[7].KeyList.Add(dm.tableStoksID.AsString);
    GridProducts.Columns[7].PickList.Add(dm.tableStoksNAME.AsString);
    dm.tableStoks.Next;
  end;
end;

procedure TF_Main.FormDestroy(Sender: TObject);
begin
  destroyIniFile;
end;

procedure TF_Main.BtnStartStockClick(Sender: TObject);
begin
  if ShowMessagerCP(LangMain.GetText('Attention'),LangMain.GetText('AttentionCapt'),mtWarning,[mbYes,mbNo]) = 6 then
  begin
    DM.tableStoksSTARTED.AsInteger := 1;
    BtnStartStock.Visible := False;
    removeStock.Visible := false;
  end;
end;

procedure TF_Main.AddEmpoeeClick(Sender: TObject);
begin
  try
    Application.CreateForm(TF_Emploee, F_Emploee);
    F_Emploee.ShowModal;
  finally
    FreeAndNil(F_Emploee);
  end;
end;

procedure TF_Main.PCMainTabsChange(Sender: TObject);
begin
  DM.tableClients.First;
  DM.tableEmploee.First;
  DM.tableProviders.First;
end;

procedure TF_Main.stockFilterChange(Sender: TObject);
begin
  if stockFilter.itemIndex > 0 then
  begin
    DM.tableProducts.Filtered := True;
    DM.tableProducts.Filter := 'STOCK_ID = '+''''+ stockFilter.Values[stockFilter.itemIndex-1]+'''';
  end
  else
    DM.tableProducts.Filtered := False;
end;

procedure TF_Main.NameFilterChange(Sender: TObject);
begin
  if NameFilter.Text <> '' then
  begin
    DM.tableProducts.Filtered := True;
    if FindingBy.ItemIndex = 0 then
      DM.tableProducts.Filter := 'NAME LIKE '+''''+ NameFilter.Text+'%'''
    else
      DM.tableProducts.Filter := 'KOD LIKE '+''''+ NameFilter.Text+'%'''
  end
  else
    DM.tableProducts.Filtered := False;
end;

end.

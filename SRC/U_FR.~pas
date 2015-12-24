{******************************************************************************}
{   Unit Name: U_FR                                                            }
{   Author:    Malyar Dmitriy Valer'evich  .::SK::.                            }
{   Date:      20.12.2011                                                      }
{   Unit:      Печеть отчетов FastRaport                                       }
{   Edit:      20.04.2012                                                      }
{******************************************************************************}
unit U_FR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls, RzCmboBx, RzPanel, U_DM, ImgList, RzButton,
  DB, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, RzTrkBar, RzStatus,

  Menus, FIBQuery, DateUtils, U_Common, kbmMemTable, pFIBQuery,
  Grids, DBGrids, RzDBGrid, Math, {U_ProgressExp,}
  frxClass, frxDBSet, frxDesgn,frxRich, frxPreview, frxExportXLS, siComp,
  siLngLnk;

const
  msDemo: String = 'В демо версии эта функция недоступна!';
  cProgressExp_Msg6 = 'Загрузка объектов...';
  {В таблице Work_Res в поле Razdel хранится информация о том, что ресурс собой представляет
     1(RF-0) - Зарплаты рабочим
     2(RF-1) - Машины - механизмы
     3(RF-2) - Материалы                                                       }

  {$IF Defined(ES_CP_UKR)}
  IndexMaterials: Integer = 3;
  IndexMachinery: Integer = 2;
  IndexZarplata: Integer = 1;
  {$IFEND}
  {$IF Defined(ES_CP_RUS)}
  IndexMaterials: Integer = 2;
  IndexMachinery: Integer = 1;
  IndexZarplata: Integer = 0;
  {$IFEND}

type
  TPeriod = (pDays,pWeeks,pMonths);
  TF_FR = class(TForm)
    RzToolbar1: TRzToolbar;
    RzStatusBar1: TRzStatusBar;
    btPrint: TRzToolButton;
    ImageList1: TImageList;
    RzSpacer1: TRzSpacer;
    tbZoom: TRzTrackBar;
    btZoom100: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzToolButton9: TRzToolButton;
    RzToolButton10: TRzToolButton;
    RzToolButton11: TRzToolButton;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    RzSpacer7: TRzSpacer;
    RzToolButton12: TRzToolButton;
    RzSpacer8: TRzSpacer;
    eZoom: TRzStatusPane;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N2001: TMenuItem;
    N1501: TMenuItem;
    N1001: TMenuItem;
    N751: TMenuItem;
    N501: TMenuItem;
    N251: TMenuItem;
    N101: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    eCountPages: TRzStatusPane;
    mtRes: TkbmMemTable;
    ID: TIntegerField;
    Name: TStringField;
    Shifr: TStringField;
    IZM: TStringField;
    Vsego: TFloatField;
    Stoim: TFloatField;
    Kolvo: TFloatField;
    Start: TDateTimeField;
    Stop: TDateTimeField;
    QueryRes: TpFIBQuery;
    TransactionRes: TpFIBTransaction;
    SourceRes: TDataSource;
    fWork: TFloatField;
    RzSpacer9: TRzSpacer;
    SavetoExcel: TRzToolButton;
    mtMachine: TkbmMemTable;
    mtMachineID: TIntegerField;
    mtMachineName: TStringField;
    mtMachineShifr: TStringField;
    mtMachineKolvo: TFloatField;
    mtMachineStoim: TFloatField;
    mtMachineVsego: TFloatField;
    mtMachineIZM: TStringField;
    mtMachineStart: TDateTimeField;
    mtMachineStop: TDateTimeField;
    mtMachinefWork: TFloatField;
    SourceMachine: TDataSource;
    mtZP: TkbmMemTable;
    SourceZP: TDataSource;
    mtZPID: TIntegerField;
    mtZPName: TStringField;
    mtZPShifr: TStringField;
    mtZPKolvo: TFloatField;
    mtZPStoim: TFloatField;
    mtZPVsego: TFloatField;
    mtZPIZM: TStringField;
    mtZPStart: TDateTimeField;
    mtZPStop: TDateTimeField;
    mtZPfWork: TFloatField;
    mtMaterials: TkbmMemTable;
    SourceMaterials: TDataSource;
    mtMaterialsID: TIntegerField;
    mtMaterialsName: TStringField;
    mtMaterialsShifr: TStringField;
    mtMaterialsKolvo: TFloatField;
    mtMaterialsStoim: TFloatField;
    mtMaterialsVsego: TFloatField;
    mtMaterialsIZM: TStringField;
    mtMaterialsStart: TDateTimeField;
    mtMaterialsStop: TDateTimeField;
    mtMaterialsfWork: TFloatField;
    mtMachinebalancecost: TFloatField;
    mtMachinecountcost: TFloatField;
    mtZPbalancecost: TFloatField;
    mtZPcountcost: TFloatField;
    mtMaterialsbalancecost: TFloatField;
    mtMaterialscountcost: TFloatField;
    mtTotalDiagramm: TkbmMemTable;
    mtTotalDiagrammStart: TDateTimeField;
    mtTotalDiagrammTotalOwnStreinght: TFloatField;
    mtTotalDiagrammTotalSubContract: TFloatField;
    mtTotalDiagrammTotalSubContractMater: TFloatField;
    mtTotalDiagrammTotalScheduleFin: TFloatField;
    mtTotalDiagrammStop: TDateTimeField;
    RzSpacer10: TRzSpacer;
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxDesigner: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    LangReport: TsiLangLinked;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    procedure btPrintClick(Sender: TObject);
    procedure tbZoomChange(Sender: TObject);
    procedure tbZoomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbZoomKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton12Click(Sender: TObject);
    procedure btZoom100Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure pmItemClick(Sender: TObject);
    procedure frReport1EndPage(pgNo: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure FormCreate(Sender: TObject);
    procedure SavetoExcelClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
  public
  end;

  TVedomost = class(TObject)
    ProjectID: Integer;
    FPeriod: Boolean;
    FStart: TDateTime;
    FStop: TDateTime;
    FMachine: Boolean;
    FZarplata: Boolean;
    FMaterials: Boolean;
    FProject: Boolean;
    FSelected: Boolean;
    FQuery: TpFIBQuery;
  private
  {  procedure GetDataToMemTable(ATypeRec: Integer;
      AMemTable: TkbmMemTable);
    function CalcForPeriod(AStart, AStop: TDateTime; ADuration, AKolvo: Double;WID: Integer): Double;
    procedure AddDataToMemTable(AMemTable: TkbmMemTable);    }
  public
    procedure ShowReport;
   // function GetSelectedProject: Integer;  
  end;

{  procedure frOLEExcelExportMyStartExportPageEvent(Sender: TObject; ACaption: string; AObjCount: Integer);
  procedure frOLEExcelExportMyProgressExportPageEvent(Sender: TObject; var AWasCancel: Boolean; AObjIndex, AObjectCount: Integer);
  procedure frOLEExcelExportMyEndExportPageEvent(Sender: TObject; AWasCancel: Boolean);
                                                                                             }

var
  F_FR: TF_FR;
  Vedomost: TVedomost;
implementation

uses
  U_Main;

{$R *.dfm}

{ TVedomost }
 {
function TVedomost.GetSelectedProject: Integer;
var QSel: TpFIBQuery;
begin
  QSel := DM_Main.CreateFIBQuery;
  QSel.Close;
  QSel.SQL.Text := 'Select count(*) from Projects where Selected = 1';
  QSel.ExecQuery;
  Result := qsel.fn('count').AsInteger;
  DM_Main.DestroyFIBQuery(QSel);
end;

Function GetSubName(ATSFinance: TTypeScheduleFinance): String;
begin
  Result := '';
  Case ATSFinance of
      sfMaterials: Result := F_Main.Main_LangLinked.GetText('sMaterials');
      sfMachinery: Result := F_Main.Main_LangLinked.GetText('sMachine');
      sfZarplata:  Result := F_Main.Main_LangLinked.GetText('sZP');
      sfSummary:   Result := F_Main.Main_LangLinked.GetText('sSumGraphFin');
  end;
end;

function GetNames: string;
var
  Qsel: TpFIBQuery;
begin
  Result := '';
  if (Vedomost.GetSelectedProject > 1)and(PotrRes) then
  begin
    Qsel := DM_Main.CreateFIBQuery;
    Qsel.Close;
    qsel.SQL.Text := 'select NameBrief from projects where selected = 1';
    Qsel.ExecQuery;
    While not qsel.Eof do
    begin
      Result := Result + qsel.fn('namebrief').AsString + ',';
      qsel.Next;
    end;
    Result := Copy(Result,0,Length(Result)-1);
    DM_Main.DestroyFIBQuery(Qsel);
  end
  else
    Result := DM_Main.TableProjectsNAMEBRIEF.AsString;
end;

procedure TVedomost.GetDataToMemTable(ATypeRec: Integer; AMemTable: TkbmMemTable);
var
  Kolvo: Double;
  i: Integer;
begin
  if (GetSelectedProject <=1)or(not PotrRes) then
  begin
    FQuery.Close;
    FQuery.SQL.Text := 'Select '                               +
                       'work_res.id, '                         +
                       'work_res.izm, '                        +
                       'work_res.kolvo1 as ResKolvo, '         +
                       'work_res.vsego1, '                     +
                       'work_res.Stoim1, '                     +
                       'work_res.Shifr, '                      +
                       'work_res.name, '                       +
                       'Works.kolvo1 as WorksKolvo, '          +
                       'Works.Ta_Start, '                      +
                       'Works.Ta_Stop, '                       +
                       'Works.Fact_Work, '                     +
                       'Works.REC, '                           +
                       'Works.PercentRemaining, '              +
                       'works.ID, '                            +
                       'work_res.Work_id, '                    +
                       'work_res.name_u, '                     +
                       'work_res.izm_u '                       +
                       'From '                                 +
                       'Works '                                +
                       'inner join '                           +
                       'work_res '                             +
                       'on '                                   +
                       '(work_res.work_id = works.id) and '    +
                       '(work_res.razdel = ?razdel) '          +
                       'Where '                                +
                       '(Works.project_id = ?project_id) and ' +
                       '(Works.onoff = 1) and '                +
                       '(Works.CHILD_COUNT = 0)';

    FQuery.ParamByName('project_id').AsInteger := ProjectID;
    FQuery.ParamByName('razdel').AsInteger := ATypeRec;
    if FProject then
    begin
      if FPeriod then
      begin
        FQuery.SQL.Text := FQuery.SQL.Text +
                         ' and ((Works.Ta_Start >= ?Start) and ' +
                         '(Works.Ta_Start <= ?Stop) or '         +
                         '(Works.Ta_Stop <= ?Stop) and '         +
                         '(Works.Ta_Stop >= ?Start) or '         +
                         '(Works.Ta_Start <= ?Start) and '       +
                         '(Works.Ta_Stop >= ?Stop))';

        FQuery.ParamByName('Start').AsDateTime := FStart;
        FQuery.ParamByName('Stop').AsDateTime := FStop;
      end;
      FQuery.ExecQuery;

      AddDataToMemTable(AMemTable);
    end;

    if FSelected then
    begin
      FQuery.SQL.Text := FQuery.SQL.Text + ' and Works.ID = ?ID';

      for i := 0 to F_Main.EzGanttChart1.SelectedGanttBars.Count - 1 do
      begin
        FQuery.ParamByName('ID').AsInteger := F_Main.EzGanttChart1.SelectedGanttBars.Items[i].BarNode.Key.Value;
        FQuery.ExecQuery;

        AddDataToMemTable(AMemTable);
      end;
    end;
  end
  else
  begin
    FQuery.Close;
    FQuery.SQL.Text := 'Select '                               +
                       'work_res.id, '                         +
                       'work_res.izm, '                        +
                       'work_res.kolvo1 as ResKolvo, '         +
                       'work_res.vsego1, '                     +
                       'work_res.Stoim1, '                     +
                       'work_res.Shifr, '                      +
                       'work_res.name, '                       +
                       'Works.kolvo1 as WorksKolvo, '          +
                       'Works.Ta_Start, '                      +
                       'Works.Ta_Stop, '                       +
                       'Works.Fact_Work, '                     +
                       'Works.REC, '                           +
                       'Works.PercentRemaining, '              +
                       'WORKS.ID, '                            +
                       'work_res.Work_id, '                    +
                       'work_res.name_u, '                     +
                       'work_res.izm_u '                       +
                       'From '                                 +
                       'Works '                                +
                       'inner join '                           +
                       'work_res '                             +
                       'on '                                   +
                       '(work_res.work_id = works.id) and '    +
                       '(work_res.razdel = ?razdel) '          +
                       'Where '                                +
                       '(Works.project_id in(Select id from '  +
                       'projects where selected = 1)) and '    +
                       '(Works.onoff = 1) and '                +
                       '(Works.CHILD_COUNT = 0)';

    //FQuery.ParamByName('project_id').AsInteger := ProjectID;
    FQuery.ParamByName('razdel').AsInteger := ATypeRec;
    if FProject then
    begin
      if FPeriod then
      begin
        FQuery.SQL.Text := FQuery.SQL.Text +
                         ' and ((Works.Ta_Start >= ?Start) and ' +
                         '(Works.Ta_Start <= ?Stop) or '         +
                         '(Works.Ta_Stop <= ?Stop) and '         +
                         '(Works.Ta_Stop >= ?Start) or '         +
                         '(Works.Ta_Start <= ?Start) and '       +
                         '(Works.Ta_Stop >= ?Stop))';

        FQuery.ParamByName('Start').AsDateTime := FStart;
        FQuery.ParamByName('Stop').AsDateTime := FStop;
      end;
      FQuery.ExecQuery;

      AddDataToMemTable(AMemTable);
    end;

    if FSelected then
    begin
      FQuery.SQL.Text := FQuery.SQL.Text + ' and Works.ID = ?ID';

      for i := 0 to F_Main.EzGanttChart1.SelectedGanttBars.Count - 1 do
      begin
        FQuery.ParamByName('ID').AsInteger := F_Main.EzGanttChart1.SelectedGanttBars.Items[i].BarNode.Key.Value;
        FQuery.ExecQuery;

        AddDataToMemTable(AMemTable);
      end;
    end;
  end;
end;

procedure TVedomost.AddDataToMemTable(AMemTable: TkbmMemTable);
var
  Kolvo,WK: Double;

  Function GetWorkKolvo(Res_ID: Integer): Double;
  var
    QKol: TpFIBQuery;
  begin
    Qkol := DM_Main.CreateFIBQuery;
    Qkol.Close;
    Qkol.SQL.Text := 'Select Kolvo1 from Works where ID in'  +
                     '(Select Parent_Norm_ID from works where ID = ?ID)';
    Qkol.ParamByName('ID').AsInteger := Res_ID;
    Qkol.ExecQuery;
    Result := Qkol.Fn('Kolvo1').AsFloat;
    DM_Main.DestroyFIBQuery(Qkol);
  end;
  procedure GetDataWorkTable(AID: Integer);
  var
    Query: TpFIBQuery;
  begin
    Query := DM_Main.CreateFIBQuery;
    Query.Close;
    Query.SQL.Text := 'Select '                              +
                      'work_detail.izm, '                    +
                      'work_detail.itogo, '                  +
                      'Works.name, '                         +
                      'Works.shifr, '                        +
                      'Works.kolvo1, '                       +
                      'Works.ta_start, '                     +
                      'Works.ta_stop, '                      +
                      'Works.fact_work, '                    +
                      'Works.PercentRemaining, '             +
                      'Works.id, '                           +
                      'Works.name_u, '                       +
                      'work_detail.izm_u '                   +
                      'From '                                +
                      'Works '                               +
                      'inner join '                          +
                      'work_detail '                         +
                      'on '                                  +
                      'work_detail.work_id = works.id '      +
                      'Where '                               +
                      'works.id = ?id';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecQuery;

    if not Query.Eof then
    begin
      if FPeriod then
      begin
        Kolvo := CalcForPeriod(Query.FieldByName('Ta_Start').AsDateTime,
                               Query.FieldByName('Ta_Stop').AsDateTime,
                               Query.FieldByName('Fact_Work').AsFloat,
                               Query.FieldByName('kolvo1').AsFloat,
                               Query.FN('ID').asinteger);
      end
      else
      begin
        Kolvo := Query.FieldByName('kolvo1').AsFloat;
      end;

      if Kolvo > 0 then
      begin
        if AMemTable.Locate('Shifr;stoim', VarArrayOf([Query.FieldByName('Shifr').AsString, Query.FieldByName('itogo').AsFloat]), []) then
        begin
          AMemTable.Edit;
          AMemTable.FieldByName('Kolvo').AsFloat := RoundX(AMemTable.FieldByName('Kolvo').AsFloat + Kolvo, 5);
          AMemTable.FieldByName('Vsego').AsFloat := RoundX(AMemTable.FieldByName('Vsego').AsFloat +
                                                    (Kolvo * Query.FieldByName('itogo').AsFloat), 2);

          AMemTable.FieldByName('balancecost').AsFloat := AMemTable.FieldByName('balancecost').AsFloat + RoundX((Kolvo * Query.FN('itogo').AsFloat) * Query.FN('PercentRemaining').AsFloat/100,2);
          AMemTable.FieldByName('countcost').AsFloat := AMemTable.FieldByName('countcost').AsFloat + RoundX(Kolvo * Query.FN('PercentRemaining').AsFloat/100,5);

          AMemTable.Post;
        end
        else
        begin
          AMemTable.Insert;
          AMemTable.FieldByName('ID').AsInteger := Query.FieldByName('ID').AsInteger;
          AMemTable.FieldByName('Shifr').AsString := Query.FieldByName('Shifr').AsString;
          AMemTable.FieldByName('Name').AsString := Trim(Query.FieldByName(sName).AsString);
          AMemTable.FieldByName('IZM').AsString := Query.FieldByName(sIZM).AsString;
          AMemTable.FieldByName('Kolvo').AsFloat := RoundX(Kolvo, 5);
          AMemTable.FieldByName('Vsego').AsFloat := RoundX(Kolvo * Query.FieldByName('itogo').AsFloat, 2);
          AMemTable.FieldByName('Stoim').AsFloat := RoundX(Query.FieldByName('itogo').AsFloat, 2);

          AMemTable.FieldByName('balancecost').AsFloat := RoundX((Kolvo * Query.FN('itogo').AsFloat) * Query.FN('PercentRemaining').AsFloat/100,2);
          AMemTable.FieldByName('countcost').AsFloat := RoundX(Kolvo * Query.FN('PercentRemaining').AsFloat/100,5);
          AMemTable.Post;
        end;
      end;
    end
    else                                                                        //Если в таблице WORK_DETAIL пусто
    begin
      WK := GetWorkKolvo(AID);
      if FPeriod then
      begin
        Kolvo := WK *
          CalcForPeriod(FQuery.FieldByName('Ta_Start').AsDateTime, FQuery.FieldByName('Ta_Stop').AsDateTime,
          FQuery.FieldByName('Fact_Work').AsFloat, FQuery.FieldByName('ResKolvo').AsFloat,
          FQuery.FieldByName('ID').AsInteger);
      end
      else
      begin
          Kolvo := WK * FQuery.FieldByName('ResKolvo').AsFloat;
      end;


    end;

    DM_Main.DestroyFIBQuery(Query);
  end;

begin
  if not AMemTable.Active then
    AMemTable.Active := True;

  while not FQuery.Eof do
  begin
    if (FQuery.FieldByName('Rec').AsString <> 'record_3') and (FQuery.FieldByName('Rec').AsString <> 'record_2') then
    begin
      if FPeriod then
      begin
        if copy(FQuery.FieldByName('shifr').AsString, 1, 2) <> 'С3' then
        begin
          Kolvo := FQuery.FieldByName('WorksKolvo').AsFloat *
            CalcForPeriod(FQuery.FieldByName('Ta_Start').AsDateTime, FQuery.FieldByName('Ta_Stop').AsDateTime,
            FQuery.FieldByName('Fact_Work').AsFloat, FQuery.FieldByName('ResKolvo').AsFloat,
            FQuery.FieldByName('ID').AsInteger);
        end
        else
        begin
          Kolvo := FQuery.FieldByName('WorksKolvo').AsFloat *
            CalcForPeriod(FQuery.FieldByName('Ta_Start').AsDateTime, FQuery.FieldByName('Ta_Stop').AsDateTime,
            FQuery.FieldByName('Fact_Work').AsFloat, 1,
            FQuery.FieldByName('ID').AsInteger);
        end;
      end
      else
      begin
        if copy(FQuery.FieldByName('shifr').AsString, 1, 2) <> 'С3' then
          Kolvo := FQuery.FieldByName('WorksKolvo').AsFloat * FQuery.FieldByName('ResKolvo').AsFloat
        else
          Kolvo := FQuery.FieldByName('WorksKolvo').AsFloat;
      end;


    end
    else
    begin
      GetDataWorkTable(FQuery.FieldByName('Work_id').AsInteger);
    end;
    FQuery.Next;
  end;
end;
      }
procedure TVedomost.ShowReport;
var
  rFileName: String;
begin
 // FQuery := DM.CreateFIBQuery;
  F_FR := TF_FR.Create(Application);
  try

  {  if (F_FR.mtZP.RecordCount > 0) or (F_FR.mtMachine.RecordCount > 0) or
       (F_FR.mtMaterials.RecordCount > 0) then    }
    begin
      // Тут грузить в зависимости от языка интерфейса.
      rFileName := ExtractFileDir(Application.ExeName) + '\Reports\IncomeProduct.fr3';

      if FileExists(rFileName) then
      begin
       // F_FR.frxReport1.LoadFromFile(rFileName);
       // F_FR.frxReport1.Preview := F_FR.frxPreview1;
        F_FR.frxReport1.PrepareReport;
        F_FR.ShowModal;
      end
      else
      begin
        ShowMessage('Не найдено');
      end;
   { end
    else
    begin
      ShowMessage('Нет записей'); }
    end;
  finally
 //   FreeAndNil(FQuery);
    FreeAndNil(F_FR);
  end;    
end;

procedure TF_FR.btPrintClick(Sender: TObject);
begin
{$IF Defined(ES_CP_DEMO)}
  ShowMessage(msDemo);
{$ELSE}
  frxPreview1.Print;
{$IFEND}
end;

procedure TF_FR.tbZoomChange(Sender: TObject);
begin
  eZoom.Caption := 'Масштаб: ' + IntToStr(tbZoom.Position) + '%';
  frxPreview1.Zoom := tbZoom.Position/100;
end;

procedure TF_FR.tbZoomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Key := 0;
end;

procedure TF_FR.tbZoomKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TF_FR.FormShow(Sender: TObject);
begin
  tbZoomChange(Sender);
  frxPreview1.Zoom := 1;
end;

procedure TF_FR.RzToolButton12Click(Sender: TObject);
begin
  Close;
end;

procedure TF_FR.btZoom100Click(Sender: TObject);
begin
  frxPreview1.Zoom := 1;
  tbZoom.Position := Round(frxPreview1.Zoom) * 100;

end;

procedure TF_FR.RzToolButton3Click(Sender: TObject);
begin
//  frxPreview1.OnePage;
  frxPreview1.ZoomMode := zmWholePage;
  tbZoom.Position := Round(frxPreview1.Zoom*100);
end;

procedure TF_FR.RzToolButton4Click(Sender: TObject);
begin
//  frxPreview1.pageWidth;
  frxPreview1.ZoomMode := zmPageWidth;
  tbZoom.Position := Round(frxPreview1.Zoom*100);
end;

procedure TF_FR.RzToolButton5Click(Sender: TObject);
begin
  frxPreview1.First;
end;

procedure TF_FR.RzToolButton6Click(Sender: TObject);
begin
  frxPreview1.Prior;
end;

procedure TF_FR.RzToolButton7Click(Sender: TObject);
begin
  frxPreview1.Next;
end;

procedure TF_FR.RzToolButton8Click(Sender: TObject);
begin
  frxPreview1.Last;
end;

procedure TF_FR.RzToolButton9Click(Sender: TObject);
begin
  frxReport1.Modified := true;
  frxPreview1.Edit;
  frxReport1.Modified := false;
end;

procedure TF_FR.RzToolButton11Click(Sender: TObject);
begin
{$IF Defined(ES_CP_DEMO)}
  ShowMessage(msDemo);
{$ELSE}
  with SaveDialog1 do
  begin
    InitialDir := ExtractFileDir(Application.ExeName) + '\Reports';
    Filter := '(*.fp3)|*.fp3';
    FilterIndex := 1;
    FileName := 'Raport';
    if Execute then
    begin
      frxReport1.SaveToFile(FileName + '.fp3');
    end;
  end;
{$IFEND}
end;

procedure TF_FR.RzToolButton10Click(Sender: TObject);
begin
{$IF Defined(ES_CP_DEMO)}
  ShowMessage(msDemo);
{$ELSE}
  frxPreview1.LoadFromFile;
{$IFEND}
end;

procedure TF_FR.pmItemClick(Sender: TObject);
begin
  frxPreview1.Zoom := TMenuItem(Sender).Tag;
  tbZoom.Position := Round(frxPreview1.Zoom);
end;

procedure TF_FR.frReport1EndPage(pgNo: Integer);
begin
  eCountPages.Caption := 'Количество страниц:' + IntToStr(pgNo); // 'Количество страниц: ';  
end;

procedure TF_FR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const
  cnstScrollStep = 10;
var
  ScrollStep: Integer;
begin
{$IF Defined(ES_CP_DEMO)}
  Exit;
{$ELSE}
  if (frxDesigner = nil)then
  begin
    if Key = VK_ESCAPE then
      Close;

    if (ssCtrl in Shift) and (Char(Key) in ['P', 'p', 'З', 'з']) then
      btPrintClick(nil);

    if (ssCtrl in Shift) then
      if (Key in [Ord('0'), VK_NUMPAD0]) then
      begin
        btZoom100Click(Nil);
      end;

    ScrollStep := 10;
    if (ssCtrl in Shift) then
      ScrollStep := ScrollStep * 4;

    if Key = VK_PRIOR then
      frxPreview1.Prior
    else if Key = VK_NEXT then
      frxPreview1.Next

    else if Key = VK_HOME then
      frxPreview1.First

    else if Key = VK_END then
      frxPreview1.Last;
  end;
{$IFEND}  
end;

procedure TF_FR.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
{  if Name = 'GET_MIN_DATE' then
    Val := perStart;

  if Name = 'GET_MAX_DATE' then
    Val := perStop - 1;}
end;

procedure TF_FR.FormCreate(Sender: TObject);
begin
  frxReport1.Modified := False;
end;


procedure TF_FR.SavetoExcelClick(Sender: TObject);
begin
{  if Not Assigned(F_ProgressExp) then
    F_ProgressExp := TF_ProgressExp.Create(nil);
  F_ProgressExp.Timer1.OnTimer := F_ProgressExp.Timer1Timer_Silent;
  try
    F_ProgressExp.Position := poScreenCenter;

    F_ProgressExp.Timer1.Enabled := True;
    F_ProgressExp.ShowModal;
  finally
    F_ProgressExp.Timer1.OnTimer := F_ProgressExp.Timer1Timer;
  end;  }
end;

procedure TF_FR.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'GetVerCP()' then
    Value := 'Складской учет ' + ' - v ' + '1.0.0';//VersionProduct;
    if (VarName = 'GetPeriod()') then
      Value := Value + ' - ' + 'c' + ' ' + FormatDateTime('dd mmmm yyyy', DateOf(Vedomost.FStart)) +
                             '   по ' + FormatDateTime('dd mmmm yyyy', DateOf(Vedomost.FStop));
end;

end.

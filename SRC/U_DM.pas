unit U_DM;

interface

uses
  SysUtils, Classes, DB;

type
  TDM = class(TDataModule)
    SourceStocks: TDataSource;
    SourceProducts: TDataSource;
    SourceClients: TDataSource;
    SourceProviders: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.

unit U_BaseConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, Mask, RzEdit, RzRadChk, ExtCtrls, RzPanel,
  RzButton;

type
  TF_BaseConnection = class(TForm)
    SetConnection: TRzBitBtn;
    CancelConnect: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    doNotAskAnyMore: TRzCheckBox;
    RzGroupBox2: TRzGroupBox;
    RzGroupBox3: TRzGroupBox;
    RzEdit1: TRzEdit;
    BrowsePathToBase: TRzButton;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    ServerBasePath: TRzButton;
    BrowseServer: TRzButton;
    BrowseDBOP: TOpenDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BaseConnection: TF_BaseConnection;

implementation

{$R *.dfm}

end.

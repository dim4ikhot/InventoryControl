unit U_about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, RzLabel;

type
  TF_About = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_About: TF_About;

implementation

{$R *.dfm}

end.

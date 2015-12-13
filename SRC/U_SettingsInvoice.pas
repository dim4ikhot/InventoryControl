unit U_SettingsInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, Mask, RzEdit, ExtCtrls, RzPanel, RzRadChk,
  RzButton, U_FR;

type
  TF_PrepareInvoice = class(TForm)
    RzBitBtn1: TRzBitBtn;
    BySelected: TRzCheckBox;
    RzGroupBox1: TRzGroupBox;
    RzBitBtn2: TRzBitBtn;
    RzGroupBox2: TRzGroupBox;
    ByPeriod: TRzCheckBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    procedure ByPeriodClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PrepareInvoice: TF_PrepareInvoice;

implementation

uses U_Main;

{$R *.dfm}

procedure TF_PrepareInvoice.ByPeriodClick(Sender: TObject);
begin
  RzGroupBox2.Enabled := ByPeriod.Checked;
end;

procedure TF_PrepareInvoice.RzBitBtn1Click(Sender: TObject);
begin
  try
    try
      Vedomost := TVedomost.Create;
      Vedomost.ShowReport;
     { Application.CreateForm(TF_FR, F_FR);
      F_FR.ShowModal; }
    finally
      FreeAndNil(Vedomost);
    end;
  except
  end;
end;

end.

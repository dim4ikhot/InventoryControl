unit U_ProductInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, ExtCtrls, RzPanel, StdCtrls,
  RzLabel, Mask, RzEdit;

type
  TF_ProductInfo = class(TForm)
    infoProductName: TRzEdit;
    infoProductCode: TRzEdit;
    infoProductMeasured: TRzEdit;
    infoProductTotalPrice: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    infoProductStock: TRzEdit;
    infoProductProvider: TRzEdit;
    infoProductAddDate: TRzEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    RzBitBtn1: TRzBitBtn;
    InfoProductOut: TDBGridEh;
    infoProductCount: TRzEdit;
    infoProductPrice: TRzEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProductInfo: TF_ProductInfo;

implementation

{$R *.dfm}

end.

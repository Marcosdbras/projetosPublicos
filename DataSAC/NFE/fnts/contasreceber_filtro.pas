unit contasreceber_filtro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmcontasreceber_filtro = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    bgravar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_filtro: Tfrmcontasreceber_filtro;

implementation

uses contasreceber, modulo;

{$R *.dfm}

procedure Tfrmcontasreceber_filtro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_filtro.bgravarClick(Sender: TObject);
begin
  with frmcontasreceber do
  begin

        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        if radiobutton1.Checked then qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento DESC');
        if radiobutton2.Checked then qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 2 order by data_vencimento DESC');
        if radiobutton3.Checked then qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' order by data_vencimento DESC');
        qrcontasreceber.Open;




        while qrcr.RecordCount <> 0 do qrcr.delete;



        qrcontasreceber.first;





        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          qrcr.Insert;






  qrcr.fieldbyname('FILTRO').AsINTEGER := 0;
  qrcr.fieldbyname('DATA_EMISSAO').AsString := qrcontasreceber.fieldbyname('DATA_EMISSAO').AsString;
  qrcr.fieldbyname('CODIGO').AsString := qrcontasreceber.fieldbyname('CODIGO').ASSTRING;
  qrcr.fieldbyname('DATA_VENCIMENTO').AsString := qrcontasreceber.fieldbyname('DATA_VENCIMENTO').ASSTRING;
  qrcr.fieldbyname('DOCUMENTO').AsString := qrcontasreceber.fieldbyname('DOCUMENTO').ASSTRING;
  qrcr.fieldbyname('VALOR_ORIGINAL').AsString := qrcontasreceber.fieldbyname('VALOR_ORIGINAL').ASSTRING;
  qrcr.fieldbyname('VALOR_PAGO').AsString := qrcontasreceber.fieldbyname('VALOR_PAGO').ASSTRING;
  qrcr.fieldbyname('VALOR_ATUAL').AsString := qrcontasreceber.fieldbyname('VALOR_ATUAL').ASSTRING;
  qrcr.fieldbyname('CODCEDENTE').AsString := qrcontasreceber.fieldbyname('CODCEDENTE').ASSTRING;
  qrcr.fieldbyname('TIPO').AsString := qrcontasreceber.fieldbyname('TIPO').ASSTRING;
  qrcr.fieldbyname('VALOR_JUROS').AsString := qrcontasreceber.fieldbyname('VALOR_JUROS').ASSTRING;
  qrcr.fieldbyname('DATA_PAGAMENTO').AsString := qrcontasreceber.fieldbyname('DATA_PAGAMENTO').ASSTRING;
  qrcr.fieldbyname('CODVENDEDOR').AsString := qrcontasreceber.fieldbyname('CODVENDEDOR').ASSTRING;
  qrcr.fieldbyname('CODCAIXA').AsString := qrcontasreceber.fieldbyname('CODCAIXA').ASSTRING;
  qrcr.fieldbyname('CODCLIENTE').AsString := qrcontasreceber.fieldbyname('CODCLIENTE').ASSTRING;
  qrcr.fieldbyname('VALOR_DESCONTO').AsString := qrcontasreceber.fieldbyname('VALOR_DESCONTO').ASSTRING;
  qrcr.fieldbyname('SITUACAO').AsString := qrcontasreceber.fieldbyname('SITUACAO').ASSTRING;
  qrcr.fieldbyname('CODVENDA').AsString := qrcontasreceber.fieldbyname('CODVENDA').ASSTRING;
  qrcr.fieldbyname('NOSSONUMERO').AsString := qrcontasreceber.fieldbyname('NOSSONUMERO').ASSTRING;
  qrcr.fieldbyname('CODREGIAO').AsString := qrcontasreceber.fieldbyname('CODREGIAO').ASSTRING;

          qrcr.post;

          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
           qrcontasreceber.next;
        end;


        qrcR.Refresh;





        rselecao.value := 0;
        total_juros    := 0;
        total_original  := 0;

        pselecao.visible := false;
        wwdbgrid1.SetFocus;



  end;



   close;
end;

procedure Tfrmcontasreceber_filtro.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.

unit urelcartacorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcartacorrecao = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    texto: TQRRichText;
    lbltit5: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    iPag:integer;

  public
    { Public declarations }
  end;

var
  frmrelcartacorrecao: Tfrmrelcartacorrecao;

implementation
      uses uGeral, udados, udetalhepedido;
{$R *.dfm}

procedure Tfrmrelcartacorrecao.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelcartacorrecao.relatorioBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 ipag := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;




 lbltit1.Caption := datetostr(date);

 lbltit4.Caption := '';
 if frmdados.cds_emitente.Locate('codigo',frmdados.cds_nfe.fieldbyname('cemi').asInteger,[]) then
    begin
      lblcab1.Caption := frmdados.cds_emitente.fieldbyname('nome').asstring;
      lbltit5.Caption := 'C.N.P.J.: '+frmdados.cds_emitente.fieldbyname('cnpj').asstring+' I.E.: '+frmdados.cds_emitente.fieldbyname('ie').asstring;

       if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').asInteger,[]) then
          begin
            lbltit4.Caption := frmdados.cds_munic.fieldbyname('nome').asString
            +', '+formatdatetime('dd mmmm yyyy',date);
          end;
       //endi




      // :=  frmdados.cds_emitente.fieldbyname('').asString+', '+ ;
    end;


 lbltit3.Caption := 'CARTA DE CORREÇÃO';

 texto.Lines.Clear;

 texto.Lines.Add('');
 texto.Lines.Add('');
 texto.Lines.Add('');

 texto.Lines.Add('A');

 if frmdados.cds_nfe.FieldByName('tipodest').AsString = 'C' then
    begin

      if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nfe.fieldbyname('cdest').asInteger,[]) then
         begin
           texto.Lines.Add(frmdados.Cds_clientes.fieldbyname('nome').asString);
           texto.Lines.Add(frmdados.Cds_clientes.fieldbyname('endereco').asString+' n.o '+frmdados.Cds_clientes.fieldbyname('nro').asString);
           texto.Lines.Add('CEP '+frmdados.Cds_clientes.fieldbyname('cep').asString);
            if frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').asInteger,[]) then
               begin
                 texto.Lines.Add(frmdados.cds_munic.fieldbyname('nome').asString);
               end;
            //endi

            if frmdados.cds_estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').asInteger,[]) then
               begin
                 texto.Lines.Add(frmdados.cds_estados.fieldbyname('sigla').asString);
               end;
            //endi

         end;
      //endi


    end;
 //endi


 if frmdados.cds_nfe.FieldByName('tipodest').AsString = 'F' then
    begin

      if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nfe.fieldbyname('cdest').asInteger,[]) then
         begin
           texto.Lines.Add(frmdados.Cds_fornecedores.fieldbyname('nome').asString);
           texto.Lines.Add(frmdados.Cds_fornecedores.fieldbyname('endereco').asString+' n.o '+frmdados.Cds_fornecedores.fieldbyname('nro').asString);
           texto.Lines.Add('CEP '+frmdados.Cds_fornecedores.fieldbyname('cep').asString);
            if frmdados.cds_Munic.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
               begin
                 texto.Lines.Add(frmdados.cds_munic.fieldbyname('nome').asString);
               end;
            //endi

            if frmdados.cds_estados.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cest').asInteger,[]) then
               begin
                 texto.Lines.Add(frmdados.cds_estados.fieldbyname('sigla').asString);
               end;
            //endi

         end;
      //endi


    end;
 //endi

 texto.Lines.Add('');

 texto.Lines.Add('Prezado(s) Senhor(es)');

 texto.Lines.Add('');

 texto.Lines.Add('REF.: CONFERÊNCIA DE DOCUMENTO FISCAL E COMUNICAÇÃO DE INCORREÇÕES');

 texto.Lines.Add('');

 texto.Lines.Add('  REFERENTE N./ NOTA FISCAL N.o '+frmdados.cds_nfe.fieldbyname('nnf').AsString+' de '+frmdados.cds_nfe.fieldbyname('dataemi').AsString+'.' );

 texto.Lines.Add('');

 texto.Lines.Add('Em face do que determina a legislação fiscal vigente, vimos pela presente comunicar-lhes que a');

 texto.Lines.Add('Nota Fiscal em referência contém a(s) irregularidade(s) que abaixo apontamos cuja correção ');

 texto.Lines.Add('solicitamos seja providenciada imediatamente.');

 texto.Lines.Add('');

 texto.Lines.Add('RETIFICAÇÃO(ÕES) CONSIDERADA(S)  ');

 texto.Lines.Add(frmdetalhepedido.sresp);

 texto.Lines.Add('');

 texto.Lines.Add('Para evitar-se qualquer sanção fiscal, solicitamos acusarem o recebimento desta, na cópia que a');

 texto.Lines.Add('acompanha, devendo a via de VS.(as) ficar arquivada juntamente com a nota fiscal em questão.');

 texto.Lines.Add('');

 texto.Lines.Add('Sem outro motivo para o momento, subscrevemo-nos.');

 texto.Lines.Add('');

 texto.Lines.Add('Acusamos recebimento da 1.o via                                       Atenciosamente');

 texto.Lines.Add('');

 texto.Lines.Add('');


 texto.Lines.Add('_______________________________________________    ________________________________________');

 texto.Lines.Add('Local e Data                                                                              '+frmdados.cds_emitente.fieldbyname('nome').asstring);

 texto.Lines.Add('');

 texto.Lines.Add('');


 texto.Lines.Add('_______________________________________________');

 texto.Lines.Add('Carimbo e Assinatura');



end;

end.

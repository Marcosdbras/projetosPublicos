unit venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmvenda_impressao = class(TForm)
    FlatPanel1: TFlatPanel;
    Image1: TImage;
    Label1: TLabel;
    ViewSplit1: TViewSplit;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    evias: TSpinEdit;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    TPNota_Fiscal: TMenuItem;
    TPBobina: TMenuItem;
    TPRazao: TMenuItem;
    TPCarta: TMenuItem;
    TPImpresso: TMenuItem;
    TPContrato: TMenuItem;
    TPPersonalizado: TMenuItem;
    TPA4: TMenuItem;
    TPRazaoA4: TMenuItem;
    N1: TMenuItem;
    EscolherModelo1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPCartaClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPA4Click(Sender: TObject);
    procedure TPRazaoA4Click(Sender: TObject);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure EscolherModelo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_impressao: Tfrmvenda_impressao;
  porta_impressora : string;

implementation

uses modulo, principal, venda_fechamento, ecf_daruma, ecf_bematech,
  ecf_sweda, ecf_urano, ecf_yanco;

{$R *.dfm}

procedure Tfrmvenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Cupom Fiscal
02 - Nota Fiscal
03 - Bobina
04 - Formulário Contínuo - Razão
05 - Formulário Contínuo - Carta
06 - Pré-impresso (Personalizado)
07 - Contrato
08 - Personalizado - Cód.: 000000
09 - Papel A4 - Laser / Tinta
10 - Papel Razão - Laser / Tinta
}


  case combo_modelo.ItemIndex of
  0 : TPCupom_FiscalClick(frmvenda_impressao);
  1 : TPNota_FiscalClick(frmvenda_impressao);
  2 : TPBobinaClick(frmvenda_impressao);
  3 : TPRazaoClick(frmvenda_impressao);
  4 : TPCartaClick(frmvenda_impressao);
  5 : TPImpressoClick(frmvenda_impressao);
  6 : TPContratoClick(frmvenda_impressao);
  7 : TPPersonalizadoClick(frmvenda_impressao);
  8 : TPA4Click(frmvenda_impressao);
  9 : TPRazaoA4Click(frmvenda_impressao);
  END;






  close;
end;

procedure Tfrmvenda_impressao.FormShow(Sender: TObject);
begin

  frmmodulo.QRCONFIG_COMPLUS.open;
  combo_modelo.ItemIndex :=  frmmodulo.QRCONFIG_COMPLUS.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := VIAS;
  porta_impressora := frmmodulo.QRCONFIG_COMPLUS.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
  bcancelar.setfocus;

end;

procedure Tfrmvenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then evias.SetFocus;
end;

procedure Tfrmvenda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    XV : INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20




   assignfile(arquivo,impressora);
   rewrite(arquivo);

   XV := evias.Value;


   WHILE XV <> 0 DO
   BEGIN
   writeln(arquivo,#15+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(numero_venda,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(data_caixa,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  ' Caixa: '+frmprincipal.Texto_Justifica(codigo_caixa,6,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   // informacoes do cliente
   IF CODCLIENTE <> '' THEN
   BEGIN
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+#15+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('CODIGO').asstring,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('NOME').asstring,28,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('bairro').asstring,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring+'  '+frmmodulo.qrcliente.fieldbyname('cep').asstring,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Tefones...: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,35,' ','D'));
   END
   ELSE
   BEGIN
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+#15+#27#71+#20+frmprincipal.Texto_Justifica('000000',6,'0','E')+' '+frmprincipal.Texto_Justifica(CONSUMIDOR_NOME,28,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CONSUMIDOR_ENDERECO,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(CONSUMIDOR_CIDADE+'/'+CONSUMIDOR_UF,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'Tefones...: '+frmprincipal.Texto_Justifica('',35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(CONSUMIDOR_CPF,35,' ','D'));
     writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica('',35,' ','D'));

   END;
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O QTDE.   X   UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');

   FRMMODULO.QRITEM.Refresh;
   FRMMODULO.QRITEM.first;
   while not FRMMODULO.QRITEM.eof do
   begin
     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.QRITEM.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(FRMMODULO.QRITEM.fieldbyname('produto').asstring,40,' ','D'));

     writeln(arquivo,#15+#27#72+#20,'     '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,FRMMODULO.QRITEM.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(FRMMODULO.QRITEM.fieldbyname('UNIDADE').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,FRMMODULO.QRITEM.fieldbyname('total').asfloat),10,' ','E'));
     FRMMODULO.QRITEM.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'** Meios de  Pagamento **| SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,FRMVENDA_FECHAMENTO.rSUBTOTAL.value),10,' ','E'));



  dinheiro := frmvenda_fechamento.rdinheiro.Value;
  chequeav := frmvenda_fechamento.rchequeav.Value;
  chequeap := frmvenda_fechamento.rchequeap.Value;
  cartaocred := frmvenda_fechamento.rcartaocred.Value;
  cartaodeb := frmvenda_fechamento.rcartaodeb.Value;
  crediario := frmvenda_fechamento.rcrediario.Value;
  CONTA_FORMAS := 1;

   while conta_formas <> 7 do
   begin
     if conta_formas = 1 then
     begin
       if dinheiro <> 0 then
       begin
          dinheiro := 0;
          writeln(arquivo,#15+#27#72+#20,'Dinheiro ... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdinheiro.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#15+#27#72+#20,'Cheque Vista R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#15+#27#72+#20,'Cheque Prazo R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#15+#27#72+#20,'Cartao Credi R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#15+#27#72+#20,'Cartao Debit R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end;
             end;
           end;
         end;
       end;
     end;


     if conta_formas = 2 then
     begin
         if chequeav <> 0 then
         begin
             writeln(arquivo,#15+#27#72+#20,'Cheque Vista R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Cheque Prazo R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credi R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#15+#27#72+#20,'Cartao Debit R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                         | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 END;
               end;
             end;
           end;
         end;
     end;

     if conta_formas = 3 then
     begin
           if chequeap<> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Cheque Prazo R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credi R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debit R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                         |----------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credi R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debit R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rCREDIARIO.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                         | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rtotal.value),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debit R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.Value),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmvenda_fechamento.rcrediario.Value <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'                 PRESTACOES                     ');
     Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento   Documento   Tipo      Valor-R$');
     Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');

     FRMMODULO.qrvenda_contasreceber.First;
     while not FRMMODULO.qrvenda_contasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.qrvenda_contasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(FRMMODULO.qrvenda_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(FRMMODULO.qrvenda_contasreceber.fieldbyname('documento').asstring,11,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(FRMMODULO.qrvenda_contasreceber.fieldbyname('tipo').asstring,7,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,FRMMODULO.qrvenda_contasreceber.fieldbyname('valor').asfloat),10,' ','E'));



       FRMMODULO.qrvenda_contasreceber.next;
     end;
   end;



   Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'      ------------------------------------     ');
   WRiteln(arquivo,#15+#27#72+#20,'                  Assinatura');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
    XV := XV - 1;
   END;

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);
































end;

procedure Tfrmvenda_impressao.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPCartaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPA4Click(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPRazaoA4Click(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
produto, ALIQUOTA:string;
NOME_PRODUTO, CODIGO_BARRA : STRING;
begin

  frmmodulo.qrconfig.Open;
  ecf_modelo := frmmodulo.qrconfig.FieldByName('ecf_modelo').asstring;
  MUDOU_2 := 'SIM';


  TRY
      FRMMODULO.QRITEM.First;


      if ecf_modelo = 'DARUMA' then if frmecf_daruma.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'DARUMA' then numero_cupom := frmecf_daruma.ecf_numero_cupom(ecf_modelo);
      if ecf_modelo = 'BEMATECH' then if frmecf_BEMATECH.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'BEMATECH' then numero_cupom := frmecf_BEMATECH.ecf_numero_cupom(ecf_modelo);
      if ecf_modelo = 'SWEDA' then if frmecf_SWEDA.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'SWEDA' then numero_cupom := frmecf_SWEDA.ecf_numero_cupom(ecf_modelo);
      if ecf_modelo = 'URANO' then if frmecf_URANO.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'URANO' then numero_cupom := frmecf_URANO.ecf_numero_cupom(ecf_modelo);
      if ecf_modelo = 'YANCO' then if frmecf_YANCO.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'YANCO' then numero_cupom := frmecf_YANCO.ecf_numero_cupom(ecf_modelo);


      while not FRMMODULO.QRITEM.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+FRMMODULO.QRITEM.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;


        if frmmodulo.qrproduto.RECNO  = 1 THEN
        begin
          IF FRMMODULO.QRITEM.FIELDBYNAME('QTDE').ASFLOAT > 0 THEN
          BEGIN
            IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
            IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
            IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
            BEGIN
             aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
            end;
             NOME_produto :=  frmprincipal.Texto_Justifica(FRMMODULO.QRITEM.fieldbyname('produto').asstring,29,' ','D');
             CODIGO_BARRA := frmmodulo.qrproduto.fieldbyname('codigo').asstring;




             if ecf_modelo = 'DARUMA' then FRMECF_DARUMA.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_produto,ALIQUOTA,'F',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat,
                                           2,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat,'$',0,'D',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat*FRMMODULO.QRITEM.fieldbyname('unitario').asfloat);

             if ecf_modelo = 'BEMATECH' then FRMECF_BEMATECH.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_produto,ALIQUOTA,'F',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat,
                                           2,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat,'$',0,'D',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat*FRMMODULO.QRITEM.fieldbyname('unitario').asfloat);

             if ecf_modelo = 'SWEDA' then FRMECF_SWEDA.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_produto,ALIQUOTA,'F',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat,
                                           2,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat,'$',0,'D',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat*FRMMODULO.QRITEM.fieldbyname('unitario').asfloat);

             if ecf_modelo = 'YANCO' then FRMECF_YANCO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_produto,ALIQUOTA,'F',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat,
                                           2,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat,'$',0,'D',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat*FRMMODULO.QRITEM.fieldbyname('unitario').asfloat);

             if ecf_modelo = 'URANO' then FRMECF_URANO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_produto,ALIQUOTA,'F',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat,
                                           2,FRMMODULO.QRITEM.fieldbyname('unitario').asfloat,'$',0,'D',FRMMODULO.QRITEM.fieldbyname('qtde').asfloat*FRMMODULO.QRITEM.fieldbyname('unitario').asfloat);


          END
          ELSE
          BEGIN
            IF ECF_MODELO = 'DARUMA'   THEN FRMECF_DARUMA.ecf_cancela_item(ecf_modelo,FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING);
            IF ECF_MODELO = 'BEMATECH' THEN FRMECF_BEMATECH.ecf_cancela_item(ecf_modelo,FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING);
            IF ECF_MODELO = 'SWEDA'    THEN FRMECF_SWEDA.ecf_cancela_item(ecf_modelo,FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING);
            IF ECF_MODELO = 'URANO'    THEN FRMECF_URANO.ecf_cancela_item(ecf_modelo,FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING);
            IF ECF_MODELO = 'YANCO'    THEN FRMECF_YANCO.ecf_cancela_item(ecf_modelo,FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING);

          END;

        end;
        FRMMODULO.QRITEM.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)


      desconto_acrescimo := frmvenda_fechamento.rdesconto2.value - frmvenda_fechamento.racrescimo2.value;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';


        if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then exit;
        if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then exit;
        if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then exit;
        if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then exit;
        if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then exit;


      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
       if ecf_modelo = 'SWEDA' then
      begin
        if FRMECF_SWEDA.ecf_efetua_forma_pgto_especial(ecf_modelo,'',frmvenda_fechamento.rdinheiro.value,'',frmvenda_fechamento.rchequeav.value,'',frmvenda_fechamento.rchequeap.value,'',frmvenda_fechamento.rcartaocred.value,'',frmvenda_fechamento.rcartaodeb.value,'',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
      end
      else
      begin
        if frmvenda_fechamento.rdinheiro.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
        end;
        if frmvenda_fechamento.rchequeav.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
        end;
        if frmvenda_fechamento.rchequeap.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;

        end;
        if frmvenda_fechamento.rcartaocred.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
        end;
        if frmvenda_fechamento.rcartaodeb.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
        end;
        if frmvenda_fechamento.rcrediario.value > 0 then
        begin
          if ECF_MODELO = 'DARUMA' THEN if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
          if ECF_MODELO = 'BEMATECH' THEN if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
          if ECF_MODELO = 'SWEDA' THEN if FRMECF_SWEDA.ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
          if ECF_MODELO = 'URANO' THEN if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
          if ECF_MODELO = 'YANCO' THEN if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
        end;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      IF CODCLIENTE <> '' THEN
      BEGIN
         if ecf_modelo = 'SWEDA' then
         begin
           if FRMECF_SWEDA.ecf_termina_fechamento_especial(ecf_modelo,CONSUMIDOR_NOME,consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf,CONSUMIDOR_CPF) = 'ERRO' then exit;
         end
         else
         begin

           IF ECF_MODELO = 'DARUMA' THEN
           BEGIN
             if FRMECF_DARUMA.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                           '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           END;

           IF ECF_MODELO = 'BEMATECH' THEN
           BEGIN
             if FRMECF_BEMATECH.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                           '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           END;
           IF ECF_MODELO = 'URANO' THEN
           BEGIN
             if FRMECF_URANO.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                           '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           END;
           IF ECF_MODELO = 'YANCO' THEN
           BEGIN
             if FRMECF_YANCO.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                           '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           END;










         end;



      END
      ELSE
      BEGIN


         if ecf_modelo = 'SWEDA' then
         begin
           if FRMECF_SWEDA.ecf_termina_fechamento_especial(ecf_modelo,'','','') = 'ERRO' then exit;
         end
         else
         begin
           if ECF_MODELO = 'DARUMA' THEN IF FRMECF_DARUMA.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+
                                                '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

           if ECF_MODELO = 'BEMATECH' THEN IF FRMECF_BEMATECH.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+
                                                '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           if ECF_MODELO = 'URANO' THEN IF FRMECF_URANO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+
                                                '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
           if ECF_MODELO = 'YANCO' THEN IF FRMECF_YANCO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+
                                                '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;


          end;


      END;



  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;
end;

procedure Tfrmvenda_impressao.EscolherModelo1Click(Sender: TObject);
begin
  combo_modelo.SetFocus;
end;

end.





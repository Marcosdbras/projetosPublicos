unit notas_venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmnotas_venda_impressao = class(TForm)
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
    qrproduto_mov: TZQuery;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movproduto: TStringField;
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
    procedure TPCupom_FiscalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotas_venda_impressao: Tfrmnotas_venda_impressao;
  porta_impressora : string;

  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal;
                      
{$R *.dfm}

procedure Tfrmnotas_venda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmnotas_venda_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotas_venda_impressao.bgravarClick(Sender: TObject);
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
  0 : TPCupom_FiscalClick(frmnotas_venda_impressao);
  1 : TPNota_FiscalClick(frmnotas_venda_impressao);
  2 : TPBobinaClick(frmnotas_venda_impressao);
  3 : TPRazaoClick(frmnotas_venda_impressao);
  4 : TPCartaClick(frmnotas_venda_impressao);
  5 : TPImpressoClick(frmnotas_venda_impressao);
  6 : TPContratoClick(frmnotas_venda_impressao);
  7 : TPPersonalizadoClick(frmnotas_venda_impressao);
  8 : TPA4Click(frmnotas_venda_impressao);
  END;






  close;
end;

procedure Tfrmnotas_venda_impressao.FormShow(Sender: TObject);
begin
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025');
  frmmodulo.qrproduto.open;


   IF FRMMODULO.QRVENDA.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
   BEGIN
     CLIENTE_NOME := 'CLIENTE ESPECIAL' ;
     CLIENTE_ENDERECO := '';
     CLIENTE_BAIRRO := '';
     CLIENTE_CIDADE := '';
     CLIENTE_UF := '';
     CLIENTE_CEP := '';
     CLIENTE_TELEFONE := '';
     CLIENTE_CPF := '';
     CLIENTE_RG := '';
     CLIENTE_CODIGO := 'S/CLIE';
   END
   ELSE
   BEGIN
     CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
   END;




                qrproduto_mov.close;
                qrproduto_mov.SQL.Clear;
                qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
                qrproduto_mov.Open;
                qrproduto_mov.First;


  if ecf_modelo = '' then
  begin
    frmmodulo.QRCONFIG_COMPLUS.open;
    combo_modelo.ItemIndex :=  frmmodulo.QRCONFIG_COMPLUS.FieldByName('VENDA_TIPONOTA').asinteger;
    evias.Value := VIAS;
    porta_impressora := frmmodulo.QRCONFIG_COMPLUS.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
  end
  else
  begin
    combo_modelo.ItemIndex := 0;
  end;

end;

procedure Tfrmnotas_venda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then evias.SetFocus;
end;

procedure Tfrmnotas_venda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotas_venda_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20



   subir_papel := 14;

   assignfile(arquivo,impressora);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codvendedor').asstring,13,' ','D'));

   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Tefones...: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(CLIENTE_rg,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O     QTDE.   X   UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

   qrproduto_mov.first;
   while not qrproduto_mov.eof do
   begin
     texto1 := '';

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('produto').asstring,44-length(texto1),' ','D')+' '+texto1);

     writeln(arquivo,#15+#27#72+#20,'         '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrproduto_mov.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('unidade').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('total').asfloat),10,' ','E'));
     qrproduto_mov.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'  ** Meios de  Pagamento **  | SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),10,' ','E'));



  dinheiro := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
  chequeav := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
  chequeap := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
  cartaocred := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
  cartaodeb := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
  crediario := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
  CONTA_FORMAS := 1;

   while conta_formas <> 7 do
   begin
     if conta_formas = 1 then
     begin
       if dinheiro <> 0 then
       begin
          dinheiro := 0;
          writeln(arquivo,#15+#27#72+#20,'Dinheiro ....... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#15+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
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
             writeln(arquivo,#15+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
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
               writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             |----------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'                   PRESTACOES                       ');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento   Documento     Tipo        Valor-R$');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

     frmmodulo.QRcontasreceber.First;
     prestacao := 1;
     while not frmmodulo.QRcontasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(inttostr(prestacao),3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E'));


       prestacao := prestacao + 1;
       frmmodulo.QRcontasreceber.next;
     end;
   end;



   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'         ------------------------------------       ');
   WRiteln(arquivo,#15+#27#72+#20,'                      Assinatura');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);
































end;

procedure Tfrmnotas_venda_impressao.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPCartaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPA4Click(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
ecf_antes : string;
produto:string;
begin
{
  frmmodulo.qrconfig.Open;
  ecf_antes := ecf_modelo;
  ecf_modelo := frmmodulo.qrconfig.FieldByName('ecf_modelo').asstring;
  MUDOU_2 := 'SIM';


  TRY
      FRMMODULO.QRITEM.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;


      numero_cupom := ecf_numero_cupom(ecf_modelo);

      qrproduto_mov.First;

      while not qrproduto_mov.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+qrproduto_mov.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;

        if frmmodulo.qrproduto.RECNO = 1 THEN
        begin
        IF QRPRODUTO_MOV.FIELDBYNAME('QTDE').ASFLOAT > 0 THEN
        BEGIN
            produto := FRMMODULO.qrproduto.fieldbyname('produto').asstring;



          ecf_vende_item(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.Texto_Justifica(produto,29,' ','D'),
                                  frmmodulo.qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  'F',
                                  qrproduto_mov.fieldbyname('qtde').asfloat,
                                  2,
                                  qrproduto_mov.fieldbyname('unitario').asfloat,
                                  '$',
                                  0,
                                  'D',
                                  qrproduto_mov.fieldbyname('qtde').asfloat*qrproduto_mov.fieldbyname('unitario').asfloat);
        END
        ELSE
        BEGIN
          ecf_cancela_item(ECF_MODELO,QRPRODUTO_MOV.FIELDBYNAME('SERIAL').ASSTRING);
        END;

        end;
        qrproduto_mov.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)


      desconto_acrescimo := frmmodulo.qrvenda.fieldbyname('desconto').asfloat - frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;

      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';


        if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat) = 'ERRO' then exit;

      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
       if ecf_modelo = 'SWEDA' then
      begin
        if ecf_efetua_forma_pgto_especial(ecf_modelo,'',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat,'',frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat,'',frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat,'',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat,'',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat,'',frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
      end
      else
      begin
        if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
        end;
        if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
        end;
        if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
        end;
        if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
        end;
        if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
        end;
        if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
        end;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      IF CODCLIENTE <> '' THEN
      BEGIN
         if ecf_modelo = 'SWEDA' then
         begin
           if ecf_termina_fechamento_especial(ecf_modelo,CONSUMIDOR_NOME,consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf,CONSUMIDOR_CPF) = 'ERRO' then exit;
         end
         else
         begin
           if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
         end;
      END
      ELSE
      BEGIN


         if ecf_modelo = 'SWEDA' then
         begin
           if ecf_termina_fechamento_especial(ecf_modelo,'','','') = 'ERRO' then exit;
         end
         else
         begin
           if ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+
                                                '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
          end;


      END;



  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;

  ecf_modelo := ecf_antes;
}
end;

end.





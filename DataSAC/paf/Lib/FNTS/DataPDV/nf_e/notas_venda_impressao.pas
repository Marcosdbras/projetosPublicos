unit notas_venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDesgn, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmnotas_venda_impressao = class(TForm)
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
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    frxDBDataset1: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fxvenda: TfrxReport;
    qrcontasreceber: TZQuery;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasrecebercliente: TStringField;
    fscontasreceber: TfrxDBDataset;
    FSCLIENTE: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    FormulrioContnuoRazo1: TMenuItem;
    ContratoCapa1: TMenuItem;
    Bobinasemformatao1: TMenuItem;
    qrproduto_movNUMERACAO: TStringField;
    PedidoCarn1: TMenuItem;
    combo_modelo: TComboBox;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    evias: TSpinEdit;
    Label1: TLabel;
    PedidoCarncomcdigodebarras1: TMenuItem;
    Laser21: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPCartaClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPA4Click(Sender: TObject);
    procedure TPRazaoA4Click(Sender: TObject);
    procedure FormulrioContnuoRazo1Click(Sender: TObject);
    procedure Bobinasemformatao1Click(Sender: TObject);
    procedure qrproduto_movCalcFields(DataSet: TDataSet);
    procedure PedidoCarn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PedidoCarncomcdigodebarras1Click(Sender: TObject);
    procedure Laser21Click(Sender: TObject);
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

uses modulo, principal, venda_relrazao, venda_relrazao2, ecf, extenso1,
  Math, venda, venda_fechamento;
                      
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
  9 : TPRazaoA4Click(frmnotas_venda_impressao);
  10: FormulrioContnuoRazo1click(frmnotas_venda_impressao);
//  11: nil;
  12: Bobinasemformatao1Click(frmnotas_venda_impressao);
  13 : PedidoCarn1Click(frmnotas_venda_impressao);
//  14 : //
  15 : PedidoCarncomcdigodebarras1Click(frmnotas_venda_impressao);
  16 : Laser21Click(frmnotas_venda_impressao);

  END;






  close;
end;

procedure Tfrmnotas_venda_impressao.FormShow(Sender: TObject);
begin

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
     CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
   END;
   qrproduto_mov.close;
   qrproduto_mov.SQL.Clear;
   qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
   qrproduto_mov.Open;
   qrproduto_mov.First;


  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;



end;

procedure Tfrmnotas_venda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmnotas_venda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotas_venda_impressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
produto, tp_desconto_acrescimo : string;
begin
//  TRY
    IF FRMMODULO.QRVENDA.FieldByName('CUPOM_FISCAL').ASINTEGER = 1 THEN
    BEGIN
      if APPLICATION.MESSAGEBOX('Esta venda já foi emitida um cupom fiscal! Deseja continuar?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
      begin
        exit;
      end;
    end;


      frmmodulo.qrproduto_mov.close;
      frmmodulo.qrproduto_mov.SQL.Clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+''' and movimento <> 9');
      frmmodulo.qrproduto_mov.Open;
      frmmodulo.qrproduto_mov.First;

     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := frmmodulo.qrcliente.fieldbyname('cpf').asstring ;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := frmmodulo.qrcliente.fieldbyname('convenio').asstring ;
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom

        while not frmmodulo.qrproduto_mov.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmmodulo.qrproduto_mov.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmmodulo.qrproduto_mov.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          frmmodulo.qrproduto_mov.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin










      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      while not frmmodulo.qrproduto_mov.Eof do
      begin
        FRMMODULO.QRPRODUTO.Close;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        if frmmodulo.qrproduto.RECORDCOUNT > 0 THEN
        begin
          desconto_acrescimo := frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat - frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';



          if frmmodulo.qrproduto_mov.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmmodulo.qrproduto_mov.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end;


          ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  frmmodulo.qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0);

        end;
        frmmodulo.qrproduto_mov.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)
      desconto_acrescimo := frmmodulo.qrvenda.fieldbyname('desconto').asfloat -
                            frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
      if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeav').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeap').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_crediario').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)









      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;


    FRMMODULO.QRVENDA.EDIT;
    FRMMODULO.QRVENDA.FieldByName('CUPOM_FISCAL').ASINTEGER := 1;
    frmmodulo.qrvenda.fieldbyname('NUMERO_cupom_fiscal').asstring := ecf_numero_cupom(ECF_MODELO);
    FRMMODULO.QRVENDA.Post;
    FRMMODULO.Conexao.Commit;


    end;







  close;
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



   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;


   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,13,' ','D'));

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
     texto1 := qrproduto_mov.fieldbyname('serial').asstring;

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


{
procedure Tfrmnotas_venda_impressao.TPRazaoClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;
   qrproduto_mov.first;
   while not qrproduto_mov.eof do
   begin
     texto1 := qrproduto_mov.fieldbyname('serial').asstring;

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrproduto_mov.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('total').asfloat),10,' ','E'));
     qrproduto_mov.Next;
     I := I + 1;
     if i = 16 then
     begin
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'                                                            **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 16 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
    formapgto := '';


    if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      formapgto := formapgto +'Crediário/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);

    y := 0;
    v1 := '';
    v2 := '';

    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      frmmodulo.qrcontasreceber.Open;
      frmmodulo.qrcontasreceber.first;
      while not frmmodulo.qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' -> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' -> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
          y := y + 1;
        end;
        frmmodulo.qrcontasreceber.next;
      end;
    end;
     writeln(arquivo,#27#77+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');     

   END;

   


   closefile(arquivo);


end;
}


procedure Tfrmnotas_venda_impressao.TPRazaoClick(Sender: TObject);
begin


  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento DESC');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
  END;

  {
  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',frmmodulo.qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(frmmodulo.qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  }

  frmmodulo.qrrelatorio.fieldbyname('linha1').AsString := FORMATFLOAT('###,###,##0.00',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').AsFloat);
  frmmodulo.qrrelatorio.fieldbyname('linha2').AsString := FORMATFLOAT('###,###,##0.00',frmmodulo.qrvenda.fieldbyname('meio_chequeav').AsFloat);
  frmmodulo.qrrelatorio.fieldbyname('linha3').AsString := FORMATFLOAT('###,###,##0.00',frmmodulo.qrvenda.fieldbyname('meio_chequeap').AsFloat);
  frmmodulo.qrrelatorio.fieldbyname('linha4').AsString := FORMATFLOAT('###,###,##0.00',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').AsFloat);
  frmmodulo.qrrelatorio.fieldbyname('linha5').AsString := FORMATFLOAT('###,###,##0.00',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').AsFloat);


  //frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(frmvenda.qrvenda_produto.RecordCount);
  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
  FXvenda.ShowReport;
end;

procedure Tfrmnotas_venda_impressao.TPCartaClick(Sender: TObject);
begin
  // verificar

end;

procedure Tfrmnotas_venda_impressao.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPContratoClick(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento');
  qrcontasreceber.open;
  IF QRCONTASRECEBER.RecordCount > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',frmmodulo.qrvenda.fieldbyname('data').asdatetime);
    frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(frmmodulo.qrvenda.fieldbyname('total').asfloat));
    frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(QRPRODUTO_MOV.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000074.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;


  END
  ELSE
  BEGIN

    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(QRPRODUTO_MOV.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000050.fr3');
    FXvenda.ShowReport;

  END;
end;

procedure Tfrmnotas_venda_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPA4Click(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotas_venda_impressao.TPRazaoA4Click(Sender: TObject);
var formapgto, v1, v2 : string;
y : integer;
begin
  frmvenda_relrazao2 := tfrmvenda_relrazao2.create(self);
  with frmvenda_relrazao2 do
  begin
    rempresa.Caption := emitente_fantasia;
    remissao.Caption := frmmodulo.qrvenda.fieldbyname('data').asstring+' '+timetostr(time);
    rcodcliente.Caption := CLIENTE_codigo;
    rcliente.Caption := CLIENTE_NOME;
    rendereco.Caption := CLIENTE_endereco+', '+CLIENTE_bairro+' - '+CLIENTE_cidade+' ('+CLIENTE_uf+')   Cep: '+CLIENTE_cep;
    rtelefone.Caption := CLIENTE_telefone;
    rcpf.Caption := CLIENTE_cpf;
    rrg.Caption := CLIENTE_rg;
    rcodigo.Caption := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
    rvendedor.caption := frmmodulo.qrvenda.fieldbyname('vendedor').asstring;
    robs.caption := '';
    lretirado.Caption := frmmodulo.qrvenda.fieldbyname('obs').asstring;

    rsubtotal.Caption := formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('subtotal').asfloat);
    ritens.Caption := inttostr(qrproduto_mov.recordcount);
    rdesconto.Caption := formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat);
    rtotal.Caption := formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat);

    formapgto := '';

    F1.Caption := '';
    F2.CAPTION := '';
    F3.CAPTION := '';
    F4.Caption := '';




    if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then F1.CAPTION := 'Dinheiro/Entrada....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat),10,' ','E');
    if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cheque a Vista......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),10,' ','E')
      ELSE
        F2.CAPTION := 'Cheque a Vista......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),10,' ','E');
    END;

    if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),10,' ','E')
        else
          F3.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_CHEQUEap').asfloat),10,' ','E')
    END;
    if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cartão de Crédito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cartão de Crédito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Cartão de Crétito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),10,' ','E')
          else
            F4.CAPTION := 'Cartão de Crétito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),10,' ','E');
    END;


    if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),10,' ','E')
          else
            F4.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),10,' ','E');
    END;


    if frmmodulo.qrvenda.fieldbyname('MEIO_crediario').asfloat <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Crediário.............$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),10,' ','E')
          else
            F4.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),10,' ','E');
    END;

    if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      formapgto := formapgto +'Crediário/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);
    Rprazo.Caption := formapgto;
    y := 0;
    v1 := '';
    v2 := '';

    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      frmmodulo.qrcontasreceber.Open;
      frmmodulo.qrcontasreceber.first;
      while not frmmodulo.qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' --> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' --> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
          y := y + 1;
        end;
        frmmodulo.qrcontasreceber.next;
      end;
    end;
    rvencimento1.caption := v1;
    rvencimento2.caption := v2;

      relatorio.Print;

  end;

end;

procedure Tfrmnotas_venda_impressao.FormulrioContnuoRazo1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin

  assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' ORCAMENTO: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(CLIENTE_rg,18,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   I := 0;


   qrproduto_mov.Refresh;
   qrproduto_mov.first;
   while not qrproduto_mov.eof do
   begin
     texto1 := qrproduto_mov.fieldbyname('serial').asstring;

     writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('produto').asstring,29-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrproduto_mov.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('total').asfloat),10,' ','E'));
     qrproduto_mov.Next;
     I := I + 1;
     if i = 16 then
     begin
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' ORCAMENTO: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
         writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
        writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(CLIENTE_rg,18,' ','D'));
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 16 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),9,' ','E')+
                                         '  DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),9,' ','E')+
                                         '  ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),8,' ','E')+
                                         '  TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),9,' ','E'));

   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
    formapgto := '';


    if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      formapgto := formapgto +'Crediário/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);

    y := 0;
    v1 := '';
    v2 := '';

    if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      frmmodulo.qrcontasreceber.Open;
      frmmodulo.qrcontasreceber.first;
      while not frmmodulo.qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' -> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring+' -> '+formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat)+' | ';
          y := y + 1;
        end;
        frmmodulo.qrcontasreceber.next;
      end;
    end;













     writeln(arquivo,#27#80+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#80+#18+#27#72+#20,'                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');     

   END;

   


   closefile(arquivo);

end;

procedure Tfrmnotas_venda_impressao.Bobinasemformatao1Click(
  Sender: TObject);
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



   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;


   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                                  '  Em: '+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('data').asstring,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd:'+frmprincipal.Texto_Justifica(frmmodulo.qrvenda.fieldbyname('vendedor').asstring,9,' ','D'));

   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,26,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Tefones...: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(CLIENTE_rg,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O  QTDE. X  UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');

   qrproduto_mov.first;
   while not qrproduto_mov.eof do
   begin
     texto1 := qrproduto_mov.fieldbyname('serial').asstring;

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('produto').asstring,38-length(texto1),' ','D')+' '+texto1);

     writeln(arquivo,#15+#27#72+#20,'      '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrproduto_mov.fieldbyname('qtde').asfloat),10,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrproduto_mov.fieldbyname('unidade').asstring,2,' ','D')+
                                                ' X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrproduto_mov.fieldbyname('total').asfloat),10,' ','E'));
     qrproduto_mov.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'** Meios de Pagamento**| SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),10,' ','E'));



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
          writeln(arquivo,#15+#27#72+#20,'Dinheiro. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#15+#27#72+#20,'Ch.Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('desconto').asfloat),10,' ','E'));
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
             writeln(arquivo,#15+#27#72+#20,'Ch.Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E'));
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
               writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       |----------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('total').asfloat),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'                PRESTACOES                    ');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento   Documento  Tipo     Valor-R$');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');

     frmmodulo.QRcontasreceber.First;
     prestacao := 1;
     while not frmmodulo.QRcontasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(inttostr(prestacao),3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('documento').asstring,10,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(frmmodulo.QRcontasreceber.fieldbyname('tipo').asstring,6,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E'));


       prestacao := prestacao + 1;
       frmmodulo.QRcontasreceber.next;
     end;
   end;



   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'      ------------------------------------    ');
   WRiteln(arquivo,#15+#27#72+#20,'                 Assinatura');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);


end;

procedure Tfrmnotas_venda_impressao.qrproduto_movCalcFields(
  DataSet: TDataSet);
begin
  QRPRODUTO_MOV.FieldByName('NUMERACAO').ASSTRING :=
  QRPRODUTO_MOV.FieldByName('UNIDADE').ASSTRING ;

end;

procedure Tfrmnotas_venda_impressao.PedidoCarn1Click(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
//    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring :=

    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
  END;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',frmmodulo.qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(frmmodulo.qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(QRPRODUTO_MOV.RecordCount);
  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
  FXvenda.ShowReport;
  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;
  end;





end;

procedure Tfrmnotas_venda_impressao.BitBtn1Click(Sender: TObject);
begin
  if combo_modelo.Text = '04 - Formulário Contínuo - Razão' then
  begin
    fXVENDA.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
    fXVENDA.designreport;
  end
  else
  begin
    fXVENDA.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
    fXVENDA.designreport;
  end;

  //FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000074.fr3');
  //FXvenda.DesignReport;


end;

procedure Tfrmnotas_venda_impressao.PedidoCarncomcdigodebarras1Click(
  Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
  END;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',frmmodulo.qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(frmmodulo.qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(QRPRODUTO_MOV.RecordCount);
  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000154.fr3');
  FXvenda.ShowReport;
  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000153.fr3');
    FXvenda.ShowReport;
  end;
end;

procedure Tfrmnotas_venda_impressao.Laser21Click(Sender: TObject);
begin

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento desc');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
//    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('texto_grande').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' '+
      frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString := '';
  END;

  frmmodulo.fxemitente.open;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',frmmodulo.qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(frmmodulo.qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(QRPRODUTO_MOV.RecordCount);
  IF QRPRODUTO_MOV.RecordCount > 24 THEN
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '2' ELSE
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '1';




  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000155.fr3');
  fxvenda.ShowReport;
end;

end.






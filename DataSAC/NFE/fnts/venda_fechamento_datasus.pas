unit venda_fechamento_datasus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, rxtooledit, rxcurredit,
  TFlatPanelUnit, Buttons, Menus, RzPanel, DB, Wwdatsrc,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton;

type
  Tfrmvenda_fechamento_datasus = class(TForm)
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    BitBtn1: TBitBtn;
    Observaes1: TMenuItem;
    bvenda: TBitBtn;
    Label8: TLabel;
    dsconfig: TwwDataSource;
    RzGroupBox5: TRzGroupBox;
    Label10: TLabel;
    Label17: TLabel;
    eautorizacao_datasus: TEdit;
    ecupom: TEdit;
    ListBox1: TListBox;
    bimp_produtos: TBitBtn;
    Panel1: TPanel;
    rsubtotal: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    rdesconto2: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    qrvenda_produto: TZQuery;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoMIX: TFloatField;
    qrvenda_produtoCST: TStringField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoTIPO: TIntegerField;
    qrvenda_produtoALIQUOTA: TFloatField;
    dsvenda_produto: TDataSource;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    eretorno_datasus: TEdit;
    Label16: TLabel;
    eecf: TEdit;
    bgrava_autorizacao: TBitBtn;
    Panel3: TPanel;
    Bevel2: TBevel;
    lendereco: TLabel;
    ltelefone: TLabel;
    lcpf: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EVENDEDOR: TEdit;
    BLOCVENDEDOR: TBitBtn;
    ENOMEVENDEDOR: TEdit;
    ECLIENTE: TEdit;
    BLOCCLIENTE: TBitBtn;
    ENOMECLIENTE: TEdit;
    Bevel1: TBevel;
    Panel4: TPanel;
    Label4: TLabel;
    rtotal: TRxCalcEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rdinheiro: TRxCalcEdit;
    rconvenio: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    Bevel3: TBevel;
    Panel2: TPanel;
    bimpcupom: TAdvGlowButton;
    bcancelacupom: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    Bevel4: TBevel;
    benvia_autorizacao_datasus: TBitBtn;
    Memo1: TMemo;
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure racrescimo2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rconvenivEnter(Sender: TObject);
    procedure rcrediarioKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure rconvenioExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bimp_produtosClick(Sender: TObject);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure EVENDEDORKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCVENDEDORClick(Sender: TObject);
    procedure BLOCCLIENTEClick(Sender: TObject);
    procedure ECLIENTEEnter(Sender: TObject);
    procedure ECLIENTEExit(Sender: TObject);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure bimpcupomClick(Sender: TObject);
    procedure bretornaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcancelacupomClick(Sender: TObject);
    procedure bgrava_autorizacaoClick(Sender: TObject);
    procedure benvia_autorizacao_datasusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_datasus: Tfrmvenda_fechamento_datasus;

  VER_PRODUTO : BOOLEAN;
  serial_grade : integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade : string;
  confirma_retorno, retorno_datasus : Boolean;
  
implementation

uses venda, modulo, principal, venda_contasreceber, troco, venda_impressao,
  venda_obs, cheque, ecf, venda_fechamento,
  loc_funci, xloc_cliente, venda_farma, mensagem,
  venda_fechamento_vidalink, venda_farma_vidalink;

{$R *.dfm}

procedure Tfrmvenda_fechamento_datasus.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento_datasus.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmvenda_fechamento_datasus.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_datasus.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_datasus.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_datasus.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_datasus.racrescimo2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_datasus.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rconvenio.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento_datasus.bgravarClick(Sender: TObject);
var
  texto : pansichar;
  desconto_acrescimo : real;
  tp_desconto_acrescimo : string;
  v_dinheiro:real;
  imp,forma_pgto,formasp : string;
  i : integer;
  quantidade, unitario, total : double;

   ecf_ok : boolean;

begin

  ecupom.Text    :=  numero_cupomx;
  eecf.Text      :=  frmmodulo.qrconfigECF_CAIXA.AsString;

    v_dinheiro := rdinheiro.value;


  CONTINUAR := TRUE;

  IF NOT CONTINUAR THEN EXIT;


  frmmodulo.qrconfig.open;

  IF NOT CONTINUAR THEN EXIT;

  if ecf_impressao = 1 then
  begin

    try

    //***************************************************************************\\
    //***************************************************************************\\
    //   ENVIA COMANDO PARA O ECF                                                \\


      if ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,rtotal.Value) = 'ERRO' then exit;


      (*---------------------------------------------------------------------*)

      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

      if ecf_modelo = 'SWEDA' then
      begin
        //if ecf_efetua_forma_pgto_especial(ecf_modelo,'',v_dinheiro,'',rconvenio_outros.value,'',rconvenio_vidalink.value) = 'ERRO' then exit;
      end
      else
      begin


        if RDINHEIRO.VALUE > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO' then exit;
          //forma_pgto := FDINHEIRO;
          FORMASP := FCONVENIO;
        end;


        if RCONVENIO.VALUE > 0 then
        begin
          if ecf_efetua_forma_pgto(ecf_modelo,FCONVENIO,RCONVENIO.VALUE) = 'ERRO' then exit;
          //forma_pgto := FCONVENIO;
          FORMASP := FCONVENIO;
        end;


      end;
      (*---------------------------------------------------------------------*)


      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

         if (ecf_modelo = 'SWEDA') or (ecf_modelo = 'URANO')  then
         begin
           if ecf_termina_fechamento_especial(ecf_modelo,frmmodulo.qrcliente.fieldbyname('nome').asstring,
                                                         frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring,
                                                         lcpf.Caption ) = 'ERRO' then exit;
         end
         else
         begin

          //ECF_OK := FALSE;

           //repeat

           {
           if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+trim(frmvenda_farma_vidalink.epaciente.Text),48,' ','D')+#10+
                                                frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')+#10+
                                                frmprincipal.Texto_Justifica('CPF/CNPJ: '+lcpf.Caption,42,' ','D')+#10+
                                                '------------------------------------------------'+#10+
                                                frmprincipal.Texto_Justifica('AUTORIZAÇÃO DATASUS : '+eautorizacao_datasus.Text,42,' ','D')+#10+
                                                '------------------------------------------------'+#10+
                                                '             OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

           }

           {
           ShowMessage('dados do cliente :' + #10 +
                        frmprincipal.Texto_Justifica('CLIENTE.: '+ENOMECLIENTE.Text,48,' ','D')+ #10+
                        frmprincipal.Texto_Justifica('ENDERECO: '+lendereco.Caption,48,' ','D')+#10+
                        frmprincipal.Texto_Justifica('CPF/CNPJ: '+lcpf.Caption,48,' ','D')+#10+
                        frmprincipal.Texto_Justifica('AUTORIZACAO DATASUS : '+eautorizacao_datasus.Text,48,' ','D'));
           }

           //ShowMessage('Impressora : ' + ecf_modelo);
            if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+ENOMECLIENTE.Text,48,' ','D')+#10+
                                                 frmprincipal.Texto_Justifica('ENDERECO: '+lendereco.Caption,48,' ','D')+#10+
                                                 frmprincipal.Texto_Justifica('CPF/CNPJ: '+lcpf.Caption,48,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 frmprincipal.Texto_Justifica('AUTORIZAÇÃO DATASUS : '+eautorizacao_datasus.Text,48,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 '             OBRIGADO!! VOLTE SEMPRE!!          ') = 'ERRO' THEN EXIT;  // else ecf_ok := true;

           //until ecf_ok = true;

         end;

    //***************************************************************************\\

    //ShowMessage(ecf_cupom_vinculado);

              if ecf_cupom_vinculado = '1' then
                begin
                   if application.messagebox('Deseja imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
                   begin
                     if ecf_abre_CNFV(ecf_modelo,FORMASP,'','') = 'ERRO' then exit;
                     // 1ª via
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOMx) = 'ERRO' then exit;

                     if ecf_cupom_vinculado_produtos = '1' then
                       begin

                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                         frmvenda_farma_vidalink.rxprodutos.first;
                         while not frmvenda_farma_vidalink.rxprodutos.eof do
                           begin



                              quantidade := frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde_autorizado').AsFloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').AsFloat;

                              unitario := ( frmvenda_farma_vidalink.rxprodutos.fieldbyname('pmc').AsFloat+
                                          frmvenda_farma_vidalink.rxprodutos.fieldbyname('pc_vista').AsFloat) /
                                          quantidade;

                              total    := unitario*quantidade;

                              if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda_farma_vidalink.rxprodutos.fieldbyname('codigo').asstring,6,'0','E')+' '+
                                    frmPrincipal.texto_justifica(frmvenda_farma_vidalink.rxprodutos.fieldbyname('produto').asstring,19,' ','D')+
                                    frmPrincipal.texto_justifica(formatfloat('######0',quantidade),4,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',unitario),9,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',total),9,' ','E')) = 'ERRO' then exit;
                             frmvenda_farma_vidalink.rxprodutos.Next;
                           end;
                        end;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'CLIENTE / PACIENTE .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdinheiro.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'DATASUS  ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rconvenio.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+trim(frmvenda_farma_vidalink.epaciente.Text)) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+lcpf.Caption+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+EVENDEDOR.Text+'-'+ENOMEVENDEDOR.Text,48,' ','D')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'AUTORIZAÇÃO DATASUS : '+eautorizacao_datasus.Text ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'                 Assinatura                     ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                      // 2ª via
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOMx) = 'ERRO' then exit;

                     if ecf_cupom_vinculado_produtos = '1' then
                       begin

                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                         frmvenda_farma_vidalink.rxprodutos.first;
                         while not frmvenda_farma_vidalink.rxprodutos.eof do
                           begin



                              quantidade := frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde_autorizado').AsFloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').AsFloat;
                              unitario := ( frmvenda_farma_vidalink.rxprodutos.fieldbyname('pmc').AsFloat+
                                          frmvenda_farma_vidalink.rxprodutos.fieldbyname('pc_vista').AsFloat) /
                                          quantidade;
                              total    := unitario*quantidade;

                              if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda_farma_vidalink.rxprodutos.fieldbyname('codigo').asstring,6,'0','E')+' '+
                                    frmPrincipal.texto_justifica(frmvenda_farma_vidalink.rxprodutos.fieldbyname('produto').asstring,19,' ','D')+
                                    frmPrincipal.texto_justifica(formatfloat('######0',quantidade),4,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',unitario),9,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',total),9,' ','E')) = 'ERRO' then exit;
                             frmvenda_farma_vidalink.rxprodutos.Next;
                           end;
                        end;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'CLIENTE / PACIENTE .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdinheiro.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'DATASUS  ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rconvenio.value),9,' ','E')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+trim(frmvenda_farma_vidalink.epaciente.Text)) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+lcpf.Caption+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+EVENDEDOR.Text+'-'+ENOMEVENDEDOR.Text,48,' ','D')) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'AUTORIZAÇÃO DATASUS : '+eautorizacao_datasus.Text ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,'                 Assinatura                     ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                      if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                      // fecha 2qª via
                      if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

                   end;
                end;


    //***************************************************************************\\
    //***************************************************************************\\
    except
      application.messagebox('Houve falha na impressao do cupom! Todo o procedimento será abortado!','Erro!',mb_ok+mb_iconerror);
      frmmodulo.Conexao.Rollback;
      close;
      exit;
    end;

  end;

try

  //  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
  frmmodulo.qrcaixa_mov.OPEN;

  if rdinheiro.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := rdinheiro.value;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rdinheiro.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 3; // venda em dinheiro
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+frmvenda_farma_vidalink.lvenda_codigo.Caption+' - '+ENOMECLIENTE.Text;
    frmmodulo.qrcaixa_mov.post;

  end;

  if rconvenio.Value <> 0 then
  begin

    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rconvenio.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 40; // venda em convenio
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+frmvenda_farma_vidalink.lvenda_codigo.Caption+' - '+ENOMECLIENTE.Text;
    frmmodulo.qrcaixa_mov.post;

  end;

    // lancamento da venda

    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := frmvenda_farma_vidalink.lvenda_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := ECLIENTE.Text;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := EVENDEDOR.Text;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := rtotal.value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := rsubtotal.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := rdinheiro.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_convenio').asfloat := rconvenio.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := rdesconto2.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := racrescimo2.Value;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := observ;

    FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
    frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;

    frmmodulo.qrvenda.post;

    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;

      //frmvenda_farma_vidalink.rxprodutos.Close;
      frmvenda_farma_vidalink.rxprodutos.Open;
      frmvenda_farma_vidalink.rxprodutos.First;

      while not frmvenda_farma_vidalink.rxprodutos.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmvenda_farma_vidalink.lvenda_codigo.Caption; //frmprincipal.codifica('000048');;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmvenda_farma_vidalink.lvenda_codigo.Caption; //frmprincipal.codifica('000048');;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda_farma_vidalink.rxprodutos.fieldbyname('codigo').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('codbarra').asstring := frmvenda_farma_vidalink.rxprodutos.fieldbyname('codbarra').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde').asfloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda_farma_vidalink.rxprodutos.fieldbyname('pv').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma_vidalink.rxprodutos.fieldbyname('pv').asfloat*(frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde').asfloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').asfloat);
        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := 0;
        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := 0;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := frmvenda_farma_vidalink.rxprodutos.fieldbyname('unidade').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT := frmvenda_farma_vidalink.rxprodutos.fieldbyname('aliquota').asFLOAT;
        frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING := frmvenda_farma_vidalink.rxprodutos.fieldbyname('CST').asSTRING ;

        frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(frmvenda_farma_vidalink.rxprodutos.fieldbyname('item').asstring,3);
        frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupomx;
        frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
        if ecf_modelo <> '' then
          begin
              frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.Panels[9].Text;
              frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.Panels[11].Text;
          end;

        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := ECLIENTE.Text;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := EVENDEDOR.Text;

        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2; // VENDA grade
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING; //frmvenda_farma_vidalink.lvenda_data.Caption;
        frmmodulo.qrproduto_mov.FieldByName('movimento_estoque').AsFloat := (frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde').asfloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').asfloat) * (-1);
        frmmodulo.qrproduto_mov.Post;
        frmvenda_farma_vidalink.rxprodutos.next;


      end;

      bgrava_autorizacaoClick(frmvenda_fechamento_datasus);

      frmmodulo.Conexao.Commit;

  except
    application.MessageBox('Esta venda não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!','Erro',mb_ok+MB_ICONERROR);
    ecf_cancela_cupom(ecf_modelo,'V');
    frmmodulo.Conexao.Rollback;

  end;

    frmvenda_farma_vidalink.Close;

    close;
end;

procedure Tfrmvenda_fechamento_datasus.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_datasus.FormClose(Sender: TObject;
  var Action: TCloseAction);

  var
  txt : textfile;

begin

{
  assignfile(txt,Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
  rewrite(txt);

  try
    CloseFile(txt);
  except
  end;

}

  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt') then
    deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt') then
    deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt');

  Sleep(100);
  qrvenda_produto.close;
  qrvenda_produto.sql.clear;
  qrvenda_produto.sql.add('delete from cl00001 where terminal = '''+numero_terminal+'''');
  qrvenda_produto.ExecSQL;
  qrvenda_produto.Close;

  Sleep(100);
  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
  qrvenda_contasreceber.ExecSQL;
  qrvenda_contasreceber.Close;

  action := cafree;

end;

procedure Tfrmvenda_fechamento_datasus.FormShow(Sender: TObject);
begin

  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007');
  frmmodulo.qrcliente.SQL.add('where cpf = '''+ lcpf.Caption + '''');
  frmmodulo.qrcliente.open;

  if frmmodulo.qrcliente.RecordCount > 0 then
    begin
      ecliente.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      enomecliente.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
      lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                           frmmodulo.qrcliente.fieldbyname('bairro').asstring+
                           frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring;
      ltelefone.caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'   '+
                           frmmodulo.qrcliente.fieldbyname('celular').asstring;
//      lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
      ECLIENTE.Enabled := false;
      ENOMECLIENTE.Enabled := false;
      BLOCCLIENTE.Enabled := false;
    end;

  frmmodulo.qrproduto.Close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.SQL.add('select * from c000025');
  frmmodulo.qrproduto.open;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  FRMMODULO.QRFUNCI.INDEXFIELDNAMES := 'NOME';

  lancando_contasreceber := false;

  qrvenda_produto.close;

  qrvenda_produto.sql.clear;
  qrvenda_produto.sql.add('delete from cl00001');
  qrvenda_produto.ExecSQL;

  qrvenda_produto.sql.clear;
  qrvenda_produto.SQL.add('select * from cl00001');
  qrvenda_produto.open;

  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('delete from cl00002');
  qrvenda_contasreceber.ExecSQL;

  rsubtotal.value := frmvenda_farma_vidalink.edinheiro.Value+frmvenda_farma_vidalink.econvenio.Value;
  rtotal.value := rsubtotal.Value;
  rdinheiro.Value := frmvenda_farma_vidalink.edinheiro.Value;
  rconvenio.Value := frmvenda_farma_vidalink.econvenio.Value;

  rsoma.Value := rdinheiro.value +
                 rconvenio.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;

  eautorizacao_datasus.Text := frmvenda_farma_vidalink.eautorizacao_datasus.Text;

  EVENDEDOR.SetFocus;

end;

procedure Tfrmvenda_fechamento_datasus.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_datasus.rconvenioEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_datasus.rconvenivEnter(Sender: TObject);
begin
  //tedit(sender).color := $00A0FAF8;
  //echequeap.Brush.Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_datasus.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_datasus.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_datasus.rconvenioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rconvenio.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento_datasus.BitBtn1Click(Sender: TObject);
begin
  frmvenda_obs := tfrmvenda_obs.create(self);
  frmvenda_obs.edit1.text := observ;
  frmvenda_obs.showmodal;
end;

procedure Tfrmvenda_fechamento_datasus.bimp_produtosClick(
  Sender: TObject);
var
  aliquota : string;
  unidade : string;
  unitario, quantidade , total : double;
begin

  if ecf_impressao = 1 then
    begin

      frmvenda_farma_vidalink.rxprodutos.Open;
      frmvenda_farma_vidalink.rxprodutos.First;
      while not frmvenda_farma_vidalink.rxprodutos.Eof do begin
        if frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde_autorizado').AsFloat > 0 then
          begin
            IF (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '060') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '010') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
            IF (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '040') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
            IF (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '041') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '050') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '051') OR (frmvenda_farma_vidalink.rxprodutos.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
            BEGIN
            IF frmvenda_farma_vidalink.rxprodutos.fieldbyname('aliquota').asfloat > 0 THEN
              aliquota := formatfloat('00.00',frmvenda_farma_vidalink.rxprodutos.fieldbyname('aliquota').asfloat)
            ELSE
              aliquota := formatfloat('00.00',17);
          end;

        unidade := frmvenda_farma_vidalink.rxprodutos.fieldbyname('unidade').asstring;

//        if unidade = '' then unidade := 'UN';

//        showmessage(' retorno '+floattostr(frmvenda_farma_vidalink.rxprodutos.fieldbyname('pv').AsFloat)+ ' retorno '+floattostr(frmvenda_farma_vidalink.rxprodutos.fieldbyname('pmc').AsFloat+frmvenda_farma_vidalink.rxprodutos.fieldbyname('pmc').AsFloat));

        //unitario := frmvenda_farma_vidalink.rxprodutos.fieldbyname('pv').AsFloat;

        quantidade := frmvenda_farma_vidalink.rxprodutos.fieldbyname('qtde_autorizado').AsFloat/frmvenda_farma_vidalink.rxprodutos.fieldbyname('apresentacao').AsFloat;
        unitario := ( frmvenda_farma_vidalink.rxprodutos.fieldbyname('pmc').AsFloat+
                      frmvenda_farma_vidalink.rxprodutos.fieldbyname('pc_vista').AsFloat) /
                      quantidade;

        total    := unitario*quantidade;

        if ecf_vende_item_completo(ecf_modelo,frmvenda_farma_vidalink.rxprodutos.fieldbyname('codigo').asstring,
                                  frmprincipal.texto_justifica(frmPrincipal.RemoveAcentos(frmvenda_farma_vidalink.rxprodutos.fieldbyname('produto').asstring),29,' ','D'),
                                  aliquota,
                                  unitario,
                                  quantidade,
                                  frmvenda_farma_vidalink.rxprodutos.fieldbyname('desconto').AsFloat,
                                  0,
                                  unidade,
                                  total) = 'ERRO' THEN



          BEGIN
            application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
            bcancelacupomClick(frmvenda_fechamento_datasus);
            exit;
          END;

        frmmodulo.qrproduto.edit;
        frmmodulo.qrproduto.FieldByName('estoque').asfloat := frmmodulo.qrproduto.FieldByName('estoque').asfloat-quantidade;
        frmmodulo.qrproduto.fieldbyname('DATA_ULTIMAVENDA').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrproduto.Post;
      end;
      frmvenda_farma_vidalink.rxprodutos.Next;
    end;
  end;

end;

procedure Tfrmvenda_fechamento_datasus.EVENDEDOREnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmvenda_fechamento_datasus.EVENDEDORExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  evendedor.text := frmprincipal.zerarcodigo(evendedor.text,6);
  if evendedor.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrfunci,evendedor.text,'codigo') then
        blocvendedorclick(frmvenda_fechamento_datasus)
     else
     begin
        evendedor.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        enomevendedor.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
        ecliente.setfocus;
     end;
  end
  else
  begin
    blocvendedor.setfocus;
  end;

end;

procedure Tfrmvenda_fechamento_datasus.EVENDEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmvenda_fechamento_datasus.BLOCVENDEDORClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  evendedor.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  enomevendedor.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
  ecliente.setfocus;

end;

procedure Tfrmvenda_fechamento_datasus.BLOCCLIENTEClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
    frmmodulo.qrcliente.open;
    ecliente.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    enomecliente.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+
                         frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring;
                       frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    ltelefone.caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'   '+
                       frmmodulo.qrcliente.fieldbyname('celular').asstring;
//    lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;


    bimpcupom.SetFocus;
  end
  else
  begin
    ecliente.setfocus;
  end;
end;

procedure Tfrmvenda_fechamento_datasus.ECLIENTEEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmvenda_fechamento_datasus.ECLIENTEExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text <> '000000' then
  begin
     frmmodulo.qrcliente.close;
     frmmodulo.qrcliente.sql.clear;
     frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+'''');
     frmmodulo.qrcliente.open;
     if frmmodulo.qrcliente.RecordCount = 0 then
     begin
        application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        blocclienteclick(frmvenda_fechamento_datasus);
     end
     else
     begin
       ecliente.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
       enomecliente.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
       lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                            frmmodulo.qrcliente.fieldbyname('bairro').asstring+
                            frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring;
       ltelefone.caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'   '+
                            frmmodulo.qrcliente.fieldbyname('celular').asstring;
//       lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
       bimpcupom.setfocus;
     end;
  end
  else
  begin
    bloccliente.setfocus;
  end;

end;

procedure Tfrmvenda_fechamento_datasus.ECLIENTEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento_datasus.bimpcupomClick(Sender: TObject);
begin

  frmvenda_farma_vidalink.Timer_datasus.Enabled := false;

  {
  IF ECF_MODELO <> '' then
    begin
      if ecf_ligada(ecf_modelo) <> 'OK' then else if ecf_reducao_pendente(ecf_modelo) <> 'OK' then exit;
    end;
  }
  if ecliente.text = '' then
  begin
    application.messagebox('Favor informar o cliente!','Atenção!',mb_ok+MB_ICONWARNING);
    ecliente.setfocus;
    exit;
  end;

  CLOSE;

  //FRMVENDA := Tfrmvenda_farma_vidalink.CREATE(SELF);
  frmvenda_farma_vidalink.lvenda_codigo.Caption := frmprincipal.codifica('000048');
  //frmvenda_farma_vidalink.lvenda_data.Caption :=   frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
  //frmvenda_farma_vidalink.lcliente_codigo.Caption := ecliente.Text;
  //frmvenda_farma_vidalink.lcliente_nome.caption := enomecliente.Text;
  //frmvenda_farma_vidalink.lcliente_cpf.caption := lcpf.Caption; //frmmodulo.qrcliente.fieldbyname('cpf').asstring;

  movimento_venda := 1; // inclusao

  numero_cupomx := '';
  if ecf_impressao = 1 then
    begin
      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
        numero_cupomx := ecf_numero_cupom(ecf_modelo);
    end;

  ecupom.Text    :=  numero_cupomx;
  eecf.Text      :=  frmmodulo.qrconfigECF_CAIXA.AsString;

  retorno_datasus := false;
  
  while retorno_datasus = false do begin
    benvia_autorizacao_datasusClick(frmvenda_fechamento_datasus);
    if retorno_datasus = true then
      Break;
    Application.ProcessMessages;
  end;

  {
  if confirma_retorno = false then
    begin
      bcancelarClick(frmvenda_fechamento_datasus);
      exit;
    end;
  }

  bimp_produtosClick(frmvenda_fechamento_datasus);

  bgravarClick(frmvenda_fechamento_datasus);

  //bgrava_autorizacaoClick(frmvenda_fechamento_datasus);

  frmvenda_farma_vidalink.Timer_datasus.Enabled := true;

end;

procedure Tfrmvenda_fechamento_datasus.bretornaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_datasus.FormCreate(Sender: TObject);
begin
        qrvenda_produtoQTDE.DisplayFormat := mascara_qtde;
        //rqtde.DisplayFormat := mascara_qtde;
        //rqtde.DecimalPlaces := decimal_qtde;


        qrvenda_produtoUNITARIO.DisplayFormat := mascara_valor;

end;

procedure Tfrmvenda_fechamento_datasus.bcancelacupomClick(
  Sender: TObject);
var texto : pansichar;
i : integer;
begin
     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'CANCELARCUPOM';
       FRMMODULO.QRECF_COMANDO.POST;
       FRMMODULO.CONEXAO.COMMIT;
       frmmodulo.conexao_ecfserver.Commit;
     END
     ELSE
     BEGIN
       if frmprincipal.autentica('Cancel.Cupom',4) then
       begin
        TRY
         i := strtoint(ecf_numero_cupom(ecf_modelo));
         IF (ecf_modelo = 'URANO') then
          //
         else
          i := i - 1;

         texto := pansichar(frmprincipal.zerarcodigo(inttostr(i-1),6));
         texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');

         //texto := pansichar(frmprincipal.zerarcodigo(inttostr(i),6));
         //texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');

         EXCEPT
          TEXTO := 'Confirma o Cancelamento do Cupom?';
         END;
         if application.messagebox(texto,'Cancelamento de Cupom',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
         begin
            ecf_cancela_cupom(ecf_modelo,'');
         end;
       end
       else
       begin
         Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
       end;
  END;

end;

procedure Tfrmvenda_fechamento_datasus.bgrava_autorizacaoClick(
  Sender: TObject);
begin

  frmvenda_farma_vidalink.eautorizacao.Text := eautorizacao_datasus.Text;

  frmmodulo.qrautorizacao.open;

  frmvenda_farma_vidalink.rxprodutos.Open;
  frmvenda_farma_vidalink.rxprodutos.First;
  while not frmvenda_farma_vidalink.rxprodutos.Eof do
    begin

      frmmodulo.qrautorizacao.Insert;
      frmmodulo.qrautorizacaoCODCONVENIO.AsInteger := 1;
      frmmodulo.qrautorizacaoPRE_AUTORIZACAO.AsString := '';
      frmmodulo.qrautorizacaoAUTORIZACAO.AsString := eautorizacao_datasus.Text;
      frmmodulo.qrautorizacaoCNPJ.AsString := frmprincipal.somenteNumero(frmPrincipal.vfil_cnpj);
      frmmodulo.qrautorizacaoDATA.AsDateTime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsDateTime;
      frmmodulo.qrautorizacaoCONVENIO.AsString := 'DATASUS';
      frmmodulo.qrautorizacaoECF.AsString := eecf.Text;
      frmmodulo.qrautorizacaoCUPOM.AsString := ecupom.Text;
      frmmodulo.qrautorizacaoCODBARRA.AsString := frmvenda_farma_vidalink.rxprodutoscodbarra.AsString;
      frmmodulo.qrautorizacaoQTDE.AsFloat := frmvenda_farma_vidalink.rxprodutosqtde.AsFloat/frmvenda_farma_vidalink.rxprodutosapresentacao.AsFloat;
      frmmodulo.qrautorizacaoQTDE_AUTORIZADO.AsFloat := frmvenda_farma_vidalink.rxprodutosqtde_autorizado.AsFloat;
      frmmodulo.qrautorizacaoPMC.AsFloat := 0;
      frmmodulo.qrautorizacaoPV.AsFloat := frmvenda_farma_vidalink.rxprodutospv.AsFloat;
      frmmodulo.qrautorizacaoPC_VISTA.AsFloat := frmvenda_farma_vidalink.rxprodutospmc.AsFloat;
      frmmodulo.qrautorizacaoPC_RECEBER.AsFloat := frmvenda_farma_vidalink.rxprodutospc_receber.AsFloat;
      frmmodulo.qrautorizacaoSUBSIDIO.AsFloat := frmvenda_farma_vidalink.rxprodutossubsidio.AsFloat;
      frmmodulo.qrautorizacaoREEMBOLSO.AsFloat := frmvenda_farma_vidalink.rxprodutospc_vista.AsFloat;
      frmmodulo.qrautorizacaoDESCONTO.AsFloat := frmvenda_farma_vidalink.rxprodutosdesconto.AsFloat;
      frmmodulo.qrautorizacaoCOMISSAO.AsFloat := frmvenda_farma_vidalink.rxprodutoscomissao.AsFloat;
      frmmodulo.qrautorizacaoCODCLIENTE.AsString := ECLIENTE.Text;
      frmmodulo.qrautorizacaoNOMECLIENTE.AsString := ENOMECLIENTE.Text;
      frmmodulo.qrautorizacaoCPF.AsString := frmprincipal.somenteNumero(frmvenda_farma_vidalink.ecpf.Text);
      frmmodulo.qrautorizacaoCONVENIADO.AsString := frmvenda_farma_vidalink.epaciente.Text;
      frmmodulo.qrautorizacaoCRM_MEDICO.AsString := frmvenda_farma_vidalink.ecrm.Text;
      frmmodulo.qrautorizacaoUF_MEDICO.AsString := frmvenda_farma_vidalink.euf.Text;
      frmmodulo.qrautorizacaoSOLICITACAO.AsInteger := strtoint(frmvenda_farma_vidalink.esolicitacao.Text);
      frmmodulo.qrautorizacaoOBS.AsString := eretorno_datasus.Text;
      frmmodulo.qrautorizacao.Post;
      frmvenda_farma_vidalink.rxprodutos.Next;
  end;
end;

procedure Tfrmvenda_fechamento_datasus.benvia_autorizacao_datasusClick(
  Sender: TObject);
var
  txt : textfile;
  login,senha : string;
  solicitacao,autorizacao,cupom : string;
  x : integer;

begin


  if ( fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT') ) or
     ( fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT') ) then
    begin
      frmvenda_farma_vidalink.Timer_datasus.Enabled := true;
      sleep(1000);
    end;

  vopcao := 3;

  frmvenda_farma_vidalink.Timer_datasus.Enabled := false;

  login := trim(frmmodulo.qrconfigFARMACIA_LOGIN.AsString);
  senha := trim(Frmprincipal.Cript('D',frmmodulo.qrconfig.fieldbyname('FARMACIA_SENHA').asstring));

  // Registro Tipo 05 - Confirmação da Autorização
  solicitacao := frmPrincipal.zerarcodigo(frmvenda_farma_vidalink.esolicitacao.Text,6); // Codigo da Solicitação Gerada pelo Estabelecimento (6)

  autorizacao := eautorizacao_datasus.Text; // Código da Pré-Autorização gerado pelo DATASUS (19)
  cupom       := ecupom.Text; // Número do Cupom Fiscal (6)

  Memo1.Text := '';
  Memo1.Lines.Add('01'+login);
  Memo1.Lines.Add('02'+senha);
  Memo1.Lines.Add('05'+solicitacao+autorizacao+cupom);

  Memo1.Lines.SaveToFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT');

  frmPrincipal.vcontador := 0;

  frmmensagem := tfrmmensagem.create(self);
  frmmensagem.show;

  Application.ProcessMessages;

  while true do begin

    frmPrincipal.vcontador   := frmPrincipal.vcontador + 1;
    frmmensagem.VrNum1.Value := frmPrincipal.vcontador;

    If (fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT')) then
      begin

        frmmensagem.Destroy;

        Memo1.Text := '';
        Memo1.Lines.LoadFromFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT');
        Memo1.Lines[0];

        for x:= 0 to memo1.lines.count-1 do
          begin
            if copy(Memo1.Lines[x],1,2) = '03' then
              begin
                if ( copy(Memo1.Lines[x],3,5) = 'OOR' ) or ( copy(Memo1.Lines[x],3,5) = 'O1R' )then
                  begin
                    application.messagebox(pchar(trim(eretorno_datasus.Text)+'!'),'Atenção!',mb_ok+mb_iconwarning);
                    confirma_retorno := true;
                  end
                else
                  begin
                    eretorno_datasus.Text := copy(Memo1.Lines[x],6,200);
                    eautorizacao_datasus.Text := copy(Memo1.Lines[x],306,19);
                    application.messagebox(pchar(trim(eretorno_datasus.Text)+'!'),'Atenção!',mb_ok+mb_iconwarning);
                    confirma_retorno := false;
                  end;

                //frmvenda_farma_vidalink.mLog.Text := '';
                frmvenda_farma_vidalink.mLog.Lines.Add(pchar(trim(eretorno_datasus.Text)));

              end
          end;
        Application.ProcessMessages;
        retorno_datasus := true;
        exit;
      end;

      if frmPrincipal.vcontador > 120000 then
        begin
          application.messagebox('Tempo de Acesso Esgotado, verifique!!','Atenção!',mb_ok+mb_iconwarning);
          frmmensagem.Destroy;
          frmvenda_farma_vidalink.Timer_datasus.Enabled := true;
          exit;
        end;
  end;
end;

end.

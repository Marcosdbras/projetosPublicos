unit venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, jpeg, ExtCtrls, Mask, RzEdit, AdvOfficeImage,
  AdvSmoothButton, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvReflectionLabel, DB, MemDS,
  DBAccess, IBC, TFlatPanelUnit, Menus, Buttons, RzPanel, AdvGlowButton,
  RzCmboBx, AdvCombo, TFlatComboBoxUnit, ACBrBase, ACBrBAL, ACBrDIS,
  AdvMenus,principal, FileCtrl, FlCtrlEx, CPortCtl, CPort, clipbrd, IniFiles,
  CPortTypes;

type
  // tipo de imagens do dislplay
  Tipo_Imagem = (tiNenhum, tiLivre, tiErro, tiOk, tiAlerta,
                 tiInfo, tiFechado, tiExcluir, tiPergunta,
                 tiPgto, tiCliente, tiPeso);

type
  // tipo de transacao tef
  TTef_Tipo = (Tef_Venda_Cartao,Tef_Venda_Cheque);

type
  TfrmVenda = class(TForm)
    query: TIBCQuery;
    pn_principal: TFlatPanel;
    Image1: TImage;
    lb_produto: TRzLabel;
    lb_total: TRzLabel;
    RzLabel1: TRzLabel;
    LB_MENU_FISCAL: TRzLabel;
    AdvReflectionLabel1: TAdvReflectionLabel;
    RzLabel3: TRzLabel;
    lb_operador: TRzLabel;
    RzLabel5: TRzLabel;
    lb_ecf_caixa: TRzLabel;
    lb_numero_serie: TRzLabel;
    img_erro: TAdvOfficeImage;
    img_alerta: TAdvOfficeImage;
    img_ok: TAdvOfficeImage;
    img_info: TAdvOfficeImage;
    img_fechado: TAdvOfficeImage;
    img_excluir: TAdvOfficeImage;
    img_pergunta: TAdvOfficeImage;
    img_livre: TAdvOfficeImage;
    lb_item: TRzLabel;
    ed_qtde: TRzNumericEdit;
    ed_unitario: TRzNumericEdit;
    ed_total_item: TRzNumericEdit;
    ed_barra: TRzEdit;
    Panel1: TPanel;
    Button1: TButton;
    grid_topo: TNextGrid;
    NxHtmlColumn2: TNxHtmlColumn;
    NxNumberColumn9: TNxNumberColumn;
    NxNumberColumn10: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn11: TNxNumberColumn;
    NxNumberColumn12: TNxNumberColumn;
    NxNumberColumn13: TNxNumberColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxTextColumn4: TNxTextColumn;
    grid: TNextGrid;
    NxHtmlColumn1: TNxHtmlColumn;
    NxNumberColumn8: TNxNumberColumn;
    NxNumberColumn17: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    img_pgto: TAdvOfficeImage;
    img_cliente: TAdvOfficeImage;
    pn_fechamento: TFlatPanel;
    PS_DESC_ACRE: TShape;
    AdvOfficeImage4: TAdvOfficeImage;
    sp_total_pagar: TShape;
    AdvOfficeImage5: TAdvOfficeImage;
    sp_forma1: TShape;
    AdvOfficeImage6: TAdvOfficeImage;
    RzLabel2: TRzLabel;
    sp_forma2: TShape;
    sp_forma3: TShape;
    img_forma2: TAdvOfficeImage;
    img_forma3: TAdvOfficeImage;
    RzLabel48: TRzLabel;
    sp_totalizador: TShape;
    RzLabel49: TRzLabel;
    AdvOfficeImage9: TAdvOfficeImage;
    sp_troco: TShape;
    RzLabel50: TRzLabel;
    AdvOfficeImage10: TAdvOfficeImage;
    ED_DESC_ACRE: TRzNumericEdit;
    ed_total_pagar: TRzNumericEdit;
    ed_forma1: TRzNumericEdit;
    cb_forma1: TFlatComboBox;
    cb_desc_acre: TFlatComboBox;
    ed_forma2: TRzNumericEdit;
    cb_forma2: TFlatComboBox;
    ed_forma3: TRzNumericEdit;
    cb_forma3: TFlatComboBox;
    ed_totalizador: TRzNumericEdit;
    ed_troco: TRzNumericEdit;
    FlatPanel2: TFlatPanel;
    bt_confirmar_fechamento: TAdvGlowButton;
    bt_cancelar_fechamento: TAdvGlowButton;
    img_fechamento: TAdvOfficeImage;
    img_peso: TAdvOfficeImage;
    timer_balanca: TTimer;
    pop_principal: TAdvPopupMenu;
    Opes1: TMenuItem;
    PesquisadeProdutos1: TMenuItem;
    FecharCupom1: TMenuItem;
    CancelarCupom1: TMenuItem;
    CancelarItem1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    ConsultadeClientes1: TMenuItem;
    MenuFiscal2: TMenuItem;
    AcionaGaveta1: TMenuItem;
    AcionaBalana1: TMenuItem;
    EFModoAdministrativo1: TMenuItem;
    EFCancelamento1: TMenuItem;
    rocarOperador1: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    FecharCaixa1: TMenuItem;
    CaixaIndisponvel1: TMenuItem;
    Cupons1: TMenuItem;
    N2: TMenuItem;
    Retornar1: TMenuItem;
    Sair1: TMenuItem;
    pop_fechamento: TAdvPopupMenu;
    DescontoouAcrscimo1: TMenuItem;
    Cancelar1: TMenuItem;
    img_fundo: TAdvOfficeImage;
    img_borda: TAdvOfficeImage;
    img_produto: TImage;
    img_shape: TShape;
    ED_FOCUS: TEdit;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn18: TNxNumberColumn;
    pn_tampa: TFlatPanel;
    menu_Prevenda: TMenuItem;
    Dados1: TMenuItem;
    AtualizarPDV1: TMenuItem;
    N1: TMenuItem;
    AtualizarServidor1: TMenuItem;
    fl: TFileListBoxEx;
    qrForma: TIBCQuery;
    query2: TIBCQuery;
    query3: TIBCQuery;
    Oramento1: TMenuItem;
    lb_carga: TRzLabel;
    N3: TMenuItem;
    Assinararquivo1: TMenuItem;
    Atendimento1: TMenuItem;
    Recebimento1: TMenuItem;
    Caixa1: TMenuItem;
    EF1: TMenuItem;
    Menu_os: TMenuItem;
    PN_POSTO: TFlatPanel;
    Edit1: TEdit;
    Shape1: TShape;
    grid_abastecimento: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn21: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
    grid_bico: TNextGrid;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn19: TNxNumberColumn;
    RzLabel4: TRzLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qrAbastecimento: TIBCQuery;
    timer_bico: TTimer;
    timer_abastecimento: TTimer;
    sh_status_conexao: TShape;
    lb_status_conexao: TLabel;
    Image4: TImage;
    pn_cancelar_item: TFlatPanel;
    lb_cancelar_item: TRzLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    ed_cancelar_item: TRzNumericEdit;
    pn_cancelar_item_botoes: TFlatPanel;
    bt_cancelar_item_sim: TAdvGlowButton;
    bt_cancelar_item_nao: TAdvGlowButton;
    pn_senha_cancelar: TFlatPanel;
    lb_cancelar: TRzLabel;
    AdvOfficeImage3: TAdvOfficeImage;
    ed_senha: TRzEdit;
    Shape2: TShape;
    Shape3: TShape;
    menu_mesa: TMenuItem;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    ComPort1: TComPort;
    timer_resposta: TTimer;
    NxNumberColumn26: TNxNumberColumn;
    Abastecimento1: TMenuItem;
    Button2: TButton;
    Fabricao1: TMenuItem;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    Voltar1: TMenuItem;
    ed_foco: TEdit;
    NxNumberColumn1: TNxTextColumn;
    timer_carga: TTimer;
    nxTamanho: TNxTextColumn;
    nxCor: TNxTextColumn;
    impressoraSerial: TComPort;

    function TEF_Cartao(bandeira:Tbandeira_tef):boolean;
    function TEF_Cheque(bandeira:Tbandeira_tef):boolean;


    procedure Cancela_cupom_aberto();
    procedure Cancela_cupom_fechado();
    procedure Cancela_Item(sItem:string);
    procedure Registra_Item();
    procedure Limpa_controles();
    procedure Imprime_display(texto:string;cor_da_fonte:tcolor;Imagem:Tipo_Imagem);
    procedure Imprime_display_anterior;
    function Abre_Venda():boolean;
    function Truncar_Valor(valor:real):real;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarItem1Click(Sender: TObject);
    procedure ed_cancelar_itemEnter(Sender: TObject);
    procedure ed_cancelar_itemExit(Sender: TObject);
    procedure ed_cancelar_itemKeyPress(Sender: TObject; var Key: Char);
    procedure bt_cancelar_item_naoClick(Sender: TObject);
    procedure ed_barraEnter(Sender: TObject);
    procedure bt_cancelar_item_simClick(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure ed_barraExit(Sender: TObject);
    procedure ED_DESC_ACREEnter(Sender: TObject);
    procedure ED_DESC_ACREExit(Sender: TObject);
    procedure FecharCupom1Click(Sender: TObject);
    procedure ed_total_pagarEnter(Sender: TObject);
    procedure ed_forma1Enter(Sender: TObject);
    procedure ed_forma2Enter(Sender: TObject);
    procedure ed_forma3Enter(Sender: TObject);
    procedure ed_totalizadorEnter(Sender: TObject);
    procedure ed_trocoEnter(Sender: TObject);
    procedure ed_total_pagarExit(Sender: TObject);
    procedure ed_forma1Exit(Sender: TObject);
    procedure ed_forma2Exit(Sender: TObject);
    procedure ed_forma3Exit(Sender: TObject);
    procedure ed_totalizadorExit(Sender: TObject);
    procedure ed_trocoExit(Sender: TObject);
    procedure cb_desc_acreChange(Sender: TObject);
    procedure DescontoouAcrscimo1Click(Sender: TObject);
    procedure ED_DESC_ACREKeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma1KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma2KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma3KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma2Exit(Sender: TObject);
    procedure cb_forma3Exit(Sender: TObject);
    procedure ed_forma3KeyPress(Sender: TObject; var Key: Char);
    procedure bt_confirmar_fechamentoEnter(Sender: TObject);
    procedure bt_cancelar_fechamentoEnter(Sender: TObject);
    procedure bt_confirmar_fechamentoClick(Sender: TObject);
    procedure ed_trocoChange(Sender: TObject);
    procedure ed_total_itemKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure ed_unitarioEnter(Sender: TObject);
    procedure ed_total_itemEnter(Sender: TObject);
    procedure ed_senhaEnter(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure timer_balancaTimer(Sender: TObject);
    procedure AcionaBalana1Click(Sender: TObject);
    procedure cb_forma1Enter(Sender: TObject);
    procedure cb_forma1Change(Sender: TObject);
    procedure cb_forma2Enter(Sender: TObject);
    procedure cb_forma2Change(Sender: TObject);
    procedure cb_forma3Change(Sender: TObject);
    procedure cb_forma3Enter(Sender: TObject);
    procedure ed_forma1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_forma2KeyPress(Sender: TObject; var Key: Char);
    procedure ConsultadeClientes1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure Opes1Click(Sender: TObject);
    procedure PesquisadeProdutos1Click(Sender: TObject);
    procedure Cupons1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bt_cancelar_fechamentoClick(Sender: TObject);
    procedure AcionaGaveta1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure EFCancelamento1Click(Sender: TObject);
    procedure EFModoAdministrativo1Click(Sender: TObject);
    procedure rocarOperador1Click(Sender: TObject);
    procedure CaixaIndisponvel1Click(Sender: TObject);
    procedure menu_PrevendaClick(Sender: TObject);
    procedure MeiosdePagamento1Click(Sender: TObject);
    procedure AtualizarPDV1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Assinararquivo1Click(Sender: TObject);
    procedure Recebimento1Click(Sender: TObject);
    procedure Menu_osClick(Sender: TObject);
    procedure timer_bicoTimer(Sender: TObject);
    procedure timer_abastecimentoTimer(Sender: TObject);
    procedure grid_abastecimentoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_abastecimentoEnter(Sender: TObject);
    procedure menu_mesaClick(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure timer_respostaTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Abastecimento1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Fabricao1Click(Sender: TObject);
    procedure Voltar1Click(Sender: TObject);
    procedure timer_cargaTimer(Sender: TObject);
    procedure ed_unitarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     bConsumidor:boolean;

  public
    { Public declarations }
    iavanca, colunas:integer;
    inicodbal, pedirnumcom, numcomanda:string;

    procedure EnviaComando(comando:string;timeout:integer);
    function Localizar_Produto(referencia:string):boolean;
    function TEF_Pagamento(Tef_tipo:TTef_Tipo):boolean;
  end;

Const
  SEPARADOR = '------------------------------------------------' + #10;

var
  frmVenda: TfrmVenda;

  vardir:string;
  arqini:TInifile;
  rapuracao:real;



  // resolução da tela
 OldWidth : Integer;
 OldHeight : Integer;

    a , b: word;

  //totalizador média de tributo
  fsb_valorliquidoitem, fsb_valorliquidocupom:Currency;
  sb_valorliquidoitem,sb_valorliquidocupom:string;




  // totalizadoras
  rTotal_Venda : real;
  rTotal_Desconto : real;
  rTotal_Acrescimo : real;
  iTotal_Itens : integer;
  iItem : Integer;
  // STATUS das funcoes
  bVenda : boolean; // venda aberta
  bTotalizado : boolean; // cupom totalizado
  bPago1, bPago2, bPago3 : boolean; // lancado cada forma de pagamento
  bFinalizado : boolean; // Cupom Finalizado (Totalizado);
  // Outras
  bidentcpfcnpj:boolean;


  baltera_tipo_desconto:boolean; // permitir/bloquear a tecla F3 no desconto
  blimpa_edit_display : boolean;

  // Armazenar dados anteriores do display
  sTexto_anterior : string;
  clCor_anterior : Tcolor;
  TiImagem_anterior : Tipo_Imagem;


  // flag de finalizacao do tef
  bTef_finaliza : boolean;
  // totalizadores das formas que exigem tratamento especial
  rValor_Total_Cartao, rvalor_total_cheque, rvalor_total_crediario : real;

  // variaveis do posto
  sPosto_Resposta, sPosto_Comando, str : string;
  iQtde_bico : integer;
  bPosto_ok : boolean;

  // focar no campo anterior
  bVolta_foco : boolean;

  // GUIO: Dados do Vendedor
  iVendedorCodigo: Integer;
  sVendedorNome: String;

implementation

uses modulo, Math, funcoes, cliente_consulta, preco_consulta,
  produto_consulta, protetor_tela, consumidor, venda_crediario, unECF,
  Leitura_Memoria_Fiscal, Download_MFD, Arquivo_Fiscal,
  Identifica, Tef_bandeira, unTEF, caixa_fechamento, sangria, suprimento,
  TEF_Cancelamento, senha, menu_cupom, Lista_DAV, pre_venda, msg_Operador,
  Meios_pagamento, Orcamento_Abrir, menu_fiscal,
  os, caixa_abertura, mesas, fabricacao, senha_supervisor, ComObj,
  Constantes, Vendedor, ContasReceberNovo, funcoes_ibpt, comanda;

{$R *.dfm}


// -------------------------------------------------------------------------- //
function TrocaResolucao(X, Y, a , b: word): Boolean;
var lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then
  begin
    lpDevMode.dmFields := DM_PELSWIDTH Or DM_PELSHEIGHT;
    a:= lpDevMode.dmPelsWidth;  // pega a resolução atual (horizontal)
    b:= lpDevMode.dmPelsHeight; // pega a resolução atual  (vertical)
    lpDevMode.dmPelsWidth := x;  // altera a resolução para a que voce voce desejou
    lpDevMode.dmPelsHeight:= y;  // altera a resolução para a que voce voce desejou
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;


function VoltaResolucao(a , b: word): Boolean;
var lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then
  begin
    lpDevMode.dmFields := DM_PELSWIDTH Or DM_PELSHEIGHT;
    lpDevMode.dmPelsWidth := a;  // ao fechar o programa recupera a resolução que vinha sendo usada
    lpDevMode.dmPelsHeight:= b;  // ao fechar o programa recupera a resolução que vinha sendo usada
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

procedure Tfrmvenda.EnviaComando(comando:string;timeout:integer);
begin
  sPosto_comando := comando;
  comport1.WriteStr(comando);
  timer_resposta.Interval:=Timeout;
  timer_resposta.Enabled:=true;
end;

(*
procedure TfrmVenda.Atualizar_servidor();
var atualiza_serv : boolean;
i, iprest : integer;
bachou : boolean;
scod_venda, scod_cupom : string;
begin
  // transmitir os dados para o servidor
  if bVenda then
  begin
    Imprime_display('CUPOM ABERTO!',clYellow,tiAlerta);
    sleep(1500);
    Imprime_display('INFORME O PRODUTO...',clWhite,tiLivre);
    ed_barra.SetFocus;
    exit;
  end;


          atualiza_serv := false;

          try
            if frmmodulo.Conexao_servidor.Connected = false then
            begin
              if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimissão de Dados',mb_yesno+mb_iconerror) = idyes then
              begin
                frmmodulo.Conexao_servidor.Connected := true;
                if frmmodulo.Conexao_servidor.Connected  THEN ATUALIZA_SERV := true;
              end;
            end
            else
              atualiza_serv := true;





            if atualiza_serv then
            begin
              // atualizando as vendas
              query.close;
              query.sql.clear;
              query.sql.add('select * from cupom where ex = 0');
              query.open;
              query.first;
              while not query.eof do
              begin

                scod_cupom := query.fieldbyname('codigo').asstring;
                scod_venda := frmprincipal.codifica('000048',7);

                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000048');
                frmmodulo.query_servidor.sql.add('(codigo,data,codcliente,codvendedor,');
                frmmodulo.query_servidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                frmmodulo.query_servidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
                frmmodulo.query_servidor.SQL.add('meio_cartaodeb,meio_crediario,meio_convenio, desconto,acrescimo,');
                frmmodulo.query_servidor.sql.add('cupom_fiscal,numero_cupom_fiscal, ECF_SERIAL, situacao)');
                frmmodulo.query_servidor.sql.add('values');
                frmmodulo.query_servidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
                frmmodulo.query_servidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                frmmodulo.query_servidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                frmmodulo.query_servidor.SQL.add(':CARTAODEB,:CREDIARIO,:CONVENIO,:DESCONTO,:ACRESCIMO,');
                frmmodulo.query_servidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal, :ECF_SERIAL, :situacao)');

                frmmodulo.query_servidor.Params.ParamByName('codigo').asstring    := scod_venda;
                frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring:= Zerar(query.fieldbyname('cod_cliente').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('codCAIXA').asstring  := zerar(query.fieldbyname('cod_caixa').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('numero_cupom_fiscal').asstring := query.fieldbyname('numero').asstring;
                frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring         := zerar(query.fieldbyname('cod_vendedor').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('cupom_fiscal').asINTEGER       := 1;
                frmmodulo.query_servidor.params.parambyname('ecf_serial').asstring := sECF_Serial;

                frmmodulo.query_servidor.Params.ParamByName('datax').asdatetime   := query.fieldbyname('data').asdatetime;
                frmmodulo.query_servidor.Params.ParamByName('TOTAL').asFLOAT      := query.fieldbyname('valor_total').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('SUBTOTAL').asFLOAT   := query.fieldbyname('valor_produto').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asFLOAT   := query.fieldbyname('valor_desconto').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('ACRESCIMO').asFLOAT  := query.fieldbyname('valor_acrescimo').asfloat;

                frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CHEQUEAV').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CHEQUEAP').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CARTAODEB').asFLOAT  := 0;
                frmmodulo.query_servidor.Params.ParamByName('CARTAOCRED').asFLOAT := 0;
                frmmodulo.query_servidor.Params.ParamByName('CREDIARIO').asFLOAT  := 0;
                frmmodulo.query_servidor.Params.ParamByName('CONVENIO').asFLOAT   := 0;
                frmmodulo.query_servidor.params.parambyname('situacao').asinteger := query.fieldbyname('cancelado').asinteger + 1;

                qrForma.close;
                qrForma.sql.clear;
                qrForma.sql.add('select * from cupom_forma');
                qrforma.sql.add('where cod_cupom = '''+scod_cupom+'''');
                qrforma.Open;
                qrforma.first;
                bachou := false;
                while not qrforma.eof do
                begin
                  if not bachou then
                  begin
                    for i := 0 to lForma_dinheiro.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_dinheiro[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_cheque.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_cheque[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_cartao.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_cartao[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_crediario.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_crediario[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_convenio.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_convenio[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  qrforma.next;
                end;
                frmmodulo.query_servidor.ExecSQL;


                if query.fieldbyname('cancelado').asinteger = 0 then
                begin
                  // contas a receber
                  query2.close;
                  query2.sql.clear;
                  query2.sql.add('select * from cupom_crediario');
                  query2.sql.add('where cod_cupom = '''+scod_cupom+'''');
                  query2.open;
                  query2.first;
                  iprest := 1;
                  while not query2.eof do
                  begin
                    frmmodulo.query_servidor.Close;
                    frmmodulo.query_servidor.SQL.clear;
                    frmmodulo.query_servidor.SQL.add('insert into c000049');
                    frmmodulo.query_servidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                    frmmodulo.query_servidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
                    frmmodulo.query_servidor.SQL.add('values');
                    frmmodulo.query_servidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                    frmmodulo.query_servidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');

                    frmmodulo.query_servidor.Params.ParamByName('codigo').asstring := Scod_venda+'/'+zerar(inttostr(iprest),2);
                    frmmodulo.query_servidor.Params.ParamByName('codvenda').asstring := scod_venda;
                    frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring := zerar(query2.fieldbyname('cod_cliente').asstring,6);
                    frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring := zerar(query.FIELDBYNAME('cod_vendedor').ASstring,6);
                    frmmodulo.query_servidor.Params.ParamByName('codcaixa').asstring := Zerar(IntToStr(icodigo_Usuario),6);
                    frmmodulo.query_servidor.Params.ParamByName('documento').asstring := scod_venda+'/'+zerar(inttostr(iprest),2);
                    frmmodulo.query_servidor.Params.ParamByName('tipo').asstring := COPY(query2.fieldbyname('descricao').asstring,1,20);
                    frmmodulo.query_servidor.Params.ParamByName('filtro').asinteger := 0;
                    frmmodulo.query_servidor.Params.ParamByName('situacao').asinteger := 1;
                    frmmodulo.query_servidor.Params.ParamByName('data_vencimento').asdatetime := query2.FIELDBYNAME('vencimento').ASDATETIME;
                    frmmodulo.query_servidor.Params.ParamByName('data_emissao').asdatetime := query.fieldbyname('data').asfloat;
                    frmmodulo.query_servidor.PARAMS.ParamByName('valor_atual').ASFLOAT := query2.fieldbyname('valor').asfloat;
                    frmmodulo.query_servidor.PARAMS.ParamByName('valor_original').ASFLOAT := query2.fieldbyname('valor').asfloat;
                    frmmodulo.query_servidor.ExecSQL;
                    inc(iprest);
                    query2.next;
                  END;
                end;
                // produtos
                query3.close;
                query3.sql.clear;
                query3.sql.add('select * from CUPOM_ITEM');
                query3.sql.add('where cod_cupom = '''+scod_cupom+'''');
                query3.sql.add('and cancelado = 0');
                query3.open;
                query3.first;
                while not query3.eof do
                begin
                  frmmodulo.query_servidor.CLOSE;
                  frmmodulo.query_servidor.SQL.CLEAR;
                  frmmodulo.query_servidor.SQL.Add('insert into c000032');
                  frmmodulo.query_servidor.SQL.add('(codigo,codnota,serial,numeronota,');
                  frmmodulo.query_servidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
                  frmmodulo.query_servidor.SQL.add('total,unidade,aliquota,');
                  frmmodulo.query_servidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                  frmmodulo.query_servidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
                  frmmodulo.query_servidor.sql.add('base_calculo, valor_icms)');
                  frmmodulo.query_servidor.SQL.add('values');

                  frmmodulo.query_servidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                  frmmodulo.query_servidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,');
                  frmmodulo.query_servidor.SQL.add(':total,:unidade,:aliquota,');
                  frmmodulo.query_servidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                  frmmodulo.query_servidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
                  frmmodulo.query_servidor.sql.add(':base_calculo, :valor_icms)');

                  frmmodulo.query_servidor.Params.ParamByName('CODIGO').ASSTRING      := frmPrincipal.codifica('000032',10);
                  frmmodulo.query_servidor.Params.ParamByName('CODNOTA').ASSTRING     := scod_venda;
                  frmmodulo.query_servidor.Params.ParamByName('SERIAL').ASSTRING      := '';
                  frmmodulo.query_servidor.Params.ParamByName('NUMERONOTA').ASSTRING  := query.fieldbyname('numero').asstring;
                  frmmodulo.query_servidor.Params.ParamByName('CODPRODUTO').ASSTRING  := zerar(query3.fieldbyname('cod_produto').asstring,6);
                  frmmodulo.query_servidor.Params.ParamByName('CODCLIENTE').ASSTRING  := zerar(query.FIELDBYNAME('COD_CLIENTE').ASSTRING,6);
                  frmmodulo.query_servidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(query.FIELDBYNAME('COD_VENDEDOR').ASSTRING,6);

                  frmmodulo.query_servidor.Params.ParamByName('QTDE').ASFLOAT := query3.FIELDBYNAME('QTDE').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -query3.FIELDBYNAME('QTDE').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA').ASFLOAT := query3.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                  frmmodulo.query_servidor.Params.ParamByName('UNIDADE').ASSTRING  := query3.FIELDBYNAME('UNIDADE').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CST').ASSTRING  := query3.FIELDBYNAME('CST').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').ASINTEGER  := 2;
                  frmmodulo.query_servidor.Params.ParamByName('DATA').ASDATETIME  := query.FIELDBYNAME('DATA').ASDATETIME;
                  frmmodulo.query_servidor.Params.ParamByName('ECF_CAIXA').ASSTRING  := sECF_Caixa;
                  frmmodulo.query_servidor.Params.ParamByName('ECF_SERIE').ASSTRING  := query.FIELDBYNAME('ECF').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := query.FIELDBYNAME('NUMERO').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_ITEM').ASSTRING  := zerar(query3.FIELDBYNAME('ITEM').ASSTRING,3);
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_MODELO').ASSTRING  := '2D';

                  if (query3.fieldbyname('aliquota').asfloat > 0) and
                     (query3.fieldbyname('cst').asstring = '000') then
                  begin
                    frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                    frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * query3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                  end
                  else
                  begin
                    frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                    frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                  end;
                  frmmodulo.query_servidor.ExecSQL;
                  query3.next;
                END;


                query.Next;
              end;

              try
              // Atualizacao das reducoes z

              frmmodulo.query.close;
              frmmodulo.query.sql.clear;
              frmmodulo.query.sql.add('select * from config');
              frmmodulo.query.open;


              query.close;
              query.sql.clear;
              query.sql.add('select * from reducaoz where ex = 0');
              query.open;
              query.first;
              while not query.eof do
              begin
                  query3.close;
                  query3.sql.clear;
                  query3.sql.add('select * from reducaoz_total_parcial');
                  query3.sql.add('where cod_reducaoz = '''+query.fieldbyname('codigo').asstring+'''');
                  query3.open;

                  frmmodulo.query_servidor.CLOSE;
                  frmmodulo.query_servidor.SQL.CLEAR;
                  frmmodulo.query_servidor.sql.add('insert into SINTEGRA_REG60');
                  frmmodulo.query_servidor.SQL.Add('(id, MOVIMENTO,');
                  frmmodulo.query_servidor.SQL.Add('CODIGO_EMPRESA,');
                  frmmodulo.query_servidor.SQL.Add('CNPJ,');
                  frmmodulo.query_servidor.SQL.Add('IE,');
                  frmmodulo.query_servidor.SQL.Add('UF,');
                  frmmodulo.query_servidor.SQL.Add('DATA_EMISSAO,');
                  frmmodulo.query_servidor.SQL.Add('NRO_SERIE_EQP,');
                  frmmodulo.query_servidor.SQL.Add('NRO_ORDEM_EQP,');
                  frmmodulo.query_servidor.SQL.Add('MODELO_DOC,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_INICIO,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_FIM,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_Z,');
                  frmmodulo.query_servidor.SQL.Add('CONTADOR_REINICIO,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_BRUTA,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_TOTAL_GERAL,');
                  frmmodulo.query_servidor.SQL.Add('CANCELAMENTO,');
                  frmmodulo.query_servidor.SQL.Add('DESCONTO,');
                  frmmodulo.query_servidor.SQL.Add('ISSQN,');
                  frmmodulo.query_servidor.SQL.Add('SUBSTITUICAO_TRIBUTARIA,');
                  frmmodulo.query_servidor.SQL.Add('ISENTO,');
                  frmmodulo.query_servidor.SQL.Add('NAO_INCIDENCIA,');

                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA01,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA02,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA03,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA04,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA05,');
                  frmmodulo.query_servidor.SQL.Add('BASE01,');
                  frmmodulo.query_servidor.SQL.Add('BASE02,');
                  frmmodulo.query_servidor.SQL.Add('BASE03,');
                  frmmodulo.query_servidor.SQL.Add('BASE04,');
                  frmmodulo.query_servidor.SQL.Add('BASE05,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_LIQUIDA,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_CANCELAMENTO)');

                  frmmodulo.query_servidor.sql.add('values');

                  frmmodulo.query_servidor.SQL.Add('(:id, :MOVIMENTO,');
                  frmmodulo.query_servidor.SQL.Add(':CODIGO_EMPRESA,');
                  frmmodulo.query_servidor.SQL.Add(':CNPJ,');
                  frmmodulo.query_servidor.SQL.Add(':IE,');
                  frmmodulo.query_servidor.SQL.Add(':UF,');
                  frmmodulo.query_servidor.SQL.Add(':DATA_EMISSAO,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_SERIE_EQP,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_ORDEM_EQP,');
                  frmmodulo.query_servidor.SQL.Add(':MODELO_DOC,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_INICIO,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_FIM,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_Z,');
                  frmmodulo.query_servidor.SQL.Add(':CONTADOR_REINICIO,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_BRUTA,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_TOTAL_GERAL,');
                  frmmodulo.query_servidor.SQL.Add(':CANCELAMENTO,');
                  frmmodulo.query_servidor.SQL.Add(':DESCONTO,');
                  frmmodulo.query_servidor.SQL.Add(':ISSQN,');
                  frmmodulo.query_servidor.SQL.Add(':SUBSTITUICAO_TRIBUTARIA,');
                  frmmodulo.query_servidor.SQL.Add(':ISENTO,');
                  frmmodulo.query_servidor.SQL.Add(':NAO_INCIDENCIA,');

                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA01,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA02,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA03,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA04,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA05,');
                  frmmodulo.query_servidor.SQL.Add(':BASE01,');
                  frmmodulo.query_servidor.SQL.Add(':BASE02,');
                  frmmodulo.query_servidor.SQL.Add(':BASE03,');
                  frmmodulo.query_servidor.SQL.Add(':BASE04,');
                  frmmodulo.query_servidor.SQL.Add(':BASE05,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_LIQUIDA,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_CANCELAMENTO)');



                  frmmodulo.query_servidor.Params.ParamByName('id').ASSTRING      := frmPrincipal.codifica('000032',6);
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').asinteger := 1;
                  frmmodulo.query_servidor.Params.ParamByName('CODIGO_EMPRESA').asinteger := 1;
                  frmmodulo.query_servidor.Params.ParamByName('CNPJ').asstring := sEmpresa_CNPJ;
                  frmmodulo.query_servidor.Params.ParamByName('IE').asstring := sEmpresa_IE;
                  frmmodulo.query_servidor.Params.ParamByName('UF').asstring := sempresa_UF;
                  frmmodulo.query_servidor.Params.ParamByName('DATA_EMISSAO').asdatetime := query.fieldbyname('data_movimento').asdatetime;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_SERIE_EQP').asstring := query.fieldbyname('ecf').asstring;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_ORDEM_EQP').asinteger := strtoint(sECF_Caixa);
                  frmmodulo.query_servidor.Params.ParamByName('MODELO_DOC').asstring := '2D';

                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_INICIO').asinteger := strtoint(frmmodulo.query.fieldbyname('CAIXA_COO_INICIAL').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_FIM').asInteger := strtoint(query.fieldbyname('coo').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_Z').asinteger := strtoint(query.fieldbyname('crz').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('CONTADOR_REINICIO').asinteger := strtoint(query.fieldbyname('cro').asstring);

                  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_BRUTA').asfloat :=  query.fieldbyname('venda_bruta').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('VALOR_TOTAL_GERAL').asfloat := query.fieldbyname('totalizador_geral').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('CANCELAMENTO').asfloat := query.fieldbyname('cancelamento_icms').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asfloat := query.fieldbyname('desconto_icms').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('ISSQN').asfloat := query.fieldbyname('total_iss').asfloat;

                  I := 1;
                  query3.first;
                  while not query3.eof do
                  begin
                    // substituicao tributaria
                    if query3.FieldByName('totalizador').asstring = 'F1' then
                       frmmodulo.query_servidor.Params.ParamByName('SUBSTITUICAO_TRIBUTARIA').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // isento
                    if query3.FieldByName('totalizador').asstring = 'I1' then
                       frmmodulo.query_servidor.Params.ParamByName('ISENTO').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // NAO TRIBUTADO
                    if query3.FieldByName('totalizador').asstring = 'N1' then
                       frmmodulo.query_servidor.Params.ParamByName('NAO_INCIDENCIA').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // TRIBUTADOS
                    IF (COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,6,2) = '00') and
                       (query3.fieldbyname('valor').asfloat > 0) THEN
                    BEGIN
                      CASE I OF
                      1 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA01').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE01').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      2 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA02').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE02').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      3 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA03').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE03').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      4 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA04').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE04').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      5 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA05').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE05').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      end;
                    END;
                    query3.next;
                  end;
                  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_LIQUIDA').asfloat := query.fieldbyname('venda_liquida').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_CANCELAMENTO').asfloat := 0;
                  frmmodulo.query_servidor.execsql;
                query.next;
              end;



              query.close;
              query.sql.clear;
              query.sql.add('update reducaoz set ex = 1 where ex = 0');
              query.ExecSQL;


            except

            end;






{
              query.close;
              query.sql.clear;
              query.sql.add('select * from c000044');
              query.open;
              query.first;
              while not query.eof do
              begin
                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000044');
                frmmodulo.query_servidor.sql.add('(codigo,codcaixa,codoperador,data,entrada,SAIDA,valor,codconta,movimento,historico)');
                frmmodulo.query_servidor.sql.add('values');
                frmmodulo.query_servidor.sql.add('(:codigo,:codcaixa,:codoperador,:data,:entrada,:SAIDA,:valor,:codconta,:movimento,:historico)');
                frmmodulo.query_servidor.params.ParamByName('codigo').asstring := query.fieldbyname('codigo').asstring;
                frmmodulo.query_servidor.params.ParamByName('codcaixa').asstring := query.fieldbyname('codcaixa').asstring;
                frmmodulo.query_servidor.params.ParamByName('codoperador').asstring := query.fieldbyname('codoperador').asstring;
                frmmodulo.query_servidor.params.ParamByName('data').asdatetime := query.fieldbyname('data').asdatetime;
                frmmodulo.query_servidor.params.ParamByName('codconta').asstring := query.fieldbyname('codconta').asstring;
                frmmodulo.query_servidor.params.ParamByName('historico').asstring := query.fieldbyname('historico').asstring;
                frmmodulo.query_servidor.params.ParamByName('MOVIMENTO').asINTEGER := query.fieldbyname('MOVIMENTO').asINTEGER;
                frmmodulo.query_servidor.params.ParamByName('ENTRADA').asFLOAT := query.fieldbyname('ENTRADA').asFLOAT;
                frmmodulo.query_servidor.params.ParamByName('SAIDA').asFLOAT := query.fieldbyname('SAIDA').asFLOAT;
                frmmodulo.query_servidor.params.ParamByName('VALOR').asFLOAT := query.fieldbyname('VALOR').asFLOAT;
                frmmodulo.query_servidor.ExecSQL;
                query.NEXT;

              END;

              query.close;
              query.sql.clear;
              query.sql.add('select * from c000040');
              query.open;
              query.first;
              while not query.eof do
              begin
                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000040');
                frmmodulo.query_servidor.SQL.ADD('(CODIGO,EMISSAO,VENCIMENTO,SITUACAO, CODCLIENTE,TITULAR,CODBANCO, AGENCIA,');
                frmmodulo.query_servidor.SQL.ADD(' CONTA,DATA_CONTA,NUMERO,VALOR,DESCONTO,LIQUIDO,CODVENDA,OBS1,OBS2,DESTINO, CODCONTA_CORRENTE,CODCONTA)');
                frmmodulo.query_servidor.SQL.ADD('VALUES');
                frmmodulo.query_servidor.SQL.ADD('(:CODIGO,:EMISSAO,:VENCIMENTO,:SITUACAO, :CODCLIENTE,:TITULAR,:CODBANCO, :AGENCIA,');
                frmmodulo.query_servidor.SQL.ADD(' :CONTA,:DATA_CONTA,:NUMERO,:VALOR,:DESCONTO,:LIQUIDO,:CODVENDA,:OBS1,:OBS2,:DESTINO, :CODCONTA_CORRENTE,:CODCONTA)');
                frmmodulo.query_servidor.PARAMS.ParamByName('CODIGO').ASSTRING := query.FIELDBYNAME('CODIGO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('EMISSAO').ASDATETIME := query.FIELDBYNAME('EMISSAO').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('VENCIMENTO').ASDATETIME := query.FIELDBYNAME('VENCIMENTO').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('DATA_CONTA').ASDATETIME := query.FIELDBYNAME('DATA_CONTA').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('SITUACAO').ASINTEGER := query.FIELDBYNAME('SITUACAO').ASINTEGER;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCLIENTE').ASSTRING := query.FIELDBYNAME('CODCLIENTE').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('TITULAR').ASSTRING := query.FIELDBYNAME('TITULAR').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODBANCO').ASSTRING := query.FIELDBYNAME('CODBANCO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('AGENCIA').ASSTRING := query.FIELDBYNAME('AGENCIA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CONTA').ASSTRING := query.FIELDBYNAME('CONTA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODVENDA').ASSTRING := query.FIELDBYNAME('CODVENDA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('OBS1').ASSTRING := query.FIELDBYNAME('OBS1').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('OBS2').ASSTRING := query.FIELDBYNAME('OBS2').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('DESTINO').ASSTRING := query.FIELDBYNAME('DESTINO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA_CORRENTE').ASSTRING := query.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA').ASSTRING := query.FIELDBYNAME('CODCONTA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('valor').asfloat := query.FIELDBYNAME('valor').asfloat;
                frmmodulo.query_servidor.PARAMS.ParamByName('desconto').asfloat := query.FIELDBYNAME('desconto').asfloat;
                frmmodulo.query_servidor.PARAMS.ParamByName('liquido').asfloat := query.FIELDBYNAME('liquido').asfloat;
                frmmodulo.query_servidor.ExecSQL;
                query.NEXT;
              END;




              //********* APAGAR OS DADOS LOCAIS


              }


              query.close;
              query.sql.clear;
              query.sql.add('update cupom set ex = 1');
              query.ExecSQL;





            end; // atualiza_serv


          except
            Imprime_display('Erro na atualização do Servidor!',clred,tiErro);
            sleep(1500);
          end;
          ///


  //
end;
 {



// Atualizar PDV

procedure TfrmVenda.Atualizar_PDV();
var  txt : textfile;
  entrada : string;
  sCST : string;
begin

      try

      fl.Directory := '\DATASAC\paf\dat\carga';
      fl.Refresh;
      fl.Update;
      while fl.Items.Count > 0 do
      begin
        fl.Selected[0] := true;
        if FileExists(fl.FileName) then
        begin
          Assignfile(txt,fl.FileName);
          reset(txt);

          // APAGAR A TABELA DE INDICES
          QUERY.CLOSE;
          QUERY.SQL.CLEAR;
          QUERY.SQL.ADD('DELETE FROM ESTOQUE_INDICE');
          QUERY.ExecSQL;



          while not eof(txt) do
          begin
            readln(txt,entrada);


            if copy(entrada,1,10) = 'PRODUTOS  ' THEN
            BEGIN
              IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
              BEGIN
                query.close;
                query.sql.clear;
                query.sql.add('select * from estoque where codigo = '+COPY(ENTRADA,12,6));
                query.Open;
                if query.recordcount = 0 then
                begin
                  query.close;
                  query.sql.clear;
                  query.sql.add('insert into estoque');
                  query.sql.add('(codigo, cod_barra, nome, unidade, preco_venda, preco_promocao,');
                  query.sql.add('inicio_promocao, final_promocao, cst, aliquota, desconto_maximo,');
                  query.sql.add('st, estoque, iat, ippt)');
                  query.sql.add('values');
                  query.sql.add('(:codigo,:cod_barra,:nome,:unidade,:preco_venda,:preco_promocao,');
                  query.sql.add(':inicio_promocao,:final_promocao,:cst,:aliquota,:desconto_maximo,');
                  query.sql.add(':st,:estoque,:iat,:ippt)');
                  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
                  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
                  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
                  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
                  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));



                  if Trim(copy(ENTRADA,128,10)) <> '' then
                  begin
                    query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
                    query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
                  end;

                  scst := COPY(ENTRADA,95,3);
                  query.Params.ParamByName('cst').asstring           := sCst;
                  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
                  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


                  if (scst = '060') or
                     (scst = '010') or
                     (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
                  else
                  if (scst = '040') or
                     (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
                  else
                  if (scst = '041') or
                     (scst = '050') or
                     (scst = '051') or
                     (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
                  else
                    query.Params.ParamByName('st').asSTRING := 'T';
                  query.Params.ParamByName('iat').asstring           := 'T';
                  query.Params.ParamByName('ippt').asstring          := 'T';



                  query.execsql;
                end
                else
                begin
                  query.close;
                  query.sql.clear;
                  query.sql.add('update estoque set');
                  query.sql.add('codigo = :codigo, cod_barra = :cod_barra, nome = :nome,');
                  query.sql.add(' unidade = :unidade, preco_venda = :preco_venda,');
                  query.sql.add(' preco_promocao = :preco_promocao,');
                  query.sql.add('inicio_promocao = :inicio_promocao, final_promocao = :final_promocao,');
                  query.sql.add(' cst = :cst, aliquota = :aliquota, desconto_maximo = :desconto_maximo,');
                  query.sql.add('st = :st, estoque = :estoque, iat = :iat, ippt = :ippt');
                  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));
                  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
                  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
                  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
                  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
                  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));

                  if Trim(copy(ENTRADA,128,10)) <> '' then
                  begin
                    query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
                    query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
                  end;

                  scst := COPY(ENTRADA,95,3);
                  query.Params.ParamByName('cst').asstring           := sCst;
                  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
                  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


                  if (scst = '060') or
                     (scst = '010') or
                     (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
                  else
                  if (scst = '040') or
                     (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
                  else
                  if (scst = '041') or
                     (scst = '050') or
                     (scst = '051') or
                     (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
                  else
                    query.Params.ParamByName('st').asSTRING := 'T';
                  query.Params.ParamByName('iat').asstring           := 'T';
                  query.Params.ParamByName('ippt').asstring          := 'T';
                  query.execsql;
                end;
              END
              ELSE
              BEGIN
                IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
                BEGIN
                  query.close;
                  query.sql.clear;
                  query.sql.add('update estoque set');
                  query.sql.add('codigo = :codigo, cod_barra = :cod_barra, nome = :nome,');
                  query.sql.add(' unidade = :unidade, preco_venda = :preco_venda,');
                  query.sql.add(' preco_promocao = :preco_promocao,');
                  query.sql.add('inicio_promocao = :inicio_promocao, final_promocao = :final_promocao,');
                  query.sql.add(' cst = :cst, aliquota = :aliquota, desconto_maximo = :desconto_maximo,');
                  query.sql.add('st = :st, estoque = :estoque, iat = :iat, ippt = :ippt');
                  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));
                  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
                  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
                  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
                  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
                  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));

                  if Trim(copy(ENTRADA,128,10)) <> '' then
                  begin
                    query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
                    query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
                  end;
                  
                  scst := COPY(ENTRADA,95,3);
                  query.Params.ParamByName('cst').asstring           := sCst;
                  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
                  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


                  if (scst = '060') or
                     (scst = '010') or
                     (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
                  else
                  if (scst = '040') or
                     (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
                  else
                  if (scst = '041') or
                     (scst = '050') or
                     (scst = '051') or
                     (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
                  else
                    query.Params.ParamByName('st').asSTRING := 'T';
                  query.Params.ParamByName('iat').asstring           := 'T';
                  query.Params.ParamByName('ippt').asstring          := 'T';
                  query.execsql;
                END
                ELSE
                BEGIN
                  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
                  BEGIN
                    query.CLOSE;
                    query.SQL.CLEAR;
                    query.SQL.ADD('DELETE FROM estoque WHERE CODIGO = '+COPY(ENTRADA,12,6));
                    query.ExecSQL;
                  END;
                END;
              END;
            END; // PRODUTO



            if copy(entrada,1,10) = 'CLIENTES  ' THEN
            BEGIN
              IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
              BEGIN


                query.close;
                query.sql.clear;
                query.sql.add('select * from cliente where codigo = '+COPY(ENTRADA,12,6));
                query.Open;
                if query.recordcount = 0 then
                begin
                  query.close;
                  query.sql.clear;
                  query.sql.add('insert into cliente');
                  query.sql.add('(codigo,nome,situacao,limite,cpf,endereco,bairro,cidade,uf)');
                  query.sql.add('values');
                  query.sql.add('(:codigo,:nome,:situacao,:limite,:cpf,:endereco,:bairro,:cidade,:uf)');




                  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  query.execsql;
                end
                else
                begin
                  query.close;
                  query.sql.clear;
                  query.sql.add('update cliente set');
                  query.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf');
                  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));

                  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  query.execsql;
                end;



              end
              else
              begin
                IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
                BEGIN
                  query.close;
                  query.sql.clear;
                  query.sql.add('update cliente set');
                  query.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf');
                  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));

                  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
                  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  query.execsql;
                END
                ELSE
                BEGIN
                  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
                  BEGIN
                    query.CLOSE;
                    query.SQL.CLEAR;
                    query.SQL.ADD('DELETE FROM C000007 WHERE CODIGO = '+COPY(ENTRADA,12,6));
                    query.ExecSQL;
                  END;
                END;
              END;

            end; // clientes






            // MATERIA - PRIMA

            if copy(entrada,1,10) = 'MATERIA-PR' THEN
            BEGIN

                  query.close;
                  query.sql.clear;
                  query.sql.add('insert into ESTOQUE_INDICE');
                  query.sql.add('(cod_PRODUTO,COD_INDICE,QTDE)');
                  query.sql.add('values');
                  query.sql.add('(:COD_PRODUTO,:COD_INDICE,:QTDE)');
                  query.Params.ParamByName('cod_PRODUTO').asstring := COPY(ENTRADA,12,6);
                  query.Params.ParamByName('COD_INDICE').asstring  := COPY(ENTRADA,18,6);
                  query.Params.ParamByName('QTDE').asFLOAT         := STRTOFLOAT(COPY(ENTRADA,24,12));
                  query.execsql;

            end; // MATERIA PRIMA







          end;
          Closefile(txt);
          DeleteFile(fl.FileName);
        end;
        fl.Refresh;
        fl.Update;
      end;

      finally
        sCarga_data := datetostr(dData_Sistema);
        scarga_hora := TimeToStr(time);

        Arquivo_ini := TIniFile.Create('c:\DATASAC\paf\cfg\Data.ini');
        Arquivo_ini.WriteString('CARGA','Data',sCarga_data);
        Arquivo_ini.WriteString('CARGA','Hora',scarga_hora);
        Arquivo_ini.free;
        lb_carga.Caption := 'Carga: '+sCarga_data+' às '+scarga_hora;
      end;


//      tempo_atualizacao := 0;
//      timer_atualiza.Enabled := true;

end;


}

*)


// -------------------------------------------------------------------------- //
// Funcao de busca de produtos
function TfrmVenda.Localizar_Produto(referencia:string):boolean;
var bBusca_codigo : boolean; // variavel de para ativar ou nao a busca pelo campo codigo
    bAbre_Grade : boolean; // variavel para ativar ou nao a grade de localizacao de produto
    iPosicao : integer;
begin
  try
    if bidentcpfcnpj then
      exit;


    // limpar a variaveis de retorno
    sProd_nome     := '';
    sProd_barra    := '';
    sProd_unidade  := '';
    sProd_CST      := '';
    iProd_codigo   := -1;
    rProd_aliquota := -1;
    rProd_Estoque  := 0;
    rProd_preco    := 0;
    rProd_qtde     := 1;
    rProd_total    := 0;
    bProd_promocao := false;
    sProd_Tamanho := '';
    sProd_Cor := '';

    // verificar se foi digitado a quantidade no campo de busca do produto utilizando os
    // caracteres "X" ou "*"

    if (pos('*',ansiuppercase(referencia)) > 0) then
    begin
      iPosicao := pos('*',ansiuppercase(referencia));
      if iPosicao = 0 then iPosicao := pos('*',ansiuppercase(referencia));
      try
        // alimenta a varivel de qtde
        rProd_Qtde := Strtofloat(copy(referencia,1,iPosicao-1));
        // copia apenas a parte que contem a informacao da busca do produto
        referencia := copy(referencia,iPosicao+1,99);
      except
        // retornou erro, zera a qtde e deixa a referencia como estah.
        rProd_qtde := 1;
      end;
    end;

    // verificar ha possibilidade do texto ser um numero inteiro ou
    // nao ser um produto pesado em balanca --> iniciado por 2
    if length(referencia) < 8 then
    begin
      // verificar se o campo referencia eh um numero inteiro valido
      try
        strtoint(referencia);
        bBusca_codigo := true;
      except
        on EConvertError do
          Bbusca_codigo := false;
      end;



      if Bbusca_codigo then
      begin
        // comando SQL para filtrar o produto pelo codigo de barras

        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = '''+referencia+'''');
        query.Open;



        if query.recordcount  > 0 then
        begin
          // encontrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo codigo
          try
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where codigo = '+referencia);
            query.open;
            if query.RecordCount > 0 then
            begin
              // encontrou o registro pelo codigo
              result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              result := false;
            end;
          except
            result := false;
          end;
        end;
      end
      else
      begin
        // BUSCAR PELO CODIGO DE BARRAS
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = '''+referencia+'''');
        query.Open;

        if query.recordcount  > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo nome
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where upper(REFERENCIA) LIKE '''+ANSIUPPERCASE(referencia)+'%''');
          query.sql.add('order by REFERENCIA, COR, TAMANHO');
          query.open;

          if query.RecordCount > 0 then
          begin
            Result := True;
          end
          else
          begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like '''+ANSIUPPERCASE(referencia)+'%''');
            query.sql.add('order by nome');
            query.open;

            //showmessage(ANSIUPPERCASE(referencia)+' '+inttostr( query.RecordCount));
            if query.RecordCount > 0 then
            begin
              if query.recordcount > 1 then
              begin
                iprod_codigo := 0;
                // encontrou varios registros
                if iPesquisa_produto = 1 then
                begin
                  frmProduto_consulta := TfrmProduto_consulta.create(self);
                  // aqui
                  //frmproduto_consulta.ed_barra.text := ed_barra.text;
                  frmproduto_consulta.ed_barra.text := ANSIUPPERCASE(referencia);
                  frmProduto_consulta.showmodal;
                  if iProd_codigo > 0 then
                  begin
                    query.Close;
                    query.sql.Clear;
                    query.sql.add('select * from estoque where codigo = '+inttostr(iprod_codigo));
                    query.open;
                    result := true;
                  end
                  else
                    result := false;
                end
                else
                  result := True;
              end
              else
                // encontrou o registro pelo nome
                result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              result := false;
            end;
          end;
        end;
      end;
    end
    else
    begin
      // verificar se o produto é pesado em balanca
      //showmessage(referencia);
      //if (copy(referencia,1,1) = '2') and (length(referencia) <= 13) then

      if (copy(referencia,1,1) = inicodbal) and (length(referencia) <= 13) then
      begin
        try //Exemplo de codigo na etiqueta: 2000010002550 -> Codigo = 00001 Valor = 000255 = 2,55
           query.close;
           query.sql.clear;
           query.sql.add('select * from ESTOQUE');
           // extrair o codigo do produto na etiqueta de codigo de barras conf. o tamanho
           // do codigo da balanca configurado previamente
           query.sql.add('where cod_barra = '''+
                          inttostr(strtoint(copy(referencia,2,iTamanho_codigo_balanca)))+'''');
           query.open;
           if query.RecordCount > 0 then
           begin
             // encontrou um registro e estah lancando o valor contido na etiqueta de cod.barras
             rProd_total := strtofloat(copy(referencia,7,6))/100;
             result := true;
           end
           else
             // nao encontrou nenhum registro
             result := false;
        except
           // retornou erro ao tentar buscar pelo codigo do produto pesasdo
            result := false;
        end;
      end
      else
      begin
        // nao achou pelo codigo de barras, procurar pelo nome
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where upper(REFERENCIA) LIKE '''+ANSIUPPERCASE(referencia)+'%''');
        query.sql.add('order by REFERENCIA, COR, TAMANHO');
        query.open;

        if query.RecordCount > 0 then
        begin
          // nao encontrou nenhum produto
          // result := false;
          result:=true;
        end
        else
        begin
          // busca normal pelo codigo de barras e pelo nome do produto
          // comando SQL para filtrar o produto pelo codigo de barras
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where cod_barra = '''+referencia+'''');
          query.Open;

          if query.recordcount  > 0 then
          begin
            // encontrou o registro pelo codigo de barras
            result := true;
          end
          else
          begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like '''+referencia+'%''');
            query.sql.add('order by nome');
            query.open;
            if query.RecordCount > 0 then
            begin
              // encontrou o registro pelo nome
              result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              result := false;
            end;
          end;
        end;
      end;
    end;
  finally
    if result then
    begin
      // encontrou o produto, alimentar as variaveis de retorno
      sProd_nome     := query.fieldbyname('nome').asstring;
      if Length(Trim(Query.FieldByName('cod_barra').asString))>0 then
        sProd_barra    := query.fieldbyname('cod_barra').asstring
      else
        sProd_barra    := query.fieldbyname('codigo').asString;

      sprod_unidade  := query.fieldbyname('unidade').asstring;
      iProd_codigo   := query.fieldbyname('codigo').asinteger;
      sProd_CST      := query.fieldbyname('cst').asstring;
      rProd_aliquota := query.fieldbyname('aliquota').asfloat;
      rProd_Estoque  := query.fieldbyname('estoque').asfloat;
      if bTruncar_Valor then
        rProd_preco    := Truncar_Valor(query.fieldbyname('preco_venda').asfloat)    //mudei aqui 09/12/2011
      else
        rProd_preco    := query.fieldbyname('preco_venda').asfloat;

      rProd_desconto_maximo := query.fieldbyname('desconto_maximo').asfloat;
      bProd_promocao := false;
      rprod_desconto := 0;
      rprod_acrescimo := 0;
      sProd_Tamanho := Query.FieldByName('TAMANHO').AsString;
      sProd_Cor := Query.FieldByName('COR').AsString;

      // verificar se o produto estah em promocao
      if query.fieldbyname('preco_promocao').asfloat > 0 then
      begin
        IF (dData_Sistema >= query.fieldbyname('inicio_promocao').AsDateTime) AND
           (dData_Sistema <= query.fieldbyname('final_promocao').ASDATETIME) then
        begin
          rProd_preco    := query.fieldbyname('preco_promocao').asfloat;
          bProd_promocao := true;
        end;
      end;
      if rProd_Total > 0 then
      begin
        // o valor total foi achado caso o produto foi pesado
        // encontrar a qtde do produto
        rProd_qtde := rProd_total / rProd_preco;
      end;

      // verificar seh eh para truncar o valor total
      if bTruncar_valor then
      begin
         rProd_total := Truncar_Valor(rProd_Qtde * rProd_preco);
      end
      else
      begin
        if rProd_total = 0 then
          rProd_total := rProd_qtde * rProd_preco;
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
function tfrmVenda.TEF_Pagamento(Tef_tipo:TTef_tipo):boolean;
begin
  if (Tef_tipo = Tef_Venda_Cartao) then
  begin
    // apontar por default o gp redecard/visanet/amex
    Tef_Bandeira_escolhida := Tef_Redecard;

    if bTEF_TecBan then
    begin
      frmTef_bandeira := tfrmTef_Bandeira.create(self);
      frmTef_bandeira.showmodal;
    end;

    result :=  TEF_Cartao(Tef_Bandeira_escolhida);
  end
  else
  begin
    if (Tef_tipo = Tef_Venda_Cheque) then
    begin
     // apontar por default o gp redecard/visanet/amex
      Tef_Bandeira_escolhida := Tef_Redecard;

      if bTEF_TecBan then
      begin
        frmTef_bandeira := tfrmTef_Bandeira.create(self);
        frmTef_Bandeira.rb_visanet.Enabled := false;
        frmTef_Bandeira.rb_amex.Enabled := false;
        frmTef_Bandeira.rb_hipercard.Enabled := false;
        frmTef_Bandeira.rb_tribanco.Enabled := false;
        frmTef_bandeira.showmodal;
      end;

      result := TEF_Cheque(Tef_Bandeira_escolhida);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// venda no cartao via tef
function tfrmVenda.TEF_Cartao(bandeira:Tbandeira_tef):boolean;
var txt : textfile;
begin
  // armazenar no arquivo temporario a bandeira
  if bandeira = Tef_TecBan then
  begin
    assignfile(txt,sTEFTemp_Path+'gp.tmp');
    rewrite(txt);
    writeln(txt,'TECBAN');
    closefile(txt);
    iTEFTecban := 1;
  end
  else
  begin
    if bandeira = Tef_Hipercard then
    begin
      assignfile(txt,sTEFTemp_Path+'gp.tmp');
      rewrite(txt);
      writeln(txt,'HIPERCARD');
      closefile(txt);
      iTEFTecban := 2;
    end
    else
    begin
      assignfile(txt,sTEFTemp_Path+'gp.tmp');
      rewrite(txt);
      writeln(txt,'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
    end;
  end;
  bContinua := true;

  TEFLimpaVariaveis;

  // passar os parametros para as variaveis do tef
  sTefDoctoVinculado := sNumero_Cupom;
  sTefValorTotal := somenteNumero(formatfloat('##########0.00',rvalor_total_cartao));
  sTEFMoeda := '0';

  // Primeiro passo do TEF
  TEFVendaCartao;

  // verificar retorno do TEF
  if sTEFRetorno = '0' then
    result := true
  else
    result := false;
end;

// -------------------------------------------------------------------------- //
// consulta de cheque via tef

function tfrmVenda.TEF_Cheque(bandeira:Tbandeira_tef):boolean;
var txt : textfile;
begin

  // armazenar no arquivo temporario a bandeira
  if bandeira = Tef_TecBan then
  begin
    assignfile(txt,sTEFTemp_Path+'gp.tmp');
    rewrite(txt);
    writeln(txt,'TECBAN');
    closefile(txt);
    iTEFTecban := 1;
  end
  else
  begin
    if bandeira = Tef_Hipercard then
    begin
      assignfile(txt,sTEFTemp_Path+'gp.tmp');
      rewrite(txt);
      writeln(txt,'HIPERCARD');
      closefile(txt);
      iTEFTecban := 2;
    end
    else
    begin
      assignfile(txt,sTEFTemp_Path+'gp.tmp');
      rewrite(txt);
      writeln(txt,'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
    end;
  end;





  if (bandeira = Tef_Redecard) or
     (bandeira = Tef_TecBan) then
  begin
    bContinua := true;

    TEFLimpaVariaveis;

    // passar os parametros para as variaveis do tef
    sTefDoctoVinculado := sNumero_Cupom;
    sTefValorTotal := somenteNumero(formatfloat('##########0.00',rvalor_total_cheque));
    sTEFMoeda := '0';

    // Primeiro passo do TEF do cheque
    TEFVendaCheque;

    // verificar retorno do TEF
    if sTEFRetorno = '0' then
      result := true
    else
      result := false;
  end
  else
    result := false;
end;

// -------------------------------------------------------------------------- //
// Cancela cupom aberto
procedure tFrmvenda.cancela_cupom_aberto();
var
  i: integer;
  scod_cupom: string;
begin
  Imprime_display('Aguarde! Cancelando cupom '+sNumero_Cupom+'!',clYellow,tiAlerta);

  if (bLanca_pre_venda) or (bLanca_OS) or (bLanca_Abastecimento) then
  begin
     // venda foi feito por uma pre-venda
     //finalizar o cupom e depois cancelar
     sMsg := cECF_Fecha_Cupom_Resumido(iECF_Modelo,
     'DINHEIRO','MD5:'+sPAF_MD5+#10+
                sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero,
                rTotal_Venda);

     if sMsg = OK then
     begin

      with frmmodulo do
      begin

        try
        // lancamento do cupom no banco de dados
        sCod_Cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring         := sCod_Cupom;
        spCupom.ParamByName('numero').asstring         := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring            := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').AsString            := sECF_Serial;
        spCupom.ParamByName('data').asdate             := dData_Sistema;
        spCupom.ParamByName('hora').AsTime             := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger     := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat   := rTotal_Venda;
        spCupom.ParambyName('Valor_Desconto').asfloat  := rTotal_Desconto;
        spCupom.ParambyName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
        spCupom.ParamByName('valor_total').asfloat     := rTotal_Venda;
        spCupom.ParamByName('valor_pago').asfloat      := rTotal_Venda;
        spCupom.ParamByName('valor_troco').asfloat     := 0;
        if sCli_codigo <> '' then
          spCupom.ParamByName('cod_cliente').asstring  := sCli_codigo
        else
          spCupom.ParamByName('cod_cliente').Clear;

        spCupom.ParamByName('cancelado').asinteger     := 0;
        spcupom.parambyname('cpf_consumidor').asstring := sConsumidor_CPF;
        spcupom.ParamByName('nome_consumidor').asstring := copy(sConsumidor_Nome,1,40);
        spcupom.parambyname('cod_caixa').asinteger := icodigo_Usuario;
        spCupom.ParamByName('ecf_caixa').asstring := Copy(sECF_Caixa,1,3);
        spcupom.parambyname('cod_vendedor').asinteger := iVendedorCodigo;
        spCupom.Prepare;
        spCupom.Execute;
        except
        end;


        if iCodigo_abastecimento > 0 then
        begin
          frmvenda.timer_abastecimento.Enabled := false;
          query.close;
          query.sql.clear;
          query.sql.add('update posto_abastecimento set situacao = 1');
          query.SQL.add('where codigo = '+inttostr(iCodigo_abastecimento));
          query.ExecSQL;

          // atualizacao do encerrante
          query.close;
          query.sql.clear;
          query.sql.add('select posto_abastecimento.*, posto_bico.codigo as codigo_bico');
          query.sql.add('from posto_abastecimento, posto_bico');
          query.sql.add('where posto_abastecimento.bico = posto_bico.bico');
          query.sql.add('and posto_abastecimento.codigo = '+inttostr(iCodigo_abastecimento));
          query.Open;

          frmModulo.st_bico_movimento.Close;
          frmmodulo.st_bico_movimento.ParamByName('cod_bico').asinteger := query.fieldbyname('codigo_bico').asinteger;
          frmmodulo.st_bico_movimento.ParamByName('EF').asFLOAT := query.fieldbyname('ef').asfloat;
          frmmodulo.st_bico_movimento.parambyname('volume').asfloat := query.fieldbyname('qtde').asfloat;
          frmmodulo.st_bico_movimento.parambyname('data').asdatetime := query.fieldbyname('data').asfloat;
          FRMMODULO.st_bico_movimento.Prepare;
          frmModulo.st_bico_movimento.Execute;

          frmvenda.timer_abastecimento.Enabled := true;
        end;

        // lancamento dos items do cupom no banco de dados
        for i := 0 to grid.RowCount - 1 do
        begin
          // situacoes
          // 1 - Venda do Item
          // 3 - Cancelamento do Item
          // 4 - Desconto no Item
          // 5 - Acrescimo no Item

          if grid.Cell[1,i].asinteger = 1 then
          begin
            try
            spCupom_Item.close;
            spCupom_Item.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger);
            spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
            spCupom_Item.parambyname('item').asinteger := grid.cell[2,i].asinteger;
            spCupom_Item.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
            spCupom_Item.parambyname('unidade').asstring := grid.cell[12,i].asstring;
            spCupom_Item.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
            spCupom_Item.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                  grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat;
            spCupom_Item.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
            spCupom_Item.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
            spCupom_Item.parambyname('cst').asstring := grid.cell[11,i].asstring;
            spCupom_Item.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
            spCupom_Item.parambyname('cancelado').asinteger := grid.cell[13,i].asinteger;
            spCupom_Item.parambyname('tamanho').AsString := grid.cell[14,i].AsString;
            spCupom_Item.parambyname('cor').AsString := grid.cell[15,i].AsString;

            if (grid.cell[11,i].asstring = '060') or
               (grid.cell[11,i].asstring = '010') or
               (grid.cell[11,i].asstring = '070') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'F1'
            else
            if (grid.cell[11,i].asstring = '040') or
               (grid.cell[11,i].asstring = '030') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'I1'
            else
            if (grid.cell[11,i].asstring = '041') or
               (grid.cell[11,i].asstring = '050') or
               (grid.cell[11,i].asstring = '051') or
               (grid.cell[11,i].asstring = '090') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'N1'
            else
            if (grid.cell[11,i].asstring = 'ISS') then
               spCupom_item.ParamByName('cod_totalizador').asstring := '01S'+
                 Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
            else
              spCupom_item.ParamByName('cod_totalizador').asstring :=
                retorna_codigo_aliquota(grid.cell[10,i].asfloat);


            spCupom_Item.Prepare;
            spCupom_Item.Execute;
            except
            end;

          end;
        end;
        // lancar a forma de pagamento - DINHEIRO
        try
        spCupom_Forma.close;
        spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(1);
        spCupom_Forma.ParamByName('cod_cupom').asstring  := sCod_Cupom;
        spCupom_Forma.ParamByName('forma').asstring      := 'DINHEIRO';
        spCupom_Forma.ParamByName('valor').asfloat       := rTotal_Venda;
        spCupom_Forma.ParamByName('prestacao').asinteger := 1;
        spCupom_Forma.ParamByName('tipo').asstring       := 'CUPOM FISCAL';
        spCupom_Forma.Prepare;
        spCupom_Forma.Execute;
        except
        end;
      end;

       // cancelar se for prevenda e os, abastecimento nao
       if (bLanca_pre_venda) or (bLanca_OS) then
       begin

       // fazer o cancelamento do cupom
         Cancela_cupom_fechado;

            if bLanca_pre_venda then
            begin
              // atualizar situacao da pre-venda para 3 = cancelada
              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('update c000074 set situacao = 3  where codigo = '''+
                                                Zerar(inttostr(iPre_venda_codigo),6)+'''');
              frmmodulo.query_servidor.ExecSQL;

              bLanca_pre_venda := false;
            end
            else
            begin
              // atualizar situacao da OS para CANCELADA
              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('update c000051 set situacao = ''CANCELADA''  where codigo = '''+
                                                Zerar(inttostr(iOS_codigo),6)+'''');
              frmmodulo.query_servidor.ExecSQL;

              bLanca_OS := false;
            end;
       end
       else
       begin
         // atualizar o totalizar qdo for abastecimento, os demais serao feitos apos o cancelamento
         REPEAT
           SMSG := cECF_Grande_Total(iECF_Modelo);
           iF Smsg = 'ERRO' then
           begin
             if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                                 'Mensagem: '+sMsg+#13+
                                                 'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                 MB_ICONERROR) = idno then
             break;

           end
           else
             atualiza_totalizador(SMSG);
         UNTIL SmSG <> 'ERRO';

       end;

       // limpar o form de venda
       if bBusca_foto_produto then
       begin
         img_shape.Visible := false;
         img_produto.Picture := nil;
       end;
       bVenda := false;
       Limpa_controles;
     end
     else
     begin
       Application.MessageBox('Erro ao tentar fechar o cupom!','Erro',mb_ok+mb_iconerror);
       exit;
     end;
  end
  else
  begin
    sMsg := cECF_Cancela_Cupom(iECF_Modelo);
    if sMsg = OK then
    begin
      // Excluir os arquivos temporarios

       try
       frmModulo.spCupom_Temp_delete.prepare;
       frmModulo.spCupom_Temp_delete.execute;
       except
       end;

      // lancar o cupom no banco de dados como cancelado
       with frmmodulo do
       begin
        try
        sCod_Cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring         := sCod_Cupom;
        spCupom.ParamByName('numero').asstring         := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring            := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').AsString            := sECF_Serial;
        spCupom.ParamByName('data').asdate             := dData_Sistema;
        spCupom.ParamByName('hora').AsTime             := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger     := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat   := 0;
        spCupom.ParambyName('Valor_Desconto').asfloat  := 0;
        spCupom.ParambyName('Valor_Acrescimo').asfloat := 0;
        spCupom.ParamByName('valor_total').asfloat     := 0;
        spCupom.ParamByName('valor_pago').asfloat      := 0;
        spCupom.ParamByName('valor_troco').asfloat     := 0;
        spCupom.ParamByName('cod_cliente').Clear;
        spCupom.ParamByName('cancelado').asinteger     := 1;
        spcupom.parambyname('CPF_consumidor').clear;
        spcupom.ParamByName('nome_consumidor').clear;
        spcupom.parambyname('cod_caixa').asinteger := icodigo_Usuario;
        spCupom.ParamByName('ecf_caixa').asstring := Copy(sECF_Caixa,1,3);
        spcupom.parambyname('cod_vendedor').asinteger := iVendedorCodigo;
        spCupom.Prepare;
        spCupom.Execute;
        except
        end;
        // lancar os itens no banco de dados como cancelado
        for i := 0 to grid.RowCount - 1 do
        begin
          if grid.Cell[1,i].asinteger = 1 then
          begin
            try
            spCupom_Item.close;
            spCupom_Item.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger);
            spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
            spCupom_Item.parambyname('item').asinteger := grid.cell[2,i].asinteger;
            spCupom_Item.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
            spCupom_Item.parambyname('unidade').asstring := grid.cell[12,i].asstring;
            spCupom_Item.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
            spCupom_Item.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                  grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat;
            spCupom_Item.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
            spCupom_Item.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
            spCupom_Item.parambyname('cst').asstring := grid.cell[11,i].asstring;
            spCupom_Item.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
            spCupom_Item.parambyname('tamanho').AsString := grid.cell[14,i].AsString;
            spCupom_Item.parambyname('cor').AsString := grid.cell[15,i].AsString;

            if (grid.cell[11,i].asstring = '060') or
               (grid.cell[11,i].asstring = '010') or
               (grid.cell[11,i].asstring = '070') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'F1'
            else
            if (grid.cell[11,i].asstring = '040') or
               (grid.cell[11,i].asstring = '030') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'I1'
            else
            if (grid.cell[11,i].asstring = '041') or
               (grid.cell[11,i].asstring = '050') or
               (grid.cell[11,i].asstring = '051') or
               (grid.cell[11,i].asstring = '090') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'N1'
            else
            if (grid.cell[11,i].asstring = 'ISS') then
               spCupom_item.ParamByName('cod_totalizador').asstring := '01S'+
                 Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
            else
              spCupom_item.ParamByName('cod_totalizador').asstring :=
                retorna_codigo_aliquota(grid.cell[10,i].asfloat);

            spCupom_Item.parambyname('cancelado').asinteger := 1;
            spCupom_Item.Prepare;
            spCupom_Item.Execute;
            except
            end;



          end;
        end;




       end;


      if bBusca_foto_produto then
      begin
         img_shape.Visible := false;
         img_produto.Picture := nil;
      end;
      bVenda := false;
      Limpa_controles;
    end
    else
    begin
      Imprime_display(sMsg,clred,tierro);
      sleep(1500);
      ed_barra.setfocus;
    end;

    // atualizar o totalizador geral do PAF com a do ECF
    REPEAT
      SMSG := cECF_Grande_Total(iECF_Modelo);
      iF Smsg = 'ERRO' then
      begin
       if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'
         + #13 + 'Mensagem: ' + sMsg + #13
         + 'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR) = idno then
        break;
      end
      else
       atualiza_totalizador(SMSG);
    UNTIL SmSG <> 'ERRO';

    if sRamo_Tipo = '3' then
    begin
      ilinha_abastecimento := 0;
      iCodigo_abastecimento := 0;
      timer_abastecimento.Enabled := true;
      PN_POSTO.Visible := true;
      grid_abastecimento.setfocus;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Cancela cupom fechaDO
procedure tFrmvenda.cancela_cupom_fechado();
var
  scod_cupom: string;
  i: integer;

begin
   // localizando o cupom no banco de dados
   if not bLanca_pre_venda then
      If (iECF_Modelo <> BEMATECH) and (iECF_Modelo <> EPSON) then
         sNumero_cupom := Zerar(inttostr(strtoint(snumero_cupom)-1),6);


   for i := 0 to 2 do
   begin
     sNumero_cupom := zerar(inttostr(strtoint(sNumero_cupom)-i),6);

     query.close;
     query.sql.clear;
     query.sql.add('select numero, codigo from cupom where numero = '''+sNumero_cupom+'''');
     query.sql.add('and ecf = '''+sECF_Serial+''' and data = :data');
     query.parambyname('data').asdatetime := dData_Sistema;
     query.open;
     if query.RecordCount > 0 then
     begin
       break;
     end;
   end;

   if query.RecordCount = 0 then
   begin
     Imprime_display('Cupom não encontrado!',clred,tierro);
     sleep(1500);
     ed_barra.setfocus;
     exit;
   end;

   Imprime_display('Aguarde! Cancelando cupom '+sNumero_Cupom+'!',clYellow,tiAlerta);
   sleep(1000);
   sMsg := cECF_Cancela_Cupom(iECF_Modelo);

   if sMsg = OK then
   begin
     scod_cupom := query.fieldbyname('codigo').asstring;

     // cancelar cupom no banco de dados
     query.close;
     query.sql.clear;
     query.sql.add('update cupom set cancelado = 1 where numero = '''+sNumero_cupom+'''');
     query.sql.add('and ecf = '''+sECF_Serial+''' and data = :data');
     query.parambyname('data').asdatetime := dData_Sistema;
     query.execsql;

     query.Close;
     query.sql.clear;
     query.sql.add('update cupom_item set cancelado = 1 where cod_cupom = '''+
                    scod_cupom+'''');
     query.ExecSQL;

     if bBusca_foto_produto then
     begin
        img_shape.Visible := false;
        img_produto.Picture := nil;
     end;

     bVenda := false;
     Limpa_controles;
   end
   else
   begin
     Imprime_display(sMsg,clred,tierro);
     sleep(1500);
     ed_barra.setfocus;
   end;

  // atualizar o totalizador geral do PAF com a do ECF
  REPEAT
    SMSG := cECF_Grande_Total(iECF_Modelo);
    iF Smsg = 'ERRO' then
    begin
      if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                           'Mensagem: '+sMsg+#13+
                                           'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                           MB_ICONERROR) = idno then
      break;

    end
    else
      atualiza_totalizador(SMSG);
  UNTIL SmSG <> 'ERRO';
end;

// -------------------------------------------------------------------------- //
procedure tFrmvenda.Cancela_Item(sItem:string);
var i : integer;
begin
  // inicia o cancelamento


  sMsg := cECF_Cancela_Item(iECF_Modelo,zerar(sItem,3));
  if sMsg <> OK then
  begin
    Imprime_display(sMsg,clRed,tiErro);
    SLEEP(1000);
    Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
    ED_BARRA.SETFOCUS;
    exit;
  end;

  pn_cancelar_item.Visible := FALSE;
  APPLICATION.ProcessMessages;
  // alimenta as variaveis
  iProd_codigo   := grid.cell[3,grid.SelectedRow ].asinteger;
  sProd_nome     := grid.Cell[4,grid.selectedRow ].asstring;
  rprod_Qtde     := grid.Cell[5,grid.SelectedRow ].asfloat;
  rprod_Preco    := grid.Cell[6,grid.SelectedRow ].asfloat;
  rprod_Total    := grid.Cell[9,grid.SelectedRow ].asfloat;
  rProd_aliquota := grid.Cell[10,grid.SelectedRow].asfloat;
  sProd_CST      := grid.Cell[11,grid.SelectedRow].asstring;
  sProd_unidade  := grid.cell[12,grid.selectedRow].asstring;
  sProd_Tamanho  := grid.cell[14,grid.selectedRow].asstring;
  sProd_Cor      := grid.cell[15,grid.selectedRow].asstring;


  // cancelar o item na linha do grid
  grid.cell[13,grid.SelectedRow].AsInteger := 1;


  // diminui os totalizadores
  Dec(iTotal_Itens);
  rTotal_Venda := rtotal_venda - rprod_total;

  // Registrar item no Grid
  i := grid.AddRow(1);
  grid.cell[0,grid.LastAddedRow].asstring := '<FONT color="#FF0000">Cancelamento do Item '+ZERAR(ed_cancelar_item.Text,4)+'  '+
                                             texto_justifica(formatfloat(
                                                             '###,###,##0.000',-rprod_qtde),
                                                             10,' ',taDireita)+
                                             texto_justifica(formatfloat(
                                                             '###,###,##0.00',rprod_preco),
                                                             9,' ',taDireita)+
                                             texto_justifica(formatfloat(
                                                             '###,###,##0.00',-rprod_total),
                                                             9,' ',taDireita)+'</FONT>';

  // alimentar os campos invisiveis do grid com as informacoes do produto
  grid.cell[1,grid.LastAddedRow].asinteger := 3; // cancelamento de item
  grid.cell[2,grid.LastAddedRow].asSTRING  := ZERAR(INTTOSTR(ed_cancelar_item.IntValue),3);
  grid.cell[3,grid.LastAddedRow].asinteger := iProd_codigo;
  grid.Cell[4,grid.LastAddedRow].asstring  := sProd_nome;
  grid.Cell[5,grid.LastAddedRow].asfloat   := rprod_Qtde;
  grid.Cell[6,grid.LastAddedRow].asfloat   := rprod_Preco;
  grid.Cell[9,grid.LastAddedRow].asfloat   := rprod_Total;
  grid.Cell[10,grid.LastAddedRow].asfloat  := rProd_aliquota;
  grid.Cell[11,grid.LastAddedRow].asstring := sProd_CST;
  grid.cell[12,grid.LastAddedRow].asstring := sProd_unidade;
  grid.cell[13,grid.LastAddedRow].asinteger:= 1;
  grid.Cell[14,grid.LastAddedRow].asstring := sProd_Tamanho;
  grid.cell[15,grid.LastAddedRow].asstring := sProd_Cor;


  // lancar item no banco de dados temporario

  frmmodulo.spCupom_item_temp.close;
  frmmodulo.spCupom_item_temp.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger)+'C';
  frmmodulo.spCupom_item_temp.parambyname('cod_cupom').asstring := sNumero_Cupom;
  frmmodulo.spCupom_item_temp.parambyname('item').asinteger := grid.cell[2,i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
  frmmodulo.spCupom_item_temp.parambyname('unidade').asstring := grid.cell[12,i].asstring;
  frmmodulo.spCupom_Item_temp.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                  grid.cell[6,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
  frmmodulo.spCupom_item_temp.parambyname('cst').asstring := grid.cell[11,i].asstring;
  frmmodulo.spCupom_item_temp.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
  frmmodulo.spCupom_item_temp.parambyname('cancelado').asinteger := grid.cell[13,i].asinteger;
  frmmodulo.spCupom_item_temp.parambyname('tamanho').asstring := grid.cell[14,i].AsString;
  frmmodulo.spCupom_item_temp.parambyname('cor').asstring := grid.cell[15,i].AsString;

  if (grid.cell[11,i].asstring = '060') or
     (grid.cell[11,i].asstring = '010') or
     (grid.cell[11,i].asstring = '070') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'F1'
  else
  if (grid.cell[11,i].asstring = '040') or
     (grid.cell[11,i].asstring = '030') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'I1'
  else
  if (grid.cell[11,i].asstring = '041') or
     (grid.cell[11,i].asstring = '050') or
     (grid.cell[11,i].asstring = '051') or
     (grid.cell[11,i].asstring = '090') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'N1'
  else
  if (grid.cell[11,i].asstring = 'ISS') then
     frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := '01S'+
       Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
  else
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      retorna_codigo_aliquota(grid.cell[10,i].asfloat);


  GRID.SelectLastRow;
  GRID.SetFocus;


  try
  frmmodulo.spCupom_item_temp.Prepare;
  frmmodulo.spCupom_item_temp.Execute;
  except
  end;



  // atualizar os labels de totais e itens
  lb_item.Caption := inttostr(itotal_itens);
  lb_total.Caption := 'R$ '+formatfloat('###,###,##0.00',rTotal_venda);


  Imprime_display('ITEM '+ZERAR(ed_cancelar_item.Text,4)+' CANCELADO!',CLWHITE,tiOk);
  SLEEP(1000);
  Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
  ED_BARRA.SETFOCUS;


end;

// -------------------------------------------------------------------------- //
// Registrar item no Grid
procedure tFrmVenda.Registra_Item;
var
  sAliquota: string;
  i: integer;
  scodprod:string;

begin


  sAliquota := Retorna_aliquota(sprod_cst,rprod_aliquota, iECF_Modelo);

  // verificar se o item tem acrescimo

    IF IPROD_CODIGO = 999999 THEN // PRESTACAO DE SERVICO
    sMsg := cECF_Vende_item(iECF_Modelo,Zerar(sProd_barra,13),
                                       sProd_Nome,
                                       copy(sProd_unidade,1,2),
                                       sAliquota,
                                       rprod_qtde,
                                       rProd_preco,
                                       rprod_desconto,
                                       rProd_acrescimo,
                                       '$',
                                       rProd_total)

    else
    sMsg := cECF_Vende_item(iECF_Modelo,Zerar(inttostr(iProd_codigo),6),
                                       sProd_Nome,
                                       copy(sProd_unidade,1,2),
                                       sAliquota,
                                       rprod_qtde,
                                       rProd_preco,
                                       rprod_desconto*rprod_qtde,
                                       rProd_acrescimo*rprod_qtde,
                                       '$',
                                       rProd_total);

  if sMsg <> OK then
  begin
    Imprime_display(sMsg,clred,tiErro);
    sleep(1500);
    exit;
  end;

  // Registrar item no Grid
  i := grid.AddRow(1);
  grid.cell[0,grid.LastAddedRow].asstring := zerar(inttostr(iItem),4)+' '+
                                             zerar(inttostr(iProd_codigo),6)+' '+
                                             texto_justifica(sProd_Nome,15,' ',taEsquerda)+' '+
                                             texto_justifica(sprod_unidade,2,' ',taEsquerda)+
                                             texto_justifica(formatfloat(
                                                             '########0.000',rprod_qtde),
                                                             9,' ',taDireita)+
                                             texto_justifica(formatfloat(
                                                             '########0.00',rprod_preco),
                                                             8,' ',taDireita)+
                                             texto_justifica(formatfloat(
                                                             '########0.00',rprod_total),
                                                             8,' ',taDireita);


  // alimentar os campos invisiveis do grid com as informacoes do produto
  grid.cell[1,grid.LastAddedRow].asinteger := 1; // venda de item
  grid.cell[2,grid.LastAddedRow].asSTRING  := ZERAR(INTTOSTR(iItem),3);
  grid.cell[3,grid.LastAddedRow].asinteger := iProd_codigo;
  grid.Cell[4,grid.LastAddedRow].asstring  := sProd_nome;
  grid.Cell[5,grid.LastAddedRow].asfloat   := rprod_Qtde;
  grid.Cell[6,grid.LastAddedRow].asfloat   := rprod_Preco;
  grid.Cell[7,grid.LastAddedRow].asfloat   := rprod_desconto;
  grid.Cell[8,grid.LastAddedRow].asfloat   := rprod_acrescimo;
  grid.Cell[9,grid.LastAddedRow].asfloat   := rprod_Total;
  grid.Cell[10,grid.LastAddedRow].asfloat  := rProd_aliquota;
  grid.Cell[11,grid.LastAddedRow].asstring := sProd_CST;
  grid.cell[12,grid.LastAddedRow].AsString := sProd_unidade;
  grid.cell[13,grid.LastAddedRow].asinteger:=  0;
  grid.Cell[14,grid.LastAddedRow].asstring := sProd_Tamanho;
  grid.cell[15,grid.LastAddedRow].AsString := sProd_Cor;

  // registrar o desconto e acrescimo em outra linha
  if rprod_desconto > 0 then
  begin
    grid.AddRow(1);
    grid.cell[0,grid.LastAddedRow].asstring := '<i><FONT color="#FF0000">            '+
                                               'Desconto em R$ '+
                                               '          '+
                                               texto_justifica(formatfloat(
                                                               '###,###,##0.00',-rprod_desconto * rprod_qtde),
                                                               9,' ',taDireita)+'</i></FONT>';
    grid.cell[1,grid.LastAddedRow].asinteger := 4; // desconto
  end;
  if Rprod_acrescimo > 0 then
  begin
    grid.AddRow(1);
    grid.cell[0,grid.LastAddedRow].asstring := '<i><FONT color="#0000FF">            '+
                                               'Acréscimo em R$'+
                                               '          '+
                                               texto_justifica(formatfloat(
                                                               '###,###,##0.00',rprod_acrescimo * rprod_qtde),
                                                               9,' ',taDireita)+'</i></FONT>';
    grid.cell[1,grid.LastAddedRow].asinteger := 5; // acrescimo
  end;



  // lancar item no banco de dados temporario

  frmmodulo.spCupom_item_temp.close;
  frmmodulo.spCupom_item_temp.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger);
  frmmodulo.spCupom_item_temp.parambyname('cod_cupom').asstring := sNumero_Cupom;
  frmmodulo.spCupom_item_temp.parambyname('item').asinteger := grid.cell[2,i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
  frmmodulo.spCupom_item_temp.parambyname('unidade').asstring := grid.cell[12,i].asstring;
  frmmodulo.spCupom_Item_temp.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                  grid.cell[6,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat ;
  frmmodulo.spCupom_Item_temp.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
  frmmodulo.spCupom_Item_temp.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
  frmmodulo.spCupom_item_temp.parambyname('cst').asstring := grid.cell[11,i].asstring;
  frmmodulo.spCupom_item_temp.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
  frmmodulo.spCupom_item_temp.parambyname('cancelado').asinteger := grid.cell[13,i].asinteger;
  frmModulo.spCupom_Item_temp.parambyname('tamanho').AsString := grid.cell[14,i].AsString;
  frmModulo.spCupom_Item_temp.parambyname('cor').AsString := grid.cell[15,i].AsString;

  if (grid.cell[11,i].asstring = '060') or
     (grid.cell[11,i].asstring = '010') or
     (grid.cell[11,i].asstring = '070') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'F1'
  else
  if (grid.cell[11,i].asstring = '040') or
     (grid.cell[11,i].asstring = '030') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'I1'
  else
  if (grid.cell[11,i].asstring = '041') or
     (grid.cell[11,i].asstring = '050') or
     (grid.cell[11,i].asstring = '051') or
     (grid.cell[11,i].asstring = '090') then
       frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'N1'
  else
  if (grid.cell[11,i].asstring = 'ISS') then
     frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := '01S'+
       Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
  else
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      retorna_codigo_aliquota(grid.cell[10,i].asfloat);

  try
  frmmodulo.spCupom_item_temp.Prepare;
  frmmodulo.spCupom_item_temp.Execute;
  except
  end;
  
  // selecionar a linha incluida no grid
  grid.SelectLastRow;
  // focar no grid para ele ir para ultima linha incluida
  grid.SetFocus;
  ed_barra.SetFocus;

  // acumluar o item nas variaveis de totalizacao
  rTotal_Venda := rTotal_venda + rProd_total;
  Inc(iTotal_Itens);
  Inc(iItem);
  // lancar no dislpay o produto
  Imprime_display(sProd_NOme,clWhite,tiOk);
  Imprime_display_teclado(lb_produto.caption,
                          formatfloat('###,###,##0.000',rprod_qtde)+' x R$ '+
                          formatfloat('###,###,##0.000',rprod_preco)+' = R$ '+
                          formatfloat('###,###,##0.00',rprod_total));
  // atualizar os labels de totais e itens
  lb_item.Caption := inttostr(itotal_itens);
  lb_total.Caption := 'R$ '+formatfloat('###,###,##0.00',rTotal_venda);

                          //valor unitário         //qtde                 //valor unitário        //valor total
  //fsb_valorliquidoitem := grid.cell[6,i].asfloat-((grid.cell[5,i].asfloat*grid.cell[6,i].asfloat)-grid.cell[9,i].asfloat);

  fsb_valorliquidoitem := rprod_total;


  fsb_valorliquidocupom := fsb_valorliquidocupom+fsb_valorliquidoitem;


  scodprod := zerar(  inttostr(grid.cell[3,i].asinteger)  ,6);

  buscarcalcibpt(scodprod,fsb_valorliquidoitem, fsb_valorliquidocupom);




   ed_barra.text := '';
end;

// -------------------------------------------------------------------------- //
// Limpar os controles para receber uma nova venda/comando
procedure tFrmVenda.Limpa_controles();
begin
  sCli_Nome     := '';
  sCli_Endereco := '';
  sCli_Cidade   := '';
  sCli_uf       := '';
  scli_cep      := '';
  sCli_CPF      := '';
  sCli_Placa    := '';
  sCli_Km       := '';
  sCli_vendedor := '';

  sConsumidor_CPF := '';
  sConsumidor_Nome:= '';
  sConsumidor_Endereco := '';

  grid.ClearRows;
  grid_topo.ClearRows;
  ed_barra.Text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total_item.value := 0;
  lb_total.caption := 'R$ 0,00';
  lb_item.Caption := '0';
  Imprime_display('             C A I X A    L I V R E',clWhite,tiLivre);
  ed_barra.setfocus;
end;

// -------------------------------------------------------------------------- //
// funcao para alimentar o display superior da tela
procedure tFrmVenda.Imprime_display(texto:string;cor_da_fonte:tcolor;Imagem:Tipo_Imagem);
begin
  // armazena os dados atuais do display para enventual uso
  sTexto_anterior := lb_produto.Caption;
  clCor_anterior := lb_produto.Font.color;
  if img_erro.Visible    = true then TiImagem_anterior := tiErro;
  if img_alerta.visible  = true then TiImagem_anterior := tiAlerta;
  if img_info.Visible    = true then TiImagem_anterior := tiInfo;
  if img_livre.Visible   = true then TiImagem_anterior := tiLivre;
  if img_ok.Visible      = true then TiImagem_anterior := tiOk;
  if img_fechado.Visible = true then TiImagem_anterior := tiFechado;
  if img_excluir.visible = true then TiImagem_anterior := tiExcluir;
  if img_pergunta.visible= true then TiImagem_anterior := tiPergunta;
  if img_cliente.visible = true then TiImagem_anterior := tiCliente;
  if img_pgto.visible    = true then TiImagem_anterior := tiPgto;
  if img_peso.visible    = true then TiImagem_anterior := tiPeso;


  // inicia a impressao do display
   img_erro.Visible    := false;
   img_alerta.visible  := false;
   img_info.Visible    := false;
   img_livre.Visible   := false;
   img_ok.Visible      := false;
   img_fechado.Visible := false;
   img_excluir.visible := false;
   img_pergunta.visible:= false;
   img_cliente.visible := false;
   img_pgto.visible    := false;
   img_peso.Visible    := false;
   if Imagem = tiLivre    then img_livre.Visible   := true;
   if Imagem = tiErro     then img_erro.Visible    := true;
   if Imagem = tiAlerta   then img_alerta.visible  := true;
   if Imagem = tiInfo     then img_info.Visible    := true;
   if Imagem = tiOk       then img_ok.Visible      := true;
   if Imagem = tiFechado  then img_fechado.Visible := true;
   if Imagem = tiExcluir  then img_excluir.Visible := true;
   if Imagem = tiPergunta then img_pergunta.Visible:= true;
   if Imagem = tiCliente  then img_cliente.Visible := true;
   if Imagem = tiPgto     then img_pgto.Visible    := true;
   if Imagem = tiPeso     then img_peso.visible    := true;
   lb_produto.Caption := texto;
   lb_produto.Font.Color := cor_da_fonte;



   lb_produto.Font.Size := 28;
   application.ProcessMessages;
   // redimensionando o tamanho do label para caber dentro do display independente do
   // tamanho do texto;
   try
     while lb_produto.Width > 668 do
     begin
       lb_produto.Font.Size := lb_produto.Font.Size - 1;
     end;
   except
     lb_produto.Font.Size := 28;
   end;

   Imprime_display_teclado(COPY(trimleft(trimright(lb_produto.caption)),1,40),'');
end;

// -------------------------------------------------------------------------- //
procedure tfrmVenda.Imprime_display_anterior();
begin
  Imprime_display(sTexto_anterior,clCor_anterior,TiImagem_anterior);
end;

// -------------------------------------------------------------------------- //
// Funcao para iniciar a venda
function tFrmVenda.Abre_Venda():boolean;
begin
  try


    // VERIFICAR O TOTALIZADOR

    if not compara_totalizador then
    begin

      result := false;
      close;
      exit;
    end;


    if (bLanca_pre_venda) or
       (bLanca_os) or
       (bLanca_abastecimento)  then
    begin
      if blanca_pre_venda then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from cliente where codigo = '+IntToStr(iPre_venda_cliente));
        query.open;
      end
      else
      begin
        if blanca_os then
        begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from cliente where codigo = '+IntToStr(iOs_cliente));
          query.open;
        end;
      end;

      if (blanca_os) or (blanca_pre_venda) then
      begin
        sConsumidor_CPF := query.fieldbyname('cpf').asstring;
        sConsumidor_Nome := query.fieldbyname('nome').asstring;
        sConsumidor_Endereco := query.fieldbyname('endereco').asstring+' '+
                                query.fieldbyname('bairro').asstring+'  '+
                                query.fieldbyname('cidade').asstring+'  '+
                                query.fieldbyname('uf').asstring;
      end
      else
      begin
        sConsumidor_CPF := '';
        sConsumidor_Nome := '';
        sConsumidor_Endereco := '';
      end;
    end
    else
    begin
      if bIdentifica_consumidor then
      begin
        frmIdentifica := TfrmIdentifica.Create(self);
        frmIdentifica.ShowModal;
      end
      else
      begin
        //verifica se informação digitada é cpf
        if (not bidentcpfcnpj) and (length(ed_barra.Text) = 11) and  testacpf(ed_barra.Text)     then
           begin

             sConsumidor_CPF := ed_barra.Text;

             query.close;
             query.sql.clear;
             query.sql.add('select * from cliente where cpf = '+  quotedstr( ed_barra.Text )   );
             query.open;
             if query.RecordCount > 0 then
                begin

                  sConsumidor_Nome := query.fieldbyname('nome').asstring;
                  sConsumidor_Endereco := query.fieldbyname('endereco').asstring+' '+
                                          query.fieldbyname('bairro').asstring+'  '+
                                          query.fieldbyname('cidade').asstring+'  '+
                                          query.fieldbyname('uf').asstring;



                end
             else
                begin
                  sConsumidor_Nome := '';
                  sConsumidor_Endereco := '';


                end;


           ed_barra.Text := '';
           bidentcpfcnpj := true;
           exit;



           end
        else
           begin

             if (not bidentcpfcnpj) and (length(ed_barra.Text) = 14) and  verificacnpj(ed_barra.Text)  then
                begin

                  sConsumidor_CPF := ed_barra.Text;

                  query.close;
                  query.sql.clear;
                  query.sql.add('select * from cliente where cpf = ' +  quotedstr( ed_barra.Text )  );
                  query.open;
                  if query.RecordCount > 0 then
                     begin

                       sConsumidor_Nome := query.fieldbyname('nome').asstring;
                       sConsumidor_Endereco := query.fieldbyname('endereco').asstring+' '+
                                               query.fieldbyname('bairro').asstring+'  '+
                                               query.fieldbyname('cidade').asstring+'  '+
                                               query.fieldbyname('uf').asstring;


                     end
                  else
                     begin

                       sConsumidor_Nome := '';
                       sConsumidor_Endereco := '';


                     end;



                  ed_barra.Text := '';
                  bidentcpfcnpj := true;
                  exit;



                end;


           end;



      end;





    end;



    IF iECF_Modelo = 2 THEN // DARUMA - COMANDO PROVISORIO
    BEGIN
      sConsumidor_CPF := '';
      sConsumidor_Nome := '';
      sConsumidor_Endereco := '';
    END;

      sMsg := cECF_Abre_Cupom(
                               iECF_Modelo,
                               sConsumidor_CPF,
                               sConsumidor_Nome,
                               sConsumidor_Endereco,
                               bIdentifica_Consumidor);

    if  sMsg <> OK then
    begin
      Imprime_display(smsg,clred,tiErro);
      sleep(1500);
      result := false;
    end
    else
    begin
      // buscar variaveis do ECF
      // numero do cupom

      sMsg := cECF_Numero_Cupom(iECF_Modelo);

      if Length(sMsg) <> 6 then
      begin
        Imprime_display(smsg,clred,tiErro);
        result := false;
        exit;
      end
      else
      begin
        sNumero_Cupom := sMsg;
        sNumero_Venda := sMsg;
      end;

      // numero do contador de cupom fiscal
      sMsg := cECF_Numero_Contador_Cupom(iECF_Modelo);

      if Length(sMsg) <> 6 then
      begin
        Imprime_display(smsg,clred,tiErro);
        result := false;
        exit;
      end
      else
        sNumero_contador_cupom := sMsg;

      // temporario
      try
      frmmodulo.spCodigo_Global.Prepare;
      frmmodulo.spCodigo_Global.Execute;
      except
      end;
      // hora do cupom
      sMsg := copy(cECF_Data_Hora(iECF_Modelo),12,8);

      try
        hHora_Cupom := strtotime(smsg);
      except
        Imprime_display('Hora inválida!',clred,tiErro);
        result := false;
        exit;
      end;

      // lancar abertura do cupom na tabela temporaria

      try
      frmModulo.spCupom_Temp.Close;
      frmModulo.spCupom_Temp.ParamByName('numero').asstring := sNumero_Cupom;
      frmModulo.spCupom_Temp.ParamByName('ccf').asstring := sNumero_contador_cupom;
      frmModulo.spCupom_Temp.ParamByName('ecf').asstring := sECF_Serial;
      frmModulo.spCupom_Temp.ParamByName('data').AsDate := dData_Sistema;
      frmModulo.spCupom_Temp.ParamByName('hora').AsTime := hHora_Cupom;
      frmModulo.spCupom_temp.Prepare;
      frmModulo.spCupom_temp.Execute;
      except
      end;

      Imprime_display('ABRINDO O CUPOM...',clwhite,tiInfo);
      // alimentar as variaveis de status
      bVenda := true;
      bTotalizado := false;
      bPago1 := false;
      bPago2 := false;
      bPago3 := false;
      bFinalizado := false;
      bidentcpfcnpj := false;


      //limpa variáveis média de tributação
      fsb_valorliquidocupom := 0;
      fsb_valorliquidoitem := 0;

      porcibpt := 0;
      vlribpt  := 0;


      // alimentar as variaveis de totais
      rTotal_Venda := 0;
      iTotal_itens := 0;
      lb_item.Caption := '000';
      lb_total.Caption := 'R$ 0,00';
      iItem := 1;
      // imprimir no grid o cabechalho do cupom
      grid_topo.ClearRows;
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      datetostr(dData_sistema)+'  '+timetostr(hHora_Cupom)+
                      '                         COO: '+sNumero_cupom;
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '--------------------------------------------------------';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '<B><FONT size="12">             CUPOM FISCAL</FONT></B>';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      'ITEM CÓDIGO DESCRIÇÃO       UN.    QTDE.  PREÇO   TOTAL';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '--------------------------------------------------------';
      // limpar o grid dos itens
      grid.ClearRows;

      if bBusca_foto_produto then
      begin
        img_shape.Visible := true;
        img_produto.Picture := nil;
      end;

      result := true;
    end;
  except
    result := false;
  end;
end;

// -------------------------------------------------------------------------- //
// Funcao para truncar o valor para nao dar diferencao no ECF
function tfrmVenda.Truncar_Valor(valor:real):real;
var txt_desconto : string;
i : integer;
begin
  txt_desconto := formatfloat('#############0.00000000000',valor);
  i := pos(',',txt_desconto);
  if i > 0 then
  begin
    txt_desconto :=
    copy(txt_desconto,1,i-1)+','+
    copy(txt_desconto,i+1,2);
    result := strtofloat(txt_desconto);
  end
  else
    result := valor;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // verificar se ha cupom aberto, nao permitindo a saida do sistema
  if bVenda then
  begin
    Imprime_display('CUPOM ABERTO!',clYellow,tiAlerta);
    sleep(1500);
    Imprime_display('INFORME O PRODUTO...',clWhite,tiLivre);
    ed_barra.SetFocus;
    abort;
  end
  else
  begin
    Imprime_display_teclado('IGA INFORMATICA', 'DataPDV 2.0');
    if iteclado_modelo = 1 then
    begin
      CloseTec44;
    end;

    action := cafree;
  end;

  // CGT: Habilita as teclas de atalho da tela de movimentos
  frmPrincipal.popMovimento.Items.Enabled := True;
  voltaResolucao(a , b);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormCreate(Sender: TObject);
begin

   If (Screen.Width <> 800)and(Screen.Height <> 600) then
{   if (messageDlg('Este programa foi desenvolvido em 800 X 600. Ele vai rodar normalmente nas suas configurações, mas não vai ficar posicionado corretamete em seu monitor! Deseja Alterar suas configurações de vídeo agora?',
       mtConfirmation, [mbYes, mbNo], 0)=mrYes) then    }
   TrocaResolucao(800, 600, a , b);

 // CGT: Desabilita as teclas de atalho da tela de movimentos
 frmPrincipal.popMovimento.Items.Enabled := False;

 left := 0;
 top := 0;

 // data e hora da ultima carga
 if sCarga_data <> '' then
 begin
  lb_carga.Caption := 'Carga: '+sCarga_data+' às '+scarga_hora;
 end
 else
   lb_carga.Caption := '';

  // verificar a ativacao/desativacao da pre-venda e ordem de servico
  menu_Prevenda.Visible := bPermite_Prevenda;
  Menu_os.Visible := bPermite_OS;


  pn_tampa.visible := false;
  pn_tampa.Align := alClient;

  grid.ClearRows;

  // alimentar os combos com as formas de pagamento
  cb_forma1.Items.Clear;
  cb_forma2.Items.Clear;
  cb_forma3.Items.Clear;
  frmmodulo.tbForma_Pgto.First;
  while not frmModulo.tbForma_Pgto.Eof do
  begin
    sMsg := TrimLeft(TrimRight(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring));
    if (sMsg = '') or
       (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
       (ansiuppercase(sMsg) = 'TROCO') Then
    begin
       // nao copiar
    end
    else
    begin
      cb_forma1.Items.Add(sMsg);
      cb_forma2.Items.Add(sMsg);
      cb_forma3.Items.Add(sMsg);
    end;
    frmModulo.tbForma_Pgto.Next;
  end;
  frmModulo.tbForma_Pgto.Close;


  // verificar se a funcao de buscar a foto do produto esta habilitada
  if bBusca_foto_produto then
  begin
    img_produto.Left := 65;
    img_produto.Top := 322;

    img_borda.Top := 312;
    img_borda.Left := 52;

    img_shape.Top := 319;
    img_shape.Left := 62;

    img_fundo.Top := 309;
    img_fundo.Left := 51;

    img_fundo.Visible := true;
    img_borda.Visible := true;
    img_shape.Visible := false;
    img_produto.Visible := true;
    img_produto.Picture := nil;
  end
  else
  begin
    img_fundo.Visible := false;
    img_borda.Visible := false;
    img_shape.Visible := false;
    img_produto.Visible := false;
  end;

  pn_senha_cancelar.Top := 114;
  pn_cancelar_item.Top := 114;

  // verificar se ha teclado instaldao
  // modelo 1 - Gertec tec 44 com display
  if iTeclado_modelo = 1 then
  begin
    // abrir a comunicacao
    OpenTec44;
    Imprime_display_teclado('IGA Informatica :: DataPDV 2.0','Terminal iniciado com sucesso!');
  end;


end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraKeyPress(Sender: TObject; var Key: Char);
var bDados_balanca : boolean;
sx_barra : string;
begin
  if key = #13 then
  begin
    sx_barra := Trim(ed_barra.text);

    if sx_barra = '' then
    begin
     ed_barra.setfocus;
     exit;
    end;

    if timer_balanca.Enabled then
    begin
      timer_balanca.Enabled := false;
       try
         frmmodulo.balanca.desativar;
         frmmodulo.Balanca.Ativo := false;
       except
       end;
       bDados_balanca := true;
    end
    else
      bDados_balanca := false;

    if not bVenda then
    begin
      try
       BlockInput(TRUE);
        // verificar o serial do ecf
        if not verifica_ecf then
        begin
          close;
          exit;
        end;
        // Abrir o cupom fiscal
        // bloquear ao teclado

        if not Abre_Venda then
        begin
          bLanca_pre_venda := false;
          bLanca_OS := false;
          bLanca_Mesa := false;
          bLanca_Abastecimento := false;
          // Caso o comando de abertura de venda retornou false, abortar o processo;
          Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
          exit;
        end;
      finally
        // desbloquear o teclado
        BlockInput(FALSE);
      end;
    end;


     iPesquisa_produto := 1;
    // fazer a busca do produto
    sProd_barra := ed_barra.text;

    If frmVenda.Localizar_Produto(ed_barra.Text) then
    begin

      if bBusca_foto_produto then
      begin
        if FileExists(sPasta_foto_produto+'\'+sProd_barra+'.jpg') then
          img_produto.Picture.LoadFromFile(sPasta_foto_produto+'\'+sProd_barra+'.jpg')
        else
          img_produto.Picture := nil;
      end;

      // achou o produto
      // alimentar os edits da tela
      if bDados_balanca then
      begin
        rprod_qtde := rBal_peso;
        // se for pesado
        if bTruncar_valor then
          rprod_total := Truncar_Valor(rprod_qtde * rprod_preco)
        else
          rprod_total := rprod_qtde * rprod_preco;

        ed_qtde.value       := rprod_qtde;
        ed_unitario.Value   := rProd_preco;
        ed_total_item.Value := rProd_total;
      end
      else
      begin
        // se for normal
        ed_qtde.value       := rProd_qtde;
        ed_unitario.Value   := rProd_preco;
        ed_total_item.Value := rProd_total;
      end;
      // verificar se o sistema permite edicao dos edit's de valores
      if bMuda_qtde or bMuda_unitario or bMuda_total then
      begin
        Imprime_display(sProd_nome,clWhite,tiInfo);
        ed_qtde.ReadOnly := false;
        ed_unitario.ReadOnly := false;
        ed_total_item.ReadOnly := false;
        if bMuda_qtde then ed_qtde.ReadOnly := false else ed_qtde.ReadOnly := true;
        if bMuda_unitario then ed_unitario.ReadOnly := false else ed_unitario.ReadOnly := true;
        if bMuda_total then ed_total_item.ReadOnly := false else ed_total_item.ReadOnly := true;

        IF bProd_promocao THEN
        BEGIN
          ed_unitario.ReadOnly := TRUE;
          ed_total_item.ReadOnly := TRUE;
        END;

        ed_qtde.setfocus;
        exit;
      end
      else
      begin
        // verificar se existe algum valor zerado
        if (rprod_total <= 0) or
           (rprod_qtde  <= 0) or
           (rProd_preco <= 0) then
           begin
             Imprime_display('TOTAL NÃO PODE SER ZERADO OU NEGATIVO!',CLRED,TIERRO);
             SLEEP(2000);
             EXIT;
           end;

        ed_barra.text := '';
        Registra_Item;                // registra item no ecf e na tela função cECF_VendeItem
      end;
    end
    else
    begin
      // nao achou o produto
      // lancar no display do produto
      if bidentcpfcnpj then
         Imprime_display('N.F. PAULISTA, INFORME PRODUTO!',clWhite,tiInfo)
      else
         Imprime_display('PRODUTO NÃO ENCONTRADO!',clRed,tiErro);
      ed_barra.SelectAll;
    end;
  end
  else
  begin
    if ( key  in ['0'..'9','a'..'z','A'..'Z']) or (key = '*') then
    begin
      if blimpa_edit_display then
      begin
          If iTeclado_Modelo = 1 then
          begin
            Imprime_display_teclado('','');
            blimpa_edit_display := false;
            CarRet;
          end;

          if iteclado_modelo = 1 then
          begin
            strpcopy(@men,key);
            DispStr(@men);
          end;
      end;
    end
    else
    begin
      if (key = #7) or (key = #8) or (key = #32) then
      else
      Abort;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CancelarItem1Click(Sender: TObject);
begin
  // verificar se existe um cupom aberto
  if bVenda then
  begin
    // verificar se existe itens lancados
    if iTotal_Itens > 0 then
    begin
      Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
      ed_cancelar_item.Visible := true;
      lb_cancelar_item.Caption := 'Número do Item:';
      pn_cancelar_item.Visible := true;
      pn_cancelar_item_botoes.Visible := false;
      ed_cancelar_item.IntValue := 0;
      ed_cancelar_item.SetFocus;
      ed_cancelar_item.SelectAll;
    end
    else
    begin
      Imprime_display('NÃO EXISTEM ITENS LANÇADOS!',CLRED,tiErro);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemEnter(Sender: TObject);
begin
  if iTeclado_Modelo = 1 then
  begin
    strpcopy(@men,'Informe o numero do item:');
    DispStr(@men);
    LineFeed;
    CarRet;
  end;


  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
  PopupMenu := nil;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  if not bsair_campo then ed_cancelar_item.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemKeyPress(Sender: TObject;
  var Key: Char);
var  iLinha : integer;
sItem_c : string;
begin

  if key = #13 then
  begin
     BlockInput(true);


     sItem_c := zerar(ed_cancelar_item.text,3);


    // confirmacao do cancelamento do item
    // Localizar o item no grid
    if Grid.FindText(2, sItem_c,[soCaseInsensitive])  then
    begin
      // Encontrou o item
      iLinha := grid.SelectedRow;
      // Fazer nova busca para achar o mesmo item no grid, caso jah foi cancelado
      if grid.SearchNext(2,sItem_C) then
      begin
         // Comparar o novo item encontrado, verificar se eh o mesmo
         if grid.SelectedRow = iLinha then
         begin
           //Confirmação do cancelamento
           Imprime_display('Cancelar: '+zerar(ed_cancelar_item.text,3)+' '+
                          copy(grid.Cell[4,grid.SelectedRow].asstring,1,15)+' '+
                          formatfloat('###,###,##0.000',
                                       grid.Cell[5,grid.SelectedRow].asfloat)+' x '+
                          'R$ '+formatfloat('###,###,##0.00',
                                       grid.Cell[6,grid.SelectedRow].asfloat)+' = '+
                          'R$ '+formatfloat('###,###,##0.00',
                                       grid.Cell[9,grid.SelectedRow].asfloat),
                           clwhite,tiExcluir);


           bsair_campo := true;
           // mostra o panel com os botoes SIM e NAO
           ed_cancelar_item.Visible := false;
           lb_cancelar_item.caption := 'Confirma?';


           pn_cancelar_item_botoes.visible := true;

           BlockInput(false);
           bt_cancelar_item_sim.setfocus;
         end
         else
         begin
           // item jah foi cancelado, volta para o edit de cancelamento de item
            Imprime_display('ITEM JÁ CANCELADO!',CLRED,TIERRO);
            SLEEP(1000);
            Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
            // selecionar a linha incluida no grid
            grid.SelectLastRow;
            // focar no grid para ele ir para ultima linha incluida
            grid.SetFocus;

            BlockInput(false);
            ed_cancelar_item.Setfocus;
            ed_cancelar_item.SelectAll;
         end;
      end;

    end
    else
    begin
      // item não encontrado. Volta para o edit de cancelamento de item
      Imprime_display('ITEM NÃO ENCONTRADO!',CLRED,TIERRO);
      SLEEP(1000);
      Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
      BlockInput(false);
      ed_cancelar_item.Setfocus;
      ed_cancelar_item.SelectAll;
    end;

  end
  else
  begin
    if key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
      pn_cancelar_item.Visible := FALSE;
      BlockInput(false);
      ED_BARRA.SETFOCUS;
    end
    else
    begin
      if iTeclado_Modelo = 1 then
      begin
        strpcopy(@men,key);
        DispStr(@men);
      end;
    end;
  end;

{
  if key = #13 then
  begin
    // confirmacao do cancelamento do item
    // Localizar o item no grid
    if Grid.FindText(2, ed_cancelar_item.text,[soCaseInsensitive])  then
    begin
      // Encontrou o item
      iLinha := grid.SelectedRow;
      // Fazer nova busca para achar o mesmo item no grid, caso jah foi cancelado
      if grid.SearchNext(2,ed_cancelar_item.text) then
      begin
         // Comparar o novo item encontrado, verificar se eh o mesmo
         if grid.SelectedRow = iLinha then
         begin
           //Confirmação do cancelamento
           Imprime_display('Cancelar: '+zerar(ed_cancelar_item.text,3)+' '+
                          copy(grid.Cell[4,grid.SelectedRow].asstring,1,15)+' '+
                          formatfloat('###,###,##0.000',
                                       grid.Cell[5,grid.SelectedRow].asfloat)+' x '+
                          'R$ '+formatfloat('###,###,##0.00',
                                       grid.Cell[6,grid.SelectedRow].asfloat)+' = '+
                          'R$ '+formatfloat('###,###,##0.00',
                                       grid.Cell[9,grid.SelectedRow].asfloat),
                           clwhite,tiExcluir);


           bsair_campo := true;
           // mostra o panel com os botoes SIM e NAO
           ed_cancelar_item.Visible := false;
           lb_cancelar_item.caption := 'Confirma?';
           pn_cancelar_item_botoes.visible := true;
           bt_cancelar_item_sim.setfocus;
         end
         else
         begin
           // item jah foi cancelado, volta para o edit de cancelamento de item
            Imprime_display('ITEM JÁ CANCELADO!',CLRED,TIERRO);
            SLEEP(1000);
            Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
            ed_cancelar_item.Setfocus;
            ed_cancelar_item.SelectAll;
         end;
      end;

    end
    else
    begin
      // item não encontrado. Volta para o edit de cancelamento de item
      Imprime_display('ITEM NÃO ENCONTRADO!',CLRED,TIERRO);
      SLEEP(1000);
      Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
      ed_cancelar_item.Setfocus;
      ed_cancelar_item.SelectAll;
    end;

  end
  else
  begin
    if key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
      pn_cancelar_item.Visible := FALSE;
      ED_BARRA.SETFOCUS;
    end
    else
    begin
      if iTeclado_Modelo = 1 then
      begin
        strpcopy(@men,key);
        DispStr(@men);
      end;
    end;
  end;

  }
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_item_naoClick(Sender: TObject);
begin
  // aborta o cancelamento do item
  Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
  pn_cancelar_item.Visible := FALSE;
  ED_BARRA.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraEnter(Sender: TObject);
begin
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  blimpa_edit_display := true;
  ed_barra.SelectAll;
  sProd_barra := '';
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_item_simClick(Sender: TObject);
begin
  If bSenha_Cancel_Item then
  begin
    pn_senha_cancelar.Visible := true;
    lb_cancelar.Caption := 'Cancelar Item';
    ed_senha.text := '';
    ed_senha.setfocus;
  end
  else
  begin
    Cancela_Item(ed_cancelar_item.text);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.MenuFiscal2Click(Sender: TObject);
begin

  if NOT bVenda then
  begin
    // caso nao haja cupom aberto, aciona o menu fiscal
    frmmenu_fiscal := tfrmMenu_fiscal.create(self);
    frmMenu_fiscal.showModal;
  end
  else
  begin
    // venda aberta, nao permitir o uso do menu fiscal
    Imprime_display('DOCUMENTO SENDO EMITIDO!',CLYELLOW,tiAlerta);
    SLEEP(1000);
    Imprime_display('INFORME O PRODUTO...',clWhite,tiLIVRE);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Retornar1Click(Sender: TObject);
begin
  ed_barra.setfocus;
    if timer_balanca.Enabled then
    begin
      timer_balanca.Enabled := false;
      frmmodulo.Balanca.Ativo := false;
      frmmodulo.balanca.Desativar;
      Imprime_display('Informe o Produto...', clwhite, tiLivre);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Sair1Click(Sender: TObject);
begin
  if application.messagebox('Confirma a saída do sistema?','Atenção',MB_YESNO+MB_ICONWARNING+
    MB_DEFBUTTON2) = idyes then
    CLOSE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CancelarCupom1Click(Sender: TObject);
begin
  if bVenda then
  begin
    //Caso exista cupom aberto
    if bSenha_Cancel_Cupom then
    begin
      pn_senha_cancelar.visible := true;
      lb_cancelar.Caption := 'Cancelar Cupom';
      ed_senha.text := '';
      ed_senha.setfocus;
    end
    else
    begin
      Cancela_cupom_aberto;
    end;
  end
  else
  begin
      sMsg := cECF_Numero_Cupom(iECF_Modelo);
      if Length(sMsg) <> 6 then
      begin
        Imprime_display(smsg,clred,tiErro);
        exit;
      end
      else
        sNumero_Cupom := sMsg;
    //Cupom jah fechado, cancelar o ultimo cupom
    //Caso exista cupom aberto
    if bSenha_Cancel_Cupom then
    begin
      pn_senha_cancelar.visible := true;
      lb_cancelar.Caption := 'Cancelar Cupom';
      ed_senha.text := '';
      ed_senha.setfocus;
    end
    else
    begin
      Cancela_cupom_fechado;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraExit(Sender: TObject);
begin
  // Desativa os comandos do Menu OPCOES
  PopupMenu := nil;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREEnter(Sender: TObject);
begin


  // liberar a tecla F#
  baltera_tipo_desconto := true;
  // pintar o shape do edit de azul
  PS_DESC_ACRE.Brush.COLOR := $00DD6F00;
    Imprime_display('Informe o Desconto em %... (F3 Altera)',clwhite,tiPgto);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,'0,00');
     DispStr(@men);
  end;


end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREExit(Sender: TObject);
begin

  //bloquear a tecla F3
  baltera_tipo_desconto := false;
  // verificar se o pn_fechamento jah fechou
  if not pn_fechamento.Visible then exit;

  // Nao permitir lancar valor negativo
  if ed_desc_acre.value < 0 then
  begin
    Imprime_display('Valor não pode ser negativo!',clred,tiErro);
    sleep(2000);
    ed_desc_acre.SetFocus;
    Imprime_display_anterior;
    exit;
  end;
  PS_DESC_ACRE.Brush.COLOR := CLBLACK;

  rTotal_Desconto := 0;
  rTotal_Acrescimo := 0;

  if ED_DESC_ACRE.Value > 0 then
  begin
    case cb_desc_acre.ItemIndex of
    0 : begin // Desconto por %
          if bTruncar_valor then
            rTotal_Desconto := truncar_valor(rTotal_Venda * (ed_desc_acre.value/100))
          else
            rTotal_Desconto := (rTotal_Venda * (ed_desc_acre.value/100));



          ed_total_pagar.value := rTotal_Venda - rTotal_desconto;
        end;
    1 : begin  // Desconto por R$
          rtotal_desconto := ed_desc_acre.value;
          ed_total_pagar.value := rTotal_Venda - rtotal_desconto;
        end;
    2 : begin  // Acrescimo por %

          if bTruncar_valor then
            rTotal_acrescimo := truncar_valor(rTotal_Venda * (ed_desc_acre.value/100))
          else
            rtotal_acrescimo := (rTotal_Venda * (ed_desc_acre.value/100));
          ed_total_pagar.value := rTotal_Venda + rtotal_acrescimo;
        end;
    3 : begin  // Acrescimo por R$
          rtotal_acrescimo := ed_desc_acre.value;
          ed_total_pagar.value := rTotal_Venda + rtotal_acrescimo ;
        end;
    end;
    if bTruncar_valor then ed_total_pagar.value := Truncar_Valor(ed_total_pagar.Value);
    // alimentar os valores
    ed_troco.value := 0;
    ed_forma1.value := ed_total_pagar.value;
    ed_totalizador.Value := ed_total_pagar.value;
    // soh aparecer uma forma de pagametno
    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
    sp_forma2.Visible := false;
    img_forma2.visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
    sp_forma3.Visible := false;
    img_forma3.visible := false;
    ed_forma2.value := 0;
    ed_forma3.value := 0;

  end
  else
  begin
    // alimentar os valores
    ed_total_pagar.Value := rTotal_Venda;
    ed_totalizador.Value := rTotal_Venda;
    ed_troco.value := 0;
    // soh aparecer uma forma de pagametno
    ed_forma1.value := rTotal_venda;

    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
    sp_forma2.Visible := false;
    img_forma2.visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
    sp_forma3.Visible := false;
    img_forma3.visible := false;
    ed_forma2.value := 0;
    ed_forma3.value := 0;
  end;


end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FecharCupom1Click(Sender: TObject);
begin
  if bVenda then
  begin
    // verificar se o valor da venda eh maior que zero
    if rTotal_Venda <= 0 then
    begin
      Imprime_display('CUPOM ESTÁ ZERADO!',clRed,tiErro);
      SLEEP(1000);
      Imprime_display_anterior;
      EXIT;
    end;


    img_borda.Visible := false;
    img_shape.Visible := false;
    img_produto.Visible := false;
    img_fundo.visible := false;


    // ativar o panel de fechamento
    pn_fechamento.Enabled := true;
    pn_fechamento.Top := 114;
    pn_fechamento.Left:= 38;
    img_fechamento.top := 102;
    img_fechamento.left := 15;
    cb_desc_acre.ItemIndex := 0;
    // alimentar os valores
    ED_DESC_ACRE.Value := 0;
    ed_total_pagar.Value := rTotal_Venda;
    ed_totalizador.Value := rTotal_Venda;
    ed_troco.value := 0;
    ed_forma1.value := rTotal_venda;

    if bLanca_pre_venda then
    begin
      if rPre_venda_desconto > 0 then
      begin
        cb_desc_acre.ItemIndex := 1;
        ED_DESC_ACRE.Value := rPre_venda_desconto;
        ed_total_pagar.Value := rTotal_Venda - ED_DESC_ACRE.value;
        ed_totalizador.value := ed_total_pagar.value;
        ed_troco.value := 0;
        ed_forma1.Value :=ed_total_pagar.value;
      end
      else
      begin
        if rpre_venda_acrescimo > 0 then
        begin
          cb_desc_acre.ItemIndex := 3;
          ED_DESC_ACRE.Value := rPre_venda_acrescimo;
          ed_total_pagar.Value := rTotal_Venda + ED_DESC_ACRE.value;
          ed_totalizador.value := ed_total_pagar.value;
          ed_troco.value := 0;
          ed_forma1.Value :=ed_total_pagar.value;
        end;
      end;
    end;
    // soh aparecer uma forma de pagametno
    cb_forma1.ItemIndex := 0;
    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
    sp_forma2.Visible := false;
    img_forma2.visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
    sp_forma3.Visible := false;
    img_forma3.visible := false;

    sp_forma1.brush.color := clblack;
    sp_forma2.brush.color := clblack;
    sp_forma3.brush.color := clblack;

    cb_forma2.itemindex := -1;
    cb_forma3.itemindex := -2;

    ed_forma2.value := 0;
    ed_forma3.value := 0;
    pn_principal.Enabled := false;
    img_fechamento.visible := true;
    pn_fechamento.Visible := true;
    ed_desc_acre.DisplayFormat := '##0.00%';
    ED_DESC_ACRE.SetFocus;
    // mudar o menu para utilizar as teclas de atalho no fechamento
    FRMVENDA.PopupMenu := pop_fechamento;
  end
  else
  begin
    Imprime_display('Não há cupom aberto!',clyellow,tiAlerta);
    sleep(1000);
    Imprime_display_anterior;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_pagarEnter(Sender: TObject);
begin
  sp_total_pagar.Brush.COLOR := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1Enter(Sender: TObject);
begin
  sp_forma1.Brush.COLOR := $00DD6F00;

  Imprime_display('Informe o valor para '+cb_forma1.text+'...(F11 Retorna)',clwhite,tiPgto);

  if iTeclado_modelo = 1 then
  begin
    blimpa_edit_display := true;
    strpcopy(@men,formatfloat('###,###,##0.00',ed_forma1.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2Enter(Sender: TObject);
begin
  sp_forma2.Brush.COLOR := $00DD6F00;
  Imprime_display('Informe o valor para '+cb_forma2.text+'...(F11 Retorna)',clwhite,tiPgto);

  if iTeclado_modelo = 1 then
  begin
    strpcopy(@men,formatfloat('###,###,##0.00',ed_forma2.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3Enter(Sender: TObject);
begin
  sp_forma3.Brush.COLOR := $00DD6F00;
  Imprime_display('Informe o valor para '+cb_forma3.text+'...(F11 Retorna)',clwhite,tiPgto);

  if iTeclado_modelo = 1 then
  begin
    strpcopy(@men,formatfloat('###,###,##0.00',ed_forma3.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_totalizadorEnter(Sender: TObject);
begin
  sp_totalizador.Brush.COLOR := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoEnter(Sender: TObject);
begin
  sp_troco.Brush.COLOR := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_pagarExit(Sender: TObject);
begin
  sp_total_pagar.Brush.COLOR := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1Exit(Sender: TObject);
begin
  try

    // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then exit;
    if ed_forma1.value >= ed_total_pagar.value then
    begin
      // forma de pagamento atingiu ou ultrapassou o valor da venda
      // esconder os demais edits de forma de pagamento e focar no bota gravar
      ed_totalizador.value := ed_forma1.value;
      cb_forma2.Visible := false;
      ed_forma2.Visible := false;
      sp_forma2.Visible := false;
      img_forma2.visible := false;
      cb_forma3.Visible := false;
      ed_forma3.Visible := false;
      sp_forma3.Visible := false;
      img_forma3.visible := false;
      cb_forma2.itemindex := -1;
      cb_forma3.itemindex := -2;
      ed_forma2.value := 0;
      ed_forma3.value := 0;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      bt_confirmar_fechamento.setfocus;
    end
    else
    begin
      ed_totalizador.Value :=
      ed_forma1.value +
      ed_forma2.value +
      ed_forma3.value ;

      if not cb_forma2.Visible then
      begin
        cb_forma3.Visible := false;
        ed_forma3.Visible := false;
        sp_forma3.Visible := false;
        img_forma3.visible := false;
        cb_forma3.itemindex := -2;
        ed_forma3.value := 0;
        cb_forma2.Visible := true;
        ed_forma2.Visible := true;
        sp_forma2.Visible := true;
        img_forma2.visible := true;

        // acrestar um no combo da forma, caso seja a ultima, retorna para a primeira
        if (cb_forma1.ItemIndex = (cb_forma1.Items.Count - 1)) then
          cb_forma2.ItemIndex := 0
        else
          cb_forma2.ItemIndex := cb_forma1.ItemIndex + 1;

        ed_forma2.value := ed_total_pagar.value - ed_totalizador.value;
      end;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      cb_forma2.SetFocus;
    end;
    sp_forma1.Brush.COLOR := clblack;
  finally
    if bVolta_foco then
    begin
      cb_forma1.SetFocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2Exit(Sender: TObject);
begin
  TRY
    // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then exit;
    if (ed_forma1.value + ed_forma2.value) >= ed_total_pagar.value then
    begin
      // forma de pagamento atingiu ou ultrapassou o valor da venda
      // esconder os demais edits de forma de pagamento e focar no bota gravar
      ed_totalizador.value := ed_forma1.value + ed_forma2.value;
      cb_forma3.Visible := false;
      ed_forma3.Visible := false;
      sp_forma3.Visible := false;
      img_forma3.visible := false;
      cb_forma3.itemindex := -2;
      ed_forma3.value := 0;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      bt_confirmar_fechamento.setfocus;
    end
    else
    begin
      ed_totalizador.Value :=
      ed_forma1.value +
      ed_forma2.value +
      ed_forma3.value ;

      if not cb_forma3.Visible then
      begin
        cb_forma3.Visible := true;
        ed_forma3.Visible := true;
        sp_forma3.Visible := true;
        img_forma3.visible := true;

        // acrestar um no combo da forma, caso seja a ultima, retorna para a primeira
        if (cb_forma2.ItemIndex = (cb_forma2.Items.Count - 1)) then
          cb_forma3.ItemIndex := 0
        else
          cb_forma3.ItemIndex := cb_forma2.ItemIndex + 1;

        ed_forma3.value := ed_total_pagar.value - ed_totalizador.value;
      end;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      cb_forma3.SetFocus;
    end;

    sp_forma2.Brush.COLOR := clblack;
  finally
    if bVolta_foco then
    begin
      cb_forma1.SetFocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3Exit(Sender: TObject);
begin
  sp_forma3.Brush.COLOR := clblack;
  ed_totalizador.value := ed_forma1.value + ed_forma2.value + ed_forma3.value;
  ed_troco.Value := ed_totalizador.value - ed_total_pagar.value;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_totalizadorExit(Sender: TObject);
begin
  sp_totalizador.Brush.COLOR := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoExit(Sender: TObject);
begin
  sp_troco.Brush.COLOR := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_desc_acreChange(Sender: TObject);
begin
    case cb_desc_acre.ItemIndex of
    0 : begin // Desconto por %
          ED_DESC_ACRE.DisplayFormat := '##0.00%';
          Imprime_display('Informe o valor do Desconto em %... (F3 Altera)',clwhite,tipgto);
        end;
    1 : begin  // Desconto por R$
          ed_desc_acre.DisplayFormat := '###,###,##0.00';
          Imprime_display('Informe o valor do Desconto em R$... (F3 Altera)',clwhite,tipgto);
        end;
    2 : begin  // Acrescimo por %
          ED_DESC_ACRE.DisplayFormat := '##0.00%';
          Imprime_display('Informe o valor do Acréscimo em %... (F3 Altera)',clwhite,tipgto);
        end;
    3 : begin  // Acrescimo por R$
          ed_desc_acre.DisplayFormat := '###,###,##0.00';
          Imprime_display('Informe o valor do Acréscimo em R$... (F3 Altera)',clwhite,tipgto);
        end;
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.DescontoouAcrscimo1Click(Sender: TObject);
begin
  if bAltera_tipo_desconto then
  begin
    if cb_desc_acre.ItemIndex = 3 then
      cb_desc_acre.ItemIndex := 0
    else
      cb_desc_acre.ItemIndex := cb_desc_acre.ItemIndex + 1;

    cb_desc_acreChange(FRMVENDA);
    ED_DESC_ACRE.SelectAll;

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then cb_forma1.setfocus
  else
  begin
    if iTeclado_Modelo = 1 then
    begin
      if blimpa_edit_display then
      begin
        CarRet;
        strpcopy(@men,'                       ');
        DispStr(@men);
        CarRet;
        bLimpa_edit_display := false;
      end;
      strpcopy(@men,key);
      DispStr(@men);
    end;
  end;



end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_forma1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_forma2.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_forma3.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Exit(Sender: TObject);
begin
 try

  // verificar se nao fechou o pn_fechamento para nao dar erro de foco
  if not pn_fechamento.Visible then exit;

  if (cb_forma2.ItemIndex = cb_forma1.ItemIndex) or
     (cb_forma2.ItemIndex = cb_forma3.ItemIndex) then
  begin
    cb_forma2.SetFocus;
    Imprime_display('Meio de Pagamento já utilizado!',clred,tierro);
    sleep(1000);
    Imprime_display_anterior;
    abort;
  end;
  finally
    if bVolta_foco then
    begin
      ed_forma1.SetFocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Exit(Sender: TObject);
begin
try  // verificar se nao fechou o pn_fechamento para nao dar erro de foco
  if not pn_fechamento.Visible then exit;

  if (cb_forma3.ItemIndex = cb_forma1.ItemIndex) or
     (cb_forma2.ItemIndex = cb_forma3.ItemIndex) then
  begin
    cb_forma3.SetFocus;
    Imprime_display('Meio de Pagamento já utilizado!',clred,tierro);
    sleep(1000);
    Imprime_display_anterior;
    abort;
  end;
  finally
    if bVolta_foco then
    begin
       ed_forma2.SetFocus;
      bVolta_foco := false;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bt_confirmar_fechamento.SetFocus
  else
  begin
    if iTeclado_Modelo = 1 then
    begin
      strpcopy(@men,key);
      DispStr(@men);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_confirmar_fechamentoEnter(Sender: TObject);
begin
  if ed_troco.value > 0 then
    Imprime_display('Troco: R$ '+formatfloat('###,###,##0.00',ed_troco.value)+
                                       '  - [ENTER] Confirmar',clwhite,tiPgto)
  else
    Imprime_display('[ENTER] Confirma o fechamento...',clwhite,tiPgto);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_fechamentoEnter(Sender: TObject);
begin
    Imprime_display('[ENTER] Cancela o fechamento...',clwhite,tiErro);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_confirmar_fechamentoClick(Sender: TObject);
var
  rValor_Temp : real;
  i, icont,qtregistro : integer;
  rvalor_total_convenio : real;
  sCod_Cupom : string;
  bLanca_comprovante_crediario,
  bLanca_Comprovante_Prestacao : boolean;
  sCOO_crediario, sGNF_Crediario : string;
  sCOO_Prestacao, sGNF_Prestacao, sGRG_Prestacao : string;
  sIdentificarVendedor: String;

begin

  ED_FOCUS.SETFOCUS;

  if pedirnumcom = 'S' then
     begin
       frmcomanda := tfrmcomanda.Create(self);
       frmcomanda.showmodal;
       frmcomanda.Free;

       // Verifica duplicidade de comanda no próprio terminal
       query.Close;
       query.SQL.Clear;
       //query.SQL.Add('select c.* from comanda c where (c.lancado = '+quotedstr('N')+') and (codigo_comanda = '+quotedstr(numcomanda)+')' );

       query.SQL.Add('select * from cupom where (codigo_comanda = '+quotedstr(numcomanda)+')' );
       query.Open;
       qtregistro := query.RecordCount;
       if qtregistro > 0 then
          begin

             Imprime_display('Comanda aguardando lançamento!',clred,tiErro);
             sleep(1500);
             Imprime_display_anterior;
             bt_confirmar_fechamento.Enabled := true;
             bt_confirmar_fechamento.SetFocus;
             exit;


          end;
       //endi

       //Verifica duplicidade de comanda no servidor



     end;
  //endi



  bfinalizado := false;
  try

    if (pedirnumcom = 'S') and (numcomanda='') then
       begin
         Imprime_display('Necessário informar comanda!',clred,tiErro);
         sleep(1500);
         Imprime_display_anterior;
         bt_confirmar_fechamento.Enabled := true;
         bt_confirmar_fechamento.SetFocus;
         exit;
       end;
    //endi


    if ed_troco.Value < 0 then
    begin
      Imprime_display('Troco não pode ser negativo!',clred,tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;

    if (ed_forma1.value < 0) or
       (ed_forma2.value < 0) or
       (ed_forma3.value < 0)
    then
    begin
      Imprime_display('Pagamento não pode ser negativo!',clred,tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    IF (ED_DESC_ACRE.Value < 0) OR
       (ed_total_pagar.Value < 0) OR
       (ed_totalizador.Value < 0) THEN
    BEGIN
        Imprime_display('Existe valor negativo!',clred,tiErro);
        sleep(1500);
        Imprime_display_anterior;
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
    END;


    bt_confirmar_fechamento.Enabled := false;
    bTef_finaliza := false;

    // Verificar se o total lancado nas formas de pagamento é maior ou igual ao total da venda
    if ed_totalizador.value < ed_total_pagar.value then
    begin
      Imprime_display('Valor lançado é inferior ao total do cupom!',clred,tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;

    // Verificar se o valor lancado nas formas de pagamento de Cartao não ultrapassa o valor
    // do cupom
    rValor_Total_Cartao := 0;
    icont := 0;
    for i := 0 to lForma_Cartao.Count - 1 do
    begin

      if ed_forma1.value > 0 then
      begin
        if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_cartao[i]) then
        begin
          rValor_Total_Cartao := rValor_Total_Cartao + ed_forma1.Value;
          inc(icont);
        end;
      end;
      if ed_forma2.value > 0 then
      begin
        if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_cartao[i]) then
        begin
          rValor_Total_Cartao := rValor_Total_Cartao + ed_forma2.Value;
          inc(icont);
        end;
      end;
      if ed_forma3.value > 0 then
      begin
        if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_cartao[i]) then
        begin
          rValor_Total_Cartao := rValor_Total_Cartao + ed_forma3.Value;
          inc(icont);
        end;
      end;
    end;
    // verificar se o pagamento está sendo feito com múltiplos cartões pelo TEF
    if (icont > 1) and (bTef) then
    begin
      application.messagebox('O sistema não permite pagamento com múltiplos cartões pelo TEF!',
                             'Erro',mb_ok+mb_iconerror);
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    if rValor_Total_Cartao > (ed_total_pagar.value + 0.0001) then
    begin
      Imprime_display('Valor em Cartão maior que o cupom!',clred,tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    if btef then
    begin
      bContinua := true;
      // rodar as formas de pagamento para verificar se eh cartao
      for i := 0 to lForma_Cartao.Count - 1 do
      begin


        if (ed_forma1.value > 0) and
           (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_cartao[i])) then
        begin
          if ed_forma2.Value > 0 then
          begin
            Application.MessageBox('Favor informar a forma de pagamento Cartão ou Cheque (Consultado) por último!','Erro',
                                   MB_OK+mb_iconerror);
            bContinua := false;
            break;
          end;
        end
        else
        begin
          if (ed_forma2.value > 0) and
             (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_cartao[i])) then
          begin
            if (ed_forma3.value > 0) then
            begin
              Application.MessageBox('Favor informar a forma de pagamento Cartão ou Cheque (Consultado) por último!','Erro',
                                     MB_OK+mb_iconerror);
              bContinua := false;
              break;
            end;
          end;
        end;
      end;


      if not bcontinua then exit;
    end;

    // verificar se tem lancamento para cheque...

    rValor_Total_cheque := 0;
    for i := 0 to lForma_cheque.Count - 1 do
    begin

      if ed_forma1.value > 0 then
      begin
        if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_cheque[i]) then
        begin
          rValor_Total_cheque := rValor_Total_cheque + ed_forma1.Value;
        end;
      end;
      if ed_forma2.value > 0 then
      begin
        if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_cheque[i]) then
        begin
          rValor_Total_cheque := rValor_Total_cheque + ed_forma2.Value;
        end;
      end;
      if ed_forma3.value > 0 then
      begin
        if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_cheque[i]) then
        begin
          rValor_Total_cheque := rValor_Total_cheque + ed_forma3.Value;
        end;
      end;
    end;
    // verificar se o cheque serah consultado pelo tef e se existe venda no cartao conjugado
    if bTEF then
    begin
      bTEF_Cheque := false;
      if rvalor_total_cheque > 0 then
      begin
        if application.MessageBox('O cheque será consultado via TEF?','Mensagem TEF',mb_yesno+
                                  MB_ICONQUESTION) = idYes then
        begin
          if rValor_Total_Cartao > 0 then
          begin
            if application.MessageBox('O sistema não permite utilizar duas formas'+
                                   ' de pagamento por TEF! Deseja prosseguir apenas com o cartão?',
                                   'Atenção',mb_yesno+mb_iconwarning) = idNo then
            begin
              bt_confirmar_fechamento.Enabled := true;
              bt_confirmar_fechamento.SetFocus;
              exit;
            end
            else
              bTef_cheque := false;
          end
          else
            bTEF_Cheque := true;
        end
        else
          bTEF_Cheque := false;
      end;
    end;

    // verificar se tem lancamento para crediario

    rValor_Total_crediario := 0;
    for i := 0 to lForma_crediario.Count - 1 do
    begin

      if ed_forma1.value > 0 then
      begin
        if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_crediario[i]) then
        begin
          rValor_Total_crediario := rValor_Total_crediario + ed_forma1.Value;
          sCrediario_Nome := cb_forma1.text;
        end;
      end;
      if ed_forma2.value > 0 then
      begin
        if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_crediario[i]) then
        begin
          rValor_Total_crediario := rValor_Total_crediario + ed_forma2.Value;
          sCrediario_Nome := cb_forma2.text;
        end;
      end;
      if ed_forma3.value > 0 then
      begin
        if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_crediario[i]) then
        begin
          rValor_Total_crediario := rValor_Total_crediario + ed_forma3.Value;
          sCrediario_Nome := cb_forma3.text;
        end;
      end;
    end;

    // GUIO: Identificação do Vendedor, caso o parametro para identificação
    // esteja habilidade no programa

    iVendedorCodigo := 0;
    sVendedorNome := '';

    if bIdentificarVendedor then
    begin
      Application.CreateForm(TFrmVendedor, FrmVendedor);

      try
        if FrmVendedor.ShowModal = mrOk then
        begin
          iVendedorCodigo := StrToInt(frmModulo.Query.FieldByName('CODIGO').AsString);
          sVendedorNome := frmModulo.Query.FieldByName('NOME').AsString;
        end
        else
        begin
          bt_confirmar_fechamento.enabled := True;
          bt_confirmar_fechamento.setfocus;
          exit;
        end
      finally

        FreeAndNil(FrmVendedor);
      end;
    end;

    // identificacao do Consumidor

    sCli_Nome := ''; sCli_Endereco := ''; sCli_CPF := ''; sCli_Cidade := '';
    sCli_Placa := ''; sCli_Km := ''; sCli_cep := ''; sCli_uf := ''; sCli_codigo := '';

    if (bCadastra_Crediario) and (rvalor_total_crediario > 0 ) then
    begin
      // abrir tela de lancamento de cliente e de crediario
      bcontinua := false;

      frmvenda_crediario := tfrmvenda_crediario.Create(self);
      if sConsumidor_CPF <> '' then
        frmVenda_Crediario.ed_cred_cliente.Text := sConsumidor_CPF;
      frmvenda_crediario.ShowModal;


      if not bcontinua then
      begin
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.setfocus;
        exit;
      end;
    end
    else
    begin
      // abrir tela simples de identificacao de Cliente

      if bConsumidor then
         begin
            bContinua := false;
            frmconsumidor := tfrmconsumidor.create(self);

            if sConsumidor_CPF <> '' then
            begin
              frmConsumidor.ed_consumid_cpf.Text := sConsumidor_CPF;
              frmConsumidor.ed_consumid_nome.Text := sConsumidor_Nome;
              frmConsumidor.ed_consumid_endereco.Text := sConsumidor_Endereco;
            end;

            try
              frmconsumidor.showmodal;
            finally
              FreeAndNil(frmconsumidor);
            end;

         end
      else
         begin
           bContinua := true;
         end;
      //endi

      if not bcontinua then
      begin
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.setfocus;
        exit;
      end;
    end;

    application.ProcessMessages;

    // verificar se tem lancamento para convenio
    rValor_Total_convenio := 0;
    for i := 0 to lForma_convenio.Count - 1 do
    begin

      if ed_forma1.value > 0 then
      begin
        if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_convenio[i]) then
        begin
          rValor_Total_convenio := rValor_Total_convenio + ed_forma1.Value;
        end;
      end;
      if ed_forma2.value > 0 then
      begin
        if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_convenio[i]) then
        begin
          rValor_Total_convenio := rValor_Total_convenio + ed_forma2.Value;
        end;
      end;
      if ed_forma3.value > 0 then
      begin
        if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_convenio[i]) then
        begin
          rValor_Total_convenio := rValor_Total_convenio + ed_forma3.Value;
        end;
      end;
    end;






    (*************** F E C H A M E N T O   D O   C U P O M ********************)
    //---> INÍCIO

    //-----> TOTALIZAR O CUPOM (lancar o desconto e acrescimo e fechar total do cupom);

    If Not bTotalizado then
    begin
      // Abrir a gaveta...
      sMsg := cECF_Abre_Gaveta(iECF_Modelo);

      {Desconto - %:
       Desconto - R$:
       Acréscimo - %:
       Acréscimo - R$:
      }
      repeat
        case cb_desc_acre.ItemIndex of
          0 : sMsg := cECF_Inicia_Fechamento(iECF_Modelo,'D','%',ED_DESC_ACRE.value,rtotal_venda);
          1 : sMsg := cECF_Inicia_Fechamento(iECF_Modelo,'D','$',ED_DESC_ACRE.value,rtotal_venda);
          2 : sMsg := cECF_Inicia_Fechamento(iECF_Modelo,'A','%',ED_DESC_ACRE.value,rtotal_venda);
          3 : sMsg := cECF_Inicia_Fechamento(iECF_Modelo,'A','$',ED_DESC_ACRE.value,rtotal_venda);
        end;

        if sMsg = OK then
        begin
          bTotalizado := true;
          try
          frmModulo.spCupom_Temp_Edit.Close;
          frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
          frmModulo.spCupom_Temp_Edit.Prepare;
          frmModulo.spCupom_Temp_Edit.execute;
          except
          end;
        end
        else
        begin
          if application.MessageBox(pansichar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_Yesno+
                                              Mb_iconerror) = idNo then
          begin
            break;
          end;
        end;
      until sMsg = OK;

      if sMsg <> OK then
      begin
        Imprime_display(sMsg,clRed,tiErro);
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    // habilitar o panel para focar no grid apos a sua atualizacao para ele posicionar na
    // ultima linha registrada
      pn_principal.ENABLED := TRUE;

      Imprime_display('Iniciando o fechamento do Cupom...',clwhite,tiInfo);
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
                                         '--------------------------------------------------------';
      try
        // verificar se possue desconto ou acrescimo
        if ed_desc_acre.Value > 0 then
        begin
          grid.AddRow(1);
          grid.cell[0,grid.LastAddedRow].asstring := '</i><b>TOTAL DOS PRODUTOS R$'+
                                                     '                        '+
                                                     texto_justifica(
                                                     formatfloat('###,###,##0.00',rTotal_Venda),
                                                     10,' ',taDireita)+'</b>';
          case cb_desc_acre.ItemIndex of
            0 : begin // Desconto por %
                  rValor_Temp :=  (rTotal_Venda * (ed_desc_acre.value/100));
                  // registrar o desconto em vermelho no grid
                  grid.AddRow(1);
                  grid.cell[0,grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">'+
                                                             'DESCONTO R$'+
                                                             '                                  '+
                                                             texto_justifica(
                                                             formatfloat('###,###,##0.00',
                                                             -rvalor_temp),
                                                             10,' ',taDireita)+'</FONT></b></i>';
                end;
            1 : begin  // Desconto por R$
                  rValor_temp := ed_desc_acre.value;
                  // registrar o desconto em vermelho no grid
                  grid.AddRow(1);
                  grid.cell[0,grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">'+
                                                             'DESCONTO R$'+
                                                             '                                  '+
                                                             texto_justifica(
                                                             formatfloat('###,###,##0.00',
                                                             -rvalor_temp),
                                                             10,' ',taDireita)+'</FONT></b></i>';
                 end;
            2 : begin  // Acrescimo por %
                  rValor_temp :=  (rTotal_Venda * (ed_desc_acre.value/100));
                  // registrar o acrescimo em  no grid
                  grid.AddRow(1);
                  grid.cell[0,grid.LastAddedRow].asstring := '</b></i>'+
                                                             'ACRÉSCIMO R$'+
                                                             '                                 '+
                                                             texto_justifica(
                                                             formatfloat('###,###,##0.00',
                                                             rvalor_temp),
                                                             10,' ',taDireita)+'</b></i>';
                end;
            3 : begin  // Acrescimo por R$
                  rValor_temp := ed_desc_acre.value;
                  // registrar o acrescimo em  no grid
                  grid.AddRow(1);
                  grid.cell[0,grid.LastAddedRow].asstring := '</b></i>'+
                                                             'ACRÉSCIMO R$'+
                                                             '                                 '+
                                                             texto_justifica(
                                                             formatfloat('###,###,##0.00',
                                                             rvalor_temp),
                                                             10,' ',taDireita)+'</b></i>';
                end;
          end;
          grid.AddRow(1);
          grid.cell[0,grid.LastAddedRow].asstring :=
                                         '                                        ----------------';
        end;
        grid.AddRow(1);
        grid.cell[0,grid.LastAddedRow].asstring := '<b></i>T O T A L   D O   C U P O M   R$'+
                                                   '             '+
                                                   texto_justifica(
                                                   formatfloat('###,###,##0.00',
                                                   ed_total_pagar.value),
                                                   10,' ',taDireita)+'</b>';
        grid.SelectLastRow;
        TRY
          grid.SetFocus;
        EXCEPT
        END;
        Application.ProcessMessages;
        // mudar o status da variavel para nao permitir nova totalizacao para este cupom
        bTotalizado := true;
        try
        frmModulo.spCupom_Temp_Edit.Close;
        frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
        frmModulo.spCupom_Temp_Edit.Prepare;
        frmModulo.spCupom_Temp_Edit.execute;
        except
        end;
      except
        // funcao gerou erro, nao mudar o status da variavel de totalizacao
        bTotalizado := false;
      end;
    end; // já totalizado

    // zerar variaveis de verificao de formas de pagamento
    bVenda_cheque    := false;
    bVenda_Cartao    := false;
    bVenda_Crediario := false;


    // verificar se a forma1 jah foi lancado no ecf
    if not bPago1 then
    begin
      // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 1
      if ed_forma1.value > 0 then
      begin
         // TEF
         if btef then
         begin
           // rodar as formas de pagamento para verificar se eh cartao
           for i := 0 to lForma_Cartao.Count - 1 do
           begin
             if (ed_forma1.value > 0) and
                (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_cartao[i])) then
             begin
               // armazenar o nome da forma de pagamento para CNFV
               sForma_Temp := cb_forma1.Text;
               Imprime_display('TEF',CLWHITE,tiPgto);
               if not TEF_Pagamento(Tef_Venda_Cartao) then
               begin
                 application.messagebox(pansichar(
                                        'Não foi possível prosseguir com a venda no cartão!'+#13+
                                        'Favor tentar outra vez ou utilizar outra'+
                                        ' forma de pagamento!'),
                                        'Mensagem TEF', mb_ok+mb_iconerror);
                 bt_confirmar_fechamento.Enabled := true;
                 bt_confirmar_fechamento.SetFocus;
                 exit;
               end
               else
               begin
                 bTef_finaliza := true;
                 Break;
               end;
             end;
           end;
           // verificar se vai consultar o cheque pelo tef
           if bTEF_Cheque then
           begin

             // rodar as formas de pagamento para verificar se eh cheque
             for i := 0 to lForma_Cheque.Count - 1 do
             begin
               if (ed_forma1.value > 0) and
                  (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_cheque[i])) then
               begin
                 Imprime_display('TEF',CLWHITE,tiPgto);
                 // armazenar o nome da forma de pagamento para CNFV
                 sForma_Temp := cb_forma1.Text;

                 if not TEF_Pagamento(Tef_Venda_Cheque) then
                 begin
                   application.messagebox(pansichar(
                                          'Não foi possível prosseguir com a venda no cartão!'+#13+
                                          'Favor tentar outra vez ou utilizar outra'+
                                          ' forma de pagamento!'),
                                          'Mensagem TEF', mb_ok+mb_iconerror);
                   bt_confirmar_fechamento.Enabled := true;
                   bt_confirmar_fechamento.SetFocus;
                   exit;
                 end
                 else
                 begin
                   bTef_finaliza := true;
                   Break;
                 end;
               end;
             end;
           end;
         end; // final do tef




          // enviar para o ecf
         repeat
           //BlockInput(true);
           rapuracao := ed_forma1.Value + ed_forma2.Value + ed_forma3.Value;
           sMsg := cECF_Forma_Pgto(iECF_Modelo,cb_forma1.Text,ed_forma1.Value,rapuracao,ed_total_pagar.Value );
           if sMsg = OK then
           begin
              grid.AddRow(1);
              grid.cell[0,grid.LastAddedRow].asstring := '</b></i>'+texto_justifica(
                                                         ansiuppercase(cb_forma1.Text),
                                                         45,' ',taEsquerda)+texto_justifica(
                                                        formatfloat('###,###,##0.00',ed_forma1.Value),
                                                         10,' ',taDireita)+'</b></i>';
              grid.SelectLastRow;

              TRY
                grid.SetFocus;
              EXCEPT
              END;
              bPago1 := true;
              try
              frmModulo.spCupom_Temp_Edit.Close;
              frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'PAGO1';
              frmModulo.spCupom_Temp_Edit.Prepare;
              frmModulo.spCupom_Temp_Edit.execute;
              except
              end;

              Application.ProcessMessages;
           end
           else
           begin
             BlockInput(false);
             if application.messagebox(pansichar('Erro ao lançar o '+cb_forma1.Text+'!'+#13+
                                                 'Mensagem: '+sMsg+#13+
                                                 'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                 MB_ICONERROR) = idNo then
             begin
                //BlockInput(true);
                if bTEF and bTef_finaliza then
                begin
                    // TEF apresentou erro
                    Imprime_display('Cancelando TEF',clred,tiErro);
                    TEFVerificaGerenciadorAtivo;
                    TEFNaoConfirmaOperacao;
                    TEFVerificaArquivosPendentes;
                    TEFVerificaOperacaoPendente;
                END;
                break;
             end;
           end;
         until sMsg = OK;
      end;

      if sMsg <> OK then
      begin
        Imprime_display(sMsg,clred,tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    //BlockInput(true);

    // verificar se a forma1 jah foi lancado no ecf
    if not bPago2 then
    begin
         // TEF
         if btef then
         begin
           // rodar as formas de pagamento para verificar se eh cartao
           for i := 0 to lForma_Cartao.Count - 1 do
           begin


             if (ed_forma2.value > 0) and
                (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_cartao[i])) then
             begin
                Imprime_display('TEF',CLWHITE,tiPgto);
               // armazenar o nome da forma de pagamento para CNFV
               sForma_Temp := cb_forma2.Text;

               if not TEF_Pagamento(Tef_Venda_Cartao) then
               begin
                 BlockInput(false);
                 application.messagebox(pansichar(
                                        'Não foi possível prosseguir com a venda no cartão!'+#13+
                                        'Favor tentar outra vez ou utilizar outra'+
                                        ' forma de pagamento!'),
                                        'Mensagem TEF', mb_ok+mb_iconerror);
                 bt_confirmar_fechamento.Enabled := true;
                 bt_confirmar_fechamento.SetFocus;
                 exit;
               end
               else
               begin
                 bTef_finaliza := true;
                 Break;
               end;
             end;
           end;
           // verificar se vai consultar o cheque pelo tef
           //BlockInput(true);
           if bTEF_Cheque then
           begin

             // rodar as formas de pagamento para verificar se eh cheque
             for i := 0 to lForma_Cheque.Count - 1 do
             begin
               if (ed_forma2.value > 0) and
                  (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_cheque[i])) then
               begin
                 Imprime_display('TEF',CLWHITE,tiPgto);
                 // armazenar o nome da forma de pagamento para CNFV
                 sForma_Temp := cb_forma2.Text;
                 if not TEF_Pagamento(Tef_Venda_Cheque) then
                 begin
                   BlockInput(false);
                   application.messagebox(pansichar(
                                          'Não foi possível prosseguir com a venda no cheque!'+#13+
                                          'Favor tentar outra vez ou utilizar outra'+
                                          ' forma de pagamento!'),
                                          'Mensagem TEF', mb_ok+mb_iconerror);
                   bt_confirmar_fechamento.Enabled := true;
                   bt_confirmar_fechamento.SetFocus;
                   exit;
                 end
                 else
                 begin
                   bTef_finaliza := true;
                   Break;
                 end;
               end;
             end;
           end;
         end; // final do tef


      //BlockInput(true);
     // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 2
      if ed_forma2.value > 0 then
      begin
         // enviar para o ecf
         repeat
           rapuracao := ed_forma1.Value + ed_forma2.Value + ed_forma3.Value;
           sMsg := cECF_Forma_Pgto(iECF_Modelo,cb_forma2.Text,ed_forma2.Value,rapuracao,ed_total_pagar.Value);
           if sMsg = OK then
           begin
              grid.AddRow(1);
              grid.cell[0,grid.LastAddedRow].asstring := '</b></i>'+texto_justifica(
                                                         ansiuppercase(cb_forma2.Text),
                                                         45,' ',taEsquerda)+texto_justifica(
                                                        formatfloat('###,###,##0.00',
                                                        ed_forma2.Value),
                                                         10,' ',taDireita)+'</b></i>';
              grid.SelectLastRow;

              TRY
                grid.SetFocus;
              EXCEPT
              END;
              bPago2 := true;
              try
              frmModulo.spCupom_Temp_Edit.Close;
              frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
              frmModulo.spCupom_Temp_Edit.Prepare;
              frmModulo.spCupom_Temp_Edit.execute;
              except
              end;
              Application.ProcessMessages;
           end
           else
           begin
             BlockInput(false);
             if application.messagebox(pansichar('Erro ao lançar o '+cb_forma2.Text+'!'+#13+
                                                 'Mensagem: '+sMsg+#13+
                                                 'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                 MB_ICONERROR) = idNo then
             begin
               break;
             end;
           end;
         until sMsg = OK;
      end;



      //BlockInput(true);
      if sMsg <> OK then
      begin
        Imprime_display(sMsg,clred,tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    // verificar se a forma1 jah foi lancado no ecf
    if not bPago3 then
    begin

         // TEF
         if btef then
         begin
           // rodar as formas de pagamento para verificar se eh cartao
           for i := 0 to lForma_Cartao.Count - 1 do
           begin


             if (ed_forma3.value > 0) and
                (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_cartao[i])) then
             begin
               Imprime_display('TEF',CLWHITE,tiPgto);
               // armazenar o nome da forma de pagamento para CNFV
               sForma_Temp := cb_forma3.Text;

               if not TEF_Pagamento(Tef_Venda_Cartao) then
               begin
                 BlockInput(false);
                 application.messagebox(pansichar(
                                        'Não foi possível prosseguir com a venda no cartão!'+#13+
                                        'Favor tentar outra vez ou utilizar outra'+
                                        ' forma de pagamento!'),
                                        'Mensagem TEF', mb_ok+mb_iconerror);
                 bt_confirmar_fechamento.Enabled := true;
                 bt_confirmar_fechamento.SetFocus;
                 exit;
               end
               else
               begin
                 bTef_finaliza := true;
                 Break;
               end;
             end;
           end;

           //BlockInput(true);
           // verificar se vai consultar o cheque pelo tef
           if bTEF_Cheque then
           begin

             // rodar as formas de pagamento para verificar se eh cheque
             for i := 0 to lForma_Cheque.Count - 1 do
             begin
               if (ed_forma3.value > 0) and
                  (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_cheque[i])) then
               begin
                 Imprime_display('TEF',CLWHITE,tiPgto);
                 // armazenar o nome da forma de pagamento para CNFV
                 sForma_Temp := cb_forma3.Text;
                 if not TEF_Pagamento(Tef_Venda_Cheque) then
                 begin
                   BlockInput(false);
                   application.messagebox(pansichar(
                                          'Não foi possível prosseguir com a venda no cartão!'+#13+
                                          'Favor tentar outra vez ou utilizar outra'+
                                          ' forma de pagamento!'),
                                          'Mensagem TEF', mb_ok+mb_iconerror);
                   bt_confirmar_fechamento.Enabled := true;
                   bt_confirmar_fechamento.SetFocus;
                   exit;
                 end
                 else
                 begin
                   bTef_finaliza := true;
                   Break;
                 end;
               end;
             end;
           end;
         end; // final do tef









      //BlockInput(true);



      // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 3
      if ed_forma3.value > 0 then
      begin
         // enviar para o ecf
         repeat
           rapuracao := ed_forma1.Value + ed_forma2.Value + ed_forma3.Value;
           sMsg := cECF_Forma_Pgto(iECF_Modelo,cb_forma3.Text,ed_forma3.Value,rapuracao,ed_total_pagar.Value);
           if sMsg = OK then
           begin
              grid.AddRow(1);
              grid.cell[0,grid.LastAddedRow].asstring := '</b></i>'+texto_justifica(
                                                         ansiuppercase(cb_forma3.Text),
                                                         45,' ',taEsquerda)+texto_justifica(
                                                        formatfloat('###,###,##0.00',ed_forma3.Value),
                                                         10,' ',taDireita)+'</b></i>';
              grid.SelectLastRow;

              TRY
                grid.SetFocus;
              EXCEPT
              END;
              bPago3 := true;
              try
              frmModulo.spCupom_Temp_Edit.Close;
              frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'PAGO3';
              frmModulo.spCupom_Temp_Edit.Prepare;
              frmModulo.spCupom_Temp_Edit.execute;
              except
              end;


              Application.ProcessMessages;
           end
           else
           begin
             BlockInput(false);
             if application.messagebox(pansichar('Erro ao lançar o '+cb_forma3.Text+'!'+#13+
                                                 'Mensagem: '+sMsg+#13+
                                                 'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                 MB_ICONERROR) = idNo then
             begin
               break;
             end;
           end;
         until sMsg = OK;
      end;

      if sMsg <> OK then
      begin
        Imprime_display(sMsg,clred,tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    //BlockInput(true);

    // TROCO
    IF ed_troco.Value > 0 THEN
    BEGIN
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">'+
                                                 'T R O C O   R$                               '+
                                                 texto_justifica(
                                                 formatfloat('###,###,##0.00',ed_troco.Value),
                                                 10,' ',taDireita)+'</b></i></FONT>';

      grid.SelectLastRow;
      TRY
        grid.SetFocus;
      EXCEPT
      END;
      Application.ProcessMessages;
    END;



    // GUIO: Caso haja a identificação do vendedor, uma string com os dados
    // será montada para ser impressa no cupom fiscal
    if bIdentificarVendedor then
      sIdentificarVendedor := 'Vendedor '
        + texto_justifica(FormatFloat('000',
          iVendedorCodigo) + ' - ' + sVendedorNome, 37, ' ', taEsquerda)
        + #10
    else
      sIdentificarVendedor := '';

    // identificacao do consumidor no cupom
    if sCli_nome <> '' then
    begin

      repeat

        //BlockInput(true);

        if sConsumidor_CPF = '' then
        begin
          if not bCadastra_Placa then
          begin
            sMsg := cECF_Termina_Fechamento(iECF_Modelo,
              'MD5:'+sPAF_MD5+#10+ ' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+ #10  +
              sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10
              + SEPARADOR + sIdentificarVendedor +
             'Cliente: '+texto_justifica(sCli_nome,37,' ',taEsquerda)+#10+
             'Enderec: '+texto_justifica(sCli_endereco,37,' ',taEsquerda)+#10+
             'Cida/UF: '+texto_justifica(sCli_cidade+' '+sCli_uf,37,' ',taEsquerda)+#10+
             'CPF....: '+texto_justifica(sCli_cpf,37,' ',taEsquerda));
          end
          else
          begin
            sMsg := cECF_Termina_Fechamento(iECF_Modelo,
              'MD5:'+sPAF_MD5+#10+  ' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+  #10 +
              sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10+
              SEPARADOR + sIdentificarVendedor +
             'Cliente: '+texto_justifica(sCli_nome,37,' ',taEsquerda)+#10+
             'Enderec: '+texto_justifica(sCli_endereco,37,' ',taEsquerda)+#10+
             'Cida/UF: '+texto_justifica(sCli_cidade+' '+sCli_uf,37,' ',taEsquerda)+#10+
             'CPF....: '+texto_justifica(sCli_cpf,37,' ',taEsquerda)+#10+
             'Placa..: '+texto_justifica(sCli_Placa,10,' ',taEsquerda)+
                       'KM: '+texto_justifica(sCli_Km,10,' ',taEsquerda)+
                              'VD: '+texto_justifica(scli_vendedor,17,' ',taEsquerda));
          end;
        end
        else
        begin
          if sConsumidor_Nome = '' then
          begin
            if not bCadastra_Placa then
            begin
              sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                'MD5:'+sPAF_MD5+#10+' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+  #10 +
                sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10+
                SEPARADOR + sIdentificarVendedor +
               'Cliente: '+texto_justifica(sCli_nome,37,' ',taEsquerda)+#10+
               'Enderec: '+texto_justifica(sCli_endereco,37,' ',taEsquerda)+#10+
               'Cida/UF: '+texto_justifica(sCli_cidade+' '+sCli_uf,37,' ',taEsquerda)+#10+
               'CPF....: '+texto_justifica(sCli_cpf,37,' ',taEsquerda));
            end
            else
            begin
              sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                'MD5:'+sPAF_MD5+#10+' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+    #10 +
                sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10+
                SEPARADOR + sIdentificarVendedor +
               'Cliente: '+texto_justifica(sCli_nome,37,' ',taEsquerda)+#10+
               'Enderec: '+texto_justifica(sCli_endereco,37,' ',taEsquerda)+#10+
               'Cida/UF: '+texto_justifica(sCli_cidade+' '+sCli_uf,37,' ',taEsquerda)+#10+
               'Placa..: '+texto_justifica(sCli_Placa,10,' ',taEsquerda)+
                        'KM: '+texto_justifica(sCli_Km,10,' ',taEsquerda)+
                              'VD: '+texto_justifica(scli_vendedor,17,' ',taEsquerda));
            end;
          end
          else
          begin
            if not bCadastra_Placa then
            begin
              sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                      'MD5:'+sPAF_MD5+#10+ ' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+   #10 +
                      sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10
                      + SEPARADOR + sIdentificarVendedor);
            end
            else
            begin
              sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                'MD5:'+sPAF_MD5+#10+  ' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+    #10 +
                sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10+
                SEPARADOR + sIdentificarVendedor +
               'Placa..: '+texto_justifica(sCli_Placa,10,' ',taEsquerda)+
               'KM: '+texto_justifica(sCli_Km,10,' ',taEsquerda)+
               'VD: '+texto_justifica(scli_vendedor,17,' ',taEsquerda));
            end;
          end;
        end;

        if sMsg = OK then
        begin
           bFinalizado := true;

           try
           frmModulo.spCupom_Temp_Edit.Close;
           frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'FINALIZADO';
           frmModulo.spCupom_Temp_Edit.Prepare;
           frmModulo.spCupom_Temp_Edit.execute;
           except
           end;
        end
        else
        begin
          BlockInput(false);
          if application.messagebox(pansichar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror) = idNo then
          begin
            break;
          end;
        end;
      until sMsg = OK;


      //BlockInput(true);

      sPre_Venda_Numero := '';
      sDav_numero :='';
      sPosto_rodape := '';
      sMesa_numero := '';


      if sMsg <> OK then
      begin
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.setfocus;
        Imprime_display(sMsg,clred,tierro);
        exit;
      end;
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      if bIdentificarVendedor then
      begin
        grid.AddRow(1);
        grid.cell[0,grid.LastAddedRow].asstring := 'Vended. '
          + texto_justifica(FormatFloat('000', iVendedorCodigo)
          + ' - ' + sVendedorNome,47,' ',taEsquerda);
      end;

      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring := 'Cliente '+
        texto_justifica(sCli_nome,47,' ',taEsquerda);
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring := 'Endere: '+
        texto_justifica(sCli_endereco,47,' ',taEsquerda);
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring := 'Cid/UF: '+
        texto_justifica(sCli_cidade+'/'+sCli_uf+' '+scli_cep,47,' ',taEsquerda);
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring := 'CPF...: '+
        texto_justifica(sCli_cpf,47,' ',taEsquerda);
      if bCadastra_Placa then
      begin
        GRID.ADDROW(1);
        grid.cell[0,grid.LastAddedRow].asstring := 'Placa.: '+
          texto_justifica(sCli_placa+'  Km: '+scli_km+'  Vendedor: '+
            scli_vendedor,47,' ',taEsquerda);
      end;
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
        '              Obrigado!!! Volte Sempre!!!               ';
    end
    else
    begin


      repeat
        //BlockInput(true);
        if not bCadastra_Placa then
        begin
          sMsg := cECF_Termina_Fechamento(iECF_Modelo,'MD5:'+sPAF_MD5+#10+' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+#10 +sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero
            + SEPARADOR + sIdentificarVendedor);
        end
        else
        begin
          sMsg := cECF_Termina_Fechamento(iECF_Modelo,
            'MD5:'+sPAF_MD5+#10+ ' Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT '+  #10 +
            sPre_Venda_Numero+sDav_numero+sPosto_rodape+sMesa_numero+#10+
           SEPARADOR + sIdentificarVendedor +
           'Placa..: '+texto_justifica(sCli_Placa,10,' ',taEsquerda)+
           'KM: '+texto_justifica(sCli_Km,10,' ',taEsquerda)+
           'VD: '+texto_justifica(scli_vendedor,17,' ',taEsquerda));
        end;

        if sMsg = OK then
        begin
           bFinalizado := true;
           try
           frmModulo.spCupom_Temp_Edit.Close;
           frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'FINALIZADO';
           frmModulo.spCupom_Temp_Edit.Prepare;
           frmModulo.spCupom_Temp_Edit.execute;
           except
           end;


        end
        else
        begin
          BlockInput(false);
          if application.messagebox(pansichar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror) = idNo then
          begin
            break;
          end;
        end;
      until sMsg = OK;

      if sMsg <> OK then
      begin
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.setfocus;
        Imprime_display(sMsg,clred,tierro);
        exit;
      end;



      // sem consumidor
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid.AddRow(1);
      grid.cell[0,grid.LastAddedRow].asstring :=
        '              Obrigado!!! Volte Sempre!!!               ';
    end;

    grid.SelectLastRow;
    TRY
      grid.SetFocus;
    EXCEPT
    END;
    Application.ProcessMessages;
    bFinalizado := true;



   // atualizar o totalizador geral do PAF com a do ECF
   REPEAT
     //BlockInput(true);
     SMSG := cECF_Grande_Total(iECF_Modelo);
     iF Smsg = 'ERRO' then
     begin
       BlockInput(false);
       if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                           'Mensagem: '+sMsg+#13+
                                           'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                           MB_ICONERROR) = idno then
       break;

     end
     else
       atualiza_totalizador(SMSG);
   UNTIL SmSG <> 'ERRO';







    //---> FIM
    (**************************************************************************)

    BlockInput(false);   // desativar depois do teste

    if bTEF and bTef_finaliza then
    begin
      if (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
      begin
         Imprime_display('Impressão comprovante TEF',clwhite,tiInfo);
         TEFImprimeTransacao('V');
      end;
      if sTEFRetorno = '0' then
      BEGIN
         // TEF ok
         Imprime_display('Confirmando TEF',clwhite,tiInfo);
         TEFVerificaGerenciadorAtivo;
         TEFFechaOperacao;
      END
      else
      BEGIN
        // TEF apresentou erro
        Imprime_display('Cancelando TEF',clred,tiErro);
        TEFVerificaGerenciadorAtivo;
        TEFNaoConfirmaOperacao;
        TEFVerificaArquivosPendentes;
        TEFVerificaOperacaoPendente;
      END;
    END;






    //--> (C U P O M    N A O   F I S C A L )
    bLanca_comprovante_crediario := false;
    // comprovante do crediario
    if (bCadastra_Crediario) and (rvalor_total_crediario > 0 )
        and (iComprovente_Crediario = 1) then
    begin
      Imprime_display('Aguarde! Imprimindo Comprovante...',clwhite,tiInfo);

      { Fazer esta rotina apenas qdo houver diferenca do valor do crediario com o valor que o
        cliente irá pagar... por exemplo qdo houver juros nas prestacoes.

      IF sTotalizador_Crediario <> '' THEN
      BEGIN
        repeat
          sCOO_crediario := cECF_Numero_Cupom(iECF_Modelo);
          sGNF_crediario := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sMsg := cECF_Recebimento(iECF_Modelo,sTotalizador_Crediario,rvalor_total_crediario,
          sCrediario_Nome);
          if sMsg <> OK then
          begin
            If application.MessageBox(pansichar('Erro no lançamento do Crediário no ECF!'+#13+
                                                'Mensagem: '+sMsg+#13+'Deseja tentar outra vez?'),
                                                'Erro',mb_yesno+MB_ICONERROR) = idno theN
            BEGIN
              break;
            end
            else
            begin
              sTotalizador_crediario :=
                inputbox('Crediário','Informe o nome do Totalizador:',sTotalizador_Crediario);
            end;
          end
          else
          begin
            bLanca_comprovante_crediario := true;
          end;
        until sMsg = OK;
      END;
      }

      bLanca_comprovante_crediario := false;
      sMsg := OK;


      if sMSG = OK then
      begin

        repeat
          //BlockInput(true);
          sMsg := cECF_Abre_Gerencial(iECF_Modelo,'CREDIARIO');
            sCOO_prestacao := cECF_Numero_Cupom(iECF_Modelo);
            sGNF_prestacao := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
            sGRG_prestacao := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);

          if sMsg = 'ERRO' then
          begin
            BlockInput(false);
            if application.MessageBox(pansichar('Não foi possível abrir o comprovante de Crediário'+
                                      #13+'Mensagem: '+sMsg+#13+'Deseja tentar outra vez?'),'Erro',
                                      mb_yesno+mb_iconerror) = idNo then
            begin
              break;
            end;
          end;
        until sMsg = OK;


        // imprimir o comprovante com os produtos
        if iComprovante_Crediario_produto = 1 then
        begin
         sMsg :=cECF_Usa_Gerencial(iECF_Modelo, texto_justifica('SEGUNDA VIA DO CUPOM FISCAL',48,' ',taCentralizado));
         SMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                texto_justifica('No: '+sNumero_Cupom+
                                ' Data:'+DateToStr(dData_Sistema)+
                                ' Hora:'+TimeToStr(time),48,
                                ' ',taCentralizado));

         SMsg :=cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');
         SMsg :=cECF_Usa_Gerencial(iECF_Modelo, 'Item Codigo        Descricao');
         SMsg :=cECF_Usa_Gerencial(iECF_Modelo, '                    Qtde Un.  Vl.Unit    Vl.Item');
         SMsg :=cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');

          for i := 0 to grid.RowCount - 1 do
          begin
            if (grid.Cell[1,i].asinteger = 1) AND (grid.cell[13,i].asinteger = 0) then
            begin
              SMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                texto_justifica(GRID.CELL[2,I].ASSTRING,3,'0',taDireita)+' '+
                texto_justifica(GRID.CELL[3,I].ASSTRING,13,'0',taDireita)+' '+
                texto_justifica(GRID.CELL[4,I].ASSTRING,30,' ',taEsquerda));

                      SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'              '+
                  texto_justifica(formatfloat('###,###,##0.000',GRID.CELL[5,I].ASFLOAT),10,' ',taDireita)+
                  texto_justifica(GRID.CELL[12,I].ASSTRING,2,' ',taEsquerda)+' '+
                  texto_justifica(formatfloat('###,###,##0.000',GRID.CELL[6,I].ASFLOAT),10,' ',taDireita)+
                  texto_justifica(formatfloat('###,###,##0.00',GRID.CELL[9,I].ASFLOAT),11,' ',taDireita));

                if GRID.CELL[7,I].ASFLOAT > 0 then
                begin
                   SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'              '+
                     'Desconto:  -'+texto_justifica(formatfloat('###,###,##0.00',GRID.Cell[7,I].ASFLOAT),8,' ',taDireita));
                end;
                if GRID.CELL[8,I].ASFLOAT > 0 then
                begin

                     SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'              '+
                     'Acréscimo: +'+texto_justifica(formatfloat('###,###,##0.00',GRID.CELL[8,I].ASFLOAT),8,' ',taDireita));
                end;
            end;
          end;

          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'                   Subtotal do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',rTotal_Venda),11,' ',taDireita));
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',rTotal_Desconto),11,' ',taDireita));
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'                           Acrescimo:'+texto_justifica(formatfloat('###,###,##0.00',rTotal_Acrescimo),11,' ',taDireita));
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'                      Total do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',ed_total_pagar.VALUE),11,' ',taDireita));
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          if cb_forma1.Text <> '' then
          begin
            SMsg :=cECF_Usa_Gerencial(iECF_Modelo,  texto_justifica(cb_forma1.text+':',20,' ',taEsquerda)+' '+
                                                    texto_justifica(formatfloat('###,###,##0.00',ed_forma1.value),11,' ',taDireita));
          end;
          if cb_forma2.Text <> '' then
          begin
            SMsg :=cECF_Usa_Gerencial(iECF_Modelo,  texto_justifica(cb_forma2.text+':',20,' ',taEsquerda)+' '+
                                                    texto_justifica(formatfloat('###,###,##0.00',ed_forma2.value),11,' ',taDireita));
          end;
          if cb_forma3.Text <> '' then
          begin
            SMsg :=cECF_Usa_Gerencial(iECF_Modelo,  texto_justifica(cb_forma3.text+':',20,' ',taEsquerda)+' '+
                                                    texto_justifica(formatfloat('###,###,##0.00',ed_forma3.value),11,' ',taDireita));
         end;
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,' ');
          SMsg :=cECF_Usa_Gerencial(iECF_Modelo,' ');
        end;

        // rodar conforme a variavel icrediario_prestacao = qtde de prestacoes
        for i := 1 to iCrediario_prestacao do
        begin


          if sMsg = OK then
          begin
            repeat
              //BlockInput(true);
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '             COMPROVANTE DE DÉBITO              ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('CUPOM.....: '+
                           zerar(sNumero_Cupom,6),48,' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('DOCUMENTO.: '+
                           zerar(sNumero_Cupom,6)+'/'+inttostr(i),48,
                                           ' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('CLIENTE...: '+
                           sCli_codigo+'-'+sCli_Nome,48,' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('ENDERECO..: '+sCli_Endereco ,48,' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('CPF/CNPJ..: '+sCli_CPF,48,' ',taEsquerda));

              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('PARCELA...: '+Zerar(INTTOSTR(I),2)+'/'+
                           ZERAR(IntToStr(iCrediario_prestacao),2),48,' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('VENCIMENTO: '+
                           datetostr(IncMonth(dData_sistema,i))
                           ,48,' ',taEsquerda));
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
                           Texto_Justifica('VALOR.....: '+
                           FORMATFLOAT('R$ ###,###,##0.00',rvalor_total_crediario /
                           iCrediario_prestacao),48,' ',taEsquerda));

              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '------------------------------------------------');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '            Assinatura do Cliente               ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');
              sMsg :=cECF_Usa_Gerencial(iECF_Modelo,
              '                                                ');




              if sMsg = 'ERRO' then
              begin
                BlockInput(false);
                if application.MessageBox(pansichar('Não foi possível imprimir o comprovante '+
                                          'de Crediário!'+#13+'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',
                                          mb_yesno+mb_iconerror) = idNo then
                  break;

              end;
            until sMsg = OK;
          end;
        end;

        bLanca_Comprovante_Prestacao := false;

        if sMsg = OK then
        begin
          // fechar o gerencial
          repeat
            //BlockInput(true);
            sMsg :=cECF_Fecha_Gerencial(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              BlockInput(false);
              if application.MessageBox(pansichar('Não foi possível finalizar o comprovante '+
                                        'de Crediário!'+#13+'Mensagem: '+sMsg+#13+
                                        'Deseja tentar outra vez?'),'Erro',
                                        mb_yesno+mb_iconerror) = idNo then
                break;

            end
            else
            begin
              bLanca_Comprovante_Prestacao := true;
            end;
          until sMsg = OK;
        end
        else
          Imprime_display('Erro na impressaão do crediário!',clRed,tiErro);
      end;
    end;


    //BlockInput(true);

    if bFinalizado then
    begin
      Imprime_display('Aguarde!Finalizando Venda!',clwhite,tiInfo);

      // cadastrar cheques
      If (bCadastra_Cheque) and (rvalor_total_cheque > 0) then
      begin


      end;
      // lancar convenio
      if (bcadastra_convenio) and (rvalor_total_convenio > 0) then
      begin


      end;

      with frmmodulo do
      begin

        // lancamento do cupom no banco de dados

        if  pedirnumcom = 'S' then
            begin
               //aqui

               {
               query.Close;
               query.SQL.Clear;
               query.SQL.Add('insert into (numero_venda, codigo_comanda, valor_total, status, datahr, codusu, num) values (:numero_venda, :codigo_comanda, :valor_total, :status, :datahr, :codusu)');
               query.Params.ParamByName('numero_venda').asString := sCod_Cupom;
               query.Params.ParamByName('codigo_comanda').asString := numcomanda;

               query.ExecSQL;
               }

            end;
        //endi



        try
        sNumero_Cupom := sNumero_Venda;
        sCod_Cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring         := sCod_Cupom;
        spCupom.ParamByName('numero').asstring         := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring            := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').AsString            := sECF_Serial;
        spCupom.ParamByName('data').asdate             := dData_Sistema;
        spCupom.ParamByName('hora').AsTime             := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger     := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat   := rTotal_Venda;
        spCupom.ParambyName('Valor_Desconto').asfloat  := rTotal_Desconto;
        spCupom.ParambyName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
        spCupom.ParamByName('valor_total').asfloat     := ed_total_pagar.Value;
        spCupom.ParamByName('valor_pago').asfloat      := ed_totalizador.value;
        spCupom.ParamByName('valor_troco').asfloat     := ed_troco.value;
        if sCli_codigo <> '' then
          spCupom.ParamByName('cod_cliente').asstring  := sCli_codigo
        else
          spCupom.ParamByName('cod_cliente').Clear;

        spCupom.ParamByName('cancelado').asinteger     := 0;
        spcupom.parambyname('cpf_consumidor').asstring := sConsumidor_CPF;
        spcupom.ParamByName('nome_consumidor').asstring := copy(sConsumidor_Nome,1,40);
        spcupom.ParamByName('cod_caixa').asinteger := icodigo_Usuario;
        spCupom.ParamByName('ecf_caixa').asstring := Copy(sECF_Caixa,1,3);
        spcupom.ParamByName('cod_vendedor').asinteger := iVendedorCodigo;

        if  pedirnumcom = 'S' then
            begin
              spcupom.ParamByName('codigo_comanda').asString := numcomanda;
            end;
        //endi


        spCupom.Prepare;
        spCupom.Execute;
        except
          showmessage('erro');
        end;

        // Excluir os arquivos temporarios
        try
         frmModulo.spCupom_Temp_delete.prepare;
         frmModulo.spCupom_Temp_delete.execute;
        except
        end;

        if bLanca_pre_venda then
        begin


          // atualizar situacao da pre-venda para 2 = concluida
          frmModulo.query_servidor.close;
          frmModulo.query_servidor.sql.clear;
          frmModulo.query_servidor.sql.add('update c000074 set situacao = 2 where codigo = '''+
                                            Zerar(inttostr(iPre_venda_codigo),6)+'''');
          frmmodulo.query_servidor.ExecSQL;

          bLanca_pre_venda := false;
        end;
        if blanca_os then
        begin
          // atualizar a situacao da os para FECHADA
          frmModulo.query_servidor.close;
          frmModulo.query_servidor.sql.clear;
          frmModulo.query_servidor.sql.add('update c000051 set situacao = ''FECHADA'' where codigo = '''+
                                            Zerar(inttostr(iOS_codigo),6)+'''');
          frmmodulo.query_servidor.ExecSQL;
          bLanca_OS := false;
        end;

        if bLanca_mesa then
        begin
          // excluir a mesa e os itens
          frMmodulo.query_servidor.close;
          frmmodulo.query_servidor.sql.clear;
          frmmodulo.query_servidor.sql.add('delete from r000002 where cod_mesa ='+IntToStr(iMesa_codigo));
          frmmodulo.query_servidor.ExecSQL;

          frMmodulo.query_servidor.close;
          frmmodulo.query_servidor.sql.clear;
          frmmodulo.query_servidor.sql.add('delete from r000001 where codigo ='+IntToStr(imesa_codigo));
          frmmodulo.query_servidor.ExecSQL;
          // inserir a liberacao da mesa para nao aparecer no sistema de frente
          try
            frMmodulo.query_servidor.close;
            frmmodulo.query_servidor.sql.clear;
            frmmodulo.query_servidor.sql.add('insert into r000003 (mesa) values ('+IntToStr(imesa_codigo)+')');
            frmmodulo.query_servidor.ExecSQL;
          except
          end;

        end;

        // lancamento dos items do cupom no banco de dados
        for i := 0 to grid.RowCount - 1 do
        begin
          // situacoes
          // 1 - Venda do Item
          // 3 - Cancelamento do Item
          // 4 - Desconto no Item
          // 5 - Acrescimo no Item

          if grid.Cell[1,i].asinteger = 1 then
          begin
            spCupom_Item.close;
            spCupom_Item.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger);
            spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
            spCupom_Item.parambyname('item').asinteger := grid.cell[2,i].asinteger;
            spCupom_Item.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
            spCupom_Item.parambyname('unidade').asstring := grid.cell[12,i].asstring;
            spCupom_Item.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
            spCupom_Item.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                  grid.cell[6,i].asfloat;
            spCupom_Item.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat;
            spCupom_Item.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
            spCupom_Item.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
            spCupom_Item.parambyname('cst').asstring := grid.cell[11,i].asstring;
            spCupom_Item.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
            spCupom_Item.parambyname('cancelado').asinteger := grid.cell[13,i].asinteger;
            spCupom_Item.parambyname('tamanho').AsString := grid.cell[14,i].AsString;
            spCupom_Item.parambyname('cor').AsString := grid.cell[15,i].AsString;

            if (grid.cell[11,i].asstring = '060') or
               (grid.cell[11,i].asstring = '010') or
               (grid.cell[11,i].asstring = '070') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'F1'
            else
            if (grid.cell[11,i].asstring = '040') or
               (grid.cell[11,i].asstring = '030') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'I1'
            else
            if (grid.cell[11,i].asstring = '041') or
               (grid.cell[11,i].asstring = '050') or
               (grid.cell[11,i].asstring = '051') or
               (grid.cell[11,i].asstring = '090') then
                 spCupom_item.ParamByName('cod_totalizador').asstring := 'N1'
            else
            if (grid.cell[11,i].asstring = 'ISS') then
               spCupom_item.ParamByName('cod_totalizador').asstring := '01S'+
                 Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
            else
              spCupom_item.ParamByName('cod_totalizador').asstring :=
                retorna_codigo_aliquota(grid.cell[10,i].asfloat);

            try
            spCupom_Item.Prepare;
            spCupom_Item.Execute;
            except
            end;
          end;
        end;

        // lancamento das formas de pagamento
        if ed_forma1.Value > 0 then
        begin
          try
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(1);
          spCupom_Forma.ParamByName('cod_cupom').asstring  := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring      := copy(cb_forma1.text,1,30);

          if ed_forma1.Value > ed_total_pagar.Value then
             spCupom_Forma.ParamByName('valor').asfloat       := ed_total_pagar.Value
          else
             spCupom_Forma.ParamByName('valor').asfloat       := ed_forma1.Value;
          //endi

          spCupom_Forma.ParamByName('prestacao').asinteger := 1;
          spCupom_Forma.ParamByName('tipo').asstring       := 'CUPOM FISCAL';
          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
          except
          end;
        end;
        if ed_forma2.Value > 0 then
        begin
          try
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(2);
          spCupom_Forma.ParamByName('cod_cupom').asstring  := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring      := copy(cb_forma2.text,1,30);

          if ed_forma2.Value > ed_total_pagar.Value then
             spCupom_Forma.ParamByName('valor').asfloat       := ed_total_pagar.Value
          else
             spCupom_Forma.ParamByName('valor').asfloat       := ed_forma2.Value;
          //endif

          spCupom_Forma.ParamByName('prestacao').asinteger := 2;
          spCupom_Forma.ParamByName('tipo').asstring       := 'CUPOM FISCAL';
          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
          except
          end;
        end;
        if ed_forma3.Value > 0 then
        begin
          try
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(3);
          spCupom_Forma.ParamByName('cod_cupom').asstring  := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring      := copy(cb_forma3.text,1,30);

          if ed_forma3.Value > ed_total_pagar.Value then
             spCupom_Forma.ParamByName('valor').asfloat       := ed_total_pagar.Value
          else
             spCupom_Forma.ParamByName('valor').asfloat       := ed_forma3.Value;
          //endi

          spCupom_Forma.ParamByName('prestacao').asinteger := 3;
          spCupom_Forma.ParamByName('tipo').asstring       := 'CUPOM FISCAL';
          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
          except
          end;
        end;

        // lancamento do crediario
        if (bCadastra_Crediario) and (rvalor_total_crediario > 0 ) then
        begin
          // rodar conforme a variavel icrediario_prestacao = qtde de prestacoes
          for i := 1 to iCrediario_prestacao do
          begin
            try
            spCupom_Crediario.close;
            spCupom_Crediario.ParamByName('codigo').asstring := codifica_crediario(i);
            spCupom_Crediario.ParamByName('cod_cupom').asstring := scod_cupom;
            spCupom_Crediario.ParamByName('data').asdate := dData_Sistema;
            spCupom_Crediario.ParamByName('Hora').astime := Time;
            spCupom_Crediario.ParamByName('cod_cliente').asinteger := strtoint(sCli_codigo);
            spCupom_crediario.ParamByName('vencimento').asdatetime := IncMonth(dData_sistema,i);
            spCupom_Crediario.parambyname('valor').asfloat := rvalor_total_crediario /
                                                              iCrediario_prestacao;
            spCupom_Crediario.ParamByName('descricao').asstring := copy(sCrediario_Nome,1,30);
            spCupom_Crediario.Prepare;
            spCupom_Crediario.Execute;
            except
            end;
          end;
        end;
        // lancamento do comprovante do crediario
        if bLanca_comprovante_crediario then
        begin
          sNumero_Cupom := zerar( somenteNumero( scoo_crediario ),6);

          if sNumero_Cupom <> '000000' then
          begin
            try
            spNao_Fiscal.close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_Fiscal.ParamByName('indice').AsString := sTotalizador_Crediario;
            spNao_Fiscal.ParamByName('descricao').AsString := sNome_Totalizador_Crediario;
            spNao_fiscal.ParamByName('valor').asfloat := rvalor_total_crediario;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('COO').asstring := sCOO_crediario;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF_Crediario;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('GRG').clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
            spnao_fiscal.Prepare;
            spNao_Fiscal.Execute;
            except
            end;
          end;
        end;

        // lancamento do comprovante da prestacao

        if bLanca_Comprovante_Prestacao then
        begin
          sNumero_cupom := zerar( somenteNumero( sCOO_Prestacao ), 6);

          if sNumero_Cupom <> '000000' then
          begin
            try
            spNao_Fiscal.close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sCOO_Prestacao;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF_prestacao;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG_prestacao;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spnao_fiscal.Prepare;
            spNao_Fiscal.Execute;
            except
            end;
          end;
        end;

        // lancar os dados do comprador, mesmo sem cadastro ou a vista
        try
        spCupom_consumidor.Close;
        spCupom_consumidor.parambyname('codigo').Asstring := sCod_Cupom;
        if sCli_codigo <> '' then
          spCupom_consumidor.parambyname('cod_cliente').Asinteger := strtoint(scli_codigo)
        else
          spCupom_consumidor.parambyname('cod_cliente').Clear;
        spCupom_consumidor.parambyname('nome').asstring     := copy(sCli_Nome,1,80);
        spCupom_consumidor.parambyname('endereco').asstring := copy(sCli_Endereco,1,80);
        spCupom_consumidor.parambyname('cidade').asstring   := copy(sCli_Cidade,1,50);
        spCupom_consumidor.parambyname('uf').asstring       := copy(sCli_uf,1,2);
        spCupom_consumidor.parambyname('cep').asstring      := copy(scli_cep,1,9);
        spCupom_consumidor.parambyname('cpf').asstring      := copy(sCli_CPF,1,18);
        spCupom_consumidor.parambyname('placa').asstring    := copy(sCli_Placa,1,10);
        spCupom_consumidor.parambyname('km').asstring       := copy(sCli_Km,1,10);
        spCupom_consumidor.parambyname('vendedor').asstring := copy(scli_vendedor,1,50);
        spCupom_consumidor.Prepare;
        spCupom_consumidor.Execute;
        except
        end;
      end;

      pn_fechamento.Visible := false;
      img_fechamento.visible := false;
      FRMVENDA.PopupMenu := pop_principal;
      pn_principal.Enabled := true;

      bVenda := false;
      if bBusca_foto_produto then
      begin
        img_shape.Visible := false;
        img_produto.Picture := nil;
      end;
      if bBusca_foto_produto then
      begin
        img_borda.Visible := true;
        img_shape.Visible := false;
        img_produto.Visible := true;
        img_fundo.visible := true;
      end;

      Limpa_controles;
      Imprime_display('             C A I X A    L I V R E',clWhite,tiLivre);
      if sRamo_Tipo = '3' then
      begin
        if iCodigo_abastecimento > 0 then
        begin
          timer_abastecimento.Enabled := false;
          query.close;
          query.sql.clear;
          query.sql.add('update posto_abastecimento set situacao = 1');
          query.SQL.add('where codigo = '+inttostr(iCodigo_abastecimento));
          query.ExecSQL;

          grid_abastecimento.DeleteRow(ilinha_abastecimento);
          ilinha_abastecimento := 0;
          iCodigo_abastecimento := 0;
          timer_abastecimento.Enabled := true;
        end;
        PN_POSTO.Visible := true;
        grid_abastecimento.setfocus;
      end
      else
      begin
        if bLanca_Mesa then
           menu_mesaClick(frmvenda)
        else
          try
            ED_BARRA.SETFOCUS;
          except
          end;

      end;
     end;

  finally
    BlockInput(false);
    bt_confirmar_fechamento.Enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoChange(Sender: TObject);
begin
  if ed_troco.value > 0 then
    ed_troco.Font.Color := clred else
    ed_troco.Font.Color := clwhite;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_itemKeyPress(Sender: TObject; var Key: Char);
var rd : real;
begin
  if key = #13 then
  begin
    // verificar se o codigo estah em branco
    if sProd_barra = '' then
    begin
      Imprime_display('ERRO! CÓDIGO EM BRANCO!',CLRED,TIERRO);
      sleep(2000);
      exit;
    end;



    // VERIFICAR SE EXISTE ALGUM VALOR ZERADO OU NEGATIVO
    if (ed_unitario.value <= 0) or
       (ed_qtde.value <= 0 ) or
       (ed_total_item.Value <= 0 ) then
    begin
      Imprime_display('TOTAL NÃO PODE SER ZERADO OU NEGATIVO!',CLRED,TIERRO);
      sleep(2000);
      exit;
    end;

    ed_barra.TEXT := '';



    // pegar o valor total e dividir pelo valor unitario para achar a qtde
    // modalidade utilizada em postos de combustiveis com bombas analogicas
    if bMuda_total then
    begin
      if bTruncar_valor then
      BEGIN
         rprod_qtde := Truncar_Valor(ED_TOTAL_ITEM.VALUE / ed_unitario.value);
         rProd_total := Truncar_Valor(rProd_Qtde * ed_unitario.Value);
      END
      else
      BEGIN
         rprod_qtde := ed_total_item.value / ed_unitario.value;
         rProd_total := rProd_qtde * ed_unitario.Value;
      END;

      if rProd_total < ed_total_item.value then
      begin
         while formatfloat('########0.00',rProd_total) <>
               formatfloat('########0.00',ed_total_item.value) do
         begin

           rprod_qtde  := rprod_qtde + 0.001;
           if bTruncar_valor then
           BEGIN
             rProd_total := Truncar_Valor(rprod_qtde * ed_unitario.Value);
           END
           else
             rProd_total := rprod_qtde * ed_unitario.Value;
         end;
      end
      else
      begin
        if rProd_total > ed_total_item.value then
        begin
           while formatfloat('########0.00',rProd_total) <>
                 formatfloat('########0.00',ed_total_item.value) do
           begin
             rprod_qtde  := rprod_qtde - 0.001;
             if btruncar_valor then
             BEGIN
               rProd_total := Truncar_Valor(rprod_qtde * ed_unitario.Value);
             END
             else
               rProd_total := rprod_qtde * ed_unitario.Value;
           end;
        end;
      end;
      ed_qtde.value := rProd_qtde;
    end
    else
    begin
      rProd_Qtde := ed_qtde.value;
      ed_unitario.Value := ed_unitario.value;
      rProd_total := ed_total_item.value;
      // verificar seh eh para truncar o valor total
      if bTruncar_valor then
      begin
         rProd_total := Truncar_Valor(rProd_Qtde * ed_unitario.Value);
      end
      else
      begin
        if rProd_total = 0 then
          rProd_total := rProd_qtde * ed_unitario.Value;
      end;
    end;

    // zerar as variaveis de acrescimo e desconto de retorno
    rProd_desconto := 0;
    rProd_acrescimo := 0;
    // verificar se o valo unitario é editável
    if bMuda_unitario then
    begin
      if formatfloat('##########0.00',rProd_preco) <>
         formatfloat('##########0.00',ed_unitario.value) then
      begin
        // verificar seh eh desconto ou acrescimo
        if rProd_preco < ed_unitario.value then
        begin
          // foi acrescimo
          rProd_acrescimo := ed_unitario.value - rProd_preco;
        end
        else
        begin
          // foi desconto
          rProd_desconto := rProd_preco - ed_unitario.value;

          if (isenha_desconto = 1) and (rprod_desconto >0) then
          begin
            if rDesconto_maximo > 0 then
            begin
              rd := (rprod_desconto / rProd_preco) * 100;

              if rd > rDesconto_maximo then
              begin
                frmsenha_supervisor := tfrmsenha_supervisor.create(self);
                frmsenha_supervisor.showmodal;
                if not bSupervisor_autenticado then exit;
              end;
            end
            else
            begin
              frmsenha_supervisor := tfrmsenha_supervisor.create(self);
              frmsenha_supervisor.showmodal;
              if not bSupervisor_autenticado then exit;
            end;
          end;
        end;
      end;
    end;
    // Registrar item no Grid
    Registra_Item;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_qtdeExit(Sender: TObject);
begin
  IF bTruncar_valor THEN
  BEGIN
    ed_total_item.value :=
    Truncar_Valor(
      ed_unitario.value *
      ed_qtde.Value);
  END
  ELSE
  BEGIN
    ed_total_item.value :=
    ed_unitario.value *
    ed_qtde.Value;

  END;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_qtdeEnter(Sender: TObject);
begin
//  Imprime_display('QUANTIDADE...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_unitarioEnter(Sender: TObject);
begin
//  Imprime_display('VALOR UNITÁRIO...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_itemEnter(Sender: TObject);
begin
//  Imprime_display('VALOR TOTAL...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaEnter(Sender: TObject);
begin
  if iTeclado_Modelo = 1 then
  begin
    LineFeed;
    CarRet;
  end;
  PopupMenu := nil;
  Imprime_display('SENHA/CARTÃO DE CANCELAMENTO...',clYellow,tiAlerta);
  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  if not bsair_campo then ed_senha.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin



  if key = #13 then
  begin
    if iTeclado_modelo = 1 then
    begin
       //frmModulo.teclado_display.ExibirLinha(2,'',TACBrDISAlinhamento( 2) ) ;
    end;




    if Executa_Login('MESTREDATAPDV',ed_senha.text,'') then
    begin
      bSair_campo := true;
      pn_senha_cancelar.Visible := false;
      if lb_cancelar.caption = 'Cancelar Item' then  Cancela_Item(ed_cancelar_item.text);
      if lb_cancelar.caption = 'Cancelar Cupom' then
        if bVenda then
          Cancela_cupom_aberto
        else
          Cancela_cupom_fechado;
    end
    else
    begin
      Imprime_display('NÃO AUTORIZADO!',CLRED,tiErro);
      Sleep(1500);
      Imprime_display_anterior;
      ed_senha.Text := '';
    end;
  end
  else
  begin
    if key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      pn_senha_cancelar.Visible := false;
      Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
      pn_cancelar_item.Visible := FALSE;
      ED_BARRA.SETFOCUS;
    end
    else
    begin
      if iTeclado_Modelo = 1 then
      begin
        if key = #8 then strpcopy(@men,key) else strpcopy(@men,'*');
        DispStr(@men);
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_balancaTimer(Sender: TObject);
begin
  frmModulo.balanca.LePeso(ibal_time);
  Imprime_display('Peso: '+formatfloat('###,###,##0.000',rbal_peso),clyellow,tipeso);
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AcionaBalana1Click(Sender: TObject);
begin
 if frmmodulo.balanca.Modelo <> balNenhum then
 begin
   try
     frmmodulo.balanca.ativar;
     frmmodulo.balanca.Ativo := true;
   except
   end;
   timer_balanca.Enabled := true;
 end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1Enter(Sender: TObject);
begin
  Imprime_display('Escolha a Forma de Pagamento...(F11 Retorna)',clwhite,tiPgto);
  if iTeclado_modelo = 1 then
  begin
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma1.text)))
                           +'                          ');
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1Change(Sender: TObject);
begin
    if iTeclado_Modelo = 1 then
    begin
      CarRet;
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma1.text)))
                           +'                          ');
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Enter(Sender: TObject);
begin
  Imprime_display('Escolha a 2a. Forma de Pgto...(F11 Retorna)',clwhite,tiPgto);
  if iTeclado_modelo = 1 then
  begin
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma2.text)))
                           +'                          ');
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Change(Sender: TObject);
begin
    if iTeclado_Modelo = 1 then
    begin
      CarRet;
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma2.text)))
                           +'                          ');
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Change(Sender: TObject);
begin
    if iTeclado_Modelo = 1 then
    begin
      CarRet;
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma3.text)))
                           +'                          ');
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Enter(Sender: TObject);
begin
  Imprime_display('Escolha a 3a. Forma de Pgto...(F11 Retorna)',clwhite,tiPgto);
  if iTeclado_modelo = 1 then
  begin
     strpcopy(@men,'----> '+trimleft(trimright(tiraacento_display(cb_forma3.text)))
                           +'                          ');
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1KeyPress(Sender: TObject; var Key: Char);
begin
    if iTeclado_Modelo = 1 then
    begin
      if blimpa_edit_display then
      begin
        CarRet;
        strpcopy(@men,'                       ');
        DispStr(@men);
        CarRet;
        bLimpa_edit_display := false;
      end;
      strpcopy(@men,key);
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2KeyPress(Sender: TObject; var Key: Char);
begin
    if iTeclado_Modelo = 1 then
    begin
      strpcopy(@men,key);
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ConsultadeClientes1Click(Sender: TObject);
begin
  Imprime_display('Consulta Cliente',clwhite,tiCliente);
  frmCliente_consulta := tfrmCliente_consulta.create(self);
  frmCliente_consulta.showmodal;
  FreeAndNil(frmCliente_consulta);
  Imprime_display_anterior;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ConsultadePreos1Click(Sender: TObject);
begin
  Imprime_display('Consulta de Preço',clwhite,tiPgto);
  //abre a tela de consulta de preco
  frmpreco_consulta := tfrmpreco_consulta.create(self);
  frmpreco_consulta.showmodal;
  Imprime_display_anterior;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Opes1Click(Sender: TObject);
begin
  // mostrar o panel contendo a legenda dos comandos do menu OPCOES
  pop_principal.Popup(frmvenda.left + 60, frmvenda.top + 330);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.PesquisadeProdutos1Click(Sender: TObject);
begin
  frmProduto_consulta := tfrmproduto_consulta.create(self);
  iPesquisa_produto := 1;
  frmProduto_consulta.showmodal;
  ed_barra.Text:=IntToStr(iProd_Codigo);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Cupons1Click(Sender: TObject);
begin
  frmcupom_menu := tfrmcupom_menu.create(self);
  frmcupom_menu.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Cancelar1Click(Sender: TObject);
begin
  if bBusca_foto_produto then
  begin
    img_borda.Visible := true;
    img_shape.Visible := true;
    img_produto.Visible := true;
    img_fundo.visible := true;
  end;

  pn_fechamento.Visible := false;
  img_fechamento.visible := false;
  FRMVENDA.PopupMenu := pop_principal;
  pn_principal.Enabled := true;
  ed_barra.setfocus;
  if not bTotalizado then
    Imprime_display('INFORME O PRODUTO...',clwhite,tiLivre);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_fechamentoClick(Sender: TObject);
begin
  if bBusca_foto_produto then
  begin
    img_borda.Visible := true;
    img_shape.Visible := true;
    img_produto.Visible := true;
    img_fundo.visible := true;
  end;

  pn_fechamento.Visible := false;
  img_fechamento.visible := false;
  FRMVENDA.PopupMenu := pop_principal;
  pn_principal.Enabled := true;
  ed_barra.setfocus;
  if not bTotalizado then
    Imprime_display('INFORME O PRODUTO...',clwhite,tiLivre);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AcionaGaveta1Click(Sender: TObject);
begin
  try
    cECF_Abre_Gaveta(iECF_Modelo);
  except
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FecharCaixa1Click(Sender: TObject);
begin
  try
    pn_tampa.Visible := true;
    frmCaixa_Fechamento := tfrmcaixa_fechamento.create(self);
    frmCaixa_fechamento.showmodal;
  finally
    pn_tampa.visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormShow(Sender: TObject);
var
  I: integer;

begin

  vardir := extractfilepath(application.ExeName);

  arqini := TIniFile.Create(vardir+'ComPortTest.ini');

  frmmodulo.tbForma_Pgto.Open;
  
  ComPort1.LoadSettings(stIniFile, vardir+'ComPortTest.ini');

  bIdentificarVendedor := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  iColunaCOnsultaProdutos := LerParametro('COLUNA_CONSULTA_PRODUTOS', 'I', 0);


  frmmodulo.query.Close;
  frmmodulo.query.SQL.Clear;
  frmmodulo.query.SQL.Add('select * from config');

  frmmodulo.query.Open;

  iavanca := frmmodulo.query.FieldByName('avanco').AsInteger;
  colunas := frmmodulo.query.FieldByName('colunas').AsInteger;
  inicodbal := frmmodulo.query.FieldByName('inicodbal').AsString;
  pedirnumcom := frmmodulo.query.FieldByName('pedirnumcom').AsString;

  if frmmodulo.query.FieldByName('dadosconsumidor').AsInteger = 1 then
     bConsumidor := true
  else
     bConsumidor := false;
  //endi  

  frmmodulo.query.Close;

  timer_cargaTimer(frmvenda);

  // caso haja cupom nao fiscal aberto ou gerencial fazer o fechamento
  cECF_Fecha_Gerencial(iECF_Modelo);
  cECF_Fecha_CNFV(iECF_Modelo);
  bLanca_pre_venda := false;
  blanca_os := false;


  grid.ClearRows;

  frmMsg_Operador.lb_msg.caption := 'Aguarde! Verificando status do Cupom Fiscal...';
  frmMsg_Operador.Show;
  frmMsg_Operador.Refresh;
  Application.ProcessMessages;

  if not bCaixa_aberto then
  begin
    frmcaixa_abertura := tfrmcaixa_abertura.create(self);
    frmcaixa_abertura.showmodal;

    if not bcaixa_aberto then
    begin
       Application.MessageBox(pansichar(
        'As funções de venda serão bloqueadas!'),
        'Atenção',mb_ok+mb_iconWarning);
          close;
    end;
  end;



  // verificar se existem cupons abertos e fazer o tratamento
  if (cECF_Cupom_Fiscal_Aberto(iECF_Modelo) = 'SIM') or
     (bcupom_aberto) then
  begin

    frmMsg_Operador.lb_msg.caption := 'Aguarde! Recuperando dados do cupom em aberto...';
    frmMsg_Operador.Show;
    frmMsg_Operador.Refresh;
    Application.ProcessMessages;



    query.close;
    query.sql.clear;
    query.sql.add('select * from cupom_temp');
    query.open;

    if query.RecordCount > 0 then
    begin
      sNumero_Cupom := query.fieldbyname('numero').asstring;
      sNumero_Venda := QUERY.FIELDBYNAME('NUMERO').asstring;
      hHora_Cupom := query.fieldbyname('hora').AsDateTime;
      sNumero_contador_cupom := query.fieldbyname('ccf').asstring;

      // alimentar as variaveis de status
      bVenda := true;

      if query.fieldbyname('totalizado').asinteger = 0 then
        bTotalizado := false
      else
        bTotalizado := true;
      if query.fieldbyname('pago1').asinteger = 0 then
        bPago1 := false
      else
        bPago1 := true;

      if query.fieldbyname('pago2').asinteger = 0 then
        bPago2 := false
      else
        bPago2 := true;
      if query.fieldbyname('pago3').asinteger = 0 then
        bPago3 := false
      else
        bPago3 := true;
      if query.fieldbyname('finalizado').asinteger = 0 then
        begin
          bFinalizado := false
        end
      else
        begin
          bFinalizado := true;

        end;


        //Marcos

        bidentcpfcnpj := false;
        //limpa variáveis média de tributação
        fsb_valorliquidocupom := 0;
        fsb_valorliquidoitem := 0;

        porcibpt := 0;
        vlribpt  := 0;


      // alimentar as variaveis de totais
      rTotal_Venda := 0;
      iTotal_itens := 0;
      lb_item.Caption := '000';
      lb_total.Caption := 'R$ 0,00';
      iItem := 1;
      // imprimir no grid o cabechalho do cupom
      grid_topo.ClearRows;
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      datetostr(dData_sistema)+'  '+timetostr(hHora_Cupom)+
                      '                         COO: '+sNumero_cupom;
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '--------------------------------------------------------';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '<B><FONT size="12">             CUPOM FISCAL</FONT></B>';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      'ITEM CÓDIGO DESCRIÇÃO            QTDE.   PREÇO    TOTAL';
      grid_topo.AddRow(1);
      grid_topo.cell[0,grid_topo.LastAddedRow].asstring :=
                      '--------------------------------------------------------';
      // limpar o grid dos itens
      grid.ClearRows;

      if bBusca_foto_produto then
      begin
        img_shape.Visible := true;
        img_produto.Picture := nil;
      end;


      // alimentar o grid...

      query.close;
      query.sql.clear;
      query.sql.add('select item.*, prod.nome produto');
      query.sql.add('from cupom_item_temp item, estoque prod');
      query.sql.add('where item.cod_produto = prod.codigo');
      query.sql.add('order by item.item');
      query.open;

      query.first;
      while not query.eof do
      begin
        if query.fieldbyname('cancelado').asinteger = 0 then
        begin
          // Registrar item no Grid
          grid.AddRow(1);
          grid.cell[0,grid.LastAddedRow].asstring := zerar(query.fieldbyname('item').asstring,4)+' '+
                                                     zerar(query.fieldbyname('cod_produto').asstring,6)+' '+
                                                     texto_justifica(query.fieldbyname('produto').asstring,15,' ',taEsquerda)+' '+
                                                     texto_justifica(query.fieldbyname('unidade').asstring,2,' ',taEsquerda)+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.000',query.fieldbyname('qtde').asfloat),
                                                                     9,' ',taDireita)+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.00',query.fieldbyname('valor_unitario').asfloat),
                                                                     8,' ',taDireita)+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.00',query.fieldbyname('valor_total').asfloat),
                                                                     8,' ',taDireita);



          // alimentar os campos invisiveis do grid com as informacoes do produto
          grid.cell[1,grid.LastAddedRow].asinteger := 1; // venda de item
          grid.cell[2,grid.LastAddedRow].asSTRING :=  ZERAR(INTTOSTR(query.fieldbyname('item').asinteger),3);
          grid.cell[3,grid.LastAddedRow].asinteger := query.fieldbyname('cod_produto').asinteger;
          grid.Cell[4,grid.LastAddedRow].asstring  := query.fieldbyname('produto').asstring;
          grid.Cell[5,grid.LastAddedRow].asfloat   := query.fieldbyname('qtde').asfloat;
          grid.Cell[6,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_unitario').asfloat;
          grid.Cell[7,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_desconto').asfloat;
          grid.Cell[8,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_acrescimo').asfloat;
          grid.Cell[9,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_total').asfloat;
          grid.Cell[10,grid.LastAddedRow].asfloat  := query.fieldbyname('aliquota').asfloat;
          grid.Cell[11,grid.LastAddedRow].asstring := query.fieldbyname('cst').asstring;
          grid.cell[12,grid.LastAddedRow].AsString := query.fieldbyname('unidade').asstring;
          grid.cell[13,grid.LastAddedRow].asinteger:= 0;
          // registrar o desconto e acrescimo em outra linha
          if query.fieldbyname('valor_desconto').asfloat > 0 then
          begin
            grid.AddRow(1);
            grid.cell[0,grid.LastAddedRow].asstring := '<i><FONT color="#FF0000">            '+
                                                       'Desconto em R$ '+
                                                       '          '+
                                                       texto_justifica(formatfloat(
                                                                       '###,###,##0.00',-query.fieldbyname('valor_desconto').asfloat),
                                                                       9,' ',taDireita)+'</i></FONT>';
            grid.cell[1,grid.LastAddedRow].asinteger := 4; // desconto
          end;
          if query.fieldbyname('valor_acrescimo').asfloat > 0 then
          begin
            grid.AddRow(1);
            grid.cell[0,grid.LastAddedRow].asstring := '<i><FONT color="#0000FF">            '+
                                                       'Acréscimo em R$'+
                                                       '          '+
                                                       texto_justifica(formatfloat(
                                                                       '###,###,##0.00',query.fieldbyname('valor_acrescimo').asfloat),
                                                                       9,' ',taDireita)+'</i></FONT>';
            grid.cell[1,grid.LastAddedRow].asinteger := 5; // acrescimo
          end;
          // acumluar o item nas variaveis de totalizacao
          rTotal_Venda := rTotal_venda + query.fieldbyname('valor_total').asfloat;
          Inc(iTotal_Itens);
          Inc(iItem);

        end
        else
        begin
          // I T E M   C A N C E L A D O


          // diminui os totalizadores
          Dec(iTotal_Itens);
          rTotal_Venda := rtotal_venda - query.fieldbyname('valor_total').asfloat;

          // Registrar item no Grid
          grid.AddRow(1);
          grid.cell[0,grid.LastAddedRow].asstring := '<FONT color="#FF0000">Cancelamento do Item '+ZERAR(query.fieldbyname('item').asstring,4)+'  '+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.000',-query.fieldbyname('qtde').asfloat),
                                                                     10,' ',taDireita)+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.00',query.fieldbyname('valor_unitario').asfloat),
                                                                     9,' ',taDireita)+
                                                     texto_justifica(formatfloat(
                                                                     '###,###,##0.00',-query.fieldbyname('valor_total').asfloat),
                                                                     9,' ',taDireita)+'</FONT>';

          // alimentar os campos invisiveis do grid com as informacoes do produto

          grid.cell[1,grid.LastAddedRow].asinteger := 3; // cancelamento do item
          grid.cell[2,grid.LastAddedRow].asSTRING  := ZERAR(INTTOSTR(query.fieldbyname('item').asinteger),3);
          grid.cell[3,grid.LastAddedRow].asinteger := query.fieldbyname('cod_produto').asinteger;
          grid.Cell[4,grid.LastAddedRow].asstring  := query.fieldbyname('produto').asstring;
          grid.Cell[5,grid.LastAddedRow].asfloat   := query.fieldbyname('qtde').asfloat;
          grid.Cell[6,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_unitario').asfloat;
          grid.Cell[7,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_desconto').asfloat;
          grid.Cell[8,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_acrescimo').asfloat;
          grid.Cell[9,grid.LastAddedRow].asfloat   := query.fieldbyname('valor_total').asfloat;
          grid.Cell[10,grid.LastAddedRow].asfloat  := query.fieldbyname('aliquota').asfloat;
          grid.Cell[11,grid.LastAddedRow].asstring := query.fieldbyname('cst').asstring;
          grid.cell[12,grid.LastAddedRow].AsString := query.fieldbyname('unidade').asstring;
          grid.cell[13,grid.LastAddedRow].asinteger:= 1;



        end;
        query.next;
      end;
      // atualizar os labels de totais e itens
      lb_item.Caption := inttostr(itotal_itens);
      lb_total.Caption := 'R$ '+formatfloat('###,###,##0.00',rTotal_venda);


      frmMsg_Operador.hide;

      query.close;
      query.sql.clear;
      query.sql.add('select * from cupom_temp');
      query.open;

      if Application.Messagebox(pansichar('Existe um cupom que não foi finalizado!'+#13+
                                          'Número: '+query.fieldbyname('numero').asstring+#13+
                                          'Data: '+query.fieldbyname('data').asstring+#13+
                                          'Hora: '+query.fieldbyname('hora').asstring+#13+
                                          'Deseja prosseguir com o seu fechamento?'),'Atenção',
                                          mb_yesNO+mb_iconWARNING) = idYes then
      begin
        // prosseguir com a edicao do cupom
        if iECF_Modelo = NENHUMA then
           begin
             assignfile(frmprincipal.arq, frmprincipal.sportaimp);
             rewrite(frmprincipal.arq);
           end;
        //endi
        ed_barra.SetFocus;
      end
      else
      begin
        // cancelar cupom
        if iECF_Modelo = NENHUMA then
           begin
             assignfile(frmprincipal.arq, frmprincipal.sportaimp);
             rewrite(frmprincipal.arq);
           end;
        //endi
        Cancela_cupom_aberto;
      end;
    end  //     if query.RecordCount > 0 then
    else
    begin
      sNumero_Cupom := cECF_Numero_Cupom(EPSON);
      sNumero_contador_cupom := cECF_Numero_Contador_Cupom(EPSON);

      // GUIO: Caso não tenha itens, simplesmente cancela
      Application.Messagebox(pansichar('Existe um cupom que não foi finalizado!'+#13+
          'Número: '+sNumero_Cupom + #13 +
          'O cupom será cancelado automaticamente!'),
          'Atenção',  mb_OK+mb_iconWARNING);

      Cancela_Cupom_Aberto;
    end;

  end // final da verificacao do cupom aberto no comando da ecf
  else
    frmMsg_Operador.Hide;

  // NORMAL
  if sRamo_Tipo = '1' then
  begin
//    Menu_os.Enabled := false;
//    Menu_os.Visible := false;
    Pn_posto.Visible := false;
    ed_barra.setfocus;
  end
  else
  // AUTO PECAS
  if sRamo_Tipo = '2' then
  begin
//    Menu_os.Enabled := true;
//    Menu_os.Visible := true;
    Pn_posto.Visible := false;
    ed_barra.setfocus;
  end
  else
  // POSTO
  if sRamo_Tipo = '3' then
  begin
    bCadastra_Placa := TRUE;

//    Menu_os.Enabled := false;
//    Menu_os.Visible := false;

    Pn_posto.Visible := true;
    pn_posto.Top := 103;
    pn_posto.Left := 27;

//    img_logo.Visible := false;

    query.close;
    query.sql.clear;
    query.sql.Add('select * from posto_config');
    query.open;

    // Abrir a porta

    sh_status_conexao.Brush.Color := clRed;
    bPosto_ok := false;
    repeat
      comport1.Port:='COM' + inttostr(query.fieldbyname('porta').asinteger);
      try
        comport1.open;

        sh_status_conexao.Brush.Color := clLime;
        bPosto_ok := true;
        lb_status_conexao.Caption := 'Concentrador '+query.fieldbyname('concentrador').asstring+
        ' conectado na COM'+query.FIELDBYNAME('PORTA').Asstring;


        // alimentação do grid dos BICOS
        query.close;
        query.sql.clear;
        query.sql.add('select * from posto_bico order by bomba, bico');
        query.open;
        query.First;




        grid_bico.ClearRows;
        grid_abastecimento.ClearRows;

        while not query.eof do
        begin
          i := grid_bico.AddRow(1);
          grid_bico.Cell[0,i].AsString := query.fieldbyname('tanque').asstring;
          grid_bico.Cell[1,i].AsString := query.fieldbyname('bomba').asstring;
          grid_bico.Cell[2,i].asstring := query.fieldbyname('bico').asstring;
          // COLOQUEI PARA PEGAR A MASCARA DA BOMBA E DO BICO
//          grid_bico.Cell[1,i].AsString := query.fieldbyname('bomba').asstring;
//          grid_bico.Cell[2,i].asstring := query.fieldbyname('bico').asstring;


          grid_bico.Cell[3,i].asstring := 'PRONTA';
          grid_bico.cell[4,i].asinteger := query.fieldbyname('codigo').asinteger;
          grid_bico.cell[5,i].asinteger := query.fieldbyname('posicao').asinteger;

          // fazer o lancamento do encerrante inicial no dia
          query3.close;
          query3.sql.clear;
          query3.sql.add('select * from posto_bico_movimento');
          query3.sql.add('where data = (select max(data) from posto_bico_movimento)');
          query3.sql.add('and cod_bico = '+query.fieldbyname('codigo').asstring);
          query3.open;
          if query3.RecordCount > 0 then
          begin
            if query3.fieldbyname('data').asdatetime <> dData_sistema then
            begin
              query2.close;
              query2.sql.clear;
              query2.sql.add('insert into posto_bico_movimento');
              query2.sql.add('(cod_bico,EI,EF,VOLUME,DATA)');
              query2.sql.add('values');
              query2.sql.add('(:cod_bico,:EI,:EF,:VOLUME,:DATA)');
              query2.parambyname('cod_bico').asinteger := query3.fieldbyname('cod_bico').asinteger;
              query2.parambyname('EI').asfloat := query3.fieldbyname('EF').asfloat;
              query2.parambyname('EF').asfloat := query3.fieldbyname('EF').asfloat;
              query2.parambyname('volume').asfloat := 0;
              query2.parambyname('data').asdatetime := ddata_sistema;
              query2.execsql;
            end;
          end
          else
          begin
            query2.close;
            query2.sql.clear;
            query2.sql.add('insert into posto_bico_movimento');
            query2.sql.add('(cod_bico,EI,EF,VOLUME,DATA)');
            query2.sql.add('values');
            query2.sql.add('(:cod_bico,:EI,:EF,:VOLUME,:DATA)');
            query2.parambyname('cod_bico').asinteger := query.fieldbyname('codigo').asinteger;
            query2.parambyname('EI').asfloat := 0;
            query2.parambyname('EF').asfloat := 0;
            query2.parambyname('volume').asfloat := 0;
            query2.parambyname('data').asdatetime := ddata_sistema;
            query2.execsql;
          end;
          query.next;
        end;
        iQtde_bico := query.RecordCount;



        qrabastecimento.close;
        qrabastecimento.sql.clear;
        qrabastecimento.sql.add('select posto_abastecimento.*, estoque.nome produto');
        qrabastecimento.sql.add('from posto_abastecimento, estoque');
        qrabastecimento.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
        qrabastecimento.sql.add('and posto_abastecimento.situacao = 0');
        qrabastecimento.sql.add('order by posto_abastecimento.codigo');
        qrabastecimento.Open;
        qrabastecimento.First;
        while not qrAbastecimento.Eof do
        begin
          i := grid_abastecimento.AddRow(1);
          // data
          grid_abastecimento.Cell[0,i].asstring := qrabastecimento.fieldbyname('data').asstring;
          // hora
          grid_abastecimento.cell[1,i].asstring := qrabastecimento.fieldbyname('hora').asstring;
          // bomba
          grid_abastecimento.cell[2,i].asstring := qrabastecimento.fieldbyname('bomba').asstring;
          // bico
          grid_abastecimento.cell[3,i].asstring := qrabastecimento.fieldbyname('bico').asstring;
          // produto
          grid_abastecimento.cell[4,i].asstring := qrabastecimento.fieldbyname('produto').asstring;
          // Quantidade
          grid_abastecimento.cell[5,i].asfloat  := qrabastecimento.fieldbyname('qtde').asfloat;
          // preco unitario
          grid_abastecimento.cell[6,i].asfloat  := qrabastecimento.fieldbyname('unitario').asfloat;
          // total
          grid_abastecimento.cell[7,i].asfloat  := qrabastecimento.fieldbyname('total').asfloat;
          // encerrante inicial
          grid_abastecimento.cell[8,i].asfloat  := qrabastecimento.fieldbyname('ei').asfloat;
          // encerrante final
          grid_abastecimento.cell[9,i].asfloat  := qrabastecimento.fieldbyname('ef').asfloat;
          // codigo
          grid_abastecimento.cell[10,i].asinteger  := qrabastecimento.fieldbyname('codigo').asinteger;
          // tanque
          grid_abastecimento.cell[11,i].asstring :=  qrabastecimento.fieldbyname('tanque').asstring;




          qrAbastecimento.Next;
        end;

        TIMER_BICO.Enabled := true;
        timer_abastecimento.Enabled := true;
        grid_abastecimento.SetFocus;
        if grid_abastecimento.RowCount > 0 then grid_abastecimento.SelectedRow := 0;

      except
        if application.messagebox(pansichar('Erro na Conexão! Concentrador '+
                                            query.fieldbyname('concentrador').asstring+
                                            ' - Porta COM'+query.FIELDBYNAME('PORTA').Asstring+'.'+#13+
                                            'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror) = idNo then
        begin
          Destroy;
          break;
        end;
      end;
    until bPosto_ok = true;


    grid_abastecimento.SetFocus;
  end
  else
  // RESTAURANTES
  if sRamo_Tipo = '4' then
  begin
//    Menu_os.Enabled := false;
//    Menu_os.Visible := false;
    Pn_posto.Visible := false;
    ed_barra.setfocus;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Sangria1Click(Sender: TObject);
begin
  if not bVenda then
  begin
    frmsangria := tfrmsangria.create(self);
    frmsangria.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Suprimento1Click(Sender: TObject);
begin
  if not bVenda then
  begin
    frmsuprimento := tfrmsuprimento.create(self);
    frmsuprimento.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.EFCancelamento1Click(Sender: TObject);
begin
  if bTEF then
  begin
    frmTEF_Cancelamento := tfrmTEF_Cancelamento.create(self);
    frmTEF_Cancelamento.showmodal;
  end
  else
  begin
    Application.messagebox('Módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.EFModoAdministrativo1Click(Sender: TObject);
var txt : textfile;
begin
  if bTEF then
  begin
    frmTef_Bandeira := TfrmTef_Bandeira.create(self);
    frmTef_Bandeira.ShowModal;

    if (Tef_Bandeira_escolhida = Tef_Redecard) or
       (Tef_Bandeira_escolhida = Tef_visanet) or
       (Tef_Bandeira_escolhida = Tef_amex) then
    begin
      assignfile(txt,sTEFTemp_Path+'gp.tmp');
      rewrite(txt);
      writeln(txt,'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
      TEFLimpaVariaveis;
      TEFModoAdministrativo;
      BlockInput(false);


      if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
      begin
        TEFImprimeTransacao('R');
        if sTEFRetorno = '0' then
          TEFFechaOperacao
        else
        begin
          TEFVerificaGerenciadorAtivo;
          TEFNaoConfirmaOperacao;
        end;
      end;
    end;

    if (Tef_Bandeira_escolhida = Tef_tecban) or
       (Tef_Bandeira_escolhida = Tef_tribanco) then
    begin
      if bTEF_TecBan then
      begin
        assignfile(txt,sTEFTemp_Path+'gp.tmp');
        rewrite(txt);
        writeln(txt,'TECBAN');
        closefile(txt);
        iTEFTecban := 1;
        TEFLimpaVariaveis;
        TEFModoAdministrativo;




        if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
          begin
            TEFVerificaGerenciadorAtivo;
            TEFNaoConfirmaOperacao;
          end;
        end;
      end
      else
      begin
        application.messagebox('Módulo do TecBan não foi instalado!','Erro',mb_ok+mb_iconerror);
      end;
    end;
    If Tef_Bandeira_escolhida = Tef_Hipercard then
    begin
        assignfile(txt,sTEFTemp_Path+'gp.tmp');
        rewrite(txt);
        writeln(txt,'HIPERCARD');
        closefile(txt);
        iTEFTecban := 2;
        TEFLimpaVariaveis;
        TEFModoAdministrativo;

        if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
          begin
            TEFVerificaGerenciadorAtivo;
            TEFNaoConfirmaOperacao;
          end;
        end;
    end;
  end
  else
  begin
    Application.messagebox('Módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.rocarOperador1Click(Sender: TObject);
begin
  sFuncao_Senha := '001';
  frmsenha := tfrmsenha.create(self);
  frmsenha.showmodal;


  if busuario_Autenticado then
  begin
    // mudar o nome do usuario na tela de venda
    frmvenda.lb_operador.caption := copy(sNome_Operador,1,10);
    application.MessageBox('Será emitida um leitura X para efeito de conferência de caixa.',
                           'Aviso',mb_ok+mb_iconinformation);
    // emitir uma leitura x
    repeat
       sMsg := cECF_LeituraX(iECf_modelo);
       if sMsg <> OK then
       begin
         if application.messagebox(pansichar('Erro na impressão da Leitura X'+#13+
                                             'Mensagem: '+sMsg+
                                         #13+'Deseja tentar outra vez?'),'ECF', mb_yesno+
            mb_iconerror) = idno then
         begin
            break;
         end;
       end;
    until
      sMsg = OK;

    application.MessageBox('Troca efetuada com sucesso!','Aviso',mb_ok+mb_iconinformation);

  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CaixaIndisponvel1Click(Sender: TObject);
begin
  if bVenda then exit;
  if timer_balanca.Enabled then exit;

  frmProtetor_tela := TfrmProtetor_tela.Create(self);
  frmProtetor_tela.ShowModal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.menu_PrevendaClick(Sender: TObject);
begin
  if menu_Prevenda.Visible = false then exit;


  if bVenda then
  begin
    Imprime_display('Venda Aberta!',clred,tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On E : exception do
        begin
          if Application.MessageBox(pansichar('Erro na conexão com o banco de dados do servidor!'
             + #13 + 'Mensagem: ' + e.Message + #13
             + 'Deseja tentar outra vez?'),
             'Erro', mb_yesno+MB_ICONERROR) = idNo then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then exit;

  bLanca_pre_venda := false;

  frmPre_Venda := tfrmPre_venda.create(self);
  frmPre_venda.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_pre_venda then
  begin
    Imprime_display('Iniciando impressão da Pré-venda!',clWhite,tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(False);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.first;
    while not frmmodulo.query_servidor.eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
      if Length(Trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
      else
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codproduto').asstring;

      rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmmodulo.query_servidor.next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.MeiosdePagamento1Click(Sender: TObject);
begin
  frmMeios_pagamento := tfrmMeios_pagamento.create(self);
  frmMeios_pagamento.showmodal;

  
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AtualizarPDV1Click(Sender: TObject);
begin
{ if bVenda then
  begin
    Imprime_display('CUPOM ABERTO!',clYellow,tiAlerta);
    sleep(1500);
    Imprime_display('INFORME O PRODUTO...',clWhite,tiLivre);
    ed_barra.SetFocus;
    exit;
  end;

  Imprime_display('Aguarde! Atualizando PDV',clYellow,tiAlerta);
//Atualizar_PDV;
  Imprime_display_anterior;
}
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Oramento1Click(Sender: TObject);
begin
  if oramento1.visible = false then exit;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
      except
        if application.messagebox(pansichar('Não foi possível se conectar ao servidor!'+#13+
                                         'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR)=
                                         idNo then break;
      end;
    until frmModulo.conexao_servidor.Connected;
  end;

  if not bServidor_Conexao then exit;

  bLanca_OS := false;
  frmOrcamento_abrir := tfrmOrcamento_abrir.create(self);
  frmOrcamento_abrir.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_OS then
  begin
    Imprime_display('Iniciando impressão do Cupom!',clWhite,tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(False);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.first;
    while not frmmodulo.query_servidor.eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
      if Length(trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
      else
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codproduto').asstring;

      rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmmodulo.query_servidor.next;
    end;

    query.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('UPDATE DAV SET COO_CUPOM_FISCAL = '''+sNumero_Cupom+''',');
    QUERY.SQL.ADD('CCF = '''+sNumero_contador_cupom+''' where numero = '''+SDAV_ATUALIZADO+'''');
    QUERY.ExecSQL;

    frmmodulo.query_servidor.close;
    frmmodulo.query_servidor.sql.clear;
    frmmodulo.query_servidor.sql.add('update c000074 set tipo = 10 where codigo = '''+zerar(inttostr(iOS_codigo),6)+'''');
    frmmodulo.query_servidor.ExecSQL;


    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Assinararquivo1Click(Sender: TObject);
begin
   frmmodulo.Dlg_arquivo.Filter := 'Arquivo Texto|*.txt';
   frmmodulo.Dlg_arquivo.Title := 'Assinar arquivo';
   if frmmodulo.Dlg_arquivo.Execute then
   begin
     assinatura_digital(frmmodulo.Dlg_arquivo.FileName);
   end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Recebimento1Click(Sender: TObject);
begin
  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
      except
        if application.messagebox(pansichar('Não foi possível se conectar ao servidor!'+#13+
                                         'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR)=
                                         idNo then break;
      end;
    until frmModulo.conexao_servidor.Connected;
  end;

  if not bServidor_Conexao then exit;


  frmContasReceberNovo := tfrmcontasReceberNovo.create(self);
  frmContasReceberNovo.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Menu_osClick(Sender: TObject);
begin
  if Menu_os.Visible = false then exit;


  if bVenda then
  begin
    Imprime_display('Venda Aberta!',clred,tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On E : exception do
        begin
          if Application.MessageBox(pansichar('Erro na conexão com o banco de dados do servidor!'+#13+
                                              'Mensagem: '+e.Message+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR) =
                                              idNo then
                                              begin
                                                break;
                                              end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then exit;

  bLanca_OS := false;

  frmOS := tfrmOS.create(self);
  frmOS.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_OS then
  begin
    Imprime_display('Iniciando impressão da O.S.!',clWhite,tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(False);
    end;

    // vender os servicos
    // fazer a soma dos serviso e lancar comO:
    // 9999999999999 Prestação de Serviço Municipal    Valor Unitario R$ 1,00   Nao Tributado

    frmmodulo.query_servidor2.SQL.CLEAR;
    frmmodulo.query_servidor2.SQL.ADD('select sum(valor) total from c000053');
    frmmodulo.query_servidor2.sql.add('where codos = '''+zerar(inttostr(iOS_codigo),6)+'''');
    frmmodulo.query_servidor2.OPEN;


    query.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('UPDATE DAV SET COO_CUPOM_FISCAL = '''+sNumero_Cupom+''',');
    QUERY.SQL.ADD('CCF = '''+sNumero_contador_cupom+''' where numero = '''+SDAV_ATUALIZADO+'''');
    QUERY.ExecSQL;


    if frmmodulo.query_servidor2.fieldbyname('total').asfloat > 0 then
    begin
      sProd_nome := 'PRESTAC.DE SERVICO MUNICIPAL';
      sProd_unidade := 'UN';
      sProd_CST := '041';
      rProd_aliquota := 0;
      iProd_codigo := 999999;
      sProd_barra := '9999999999999';
      rProd_qtde    := frmmodulo.query_servidor2.fieldbyname('total').asfloat;
      rProd_preco   := 1;
      rProd_total := frmmodulo.query_servidor2.fieldbyname('total').asfloat;
      rProd_desconto := 0;
      rProd_acrescimo := 0;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
    end;


    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.first;
    while not frmmodulo.query_servidor.eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
      if Length(Trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
      else
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codproduto').asstring;
      rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmmodulo.query_servidor.next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_bicoTimer(Sender: TObject);
var txt : textfile;
entrada : string;
x : integer;
begin
  if not bPosto_ok then exit;

  try

    entrada := clipboard.astext;

    if entrada = '' then entrada := '1';



    if entrada = '2' then
    begin
      sh_status_conexao.Brush.Color := clred;
      for x := 0 to grid_bico.RowCount - 1 do
      begin
         grid_bico.Cell[3,x].AsString := 'FALHA';
      end;
      exit;
    end;
  except
  end;



  EnviaComando('(&S)',1000);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_abastecimentoTimer(Sender: TObject);
var txt : textfile;
entrada : string;
x : integer;
begin
  if not bPosto_ok then exit;

  try

    entrada := clipboard.astext;

    if entrada = '' then entrada := '1';



    if entrada = '2' then
    begin
      sPosto_resposta := 'ERRO';
      sh_status_conexao.Brush.Color := clred;
      for x := 0 to grid_bico.RowCount - 1 do
      begin
         grid_bico.Cell[3,x].AsString := 'FALHA';
      end;
      exit;
    end;
  except
  end;

  EnviaComando('(&A)',1000);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.grid_abastecimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     if grid_abastecimento.SelectedRow < 0 then exit;


     PN_POSTO.Visible := false;


    // iniciar a impressao do abastecimento
      Imprime_display('Iniciando impressão do Abastecimento!',clWhite,tiInfo);
      try
        // verificar o serial do ecf
        if not verifica_ecf then exit;
        // Abrir o cupom fiscal
        // bloquear ao teclado
        BlockInput(True);
        if not Abre_Venda then
        begin
          // Caso o comando de abertura de venda retornou false, abortar o processo;
          Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
          exit;
        end;
      finally
        // desbloquear o teclado
        BlockInput(False);
      end;

      // vender os itens
      // rodar a query do modulo filtrada com os produtos da pre-venda

//      qrabastecimento.close;
//      qrAbastecimento.SQL.clear;
//      qrAbastecimento.sql.add('select * from posto_abastecimento where codigo = '+
//      grid_abastecimento.Cell[10,grid_abastecimento.selectedrow].asstring);
//      qrabastecimento.open;
      ilinha_abastecimento := grid_abastecimento.SelectedRow;

      qrabastecimento.close;
      qrabastecimento.sql.clear;
      qrabastecimento.sql.add('select posto_abastecimento.*, estoque.nome produto,');
      qrabastecimento.sql.add('estoque.unidade,estoque.cst,estoque.aliquota,estoque.cod_barra');
      qrabastecimento.sql.add('from posto_abastecimento, estoque');
      qrabastecimento.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
      qrabastecimento.sql.add('and posto_abastecimento.situacao = 0');
      qrabastecimento.sql.add('and posto_abastecimento.codigo = '+
                              grid_abastecimento.Cell[10,ilinha_abastecimento].asstring);
      qrabastecimento.Open;

      qrabastecimento.first;
      while not qrabastecimento.eof do
      begin
        sProd_nome := qrabastecimento.fieldbyname('produto').asstring;
        sProd_unidade := qrabastecimento.fieldbyname('unidade').asstring;
        sProd_CST := qrabastecimento.fieldbyname('cst').asstring;
        rProd_aliquota := qrabastecimento.fieldbyname('aliquota').asfloat;
        iProd_codigo := qrabastecimento.fieldbyname('cod_produto').asinteger;
        if Length(Trim(qrabastecimento.fieldbyname('cod_barra').asstring))>0 then
          sProd_barra := qrabastecimento.fieldbyname('cod_barra').asstring
        else
          sProd_barra := qrabastecimento.fieldbyname('cod_produto').asstring;
        rProd_qtde    := qrabastecimento.fieldbyname('qtde').asfloat;
        rProd_preco   := qrabastecimento.fieldbyname('unitario').asfloat;
        rProd_total := qrabastecimento.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        Application.ProcessMessages;
        qrabastecimento.next;
      end;
      iCodigo_abastecimento :=  grid_abastecimento.Cell[10,iLinha_abastecimento].asinteger;
      sPosto_rodape := //'Tanque'+grid_abastecimento.cell[11,iLinha_abastecimento].asstring+
                       'Bomba'+grid_abastecimento.cell[2,iLinha_abastecimento].asstring+
                       'Bico'+grid_abastecimento.cell[3,iLinha_abastecimento].asstring+
                       'EI'+somenteNumero(zerar(
                       grid_abastecimento.cell[8,iLinha_abastecimento].asstring,6))+
                       'EF'+somenteNumero(
                       zerar(grid_abastecimento.cell[9,ilinha_abastecimento].asstring,6));

      FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.grid_abastecimentoEnter(Sender: TObject);
begin
  frmVenda.PopupMenu := pop_principal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.menu_mesaClick(Sender: TObject);
var nItem : integer;
begin
  if Menu_Mesa.Visible = false then exit;


  if bVenda then
  begin
    Imprime_display('Venda Aberta!',clred,tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On E : exception do
        begin
          if Application.MessageBox(pansichar('Erro na conexão com o banco de dados do servidor!'+#13+
                                              'Mensagem: '+e.Message+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR) =
                                              idNo then
                                              begin
                                                break;
                                              end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then exit;

  bLanca_Mesa := false;

  frmMesas := tfrmMesas.create(self);
  frmMesas.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_Mesa then
  begin
    Imprime_display('Iniciando impressão do Consumo!',clWhite,tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      BlockInput(True);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!',clRed,tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(False);
    end;


    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.first;
    nitem := 1;
    while not frmmodulo.query_servidor.eof do
    begin

      if frmmodulo.query_servidor.fieldbyname('cancelado').asfloat = 0 then
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto').asinteger;
        if Length(Trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
          sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
        else
          sProd_barra := frmmodulo.query_servidor.fieldbyname('cod_produto').asstring;

        rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        inc(nitem);
      end
      else
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto').asinteger;
        if Length(Trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
          sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
        else
          sProd_barra := frmmodulo.query_servidor.fieldbyname('cod_produto').asstring;

        rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        // cancelar o item

        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto').asinteger;
        if Length(Trim(frmmodulo.query_servidor.fieldbyname('codbarra').asstring))>0 then
          sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring
        else
          sProd_barra := frmmodulo.query_servidor.fieldbyname('cod_produto').asstring;

        rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        ed_cancelar_item.IntValue := nitem;
        Cancela_Item(inttostr(nitem));
        inc(nitem);
      end;

      Application.ProcessMessages;
      frmmodulo.query_servidor.next;
    end;

    if rTotal_Venda <= 0 then
    begin
      Cancela_cupom_aberto;

      // excluir a mesa e os itens
      frMmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000002 where cod_mesa ='+IntToStr(iMesa_codigo));
      frmmodulo.query_servidor.ExecSQL;

      frMmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000001 where codigo ='+IntToStr(imesa_codigo));
      frmmodulo.query_servidor.ExecSQL;
      // inserir a liberacao da mesa para nao aparecer no sistema de frente
      try
        frMmodulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('insert into r000003 (mesa) values ('+IntToStr(imesa_codigo)+')');
        frmmodulo.query_servidor.ExecSQL;
      except
      end;
    end
    else
    begin
      FecharCupom1Click(frmVenda);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ComPort1RxChar(Sender: TObject; Count: Integer);
var stparcial:string;
    s : string;
    X, i : INTEGER;
    a:byte;

    sBico : string;
    rqtde, rencerrante, rtotal, runitario : real;
    dData : tdatetime;
    sHora : string;
    sNumero_abastecimento : string;
begin
    if sPosto_Resposta <> 'ERRO' then
    begin
      bPosto_ok := true;
      sh_status_conexao.Brush.Color := cllime;
    end;

    for a:=1 to count do
    begin
      comport1.ReadStr(stparcial,1);
      str := str + stparcial;
      if stparcial='(' then
        str:='('
      else
      begin
        if stparcial=')' then
        begin

          sPosto_Resposta := str;
          timer_resposta.Enabled:=false;

          // STATUS DOS BICOS

          if (sPosto_Comando = '(&S)') and (copy(sposto_resposta,1,2) = '(S') then
          begin
            sPosto_Resposta := copy(sPosto_resposta,3,32);
            // existe abastecimento
            for x := 0 to grid_bico.RowCount - 1 do
            begin
               s := sPosto_Resposta[grid_bico.cell[5,x].asinteger];
               if s = 'L' then grid_bico.Cell[3,x].AsString := 'LIVRE';
               if s = 'P' then grid_bico.Cell[3,x].AsString := 'PRONTA';
               if s = 'F' then grid_bico.Cell[3,x].AsString := 'FALHA';
               if s = 'C' then grid_bico.Cell[3,x].AsString := 'CONCLUIU';
               if s = 'A' then grid_bico.Cell[3,x].AsString := 'ABASTECENDO';
               if s = 'B' then grid_bico.Cell[3,x].AsString := 'BLOQUEDA';
               if s = 'E' then grid_bico.Cell[3,x].AsString := 'AGUARDANDO';
            end;
          end
          else
          begin
            // abastecimento
            if (sPosto_Comando = '(&A)') and (Length(sPosto_Resposta) = 52) then
            begin
              if sPosto_Resposta <> '(0)' then
              begin
                 sNumero_abastecimento := copy(Edit1.text,34,4);

                 // verificar se este abastecimento ja foi lancado

                 query.close;
                 query.sql.clear;
                 query.sql.add('select codigo from  POSTO_ABASTECIMENTO');
                 query.sql.add('where data = :data and numero_abastecimento = '''+sNumero_abastecimento+'''');
                 query.Open;
                 if query.RecordCount > 0 then
                 begin
                   EnviaComando('(&I)',10);
                 end
                 else
                 begin
//                    inputbox('','',sPosto_Resposta);

                    sBico := copy(sposto_resposta,24,2);
                    sHora :=  copy(timetostr(time),1,5);//copy(sposto_resposta,28,2)+':'+copy(sposto_resposta,30,2));
                    dData := Date; // copy(sposto_resposta,26,2)+'/'+copy(sposto_resposta,32,2)+'/'+copy(datetostr(date,7,4));
                    if copy(sposto_resposta,8,6) <> '000000' then
                      rqtde := strtofloat(copy(sposto_resposta,8,6)) / 1000; // 3 casas decimais
                    if copy(sposto_resposta,2,6) <> '000000' then
                      rtotal := strtofloat(copy(sposto_resposta,2,6))/100;
                    if copy(sposto_resposta,14,4) <> '0000' then
                      runitario := strtofloat(copy(sposto_resposta,14,4))/1000;
                    if copy(sposto_resposta,38,10) <> '0000000000' then
                      rencerrante := strtofloat(copy(sposto_resposta,38,10))/100;


                    query.close;
                    query.sql.clear;
                    query.sql.add('select posto_bico.codigo, posto_bico.tanque, posto_bico.bomba,');
                    query.sql.add('posto_bico.cod_produto, estoque.nome produto ');
                    query.sql.add('from posto_bico, estoque ');
                    query.sql.add('where posto_bico.cod_produto = estoque.codigo');
                    query.sql.add('and posto_bico.bico = '''+sBico+'''');
                    query.Open;

                    try
                    frmModulo.st_bico_movimento.Close;
                    frmmodulo.st_bico_movimento.ParamByName('cod_bico').asinteger := query.fieldbyname('codigo').asinteger;
                    frmmodulo.st_bico_movimento.ParamByName('EF').asFLOAT := rencerrante;
                    frmmodulo.st_bico_movimento.parambyname('volume').asfloat := rqtde;
                    frmmodulo.st_bico_movimento.parambyname('data').asdatetime := dData;

                    FRMMODULO.st_bico_movimento.Prepare;
                    frmModulo.st_bico_movimento.Execute;
                    except
                    end;


                    try
                    frmmodulo.St_Abastecimento_codigo.Prepare;
                    frmModulo.St_Abastecimento_codigo.Execute;
                    except
                    end;

                    try
                    frmmodulo.St_Abastecimento.Close;
                    frmmodulo.St_Abastecimento.ParamByName('codigo').AsInteger :=
                      frmmodulo.St_Abastecimento_codigo.parambyname('codigo').asinteger;
                    frmmodulo.St_Abastecimento.ParamByName('data').asdatetime := dData;//strtodate(ab.data);
                    frmmodulo.St_Abastecimento.ParamByName('hora').asstring := sHora;//ab.hora;

                    //frmmodulo.St_Abastecimento.ParamByName('bomba').asstring := query.fieldbyname('bomba').asstring;
                    frmmodulo.St_Abastecimento.ParamByName('bomba').asstring := query.fieldbyname('bomba').asstring;
                    frmmodulo.St_Abastecimento.ParamByName('bico').asstring :=  sBico;
                    frmmodulo.St_Abastecimento.ParamByName('cod_produto').asinteger := query.fieldbyname('cod_produto').asinteger;
                    frmmodulo.St_Abastecimento.ParamByName('qtde').asfloat := rqtde;
                    frmmodulo.St_Abastecimento.ParamByName('unitario').asfloat := runitario;
                    frmmodulo.St_Abastecimento.ParamByName('total').asfloat := rtotal;
                    frmmodulo.st_abastecimento.parambyname('tanque').asstring := query.fieldbyname('tanque').asstring;
                    frmmodulo.st_abastecimento.parambyname('numero_abastecimento').asstring := sNumero_abastecimento;

                //    if (ab.encerrante - ab.total_litros - (0.01)) < 0 then
                //      frmmodulo.St_Abastecimento.ParamByName('ei').asfloat := 0
                //    else
                //    begin
                      frmmodulo.St_Abastecimento.ParamByName('ei').asfloat := rencerrante - rqtde;// - (0.01);
                //    end;

                    frmmodulo.St_Abastecimento.ParamByName('ef').asfloat := rencerrante;
                    frmmodulo.St_Abastecimento.ParamByName('situacao').asinteger := 0;
                    frmmodulo.St_Abastecimento.ExecProc;
                    except
                    end;

                    i := grid_abastecimento.AddRow(1);
                    // data
                    grid_abastecimento.Cell[0,i].asstring := datetostr(dData);//ab.data;
                    // hora
                    grid_abastecimento.cell[1,i].asstring := sHora;//ab.hora;
                    // bomba
                    grid_abastecimento.cell[2,i].asstring := query.fieldbyname('bomba').asstring;
                    // bico
                    grid_abastecimento.cell[3,i].asstring := sBico;
                    // produto
                    grid_abastecimento.cell[4,i].asstring := query.fieldbyname('produto').asstring;
                    // Quantidade
                    grid_abastecimento.cell[5,i].asfloat  := rqtde;
                    // preco unitario
                    grid_abastecimento.cell[6,i].asfloat  := runitario;
                    // total
                    grid_abastecimento.cell[7,i].asfloat  := rtotal;
                    // encerrante inicial
                //    if (ab.encerrante - ab.total_litros - (0.01)) < 0 then
                //      grid_abastecimento.cell[8,i].asfloat := 0
                //    else
                      grid_abastecimento.cell[8,i].asfloat  :=rencerrante - rqtde;// - (0.01);
                    // encerrante final
                    grid_abastecimento.cell[9,i].asfloat  := rencerrante;
                    // codigo
                    grid_abastecimento.cell[10,i].asinteger  := frmmodulo.St_Abastecimento_codigo.parambyname('codigo').asinteger;
                    // tanque
                    grid_abastecimento.cell[11,i].asstring :=  query.fieldbyname('tanque').asstring;

                    if grid_abastecimento.RowCount = 1 then
                    begin
                      grid_abastecimento.SelectedRow := 0;
                      grid_abastecimento.SetFocus;
                    end;
                    EnviaComando('(&I)',10);
                end;
              end;
            end;
          end;
        end;
      end;
    END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_respostaTimer(Sender: TObject);
var x : integer;
txt : textfile;
entrada : string;

begin
  timer_resposta.Enabled:=false;

    if (sPosto_Comando <> '(&I)')  then
    begin
      sPosto_resposta := 'ERRO';
      sh_status_conexao.Brush.Color := clred;
      for x := 0 to grid_bico.RowCount - 1 do
      begin
         grid_bico.Cell[3,x].AsString := 'FALHA';
      end;
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormDestroy(Sender: TObject);
begin
  TRY
    comport1.Close;
 // encerrrar comunicacao com o ecf
//  cECF_Fecha(iECF_Modelo);
  EXCEPT
  END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Abastecimento1Click(Sender: TObject);
begin
  if sRamo_Tipo = '3' then
  begin
      bCadastra_Placa := TRUE;

      Menu_os.Enabled := false;
      Menu_os.Visible := false;
      Pn_posto.Visible := true;
      pn_posto.Top := 103;
      pn_posto.Left := 27;
//      img_logo.Visible := false;
      grid_abastecimento.setfocus;
  end
  else
  begin
    application.messagebox('Atendimento não permitido!','Erro',mb_ok+mb_iconerror);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Button2Click(Sender: TObject);
begin
  pn_posto.Visible := false;
  ed_barra.setfocus;
  
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Fabricao1Click(Sender: TObject);
begin
  If not bServidor_Conexao then
  begin
    repeat
      try
        frmModulo.Conexao_Servidor.Connected := false;
        frmModulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On E : exception do
        begin
          if Application.MessageBox(pansichar('Erro na conexão com o banco de dados do servidor!'+#13+
                                              'Mensagem: '+e.Message+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR) =
                                              idNo then
                                              begin
                                                break;
                                              end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then exit;


  // atualizar os dados no servidor

  frmfabricacao := tfrmfabricacao.create(self);
  frmfabricacao.showmodal;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Voltar1Click(Sender: TObject);
begin

  bVolta_foco := true;
  Perform(WM_NEXTDLGCTL,-1,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_cargaTimer(Sender: TObject);
begin
  try
    frmmodulo.query.close;
    frmmodulo.query.sql.clear;
    frmmodulo.query.SQL.add('select carga_data, carga_hora from config');
    frmmodulo.query.open;

    frmmodulo.qrconfig.open;
    lb_carga.Caption := 'Carga: '+frmModulo.query.fieldbyname('carga_data').asstring+' às '+
                                  frmModulo.query.fieldbyname('carga_hora').asstring;
    frmModulo.qrconfig.Close;

  except

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_unitarioKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY IN ['0'..'9'] THEN
  BEGIN
    If bProd_promocao THEN
    begin
      Imprime_display('PRODUTO EM PROMOÇÃO!',clRed,tiErro);
      sleep(1500);
      Imprime_display_anterior;
    end;
  END;
end;

end.



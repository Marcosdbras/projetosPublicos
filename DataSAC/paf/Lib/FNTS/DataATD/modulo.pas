unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, WINDOWS, graphics, frxClass, frxDBSet, ZStoredProcedure,
  DBAccess, IBC, MemDS, ZAbstractConnection;

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrMestre: TZQuery;
    qrUsuario: TZQuery;
    qrconfig: TZQuery;
    qrrelatorio: TZQuery;
    qrrelatorioLINHA1: TStringField;
    qrrelatorioLINHA2: TStringField;
    qrrelatorioLINHA3: TStringField;
    qrrelatorioLINHA4: TStringField;
    qrrelatorioLINHA5: TStringField;
    qrrelatorioLINHA6: TStringField;
    qrrelatorioLINHA7: TStringField;
    qrrelatorioLINHA8: TStringField;
    qrrelatorioLINHA9: TStringField;
    qrrelatorioLINHA10: TStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    ConexaoMestre: TZConnection;
    ConexaoLocal: TZConnection;
    qremitente: TZQuery;
    qrcliente: TZQuery;
    qrfunci: TZQuery;
    qrcondpgto: TZQuery;
    qrcaixa_operador: TZQuery;
    qrcaixa_operadorCODIGO: TStringField;
    qrcaixa_operadornome: TStringField;
    qrcaixa_operadorCODFUNCIONARIO: TStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorDATA: TDateTimeField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSENHA: TStringField;
    qrcaixa_operadorSITUACAO_ATUAL: TStringField;
    qrcaixa_mov: TZQuery;
    qrvenda: TZQuery;
    qrproduto_mov: TZQuery;
    qrcontasreceber: TZQuery;
    qrorcamento: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_receber: TZQuery;
    qrecf_comando: TZQuery;
    qrecf_item: TZQuery;
    Conexao_produto: TZConnection;
    qrcondpgtoCODIGO: TStringField;
    qrcondpgtoCONDPGTO: TStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrorcamentoCODIGO: TStringField;
    qrorcamentoCODCAIXA: TStringField;
    qrorcamentoCODVENDEDOR: TStringField;
    qrorcamentoDATA: TDateTimeField;
    qrorcamentoCODCLIENTE: TStringField;
    qrorcamentoOBS: TStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TStringField;
    qrorcamentoRETIRADO: TStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    fxemitente: TfrxDBDataset;
    fxrelatorio: TfrxDBDataset;
    spGen_DAV: TZStoredProc;
    qrorcamentoDAV: TStringField;
    qrorcamentoSITUACAO: TIntegerField;
    qrveiculo: TZQuery;
    qrveiculoCODIGO: TStringField;
    qrveiculoNOME: TStringField;
    qrveiculoPLACA: TStringField;
    qrveiculoANO: TStringField;
    qrveiculoCOMBUSTIVEL: TStringField;
    qrveiculoUFPLACA: TStringField;
    qrveiculoCOR: TStringField;
    qrveiculoOBS1: TStringField;
    qrveiculoOBS2: TStringField;
    qrveiculoOBS3: TStringField;
    qrveiculoCIDADE: TStringField;
    qrcliente_veiculo: TZQuery;
    qrcliente_veiculoVEICULO: TStringField;
    qrcliente_veiculoANO: TStringField;
    qrcliente_veiculoPLACA: TStringField;
    qrcliente_veiculoUF: TStringField;
    qrcliente_veiculoCLIENTE: TStringField;
    qrcliente_veiculoCODIGO: TStringField;
    qrcliente_veiculoCODCLIENTE: TStringField;
    qrcliente_veiculoCOMBUSTIVEL: TStringField;
    qrcliente_veiculoRENAVAM: TStringField;
    qrcliente_veiculoDATA: TDateTimeField;
    qrcliente_veiculoOBS1: TStringField;
    qrcliente_veiculoOBS2: TStringField;
    qrcliente_veiculoOBS3: TStringField;
    qrcliente_veiculoCOR: TStringField;
    qrcliente_veiculoCHASSI: TStringField;
    qrservicos_periodicos: TZQuery;
    qrservicos_periodicosSTATUS: TStringField;
    qrservicos_periodicosCODSERVICO: TStringField;
    qrservicos_periodicosservico: TStringField;
    qrservicos_periodicosMARCA: TStringField;
    qrservicos_periodicosMODELO: TStringField;
    qrservicos_periodicosSERIE: TStringField;
    qrservicos_periodicosULTIMA_MANUTENCAO: TDateTimeField;
    qrservicos_periodicosproxima_manutencao: TDateField;
    qrservicos_periodicostecnico: TStringField;
    qrservicos_periodicosCODTECNICO: TStringField;
    qrservicos_periodicosID: TIntegerField;
    qrservicos_periodicosCODCLIENTE: TStringField;
    qrservicos_periodicosPRIMEIRA_MANUTENCAO: TDateTimeField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrservicos_periodicoscliente: TStringField;
    qrsetor: TZQuery;
    qrfornecedor: TZQuery;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrmarca: TZQuery;
    qrservico: TZQuery;
    qrservicoSERVICO: TStringField;
    qrservicoCODIGO: TStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TStringField;
    qrserial_produto: TZQuery;
    qrserial_produtoNUMERONOTA: TStringField;
    qrserial_produtoDATACOMPRA: TDateTimeField;
    qrserial_produtoSERIAL: TStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoCLIENTE: TStringField;
    qrserial_produtoDATAVENDA: TDateTimeField;
    qrserial_produtoCODNOTA: TStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODIGO: TStringField;
    qrserial_produtoCODPRODUTO: TStringField;
    qrserial_produtoCODCLIENTE: TStringField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCODITEM: TStringField;
    qrserial_produtoCODFORNECEDOR: TStringField;
    qrserial_produtoCODVENDA_ITEM: TStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TStringField;
    qrproduto: TZQuery;
    qrprodutoPRODUTO: TStringField;
    qrprodutoCODIGO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrorcamentoDAV_ANTERIOR: TStringField;
    XCONEXAO: TIBCConnection;
    qros: TIBCQuery;
    qrosST: TIntegerField;
    qrosCODIGO: TStringField;
    qrosDATA: TDateTimeField;
    qroscliente: TStringField;
    qrosTOTAL: TFloatField;
    qrosCONCLUSAO_DATA: TDateTimeField;
    qrosSERIAL: TStringField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    qrosTIPO: TStringField;
    qrosCODCLIENTE: TStringField;
    qrosSOLICITANTE: TStringField;
    qrosMARCA: TStringField;
    qrosMODELO: TStringField;
    qrosATENDIMENTO: TStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_DATA: TDateTimeField;
    qrosDETECTADO_CODTECNICO: TStringField;
    qrosSITUACAO: TStringField;
    qrosCONCLUSAO_ENTREGUE: TDateTimeField;
    qrosRETIRADO_POR: TStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TStringField;
    qrosTERCEIRO_CONTATO: TStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosatendente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrosCODSETOR: TStringField;
    qrossetor: TStringField;
    qrosCODATENDENTE: TStringField;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    qrosCHASSI: TStringField;
    qrosCOR: TStringField;
    qrosCOMBUSTIVEL: TStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TStringField;
    qrosDETECTADO_HORA: TStringField;
    qrosHORA: TStringField;
    qrosINTERVENCOES: TBlobField;
    qrosDAV: TStringField;
    procedure qrMestreAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmodulo: Tfrmmodulo;
  RESULTADO_MENSAGEM : STRING;
 copia_origem, copia_destino : string; // variaveis da copia de seguranca
  caminho_fotos_produtos : string; // diretorio onde se encontrarao as imagens dos produtos
  telaprincipal : string; // variavel para mudar a tela principal
  movimento_venda : integer; // variavel para verificar se a venda estah sendo incluida ou alterada
  mascara_valor, mascara_qtde : string;
  decimal_valor, decimal_qtde : integer;

  CD_CLI, CD_FOR, CD_PRO, CD_MAR, CD_GRU, CD_SUB : string;


  senha_vendedor : string;

  registro_terminal : string;


  impressora_venda : string;
  impressora_os : string;

  ecf_modelo : string;
  ecf_porta  : string;

  arredonda : boolean;


  ramo, int_retorno : integer;

  emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone : string;

  ESTOQUE_NEGATIVO : BOOLEAN;

  nxcupom : string;
  nivel_usuario : integer;
  codigo_usuario : string;
  produto_loc, PRODUTO_LOC_NOME : STRING;

  parametro_pesquisa,
  resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3,
  resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6,
  resultado_pesquisa7, resultado_pesquisa8 : string;
  SERVIDOR_ECF : STRING;
  aumento_prazo : REAL;
  desconto_produto, desconto_venda : real;
    aliquota_ecf : array[0..30] of string;
  ABRE_ORCAMENTO : BOOLEAN;
  ALTERAR_PRECO : STRING;
  forma_pdv : string;
  ecf_bematech_yanco : string;

  iPermite_dav_a4 : integer;

    verifica_prestacao_atrazo,ecf_cupom_vinculado_carne, ecf_cupom_vinculado : string;

 limite_disponivel : real;

 tipo_venda_avista : string;
 cod_produto : string;

 sDav_Atual : string;
 sDav_Anterior : string;

implementation

uses principal;

{$R *.dfm}

procedure Tfrmmodulo.qrMestreAfterPost(DataSet: TDataSet);
begin
  conexaomestre.Commit;
  qrMestre.Refresh;
end;

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var txt : textfile;
entrada : string;
ARQUIVO:STRING;

begin

  tipo_venda_avista := '1';
  conexao.connected       := false;
  conexaomestre.Connected := false;
  conexaolocal.Connected  := false;
  conexao_produto.Connected := false;
  assignfile(txt,'c:\DataSAC\Paf\cfg\datapdv.ini');

  senha_vendedor := '0';

  reset(txt);
  forma_pdv := '1';
  while not eof(txt) do
  begin
    readln(txt,entrada);

    // conectando banco de dados
      if copy(entrada,1,7) = '999-001' then conexao.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = '999-002' then conexao.hostname := trim(copy(entrada,9,50));
     // banco de dados mestre
      if copy(entrada,1,7) = '999-001' then conexaomestre.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = '999-002' then conexaomestre.hostname := trim(copy(entrada,9,50));
//      frmprincipal.lempresa1.Font.Color := clyellow;

    if copy(entrada,1,7) = '999-002' then
    begin
      if trim(copy(entrada,9,1)) = '' then
        frmprincipal.caption := ' DataSAC 2.0 | Módulo de Atendimento ao Cliente   [ Servidor Local ]'
      else
        frmprincipal.caption := ' DataSAC 2.0 | Módulo de Atendimento ao Cliente   [ Servidor: '+trim(copy(entrada,9,50))+' ]';
    end;
    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));
    // fotos dos produtos



    if COPY(ENTRADA,1,7) = 'sis-ven' THEN alterar_preco := trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ver_deb' THEN verifica_prestacao_atrazo :=  trim(copy(entrada,9,1));

    if COPY(ENTRADA,1,7) = 'ven-avi' THEN tipo_venda_avista := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'pdv-sen' THEN senha_vendedor := trim(copy(entrada,9,1));

  end;

      conexao.Connected       := true;
      conexaomestre.Connected := true;
      conexao_produto.HostName := conexao.HostName;
      conexao_produto.Database := conexao.Database;
      conexao_produto.Connected := true;

      XCONEXAO.Connected := FALSE;
      XCONEXAO.Server := Conexao.HostName;
      XCONEXAO.Database := Conexao.Database;
      XCONEXAO.Open;

      conexaolocal.Connected  := true;
    qrconfig.open;
    ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
    ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;
    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;

       aumento_prazo := QRCONFIG.FIELDBYNAME('DESCONTO_AVISTA').ASFLOAT;



        iPermite_Dav_A4 := 1;


        qremitente.open;
        emitente_nome     := qremitente.fieldbyname('nome').asstring;
        emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
        emitente_endereco := qremitente.fieldbyname('endereco').asstring+' - '+qremitente.fieldbyname('bairro').asstring;
        emitente_cidade   := qremitente.fieldbyname('cidade').asstring+'/'+qremitente.fieldbyname('uf').asstring;
        emitente_cep      := qremitente.fieldbyname('cep').asstring;
        emitente_telefone := qremitente.fieldbyname('telefone').asstring;
        emitente_cnpj     := qremitente.fieldbyname('cnpj').asstring;
        parametro_pesquisa := '';

        FRMPRINCIPAL.LEMPRESA.Caption := qremitente.fieldbyname('nome').asstring;



    ramo := qrconfig.fieldbyname('ramo_atividade').asinteger;


    impressora_venda := qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;



    CASE qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER OF
    0 : begin
          mascara_qtde := '###,###,##0';
          decimal_qtde := 0;
        end;
    2 : BEGIN
          mascara_qtde := '###,###,##0.00';
          decimal_qtde := 2;
        end;
    3 : BEGIN
          mascara_qtde := '###,###,##0.000';
          decimal_qtde := 3;
        end;
    end;
    CASE qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER OF
    2 : BEGIN
          mascara_valor := '###,###,##0.00';
          decimal_valor := 2;
      END;
    3 : BEGIN
          mascara_valor := '###,###,##0.000';
          decimal_valor := 3;
        END;
    end;

    desconto_produto := qrconfig.fieldbyname('desconto_produto').asfloat;
    desconto_venda := qrconfig.fieldbyname('desconto_totalnota').asfloat;



end;

end.

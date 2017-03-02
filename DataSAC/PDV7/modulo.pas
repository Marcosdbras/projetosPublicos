unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, WINDOWS, graphics, frxClass, frxDBSet, forms;

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
  resultado_pesquisa7 : string;
  SERVIDOR_ECF : STRING;
  aumento_prazo : REAL;
  desconto_produto, desconto_venda : real;
  aliquota_ecf : array[0..30] of string;
  ABRE_ORCAMENTO : BOOLEAN;
  ALTERAR_PRECO : STRING;
  forma_pdv : string;
  ecf_bematech_yanco : string;

  verifica_debito_pdv, verifica_prestacao_atrazo,ecf_cupom_vinculado_carne, ecf_cupom_vinculado : string;

  limite_disponivel : real;

  tipo_venda_avista : string;

  caminho_server    : string;

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
ArqIni :String;

begin

  tipo_venda_avista := '1';
  conexao.connected       := false;
  conexaomestre.Connected := false;
  conexaolocal.Connected  := false;
  conexao_produto.Connected := false;

  ArqIni:=ExtractFilePath(Application.exeName)+'\dll\com.ini';
  caminho_server:=trim(ExtractFilePath(Application.exeName));

  assignfile(txt,ArqIni);   // '\SISCOM\SERVER\dll\com.ini');

  senha_vendedor := '0';

  reset(txt);
  forma_pdv := '1';
  while not eof(txt) do
  begin
    readln(txt,entrada);
    // Tela Principal
    IF COPY(entrada,1,7) = 'arq-001' then arquivo := copy(entrada,9,1);

    // SERVIDOR DE ECF
    IF COPY(entrada,1,7) = 'ecf-ser' then servidor_ecf := copy(entrada,9,1);
    // configuracoes da copia de segurança
    if copy(entrada,1,7) = '000-001' then copia_origem  := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = '000-002' then copia_destino := trim(copy(entrada,9,50));
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
        frmprincipal.caption := ' PDV                         [ Servidor Local ]'
      else
        frmprincipal.caption := ' PDV                         [ Servidor: '+trim(copy(entrada,9,50))+' ]';
    end;
    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));
    // fotos dos produtos
    if copy(entrada,1,7) = 'img-001' then caminho_fotos_produtos := trim(copy(entrada,9,50));

    // VARIAVEIS DE CADASTRO

    if copy(entrada,1,7) = 'pdv-001' then forma_pdv := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'ali-001' THEN aliquota_ecf[1] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-002' THEN aliquota_ecf[2] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-003' THEN aliquota_ecf[3] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-004' THEN aliquota_ecf[4] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-005' THEN aliquota_ecf[5] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-006' THEN aliquota_ecf[6] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-007' THEN aliquota_ecf[7] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-008' THEN aliquota_ecf[8] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-009' THEN aliquota_ecf[9] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-010' THEN aliquota_ecf[10] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-011' THEN aliquota_ecf[11] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-012' THEN aliquota_ecf[12] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-013' THEN aliquota_ecf[13] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-014' THEN aliquota_ecf[14] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-015' THEN aliquota_ecf[15] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-016' THEN aliquota_ecf[16] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-017' THEN aliquota_ecf[17] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-018' THEN aliquota_ecf[18] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-019' THEN aliquota_ecf[19] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-020' THEN aliquota_ecf[20] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-021' THEN aliquota_ecf[21] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-022' THEN aliquota_ecf[22] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-023' THEN aliquota_ecf[23] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-024' THEN aliquota_ecf[24] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-025' THEN aliquota_ecf[25] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-026' THEN aliquota_ecf[26] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-027' THEN aliquota_ecf[27] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-028' THEN aliquota_ecf[28] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-029' THEN aliquota_ecf[29] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-030' THEN aliquota_ecf[30] := trim(copy(entrada,9,5));

    if COPY(ENTRADA,1,7) = 'sis-ven' THEN alterar_preco := trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ver_deb' THEN verifica_prestacao_atrazo := trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'deb_pdv' THEN verifica_debito_pdv := trim(copy(entrada,9,1));

    if COPY(ENTRADA,1,7) = 'ven-avi' THEN tipo_venda_avista := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'pdv-sen' THEN senha_vendedor := trim(copy(entrada,9,1));

  end;

      conexao.Connected       := true;
      conexaomestre.Connected := true;
      conexao_produto.HostName := conexao.HostName;
      conexao_produto.Database := conexao.Database;
      conexao_produto.Connected := true;

      conexaolocal.Connected  := true;
    qrconfig.open;
    ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
    ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;

    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;

    aumento_prazo := QRCONFIG.FIELDBYNAME('DESCONTO_AVISTA').ASFLOAT;

    
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

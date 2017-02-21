unit modulo;

interface

uses
  SysUtils, Classes,
  IniFiles {Unit de arquivo ini},
  forms, DB, MemDS, DBAccess, IBC, ACBrBase, ACBrBAL, AdvMenus,
  AdvMenuStylers, ACBrValidador, VirtualTable, Dialogs, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, xmldom, XMLIntf,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  msxmldom, XMLDoc;

type
  TfrmModulo = class(TDataModule)
    conexao: TIBCConnection;
    query: TIBCQuery;
    Balanca: TACBrBAL;
    estilo_menu: TAdvMenuOfficeStyler;
    spCupom: TIBCStoredProc;
    spCupom_Crediario: TIBCStoredProc;
    spCupom_Forma: TIBCStoredProc;
    spCupom_Consumidor: TIBCStoredProc;
    spCodigo_Global: TIBCStoredProc;
    docValidador: TACBrValidador;
    tbForma_Pgto: TVirtualTable;
    tbForma_PgtoNome: TStringField;
    tbForma_PgtoValor_Acumulado: TFloatField;
    tbForma_PgtoValor_Ultimo_Cupom: TFloatField;
    tbForma_Pgtoid: TIntegerField;
    spNao_Fiscal: TIBCStoredProc;
    spReducaoZ: TIBCStoredProc;
    spReducaoZ_Total_Parcial: TIBCStoredProc;
    tbAliquota: TVirtualTable;
    tbAliquotaCodigo: TStringField;
    tbAliquotaAliquota: TFloatField;
    Conexao_Servidor: TIBCConnection;
    query_servidor: TIBCQuery;
    spCupom_Temp: TIBCStoredProc;
    spCupom_Temp_delete: TIBCStoredProc;
    spCupom_Temp_Edit: TIBCStoredProc;
    qrtotalizador: TIBCQuery;
    qrMestre: TIBCQuery;
    Dlg_arquivo: TOpenDialog;
    qrcliente: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrconfig: TIBCQuery;
    qrcaixa_operador: TIBCQuery;
    qrcaixa_mov: TIBCQuery;
    qrbanco: TIBCQuery;
    qrcontacorrente: TIBCQuery;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrlancamento_conta: TIBCQuery;
    spDav_Codigo: TIBCStoredProc;
    spDAV: TIBCStoredProc;
    query_servidor2: TIBCQuery;
    qrfilial: TIBCQuery;
    qrtransportador: TIBCQuery;
    qrcfop: TIBCQuery;
    qrfiscal_modelo: TIBCQuery;
    qrgrupo: TIBCQuery;
    qrsubgrupo: TIBCQuery;
    qrmarca: TIBCQuery;
    qrfornecedor: TIBCQuery;
    qrproduto: TIBCQuery;
    qrproduto_mov: TIBCQuery;
    qrgrade_produto: TIBCQuery;
    St_Abastecimento_codigo: TIBCStoredProc;
    St_Abastecimento: TIBCStoredProc;
    st_bico_movimento: TIBCStoredProc;
    spCupom_Item_Temp: TIBCStoredProc;
    spCupom_Item: TIBCStoredProc;
    qrRegiao: TIBCQuery;
    XMLEnvio: TXMLDocument;
    XMLDocument1: TXMLDocument;
    lHTTP: TIdHTTP;
    IdHTTP1: TIdHTTP;
    sqlIndice: TIBCQuery;
    sqlexec: TIBCQuery;
    sqlconsulta: TIBCQuery;
    sqlcCupomForma: TIBCQuery;
    tbForma_PgtoSigla: TStringField;
    sqlCupom: TIBCQuery;
    sqlcliente: TIBCQuery;
    procedure BalancaLePeso(Peso: Double; Resposta: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure atualizancm(ncm:string);

  end;
const
 sPAF_Versao_ER : string = '0109';


var
  frmModulo: TfrmModulo;

  resultado_pesquisa1,
  resultado_pesquisa2,
  resultado_pesquisa3,
  resultado_pesquisa4,
  resultado_pesquisa5,
  resultado_pesquisa6,
  resultado_pesquisa7,
  resultado_pesquisa8: string;


  resultado_valor1, resultado_valor2 : real;

    parametro_pesquisa : string;

implementation

uses funcoes, principal, funcoes_ibpt;

{$R *.dfm}

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: String);
begin
   // Buscar o Peso nas balancas PDV's
   if Peso > 0 then
   begin
     // Leitura OK
     sBal_Resposta := 'Peso Estável';
     rBal_peso := Peso;
   end
   else
   begin
     // Leitura retornou ERRo
      case Trunc(balanca.UltimoPesoLido) of
         0 : sBal_Resposta := 'Coloque o produto sobre a Balança!' ;
        -1 : sBal_Resposta := 'Peso Instavel!' ;
        -2 : sBal_Resposta := 'Peso Negativo!' ;
       -10 : sBal_Resposta := 'Sobrepeso!' ;
      end ;
      rBal_peso := 0;
   end;
end;


procedure tfrmmodulo.atualizancm(ncm:string);
var
  faliqnac, faliqimp:Currency;
  sncmnbs, sorigem, sex:string;
  itabela:Integer;
  ssita:string;
  icodsita:integer;

  stipo:String;
  sdescricao:String;
  festadual:real;
  fmunicipal:real;


  saliqnac:String;
  saliqimp:String;
  sestadual:String;
  smunicipal:String;

begin

  if ncm = '' then
     exit;

  try

      sqlIndice.Active := false;
      sqlIndice.SQL.Clear;
      sqlIndice.SQL.Add('select * from Indice');
      sqlIndice.Active := true;


      XMLDocument1.Active := False;
      XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+sqlIndice.fieldbyname('CHAVECONSULTA').asString+'&campo=codigo'+'&valor='+ncm+'&uf='+ lowercase( sEmpresa_UF  ));
      XMLDocument1.Active := True;

      sex       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['ex'].Text;
      sversao       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
      stipo      := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['tipo'].Text;
      sdescricao   := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['descricao'].Text;
      svigenciainicio       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciainicio'].Text;
      svigenciafim   := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciafim'].Text;
      schave := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['chave'].Text;
      sversao := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
      sfonte :=  XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['fonte'].Text;


      saliqnac      :=  XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['nacionalfederal'].Text;
      saliqimp           := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['importadosfederal'].Text;
      sestadual    := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['estadual'].Text;
      smunicipal := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['municipal'].Text;


      saliqnac      :=  Decimal_Is_Coma( saliqnac );
      saliqimp           := Decimal_Is_Coma( saliqimp );
      sestadual    := Decimal_Is_Coma(sestadual);
      smunicipal := Decimal_Is_Coma(smunicipal);

      faliqnac      :=  strtofloat( saliqnac );
      faliqimp           := strtofloat( saliqimp );
      festadual    := strtofloat( sestadual );
      fmunicipal := strtofloat( smunicipal );




      query.Active := false;
      query.SQL.Clear;
      query.SQL.Add('insert into ncm (codncmnbs, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
      query.SQL.Add(' values (:codncmnbs, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

      query.Params.ParamByName('codncmnbs').AsString :=  ncm;
      query.Params.ParamByName('ex').AsString :=  sex;
      query.Params.ParamByName('versao').AsString :=  sversao;
      query.Params.ParamByName('tipo').AsString :=  stipo;
      query.Params.ParamByName('descricao').AsString :=  sdescricao;

      query.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
      query.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

      query.Params.ParamByName('chave').AsString :=    schave;
      query.Params.ParamByName('fonte').AsString :=    sfonte;

      query.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
      query.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
      query.Params.ParamByName('estadual').AsFloat :=      festadual;
      query.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

      query.ExecSQL;








  except


      sex       := '';
      sversao       := '';
      stipo      := '';
      sdescricao   := '';
      svigenciainicio       := '';
      svigenciafim   := '';
      schave := '';
      sversao := '';
      sfonte :=  '';



      faliqnac      :=  0;
      faliqimp           := 0;
      festadual    := 0;
      fmunicipal := 0;







  end;






end;



end.


unit Sintegra;

interface

uses
  SysUtils, Classes, DateUtils;

type
  TCodIdentificaOper = (opeInterestaduais, opeInterestSubTributaria, opeTotal);
  TCodFinalidade = (finNormal, finRetificacaoTotal, finRetificacaoAditiva, finDesfazimento);
  TModDocumento = (modMaqRegistradora, modPDV, modECF);
  TSituacao = (nfNormal, nfCancelado, nfExtNormal, nfExtCancelado);
  TTipoEmitente = (tpeProprio, tpeTerceiros);
  TTipoPosse = (tpo1, tpo2, tpo3);
  TModalidadeFrete = (mdfCIF, mdfFOB, mdfOUTROS);

  TErrorEvent = procedure(const aErro: string) of object;

  ESintegraException = class(Exception);

  IEmpresa = interface(IInterface)
    ['{E085C101-C691-4E6F-A85C-DA09FB5E8405}']
    function GetRazaoSocial: string;
    procedure SetRazaoSocial(const Valor: string);
    function GetCNPJ: string;
    procedure SetCNPJ(const Valor: string);
    function GetInscEstadual: string;
    procedure SetInscEstadual(const Valor: string);
    function GetMunicipio: string;
    procedure SetMunicipio(const Valor: string);
    function GetUF: string;
    procedure SetUF(const Valor: string);
    function GetFax: string;
    procedure SetFax(const Valor: string);
    function GetResponsavel: string;
    procedure SetResponsavel(const Valor: string);
    function GetEndereco: string;
    procedure SetEndereco(const Valor: string);
    function GetComplemento: string;
    procedure SetComplemento(const Valor: string);
    function GetNumero: Integer;
    procedure SetNumero(const Valor: Integer);
    function GetBairro: string;
    procedure SetBairro(const Valor: string);
    function GetCEP: string;
    procedure SetCEP(const Valor: string);
    function GetFone: string;
    procedure SetFone(const Valor: string);
    function GetContribuinteIPI: Boolean;
    procedure SetContribuinteIPI(const Valor: Boolean);
    function GetSubstitutoTributario: Boolean;
    procedure SetSubstitutoTributario(const Valor: Boolean);
    property RazaoSocial: string read GetRazaoSocial write SetRazaoSocial;
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property Endereco: string read GetEndereco write SetEndereco;
    property Complemento: string read GetComplemento write SetComplemento;
    property Numero: Integer read GetNumero write SetNumero;
    property Bairro: string read GetBairro write SetBairro;
    property Municipio: string read GetMunicipio write SetMunicipio;
    property CEP: string read GetCEP write SetCEP;
    property UF: string read GetUF write SetUF;
    property Fax: string read GetFax write SetFax;
    property Fone: string read GetFone write SetFone;
    property Responsavel: string read GetResponsavel write SetResponsavel;
    property ContribuinteIPI: Boolean read GetContribuinteIPI write SetContribuinteIPI;
    property SubstitutoTributario: Boolean read GetSubstitutoTributario write SetSubstitutoTributario;
  end;

  IInventario = interface(IInterface)
    ['{A9FD144C-BE79-4E13-A1E9-CB99D2626E4D}']
    function GetCNPJ: string;
    function GetCodPRoduto: string;
    function GetDataInventario: TDateTime;
    function GetInscEstadual: string;
    function GetQuantidade: Extended;
    function GetTipoPosse: TTipoPosse;
    function GetUF: string;
    function GetValorTotal: Currency;
    procedure SetCNPJ(const Valor: string);
    procedure SetCodPRoduto(const Valor: string);
    procedure SetDataInventario(const Valor: TDateTime);
    procedure SetInscEstadual(const Valor: string);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetTipoPosse(const Valor: TTipoPosse);
    procedure SetUF(const Valor: string);
    procedure SetValorTotal(const Valor: Currency);
    property TipoPosse: TTipoPosse read GetTipoPosse write SetTipoPosse;
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property UF: string read GetUF write SetUF;
    property DataInventario: TDateTime read GetDataInventario write SetDataInventario;
    property CodPRoduto: string read GetCodPRoduto write SetCodPRoduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
  end;

  IInventarioLista = interface(IInterfaceList)
    ['{CD2F0EE7-C5BE-41E2-A9FB-E8839E9260CF}']
    function GetItem(Index: Integer): IInventario;
    procedure SetItem(Index: Integer; const Value: IInventario);
    function New: IInventario;
    property Items[Index: Integer]: IInventario read GetItem write SetItem; default;
  end;

  IProduto = interface(IInterface)
    ['{86306321-1EE9-442D-8585-D9B5B9187572}']
    function GetAliquotaICMS: Currency;
    function GetAliquotaIPI: Currency;
    function GetBaseICMSST: Currency;
    function GetCodNCM: string;
    function GetCodProduto: string;
    function GetDescricao: string;
    function GetReducaoBaseCalc: Currency;
    function GetUnidade: string;
    function GetValidadeFinal: TDateTime;
    function GetValidadeInicial: TDateTime;
    procedure SetAliquotaICMS(const Valor: Currency);
    procedure SetAliquotaIPI(const Valor: Currency);
    procedure SetBaseICMSST(const Valor: Currency);
    procedure SetCodNCM(const Valor: string);
    procedure SetCodProduto(const Valor: string);
    procedure SetDescricao(const Valor: string);
    procedure SetReducaoBaseCalc(const Valor: Currency);
    procedure SetUnidade(const Valor: string);
    procedure SetValidadeFinal(const Valor: TDateTime);
    procedure SetValidadeInicial(const Valor: TDateTime);
    property ValidadeInicial: TDateTime read GetValidadeInicial write SetValidadeInicial;
    property ValidadeFinal: TDateTime read GetValidadeFinal write SetValidadeFinal;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property CodNCM: string read GetCodNCM write SetCodNCM;
    property Descricao: string read GetDescricao write SetDescricao;
    property Unidade: string read GetUnidade write SetUnidade;
    property AliquotaIPI: Currency read GetAliquotaIPI write SetAliquotaIPI;
    property AliquotaICMS: Currency read GetAliquotaICMS write SetAliquotaICMS;
    property ReducaoBaseCalc: Currency read GetReducaoBaseCalc write SetReducaoBaseCalc;
    property BaseICMSST: Currency read GetBaseICMSST write SetBaseICMSST;
  end;

  IProdutoLista = interface(IInterfaceList)
    ['{7621A167-AB53-4CF2-8AB3-E538F4648E60}']
    function GetItem(Index: Integer): IProduto;
    procedure SetItem(Index: Integer; const Value: IProduto);
    function New: IProduto;

    property Items[Index: Integer]: IProduto read GetItem write SetItem; default;
  end;

  INFIPI = interface(IInterface)
    ['{99C19606-A345-49E7-8935-B0A6203305ED}']
    function GetCFOP: SmallInt;
    function GetIsentaNTrib: Currency;
    function GetOutras: Currency;
    function GetValor: Currency;
    function GetValorIPI: Currency;
    procedure SetCFOP(const Value: SmallInt);
    procedure SetIsentaNTrib(const Value: Currency);
    procedure SetOutras(const Value: Currency);
    procedure SetValor(const Value: Currency);
    procedure SetValorIPI(const Value: Currency);
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property Valor: Currency read GetValor write SetValor;
    property ValorIPI: Currency read GetValorIPI write SetValorIPI;
    property IsentaNTrib: Currency read GetIsentaNTrib write SetIsentaNTrib;
    property Outras: Currency read GetOutras write SetOutras;
  end;

  INFIPILista = interface(IInterfaceList)
    ['{94A15C05-7DE0-45F8-9EFF-BC86B04E19DE}']
    function GetItem(Index: Integer): INFIPI;
    procedure SetItem(Index: Integer; const Value: INFIPI);
    function New: INFIPI;
    property Items[Index: Integer]: INFIPI read GetItem write SetItem; default;
  end;

  INFST = interface(IInterface)
    ['{012F65C2-EE5A-4335-B53E-285722A3D346}']
    function GetBaseCalcICMSST: Currency;
    function GetCFOP: SmallInt;
    function GetDespAcessoria: Currency;
    function GetICMSRetido: Currency;
    procedure SetBaseCalcICMSST(const Valor: Currency);
    procedure SetCFOP(const Valor: SmallInt);
    procedure SetDespAcessoria(const Valor: Currency);
    procedure SetICMSRetido(const Valor: Currency);
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property BaseCalcICMSST: Currency read GetBaseCalcICMSST write SetBaseCalcICMSST;
    property ICMSRetido: Currency read GetICMSRetido write SetICMSRetido;
    property DespAcessoria: Currency read GetDespAcessoria write SetDespAcessoria;
  end;

  INFSTLista = interface(IInterfaceList)
    ['{6A4380F2-EC19-4C44-9A03-FD03862764F9}']
    function GetItem(Index: Integer): INFST;
    procedure SetItem(Index: Integer; const Value: INFST);
    function New: INFST;
    property Items[Index: Integer]: INFST read GetItem write SetItem; default;
  end;

  IGNRE = interface(IInterface)
    ['{4C944F8E-62A9-4DD6-AA39-BA7E6FBBA1A7}']
    function GetAgencia: SmallInt;
    function GetAnoRef: SmallInt;
    function GetBanco: SmallInt;
    function GetDataPagamento: TDateTime;
    function GetMesRef: SmallInt;
    function GetNumConvenio: string;
    function GetNumeroGNRE: string;
    function GetUFContribuinte: string;
    function GetUFFavorecido: string;
    function GetValor: Currency;
    function GetVencimento: TDateTime;
    procedure SetAgencia(const Valor: SmallInt);
    procedure SetAnoRef(const Valor: SmallInt);
    procedure SetBanco(const Valor: SmallInt);
    procedure SetDataPagamento(const Valor: TDateTime);
    procedure SetMesRef(const Valor: SmallInt);
    procedure SetNumConvenio(const Valor: string);
    procedure SetNumeroGNRE(const Valor: string);
    procedure SetUFContribuinte(const Valor: string);
    procedure SetUFFavorecido(const Valor: string);
    procedure SetValor(const Valor: Currency);
    procedure SetVencimento(const Valor: TDateTime);
    property MesRef: SmallInt read GetMesRef write SetMesRef;
    property AnoRef: SmallInt read GetAnoRef write SetAnoRef;
    property NumConvenio: string read GetNumConvenio write SetNumConvenio;
    property Vencimento: TDateTime read GetVencimento write SetVencimento;
    property DataPagamento: TDateTime read GetDataPagamento write SetDataPagamento;
    property UFContribuinte: string read GetUFContribuinte write SetUFContribuinte;
    property UFFavorecido: string read GetUFFavorecido write SetUFFavorecido;
    property Banco: SmallInt read GetBanco write SetBanco;
    property Agencia: SmallInt read GetAgencia write SetAgencia;
    property NumeroGNRE: string read GetNumeroGNRE write SetNumeroGNRE;
    property Valor: Currency read GetValor write SetValor;
  end;

  IGNRELista = interface(IInterfaceList)
    ['{8DABFC2E-08BA-492C-9CD5-13C51C3D3F91}']
    function GetItem(Index: Integer): IGNRE;
    procedure SetItem(Index: Integer; const Value: IGNRE);
    function New: IGNRE;
    property Items[Index: Integer]: IGNRE read GetItem write SetItem; default;
  end;

  INFItem = interface(IInterface)
    ['{81F347A8-5398-46E0-8125-9FE5E3044538}']
    function GetAliquota: Currency;
    function GetBaseICMS: Currency;
    function GetBaseICMSST: Currency;
    function GetCodProduto: string;
    function GetCST: string;
    function GetDesconto: Currency;
    function GetIPI: Currency;
    function GetNumItem: SmallInt;
    function GetQuantidade: Extended;
    function GetValorProduto: Currency;
    procedure SetAliquota(const Valor: Currency);
    procedure SetBaseICMS(const Valor: Currency);
    procedure SetBaseICMSST(const Valor: Currency);
    procedure SetCodProduto(const Valor: string);
    procedure SetCST(const Valor: string);
    procedure SetDesconto(const Valor: Currency);
    procedure SetIPI(const Valor: Currency);
    procedure SetNumItem(const Valor: SmallInt);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetValorProduto(const Valor: Currency);
    function GetCFOP: SmallInt;
    procedure SetCFOP(const Valor: SmallInt);
    property NumItem: SmallInt read GetNumItem write SetNumItem;
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property CST: string read GetCST write SetCST;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorProduto: Currency read GetValorProduto write SetValorProduto;
    property Desconto: Currency read GetDesconto write SetDesconto;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property BaseICMSST: Currency read GetBaseICMSST write SetBaseICMSST;
    property IPI: Currency read GetIPI write SetIPI;
    property Aliquota: Currency read GetAliquota write SetAliquota;
  end;

  INFItemLista = interface(IInterfaceList)
    ['{0D6C76B8-7979-460B-A247-0E31523A8954}']
    function GetItem(Index: Integer): INFItem;
    procedure SetItem(Index: Integer; const Value: INFItem);
    function New: INFItem;
    property Items[Index: Integer]: INFItem read GetItem write SetItem; default;
  end;

  INFICMS = interface(IInterface)
    ['{F8C8D13E-9F30-4316-A2CE-BB738CF863B1}']
    function GetCFOP: SmallInt;
    procedure SetCFOP(const Valor: SmallInt);
    function GetAliquota: Currency;
    procedure SetAliquota(const Valor: Currency);
    function GetValorTotal: Currency;
    procedure SetValorTotal(const Valor: Currency);
    function GetBaseICMS: Currency;
    procedure SetBaseICMS(const Valor: Currency);
    function GetValorICMS: Currency;
    procedure SetValorICMS(const Valor: Currency);
    function GetIsentasNTribut: Currency;
    procedure SetIsentasNTribut(const Valor: Currency);
    function GetOutras: Currency;
    procedure SetOutras(const Valor: Currency);
    property Aliquota: Currency read GetAliquota write SetAliquota;
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property ValorICMS: Currency read GetValorICMS write SetValorICMS;
    property IsentasNTribut: Currency read GetIsentasNTribut write SetIsentasNTribut;
    property Outras: Currency read GetOutras write SetOutras;
  end;

  INFICMSLista = interface(IInterfaceList)
    ['{719351AC-591D-44DC-9A74-FA15A6041F68}']
    function GetItem(Index: Integer): INFICMS;
    procedure SetItem(Index: Integer; const Value: INFICMS);
    function New: INFICMS;

    property Items[Index: Integer]: INFICMS read GetItem write SetItem; default;
  end;

  INF = interface(IInterface)
    ['{9E5AD819-C09B-4BC7-A917-B6C175215FCF}']
    function GetCNPJ: string;
    procedure SetCNPJ(const Valor: string);
    function GetInscEstadual: string;
    procedure SetInscEstadual(const Valor: string);
    function GetData: TDateTime;
    procedure SetData(const Valor: TDateTime);
    function GetUF: string;
    procedure SetUF(const Valor: string);
    function GetModelo: SmallInt;
    procedure SetModelo(const Valor: SmallInt);
    function GetSerie: string;
    procedure SetSerie(const Valor: string);
    function GetNumero: Integer;
    procedure SetNumero(const Valor: Integer);
    function GetTipoEmitente: TTipoEmitente;
    procedure SetTipoEmitente(const Valor: TTipoEmitente);
    function GetSituacao: TSituacao;
    procedure SetSituacao(const Valor: TSituacao);
    function GetNFItem: INFItemLista;
    procedure SetNFItem(const Valor: INFItemLista);
    function GetNFICMS: INFICMSLista;
    procedure SetnfICMS(const Valor: INFICMSLista);
    function GetDespAcessoria: Currency;
    procedure SetDespAcessoria(const Valor: Currency);
    function GetFrete: Currency;
    procedure SetFrete(const Valor: Currency);
    function GetSeguro: Currency;
    procedure SetSeguro(const Valor: Currency);
    function GetNFIPI: INFIPILista;
    procedure SetNFIPI(const Valor: INFIPILista);
    function GetNFST: INFSTLista;
    procedure SetNFST(const Valor: INFSTLista);
    function GetModFrete: TModalidadeFrete;
    function GetSubSerie: string;
    procedure SetModFrete(const Value: TModalidadeFrete);
    procedure SetSubSerie(const Value: string);
    function GetCargaNFCNPJ: String;
    function GetCargaNFData: TDateTime;
    function GetCargaNFInscEstadual: String;
    function GetCargaNFModelo: SmallInt;
    function GetCargaNFNumero: Integer;
    function GetCargaNFSerie: String;
    function GetCargaNFUF: String;
    function GetCargaNFVlrTotal: Currency;
    procedure SetCargaNFCNPJ(const Value: String);
    procedure SetCargaNFData(const Value: TDateTime);
    procedure SetCargaNFInscEstadual(const Value: String);
    procedure SetCargaNFModelo(const Value: SmallInt);
    procedure SetCargaNFNumero(const Value: Integer);
    procedure SetCargaNFSerie(const Value: String);
    procedure SetCargaNFUF(const Value: String);
    procedure SetCargaNFVlrTotal(const Value: Currency);
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property Data: TDateTime read GetData write SetData;
    property UF: string read GetUF write SetUF;
    property Modelo: SmallInt read GetModelo write SetModelo;
    property Serie: string read GetSerie write SetSerie;
    property SubSerie: string read GetSubSerie write SetSubSerie;
    property Numero: Integer read GetNumero write SetNumero;
    property TipoEmitente: TTipoEmitente read GetTipoEmitente write SetTipoEmitente;
    property ModFrete: TModalidadeFrete read GetModFrete write SetModFrete;
    property Frete: Currency read GetFrete write SetFrete;
    property Seguro: Currency read GetSeguro write SetSeguro;
    property DespAcessoria: Currency read GetDespAcessoria write SetDespAcessoria;
    property Situacao: TSituacao read GetSituacao write SetSituacao;
    property CargaNFUF: String read GetCargaNFUF write SetCargaNFUF;
    property CargaNFCNPJ: String read GetCargaNFCNPJ write SetCargaNFCNPJ;
    property CargaNFInscEstadual: String read GetCargaNFInscEstadual write SetCargaNFInscEstadual;
    property CargaNFData: TDateTime read GetCargaNFData write SetCargaNFData;
    property CargaNFModelo: SmallInt read GetCargaNFModelo write SetCargaNFModelo;
    property CargaNFNumero: Integer read GetCargaNFNumero write SetCargaNFNumero;
    property CargaNFSerie: String read GetCargaNFSerie write SetCargaNFSerie;
    property CargaNFVlrTotal: Currency read GetCargaNFVlrTotal write SetCargaNFVlrTotal;
    property NFICMS: INFICMSLista read GetNFICMS write SetNFICMS;
    property NFItem: INFItemLista read GetNFItem write SetNFItem;
    property NFIPI: INFIPILista read GetNFIPI write SetNFIPI;
    property NFST: INFSTLista read GetNFST write SetNFST;
  end;

  INFLista = interface(IInterfaceList)
    ['{93242FA7-79B6-4584-8AE2-DE6585D680A9}']
    function GetItem(Index: Integer): INF;
    procedure SetItem(Index: Integer; const Value: INF);
    function Gettotalentradas: Integer;
    function GetTotalSaidas: Integer;
    function New: INF;
    property Items[Index: Integer]: INF read GetItem write SetItem; default;
    property TotalEntradas: Integer read Gettotalentradas;
    property TotalSaidas: Integer read GetTotalSaidas;
  end;

  ICFItem = interface(IInterface)
    ['{3959B461-1EE9-4758-BC07-AFA2D8CFAF60}']
    function GetBaseICMS: Currency;
    function GetCodProduto: string;
    function GetCOOCupom: Integer;
    function GetNumItem: Integer;
    function GetQuantidade: Extended;
    function GetSitTributaria: string;
    function GetValorICMS: Currency;
    function GetValorUnitario: Currency;
    procedure SetCodProduto(const Valor: string);
    procedure SetCOOCupom(const Valor: Integer);
    procedure SetNumItem(const Valor: Integer);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetSitTributaria(const Valor: string);
    procedure SetValorUnitario(const Valor: Currency);
    procedure SetBaseICMS(const Valor: Currency);
    property COOCupom: Integer read GetCOOCupom write SetCOOCupom;
    property NumItem: Integer read GetNumItem write SetNumItem;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorUnitario: Currency read GetValorUnitario write SetValorUnitario;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorICMS: Currency read GetValorICMS;
  end;

  ICFItemLista = interface(IInterfaceList)
    ['{32BED6DE-668F-4EE9-984F-5F7DD2D91B56}']
    function GetItem(Index: Integer): ICFItem;
    procedure SetItem(Index: Integer; const Value: ICFItem);
    function New: ICFItem;
    property Items[Index: Integer]: ICFItem read GetItem write SetItem; default;
  end;

  ICFResumoMes = interface(IInterface)
    ['{A846B50C-E2A0-4B4A-887C-E30CD6DE0B46}']
    function GetAno: SmallInt;
    function GetCodProduto: string;
    function GetMes: SmallInt;
    function GetQuantidade: Extended;
    function GetSitTributaria: string;
    function GetValorAcumICMS: Currency;
    function GetValorAcumProduto: Currency;
    procedure SetAno(const Valor: SmallInt);
    procedure SetCodProduto(const Valor: string);
    procedure SetMes(const Valor: SmallInt);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetSitTributaria(const Valor: string);
    procedure SetValorAcumICMS(const Valor: Currency);
    procedure SetValorAcumProduto(const Valor: Currency);
    property Mes: SmallInt read GetMes write SetMes;
    property ANo: SmallInt read GetAno write SetAno;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorAcumProduto: Currency read GetValorAcumProduto write SetValorAcumProduto;
    property ValorAcumICMS: Currency read GetValorAcumICMS write SetValorAcumICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
  end;

  ICFResumoMesLista = interface(IInterfaceList)
    ['{4AF3F1E1-F645-45EF-8A23-5F0437E93C58}']
    function GetItem(Index: Integer): ICFResumoMes;
    procedure SetItem(Index: Integer; const Value: ICFResumoMes);
    function New: ICFResumoMes;
    property Items[Index: Integer]: ICFResumoMes read GetItem write SetItem; default;
  end;

  ICFResumoDia = interface(IInterface)
    ['{CDC656A0-5B10-4D40-B806-277473AB2F19}']
    function GetSitTributaria: string;
    function GetBaseCalcICMS: Currency;
    function GetCodProduto: string;
    function GetQuantAcumulada: Extended;
    function GetValorAcumulado: Currency;
    function GetValorICMS: Currency;
    procedure SetSitTributaria(const Valor: string);
    procedure SetBaseCalcICMS(const Valor: Currency);
    procedure setCodProduto(const Valor: string);
    procedure SetQuantAcumulada(const Valor: Extended);
    procedure SetValorAcumulado(const Valor: Currency);
    property CodProduto: string read GetCodProduto write setCodProduto;
    property QuantAcumulada: Extended read GetQuantAcumulada write SetQuantAcumulada;
    property ValorAcumulado: Currency read GetValorAcumulado write SetValorAcumulado;
    property BaseCalcICMS: Currency read GetBaseCalcICMS write SetBaseCalcICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorICMS: Currency read GetValorICMS;
  end;

  ICFResumoDiaLista = interface(IInterfaceList)
    ['{82479ECB-009C-4DCA-A8EA-46168A9B42A4}']
    function GetItem(Index: Integer): ICFResumoDia;
    procedure SetItem(Index: Integer; const Value: ICFResumoDia);
    function New: ICFResumoDia;
    function GetTotalAcumulado: Currency;
    property Items[Index: Integer]: ICFResumoDia read GetItem write SetItem; default;
    property TotalAcumulado: Currency read GetTotalAcumulado;
  end;

  ICFICMS = interface(IInterface)
    ['{EDEFBBD5-CFD3-45E4-BB64-9FCB0A500330}']
    function GetSitTributaria: string;
    procedure SetSitTributaria(const Valor: string);
    function GetValorAcumulado: Currency;
    procedure SetValorAcumulado(const Valor: Currency);
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorAcumulado: Currency read GetValorAcumulado write SetValorAcumulado;
  end;

  ICFICMSLista = interface(IInterfaceList)
    ['{C6B68871-908B-4CD7-BF4C-1AA16BA2CD71}']
    function GetItem(Index: Integer): ICFICMS;
    procedure SetItem(Index: Integer; const Value: ICFICMS);
    function Total: Currency;
    function New: ICFICMS;
    property Items[Index: Integer]: ICFICMS read GetItem write SetItem; default;
  end;

  ICFReducao = interface(IInterface)
    ['{1EA59280-823F-4149-81DA-5992AD482562}']
    function GetDataEmissao: TDateTime;
    procedure SetDataEmissao(const Valor: TDateTime);
    function GetNumSerieEquip: string;
    procedure SetNumSerieEquip(const Valor: string);
    function GetNumSequencial: Integer;
    procedure SetNumSequencial(const Valor: Integer);
    function GetModDocFiscal: TModDocumento;
    procedure SetModDocFiscal(const Valor: TModDocumento);
    function GetCOOInicial: Integer;
    procedure SetCOOInicial(const Valor: Integer);
    function GetCOOFinal: Integer;
    procedure SetCOOFinal(const Valor: Integer);
    function GetContReducaoZ: Integer;
    procedure SetContReducaoZ(const Valor: Integer);
    function GetContReinicioOper: Integer;
    procedure SetContReinicioOper(const Valor: Integer);
    function GetVendaBruta: Currency;
    procedure SetVendaBruta(const Valor: Currency);
    function GetGTFinal: Currency;
    procedure SetGTFinal(const Valor: Currency);
    function GetCFICMS: ICFICMSLista;
    procedure SetCFICMS(const Valor: ICFICMSLista);
    function GetResumoDia: ICFResumoDiaLista;
    procedure SetResumoDia(const Valor: ICFResumoDiaLista);
    function GetCFItem: ICFItemLista;
    procedure SetCFItem(const Valor: ICFItemLista);
    property DataEmissao: TDateTime read GetDataEmissao write SetDataEmissao;
    property NumSerieEquip: string read GetNumSerieEquip write SetNumSerieEquip;
    property NumSequencial: Integer read GetNumSequencial write SetNumSequencial;
    property ModDocFiscal: TModDocumento read GetModDocFiscal write SetModDocFiscal;
    property COOInicial: Integer read GetCOOInicial write SetCOOInicial;
    property COOFinal: Integer read GetCOOFinal write SetCOOFinal;
    property ContReducaoZ: Integer read GetContReducaoZ write SetContReducaoZ;
    property ContReinicioOper: Integer read GetContReinicioOper write SetContReinicioOper;
    property VendaBruta: Currency read GetVendaBruta write SetVendaBruta;
    property GTFinal: Currency read GetGTFinal write SetGTFinal;
    property CFICMS: ICFICMSLista read GetCFICMS write SetCFICMS;
    property CFResumoDia: ICFResumoDiaLista read GetResumoDia write SetResumoDia;
    property CFItem: ICFItemLista read GetCFItem write SetCFItem;
  end;

  ICFReducaoLista = interface(IInterfaceList)
    ['{5497071C-DC2B-4E69-90FB-354C041EB46F}']
    function GetItem(Index: Integer): ICFReducao;
    procedure SetItem(Index: Integer; const Value: ICFReducao);
    function New: ICFReducao;
    property Items[Index: Integer]: ICFReducao read GetItem write SetItem; default;
  end;

  INFC = interface(IInterface)
    ['{55AA430D-AC39-4FFC-B9EB-6F0E5E5989D2}']
    function GetDataEmissao: TDateTime;
    procedure SetDataEmissao(const Valor: TDateTime);
    function GetModeloDoc: Integer;
    procedure SetModeloDoc(const Valor: Integer);
    function GetSerie: string;
    procedure SetSerie(const Valor: string);
    function GetSubSerie: string;
    procedure SetSubSerie(const Valor: string);
    function GetNumInicial: Integer;
    procedure SetNumInicial(const Valor: Integer);
    function GetNumFinal: Integer;
    procedure SetNumFinal(const Valor: Integer);
    function GetValorTotal: Currency;
    procedure SetValorTotal(const Valor: Currency);
    function GetBaseICMS: Currency;
    procedure SetBaseICMS(const Valor: Currency);
    function GetIsentasNTrib: Currency;
    procedure SetIsentasNTrib(const Valor: Currency);
    function GetOutras: Currency;
    procedure SetOutras(const Valor: Currency);
    function GetAliquota: Currency;
    procedure SetAliquota(const Valor: Currency);
    function GetValorICMS: Currency;
    property DataEmissao: TDateTime read GetDataEmissao write SetDataEmissao;
    property ModeloDoc: Integer read GetModeloDoc write SetModeloDoc;
    property Serie: string read GetSerie write SetSerie;
    property SubSerie: string read GetSubSerie write SetSubSerie;
    property NumInicial: Integer read GetNumInicial write SetNumInicial;
    property NumFinal: Integer read GetNumFinal write SetNumFinal;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property IsentasNTrib: Currency read GetIsentasNTrib write SetIsentasNTrib;
    property Outras: Currency read GetOutras write SetOutras;
    property Aliquota: Currency read GetAliquota write SetAliquota;
    property ValorICMS: currency read GetValorICMS;
  end;

  INFCLista = interface(IInterfaceList)
    ['{C235B185-A1EB-4AFB-AEE9-15AE857E1A85}']
    function GetItem(Index: Integer): INFC;
    procedure SetItem(Index: Integer; const Value: INFC);
    function New: INFC;
    property Items[Index: Integer]: INFC read GetItem write SetItem; default;
  end;

  INFCResumoMes = interface(IInterface)
    ['{DE7A9950-E87D-4755-9569-F5420E811649}']
    function GetMes: SmallInt;
    function GetAno: SmallInt;
    function GetCodProduto: string;
    function GetQuantidade: Extended;
    function GetValorBrutoProduto: Currency;
    function GetBaseCalcICMS: Currency;
    function GetAliquota: Currency;
    procedure SetMes(const Valor: SmallInt);
    procedure SetAno(const Valor: SmallInt);
    procedure SetCodProduto(const Valor: string);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetValorBrutoProduto(const Valor: Currency);
    procedure SetBaseCalcICMS(const Valor: Currency);
    procedure SetAliquota(const Valor: Currency);
    property Mes: SmallInt read GetMes write SetMes;
    property Ano: SmallInt read GetAno write SetAno;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorBrutoProduto: Currency read GetValorBrutoProduto write SetValorBrutoProduto;
    property BaseCalcICMS: Currency read GetBaseCalcICMS write SetBaseCalcICMS;
    property Aliquota: Currency read GetAliquota write SetAliquota;
  end;

  INFCResumoMesLista = interface(IInterfaceList)
    ['{9ED9097C-B06C-492E-BA79-D1618B5A2077}']
    function GetItem(Index: Integer): INFCResumoMes;
    procedure SetItem(Index: Integer; const Value: INFCResumoMes);
    function New: INFCResumoMes;
    property Items[Index: Integer]: INFCResumoMes read GetItem write SetItem; default;
  end;

  ISintegra = interface(IInterface)
    ['{FE7CCEC6-64BB-4CB7-9F50-EEC8B35147D2}']
    function GetCFReducao: ICFReducaoLista;
    function GetCFResumoMes: ICFResumoMesLista;
    function GetDataFinal: TDateTime;
    function GetDataInicial: TDateTime;
    function GetEmpresa: IEmpresa;
    function GetFinalidade: TCodFinalidade;
    function GetGNRE: IGNRELista;
    function GetInventario: IInventarioLista;
    function GetNaturezaOperacao: TCodIdentificaOper;
    function GetNF: INFLista;
    function GEtNFC: INFCLista;
    function GetNFCResumoMes: INFCResumoMesLista;
    function GetProduto: IProdutoLista;
    function GetVersao: string;
    procedure SetCFReducao(const Valor: ICFReducaoLista);
    procedure SetCFResumoMes(const Valor: ICFResumoMesLista);
    procedure SetDataFinal(const Valor: TDateTime);
    procedure SetDataInicial(const Valor: TDateTime);
    procedure SetEmpresa(const Valor: IEmpresa);
    procedure SetFinalidade(const Valor: TCodFinalidade);
    procedure SetGNRE(const Valor: IGNRELista);
    procedure SetInventario(const Valor: IInventarioLista);
    procedure SetNaturezaOperacao(const Valor: TCodIdentificaOper);
    procedure SetNF(const Valor: INFLista);
    procedure SetNFC(const Valor: INFCLista);
    procedure SetNFCResumoMes(const Valor: INFCResumoMesLista);
    procedure SetProduto(const Valor: IProdutoLista);
    function GetOnErro: TErrorEvent;
    procedure SetOnErro(const Value: TErrorEvent);
    procedure GerarErro(MensagemErro: String);
    procedure LimparRegistros;
    function VerificaProduto(aProduto: string): Boolean;
    function GerarArquivo(aArquivo: string): Boolean;
    procedure Check(Condicao: Boolean; const Msg: string); overload;
    procedure Check(Condicao: Boolean; Msg: string; Fmt: array of const); overload;
    procedure Check(const StrNaoNula, Msg: string); overload;
    procedure Check(const StrNaoNula, Msg: string; Fmt: array of const); overload;
    procedure Check(Valor, Minimo, Maximo: Double; const Msg: string); overload;
    procedure Check(Valor, Minimo, Maximo: Double; const Msg: string; Fmt: array of const); overload;
    property OnErro: TErrorEvent read GetOnErro write SetOnErro;
    property Versao: string read GetVersao;
    property DataInicial: TDateTime read GetDataInicial write SetDataInicial;
    property DataFinal: TDateTime read GetDataFinal write SetDataFinal;
    property NatOperacao: TCodIdentificaOper read GetNaturezaOperacao write SetNaturezaOperacao;
    property Finalidade: TCodFinalidade read GetFinalidade write SetFinalidade;
    property Empresa: IEmpresa read GetEmpresa write SetEmpresa;
    property NF: INFLista read GetNF write SetNF;
    property CFReducao: ICFReducaoLista read GetCFReducao write SetCFReducao;
    property CFResumoMes: ICFResumoMesLista read GetCFResumoMes write SetCFResumoMes;
    property NFC: INFCLista read GetNFC write SetNFC;
    property NFCResumoMes: INFCResumoMesLista read GetNFCResumoMes write SetNFCResumoMes;
    property GNRE: IGNRELista read GetGNRE write SetGNRE;
    property Produto: IProdutoLista read GetProduto write SetProduto;
    property Inventario: IInventarioLista read GetInventario write SetInventario;
  end;

  { Funcoes Utilitárias }
  function VerificaCEP(cCep, cEstado: string): Boolean;
  function VerificaCFOP(aCFOP: SmallInt): Boolean;
  function VerificaCPF_CNPJ(numero: string): Boolean;
  function VerificaInscEstadual(aInscricao, aTipo: string): Boolean;
  function VerificaUF(aUF: string): Boolean;

  { Factoring da Interface ISintegra }
  function CreateSintegra():ISintegra;

var
  Debug: Boolean = False;

implementation

const
  kReg50 = [01, 04, 06, 21, 22];
  kReg70 = [07, 08, 09, 10, 11, 26];
  kReg71 = [08, 09, 10, 11, 26];

type
  TSintegraObject = class(TInterfacedObject)
  protected
    function RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string; overload;
    function LFIll(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: TDateTime): string; overload;

    function RetornaFrete(aModFrete: TModalidadeFrete): string;
    function RetornaCodPosse(TipoPosse: TTipoPosse): string;
    function RetornaFinalidade(aFinalidade: TCodFinalidade): string;
    function RetornaModDocumento(aTipoDocumento: TModDocumento): string;
    function RetornaNatureza(aNaturezaOper: TCodIdentificaOper): string;
    function RetornaSituacao(aSituacao: TSituacao): string;
    function RetornaTipoEmitente(aTipoEmitente: TTipoEmitente): string;
    function RetornaSoNumero(aNumero: string): string;
    function RetiraMascara(aString: String): string;
    function StrToNumero(aValor: string; aDecimais: Integer): Extended;

    function VerificaCST(aCST: string): Boolean;
    function VerificaSitTributaria(aSitTributaria: string): Boolean;
  end;

  TEmpresa = class(TSintegraObject, IEmpresa)
  private
    FRazaoSocial: string;
    FCNPJ: string;
    FInscEstadual: string;
    FMunicipio: string;
    FUF: string;
    FFax: string;
    FResponsavel: string;
    FEndereco: string;
    FComplemento: string;
    FNumero: Integer;
    FBairro: string;
    FCEP: string;
    FFone: string;
    FContribuinteIPI: Boolean;
    FSubstitutoTributario: Boolean;
    function GetRazaoSocial: string;
    procedure SetRazaoSocial(const Valor: string);
    function GetCNPJ: string;
    procedure SetCNPJ(const Valor: string);
    function GetInscEstadual: string;
    procedure SetInscEstadual(const Valor: string);
    function GetMunicipio: string;
    procedure SetMunicipio(const Valor: string);
    function GetUF: string;
    procedure SetUF(const Valor: string);
    function GetFax: string;
    procedure SetFax(const Valor: string);
    function GetResponsavel: string;
    procedure SetResponsavel(const Valor: string);
    function GetEndereco: string;
    procedure SetEndereco(const Valor: string);
    function GetComplemento: string;
    procedure SetComplemento(const Valor: string);
    function GetNumero: Integer;
    procedure SetNumero(const Valor: Integer);
    function GetBairro: string;
    procedure SetBairro(const Valor: string);
    function GetCEP: string;
    procedure SetCEP(const Valor: string);
    function GetFone: string;
    procedure SetFone(const Valor: string);
    function GetContribuinteIPI: Boolean;
    procedure SetContribuinteIPI(const Valor: Boolean);
    function GetSubstitutoTributario: Boolean;
    procedure SetSubstitutoTributario(const Valor: Boolean);
  published
    property RazaoSocial: string read GetRazaoSocial write SetRazaoSocial;
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property Endereco: string read GetEndereco write SetEndereco;
    property Complemento: string read GetComplemento write SetComplemento;
    property Numero: Integer read GetNumero write SetNumero default 0;
    property Bairro: string read GetBairro write SetBairro;
    property Municipio: string read GetMunicipio write SetMunicipio;
    property CEP: string read GetCEP write SetCEP;
    property UF: string read GetUF write SetUF;
    property Fax: string read GetFax write SetFax;
    property Fone: string read GetFone write SetFone;
    property Responsavel: string read GetResponsavel write SetResponsavel;
    property ContribuinteIPI: Boolean read GetContribuinteIPI write SetContribuinteIPI default False;
    property SubstitutoTributario: Boolean read GetSubstitutoTributario write SetSubstitutoTributario default False;
  end;

  TSintegra = class(TSintegraObject, ISintegra)
  private
    FOnErro: TErrorEvent;
    FDataInicial: TDateTime;
    FDataFinal: TDateTime;
    FNaturezaOperacao: TCodIdentificaOper;
    FFinalidade: TCodFinalidade;
    FEmpresa: IEmpresa;
    FNF: INFLista;
    FCFReducao: ICFReducaoLista;
    FProduto: IProdutoLista;
    FCFResumoMes: ICFResumoMesLista;
    FNFC: INFCLista;
    FNFCResumoMes: INFCResumoMesLista;
    FGuiaGNRE: IGNRELista;
    FInventario: IInventarioLista;
    function GetCFReducao: ICFReducaoLista;
    function GetCFResumoMes: ICFResumoMesLista;
    function GetDataFinal: TDateTime;
    function GetDataInicial: TDateTime;
    function GetEmpresa: IEmpresa;
    function GetFinalidade: TCodFinalidade;
    function GetGNRE: IGNRELista;
    function GetInventario: IInventarioLista;
    function GetNaturezaOperacao: TCodIdentificaOper;
    function GetNF: INFLista;
    function GEtNFC: INFCLista;
    function GetNFCResumoMes: INFCResumoMesLista;
    function GetProduto: IProdutoLista;
    function GetVersao: string;
    procedure SetCFReducao(const Valor: ICFReducaoLista);
    procedure SetCFResumoMes(const Valor: ICFResumoMesLista);
    procedure SetDataFinal(const Valor: TDateTime);
    procedure SetDataInicial(const Valor: TDateTime);
    procedure SetEmpresa(const Valor: IEmpresa);
    procedure SetFinalidade(const Valor: TCodFinalidade);
    procedure SetGNRE(const Valor: IGNRELista);
    procedure SetInventario(const Valor: IInventarioLista);
    procedure SetNaturezaOperacao(const Valor: TCodIdentificaOper);
    procedure SetNF(const Valor: INFLista);
    procedure SetNFC(const Valor: INFCLista);
    procedure SetNFCResumoMes(const Valor: INFCResumoMesLista);
    procedure SetProduto(const Valor: IProdutoLista);
    function GetOnErro: TErrorEvent;
    procedure SetOnErro(const Value: TErrorEvent);
    procedure GerarErro(MensagemErro: String);
  protected
    function Registro10e11: string;
    function Registro50: string;
    function Registro60: string;
    function Registro70: string;
    function Registro71: string;
    function Registro74: string;
    function Registro75: string;
    function Registro90: string;
    function VerificaCorrespondente(aProduto: string): Boolean;
  public
    constructor Create;
    procedure LimparRegistros;
    function VerificaProduto(aProduto: string): Boolean;
    function GerarArquivo(aArquivo: string): Boolean;
    procedure Check(Condicao: Boolean; const Msg: string); overload;
    procedure Check(Condicao: Boolean; Msg: string; Fmt: array of const); overload;
    procedure Check(const StrNaoNula, Msg: string); overload;
    procedure Check(const StrNaoNula, Msg: string; Fmt: array of const); overload;
    procedure Check(Valor, Minimo, Maximo: Double; const Msg: string); overload;
    procedure Check(Valor, Minimo, Maximo: Double; const Msg: string; Fmt: array of const); overload;
  published
    property OnErro: TErrorEvent read GetOnErro write SetOnErro;
    property Versao: string read GetVersao;
    property DataInicial: TDateTime read GetDataInicial write SetDataInicial;
    property DataFinal: TDateTime read GetDataFinal write SetDataFinal;
    property NatOperacao: TCodIdentificaOper read GetNaturezaOperacao write SetNaturezaOperacao;
    property Finalidade: TCodFinalidade read GetFinalidade write SetFinalidade;
    property Empresa: IEmpresa read GetEmpresa write SetEmpresa;
    property NF: INFLista read GetNF write SetNF;
    property CFReducao: ICFReducaoLista read GetCFReducao write SetCFReducao;
    property CFResumoMes: ICFResumoMesLista read GetCFResumoMes write SetCFResumoMes;
    property NFC: INFCLista read GetNFC write SetNFC;
    property NFCResumoMes: INFCResumoMesLista read GetNFCResumoMes write SetNFCResumoMes;
    property GNRE: IGNRELista read GetGNRE write SetGNRE;
    property Produto: IProdutoLista read GetProduto write SetProduto;
    property Inventario: IInventarioLista read GetInventario write SetInventario;
  end;

  TNFIPI = class(TSintegraObject, INFIPI)
  private
    fCFOP: SmallInt;
    fValor: Currency;
    fValorIPI: Currency;
    fIsentaNTrib: Currency;
    fOutras: Currency;
    function GetCFOP: SmallInt;
    function GetIsentaNTrib: Currency;
    function GetOutras: Currency;
    function GetValor: Currency;
    function GetValorIPI: Currency;
    procedure SetCFOP(const Valor: SmallInt);
    procedure SetIsentaNTrib(const Valor: Currency);
    procedure SetOutras(const Valor: Currency);
    procedure SetValor(const Valor: Currency);
    procedure SetValorIPI(const Valor: Currency);
  published
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property Valor: Currency read GetValor write SetValor;
    property ValorIPI: Currency read GetValorIPI write SetValorIPI;
    property IsentaNTrib: Currency read GetIsentaNTrib write SetIsentaNTrib;
    property Outras: Currency read GetOutras write SetOutras;
  end;

  TNFIPILista = class(TInterfaceList, INFIPILista)
  private
    function GetItem(Index: Integer): INFIPI;
    procedure SetItem(Index: Integer; const Value: INFIPI);
  public
    function New: INFIPI;
    property Items[Index: Integer]: INFIPI read GetItem write SetItem;
  end;

  TNFST = class(TSintegraObject, INFST)
  private
    fCFOP: SmallInt;
    fBaseCalcICMSST: Currency;
    fICMSRetido: Currency;
    fDespAcessoria: Currency;
    function GetBaseCalcICMSST: Currency;
    function GetCFOP: SmallInt;
    function GetDespAcessoria: Currency;
    function GetICMSRetido: Currency;
    procedure SetBaseCalcICMSST(const Valor: Currency);
    procedure SetCFOP(const Valor: SmallInt);
    procedure SetDespAcessoria(const Valor: Currency);
    procedure SetICMSRetido(const Valor: Currency);
  published
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property BaseCalcICMSST: Currency read GetBaseCalcICMSST write SetBaseCalcICMSST;
    property ICMSRetido: Currency read GetICMSRetido write SetICMSRetido;
    property DespAcessoria: Currency read GetDespAcessoria write SetDespAcessoria;
  end;

  TNFSTLista = class(TInterfaceList, INFSTLista)
  private
    function GetItem(Index: Integer): INFST;
    procedure SetItem(Index: Integer; const Value: INFST);
  public
    function New: INFST;
    property Items[Index: Integer]: INFST read GetItem write SetItem;
  end;

  TGNRE = class(TSintegraObject, IGNRE)
  private
    fMesRef: SmallInt;
    fAnoRef: SmallInt;
    fNumConvenio: string;
    fVencimento: TDateTime;
    fDataPagamento: TDateTime;
    fUFContribuinte: string;
    fUFFavorecido: string;
    fBanco: SmallInt;
    fAgencia: SmallInt;
    fNumeroGNRE: string;
    fValor: Currency;
    function GetAgencia: SmallInt;
    function GetAnoRef: SmallInt;
    function GetBanco: SmallInt;
    function GetDataPagamento: TDateTime;
    function GetMesRef: SmallInt;
    function GetNumConvenio: string;
    function GetNumeroGNRE: string;
    function GetUFContribuinte: string;
    function GetUFFavorecido: string;
    function GetValor: Currency;
    function GetVencimento: TDateTime;
    procedure SetAgencia(const Valor: SmallInt);
    procedure SetAnoRef(const Valor: SmallInt);
    procedure SetBanco(const Valor: SmallInt);
    procedure SetDataPagamento(const Valor: TDateTime);
    procedure SetMesRef(const Valor: SmallInt);
    procedure SetNumConvenio(const Valor: string);
    procedure SetNumeroGNRE(const Valor: string);
    procedure SetUFContribuinte(const Valor: string);
    procedure SetUFFavorecido(const Valor: string);
    procedure SetValor(const Valor: Currency);
    procedure SetVencimento(const Valor: TDateTime);
  published
    property MesRef: SmallInt read GetMesRef write SetMesRef default 0;
    property AnoRef: SmallInt read GetAnoRef write SetAnoRef default 0;
    property NumConvenio: string read GetNumConvenio write SetNumConvenio;
    property Vencimento: TDateTime read GetVencimento write SetVencimento;
    property DataPagamento: TDateTime read GetDataPagamento write SetDataPagamento;
    property UFContribuinte: string read GetUFContribuinte write SetUFContribuinte;
    property UFFavorecido: string read GetUFFavorecido write SetUFFavorecido;
    property Banco: SmallInt read GetBanco write SetBanco;
    property Agencia: SmallInt read GetAgencia write SetAgencia;
    property NumeroGNRE: string read GetNumeroGNRE write SetNumeroGNRE;
    property Valor: Currency read GetValor write SetValor;
  end;

  TGNRELista = class(TInterfaceList, IGNRELista)
  private
    function GetItem(Index: Integer): IGNRE;
    procedure SetItem(Index: Integer; const Value: IGNRE);
  public
    function New: IGNRE;
    property Items[Index: Integer]: IGNRE read GetItem write SetItem;
  end;

  TNFItem = class(TSintegraObject, INFItem)
  private
    fCFOP: SmallInt;
    fCST: string;
    fNumItem: SmallInt;
    fCodProduto: string;
    fQuantidade: Extended;
    fValorProduto: Currency;
    fDesconto: Currency;
    fBaseICMS: Currency;
    fBaseICMSST: Currency;
    fIPI: Currency;
    fAliquota: Currency;
    function GetAliquota: Currency;
    function GetBaseICMS: Currency;
    function GetBaseICMSST: Currency;
    function GetCodProduto: string;
    function GetCST: string;
    function GetDesconto: Currency;
    function GetIPI: Currency;
    function GetNumItem: SmallInt;
    function GetQuantidade: Extended;
    function GetValorProduto: Currency;
    function GetCFOP: SmallInt;
    procedure SetAliquota(const Valor: Currency);
    procedure SetBaseICMS(const Valor: Currency);
    procedure SetBaseICMSST(const Valor: Currency);
    procedure SetCodProduto(const Valor: string);
    procedure SetCST(const Valor: string);
    procedure SetDesconto(const Valor: Currency);
    procedure SetIPI(const Valor: Currency);
    procedure SetNumItem(const Valor: SmallInt);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetValorProduto(const Valor: Currency);
    procedure SetCFOP(const Valor: SmallInt);
  published
    property NumItem: SmallInt read GetNumItem write SetNumItem default 0;
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property CST: string read GetCST write SetCST;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorProduto: Currency read GetValorProduto write SetValorProduto;
    property Desconto: Currency read GetDesconto write SetDesconto;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property BaseICMSST: Currency read GetBaseICMSST write SetBaseICMSST;
    property IPI: Currency read GetIPI write SetIPI;
    property Aliquota: Currency read GetAliquota write SetAliquota;
  end;

  TNFItemLista = class(TInterfaceList, INFItemLista)
  private
    function GetItem(Index: Integer): INFItem;
    procedure SetItem(Index: Integer; const Value: INFItem);
  public
    function New: INFItem;
    property Items[Index: Integer]: INFItem read GetItem write SetItem;
  end;

  TNFICMS = class(TSintegraObject, INFICMS)
  private
    fAliquota: Currency;
    fCFOP: SmallInt;
    fValorTotal: Currency;
    fBaseICMS: Currency;
    fValorICMS: Currency;
    fIsentasNTribut: Currency;
    fOutras: Currency;
    function GetAliquota: Currency;
    procedure SetAliquota(const Valor: Currency);
    function GetCFOP: SmallInt;
    procedure SetCFOP(const Valor: SmallInt);
    function GetValorTotal: Currency;
    procedure SetValorTotal(const Valor: Currency);
    function GetBaseICMS: Currency;
    procedure SetBaseICMS(const Valor: Currency);
    function GetValorICMS: Currency;
    procedure SetValorICMS(const Valor: Currency);
    function GetIsentasNTribut: Currency;
    procedure SetIsentasNTribut(const Valor: Currency);
    function GetOutras: Currency;
    procedure SetOutras(const Valor: Currency);
  published
    property Aliquota: Currency read GetAliquota write SetAliquota;
    property CFOP: SmallInt read GetCFOP write SetCFOP;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property ValorICMS: Currency read GetValorICMS write SetValorICMS;
    property IsentasNTribut: Currency read GetIsentasNTribut write SetIsentasNTribut;
    property Outras: Currency read GetOutras write SetOutras;
  end;

  TNFICMSLista = class(TInterfaceList, INFICMSLista)
  private
    function GetItem(Index: Integer): INFICMS;
    procedure SetItem(Index: Integer; const Value: INFICMS);
  public
    function New: INFICMS;
    property Items[Index: Integer]: INFICMS read GetItem write SetItem;
  end;

  TNF = class(TSintegraObject, INF)
  private
    fCNPJ: string;
    fInscEstadual: string;
    fData: TDateTime;
    fUF: string;
    fModelo: SmallInt;
    fSerie: string;
    fSubSerie: string;
    fNumero: Integer;
    fTipoEmitente: TTipoEmitente;
    fSeguro: Currency;
    fFrete: Currency;
    fDespAcessoria: Currency;
    fSituacao: TSituacao;
    fNFICMS: INFICMSLista;
    fNFItem: INFItemLista;
    fNFIPI: INFIPILista;
    fNFST: INFSTLista;
    FModFrete: TModalidadeFrete;
    FCargaNFUF: String;
    FCargaNFCNPJ: String;
    FCargaNFInscEstadual: String;
    FCargaNFData: TDateTime;
    FCargaNFModelo: SmallInt;
    FCargaNFNumero: Integer;
    FCargaNFSerie: String;
    FCargaNFVlrTotal: Currency;
    function GetCNPJ: string;
    procedure SetCNPJ(const Valor: string);
    function GetInscEstadual: string;
    procedure SetInscEstadual(const Valor: string);
    function GetData: TDateTime;
    procedure SetData(const Valor: TDateTime);
    function GetUF: string;
    procedure SetUF(const Valor: string);
    function GetModelo: SmallInt;
    procedure SetModelo(const Valor: SmallInt);
    function GetSerie: string;
    procedure SetSerie(const Valor: string);
    function GetNumero: Integer;
    procedure SetNumero(const Valor: Integer);
    function GetTipoEmitente: TTipoEmitente;
    procedure SetTipoEmitente(const Valor: TTipoEmitente);
    function GetSituacao: TSituacao;
    procedure SetSituacao(const Valor: TSituacao);
    function GetNFItem: INFItemLista;
    procedure SetNFItem(const Valor: INFItemLista);
    function GetNFICMS: INFICMSLista;
    procedure SetnfICMS(const Valor: INFICMSLista);
    function GetDespAcessoria: Currency;
    procedure SetDespAcessoria(const Valor: Currency);
    function GetFrete: Currency;
    procedure SetFrete(const Valor: Currency);
    function GetSeguro: Currency;
    procedure SetSeguro(const Valor: Currency);
    function GetNFIPI: INFIPILista;
    procedure SetNFIPI(const Valor: INFIPILista);
    function GetNFST: INFSTLista;
    procedure SetNFST(const Valor: INFSTLista);
    function GetModFrete: TModalidadeFrete;
    function GetSubSerie: string;
    procedure SetModFrete(const Value: TModalidadeFrete);
    procedure SetSubSerie(const Value: string);
    function GetCargaNFCNPJ: String;
    function GetCargaNFData: TDateTime;
    function GetCargaNFInscEstadual: String;
    function GetCargaNFModelo: SmallInt;
    function GetCargaNFNumero: Integer;
    function GetCargaNFSerie: String;
    function GetCargaNFUF: String;
    function GetCargaNFVlrTotal: Currency;
    procedure SetCargaNFCNPJ(const Value: String);
    procedure SetCargaNFData(const Value: TDateTime);
    procedure SetCargaNFInscEstadual(const Value: String);
    procedure SetCargaNFModelo(const Value: SmallInt);
    procedure SetCargaNFNumero(const Value: Integer);
    procedure SetCargaNFSerie(const Value: String);
    procedure SetCargaNFUF(const Value: String);
    procedure SetCargaNFVlrTotal(const Value: Currency);
  public
    constructor Create;
  published
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property Data: TDateTime read GetData write SetData;
    property UF: string read GetUF write SetUF;
    property Modelo: SmallInt read GetModelo write SetModelo;
    property Serie: string read GetSerie write SetSerie;
    property SubSerie: string read GetSubSerie write SetSubSerie;
    property Numero: Integer read GetNumero write SetNumero;
    property TipoEmitente: TTipoEmitente read GetTipoEmitente write SetTipoEmitente default tpeProprio;
    property ModFrete: TModalidadeFrete read GetModFrete write SetModFrete;
    property Frete: Currency read GetFrete write SetFrete;
    property Seguro: Currency read GetSeguro write SetSeguro;
    property DespAcessoria: Currency read GetDespAcessoria write SetDespAcessoria;
    property Situacao: TSituacao read GetSituacao write SetSituacao default nfNormal;
    property CargaNFUF: String read GetCargaNFUF write SetCargaNFUF;
    property CargaNFCNPJ: String read GetCargaNFCNPJ write SetCargaNFCNPJ;
    property CargaNFInscEstadual: String read GetCargaNFInscEstadual write SetCargaNFInscEstadual;
    property CargaNFData: TDateTime read GetCargaNFData write SetCargaNFData;
    property CargaNFModelo: SmallInt read GetCargaNFModelo write SetCargaNFModelo;
    property CargaNFNumero: Integer read GetCargaNFNumero write SetCargaNFNumero;
    property CargaNFSerie: String read GetCargaNFSerie write SetCargaNFSerie;
    property CargaNFVlrTotal: Currency read GetCargaNFVlrTotal write SetCargaNFVlrTotal;
    property NFICMS: INFICMSLista read GetNFICMS write SetNFICMS;
    property NFItem: INFItemLista read GetNFItem write SetNFItem;
    property NFIPI: INFIPILista read GetNFIPI write SetNFIPI;
    property NFST: INFSTLista read GetNFST write SetNFST;
  end;

  TNFLista = class(TInterfaceList, INFLista)
  private
    function GetItem(Index: Integer): INF;
    procedure SetItem(Index: Integer; const Value: INF);
    function GetTotalEntradas: Integer;
    function GetTotalSaidas: Integer;
  public
    function New: INF;
    property Items[Index: Integer]: INF read GetItem write SetItem;
    property TotalEntradas: Integer read GetTotalEntradas;
    property TotalSaidas: Integer read GetTotalSaidas;
  end;

  TCFResumoMes = class(TSintegraObject, ICFResumoMes)
  private
    fMes: SmallInt;
    fANo: SmallInt;
    fCodProduto: string;
    fQuantidade: Extended;
    fValorAcumProduto: Currency;
    fValorAcumICMS: Currency;
    fSitTributaria: string;
    function GetAno: SmallInt;
    function GetCodProduto: string;
    function GetMes: SmallInt;
    function GetQuantidade: Extended;
    function GetSitTributaria: string;
    function GetValorAcumICMS: Currency;
    function GetValorAcumProduto: Currency;
    procedure SetAno(const Valor: SmallInt);
    procedure SetCodProduto(const Valor: string);
    procedure SetMes(const Valor: SmallInt);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetSitTributaria(const Valor: string);
    procedure SetValorAcumICMS(const Valor: Currency);
    procedure SetValorAcumProduto(const Valor: Currency);
  published
    property Mes: SmallInt read GetMes write SetMes default 0;
    property ANo: SmallInt read GetAno write SetAno default 0;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorAcumProduto: Currency read GetValorAcumProduto write SetValorAcumProduto;
    property ValorAcumICMS: Currency read GetValorAcumICMS write SetValorAcumICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
  end;

  TCFResumoMesLista = class(TInterfaceList, ICFResumoMesLista)
  private
    function GetItem(Index: Integer): ICFResumoMes;
    procedure SetItem(Index: Integer; const Value: ICFResumoMes);
  public
    function New: ICFResumoMes;
    property Items[Index: Integer]: ICFResumoMes read GetItem write SetItem;
  end;

  TCFResumoDia = class(TSintegraObject, ICFResumoDia)
  private
    fCodProduto: string;
    fQuantAcumulada: Extended;
    fValorAcumulado: Currency;
    fBaseCalcICMS: Currency;
    fSitTributaria: string;
    function GetSitTributaria: string;
    function GetBaseCalcICMS: Currency;
    function GetCodProduto: string;
    function GetQuantAcumulada: Extended;
    function GetValorAcumulado: Currency;
    function GetValorICMS: Currency;
    procedure SetSitTributaria(const Valor: string);
    procedure SetBaseCalcICMS(const Valor: Currency);
    procedure setCodProduto(const Valor: string);
    procedure SetQuantAcumulada(const Valor: Extended);
    procedure SetValorAcumulado(const Valor: Currency);
  public
    constructor Create;
  published
    property CodProduto: string read GetCodProduto write setCodProduto;
    property QuantAcumulada: Extended read GetQuantAcumulada write SetQuantAcumulada;
    property ValorAcumulado: Currency read GetValorAcumulado write SetValorAcumulado;
    property BaseCalcICMS: Currency read GetBaseCalcICMS write SetBaseCalcICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorICMS: Currency read GetValorICMS;
  end;

  TCFResumoDiaLista = class(TInterfaceList, ICFResumoDiaLista)
  private
    function GetItem(Index: Integer): ICFResumoDia;
    procedure SetItem(Index: Integer; const Value: ICFResumoDia);
  public
    function New: ICFResumoDia;
    function GetTotalAcumulado: Currency;
    property Items[Index: Integer]: ICFResumoDia read GetItem write SetItem;
    property TotalAcumulado: Currency read GetTotalAcumulado;
  end;

  TCFICMS = class(TSintegraObject, ICFICMS)
  private
    fSitTributaria: string;
    fValorAcumulado: Currency;
    function GetSitTributaria: string;
    procedure SetSitTributaria(const Valor: string);
    function GetValorAcumulado: Currency;
    procedure SetValorAcumulado(const Valor: Currency);
  published
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorAcumulado: Currency read GetValorAcumulado write SetValorAcumulado;
  end;

  TCFICMSLista = class(TInterfaceList, ICFICMSLista)
  private
    function GetItem(Index: Integer): ICFICMS;
    procedure SetItem(Index: Integer; const Value: ICFICMS);
    function Total: Currency;
  public
    function New: ICFICMS;
    property Items[Index: Integer]: ICFICMS read GetItem write SetItem;
  end;

  TCFItem = class(TSintegraObject, ICFItem)
  private
    fCOOCupom: Integer;
    fNumItem: Integer;
    fCodProduto: string;
    fQuantidade: Extended;
    fValorUnitario: Currency;
    fBaseICMS: Currency;
    fSitTributaria: string;
    function GetBaseICMS: Currency;
    function GetCodProduto: string;
    function GetCOOCupom: Integer;
    function GetNumItem: Integer;
    function GetQuantidade: Extended;
    function GetSitTributaria: string;
    function GetValorICMS: Currency;
    function GetValorUnitario: Currency;
    procedure SetCodProduto(const Valor: string);
    procedure SetCOOCupom(const Valor: Integer);
    procedure SetNumItem(const Valor: Integer);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetSitTributaria(const Valor: string);
    procedure SetValorUnitario(const Valor: Currency);
    procedure SetBaseICMS(const Valor: Currency);
  published
    property COOCupom: Integer read GetCOOCupom write SetCOOCupom;
    property NumItem: Integer read GetNumItem write SetNumItem;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorUnitario: Currency read GetValorUnitario write SetValorUnitario;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property SitTributaria: string read GetSitTributaria write SetSitTributaria;
    property ValorICMS: Currency read GetValorICMS;
  end;

  TCFItemLista = class(TInterfaceList, ICFItemLista)
  private
    function GetItem(Index: Integer): ICFItem;
    procedure SetItem(Index: Integer; const Value: ICFItem);
  public
    function New: ICFItem;
    property Items[Index: Integer]: ICFItem read GetItem write SetItem;
  end;

  TCFReducao = class(TSintegraObject, ICFReducao)
  private
    fDataEmissao: TDateTime;
    fNumSerieEquip: string;
    fNumSequencial: Integer;
    fModDocFiscal: TModDocumento;
    fCOOInicial: Integer;
    fCOOFinal: Integer;
    fContReducaoZ: Integer;
    fContReinicioOper: Integer;
    fVendaBruta: Currency;
    fGTFinal: Currency;
    fCFICMS: ICFICMSLista;
    fResumoDia: ICFResumoDiaLista;
    fCFItem: ICFItemLista;
    function GetDataEmissao: TDateTime;
    procedure SetDataEmissao(const Valor: TDatetime);
    function GetNumSerieEquip: string;
    procedure SetNumSerieEquip(const Valor: string);
    function GetNumSequencial: Integer;
    procedure SetNumSequencial(const Valor: Integer);
    function GetModDocFiscal: TModDocumento;
    procedure SetModDocFiscal(const Valor: TModDocumento);
    function GetCOOInicial: Integer;
    procedure SetCOOInicial(const Valor: Integer);
    function GetCOOFinal: Integer;
    procedure SetCOOFinal(const Valor: Integer);
    function GetContReducaoZ: Integer;
    procedure SetContReducaoZ(const Valor: Integer);
    function GetContReinicioOper: Integer;
    procedure SetContReinicioOper(const Valor: Integer);
    function GetVendaBruta: Currency;
    procedure SetVendaBruta(const Valor: Currency);
    function GetGTFinal: Currency;
    procedure SetGTFinal(const Valor: Currency);
    function GetCFICMS: ICFICMSLista;
    procedure SetCFICMS(const Valor: ICFICMSLista);
    function GetResumoDia: ICFResumoDiaLista;
    procedure SetResumoDia(const Valor: ICFResumoDiaLista);
    function GetCFItem: ICFItemLista;
    procedure SetCFItem(const Valor: ICFItemLista);
  public
    constructor Create;
  published
    property DataEmissao: TDateTime read GetDataEmissao write SetDataEmissao;
    property NumSerieEquip: string read GetNumSerieEquip write SetNumSerieEquip;
    property NumSequencial: Integer read GetNumSequencial write SetNumSequencial default 0;
    property ModDocFiscal: TModDocumento read GetModDocFiscal write SetModDocFiscal;
    property COOInicial: Integer read GetCOOInicial write SetCOOInicial default 0;
    property COOFinal: Integer read GetCOOFinal write SetCOOFinal default 0;
    property ContReducaoZ: Integer read GetContReducaoZ write SetContReducaoZ default 0;
    property ContReinicioOper: Integer read GetContReinicioOper write SetContReinicioOper default 0;
    property VendaBruta: Currency read GetVendaBruta write SetVendaBruta;
    property GTFinal: Currency read GetGTFinal write SetGTFinal;
    property CFICMS: ICFICMSLista read GetCFICMS write SetCFICMS;
    property CFResumoDia: ICFResumoDiaLista read GetResumoDia write SetResumoDia;
    property CFItem: ICFItemLista read GetCFItem write SetCFItem;
  end;

  TCFReducaoLista = class(TInterfaceList, ICFReducaoLista)
  private
    function GetItem(Index: Integer): ICFReducao;
    procedure SetItem(Index: Integer; const Value: ICFReducao);
  public
    function New: ICFReducao;
    property Items[Index: Integer]: ICFReducao read GetItem write SetItem;
  end;

  TNFC = class(TSintegraObject, INFC)
  private
    fDataEmissao: TDateTime;
    fModeloDoc: Integer;
    fSerie: string;
    fSubSerie: string;
    fNumInicial: Integer;
    fNumFinal: Integer;
    fValorTotal: Currency;
    fBaseICMS: Currency;
    fIsentasNTrib: Currency;
    fOutras: Currency;
    fAliquota: Currency;
    function GetDataEmissao: TDateTime;
    procedure SetDataEmissao(const Valor: TDateTime);
    function GetModeloDoc: Integer;
    procedure SetModeloDoc(const Valor: Integer);
    function GetSerie: string;
    procedure SetSerie(const Valor: string);
    function GetSubSerie: string;
    procedure SetSubSerie(const Valor: string);
    function GetNumInicial: Integer;
    procedure SetNumInicial(const Valor: Integer);
    function GetNumFinal: Integer;
    procedure SetNumFinal(const Valor: Integer);
    function GetValorTotal: Currency;
    procedure SetValorTotal(const Valor: Currency);
    function GetBaseICMS: Currency;
    procedure SetBaseICMS(const Valor: Currency);
    function GetIsentasNTrib: Currency;
    procedure SetIsentasNTrib(const Valor: Currency);
    function GetOutras: Currency;
    procedure SetOutras(const Valor: Currency);
    function GetAliquota: Currency;
    procedure SetAliquota(const Valor: Currency);
    function GetValorICMS: Currency;
  public
    constructor Create;
  published
    property DataEmissao: TDateTime read GetDataEmissao write SetDataEmissao;
    property ModeloDoc: Integer read GetModeloDoc write SetModeloDoc default 0;
    property Serie: string read GetSerie write SetSerie;
    property SubSerie: string read GetSubSerie write SetSubSerie;
    property NumInicial: Integer read GetNumInicial write SetNumInicial default 0;
    property NumFinal: Integer read GetNumFinal write SetNumFinal default 0;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
    property BaseICMS: Currency read GetBaseICMS write SetBaseICMS;
    property IsentasNTrib: Currency read GetIsentasNTrib write SetIsentasNTrib;
    property Outras: Currency read GetOutras write SetOutras;
    property Aliquota: Currency read GetAliquota write SetAliquota;
    property ValorICMS: currency read GetValorICMS;
  end;

  TNFCLista = class(TInterfaceList, INFCLista)
  private
    function GetItem(Index: Integer): INFC;
    procedure SetItem(Index: Integer; const Value: INFC);
  public
    function New: INFC;
    property Items[Index: Integer]: INFC read GetItem write SetItem;
  end;

  TNFCResumoMes = class(TSintegraObject, INFCResumoMes)
  private
    fMes: SmallInt;
    fAno: SmallInt;
    fCodProduto: string;
    fQuantidade: Extended;
    fValorBrutoProduto: Currency;
    fBaseCalcICMS: Currency;
    fAliquota: Currency;
    function GetMes: SmallInt;
    function GetAno: SmallInt;
    function GetCodProduto: string;
    function GetQuantidade: Extended;
    function GetValorBrutoProduto: Currency;
    function GetBaseCalcICMS: Currency;
    function GetAliquota: Currency;
    procedure SetMes(const Valor: SmallInt);
    procedure SetAno(const Valor: SmallInt);
    procedure SetCodProduto(const Valor: string);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetValorBrutoProduto(const Valor: Currency);
    procedure SetBaseCalcICMS(const Valor: Currency);
    procedure SetAliquota(const Valor: Currency);
  published
    property Mes: SmallInt read GetMes write SetMes default 0;
    property Ano: SmallInt read GetAno write SetAno default 0;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorBrutoProduto: Currency read GetValorBrutoProduto write SetValorBrutoProduto;
    property BaseCalcICMS: Currency read GetBaseCalcICMS write SetBaseCalcICMS;
    property Aliquota: Currency read GetAliquota write SetAliquota;
  end;

  TNFCResumoMesLista = class(TInterfaceList, INFCResumoMesLista)
  private
    function GetItem(Index: Integer): INFCResumoMes;
    procedure SetItem(Index: Integer; const Value: INFCResumoMes);
  public
    function New: INFCResumoMes;
    property Items[Index: Integer]: INFCResumoMes read GetItem write SetItem;
  end;

  TProduto = class(TSintegraObject, IProduto)
  private
    fValidadeInicial: TDateTime;
    fValidadeFinal: TDateTime;
    fCodProduto: string;
    fCodNCM: string;
    fDescricao: string;
    fUnidade: string;
    fAliquotaIPI: Currency;
    fAliquotaICMS: Currency;
    fReducaoBaseCalc: Currency;
    fBaseICMSST: Currency;
    function GetAliquotaICMS: Currency;
    function GetAliquotaIPI: Currency;
    function GetBaseICMSST: Currency;
    function GetCodNCM: string;
    function GetCodProduto: string;
    function GetDescricao: string;
    function GetReducaoBaseCalc: Currency;
    function GetUnidade: string;
    function GetValidadeFinal: TDateTime;
    function GetValidadeInicial: TDateTime;
    procedure SetAliquotaICMS(const Valor: Currency);
    procedure SetAliquotaIPI(const Valor: Currency);
    procedure SetBaseICMSST(const Valor: Currency);
    procedure SetCodNCM(const Valor: string);
    procedure SetCodProduto(const Valor: string);
    procedure SetDescricao(const Valor: string);
    procedure SetReducaoBaseCalc(const Valor: Currency);
    procedure SetUnidade(const Valor: string);
    procedure SetValidadeFinal(const Valor: TDateTime);
    procedure SetValidadeInicial(const Valor: TDateTime);
  published
    property ValidadeInicial: TDateTime read GetValidadeInicial write SetValidadeInicial;
    property ValidadeFinal: TDateTime read GetValidadeFinal write SetValidadeFinal;
    property CodProduto: string read GetCodProduto write SetCodProduto;
    property CodNCM: string read GetCodNCM write SetCodNCM;
    property Descricao: string read GetDescricao write SetDescricao;
    property Unidade: string read GetUnidade write SetUnidade;
    property AliquotaIPI: Currency read GetAliquotaIPI write SetAliquotaIPI;
    property AliquotaICMS: Currency read GetAliquotaICMS write SetAliquotaICMS;
    property ReducaoBaseCalc: Currency read GetReducaoBaseCalc write SetReducaoBaseCalc;
    property BaseICMSST: Currency read GetBaseICMSST write SetBaseICMSST;
  end;

  TProdutoLista = class(TInterfaceList, IProdutoLista)
  private
    function GetItem(Index: Integer): IProduto;
    procedure SetItem(Index: Integer; const Value: IProduto);
  public
    function New: IProduto;
    property Items[Index: Integer]: IProduto read GetItem write SetItem;
  end;

  TInventario = class(TSintegraObject, IInventario)
  private
    fTipoPosse: TTipoPosse;
    fCNPJ: string;
    fInscEstadual: string;
    fUF: string;
    fDataInventario: TDateTime;
    fCodProduto: string;
    fQuantidade: Extended;
    fValorTotal: Currency;
    function GetCNPJ: string;
    function GetCodPRoduto: string;
    function GetDataInventario: TDateTime;
    function GetInscEstadual: string;
    function GetQuantidade: Extended;
    function GetTipoPosse: TTipoPosse;
    function GetUF: string;
    function GetValorTotal: Currency;
    procedure SetCNPJ(const Valor: string);
    procedure SetCodPRoduto(const Valor: string);
    procedure SetDataInventario(const Valor: TDateTime);
    procedure SetInscEstadual(const Valor: string);
    procedure SetQuantidade(const Valor: Extended);
    procedure SetTipoPosse(const Valor: TTipoPosse);
    procedure SetUF(const Valor: string);
    procedure SetValorTotal(const Valor: Currency);
  published
    property TipoPosse: TTipoPosse read GetTipoPosse write SetTipoPosse default tpo1;
    property CNPJ: string read GetCNPJ write SetCNPJ;
    property InscEstadual: string read GetInscEstadual write SetInscEstadual;
    property UF: string read GetUF write SetUF;
    property DataInventario: TDateTime read GetDataInventario write SetDataInventario;
    property CodProduto: string read GetCodPRoduto write SetCodPRoduto;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property ValorTotal: Currency read GetValorTotal write SetValorTotal;
  end;

  TInventarioLista = class(TInterfaceList, IInventarioLista)
  private
    function GetItem(Index: Integer): IInventario;
    procedure SetItem(Index: Integer; const Value: IInventario);
  public
    function New: IInventario;
    property Items[Index: Integer]: IInventario read GetItem write SetItem;
  end;

{ TSintegraObject }

function TSintegraObject.RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    { todo: advertencia para valores mais longos do que o esperado }
    Result := Copy(Str, 1, Tamanho)
  else
    Result := Str + StringOfChar(Caracter, Tamanho - Length(Str));

  if Debug then
    Result := Result + '|';
end;

function TSintegraObject.LFill(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    { todo: advertencia para valores mais longos do que o esperado }
    Result := Copy(Str, 1, Tamanho)
  else
    Result := StringOfChar(Caracter, Tamanho - length(Str)) + Str;

  if Debug then
    Result := Result + '|';
end;

function TSintegraObject.LFill(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string;
var
  i, p: Integer;
begin
  p := 1;

  for i := 1 to Decimais do
    p := p * 10;

  Result := LFill(Trunc(Valor * p), Tamanho, Caracter);
end;

function TSintegraObject.LFill(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string;
begin
  Result := LFill(IntToStr(Valor), Tamanho, Caracter);
end;

function TSintegraObject.LFill(Valor: TDateTime): string;
begin
  Result := FormatDateTime('yyyymmdd', Valor);

  if Debug then
    Result := Result + '|';
end;

function TSintegraObject.RetornaNatureza(aNaturezaOper: TCodIdentificaOper): string;
begin
  case aNaturezaOper of
    opeInterestSubTributaria: Result := '1';
    opeInterestaduais: Result := '2';
    opeTotal: Result := '3';
  end;
end;

function TSintegraObject.RetornaFinalidade(aFinalidade: TCodFinalidade): string;
begin
  case aFinalidade of
    finNormal: Result := '1';
    finRetificacaoTotal: Result := '2';
    finRetificacaoAditiva: Result := '3';
    finDesfazimento: Result := '5';
  end;
end;

function TSintegraObject.RetornaModDocumento(aTipoDocumento: TModDocumento): string;
begin
  case aTipoDocumento of
    modMaqRegistradora: Result := '2B';
    modPDV: Result := '2C';
    modECF: Result := '2D';
  end;
end;

function TSintegraObject.RetornaTipoEmitente(aTipoEmitente: TTipoEmitente): string;
begin
  case aTipoEmitente of
    tpeProprio: Result := 'P';
    tpeTerceiros: Result := 'T';
  end;
end;

function TSintegraObject.RetornaSituacao(aSituacao: TSituacao): string;
begin
  case aSituacao of
    nfNormal: Result := 'N';
    nfCancelado: Result := 'S';
    nfExtNormal: Result := 'E';
    nfExtCancelado: Result := 'X';
  end;
end;

function TSintegraObject.RetornaFrete(aModFrete: TModalidadeFrete): string;
begin
  case aModFrete of
    mdfCIF: Result := '1';
    mdfFOB: Result := '2';
    mdfOUTROS: Result := '0';
  end;
end;

function TSintegraObject.StrToNumero(aValor: string; aDecimais: Integer): Extended;
var
  i, iInicio, iFim: Integer;
  str: string;
begin
  str := '0';
  if Trim(aValor) <> '' then
  begin
    for i := 0 to Length(aValor) do
      if aValor[i] in ['0'..'9', '-'] then
        str := str + avalor[i];

    if (Trim(str) <> '') and (Trim(str) <> '-') then
    begin
      iInicio := Length(str) - aDecimais;
      iFim := Length(str);
      str := copy(str, 0, iInicio) + DecimalSeparator + Copy(str, iInicio + 1, iFim);
    end;
  end;

  Result := StrTofloat(str);
end;

function TSintegraObject.VerificaSitTributaria(aSitTributaria: string): Boolean;
var
  aAliquota: Currency;
  aValida: Boolean;
begin
  aAliquota := StrToNumero(aSitTributaria, 2);

  if aAliquota = 0 then
  begin
    if aSitTributaria = 'F' then
      aValida := True
    else if aSitTributaria = 'I' then
      aValida := True
    else if aSitTributaria = 'N' then
      aValida := True
    else if aSitTributaria = 'CANC' then
      aValida := True
    else if aSitTributaria = 'DESC' then
      aValida := True
    else if aSitTributaria = 'ISS' then
      aValida := True
    else
      aValida := False;
  end
  else
    aValida := True;

  Result := aValida;
end;

function TSintegraObject.VerificaCST(aCST: string): Boolean;
const
  ListaCST: array[0..32] of string = (
    '000', '010', '020', '030', '040', '041', '050', '051',
    '060', '070', '090', '100', '110', '120', '130', '140',
    '141', '150', '151', '160', '170', '190', '200', '210',
    '220', '230', '240', '241', '250', '251', '260', '270',
    '290');
var
  i: integer;
  Encontrado: Boolean;
begin
  i := 0;
  Encontrado := False;
  while (not (Encontrado)) and (i <= 32) do
  begin
    Encontrado := ListaCST[i] = aCST;
    inc(i);
  end;

  Result := Encontrado;
end;

function TSintegraObject.RetornaCodPosse(TipoPosse: TTipoPosse): string;
begin
  case TipoPosse of
    tpo1: Result := '1';
    tpo2: Result := '2';
    tpo3: Result := '3';
  end;
end;

function TSintegraObject.RetornaSoNumero(aNumero: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(aNumero) do
  begin
    if aNumero[i] in ['0'..'9'] then
      Result := Result + aNumero[i];
  end;
end;

function TSintegraObject.RetiraMascara(aString: String): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(aString) do
  begin
    if UpCase(aString[i]) in ['0'..'9', 'A'..'Z'] then
      Result := Result + aString[i];
  end;
end;

{ TEmpresa }

function TEmpresa.GetRazaoSocial: string;
begin
  Result := FRazaoSocial;
end;

procedure TEmpresa.SetRazaoSocial(const Valor: string);
begin
  FRazaoSocial := Valor;
end;

function TEmpresa.GetCNPJ: string;
begin
  Result := FCNPJ;
end;

procedure TEmpresa.SetCNPJ(const Valor: string);
begin
  FCNPJ := RetornaSoNumero(Valor);
end;

function TEmpresa.GetInscEstadual: string;
begin
  Result := FInscEstadual;
end;

procedure TEmpresa.SetInscEstadual(const Valor: string);
begin
  FInscEstadual := RetiraMascara(Valor);
end;

function TEmpresa.GetMunicipio: string;
begin
  Result := FMunicipio;
end;

procedure TEmpresa.SetMunicipio(const Valor: string);
begin
  FMunicipio := Valor;
end;

function TEmpresa.GetUF: string;
begin
  Result := FUF;
end;

procedure TEmpresa.SetUF(const Valor: string);
begin
  FUF := UpperCase(Valor);
end;

function TEmpresa.GetFax: string;
begin
  Result := FFax;
end;

procedure TEmpresa.SetFax(const Valor: string);
begin
  FFax := Valor;
end;

function TEmpresa.GetResponsavel: string;
begin
  Result := FResponsavel;
end;

procedure TEmpresa.SetResponsavel(const Valor: string);
begin
  FResponsavel := Valor;
end;

function TEmpresa.GetEndereco: string;
begin
  Result := FEndereco;
end;

procedure TEmpresa.SetEndereco(const Valor: string);
begin
  FEndereco := Valor;
end;

function TEmpresa.GetComplemento: string;
begin
  Result := FComplemento;
end;

procedure TEmpresa.SetComplemento(const Valor: string);
begin
  FComplemento := Valor;
end;

function TEmpresa.GetNumero: Integer;
begin
  Result := FNumero;
end;

procedure TEmpresa.SetNumero(const Valor: Integer);
begin
  FNumero := Valor;
end;

function TEmpresa.GetBairro: string;
begin
  Result := FBairro;
end;

procedure TEmpresa.SetBairro(const Valor: string);
begin
  FBairro := Valor;
end;

function TEmpresa.GetCEP: string;
begin
  Result := FCEP;
end;

procedure TEmpresa.SetCEP(const Valor: string);
begin
  FCEP := Valor;
end;

function TEmpresa.GetFone: string;
begin
  Result := FFone;
end;

procedure TEmpresa.SetFone(const Valor: string);
begin
  FFone := RetornaSoNumero(Valor);
end;

function TEmpresa.GetContribuinteIPI: Boolean;
begin
  Result := FContribuinteIPI;
end;

procedure TEmpresa.SetContribuinteIPI(const Valor: Boolean);
begin
  FContribuinteIPI := Valor
end;

function TEmpresa.GetSubstitutoTributario: Boolean;
begin
  Result := FSubstitutoTributario
end;

procedure TEmpresa.SetSubstitutoTributario(const Valor: Boolean);
begin
  FSubstitutoTributario := Valor;
end;

{ TSintegra }

constructor TSintegra.Create;
begin
  inherited Create;

  FDataInicial := 0;
  FDataFinal := 0;

  FEmpresa := TEmpresa.Create;
  FNF := TNFLista.Create;
  FCFReducao := TCFReducaoLista.Create;
  FCFResumoMes := TCFResumoMesLista.Create;
  FNFC := TNFCLista.Create;
  FNFCResumoMes := TNFCResumoMesLista.Create;
  FProduto := TProdutoLista.Create;
  FGuiaGNRE := TGNRELista.Create;
  FInventario := TInventarioLista.Create;
end;

function TSintegra.GetOnErro: TErrorEvent;
begin
  Result := FOnErro;
end;

procedure TSintegra.SetOnErro(const Value: TErrorEvent);
begin
  FOnErro := Value;
end;

procedure TSintegra.GerarErro(MensagemErro: String);
begin
  if Assigned(FOnErro) then
    FOnErro(MensagemErro);
end;

procedure TSintegra.Check(Condicao: Boolean; const Msg: string);
begin
  if not Condicao then
    GerarErro(Msg);
end;

procedure TSintegra.Check(Condicao: Boolean; Msg: string; Fmt: array of const);
begin
  Check(Condicao, Format(Msg, Fmt));
end;

procedure TSintegra.Check(const StrNaoNula, Msg: string);
begin
  Check(Trim(StrNaoNula) <> '', Msg);
end;

procedure TSintegra.Check(const StrNaoNula, Msg: string; Fmt: array of const);
begin
  Check(StrNaoNula, Format(Msg, Fmt));
end;

procedure TSintegra.Check(Valor, Minimo, Maximo: Double; const Msg: string);
begin
  Check((Valor >= Minimo) and (Valor <= Maximo), Msg);
end;

procedure TSintegra.Check(Valor, Minimo, Maximo: Double; const Msg: string; Fmt: array of const);
begin
  Check(Valor, Minimo, Maximo, Format(Msg, Fmt));
end;

function TSintegra.GetVersao: string;
begin
  Result := '3.0a';
end;

function TSintegra.GetDataInicial: TDateTime;
begin
  Result := fDataInicial;
end;

procedure TSintegra.SetDataInicial(const Valor: TDateTime);
begin
  fDataInicial := Valor;
end;

function TSintegra.GetDataFinal: TDateTime;
begin
  Result := fDataFinal;
end;

procedure TSintegra.SetDataFinal(const Valor: TDateTime);
begin
  fDataFinal := Valor;
end;

function TSintegra.GetNaturezaOperacao: TCodIdentificaOper;
begin
  Result := fNaturezaOperacao;
end;

procedure TSintegra.SetNaturezaOperacao(const Valor: TCodIdentificaOper);
begin
  fNaturezaOperacao := Valor;
end;

function TSintegra.GetFinalidade: TCodFinalidade;
begin
  Result := fFinalidade;
end;

procedure TSintegra.SetFinalidade(const Valor: TCodFinalidade);
begin
  fFinalidade := Valor;
end;

function TSintegra.GetEmpresa: IEmpresa;
begin
  Result := FEmpresa;
end;

procedure TSintegra.SetEmpresa(const Valor: IEmpresa);
begin
  FEmpresa := Valor;
end;

function TSintegra.GetCFReducao: ICFReducaoLista;
begin
  Result := fCFReducao;
end;

procedure TSintegra.SetCFReducao(const Valor: ICFReducaoLista);
begin
  fCFReducao := Valor;
end;

function TSintegra.GetProduto: IProdutoLista;
begin
  Result := fProduto;
end;

procedure TSintegra.SetProduto(const Valor: IProdutoLista);
begin
  fProduto := Valor;
end;

function TSintegra.GetCFResumoMes: ICFResumoMesLista;
begin
  Result := fCFResumoMes;
end;

procedure TSintegra.SetCFResumoMes(const Valor: ICFResumoMesLista);
begin
  fCFResumoMes := Valor;
end;

function TSintegra.GEtNFC: INFCLista;
begin
  Result := fNFC;
end;

procedure TSintegra.SetNFC(const Valor: INFCLista);
begin
  fNFC := Valor;
end;

function TSintegra.GetNFCResumoMes: INFCResumoMesLista;
begin
  Result := fNFCResumoMes;
end;

procedure TSintegra.SetNFCResumoMes(const Valor: INFCResumoMesLista);
begin
  fNFCREsumoMes := Valor;
end;

function TSintegra.VerificaProduto(aProduto: string): Boolean;
var
  i: integer;
  Encontrado: Boolean;
begin
  i := 0;
  Encontrado := False;

  with Produto do
  begin
    while (Encontrado = False) and (i < Count) do
    begin
      Encontrado := Items[i].CodProduto = aProduto;
      inc(i, 1);
    end;
  end;

  Result := Encontrado;
end;

function TSintegra.GetNF: INFLista;
begin
  Result := fNF;
end;

procedure TSintegra.SetNF(const Valor: INFLista);
begin
  fNF := Valor
end;

function TSintegra.GetGNRE: IGNRELista;
begin
  Result := fGuiaGNRE;
end;

procedure TSintegra.SetGNRE(const Valor: IGNRELista);
begin
  fGuiaGNRE := Valor
end;

function TSintegra.GetInventario: IInventarioLista;
begin
  Result := fInventario;
end;

procedure TSintegra.SetInventario(const Valor: IInventarioLista);
begin
  fInventario := Valor
end;

procedure TSintegra.LimparRegistros;
begin
  NF.Clear;
  CFReducao.Clear;
  CFResumoMes.Clear;
  NFC.Clear;
  NFCResumoMes.Clear;
  Produto.Clear;
end;

function TSintegra.GerarArquivo(aArquivo: string): Boolean;
var
  F: TextFile;
begin
  Result := True;

  if Trim(aArquivo) = '' then
    raise ESintegraException.Create('Caminho/Nome do arquivo não informado!');

  Check(DataInicial > 0, 'Geração: Informe a Data Inicial do arquivo!');
  Check(Datafinal > 0, 'Geração: Informe a Data final do arquivo!');
  Check(DayOf(DataInicial) = 1, 'Geração: Data inicial deve corresponder ao primeiro dia do mês informado!');
  Check(DateOf(EndOfTheMonth(DataFinal)) = DateOf(Datafinal), 'Geração: Data final deve corresponder ao último dia do mês informado!');
  Check(YearOf(DataInicial) > 1993, 'Geração: O ano da data inicial do arquivo deve ser superior a 1993!');
  Check(DataFinal >= DataInicial, 'Data final deve se maior que a Data inicial!');
  Check(Datafinal <= Date, 'Geração: Data Final "%s" não pode ser superior a Data Atual "%s"!', [DateToStr(Datafinal), DateToStr(Date)]);
  Check(Empresa.RazaoSocial, 'Geração: Não informado: Razão Social');
  Check(Empresa.Municipio, 'Geração: Não informado: Municipio');
  Check(Empresa.UF, 'Geração: Não informado: Estado (UF)');
  Check(Empresa.CNPJ, 'Geração: Não informado: CNPJ/CPF');
  Check(Empresa.InscEstadual, 'Geração: Não informado: Inscrição Estadual');
  Check(Empresa.Fone, 'Geração: Não informado: Telefone para contado');
  Check(VerificaCEP(Empresa.CEP, Empresa.UF), 'Geração: CEP Informado não é válido!');
  Check(VerificaCPF_CNPJ(Empresa.CNPJ), 'Geração: CNPJ informado inválido');
  Check(VerificaInscEstadual(Empresa.InscEstadual, Empresa.UF), 'Geração: Inscrição Estadual informada inválida!');

  try
    AssignFile(F, aArquivo);
    Rewrite(F);

    { Geração do cabeçalho do arquivo, duas primeiras linhas com dados do contribuinte }
    Write(F, Registro10e11);

    { Geração dos registros referentes as Notas fiscais }
    if NF.Count > 0 then
      Write(F, Registro50);

    { Geração dos registros referentes ao cupom fiscal, maquina registradora, PDV }
    if CFReducao.Count > 0 then
      Write(F, Registro60);

    { Geração dos registros de Conhecimento de Transporte }
    if NF.Count > 0 then
      Write(F, Registro70);

    { Geração dos registros dos dados do Conhecimento de Transporte }
    if NF.Count > 0 then
      Write(F, Registro71);

    { Geração dos registros de inventário }
    if Inventario.Count > 0 then
      Write(F, Registro74);

    { Geração dos registros de produtos }
    if Produto.Count > 0 then
      Write(F, Registro75);

    { Geração do Fim do arquivo }
    Write(F, Registro90);

    CloseFile(F);
  except
    on E: Exception do
    begin
      CloseFile(F);
      raise ESintegraException.Create(E.Message);
    end;
  end;
end;

function TSintegra.Registro10e11: string;
var
  aComplemento: string;
begin
  with Empresa do
  begin
    Check(VerificaCPF_CNPJ(CNPJ), 'Empresa: CPF/CNPJ "%s" digitado inválido!', [CNPJ]);
    Check(VerificaInscEstadual(InscEstadual, UF), 'Empresa: Inscrição Estadual "%s" inválida!', [InscEstadual]);
    Check(VerificaUF(UF), 'Empresa: UF digitado inválido!');
    Check(Length(Fax) <= 10, 'Empresa: Fax digitado inválido!');
    Check(Numero, 0, 99999, 'Empresa: Número digitado inválido!');
    Check(VerificaCEP(CEP, UF), 'Empresa: CEP "%s" digitado inválido!', [CEP]);

    if (Trim(Complemento) = '') and (Numero = 0) then
      aComplemento := 'SEM NÚMERO'
    else
      acomplemento := Complemento;

    Result :=
      '10' +
      LFill(CNPJ, 14) +
      RFill(InscEstadual, 14) +
      RFill(RazaoSocial, 35) +
      RFill(Municipio, 30) +
      UF +
      LFill(Fax, 10) +
      LFill(DataInicial) +
      LFill(DataFinal) +
      '3' +
      RetornaNatureza(NatOperacao) +
      RetornaFinalidade(Finalidade) + #13#10 +
      '11' +
      RFill(Endereco, 34) +
      LFill(Numero, 5) +
      RFill(aComplemento, 22) +
      RFill(Bairro, 15) +
      LFill(CEP, 8) +
      RFill(Responsavel, 28) +
      LFill(Fone, 12) +
      #13#10;
  end;
end;

function TSintegra.Registro50: string;
var
  aRegistro, aNFIPI, aNFST, aNFItem, aGNRE, aInscricao: string;
  i, iNF, iAliq: Integer;
begin

  if Debug then
  begin
    aRegistro := '50CNPJ---------- IE------------ Data---- UF Md Ser Numero CFOP E Valor Total-- Base ICMS---- Valor ICMS--- Isentas------ Outras------- Aliq S'#13#10;
    aNFIPI := '51CNPJ---------- IE------------ Data---- UF Ser Numero CFOP Valor ------- Valor IPI---- Isentas------ Outras------- Vazio--------------- S'#13#10;
    aNFST := '';
    aNFItem := '54CNPJ---------- Md Ser Numero CFOP CST Itm CodProduto---- Quantidade- ValorProduto Desconto---- BaseICMS---- BaseICMSST-- IPI--------- Aliq'#13#10;
    aGNRE := '';
  end
  else
  begin
    aRegistro := '';
    aNFIPI := '';
    aNFST := '';
    aNFItem := '';
    aGNRE := '';
  end;

  for iNF := 0 to NF.Count - 1 do
  begin
    if NF[iNF].Modelo in kReg50 then
    begin
      with NF[iNF] do
      begin
        if Trim(InscEstadual) <> '' then
          aInscricao := InscEstadual
        else
          aInscricao := 'ISENTO';

        Check(Modelo > 0, 'NF: Modelo da Nota Fisca é obrigatório!');
        Check(VerificaUF(UF), 'NF: UF "%s" digitada inválida!', [UF]);
        Check(VerificaCPF_CNPJ(CNPJ), 'NF: CNPJ/CPF "%s" inválido!', [CNPJ]);
        Check(VerificaInscEstadual(aInscricao, UF), 'NF: Incr. Estadual "%s" Inválida para "%s"', [aInscricao, UF]);
        Check(Data, DataInicial, DataFinal, 'NF: Data "%s" não corresponde ao período informado "%s à %s"!', [DatetoStr(Data), DateToStr(DataInicial), DateToStr(DataFinal)]);
        Check(Numero, 1, 999999, 'NF: Número da Nota Fiscal inválido!');
        Check(NFICMS.Count > 0, 'NF: Informe as alíquotas para a Nota Fiscal "%d"', [Numero]);

        if NFICMS.Count > 0 then
        begin
          for iAliq := 0 to NFICMS.Count - 1 do
          begin
            Check(NFICMS[iAliq].Aliquota, 0, 99.99, 'NFItem: aliquota inválida!');
            Check(NFICMS[iAliq].CFOP <> 0, 'NF: CFOP é campo obrigatório!');
            Check(NFICMS[iAliq].ValorTotal > 0, 'NF: Valor Total para o CFOP/Aliquota é obrigatório!');
            Check(VerificaCFOP(NFICMS[iAliq].CFOP), 'NF: Código do CFOP "%d" digitado Inválido!', [NFICMS[iAliq].CFOP]);

            { verifica o CFOP }
            if IntToStr(NFICMS[iAliq].CFOP)[1] in ['1', '5'] then
              Check(Empresa.UF = UF, 'NF: Para CFOP''s começados em "1" ou "5" a UF deve ser igual ao do Informante!')
            else if IntToStr(NFICMS[iAliq].CFOP)[1] in ['2', '6'] then
              Check(Empresa.UF <> UF, 'NF: Para CFOP''s começados em "2" ou "6" a UF deve ser diferente da do Informante!')
            else
              Check(UF = 'EX', 'NF: Para CFOP''s começados em "3" ou "7" a UF deve ser "EX"!');

            aRegistro := aRegistro + '50' +
              LFill(CNPJ, 14) +
              RFill(aInscricao, 14) +
              LFill(Data) +
              RFill(UF) +
              LFill(Modelo, 2) +
              RFill(Serie, 3) +
              LFill(Numero, 6) +
              LFill(NFICMS[iAliq].CFOP, 4) +
              RFill(RetornaTipoEmitente(TipoEmitente), 1) +
              LFill(NFICMS[iAliq].ValorTotal, 13) +
              LFill(NFICMS[iAliq].BaseICMS, 13) +
              LFill(NFICMS[iAliq].ValorICMS, 13) +
              LFill(NFICMS[iAliq].IsentasNTribut, 13) +
              LFill(NFICMS[iAliq].Outras, 13) +
              LFill(NFICMS[iAliq].Aliquota, 4) +
              RetornaSituacao(Situacao)
              + #13#10;
          end;
        end
        else
        begin
          aRegistro := aRegistro + '50' +
            LFill(CNPJ, 14) +
            RFill(aInscricao, 14) +
            LFill(Data) +
            RFill(UF) +
            LFill(Modelo, 2) +
            RFill(Serie, 3) +
            LFill(Numero, 6) +
            LFill('1000', 4) +
            RFill(RetornaTipoEmitente(TipoEmitente), 1) +
            LFill(0, 13) +
            LFill(0, 13) +
            LFill(0, 13) +
            LFill(0, 13) +
            LFill(0, 13) +
            LFill(0, 4) +
            RetornaSituacao(Situacao)
            + #13#10;
        end;

        { Registro do itens (Produtos) da Nota Fiscal }
        for i := 0 to NFItem.Count - 1 do
        begin
          { Verifica se o produto esta cadastrado no registro 75 }
          Check(VerificaProduto(NFItem[i].CodProduto), 'Registro 54: Produto "%s" não consta no registro 75!', [NFItem[i].CodProduto]);
          Check(VerificaCST(NFItem[i].CST), 'NFItem: CST "%s" inválido!', [NFItem[i].CST]);
          Check(VerificaCFOP(NFItem[i].CFOP), 'NF: Código do CFOP "%d" digitado Inválido!', [NFItem[i].CFOP]);
          Check(NFItem[i].NumItem, 1, 999, 'NFItem: Número do Item inválido');

          aNFItem := aNFItem + '54' +
            LFill(CNPJ, 14) +
            LFill(Modelo, 2) +
            RFill(Serie, 3) +
            LFill(Numero, 6) +
            LFill(NFItem[i].CFOP, 4) +
            RFill(NFItem[i].CST, 3) +
            LFill(NFItem[i].NumItem, 3) +
            RFill(NFItem[i].CodProduto, 14) +
            LFill(NFItem[i].Quantidade, 11, 3) +
            LFill(NFItem[i].ValorProduto, 12) +
            LFill(NFItem[i].Desconto, 12) +
            LFill(NFItem[i].BaseICMS, 12) +
            LFill(NFItem[i].BaseICMSST, 12) +
            LFill(NFItem[i].IPI, 12) +
            LFill(NFItem[i].Aliquota, 4) +
            #13#10;
        end;

        if NFICMS.Count > 0 then
        begin
          if Frete <> 0 then
          begin
            aNFItem := aNFItem + '54' +
              LFill(CNPJ, 14) +
              LFill(Modelo, 2) +
              RFill(Serie, 3) +
              LFill(Numero, 6) +
              LFill(NFItem[0].CFOP, 4) +
              RFill('', 3) +
              RFill('991') +
              RFill('', 14) +
              LFill(0, 11) +
              LFill(Frete, 12) +
              LFill('', 52) +
              #13#10;
          end;

          if Seguro <> 0 then
          begin
            aNFItem := aNFItem + '54' +
              LFill(CNPJ, 14) +
              LFill(Modelo, 2) +
              RFill(Serie, 3) +
              LFill(Numero, 6) +
              LFill(NFItem[0].CFOP, 4) +
              RFill('', 3) +
              RFill('992') +
              RFill('', 14) +
              LFill(0, 11) +
              LFill(Seguro, 12) +
              LFill('', 52) +
              #13#10;
          end;

          if DespAcessoria <> 0 then
          begin
            aNFItem := aNFItem + '54' +
              LFill(CNPJ, 14) +
              LFill(Modelo, 2) +
              RFill(Serie, 3) +
              LFill(Numero, 6) +
              LFill(NFItem[0].CFOP, 4) +
              RFill('', 3) +
              RFill('999') +
              RFill('', 14) +
              LFill(0, 11) +
              LFill(DespAcessoria, 12) +
              LFill('', 52) +
              #13#10;
          end;
        end;

        { Registro 51 dos Contribuinte de IPI }
        for i := 0 to NFIPI.Count - 1 do
        begin
          Check(VerificaCFOP(NFIPI[i].CFOP), 'NFIPI: Código do CFOP "%d" digitado Inválido!', [NFIPI[i].CFOP]);

          aNFIPI := aNFIPI + '51' +
            LFill(CNPJ, 14) +
            RFill(aInscricao, 14) +
            LFill(Data) +
            RFill(UF) +
            RFill(Serie, 3) +
            LFill(Numero, 6) +
            LFill(NFIPI[i].CFOP, 4) +
            LFill(NFIPI[i].Valor, 13) +
            LFill(NFIPI[i].ValorIPI, 13) +
            LFill(NFIPI[i].IsentaNTrib, 13) +
            LFill(NFIPI[i].Outras, 13) +
            RFill('', 20) +
            RetornaSituacao(Situacao) +
            #13#10;
        end;

        { Registros 53 dos Substitutos Tributarios }
        for i := 0 to NFST.Count - 1 do
        begin
          Check(VerificaCFOP(NFST[i].CFOP), 'NFST: Código do CFOP "%s" digitado Inválido!', [NFST[i].CFOP]);

          aNFST := aNFST + '53' +
            LFill(CNPJ, 14) +
            RFill(aInscricao, 14) +
            LFill(Data) +
            RFill(UF) +
            LFill(Modelo, 2) +
            RFill(Serie, 3) +
            LFill(Numero, 6) +
            LFill(NFST[i].CFOP, 4) +
            RetornaTipoEmitente(TipoEmitente) +
            LFill(NFST[i].BaseCalcICMSST, 13) +
            LFill(NFST[i].ICMSRetido, 13) +
            LFill(NFST[i].DespAcessoria, 13) +
            RetornaSituacao(Situacao) +
            RFill('', 30) +
            #13#10;
        end;
      end;
    end;
  end;

  { Registro 55 para guias de recolhimento dos substitutos tributarios (GNRE) }
  for i := 0 to GNRE.Count - 1 do
  begin
    with GNRE[i] do
    begin
      Check(Agencia, 1, 9999, 'GNRE: Agência "%d" inválida!', [Agencia]);
      Check(MesRef, 1, 12, 'GNRE: Mês "%d" de referência inválido', [MesRef]);
      Check(AnoRef, 1, 9999, 'GNRE: Ano "%d" de referência inválido', [AnoRef]);
      Check(Banco, 1, 999, 'GNRE: Código do Banco "%d" inválido!', [Banco]);
      Check(VerificaUF(UFContribuinte), 'GNRE: UF "%s" Contribuinte inválida!', [UFContribuinte]);
      Check(VerificaUF(UFFavorecido), 'GNRE: UF "%s" Favorecido inválida!', [UFFavorecido]);

      Check(DataPagamento, DataInicial, DataFinal, 'GNRE: Data de pagamento "%s" fora do período informado "%s à %s"!',
        [DatetoStr(Valor), DatetoStr(DataInicial), DatetoStr(DataFinal)]);

      Check(Vencimento, DataInicial, DataFinal, 'GNRE: Data de vencimento "%s" fora do período informado "%s à %s"!',
        [DatetoStr(Valor), DatetoStr(DataInicial), DatetoStr(DataFinal)]);

      aGNRE := aGNRE + '55' +
        LFill(Empresa.CNPJ, 14) +
        RFill(Empresa.InscEstadual, 14) +
        LFill(DataPagamento) +
        RFill(UFContribuinte) +
        RFill(UFFavorecido) +
        LFill(Banco, 3) +
        LFill(Agencia, 4) +
        RFill(NumeroGNRE, 20) +
        LFill(Valor, 14) +
        LFill(Vencimento) +
        LFill(MesRef, 2) +
        LFill(AnoRef, 4) +
        RFill(NumConvenio, 30) +
        #13#10;
    end;
  end;

  Result := aRegistro + aNFIPI + aNFST + aNFItem + aGNRE;
end;

function TSintegra.Registro60: string;
var
  aRegistro: string;
  i, a: Integer;
  dDataResumo: TDateTime;
begin
  aRegistro := '';

  for i := 0 to CFReducao.Count - 1 do
    with CFReducao[i] do
    begin
      { Verifica se o valor informado no 60M e difrente da soma dos 60A }
      Check(DataEmissao > 0, 'CFReducao: Informe a Data de Emissão!');
      Check(DataEmissao, DataInicial, DataFinal, 'CFReducao: Data "%s" não corresponde ao período informado "%s à %s"!', [DatetoStr(DataEmissao), DateToStr(DataInicial), DateToStr(DataFinal)]);
      Check(NumSequencial, 1, 999, 'CFReducao: Número sequencial do caixa inválido!');
      Check(COOInicial, 1, 999999, 'CFReducao: COO Inicial inválido');
      Check(COOFinal, 0, 999999, 'Redução: COO Final inválido');
      Check(COOFinal >= COOInicial, 'CFReduçao: COO Final de dever ser maior ou igual ao Inicial!');
      Check(ContReducaoZ, 1, 999999, 'CFReducao: Contador de Redução Z inválido');
      Check(ContReinicioOper, 1, 999, 'CFReducao: Contador de Reinicio de Operacao inválido');
      Check(VendaBruta >= 0, 'CFReducao: Venda Bruta deve ser maior ou igual a 0(Zero)');
      Check(GTFinal >= 0, 'CFReducao: Grande Total final deve ser maior ou igual a 0(Zero)');
      Check(VendaBruta = CFICMS.Total, 'CFICMS: Valor acumulado difere da somas das aliquotas informadas!');

      { Verifica se o valor informado no 60M e difrente da soma dos 60D }
      { Somente quando for gerar o resumo diario 60D }
      if CFResumoDia.Count > 0 then
        Check(VendaBruta = CFResumoDia.TotalAcumulado, 'CFResumoDia: Valor acumulado difere da somas dos resumos informados!');

      aRegistro := aRegistro + '60M' +
        LFill(DataEmissao) +
        RFill(NumSerieEquip, 20) +
        LFill(NumSequencial, 3) +
        RetornaModDocumento(ModDocFiscal) +
        LFill(COOInicial, 6) +
        LFill(COOFinal, 6) +
        LFill(ContReducaoZ, 6) +
        LFill(ContReinicioOper, 3) +
        LFill(VendaBruta, 16) +
        LFill(GTFinal, 16) +
        RFill('', 37) + #13#10;

      { obrigatorio quando se gera o registro 60M }
      for a := 0 to CFICMS.Count - 1 do
      begin
        Check(CFICMS[a].ValorAcumulado >= 0, 'CFICMS: Valor Acumulado deve ser maior ou igual a 0(Zero)');
        Check(VerificaSitTributaria(CFICMS[a].SitTributaria), 'CFICMS: Situação Tributária inválida!');

        aRegistro := aRegistro + '60A' +
          LFill(DataEmissao) +
          RFill(NumSerieEquip, 20) +
          RFill(CFICMS[a].SitTributaria, 4) +
          LFill(CFICMS[a].ValorAcumulado, 12) +
          RFill('', 79) +
          #13#10;
      end;

      { Registro 60D Opcional (depende de legislacao da UF }
      if (Assigned(CFResumoDia)) and (CFResumoDia.Count > 0) then
      begin
        Check(Assigned(Produto) and (Produto.Count > 0), 'Produto: Nenhum Produto foi assinalado!');

        for a := 0 to CFResumoDia.Count - 1 do
        begin
          Check(CFResumoDia[a].CodProduto, 'CFResumoDia: Informe o Código do Produto!');
          Check(CFResumoDia[a].QuantAcumulada >= 0, 'CFResumoDia: Quantidade Acumulada deve ser maior ou igual a 0(Zero)');
          Check(CFResumoDia[a].ValorAcumulado >= 0, 'CFResumoDia: Valor Acumulado deve ser maior ou igual a 0(Zero)');
          Check(CFResumoDia[a].BaseCalcICMS >= 0, 'CFResumoDia: Base ICMS deve ser maior ou igual a 0(Zero)');
          Check(VerificaSitTributaria(CFResumoDia[a].SitTributaria), 'CFResumoDia: Situação Tributária inválida!');

          { Verifica a Base do ICMS, se tributado a base e obrigatoria }
          Check((StrToNumero(CFResumoDia[a].SitTributaria, 2) = 0) and (CFResumoDia[a].BaseCalcICMS <> 0),
            'CFResumoDia: Base de calculo do ICMS deve possuir um valor quando a aliquota for tributada!');

          { Verifica se o produto esta cadastrado no registro 75 }
          Check(VerificaProduto(CFResumoDia[a].CodProduto),
            'CFResumoDia: Produto "%s" não assinalado no Produto!', [CFResumoDia[a].CodProduto]);

          aRegistro := aRegistro + '60D' +
            LFill(DataEmissao) +
            RFill(NumSerieEquip, 20) +
            RFill(CFResumoDia[a].CodProduto, 14) +
            LFill(CFResumoDia[a].QuantAcumulada, 13, 3) +
            LFill(CFResumoDia[a].ValorAcumulado, 16) +
            LFill(CFResumoDia[a].BaseCalcICMS, 16) +
            RFill(CFResumoDia[a].SitTributaria, 4) +
            LFill(CFResumoDia[a].ValorICMS, 13) +
            RFill('', 19) +
            #13#10;
        end;
      end;

      { Registro 60I Opcional (depende de legislacao da UF }
      if (Assigned(CFItem)) and (CFItem.Count > 0) then
      begin
        Check(Assigned(Produto) and (Produto.Count > 0), 'Produto: Nenhum Produto foi assinalado!');

        for a := 0 to CFItem.Count - 1 do
        begin
          { Verifica se o produto esta cadastrado no registro 75 }
          Check(CFItem[a].COOCupom, 1, 999999, 'CFItem: COO do Cupom fiscal inválido!');
          Check(CFItem[a].NumItem, 1, 999, 'CFItem: Número sequencial do item no cupom inválido');
          Check(CFItem[a].CodProduto, 'CFItem: Informe o Código do Produto!');
          Check(CFItem[a].Quantidade > 0, 'CFItem: Quantidade deve ser maior que 0(Zero)!');
          Check(CFItem[a].ValorUnitario > 0, 'CFItem: Valor Unitário deve ser maior que 0(Zero)!');
          Check(CFItem[a].BaseICMS >= 0, 'CFItem: Base do ICMS dever ser maior ou igual a 0(Zero)!');
          Check(VerificaSitTributaria(CFItem[a].SitTributaria), 'CFItem: Situação Tributária inválida!');
          Check(VerificaProduto(CFItem[a].CodProduto), 'CFItem: Produto "%s" não assinalado no Produto!', [CFItem[a].CodProduto]);

          aRegistro := aRegistro + '60I' +
            LFill(DataEmissao) +
            RFill(NumSerieEquip, 20) +
            RetornaModDocumento(ModDocFiscal) +
            LFill(CFItem[a].COOCupom, 6) +
            LFill(CFItem[a].NumItem, 3) +
            RFill(CFItem[a].CodProduto, 14) +
            LFill(CFItem[a].Quantidade, 13, 3) +
            LFill(CFItem[a].ValorUnitario, 13, 3) +
            LFill(CFItem[a].BaseICMS, 12) +
            RFill(CFItem[a].SitTributaria, 4) +
            LFill(CFItem[a].ValorICMS, 12) +
            StringOfChar(' ', 16) + #13#10;
        end;
      end;
    end;

  { Registro 60R Opcional (depende de legislacao da UF) }
  if (Assigned(CFResumoMes)) and (CFResumoMes.Count > 0) then
  begin
    Check(Assigned(Produto) and (Produto.Count > 0), 'Produto: Nenhum Produto foi assinalado!');

    for a := 0 to CFResumoMes.Count - 1 do
    begin
      dDataResumo := EncodeDate(CFResumoMes[a].Ano, CFResumoMes[a].Mes, 1);

      Check(dDataResumo, DataInicial, DataFinal, 'CFResumoMes: Mês/Ano "%s" fora do período informado "%s à %s"!', [FormatDateTime('mm/yyyy', dDataResumo), DateToStr(DataInicial), DateToStr(DataFinal)]);
      Check(CFResumoMes[a].Mes, 1, 12, 'CFResumoMes: Mês inválido!');
      Check(CFResumoMes[a].ANo, 1, 9999, 'CFResumoMes: Ano inválido!');
      Check(CFResumoMes[a].CodProduto, 'CFResumoMes: Informe o Código do Produto!');
      Check(CFResumoMes[a].Quantidade > 0, 'CFResumoMes: Quantidade dever ser maior que 0(Zero)!');
      Check(CFResumoMes[a].ValorAcumProduto > 0, 'CFResumoMes: Valor Acumulado dos produtos de ve ser maior que 0(Zero)!');
      Check(CFResumoMes[a].ValorAcumICMS > 0, 'CFResumoMes: Valor do ICMS dos produtos deve ser maior que 0(Zero)!');
      Check(VerificaSitTributaria(CFResumoMes[a].SitTributaria), 'CFResumoMes: Situação Tributária inválida!');
      Check(VerificaProduto(CFResumoMes[a].CodProduto), 'CFResumoMes: Produto "%s" não assinalado no Produto!', [CFResumoMes[a].CodProduto]);

      aRegistro := aRegistro + '60R' +
        LFill(CFResumoMes[a].Mes, 2) +
        LFill(CFResumoMes[a].ANo, 4) +
        RFill(CFResumoMes[a].CodProduto, 14) +
        LFill(CFResumoMes[a].Quantidade, 13, 3) +
        LFill(CFResumoMes[a].ValorAcumProduto, 16) +
        LFill(CFResumoMes[a].ValorAcumICMS, 16) +
        RFill(CFResumoMes[a].SitTributaria, 4) +
        StringOfChar(' ', 54) + #13#10;
    end;
  end;

  { Registro 61 (Documentos emitidos a mao) }
  if (Assigned(NFC)) and (NFC.Count > 0) then
  begin
    for a := 0 to NFC.Count - 1 do
    begin
      Check(NFC[a].DataEmissao, DataInicial, DataFinal, 'NFC: Data "%s" não corresponde ao período informado "%s à %s"!', [DatetoStr(NFC[a].DataEmissao), DateToStr(DataInicial), DateToStr(DataFinal)]);
      Check(NFC[a].ModeloDoc in [2, 4, 13..16], 'NFC: Modelo de Documento inválido "%s" para o NFC!', [IntToStr(NFC[a].ModeloDoc)]);
      if Trim(NFC[a].Serie) <> '' then
        Check((NFC[a].Serie = 'D') or (NFC[a].Serie = 'U') or (NFC[a].Serie = 'DU'), 'NFC: Serie do Documento invalida "%s"!', [NFC[a].Serie]);
      Check(NFC[a].NumInicial, 0, 999999, 'NFC: Número Inicial inválido!');
      Check(NFC[a].NumFinal, 0, 999999, 'NFC: Número Final inválido!');
      Check(NFC[a].ValorTotal >= 0, 'NFC: Valor Total deve ser maior ou igual a 0(Zero)');
      Check(NFC[a].BaseICMS >= 0, 'NFC: Valor da Base de ICMS deve ser maior ou igual a 0(Zero)');
      Check(NFC[a].IsentasNTrib >= 0, 'NFC: Valor de Isentas/Não Tributadas deve ser maior ou igual a 0(Zero)');
      Check(NFC[a].Outras >= 0, 'NFC: Valor de Outras deve ser maior ou igual a 0(Zero)');
      Check(NFC[a].Aliquota, 0, 99.99, 'NFC: Valor da aliquota inválido!');

      aRegistro := aRegistro + '61' +
        StringOfchar(' ', 14) +
        StringOfchar(' ', 14) +
        LFill(NFC[a].DataEmissao) +
        LFill(NFC[a].ModeloDoc, 2) +
        RFill(NFC[a].Serie, 3) +
        RFill(NFC[a].SubSerie, 2) +
        LFill(NFC[a].NumInicial, 6) +
        LFill(NFC[a].NumFinal, 6) +
        LFill(NFC[a].ValorTotal, 13) +
        LFill(NFC[a].BaseICMS, 13) +
        LFill(NFC[a].ValorICMS, 12) +
        LFill(NFC[a].IsentasNTrib, 13) +
        LFill(NFC[a].Outras, 13) +
        LFill(NFC[a].Aliquota, 4) +
        ' '#13#10;
    end;

    { Registro 61R (Itens dos documentos digitados a mao) }
    if Assigned(NFCResumoMes) and (NFCResumoMes.Count > 0) then
    begin
      for a := 0 to NFCResumoMes.Count - 1 do
      begin
        dDataResumo := StrToDate('01/' + IntTosTr(NFCResumoMes[a].Mes) + '/' + IntTosTr(NFCResumoMes[a].Ano));
        Check(dDataResumo, DataInicial, DataFinal, 'NFCResumoMes: Mês/Ano "%s" fora do período informado "%s à %s"!', [FormatDateTime('mm/yyyy', dDataResumo), DateToStr(DataInicial), DateToStr(DataFinal)]);
        Check(NFCResumoMes[a].Aliquota, 0, 99.99, 'NFCResumoMes: Alíquota inválida!');
        Check(NFCResumoMes[a].BaseCalcICMS >= 0, 'NFCResumoMes: Base de Cálculo do ICMS deve ser maior ou igual a 0(Zero)');
        Check(NFCResumoMes[a].CodProduto, 'NFCResumoMes: Informe o Código do Produto');
        Check(NFCResumoMes[a].Mes, 1, 12, 'NFCResumoMes: Mês informado inválido!');
        Check(NFCResumoMes[a].Ano, 2003, 9999, 'NFCResumoMes: Ano Informado inválido!');
        Check(NFCResumoMes[a].Quantidade > 0, 'NFCResumoMes: Quantidade deve ser maior que 0(Zero)!');
        Check(NFCResumoMes[a].ValorBrutoProduto > 0, 'NFCResumoMes: Valor Bruto deve ser maior que 0(Zero)!');
        Check(VerificaProduto(NFCResumoMes[a].CodProduto), 'NFCResumoMes: Produto "%s" não assinalado no Produto!', [NFCResumoMes[a].CodProduto]);

        aRegistro := aRegistro + '61R' +
          LFill(NFCResumoMes[a].Mes, 2) +
          LFill(NFCResumoMes[a].Ano, 4) +
          RFill(NFCResumoMes[a].CodProduto, 14) +
          LFill(NFCResumoMes[a].Quantidade, 13) +
          LFill(NFCResumoMes[a].ValorBrutoProduto, 16) +
          LFill(NFCResumoMes[a].BaseCalcICMS, 16) +
          LFill(NFCResumoMes[a].Aliquota, 4) +
          StringOfChar(' ', 54) + #13#10;
      end;
    end;
  end;

  Result := aRegistro;
end;

function TSintegra.VerificaCorrespondente(aProduto: string): Boolean;
var
  i, a: Integer;
  Encontrado: Boolean;
begin
  i := 0;
  a := 0;
  Encontrado := False;

  if Assigned(CFReducao) then
  begin
    while (Encontrado = False) and (i < CFReducao.Count) do
    begin
      { Registro 60D }
      if Assigned(CFReducao[i]) then
      begin
        while (Encontrado = False) and (a < CFReducao[i].CFResumoDia.Count) do
        begin
          Encontrado := CFReducao[i].CFResumoDia[a].CodProduto = aProduto;
          inc(a, 1);
        end;
      end;

      { Registro 60I }
      if Assigned(CFReducao[i]) then
      begin
        a := 0;
        while (Encontrado = False) and (a < CFReducao[i].CFItem.Count) do
        begin
          Encontrado := CFReducao[i].CFItem[a].CodProduto = aProduto;
          inc(a, 1);
        end;
      end;

      inc(i, 1);
    end;
  end;

  { Registro 60R }
  if Assigned(CFResumoMes) then
  begin
    i := 0;
    while (Encontrado = False) and (i < CFResumoMes.Count) do
    begin
      Encontrado := CFResumoMes[i].CodProduto = aProduto;
      inc(i, 1);
    end;
  end;

  { Registro 61R }
  if Assigned(NFCResumoMes) then
  begin
    i := 0;
    while (Encontrado = False) and (i < NFCResumoMes.Count) do
    begin
      Encontrado := NFCResumoMes[i].CodProduto = aProduto;
      inc(i, 1);
    end;
  end;

  if Assigned(NF) then
  begin
    i := 0;
    while (Encontrado = False) and (i < NF.Count) do
    begin
      { Registro 54 }
      if Assigned(NF[i].NFItem) then
      begin
        a := 0;
        while (Encontrado = False) and (a < NF[i].NFItem.Count) do
        begin
          Encontrado := NF[i].NFItem[a].CodProduto = aProduto;
          inc(a, 1);
        end;
      end;

      inc(i);
    end;
  end;

  { Registro 74 }
  if Assigned(Inventario) then
  begin
    i := 0;
    while (Encontrado = False) and (i < Inventario.Count) do
    begin
      Encontrado := Inventario[i].CodProduto = aProduto;
      inc(i, 1);
    end;
  end;

  Result := Encontrado;
end;

function TSintegra.Registro70: string;
var
  iNF, iNFICMS: integer;
  sRegistro70: string;
begin
  sRegistro70 := '';

  for iNF := 0 to NF.Count - 1 do
  begin
    with NF[iNF] do
    begin
      if Modelo in kReg70 then
      begin
        Check(VerificaCPF_CNPJ(CNPJ), 'NF: CNPJ inválido para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check(VerificaInscEstadual(InscEstadual, UF), 'NF: Inscrição Estadual inválida para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check((Data >= DataInicial) and (Data <= DataFinal), 'NF: Data de emissão "%s" fora do período "%s" a "%s" no conhecimento "%s".', [DateToStr(Data), DateToStr(DataInicial), DateToStr(DataFinal), LFill(Numero, 6)]);
        Check(VerificaUF(UF), 'NF: UF "%s" inválida no conhecimento "%s"', [UF, LFill(Numero, 6)]);

        NFItem.Clear;

        for iNFICMS := 0 to NFICMS.Count - 1 do
        begin
          Check(VerificaCFOP(NFICMS[iNFICMS].CFOP), 'NF: CFOP "%d" inválido para o conhecimento número "%s"', [NFICMS[iNFICMS].CFOP, LFill(Numero, 6)]);
          Check(Copy(IntToStr(NFICMS[iNFICMS].CFOP), 2, 2) = '35', 'NF: CFOP "%d" inválido para prestação de serviço de transporte no conhecimento número "%s".', [NFICMS[iNFICMS].CFOP, LFill(Numero, 6)]);

          sRegistro70 := sRegistro70 + '70' +
            LFill(CNPJ, 14) +
            RFill(InscEstadual, 14) +
            LFill(Data) +
            UF +
            LFill(Modelo, 2) +
            RFill(Serie, 1) +
            RFill(SubSerie, 2) +
            LFill(Numero, 6) +
            IntToStr(NFICMS[iNFICMS].CFOP) +
            LFill(NFICMS[iNFICMS].ValorTotal, 13) +
            LFill(NFICMS[iNFICMS].BaseIcms, 14) +
            LFill(NFICMS[iNFICMS].ValorICMS, 14) +
            LFill(NFICMS[iNFICMS].IsentasNTribut, 14) +
            LFill(NFICMS[iNFICMS].Outras, 14) +
            RetornaFrete(ModFrete) +
            RetornaSituacao(Situacao) +
            #13#10;
        end;
      end;
    end;
  end;

  Result := sRegistro70;
end;

function TSintegra.Registro71: string;
var
  iNF: integer;
  sRegistro71: string;
begin
  sRegistro71 := '';

  for iNF := 0 to NF.Count - 1 do
  begin
    with NF[iNF] do
    begin
      if (Modelo in kReg70) and (Trim(CargaNFCNPJ) <> '') then
      begin
        Check(VerificaCPF_CNPJ(CNPJ), 'NF: CNPJ inválido para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check(VerificaInscEstadual(InscEstadual, UF), 'NF: Inscrição Estadual inválida para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check((Data >= DataInicial) and (Data <= DataFinal), 'NF: Data de emissão "%s" fora do período "%s" a "%s" no conhecimento "%s".', [DateToStr(Data), DateToStr(DataInicial), DateToStr(DataFinal), LFill(Numero, 6)]);
        Check(VerificaUF(UF), 'NF: UF "%s" inválida no conhecimento "%s"', [UF, LFill(Numero, 6)]);

        Check(VerificaCPF_CNPJ(CargaNFCNPJ), 'NF: CNPJ Nota fiscal inválido para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check(VerificaInscEstadual(CargaNFInscEstadual, CargaNFUF), 'NF: Inscrição Estadual Nota fiscal inválida para o conhecimento número "%s"', [LFill(Numero, 6)]);
        Check((CargaNFData >= DataInicial) and (CargaNFData <= DataFinal), 'NF: Data de emissão "%s" fora do período "%s" a "%s" no conhecimento "%s".', [DateToStr(CargaNFData), DateToStr(DataInicial), DateToStr(DataFinal), LFill(Numero, 6)]);
        Check(VerificaUF(CargaNFUF), 'NF: UF "%s" da Nota fiscal inválida no conhecimento "%s"', [UF, LFill(Numero, 6)]);

        sRegistro71 := sRegistro71 + '71' +
          LFill(CNPJ, 14) +
          RFill(InscEstadual, 14) +
          LFill(Data) +
          UF +
          LFill(Modelo, 2) +
          RFill(Serie, 1) +
          RFill(SubSerie, 2) +
          LFill(Numero, 6) +
          CargaNFUF +
          LFill(CargaNFCNPJ, 14) +
          RFill(CargaNFInscEstadual, 14) +
          LFill(CargaNFData) +
          LFill(CargaNFModelo, 2) +
          RFill(CargaNFSerie, 3) +
          LFill(CargaNFNumero, 6) +
          LFIll(CargaNFVlrTotal, 14) +
          RFill('', 12) +
          #13#10;
      end;
    end;
  end;

  Result := sRegistro71;
end;

function TSintegra.Registro74: string;
var
  sInventario, sInscEstadual: string;
  i: integer;
begin
  sInventario := '';

  { Registro de inventario de produto }
  for i := 0 to Inventario.Count - 1 do
  begin
    with Inventario[i] do
    begin

      { Se o tipo de posse for igual a 1 (proprio) entao a inscrição deve ser em branco }
      if TipoPosse = tpo1 then
        sInscEstadual := ''
      else
        sInscEstadual := InscEstadual;

      Check(CodProduto, 'Inventario: informe o Código do produto!');
      Check(UF, 'Inventario: Informe a UF para o produto "%s"!', [CodProduto]);
      Check(DataInventario > 0, 'Inventario: Informe da data do inventário!');
      Check(DataInventario, DataInicial, DataFinal, 'Inventario: Data do Inventário "%s" fora do período informado "%s à %s"!', [DatetoStr(DataInventario), DatetoStr(DataInicial), DatetoStr(DataFinal)]);
      Check(VerificaUF(UF), 'Inventario: UF "%s" digitada inválida!', [UF]);
      Check(VerificaCPF_CNPJ(CNPJ), 'Inventario: CNPJ "%s" digitado inválido!', [CNPJ]);
      Check(VerificaInscEstadual(sInscEstadual, UF), 'Inventario: Inscrição Estadual "%s" digitada para o produto "%s" incorreta!', [InscEstadual, CodProduto]);
      Check(VerificaProduto(CodProduto), 'Inventario: Produto "%s" não assinalado no Produto!', [CodProduto]);

      sInventario := sInventario + '74' +
        LFill(DataInventario) +
        RFill(CodProduto, 14) +
        LFill(Quantidade, 13, 3) +
        LFill(ValorTotal, 13) +
        RetornaCodPosse(TipoPosse) +
        LFill(CNPJ, 14) +
        RFill(sInscEstadual, 14) +
        UF +
        RFill('', 45) +
        #13#10;
    end;
  end;

  Result := sInventario;
end;


function TSintegra.Registro75: string;
var
  sProduto: string;
  iProd: integer;
begin
  sProduto := '';

  { Cadastro dos produtos }
  for iProd := 0 to Produto.Count - 1 do
  begin
    { O registro 75 deve ter algum correspondente nos registros 54, 60D, 60I, 60R, 74, 77 }
    if VerificaCorrespondente(Produto[iProd].CodProduto) then
    begin
      with Produto[iProd] do
      begin
        Check(CodProduto, 'Produto: Informe o Código do Produto!');
        Check(Descricao, 'Produto: Informe a Descrição do produto!');
        Check(Unidade, 'Produto: Informe a Unidade do produto!');
        Check(AliquotaICMS, 0, 99.99, 'Produto: Aliquota de ICMS inválida!');
        Check(AliquotaIPI, 0, 999.99, 'Produto: Alíquota de IPI inválido!');
        Check(ReducaoBaseCalc, 0, 999.99, 'Produto: Redução da base de calculo inválida!');
        Check(ValidadeInicial > 0, 'Produto: Informe a Validade inicial do produto "%s"!', [CodProduto]);
        Check(ValidadeFinal > 0, 'Produto: Informe a Validade final do produto "%s"!', [CodProduto]);
        Check(ValidadeInicial, DataInicial, DataFinal, 'Produto: Data "%s" não corresponde ao período informado "%s à %s"!', [DatetoStr(ValidadeInicial), DateToStr(DataInicial), DateToStr(DataFinal)]);
        Check(ValidadeFinal, DataInicial, DataFinal, 'Produto: Data "%s" não corresponde ao período informado "%s à %s"!', [DatetoStr(ValidadeFinal), DateToStr(DataInicial), DateToStr(DataFinal)]);

        if Empresa.ContribuinteIPI then
          Check(AliquotaICMS > 0, 'Produto: Alíquota do IPI e obrigatória para empresas Contribuintes do IPI ');

        sProduto := sProduto + '75' +
          LFill(ValidadeInicial) +
          LFill(ValidadeFinal) +
          RFill(CodProduto, 14) +
          RFill(CodNCM, 8) +
          RFill(Descricao, 53) +
          RFill(Unidade, 6) +
          LFill(AliquotaIPI, 5) +
          LFill(AliquotaICMS, 4) +
          LFill(ReducaoBaseCalc, 5) +
          LFill(BaseICMSST, 13) +
          #13#10;
      end;
    end
    else { deleta o produto se nao tiver nenhum correspondente }
      Produto.Delete(iProd);
  end;

  Result := sProduto;
end;

{ *******************************************************************************
  *  A quantidade de registros 90 deve ser informada usando as 6 ultimas
     posicoes do registro alinhado a direita Ex: '     1';

  *  Podem ser usados 9 contadores por registro 90 sendo 2 posicoes
     para o codigo do registro ex: 50, 54, etc e 8 posicoes para a quantidade
     de registros;

  *  o contador 99 deve informar a quantidade total incluindo
     os registros 10, 11, e 90 e deve ser informado somente no
     ultimo registro 90 caso haja mais de um registro 90;
******************************************************************************* }
function TSintegra.Registro90: string;
var
  i,
    ToTReg,
    TotNF, TotNFIPI, TotNFST, TotNFItem, TotReg56, TotGNRE,
    TotReg60, TotNFC,
    TotReg70, TotReg71, TotInventario, TotProduto, TotReg76, TotReg77,
    TotReg88: Integer;

  Inicio, Linha: string;

  fLista: TStringList;

  procedure VerificaLinha;
  begin
    if Length(Linha) = 90 then Linha := Linha + #13#10;
  end;
begin
  flista := TStringList.Create;
  ToTReg := 3;
  TotNF := 0;
  TotNFIPI := 0;
  TotNFST := 0;
  TotNFItem := 0;
  TotReg56 := 0;
  TotGNRE := 0;
  TotReg60 := 0;
  TotNFC := 0;
  TotReg70 := 0;
  TotReg71 := 0;
  TotInventario := 0;
  TotProduto := 0;
  TotReg76 := 0;
  TotReg77 := 0;
  TotReg88 := 0;

  Inicio := '90' + LFill(Empresa.CNPJ, 14) + RFill(Empresa.InscEstadual, 14);

  { Total de registros 50 }
  if (Assigned(NF)) and (NF.Count > 0) then
  begin
    for i := 0 to NF.Count - 1 do
    begin
      with NF[i] do
      begin
        if (Assigned(NFICMS)) and (NF[i].Modelo in kReg50) then
          TotNF := TotNF + NFICMS.Count;

        if (Assigned(NFICMS)) and (NF[i].Modelo in kReg50) and (NFICMS.Count = 0) then
          TotNF := TotNF + 1;

        if Assigned(NFIPI) then
          TotNFIPI := totNFIPI + NFIPI.Count;

        if (Assigned(NFItem)) and (NF[i].Modelo in kReg50) then
          TotNFItem := TotNFItem + NFItem.Count;

        if (Frete <> 0) and (NF[i].Modelo in kReg50) then
          TotNFItem := TotNFItem + 1;

        if (Seguro <> 0) and (NF[i].Modelo in kReg50) then
          TotNFItem := TotNFItem + 1;

        if (DespAcessoria <> 0) and (NF[i].Modelo in kReg50) then
          TotNFItem := TotNFItem + 1;
      end;
    end;
  end;

  { total de registros 60 }
  if (Assigned(CFReducao)) and (CFReducao.Count > 0) then
  begin
    TotReg60 := CFReducao.Count;

    if Assigned(CFResumoMes) and (CFResumoMes.Count > 0) then
      TotReg60 := TotReg60 + CFResumoMes.Count;

    for i := 0 to CFReducao.Count - 1 do
    begin
      with CFReducao[i] do
      begin
        if Assigned(CFICMS) then
          TotReg60 := TotReg60 + CFICMS.Count;

        if Assigned(CFResumoDia) then
          TotReg60 := TotReg60 + CFResumoDia.Count;

        if Assigned(CFItem) then
          TotReg60 := TotReg60 + CFItem.Count;
      end;
    end;
  end;

  { total de registro }
  if Assigned(NFC) and (NFC.Count > 0) then
    TotNFC := NFC.Count;

  if Assigned(NFCResumoMes) then
    TotNFC := TotNFC + NFCResumoMes.Count;

  { total de registros 70 }
  if Assigned(NF) and (NF.Count > 0) then
  begin
    for i := 0 to NF.Count - 1 do
    begin
      if NF[i].Modelo in kReg70 then
        TotReg70 := TotReg70 + NF[i].NFICMS.Count;
    end;
  end;

  { total de registros 71 }
  if Assigned(NF) and (NF.Count > 0) then
  begin
    for i := 0 to NF.Count - 1 do
    begin
      if (NF[i].Modelo in kReg70) and (Trim(NF[i].CargaNFCNPJ) <> '') then
        TotReg71 := TotReg71 + 1;
    end;
  end;

  { total de registros 74 }
  if Assigned(Inventario) and (Inventario.Count > 0) then
    TotInventario := Inventario.Count;

  { total de registros 75 }
  if Assigned(Produto) and (Produto.Count > 0) then
    TotProduto := Produto.Count;

  TotReg := TotReg +
    TotNF + TotNFIPI + TotNFST + TotNFItem + TotReg56 + TotGNRE +
    TotReg60 + TotNFC +
    TotReg70 + TotReg71 + TotInventario + TotProduto + TotReg76 + TotReg77 +
    TotReg88;

  if TotNF > 0 then
  begin
    Linha := Linha + '50' + LFill(TotNF, 8);
    VerificaLinha;
  end;

  if TotNFIPI > 0 then
  begin
    Linha := Linha + '51' + LFill(TotNFIPI, 8);
    VerificaLinha;
  end;

  if TotNFST > 0 then
  begin
    Linha := Linha + '53' + LFill(TotNFST, 8);
    VerificaLinha;
  end;

  if TotNFItem > 0 then
  begin
    Linha := Linha + '54' + LFill(TotNFItem, 8);
    VerificaLinha;
  end;

  if TotReg56 > 0 then
  begin
    Linha := Linha + '56' + LFill(TotReg56, 8);
    VerificaLinha;
  end;

  if TotGNRE > 0 then
  begin
    Linha := Linha + '55' + LFill(TotGNRE, 8);
    VerificaLinha;
  end;

  if TotReg60 > 0 then
  begin
    Linha := Linha + '60' + LFill(TotReg60, 8);
    VerificaLinha;
  end;

  if TotNFC > 0 then
  begin
    Linha := Linha + '61' + LFill(TotNFC, 8);
    VerificaLinha;
  end;

  if TotReg70 > 0 then
  begin
    Linha := Linha + '70' + LFill(TotReg70, 8);
    VerificaLinha;
  end;

  if TotReg71 > 0 then
  begin
    Linha := Linha + '71' + LFill(TotReg71, 8);
    VerificaLinha;
  end;

  if TotInventario > 0 then
  begin
    Linha := Linha + '74' + LFill(TotInventario, 8);
    VerificaLinha;
  end;

  if TotProduto > 0 then
  begin
    Linha := Linha + '75' + LFill(TotProduto, 8);
    VerificaLinha;
  end;

  if TotReg76 > 0 then
  begin
    Linha := Linha + '76' + LFill(TotReg76, 8);
    VerificaLinha;
  end;

  if TotReg77 > 0 then
  begin
    Linha := Linha + '77' + LFill(TotReg77, 8);
    VerificaLinha;
  end;

  if TotReg88 > 0 then
  begin
    Linha := Linha + '88' + LFill(TotReg88, 8);
    VerificaLinha;
  end;

  Linha := Linha + '99' + LFill(ToTReg, 8);

  fLista.Add(Linha);

  Linha := '';
  for i := 0 to fLista.Count - 1 do
  begin
    if Length(fLista.Strings[i]) = 90 then
    begin
      Linha := Linha + Inicio +
        fLista.Strings[i] +
        RFill(IntToStr(fLista.Count), 6) + #13#10;
    end
    else
    begin
      Linha := Linha + Inicio +
        RFill(fLista.Strings[i], 90) +
        LFill(fLista.Count, 6, ' ') + #13#10;
    end;
  end;

  fLista.Free;

  Result := Linha;
end;

{ TNFLista }

function TNFLista.New: INF;
begin
  Result := TNF.Create;
  Add(Result);
end;

function TNFLista.GetItem(Index: Integer): INF;
begin
  Result := Get(Index) as INF;
end;

procedure TNFLista.SetItem(Index: Integer; const Value: INF);
begin
  Put(Index, Value);
end;

function TNFLista.GetTotalEntradas: Integer;
var
  i, a: Integer;
begin
  Result := 0;
  for i := 0 to Count - 1 do
    for a := 0 to Items[i].NFICMS.Count - 1 do
      if IntToStr(Items[i].NFICMS[a].CFOP)[1] in ['1', '2', '3'] then
        Result := Result + 1;
end;

function TNFLista.GetTotalSaidas: Integer;
var
  i, a: Integer;
begin
  Result := 0;
  for i := 0 to Count - 1 do
    for a := 0 to Items[i].NFICMS.Count - 1 do
      if IntToStr(Items[i].NFICMS[a].CFOP)[1] in ['5', '6', '7'] then
        Result := Result + 1;
end;

{ TNF }

constructor TNF.Create;
begin
  inherited;
  fNFICMS := TNFICMSLista.Create;
  fNFItem := TNFItemLista.Create;
  fNFIPI := TNFIPILista.Create;
  fNFST := TNFSTLista.Create;
end;

function TNF.GetNFICMS: INFICMSLista;
begin
  Result := fNFICMS;
end;

function TNF.GetCNPJ: string;
begin
  Result := fCNPJ;
end;

function TNF.GetNFIPI: INFIPILista;
begin
  Result := fNFIPI;
end;

function TNF.GetData: TDateTime;
begin
  Result := fData;
end;

function TNF.GetDespAcessoria: Currency;
begin
  Result := fDespAcessoria;
end;

function TNF.GetFrete: Currency;
begin
  Result := fFrete;
end;

function TNF.GetInscEstadual: string;
begin
  Result := fInscEstadual;
end;

function TNF.GetNFItem: INFItemLista;
begin
  Result := fNFItem;
end;

function TNF.GetModelo: SmallInt;
begin
  Result := fModelo;
end;

function TNF.GetNumero: Integer;
begin
  Result := fNumero;
end;

function TNF.GetSeguro: Currency;
begin
  Result := fSeguro;
end;

function TNF.GetSerie: string;
begin
  Result := fSerie;
end;

function TNF.GetSituacao: TSituacao;
begin
  Result := fSituacao;
end;

function TNF.GetNFST: INFSTLista;
begin
  Result := fNFST
end;

function TNF.GetTipoEmitente: TTipoEmitente;
begin
  Result := fTipoEmitente;
end;

function TNF.GetUF: string;
begin
  Result := fUF;
end;

procedure TNF.SetNFIPI(const Valor: INFIPILista);
begin
  fNFIPI := Valor
end;

procedure TNF.SetNFICMS(const Valor: INFICMSLista);
begin
  fNFICMS := Valor;
end;

procedure TNF.SetCNPJ(const Valor: string);
begin
  fCNPJ := RetornaSoNumero(Valor);
end;

procedure TNF.SetData(const Valor: TDateTime);
begin
  fData := Valor;
end;

procedure TNF.SetDespAcessoria(const Valor: Currency);
begin
  fDespAcessoria := Valor
end;

procedure TNF.SetFrete(const Valor: Currency);
begin
  fFrete := Valor;
end;

procedure TNF.SetInscEstadual(const Valor: string);
begin
  fInscEstadual := RetiraMascara(Valor);
end;

procedure TNF.SetNFItem(const Valor: INFItemLista);
begin
  fNFItem := Valor;
end;

procedure TNF.SetModelo(const Valor: SmallInt);
begin
  fModelo := Valor;
end;

procedure TNF.SetNumero(const Valor: Integer);
begin
  fNumero := Valor;
end;

procedure TNF.SetSeguro(const Valor: Currency);
begin
  fSeguro := Valor;
end;

procedure TNF.SetSerie(const Valor: string);
begin
  fSerie := UpperCase(Valor);
end;

procedure TNF.SetSituacao(const Valor: TSituacao);
begin
  fSituacao := Valor;
end;

procedure TNF.SetNFST(const Valor: INFSTLista);
begin
  fNFST := Valor;
end;

procedure TNF.SetTipoEmitente(const Valor: TTipoEmitente);
begin
  fTipoEmitente := Valor;
end;

procedure TNF.SetUF(const Valor: string);
begin
  fUF := UpperCase(Valor);
end;

function TNF.GetModFrete: TModalidadeFrete;
begin
  Result := FModFrete;
end;

function TNF.GetSubSerie: string;
begin
  Result := fSubSerie;
end;

procedure TNF.SetModFrete(const Value: TModalidadeFrete);
begin
  FModFrete := Value;
end;

procedure TNF.SetSubSerie(const Value: string);
begin
  fSubSerie := UpperCase(Value);
end;

function TNF.GetCargaNFCNPJ: String;
begin
  Result := FCargaNFCNPJ;
end;

function TNF.GetCargaNFData: TDateTime;
begin
  Result := FCargaNFData;
end;

function TNF.GetCargaNFInscEstadual: String;
begin
  Result := FCargaNFInscEstadual;
end;

function TNF.GetCargaNFModelo: SmallInt;
begin
  Result := FCargaNFModelo;
end;

function TNF.GetCargaNFNumero: Integer;
begin
  Result := FCargaNFNumero;
end;

function TNF.GetCargaNFSerie: String;
begin
  Result := FCargaNFSerie;
end;

function TNF.GetCargaNFUF: String;
begin
  Result := FCargaNFUF;
end;

function TNF.GetCargaNFVlrTotal: Currency;
begin
  Result := FCargaNFVlrTotal;
end;

procedure TNF.SetCargaNFCNPJ(const Value: String);
begin
  FCargaNFCNPJ := RetornaSoNumero(Value);
end;

procedure TNF.SetCargaNFData(const Value: TDateTime);
begin
  FCargaNFData := Value;
end;

procedure TNF.SetCargaNFInscEstadual(const Value: String);
begin
  FCargaNFInscEstadual := RetiraMascara(Value);
end;

procedure TNF.SetCargaNFModelo(const Value: SmallInt);
begin
  FCargaNFModelo := Value;
end;

procedure TNF.SetCargaNFNumero(const Value: Integer);
begin
  FCargaNFNumero := Value;
end;

procedure TNF.SetCargaNFSerie(const Value: String);
begin
  FCargaNFSerie := UpperCase(Value);
end;

procedure TNF.SetCargaNFUF(const Value: String);
begin
  FCargaNFUF := UpperCase(Value);
end;

procedure TNF.SetCargaNFVlrTotal(const Value: Currency);
begin
  FCargaNFVlrTotal := Value;
end;

{ TNFItemLista }

function TNFItemLista.New: INFItem;
begin
  Result := TNFItem.Create;
  Add(Result);
end;

function TNFItemLista.GetItem(Index: Integer): INFItem;
begin
  Result := Get(Index) as INFItem;
end;

procedure TNFItemLista.SetItem(Index: Integer; const Value: INFItem);
begin
  Put(Index, Value);
end;

{ TNFItem }

function TNFItem.GetAliquota: Currency;
begin
  Result := fAliquota;
end;

function TNFItem.GetBaseICMS: Currency;
begin
  Result := fBaseICMS;
end;

function TNFItem.GetBaseICMSST: Currency;
begin
  Result := fBaseICMSST;
end;

function TNFItem.GetCFOP: SmallInt;
begin
  Result := fCFOP;
end;

function TNFItem.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

function TNFItem.GetCST: string;
begin
  Result := fCST;
end;

function TNFItem.GetDesconto: Currency;
begin
  Result := fDesconto;
end;

function TNFItem.GetIPI: Currency;
begin
  Result := fIPI;
end;

function TNFItem.GetNumItem: SmallInt;
begin
  Result := fNumItem;
end;

function TNFItem.GetQuantidade: Extended;
begin
  Result := fQuantidade;
end;

function TNFItem.GetValorProduto: Currency;
begin
  Result := fValorProduto;
end;

procedure TNFItem.SetAliquota(const Valor: Currency);
begin
  fAliquota := Valor;
end;

procedure TNFItem.SetBaseICMS(const Valor: Currency);
begin
  fBaseICMS := Valor;
end;

procedure TNFItem.SetBaseICMSST(const Valor: Currency);
begin
  fBaseICMSST := Valor;
end;

procedure TNFItem.SetCFOP(const Valor: SmallInt);
begin
  fCFOP := Valor
end;

procedure TNFItem.SetCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

procedure TNFItem.SetCST(const Valor: string);
begin
  fCST := Valor;
end;

procedure TNFItem.SetDesconto(const Valor: Currency);
begin
  fDesconto := Valor;
end;

procedure TNFItem.SetIPI(const Valor: Currency);
begin
  fIPI := Valor;
end;

procedure TNFItem.SetNumItem(const Valor: SmallInt);
begin
  fNumItem := Valor;
end;

procedure TNFItem.SetQuantidade(const Valor: Extended);
begin
  fQuantidade := Valor;
end;

procedure TNFItem.SetValorProduto(const Valor: Currency);
begin
  fValorProduto := Valor;
end;

{ TNFICMS }

function TNFICMS.GetAliquota: Currency;
begin
  Result := fAliquota;
end;

function TNFICMS.GetBaseICMS: Currency;
begin
  Result := fBaseICMS;
end;

function TNFICMS.GetCFOP: SmallInt;
begin
  Result := fCFOP;
end;

function TNFICMS.GetIsentasNTribut: Currency;
begin
  Result := fIsentasNTribut;
end;

function TNFICMS.GetOutras: Currency;
begin
  Result := fOutras;
end;

function TNFICMS.GetValorICMS: Currency;
begin
  Result := fValorICMS;
end;

function TNFICMS.GetValorTotal: Currency;
begin
  Result := fValorTotal;
end;

procedure TNFICMS.SetCFOP(const Valor: SmallInt);
begin
  fCFOP := Valor;
end;

procedure TNFICMS.SetAliquota(const Valor: Currency);
begin
  fAliquota := Valor;
end;

procedure TNFICMS.SetBaseICMS(const Valor: Currency);
begin
  fBaseICMS := Valor;
end;

procedure TNFICMS.SetValorICMS(const Valor: Currency);
begin
  fValorICMS := Valor;
end;

procedure TNFICMS.SetOutras(const Valor: Currency);
begin
  fOutras := Valor;
end;

procedure TNFICMS.SetIsentasNTribut(const Valor: Currency);
begin
  fIsentasNTribut := Valor;
end;

procedure TNFICMS.SetValorTotal(const Valor: Currency);
begin
  fValorTotal := Valor;
end;

{ TNFICMSLista }


function TNFICMSLista.New: INFICMS;
begin
  Result := TNFICMS.Create;
  Add(Result);
end;

function TNFICMSLista.GetItem(Index: Integer): INFICMS;
begin
  Result := Get(Index) as INFICMS;
end;

procedure TNFICMSLista.SetItem(Index: Integer; const Value: INFICMS);
begin
  Put(Index, Value);
end;

{ TNFIPILista }

function TNFIPILista.New: INFIPI;
begin
  Result := TNFIPI.Create;
  Add(Result);
end;

function TNFIPILista.GetItem(Index: Integer): INFIPI;
begin
  Result := Get(Index) as INFIPI;
end;

procedure TNFIPILista.SetItem(Index: Integer; const Value: INFIPI);
begin
  Put(Index, Value);
end;

{ TNFIPI }

function TNFIPI.GetCFOP: SmallInt;
begin
  Result := fCFOP;
end;

function TNFIPI.GetIsentaNTrib: Currency;
begin
  Result := fIsentaNTrib;
end;

function TNFIPI.GetOutras: Currency;
begin
  Result := fOutras;
end;

function TNFIPI.GetValor: Currency;
begin
  Result := fValor;
end;

function TNFIPI.GetValorIPI: Currency;
begin
  Result := fValorIPI;
end;

procedure TNFIPI.SetCFOP(const Valor: SmallInt);
begin
  fCFOP := Valor;
end;

procedure TNFIPI.SetIsentaNTrib(const Valor: Currency);
begin
  fIsentaNTrib := Valor;
end;

procedure TNFIPI.SetOutras(const Valor: Currency);
begin
  fOutras := Valor;
end;

procedure TNFIPI.SetValor(const Valor: Currency);
begin
  fValor := Valor;
end;

procedure TNFIPI.SetValorIPI(const Valor: Currency);
begin
  fValorIPI := Valor;
end;

{ TNFSTLista }

function TNFSTLista.New: INFST;
begin
  Result := TNFST.Create;
  Add(Result);
end;

function TNFSTLista.GetItem(Index: Integer): INFST;
begin
  Result := Get(Index) as INFST;
end;

procedure TNFSTLista.SetItem(Index: Integer; const Value: INFST);
begin
  Put(Index, Value);
end;

{ TNFST }

function TNFST.GetBaseCalcICMSST: Currency;
begin
  Result := fBaseCalcICMSST;
end;

function TNFST.GetCFOP: SmallInt;
begin
  Result := fCFOP;
end;

function TNFST.GetDespAcessoria: Currency;
begin
  Result := fDespAcessoria;
end;

function TNFST.GetICMSRetido: Currency;
begin
  Result := fICMSRetido;
end;

procedure TNFST.SetBaseCalcICMSST(const Valor: Currency);
begin
  fBaseCalcICMSST := Valor;
end;

procedure TNFST.SetCFOP(const Valor: SmallInt);
begin
  fCFOP := Valor;
end;

procedure TNFST.SetDespAcessoria(const Valor: Currency);
begin
  fDespAcessoria := Valor;
end;

procedure TNFST.SetICMSRetido(const Valor: Currency);
begin
  fICMSRetido := Valor;
end;

{ TGNRELista }

function TGNRELista.New: IGNRE;
begin
  Result := TGNRE.Create;
  Add(Result);
end;

function TGNRELista.GetItem(Index: Integer): IGNRE;
begin
  Result := Get(Index) as IGNRE;
end;

procedure TGNRELista.SetItem(Index: Integer; const Value: IGNRE);
begin
  Put(Index, Value);
end;

{ TGNRE }

function TGNRE.GetAgencia: SmallInt;
begin
  Result := fAgencia;
end;

function TGNRE.GetAnoRef: SmallInt;
begin
  Result := fAnoRef;
end;

function TGNRE.GetBanco: SmallInt;
begin
  Result := fBanco;
end;

function TGNRE.GetDataPagamento: TDateTime;
begin
  Result := fDataPagamento;
end;

function TGNRE.GetMesRef: SmallInt;
begin
  Result := fMesRef;
end;

function TGNRE.GetNumConvenio: string;
begin
  Result := fNumConvenio;
end;

function TGNRE.GetNumeroGNRE: string;
begin
  Result := fNumeroGNRE;
end;

function TGNRE.GetUFContribuinte: string;
begin
  Result := fUFContribuinte;
end;

function TGNRE.GetUFFavorecido: string;
begin
  Result := fUFFavorecido;
end;

function TGNRE.GetValor: Currency;
begin
  Result := fValor;
end;

function TGNRE.GetVencimento: TDateTime;
begin
  Result := fVencimento;
end;

procedure TGNRE.SetAgencia(const Valor: SmallInt);
begin
  fAgencia := Valor;
end;

procedure TGNRE.SetAnoRef(const Valor: SmallInt);
begin
  fAnoRef := Valor;
end;

procedure TGNRE.SetBanco(const Valor: SmallInt);
begin
  fBanco := Valor;
end;

procedure TGNRE.SetDataPagamento(const Valor: TDateTime);
begin
  fDataPagamento := Valor;
end;

procedure TGNRE.SetMesRef(const Valor: SmallInt);
begin
  fMesRef := Valor;
end;

procedure TGNRE.SetNumConvenio(const Valor: string);
begin
  fNumConvenio := Valor;
end;

procedure TGNRE.SetNumeroGNRE(const Valor: string);
begin
  fNumeroGNRE := Valor;
end;

procedure TGNRE.SetUFContribuinte(const Valor: string);
begin
  fUFContribuinte := Uppercase(Valor);
end;

procedure TGNRE.SetUFFavorecido(const Valor: string);
begin
  fUFFavorecido := Uppercase(Valor);
end;

procedure TGNRE.SetValor(const Valor: Currency);
begin
  fValor := Valor;
end;

procedure TGNRE.SetVencimento(const Valor: TDateTime);
begin
  fVencimento := Valor;
end;

{ TCFReducao }

constructor TCFReducao.Create;
begin
  inherited;
  fVendaBruta := 0;
  fGTFinal := 0;
  fCFICMS := TCFICMSLista.Create;
  fResumoDia := TCFResumoDiaLista.Create;
  fCFItem := TCFItemLista.Create;
end;

function TCFReducao.GetDataEmissao: TDateTime;
begin
  Result := fDataEmissao
end;

procedure TCFReducao.SetDataEmissao(const Valor: TDateTime);
begin
  fDataEmissao := Valor
end;

function TCFReducao.GetNumSerieEquip: string;
begin
  Result := fNumSerieEquip;
end;

procedure TCFReducao.SetNumSerieEquip(const Valor: string);
begin
  fNumSerieEquip := Valor;
end;

function TCFReducao.GetNumSequencial: Integer;
begin
  Result := fNumSequencial
end;

procedure TCFReducao.SetNumSequencial(const Valor: Integer);
begin
  fNumSequencial := Valor;
end;

function TCFReducao.GetModDocFiscal: TModDocumento;
begin
  Result := fModDocFiscal
end;

procedure TCFReducao.SetModDocFiscal(const Valor: TModDocumento);
begin
  fModDocFiscal := Valor;
end;

function TCFReducao.GetCOOInicial: Integer;
begin
  Result := fCOOInicial
end;

procedure TCFReducao.SetCOOInicial(const Valor: Integer);
begin
  fCOOInicial := Valor;
end;

function TCFReducao.GetCOOFinal: Integer;
begin
  Result := fCOOFinal
end;

procedure TCFReducao.SetCOOFinal(const Valor: Integer);
begin
  fCOOFinal := Valor;
end;

function TCFReducao.GetContReducaoZ: Integer;
begin
  Result := fContReducaoZ
end;

procedure TCFReducao.SetContReducaoZ(const Valor: Integer);
begin
  fContReducaoZ := Valor;
end;

function TCFReducao.GetContReinicioOper: Integer;
begin
  Result := fContReinicioOper
end;

procedure TCFReducao.SetContReinicioOper(const Valor: Integer);
begin
  fContReinicioOper := Valor;
end;

function TCFReducao.GetVendaBruta: Currency;
begin
  Result := fVendaBruta
end;

procedure TCFReducao.SetVendaBruta(const Valor: Currency);
begin
  fVendaBruta := Valor;
end;

function TCFReducao.GetGTFinal: Currency;
begin
  Result := fGTFinal
end;

procedure TCFReducao.SetGTFinal(const Valor: Currency);
begin
  fGTFinal := Valor;
end;

function TCFReducao.GetCFICMS: ICFICMSLista;
begin
  Result := fCFICMS;
end;

procedure TCFReducao.SetCFICMS(const Valor: ICFICMSLista);
begin
  fCFICMS := Valor;
end;

function TCFReducao.GetResumoDia: ICFResumoDiaLista;
begin
  Result := fResumoDia;
end;

procedure TCFReducao.SetResumoDia(const Valor: ICFResumoDiaLista);
begin
  fResumoDia := Valor;
end;

function TCFReducao.GetCFItem: ICFItemLista;
begin
  Result := fCFItem;
end;

procedure TCFReducao.SetCFItem(const Valor: ICFItemLista);
begin
  fCFItem := Valor;
end;

{ TCFReducaoLista }

function TCFReducaoLista.New: ICFReducao;
begin
  Result := TCFReducao.Create;
  Add(Result);
end;

function TCFReducaoLista.GetItem(Index: Integer): ICFReducao;
begin
  Result := Get(Index) as ICFReducao;
end;

procedure TCFReducaoLista.SetItem(Index: Integer; const Value: ICFReducao);
begin
  Put(Index, Value);
end;

{ TCFICMS }

function TCFICMS.GetValorAcumulado: Currency;
begin
  Result := fValorAcumulado
end;

procedure TCFICMS.SetValorAcumulado(const Valor: Currency);
begin
  fValorAcumulado := Valor;
end;

function TCFICMS.GetSitTributaria: string;
begin
  Result := fSitTributaria;
end;

procedure TCFICMS.SetSitTributaria(const Valor: string);
begin
  fSitTributaria := Valor;
end;

{ TCFICMSLista }

function TCFICMSLista.New: ICFICMS;
begin
  Result := TCFICMS.Create;
  Add(Result);
end;

function TCFICMSLista.GetItem(Index: Integer): ICFICMS;
begin
  Result := Get(Index) as ICFICMS;
end;

procedure TCFICMSLista.SetItem(Index: Integer; const Value: ICFICMS);
begin
  Put(Index, Value);
end;

function TCFICMSLista.Total: Currency;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to Count - 1 do
    Result := Result + items[i].ValorAcumulado;
end;

{ TCFResumoDia }

constructor TCFResumoDia.Create;
begin
  inherited;
  fBaseCalcICMS := 0;
  fSitTributaria := '0';
end;

function TCFResumoDia.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

procedure TCFResumoDia.setCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

function TCFResumoDia.GetQuantAcumulada: Extended;
begin
  Result := fQuantAcumulada
end;

procedure TCFResumoDia.SetQuantAcumulada(const Valor: Extended);
begin
  fQuantAcumulada := Valor;
end;

function TCFResumoDia.GetValorAcumulado: Currency;
begin
  Result := fValorAcumulado
end;

procedure TCFResumoDia.SetValorAcumulado(const Valor: Currency);
begin
  fValorAcumulado := Valor;
end;

function TCFResumoDia.GetBaseCalcICMS: Currency;
begin
  Result := fBaseCalcICMS
end;

procedure TCFResumoDia.SetBaseCalcICMS(const Valor: Currency);
begin
  fBaseCalcICMS := Valor;
end;

function TCFResumoDia.GetSitTributaria: string;
begin
  Result := fSitTributaria;
end;

procedure TCFResumoDia.SetSitTributaria(const Valor: string);
begin
  fSitTributaria := Valor;
end;

function TCFResumoDia.GetValorICMS: Currency;
var
  aAliquota: Currency;
begin
  aAliquota := StrToNumero(fSitTributaria, 2);
  Result := fBaseCalcICMS * (aAliquota / 100);
end;

{ TCFResumoDiaLista }

function TCFResumoDiaLista.New: ICFResumoDia;
begin
  Result := TCFResumoDia.Create;
  Add(Result);
end;

function TCFResumoDiaLista.GetItem(Index: Integer): ICFResumoDia;
begin
  Result := Get(Index) as ICFResumoDia;
end;

procedure TCFResumoDiaLista.SetItem(Index: Integer; const Value: ICFResumoDia);
begin
  Put(Index, Value);
end;

function TCFResumoDiaLista.GetTotalAcumulado: Currency;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to Count - 1 do
    Result := Result + items[i].ValorAcumulado;
end;

{ TCFItem }

function TCFItem.GetCOOCupom: Integer;
begin
  Result := fCOOCupom;
end;

procedure TCFItem.SetCOOCupom(const Valor: Integer);
begin
  fCOOCupom := Valor;
end;

function TCFItem.GetNumItem: Integer;
begin
  Result := fNumItem;
end;

procedure TCFItem.SetNumItem(const Valor: Integer);
begin
  fNumItem := Valor;
end;

function TCFItem.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

procedure TCFItem.SetCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

function TCFItem.GetQuantidade: Extended;
begin
  Result := fQuantidade;
end;

procedure TCFItem.SetQuantidade(const Valor: Extended);
begin
  fQuantidade := Valor;
end;

function TCFItem.GetValorUnitario: Currency;
begin
  Result := fValorUnitario;
end;

procedure TCFItem.SetValorUnitario(const Valor: Currency);
begin
  fValorUnitario := Valor;
end;

function TCFItem.GetBaseICMS: Currency;
begin
  Result := fBaseICMS;
end;

procedure TCFItem.SetBaseICMS(const Valor: Currency);
begin
  fBaseICMS := Valor;
end;

function TCFItem.GetSitTributaria: string;
begin
  Result := fSitTributaria;
end;

procedure TCFItem.SetSitTributaria(const Valor: string);
begin
  fSitTributaria := Valor;
end;

function TCFItem.GetValorICMS: Currency;
var
  aAliquota: Currency;
begin
  aAliquota := StrToNumero(fSitTributaria, 2);
  Result := fBaseICMS * (aAliquota / 100);
end;

{ TCFItemLista }

function TCFItemLista.New: ICFItem;
begin
  Result := TCFItem.Create;
  Add(Result);
end;

function TCFItemLista.GetItem(Index: Integer): ICFItem;
begin
  Result := Get(Index) as ICFItem;
end;

procedure TCFItemLista.SetItem(Index: Integer; const Value: ICFItem);
begin
  Put(Index, Value);
end;

{ TCFResumoMes }

function TCFResumoMes.GetMes: SmallInt;
begin
  Result := fMes;
end;

procedure TCFResumoMes.SetMes(const Valor: SmallInt);
begin
  fMes := Valor;
end;

function TCFResumoMes.GetAno: SmallInt;
begin
  Result := fANo;
end;

procedure TCFResumoMes.SetAno(const Valor: SmallInt);
begin
  fAno := Valor;
end;

function TCFResumoMes.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

procedure TCFResumoMes.SetCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

function TCFResumoMes.GetQuantidade: Extended;
begin
  Result := fQuantidade;
end;

procedure TCFResumoMes.SetQuantidade(const Valor: Extended);
begin
  fQuantidade := Valor;
end;

function TCFResumoMes.GetValorAcumProduto: Currency;
begin
  Result := fValorAcumProduto;
end;

procedure TCFResumoMes.SetValorAcumProduto(const Valor: Currency);
begin
  fValorAcumProduto := Valor;
end;

function TCFResumoMes.GetValorAcumICMS: Currency;
begin
  Result := fValorAcumICMS;
end;

procedure TCFResumoMes.SetValorAcumICMS(const Valor: Currency);
begin
  fValorAcumICMS := Valor;
end;

function TCFResumoMes.GetSitTributaria: string;
begin
  Result := fSitTributaria;
end;

procedure TCFResumoMes.SetSitTributaria(const Valor: string);
begin
  fSitTributaria := Valor;
end;

{ TCFResumoMesLista }

function TCFResumoMesLista.New: ICFResumoMes;
begin
  Result := TCFResumoMes.Create;
  Add(Result);
end;

function TCFResumoMesLista.GetItem(Index: Integer): ICFResumoMes;
begin
  Result := Get(Index) as ICFResumoMes;
end;

procedure TCFResumoMesLista.SetItem(Index: Integer; const Value: ICFResumoMes);
begin
  Put(Index, Value);
end;

{ TNFC }

constructor TNFC.Create;
begin
  inherited;
  fValorTotal := 0;
  fBaseICMS := 0;
  fIsentasNTrib := 0;
  fOutras := 0;
  fAliquota := 0;
end;

function TNFC.GetDataEmissao: TDateTime;
begin
  Result := fDataEmissao;
end;

procedure TNFC.SetDataEmissao(const Valor: TDateTime);
begin
  fDataEmissao := Valor;
end;

function TNFC.GetModeloDoc: Integer;
begin
  Result := fModeloDoc;
end;

procedure TNFC.SetModeloDoc(const Valor: Integer);
begin
  fModeloDoc := Valor;
end;

function TNFC.GetSerie: string;
begin
  Result := fSerie;
end;

procedure TNFC.SetSerie(const Valor: string);
begin
  fSerie := UpperCase(Valor);
end;

function TNFC.GetSubSerie: string;
begin
  Result := fSubSerie;
end;

procedure TNFC.SetSubSerie(const Valor: string);
begin
  fSubSerie := UpperCase(Valor);
end;

function TNFC.GetNumInicial: Integer;
begin
  Result := fNumInicial;
end;

procedure TNFC.SetNumInicial(const Valor: Integer);
begin
  fNumInicial := Valor;
end;

function TNFC.GetNumFinal: Integer;
begin
  Result := fNumFinal;
end;

procedure TNFC.SetNumFinal(const Valor: Integer);
begin
  fNumFinal := Valor;
end;

function TNFC.GetValorTotal: Currency;
begin
  Result := fValorTotal;
end;

procedure TNFC.SetValorTotal(const Valor: Currency);
begin
  fValorTotal := Valor;
end;

function TNFC.GetBaseICMS: Currency;
begin
  Result := fBaseICMS;
end;

procedure TNFC.SetBaseICMS(const Valor: Currency);
begin
  fBaseICMS := Valor;
end;

function TNFC.GetIsentasNTrib: Currency;
begin
  Result := fIsentasNTrib;
end;

procedure TNFC.SetIsentasNTrib(const Valor: Currency);
begin
  fIsentasNTrib := Valor;
end;

function TNFC.GetOutras: Currency;
begin
  Result := fOutras;
end;

procedure TNFC.SetOutras(const Valor: Currency);
begin
  fOutras := Valor;
end;

function TNFC.GetAliquota: Currency;
begin
  Result := fAliquota;
end;

procedure TNFC.SetAliquota(const Valor: Currency);
begin
  fAliquota := Valor;
end;

function TNFC.GetValorICMS: Currency;
begin
  Result := fBaseICMS * (fAliquota / 100);
end;

{ TNFCLista }

function TNFCLista.New: INFC;
begin
  Result := TNFC.Create;
  Add(Result);
end;

function TNFCLista.GetItem(Index: Integer): INFC;
begin
  Result := Get(Index) as INFC;
end;

procedure TNFCLista.SetItem(Index: Integer; const Value: INFC);
begin
  Put(Index, Value);
end;

{ TNFCResumoMes }

function TNFCResumoMes.GetAliquota: Currency;
begin
  Result := fAliquota;
end;

function TNFCResumoMes.GetMes: SmallInt;
begin
  Result := fMes;
end;

function TNFCResumoMes.GetAno: SmallInt;
begin
  Result := fAno;
end;

function TNFCResumoMes.GetBaseCalcICMS: Currency;
begin
  Result := fBaseCalcICMS;
end;

function TNFCResumoMes.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

function TNFCResumoMes.GetQuantidade: Extended;
begin
  Result := fQuantidade;
end;

function TNFCResumoMes.GetValorBrutoProduto: Currency;
begin
  Result := fValorBrutoProduto;
end;

procedure TNFCResumoMes.SetAliquota(const Valor: Currency);
begin
  fAliquota := valor;
end;

procedure TNFCResumoMes.SetBaseCalcICMS(const Valor: Currency);
begin
  fBaseCalcICMS := Valor;
end;

procedure TNFCResumoMes.SetCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

procedure TNFCResumoMes.SetMes(const Valor: SmallInt);
begin
  fMes := Valor;
end;

procedure TNFCResumoMes.SetAno(const Valor: SmallInt);
begin
  fAno := valor;
end;

procedure TNFCResumoMes.SetQuantidade(const Valor: Extended);
begin
  fQuantidade := Valor;
end;

procedure TNFCResumoMes.SetValorBrutoProduto(const Valor: Currency);
begin
  fValorBrutoProduto := Valor;
end;

{ TNFCResumoMesLista }

function TNFCResumoMesLista.New: INFCResumoMes;
begin
  Result := TNFCResumoMes.Create;
  Add(Result);
end;

function TNFCResumoMesLista.GetItem(Index: Integer): INFCResumoMes;
begin
  Result := Get(Index) as INFCResumoMes;
end;

procedure TNFCResumoMesLista.SetItem(Index: Integer; const Value: INFCResumoMes);
begin
  Put(Index, Value);
end;

{ TProduto }

function TProduto.GetValidadeInicial: TDateTime;
begin
  Result := fValidadeInicial;
end;

procedure TProduto.SetValidadeInicial(const Valor: TDateTime);
begin
  fValidadeInicial := Valor;
end;

function TProduto.GetValidadeFinal: TDateTime;
begin
  Result := fValidadeFinal;
end;

procedure TProduto.SetValidadeFinal(const Valor: TDateTime);
begin
  fValidadeFinal := Valor;
end;

function TProduto.GetCodProduto: string;
begin
  Result := fCodProduto;
end;

procedure TProduto.SetCodProduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

function TProduto.GetCodNCM: string;
begin
  Result := fCodNCM;
end;

procedure TProduto.SetCodNCM(const Valor: string);
begin
  fCodNCM := Valor;
end;

function TProduto.GetDescricao: string;
begin
  Result := fDescricao;
end;

procedure TProduto.SetDescricao(const Valor: string);
begin
  fDescricao := Valor;
end;

function TProduto.GetUnidade: string;
begin
  Result := fUnidade;
end;

procedure TProduto.SetUnidade(const Valor: string);
begin
  fUnidade := Valor;
end;

function TProduto.GetAliquotaIPI: Currency;
begin
  Result := fAliquotaIPI;
end;

procedure TProduto.SetAliquotaIPI(const Valor: Currency);
begin
  fAliquotaIPI := Valor;
end;

function TProduto.GetAliquotaICMS: Currency;
begin
  Result := fAliquotaICMS;
end;

procedure TProduto.SetAliquotaICMS(const Valor: Currency);
begin
  fAliquotaICMS := Valor;
end;

function TProduto.GetReducaoBaseCalc: Currency;
begin
  Result := fReducaoBaseCalc;
end;

procedure TProduto.SetReducaoBaseCalc(const Valor: Currency);
begin
  fReducaoBaseCalc := Valor;
end;

function TProduto.GetBaseICMSST: Currency;
begin
  Result := fBaseICMSST;
end;

procedure TProduto.SetBaseICMSST(const Valor: Currency);
begin
  fBaseICMSST := Valor;
end;

{ TProdutoLista }

function TProdutoLista.New: IProduto;
begin
  Result := TProduto.Create;
  Add(Result);
end;

function TProdutoLista.GetItem(Index: Integer): IProduto;
begin
  Result := Get(Index) as IProduto;
end;

procedure TProdutoLista.SetItem(Index: Integer; const Value: IProduto);
begin
  Put(Index, Value);
end;

{ TInventarioLista }

function TInventarioLista.New: IInventario;
begin
  Result := TInventario.Create;
  Add(Result);
end;

function TInventarioLista.GetItem(Index: Integer): IInventario;
begin
  Result := Get(Index) as IInventario;
end;

procedure TInventarioLista.SetItem(Index: Integer; const Value: IInventario);
begin
  Put(Index, Value);
end;

{ TInventario }

function TInventario.GetCNPJ: string;
begin
  Result := fCNPJ;
end;

function TInventario.GetCodPRoduto: string;
begin
  Result := fCodPRoduto;
end;

function TInventario.GetDataInventario: TDateTime;
begin
  Result := fDataInventario;
end;

function TInventario.GetInscEstadual: string;
begin
  Result := fInscEstadual;
end;

function TInventario.GetQuantidade: Extended;
begin
  Result := fQuantidade;
end;

function TInventario.GetTipoPosse: TTipoPosse;
begin
  Result := fTipoPosse;
end;

function TInventario.GetUF: string;
begin
  Result := fUF;
end;

function TInventario.GetValorTotal: Currency;
begin
  Result := fValorTotal;
end;

procedure TInventario.SetCNPJ(const Valor: string);
begin
  if fTipoPosse = tpo1 then
    fCNPJ := '0'
  else
    fCNPJ := RetornaSoNumero(Valor);
end;

procedure TInventario.SetCodPRoduto(const Valor: string);
begin
  fCodProduto := Valor;
end;

procedure TInventario.SetDataInventario(const Valor: TDateTime);
begin
  fDataInventario := Valor;
end;

procedure TInventario.SetInscEstadual(const Valor: string);
begin
  fInscEstadual := RetiraMascara(Valor);
end;

procedure TInventario.SetQuantidade(const Valor: Extended);
begin
  fQuantidade := Valor;
end;

procedure TInventario.SetTipoPosse(const Valor: TTipoPosse);
begin
  fTipoPosse := Valor;
end;

procedure TInventario.SetUF(const Valor: string);
begin
  fUF := Valor;
end;

procedure TInventario.SetValorTotal(const Valor: Currency);
begin
  fValorTotal := Valor;
end;

{ Factoring da Interface ISintegra }
function CreateSintegra(): ISintegra;
begin
  Result := TSintegra.Create;
end;

{ Funçoes Utilitárias }

{ Verifica se o CFOP e válido }
function VerificaCFOP(aCFOP: SmallInt): Boolean;
const
  ListaCFOP: array[0..522] of string = (
    '1101', '1102', '1111', '1113', '1116', '1117', '1118', '1120', '1121', '1122', '1124', '1125', '1126', '1151', '1152', '1153', '1154', '1201',
    '1202', '1203', '1204', '1205', '1206', '1207', '1208', '1209', '1251', '1252', '1253', '1254', '1255', '1256', '1257', '1301', '1302', '1303',
    '1304', '1305', '1306', '1351', '1352', '1353', '1354', '1355', '1356', '1401', '1403', '1406', '1407', '1408', '1409', '1410', '1411', '1414',
    '1415', '1451', '1452', '1501', '1503', '1504', '1551', '1552', '1553', '1554', '1555', '1556', '1557', '1601', '1602', '1603', '1604', '1650',
    '1651', '1652', '1653', '1658', '1659', '1660', '1661', '1662', '1663', '1664', '1901', '1902', '1903', '1904', '1905', '1906', '1907', '1908',
    '1909', '1910', '1911', '1912', '1913', '1914', '1915', '1916', '1917', '1918', '1919', '1920', '1921', '1922', '1923', '1924', '1925', '1926',
    '1949', '2101', '2102', '2111', '2113', '2116', '2117', '2118', '2120', '2121', '2122', '2124', '2125', '2126', '2151', '2152', '2153', '2154',
    '2201', '2202', '2203', '2204', '2205', '2206', '2207', '2208', '2209', '2251', '2252', '2253', '2254', '2255', '2256', '2257', '2301', '2302',
    '2303', '2304', '2305', '2306', '2351', '2352', '2353', '2354', '2355', '2356', '2401', '2403', '2406', '2407', '2408', '2409', '2410', '2411',
    '2414', '2415', '2501', '2503', '2504', '2551', '2552', '2553', '2554', '2555', '2556', '2557', '2603', '2651', '2652', '2653', '2658', '2659',
    '2660', '2661', '2662', '2663', '2664', '2901', '2902', '2903', '2904', '2905', '2906', '2907', '2908', '2909', '2910', '2911', '2912', '2913',
    '2914', '2915', '2916', '2917', '2918', '2919', '2920', '2921', '2922', '2923', '2924', '2925', '2949', '3101', '3102', '3126', '3127', '3201',
    '3202', '3205', '3206', '3207', '3211', '3251', '3301', '3351', '3352', '3353', '3354', '3355', '3356', '3503', '3551', '3553', '3556', '3650',
    '3651', '3652', '3653', '3930', '3949', '5101', '5102', '5103', '5104', '5105', '5106', '5109', '5110', '5111', '5112', '5113', '5114', '5115',
    '5116', '5117', '5118', '5119', '5120', '5122', '5123', '5124', '5125', '5151', '5152', '5153', '5155', '5156', '5201', '5202', '5205', '5206',
    '5207', '5208', '5209', '5210', '5251', '5252', '5253', '5254', '5255', '5256', '5257', '5258', '5301', '5302', '5303', '5304', '5305', '5306',
    '5307', '5351', '5352', '5353', '5354', '5355', '5356', '5357', '5401', '5402', '5403', '5405', '5408', '5409', '5410', '5411', '5412', '5413',
    '5414', '5415', '5451', '5501', '5502', '5503', '5551', '5552', '5553', '5554', '5555', '5556', '5557', '5601', '5602', '5603', '5650', '5651',
    '5652', '5653', '5654', '5655', '5656', '5657', '5658', '5659', '5660', '5661', '5662', '5663', '5664', '5665', '5666', '5901', '5902', '5903',
    '5904', '5905', '5906', '5907', '5908', '5909', '5910', '5911', '5912', '5913', '5914', '5915', '5916', '5917', '5918', '5919', '5920', '5921',
    '5922', '5923', '5924', '5925', '5926', '5927', '5928', '5929', '5931', '5932', '5949', '6101', '6102', '6103', '6104', '6105', '6106', '6107',
    '6108', '6109', '6110', '6111', '6112', '6113', '6114', '6115', '6116', '6117', '6118', '6119', '6120', '6122', '6123', '6124', '6125', '6151',
    '6152', '6153', '6155', '6156', '6201', '6202', '6205', '6206', '6207', '6208', '6209', '6210', '6251', '6252', '6253', '6254', '6255', '6256',
    '6257', '6258', '6301', '6302', '6303', '6304', '6305', '6306', '6307', '6351', '6352', '6353', '6354', '6355', '6356', '6357', '6401', '6402',
    '6403', '6404', '6408', '6409', '6410', '6411', '6412', '6413', '6414', '6415', '6501', '6502', '6503', '6551', '6552', '6553', '6554', '6555',
    '6556', '6557', '6603', '6650', '6651', '6652', '6653', '6654', '6655', '6656', '6657', '6658', '6659', '6660', '6661', '6662', '6663', '6664',
    '6665', '6666', '6901', '6902', '6903', '6904', '6905', '6906', '6907', '6908', '6909', '6910', '6911', '6912', '6913', '6914', '6915', '6916',
    '6917', '6918', '6919', '6920', '6921', '6922', '6923', '6924', '6925', '6929', '6931', '6932', '6949', '7101', '7102', '7105', '7106', '7127',
    '7201', '7202', '7205', '7206', '7207', '7210', '7211', '7251', '7301', '7358', '7501', '7551', '7553', '7556', '7650', '7651', '7654', '7930',
    '7949');
var
  i: Integer;
  Encontrado: Boolean;
begin
  i := 0;
  Encontrado := False;
  while (not (Encontrado)) and (i <= 522) do
  begin
    Encontrado := ListaCFOP[i] = IntToStr(aCFOP);
    inc(i);
  end;

  Result := Encontrado;
end;

{ Verifica se a UF digitada e valida }
function VerificaUF(aUF: string): Boolean;
const
  ListaUF: array[0..26] of string = (
    'AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF',
    'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA',
    'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO',
    'RR', 'RS', 'SC', 'SE', 'SP', 'TO');
var
  i: integer;
  Encontrado: Boolean;
begin
  i := 0;
  Encontrado := False;
  while (not (Encontrado)) and (i <= 26) do
  begin
    Encontrado := ListaUF[i] = aUF;
    inc(i);
  end;

  Result := Encontrado;
end;

{ Verifica se o CEP e valido }
function VerificaCEP(cCep: string; cEstado: string): Boolean;
var
  cCEP1: Integer;
begin
  if cCEP = '' then
  begin
    Result := False;
    Exit;
  end;

  cCEP1 := StrToInt(copy(cCep, 1, 3));

  if Length(trim(cCep)) > 0 then
  begin
    if Length(trim(copy(cCep, 6, 3))) < 3 then
      Result := False
    else if (cEstado = 'SP') and (cCEP1 >= 10) and (cCEP1 <= 199) then
      Result := True
    else if (cEstado = 'RJ') and (cCEP1 >= 200) and (cCEP1 <= 289) then
      Result := True
    else if (cEstado = 'ES') and (cCEP1 >= 290) and (cCEP1 <= 299) then
      Result := True
    else if (cEstado = 'MG') and (cCEP1 >= 300) and (cCEP1 <= 399) then
      Result := True
    else if (cEstado = 'BA') and (cCEP1 >= 400) and (cCEP1 <= 489) then
      Result := True
    else if (cEstado = 'SE') and (cCEP1 >= 490) and (cCEP1 <= 499) then
      Result := True
    else if (cEstado = 'PE') and (cCEP1 >= 500) and (cCEP1 <= 569) then
      Result := True
    else if (cEstado = 'AL') and (cCEP1 >= 570) and (cCEP1 <= 579) then
      Result := True
    else if (cEstado = 'PB') and (cCEP1 >= 580) and (cCEP1 <= 589) then
      Result := True
    else if (cEstado = 'RN') and (cCEP1 >= 590) and (cCEP1 <= 599) then
      Result := True
    else if (cEstado = 'CE') and (cCEP1 >= 600) and (cCEP1 <= 639) then
      Result := True
    else if (cEstado = 'PI') and (cCEP1 >= 640) and (cCEP1 <= 649) then
      Result := True
    else if (cEstado = 'MA') and (cCEP1 >= 650) and (cCEP1 <= 659) then
      Result := True
    else if (cEstado = 'PA') and (cCEP1 >= 660) and (cCEP1 <= 688) then
      Result := True
    else if (cEstado = 'AM') and ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and (cCEP1 <= 698)) then
      Result := True
    else if (cEstado = 'AP') and (cCEP1 = 689) then
      Result := True
    else if (cEstado = 'RR') and (cCEP1 = 693) then
      Result := True
    else if (cEstado = 'AC') and (cCEP1 = 699) then
      Result := True
    else if ((cEstado = 'DF') or (cEstado = 'GO')) and (cCEP1 >= 700) and (cCEP1 <= 769) then
      Result := True
    else if (cEstado = 'TO') and (cCEP1 >= 770) and (cCEP1 <= 779) then
      Result := True
    else if (cEstado = 'MT') and (cCEP1 >= 780) and (cCEP1 <= 788) then
      Result := True
    else if (cEstado = 'MS') and (cCEP1 >= 790) and (cCEP1 <= 799) then
      Result := True
    else if (cEstado = 'RO') and (cCEP1 = 789) then
      Result := True
    else if (cEstado = 'PR') and (cCEP1 >= 800) and (cCEP1 <= 879) then
      Result := True
    else if (cEstado = 'SC') and (cCEP1 >= 880) and (cCEP1 <= 899) then
      Result := True
    else if (cEstado = 'RS') and (cCEP1 >= 900) and (cCEP1 <= 999) then
      Result := True
    else
      Result := False
  end
  else
    Result := True;
end;

{ Valida a inscrição estadual }
function VerificaInscEstadual(aInscricao, aTipo: string): Boolean;
var
  Contador: ShortInt;
  Casos: ShortInt;
  Digitos: ShortInt;

  Tabela_1: string;
  Tabela_2: string;
  Tabela_3: string;

  Base_1: string;
  Base_2: string;
  Base_3: string;

  Valor_1: ShortInt;

  Soma_1: Integer;
  Soma_2: Integer;

  Erro_1: ShortInt;
  Erro_2: ShortInt;
  Erro_3: ShortInt;

  Posicao_1: string;
  Posicao_2: string;

  Tabela: string;
  Rotina: string;
  Modulo: ShortInt;
  Peso: string;

  Digito: ShortInt;

  Resultado: string;
  Retorno: Boolean;
begin

  { Isento ja e aceito }
  if (aInscricao = 'ISENTO') or (Trim(aInscricao) = '') then
  begin
    Result := True;
    Exit;
  end;

  { Inscrição de produtor rural, não validar }
  if (Copy(aInscricao, 1, 2) = 'PR') then
  begin
    Result := True;
    Exit;
  end;

  try
    Tabela_1 := ' ';
    Tabela_2 := ' ';
    Tabela_3 := ' ';

    {                                                                               }
    {                                                                               }
    {         Valores possiveis para os digitos (j)                                 }
    {                                                                               }
    { 0 a 9 = Somente o digito indicado.                                            }
    {     N = Numeros 0 1 2 3 4 5 6 7 8 ou 9                                        }
    {     A = Numeros 1 2 3 4 5 6 7 8 ou 9                                          }
    {     B = Numeros 0 3 5 7 ou 8                                                  }
    {     C = Numeros 4 ou 7                                                        }
    {     D = Numeros 3 ou 4                                                        }
    {     E = Numeros 0 ou 8                                                        }
    {     F = Numeros 0 1 ou 5                                                      }
    {     G = Numeros 1 7 8 ou 9                                                    }
    {     H = Numeros 0 1 2 ou 3                                                    }
    {     I = Numeros 0 1 2 3 ou 4                                                  }
    {     J = Numeros 0 ou 9                                                        }
    {     K = Numeros 1 2 3 ou 9                                                    }
    {                                                                               }
    { ----------------------------------------------------------------------------- }
    {                                                                               }
    {         Valores possiveis para as rotinas (d) e (g)                           }
    {                                                                               }
    { A a E = Somente a Letra indicada.                                             }
    {     0 = B e D                                                                 }
    {     1 = C e E                                                                 }
    {     2 = A e E                                                                 }
    {                                                                               }
    { ----------------------------------------------------------------------------- }
    {                                                                               }
    {                                  C T  F R M  P  R M  P                        }
    {                                  A A  A O O  E  O O  E                        }
    {                                  S M  T T D  S  T D  S                        }
    {                                                                               }
    {                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj        }
    {                                  0000000001111111111222222222233333333        }
    {                                  1234567890123456789012345678901234567        }

    IF aTipo = 'AC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
    IF aTipo = 'AC'   Then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
    IF aTipo = 'AL'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
    IF aTipo = 'AP'   Then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
    IF aTipo = 'AP'   Then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
    IF aTipo = 'AP'   Then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
    IF aTipo = 'AM'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
    IF aTipo = 'BA'   Then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
    IF aTipo = 'BA'   Then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
    IF aTipo = 'CE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
    IF aTipo = 'DF'   Then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
    IF aTipo = 'ES'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
    IF aTipo = 'GO'   Then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
    IF aTipo = 'GO'   Then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
    IF aTipo = 'MA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
    IF aTipo = 'MT'   Then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
    IF aTipo = 'MS'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
    IF aTipo = 'MG'   Then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
    IF aTipo = 'PA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
    IF aTipo = 'PB'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
    IF aTipo = 'PR'   Then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
    IF aTipo = 'PE'   Then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
    IF aTipo = 'PI'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
    IF aTipo = 'RJ'   Then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
    IF aTipo = 'RN'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
    IF aTipo = 'RS'   Then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
    IF aTipo = 'RO'   Then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
    IF aTipo = 'RO'   Then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
    IF aTipo = 'RR'   Then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
    IF aTipo = 'SC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    IF aTipo = 'SP'   Then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
    IF aTipo = 'SP'   Then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
    IF aTipo = 'SE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    IF aTipo = 'TO'   Then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';
    IF aTipo = 'CNPJ' Then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
    IF aTipo = 'CPF'  Then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

    { Deixa somente os numeros }
    Base_1 := '';

    for Contador := 1 to 30 do
    begin
      if Pos(Copy(aInscricao, Contador, 1), '0123456789') <> 0 then
        Base_1 := Base_1 + Copy(aInscricao, Contador, 1);
    end;

    { Repete 3x - 1 para cada caso possivel }
    Casos := 0;

    Erro_1 := 0;
    Erro_2 := 0;
    Erro_3 := 0;

    while Casos < 3 do
    begin

      Casos := Casos + 1;

      IF Casos = 1 Then Tabela := Tabela_1;
      IF Casos = 2 Then Erro_1 := Erro_3  ;
      IF Casos = 2 Then Tabela := Tabela_2;
      IF Casos = 3 Then Erro_2 := Erro_3  ;
      IF Casos = 3 Then Tabela := Tabela_3;

      Erro_3 := 0;

      if Copy(Tabela, 1, 1) <> ' ' then
      begin

        { Verifica o Tamanho }
        if Length(Trim(Base_1)) <> (StrToInt(Copy(Tabela, 3, 2))) then
          Erro_3 := 1;

        if Erro_3 = 0 then
        begin

          { Ajusta o Tamanho }
          Base_2 := Copy('              ' + Base_1, Length('              ' + Base_1) - 13, 14);

          { Compara com valores possivel para cada uma da 14 posições }
          Contador := 0;

          while (Contador < 14) and (Erro_3 = 0) do
          begin

            Contador := Contador + 1;

            Posicao_1 := Copy(Copy(Tabela, 24, 14), Contador, 1);
            Posicao_2 := Copy(Base_2, Contador, 1);

            IF ( Posicao_1  = ' '        ) AND (      Posicao_2                 <> ' ' ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'N'        ) AND ( Pos( Posicao_2, '0123456789' )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'A'        ) AND ( Pos( Posicao_2, '123456789'  )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'B'        ) AND ( Pos( Posicao_2, '03578'      )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'C'        ) AND ( Pos( Posicao_2, '47'         )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'D'        ) AND ( Pos( Posicao_2, '34'         )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'E'        ) AND ( Pos( Posicao_2, '08'         )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'F'        ) AND ( Pos( Posicao_2, '015'        )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'G'        ) AND ( Pos( Posicao_2, '1789'       )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'H'        ) AND ( Pos( Posicao_2, '0123'       )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'I'        ) AND ( Pos( Posicao_2, '01234'      )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'J'        ) AND ( Pos( Posicao_2, '09'         )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1  = 'K'        ) AND ( Pos( Posicao_2, '1239'       )  =   0 ) Then Erro_3 := 1;
            IF ( Posicao_1 <>  Posicao_2 ) AND ( Pos( Posicao_1, '0123456789' )  >   0 ) Then Erro_3 := 1;

          end;

          { Calcula os Digitos }
          Rotina := ' ';
          Digitos := 000;
          Digito := 000;

          while (Digitos < 2) and (Erro_3 = 0) do
          begin

            Digitos := Digitos + 1;

            { Carrega peso }
            Peso := Copy(Tabela, 5 + (Digitos * 8), 2);

            if Peso <> '  ' then
            begin

              Rotina := Copy(Tabela, 0 + (Digitos * 8), 1);
              Modulo := StrToInt(Copy(Tabela, 2 + (Digitos * 8), 2));

              IF Peso = '01' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              IF Peso = '02' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              IF Peso = '03' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
              IF Peso = '04' Then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
              IF Peso = '05' Then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
              IF Peso = '06' Then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
              IF Peso = '07' Then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
              IF Peso = '08' Then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
              IF Peso = '09' Then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
              IF Peso = '10' Then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
              IF Peso = '11' Then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
              IF Peso = '12' Then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
              IF Peso = '13' Then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
              IF Peso = '21' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              IF Peso = '22' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              IF Peso = '31' Then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
              IF Peso = '32' Then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';

              { Multiplica }
              Base_3 := Copy(('0000000000000000' + Trim(Base_2)), Length(('0000000000000000' + Trim(Base_2))) - 13, 14);

              Soma_1 := 0;
              Soma_2 := 0;

              for Contador := 1 to 14 do
              begin

                Valor_1 := (StrToInt(Copy(Base_3, Contador, 01)) * StrToInt(Copy(Peso, Contador * 3 - 2, 2)));

                Soma_1 := Soma_1 + Valor_1;

                if Valor_1 > 9 then
                  Valor_1 := Valor_1 - 9;

                Soma_2 := Soma_2 + Valor_1;

              end;

              { Ajusta valor da soma }
              IF Pos( Rotina, 'A2'  ) > 0 Then Soma_1 := Soma_2;
              IF Pos( Rotina, 'B0'  ) > 0 Then Soma_1 := Soma_1 * 10;
              IF Pos( Rotina, 'C1'  ) > 0 Then Soma_1 := Soma_1 + ( 5 + 4 * StrToInt( Copy( Tabela, 6, 1 ) ) );

              { Calcula o Digito }
              IF Pos( Rotina, 'D0'  ) > 0 Then Digito := Soma_1 Mod Modulo;
              IF Pos( Rotina, 'E12' ) > 0 Then Digito := Modulo - ( Soma_1 Mod Modulo);

              IF Digito < 10 Then Resultado := IntToStr( Digito );
              IF Digito = 10 Then Resultado := '0';
              IF Digito = 11 Then Resultado := Copy( Tabela, 6, 1 );

              { Verifica o Digito }
              if (Copy(Base_2, StrToInt(Copy(Tabela, 36 + (Digitos * 3), 2)), 1) <> Resultado) then
                Erro_3 := 1;
            end;
          end;
        end;
      end;
    end;

    { Retorna o resultado da Verificação }
    Retorno := FALSE;

    if (Trim(Tabela_1) <> '') and (ERRO_1 = 0) then Retorno := TRUE;
    if (Trim(Tabela_2) <> '') and (ERRO_2 = 0) then Retorno := TRUE;
    if (Trim(Tabela_3) <> '') and (ERRO_3 = 0) then Retorno := TRUE;

    if Trim(aInscricao) = 'ISENTO' then Retorno := TRUE;

    Result := Retorno;
  except
    Result := False;
  end;
end;

{ Verifica se o CPF/CNPJ e Valido }
function VerificaCPF_CNPJ(numero: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
  d1, d2: integer;
  digitado, calculado: string;

begin
  Result := false;

  if Length(Numero) = 11 then
  begin
    n1 := StrToInt(numero[1]);
    n2 := StrToInt(numero[2]);
    n3 := StrToInt(numero[3]);
    n4 := StrToInt(numero[4]);
    n5 := StrToInt(numero[5]);
    n6 := StrToInt(numero[6]);
    n7 := StrToInt(numero[7]);
    n8 := StrToInt(numero[8]);
    n9 := StrToInt(numero[9]);

    d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
    d1 := 11 - (d1 mod 11);
      if d1 >= 10 then d1 := 0;

    d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
    d2 := 11 - (d2 mod 11);
      if d2>=10 then d2:=0;

    calculado := inttostr(d1) + inttostr(d2);
    digitado := numero[10] + numero[11];

      if calculado = digitado then Result := true;
  end;

  if Length(Numero) = 14 then
  begin
    n1 := StrToInt(numero[1]);
    n2 := StrToInt(numero[2]);
    n3 := StrToInt(numero[3]);
    n4 := StrToInt(numero[4]);
    n5 := StrToInt(numero[5]);
    n6 := StrToInt(numero[6]);
    n7 := StrToInt(numero[7]);
    n8 := StrToInt(numero[8]);
    n9 := StrToInt(numero[9]);
    n10 := StrToInt(numero[10]);
    n11 := StrToInt(numero[11]);
    n12 := StrToInt(numero[12]);

    d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
    d1 := 11 - (d1 mod 11);
    if d1 >= 10 then d1 := 0;

    d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
    d2 := 11 - (d2 mod 11);
    if d2 >= 10 then d2 := 0;

    calculado := inttostr(d1) + inttostr(d2);
    digitado := numero[13] + numero[14];

    if calculado = digitado then Result := true;
  end;
end;

end.


unit udados;

interface

uses
  SysUtils, Classes, DB, DBClient, Windows, Controls, Forms, Dialogs,
  FMTBcd, Provider, SqlExpr, DBXpress, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, ZAbstractConnection, IniFiles,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfrmdados = class(TDataModule)
    cds_Paises: TClientDataSet;
    dts_Paises: TDataSource;
    cds_Estados: TClientDataSet;
    dts_Estados: TDataSource;
    cds_Temp: TClientDataSet;
    IntegerField2: TIntegerField;
    dts_Temp: TDataSource;
    cds_Tempcod1P: TIntegerField;
    cds_Tempcod2P: TIntegerField;
    cds_Tempcod3P: TIntegerField;
    cds_Tempcod4P: TIntegerField;
    cds_Tempcod5P: TIntegerField;
    cds_Tempcod6P: TIntegerField;
    cds_Tempcod7P: TIntegerField;
    cds_Tempcod8P: TIntegerField;
    cds_Tempcod9P: TIntegerField;
    cds_Tempcod10P: TIntegerField;
    cds_Munic: TClientDataSet;
    dts_Munic: TDataSource;
    cds_icms: TClientDataSet;
    dts_icms: TDataSource;
    cds_ipi: TClientDataSet;
    dts_ipi: TDataSource;
    cds_sita: TClientDataSet;
    dts_sita: TDataSource;
    cds_sitb: TClientDataSet;
    dts_sitb: TDataSource;
    cds_cf: TClientDataSet;
    dts_cf: TDataSource;
    cds_modbc: TClientDataSet;
    dts_modbc: TDataSource;
    cds_modbcst: TClientDataSet;
    dts_modbcst: TDataSource;
    cds_impostoI: TClientDataSet;
    dts_impostoI: TDataSource;
    cds_impostoII: TClientDataSet;
    dts_impostoII: TDataSource;
    cds_impostoIII: TClientDataSet;
    dts_impostoIII: TDataSource;
    cds_pis: TClientDataSet;
    dts_pis: TDataSource;
    cds_cofins: TClientDataSet;
    dts_cofins: TDataSource;
    cds_cfop: TClientDataSet;
    dts_cfop: TDataSource;
    cds_natop: TClientDataSet;
    dts_natop: TDataSource;
    cds_unidade: TClientDataSet;
    dts_unidade: TDataSource;
    cds_tiposerv: TClientDataSet;
    dts_tiposerv: TDataSource;
    cds_rcserv: TClientDataSet;
    dts_rcserv: TDataSource;
    cds_Tempcod11P: TIntegerField;
    cds_Tempcod12P: TIntegerField;
    cds_Tempcod1A: TIntegerField;
    cds_Tempcod2A: TIntegerField;
    cds_Tempcod3A: TIntegerField;
    cds_Tempcod4A: TIntegerField;
    cds_Tempcod1B: TIntegerField;
    cds_Tempcod2B: TIntegerField;
    cds_Tempcod3B: TIntegerField;
    cds_Tempcod4B: TIntegerField;
    cds_Tempcod13P: TIntegerField;
    cds_Tempcod1C: TIntegerField;
    cds_Tempcod2C: TIntegerField;
    cds_transportador: TClientDataSet;
    dts_transportador: TDataSource;
    cds_Tempcod1T: TIntegerField;
    cds_Tempcod2T: TIntegerField;
    cds_Tempcod3T: TIntegerField;
    cds_TempCOD1I: TIntegerField;
    cds_TempCOD2I: TIntegerField;
    cds_TempCOD3I: TIntegerField;
    cds_cmobra: TClientDataSet;
    dts_cmobra: TDataSource;
    cds_Tempcod1m: TIntegerField;
    cds_Tempcod2m: TIntegerField;
    cds_Tempcod3m: TIntegerField;
    cds_clientes: TClientDataSet;
    dts_clientes: TDataSource;
    cds_Tempcod1cc: TIntegerField;
    cds_Tempcod2cc: TIntegerField;
    cds_Tempcod3cc: TIntegerField;
    cds_regtrib: TClientDataSet;
    dts_regtrib: TDataSource;
    cds_emitente: TClientDataSet;
    dts_emitente: TDataSource;
    cds_Tempcod1ee: TIntegerField;
    cds_Tempcod2ee: TIntegerField;
    cds_Tempcod3ee: TIntegerField;
    cds_fornecedores: TClientDataSet;
    dts_fornecedores: TDataSource;
    cds_Tempcod1ff: TIntegerField;
    cds_Tempcod2ff: TIntegerField;
    cds_Tempcod3ff: TIntegerField;
    cds_nf: TClientDataSet;
    dts_nf: TDataSource;
    cds_Tempcod1nf: TIntegerField;
    cds_Tempcod2nf: TIntegerField;
    cds_Tempcod3nf: TIntegerField;
    cds_Tempcod4nf: TIntegerField;
    cds_Tempcod5nf: TIntegerField;
    cds_Tempcod6nf: TIntegerField;
    cds_Tempcod7nf: TIntegerField;
    cds_Tempcod8nf: TIntegerField;
    cds_Tempcod9nf: TIntegerField;
    cds_Tempcod10nf: TIntegerField;
    cds_Tempcod11nf: TIntegerField;
    cds_Tempcod12nf: TIntegerField;
    cds_Tempcod13nf: TIntegerField;
    cds_Tempcod14nf: TIntegerField;
    cds_Tempcod15nf: TIntegerField;
    cds_Tempcod16nf: TIntegerField;
    cds_Tempcod17nf: TIntegerField;
    cds_Tempcod18nf: TIntegerField;
    cds_Tempcod19nf: TIntegerField;
    cds_Tempcod20nf: TIntegerField;
    cds_Tempcod21nf: TIntegerField;
    cds_Tempcod22nf: TIntegerField;
    cds_Tempcod23nf: TIntegerField;
    cds_Tempcod24nf: TIntegerField;
    cds_Tempcod25nf: TIntegerField;
    cds_Tempcod26nf: TIntegerField;
    cds_Tempcod27nf: TIntegerField;
    cds_Tempcod28nf: TIntegerField;
    cds_Tempcod29nf: TIntegerField;
    cds_Tempcod30nf: TIntegerField;
    cds_Tempcod31nf: TIntegerField;
    cds_Tempcod32nf: TIntegerField;
    cds_Tempcod33nf: TIntegerField;
    cds_Tempcod34nf: TIntegerField;
    cds_Tempcod35nf: TIntegerField;
    cds_Tempcod36nf: TIntegerField;
    cds_Tempcod37nf: TIntegerField;
    cds_Tempcod38nf: TIntegerField;
    cds_Tempcod39nf: TIntegerField;
    cds_Tempcod40nf: TIntegerField;
    cds_Tempcod41nf: TIntegerField;
    cds_Tempcod42nf: TIntegerField;
    cds_Tempcod43nf: TIntegerField;
    cds_Tempcod44nf: TIntegerField;
    cds_tiponf: TClientDataSet;
    dts_tiponf: TDataSource;
    cds_onusdofrete: TClientDataSet;
    dts_onusdofrete: TDataSource;
    cds_indice: TClientDataSet;
    dts_indice: TDataSource;
    cds_nfe: TClientDataSet;
    dts_nfe: TDataSource;
    cds_Tempcod1prodnf: TIntegerField;
    cds_Tempcod2prodnf: TIntegerField;
    cds_Tempcod3prodnf: TIntegerField;
    cds_Tempcod4prodnf: TIntegerField;
    cds_Tempcod5prodnf: TIntegerField;
    cds_Tempcod6prodnf: TIntegerField;
    cds_Tempcod7prodnf: TIntegerField;
    cds_Tempcod8prodnf: TIntegerField;
    cds_Tempcod9prodnf: TIntegerField;
    cds_Tempcod10prodnf: TIntegerField;
    cds_Tempcod11prodnf: TIntegerField;
    cds_Tempcod12prodnf: TIntegerField;
    cds_Tempcod13prodnf: TIntegerField;
    cds_Tempcod14prodnf: TIntegerField;
    cds_Tempcod15prodnf: TIntegerField;
    cds_Tempcod16prodnf: TIntegerField;
    cds_Tempcod1servnf: TIntegerField;
    cds_Tempcod2servnf: TIntegerField;
    cds_Tempcod3servnf: TIntegerField;
    cds_Tempcod4servnf: TIntegerField;
    cds_Tempcod5servnf: TIntegerField;
    cds_Tempcod6servnf: TIntegerField;
    cds_Tempcod7servnf: TIntegerField;
    cds_Tempcod8servnf: TIntegerField;
    cds_Tempcod9servnf: TIntegerField;
    cds_Tempcod10servnf: TIntegerField;
    cds_Tempcod11servnf: TIntegerField;
    cds_Tempcod12servnf: TIntegerField;
    cds_Tempcod13servnf: TIntegerField;
    cds_Tempcod14servnf: TIntegerField;
    cds_Tempcod15servnf: TIntegerField;
    cds_Tempcod16servnf: TIntegerField;
    cds_nfp: TClientDataSet;
    dts_nfp: TDataSource;
    cds_csosn: TClientDataSet;
    dts_csosn: TDataSource;
    cds_Tempcod14p: TIntegerField;
    cds_nfs: TClientDataSet;
    dts_nfs: TDataSource;
    cds_tipopgto: TClientDataSet;
    dts_tipopgto: TDataSource;
    cds_fatura: TClientDataSet;
    dts_fatura: TDataSource;
    cds_duplicata: TClientDataSet;
    dts_duplicata: TDataSource;
    cds_tgicms: TClientDataSet;
    dts_tgicms: TDataSource;
    cds_aux: TClientDataSet;
    cds_nfep: TClientDataSet;
    dts_nfep: TDataSource;
    cds_eprodutos: TClientDataSet;
    cds_Tempid: TStringField;
    cds_temp_imp: TClientDataSet;
    cds_temp_impid: TStringField;
    cds_temp_impobs: TMemoField;
    cds_cupom: TClientDataSet;
    dts_cupom: TDataSource;
    cds_config: TClientDataSet;
    dts_config: TDataSource;
    cds_configdataexpira: TDateField;
    cds_configdataatual: TDateField;
    cd_enfe: TClientDataSet;
    dsp_tabela1: TDataSetProvider;
    dados_nfe: TSQLConnection;
    dbx_tabela1: TSQLQuery;
    cd_enatop: TClientDataSet;
    cd_enf: TClientDataSet;
    cd_eindice: TClientDataSet;
    zconexao: TZConnection;
    sql_Paises: TZQuery;
    dsp_paises: TDataSetProvider;
    sql_Paisescodigo: TIntegerField;
    sql_Paisesnome: TStringField;
    sql_Paisessigla: TStringField;
    sql_Paisescodibge: TStringField;
    sql_Paisesid: TIntegerField;
    cds_Paisescodigo: TIntegerField;
    cds_Paisesnome: TStringField;
    cds_Paisessigla: TStringField;
    cds_Paisescodibge: TStringField;
    cds_Paisesid: TIntegerField;
    sql_consulta: TZQuery;
    dsp_ImpostoII: TDataSetProvider;
    sql_ImpostoII: TZQuery;
    sql_impostoIII: TZQuery;
    sql_tiposerv: TZQuery;
    sql_regtrib: TZQuery;
    sql_indice: TZQuery;
    sql_fatura: TZQuery;
    sql_cf: TZQuery;
    sql_pis: TZQuery;
    sql_Munic: TZQuery;
    sql_Modbc: TZQuery;
    sql_cofins: TZQuery;
    sql_unidade: TZQuery;
    sql_clientes: TZQuery;
    sql_rcserv: TZQuery;
    sql_emitente: TZQuery;
    sql_nfe: TZQuery;
    sql_duplicata: TZQuery;
    sql_nfs: TZQuery;
    sql_modbcst: TZQuery;
    sql_nfep: TZQuery;
    sql_icms: TZQuery;
    sql_cfop: TZQuery;
    sql_fornecedores: TZQuery;
    sql_nfp: TZQuery;
    sql_sita: TZQuery;
    sql_ipi: TZQuery;
    sql_impostoI: TZQuery;
    sql_natop: TZQuery;
    sql_tgicms: TZQuery;
    sql_transportador: TZQuery;
    sql_nf: TZQuery;
    sql_csosn: TZQuery;
    sql_cupom: TZQuery;
    sql_tipopgto: TZQuery;
    sql_Estados: TZQuery;
    sql_onusdofrete: TZQuery;
    sql_tiponf: TZQuery;
    sql_sitb: TZQuery;
    sql_cmobra: TZQuery;
    sql_ImpostoIIcodigo: TIntegerField;
    sql_ImpostoIIdescricao: TStringField;
    sql_ImpostoIIsigla: TStringField;
    sql_ImpostoIIaliquota: TFloatField;
    sql_ImpostoIIreducao: TFloatField;
    sql_ImpostoIIid: TIntegerField;
    sql_modbcstcodigo: TIntegerField;
    sql_modbcstdescricao: TStringField;
    sql_modbcstsigla: TStringField;
    sql_modbcstid: TIntegerField;
    sql_sitacodigo: TIntegerField;
    sql_sitadescricao: TStringField;
    sql_sitasigla: TStringField;
    sql_sitacpadrao: TIntegerField;
    sql_sitaid: TIntegerField;
    sql_csosncodigo: TIntegerField;
    sql_csosndescricao: TStringField;
    sql_csosnsigla: TStringField;
    sql_csosnid: TIntegerField;
    sql_cmobracodigo: TIntegerField;
    sql_cmobradescricao: TStringField;
    sql_cmobraprve: TFloatField;
    sql_cmobracrcserv: TIntegerField;
    sql_cmobractiposerv: TIntegerField;
    sql_cmobracimpostoi: TIntegerField;
    sql_cmobraid: TIntegerField;
    sql_impostoIIIcodigo: TIntegerField;
    sql_impostoIIIdescricao: TStringField;
    sql_impostoIIIsigla: TStringField;
    sql_impostoIIIaliquota: TFloatField;
    sql_impostoIIIreducao: TFloatField;
    sql_impostoIIIid: TIntegerField;
    sql_tiposervcodigo: TIntegerField;
    sql_tiposervdescricao: TStringField;
    sql_tiposervsigla: TStringField;
    sql_tiposervid: TIntegerField;
    sql_nfepcodigo: TIntegerField;
    sql_nfepcpro: TIntegerField;
    sql_nfepnpro: TStringField;
    sql_nfepqtde: TFloatField;
    sql_nfepprve: TFloatField;
    sql_nfepsubtotal: TFloatField;
    sql_nfepcnf: TIntegerField;
    sql_nfepcod1prodnf: TIntegerField;
    sql_nfepcod2prodnf: TIntegerField;
    sql_nfepcod3prodnf: TIntegerField;
    sql_nfepcod4prodnf: TIntegerField;
    sql_nfepcod5prodnf: TIntegerField;
    sql_nfepcod6prodnf: TIntegerField;
    sql_nfepcod7prodnf: TIntegerField;
    sql_nfepcod8prodnf: TIntegerField;
    sql_nfepcod9prodnf: TIntegerField;
    sql_nfepcod10prodnf: TIntegerField;
    sql_nfepcod12prodnf: TIntegerField;
    sql_nfepcod13prodnf: TIntegerField;
    sql_nfepcod14prodnf: TIntegerField;
    sql_nfepcnfe: TIntegerField;
    sql_nfeppdesc: TFloatField;
    sql_nfepvdesc: TFloatField;
    sql_nfepbsicms: TFloatField;
    sql_nfepaliqicms: TFloatField;
    sql_nfepvicms: TFloatField;
    sql_nfepbsipi: TFloatField;
    sql_nfepaliqipi: TFloatField;
    sql_nfepvipi: TFloatField;
    sql_nfepaliqredbcicms: TFloatField;
    sql_nfepcompoetnf: TStringField;
    sql_nfepbscalcst: TFloatField;
    sql_nfepicmscalcst: TFloatField;
    sql_nfepcaux: TStringField;
    sql_nfepcbar: TStringField;
    sql_nfepid: TIntegerField;
    sql_ipicodigo: TIntegerField;
    sql_ipidescricao: TStringField;
    sql_ipisigla: TStringField;
    sql_ipialiquota: TFloatField;
    sql_ipireducao: TFloatField;
    sql_ipiid: TIntegerField;
    sql_ipicpadrao: TIntegerField;
    sql_cupomcodigo: TIntegerField;
    sql_cupomdte: TDateField;
    sql_cupomcoo: TStringField;
    sql_cupomcaixa: TStringField;
    sql_cupomserieecf: TStringField;
    sql_cupomcnf: TIntegerField;
    sql_cupommodelo: TStringField;
    sql_cupomid: TIntegerField;
    sql_regtribcodigo: TIntegerField;
    sql_regtribnome: TStringField;
    sql_regtribsigla: TStringField;
    sql_regtribobs: TMemoField;
    sql_regtribid: TIntegerField;
    sql_indicecodigo: TIntegerField;
    sql_indicecaminhoarqnfe: TStringField;
    sql_indicennf: TIntegerField;
    sql_indicecaminhoarqnfetemp: TStringField;
    sql_indicecontadornfe: TIntegerField;
    sql_indicechaveconsultacep: TStringField;
    sql_indiceimportarpara: TStringField;
    sql_indiceexportarpara: TStringField;
    sql_indiceconfigcpro: TIntegerField;
    sql_indicehverao: TStringField;
    sql_indiceid: TIntegerField;
    sql_faturacodigo: TIntegerField;
    sql_faturacnf: TIntegerField;
    sql_faturactipopgto: TIntegerField;
    sql_faturanfat: TStringField;
    sql_faturavorig: TFloatField;
    sql_faturavdesc: TFloatField;
    sql_faturavliq: TFloatField;
    sql_faturapdesc: TFloatField;
    sql_faturaid: TIntegerField;
    sql_icmscodigo: TIntegerField;
    sql_icmsdescricao: TStringField;
    sql_icmssigla: TStringField;
    sql_icmscest: TIntegerField;
    sql_icmsaliquota: TFloatField;
    sql_icmsreducao: TFloatField;
    sql_icmscsitb: TIntegerField;
    sql_icmsccfop: TIntegerField;
    sql_icmsccfopf: TIntegerField;
    sql_icmsobs: TMemoField;
    sql_icmsccsosn: TIntegerField;
    sql_icmsid: TIntegerField;
    sql_impostoIcodigo: TIntegerField;
    sql_impostoIdescricao: TStringField;
    sql_impostoIsigla: TStringField;
    sql_impostoIaliquota: TFloatField;
    sql_impostoIreducao: TFloatField;
    sql_impostoIid: TIntegerField;
    sql_tipopgtocodigo: TIntegerField;
    sql_tipopgtodescricao: TStringField;
    sql_tipopgtoehvd: TStringField;
    sql_tipopgtoid: TIntegerField;
    sql_cfcodigo: TIntegerField;
    sql_cfdescricao: TStringField;
    sql_cfsigla: TStringField;
    sql_cfid: TIntegerField;
    sql_piscodigo: TIntegerField;
    sql_pisdescricao: TStringField;
    sql_pissigla: TStringField;
    sql_pisaliquota: TFloatField;
    sql_pisreducao: TFloatField;
    sql_piscpadrao: TIntegerField;
    sql_pisid: TIntegerField;
    sql_Municcodigo: TIntegerField;
    sql_Municnome: TStringField;
    sql_Municcodibge: TStringField;
    sql_Municcest: TIntegerField;
    sql_Municfxinicial: TIntegerField;
    sql_Municfxfinal: TIntegerField;
    sql_Municid: TIntegerField;
    sql_cfopcodigo: TIntegerField;
    sql_cfopdescricao: TStringField;
    sql_cfopsigla: TStringField;
    sql_cfopctipo: TIntegerField;
    sql_cfopccupom: TIntegerField;
    sql_cfopctipoest: TIntegerField;
    sql_cfopcsitb: TIntegerField;
    sql_cfopcicms: TIntegerField;
    sql_cfopobs: TMemoField;
    sql_cfopcpadrao: TIntegerField;
    sql_cfopccsosn: TIntegerField;
    sql_cfopaplicaliqfat: TStringField;
    sql_cfopcipi: TIntegerField;
    sql_cfopcpis: TIntegerField;
    sql_cfopccofins: TIntegerField;
    sql_cfopid: TIntegerField;
    sql_natopcodigo: TIntegerField;
    sql_natopdescricao: TStringField;
    sql_natopccfop: TIntegerField;
    sql_natopccfopf: TIntegerField;
    sql_natopcicms: TIntegerField;
    sql_natopid: TIntegerField;
    sql_Estadoscodigo: TIntegerField;
    sql_Estadosnome: TStringField;
    sql_Estadossigla: TStringField;
    sql_Estadoscodibge: TIntegerField;
    sql_Estadoscpais: TIntegerField;
    sql_Estadosid: TIntegerField;
    sql_Modbccodigo: TIntegerField;
    sql_Modbcdescricao: TStringField;
    sql_Modbcsigla: TStringField;
    sql_Modbcid: TIntegerField;
    sql_cofinscodigo: TIntegerField;
    sql_cofinsdescricao: TStringField;
    sql_cofinssigla: TStringField;
    sql_cofinsaliquota: TFloatField;
    sql_cofinsreducao: TFloatField;
    sql_cofinscpadrao: TIntegerField;
    sql_cofinsid: TIntegerField;
    sql_unidadecodigo: TIntegerField;
    sql_unidadedescricao: TStringField;
    sql_unidadesigla: TStringField;
    sql_unidadeid: TIntegerField;
    sql_tgicmscodigo: TIntegerField;
    sql_tgicmsdescricao: TStringField;
    sql_tgicmscsitb: TIntegerField;
    sql_tgicmstabref: TStringField;
    sql_tgicmscamporef: TStringField;
    sql_tgicmsid: TIntegerField;
    sql_onusdofretecodigo: TIntegerField;
    sql_onusdofretenome: TStringField;
    sql_onusdofretesigla: TStringField;
    sql_onusdofreteid: TIntegerField;
    sql_clientesnome: TStringField;
    sql_clientesfantasia: TStringField;
    sql_clientescnpj: TStringField;
    sql_clientestelefones: TStringField;
    sql_clientesie: TStringField;
    sql_clientesemail: TStringField;
    sql_clientessite: TStringField;
    sql_clientescontato: TStringField;
    sql_clientesendereco: TStringField;
    sql_clientesnro: TStringField;
    sql_clientescompl: TStringField;
    sql_clientesbairro: TStringField;
    sql_clientescmun: TIntegerField;
    sql_clientescest: TIntegerField;
    sql_clientescep: TStringField;
    sql_clientesim: TStringField;
    sql_clientesobs: TMemoField;
    sql_clientesctransp: TIntegerField;
    sql_clientesid: TIntegerField;
    sql_rcservcodigo: TIntegerField;
    sql_rcservdescricao: TStringField;
    sql_rcservsigla: TStringField;
    sql_rcservid: TIntegerField;
    sql_emitentecodigo: TIntegerField;
    sql_emitentenome: TStringField;
    sql_emitentefantasia: TStringField;
    sql_emitentecnpj: TStringField;
    sql_emitentetelefones: TStringField;
    sql_emitenteie: TStringField;
    sql_emitenteemail: TStringField;
    sql_emitentesite: TStringField;
    sql_emitentecontato: TStringField;
    sql_emitenteendereco: TStringField;
    sql_emitentenro: TStringField;
    sql_emitentecompl: TStringField;
    sql_emitentebairro: TStringField;
    sql_emitentecmun: TIntegerField;
    sql_emitentecest: TIntegerField;
    sql_emitentecep: TStringField;
    sql_emitenteim: TStringField;
    sql_emitenteobs: TMemoField;
    sql_emitentecregtrib: TIntegerField;
    sql_emitenteid: TIntegerField;
    sql_fornecedorescodigo: TIntegerField;
    sql_fornecedoresnome: TStringField;
    sql_fornecedoresfantasia: TStringField;
    sql_fornecedorescnpj: TStringField;
    sql_fornecedorestelefones: TStringField;
    sql_fornecedoresie: TStringField;
    sql_fornecedoresemail: TStringField;
    sql_fornecedoressite: TStringField;
    sql_fornecedorescontato: TStringField;
    sql_fornecedoresendereco: TStringField;
    sql_fornecedoresnro: TStringField;
    sql_fornecedorescompl: TStringField;
    sql_fornecedoresbairro: TStringField;
    sql_fornecedorescmun: TIntegerField;
    sql_fornecedorescest: TIntegerField;
    sql_fornecedorescep: TStringField;
    sql_fornecedoresim: TStringField;
    sql_fornecedoresobs: TMemoField;
    sql_fornecedoresctransp: TIntegerField;
    sql_fornecedoresid: TIntegerField;
    sql_transportadorcodigo: TIntegerField;
    sql_transportadornome: TStringField;
    sql_transportadorfantasia: TStringField;
    sql_transportadorcnpj: TStringField;
    sql_transportadortelefones: TStringField;
    sql_transportadorie: TStringField;
    sql_transportadoremail: TStringField;
    sql_transportadorsite: TStringField;
    sql_transportadorcontato: TStringField;
    sql_transportadorendereco: TStringField;
    sql_transportadornro: TStringField;
    sql_transportadorcompl: TStringField;
    sql_transportadorbairro: TStringField;
    sql_transportadorcmun: TIntegerField;
    sql_transportadorcest: TIntegerField;
    sql_transportadorcep: TStringField;
    sql_transportadorim: TStringField;
    sql_transportadorid: TIntegerField;
    sql_tiponfcodigo: TIntegerField;
    sql_tiponfnome: TStringField;
    sql_tiponfsigla: TStringField;
    sql_tiponfid: TIntegerField;
    sql_duplicatacodigo: TIntegerField;
    sql_duplicatandup: TStringField;
    sql_duplicatadtv: TDateField;
    sql_duplicatavdup: TFloatField;
    sql_duplicatacnf: TIntegerField;
    sql_duplicataprazo: TIntegerField;
    sql_duplicatadte: TDateField;
    sql_duplicataid: TIntegerField;
    sql_nfscodigo: TIntegerField;
    sql_nfscdesc: TIntegerField;
    sql_nfsndesc: TStringField;
    sql_nfsqtde: TFloatField;
    sql_nfsprve: TFloatField;
    sql_nfssubtotal: TFloatField;
    sql_nfscnf: TIntegerField;
    sql_nfscod1servnf: TIntegerField;
    sql_nfscod2servnf: TIntegerField;
    sql_nfscod3servnf: TIntegerField;
    sql_nfscod4servnf: TIntegerField;
    sql_nfscod5servnf: TIntegerField;
    sql_nfscod6servnf: TIntegerField;
    sql_nfscod7servnf: TIntegerField;
    sql_nfscod8servnf: TIntegerField;
    sql_nfscod9servnf: TIntegerField;
    sql_nfscod10servnf: TIntegerField;
    sql_nfscod11servnf: TIntegerField;
    sql_nfscod12servnf: TIntegerField;
    sql_nfscod13servnf: TIntegerField;
    sql_nfscod14servnf: TIntegerField;
    sql_nfscnfe: TIntegerField;
    sql_nfsid: TIntegerField;
    sql_nfpcpro: TIntegerField;
    sql_nfpnpro: TStringField;
    sql_nfpqtde: TFloatField;
    sql_nfpprve: TFloatField;
    sql_nfpsubtotal: TFloatField;
    sql_nfpcnf: TIntegerField;
    sql_nfpcod1prodnf: TIntegerField;
    sql_nfpcod2prodnf: TIntegerField;
    sql_nfpcod3prodnf: TIntegerField;
    sql_nfpcod4prodnf: TIntegerField;
    sql_nfpcod5prodnf: TIntegerField;
    sql_nfpcod6prodnf: TIntegerField;
    sql_nfpcod7prodnf: TIntegerField;
    sql_nfpcod8prodnf: TIntegerField;
    sql_nfpcod9prodnf: TIntegerField;
    sql_nfpcod10prodnf: TIntegerField;
    sql_nfpcod11prodnf: TIntegerField;
    sql_nfpcod12prodnf: TIntegerField;
    sql_nfpcod13prodnf: TIntegerField;
    sql_nfpcod14prodnf: TIntegerField;
    sql_nfpcompoetnf: TStringField;
    sql_nfpbscalcst: TFloatField;
    sql_nfpicmscalcst: TFloatField;
    sql_nfpcnfe: TIntegerField;
    sql_nfpcaux: TStringField;
    sql_nfpcbar: TStringField;
    sql_nfpsimplesncm: TStringField;
    sql_nfpid: TIntegerField;
    sql_nfcodigo: TIntegerField;
    sql_nfcemi: TIntegerField;
    sql_nfcdest: TIntegerField;
    sql_nftipodest: TStringField;
    sql_nfdatacad: TDateField;
    sql_nfctipoemi: TIntegerField;
    sql_nfncupom: TStringField;
    sql_nfvlrcredicms: TFloatField;
    sql_nfaliqcredicms: TFloatField;
    sql_nfvlrreticms: TFloatField;
    sql_nfaliqreticms: TFloatField;
    sql_nfartricms: TStringField;
    sql_nfnnfrefdevol: TStringField;
    sql_nfdatanfrefdevol: TDateField;
    sql_nfdatacupom: TDateField;
    sql_nfaliqapicms: TFloatField;
    sql_nfvlrcredipi: TFloatField;
    sql_nfaliqcredipi: TFloatField;
    sql_nfvlrretipi: TFloatField;
    sql_nfaliqretipi: TFloatField;
    sql_nfartripi: TStringField;
    sql_nfaliqapipi: TFloatField;
    sql_nfcnatop: TIntegerField;
    sql_nfhorasai: TStringField;
    sql_nfdatasai: TDateTimeField;
    sql_nfnnf: TIntegerField;
    sql_nfpdesc: TFloatField;
    sql_nfvaldesc: TFloatField;
    sql_nfliquido: TFloatField;
    sql_nfnparc: TIntegerField;
    sql_nfdatainic: TDateTimeField;
    sql_nfperiodo: TIntegerField;
    sql_nfdin: TFloatField;
    sql_nfplacavei: TStringField;
    sql_nfufvei: TStringField;
    sql_nfquantidade: TStringField;
    sql_nfespecie: TStringField;
    sql_nfmarca: TStringField;
    sql_nfnumero: TStringField;
    sql_nfpesob: TStringField;
    sql_nfpesol: TStringField;
    sql_nfiesubtrib: TFloatField;
    sql_nfbscalcsubstrib: TFloatField;
    sql_nfvlricmssubtrib: TFloatField;
    sql_nftvlrfrete: TFloatField;
    sql_nftvlrout: TFloatField;
    sql_nftvlrseg: TFloatField;
    sql_nfbscalcsubtrib: TFloatField;
    sql_nfctiponf: TIntegerField;
    sql_nfcfreteporconta: TIntegerField;
    sql_nfctransp: TIntegerField;
    sql_nfid: TIntegerField;
    sql_sitbcodigo: TIntegerField;
    sql_sitbdescricao: TStringField;
    sql_sitbsigla: TStringField;
    sql_sitbid: TIntegerField;
    dsp_impostoIII: TDataSetProvider;
    dsp_tiposerv: TDataSetProvider;
    dsp_regtrib: TDataSetProvider;
    dsp_indice: TDataSetProvider;
    dsp_fatura: TDataSetProvider;
    dsp_cf: TDataSetProvider;
    dsp_pis: TDataSetProvider;
    dsp_Munic: TDataSetProvider;
    dsp_modbc: TDataSetProvider;
    dsp_cofins: TDataSetProvider;
    dsp_unidade: TDataSetProvider;
    dsp_clientes: TDataSetProvider;
    dsp_rcserv: TDataSetProvider;
    dsp_emitente: TDataSetProvider;
    dsp_nfe: TDataSetProvider;
    dsp_duplicata: TDataSetProvider;
    dsp_nfs: TDataSetProvider;
    dsp_modbcst: TDataSetProvider;
    dsp_nfep: TDataSetProvider;
    dsp_icms: TDataSetProvider;
    dsp_cfop: TDataSetProvider;
    dsp_nfp: TDataSetProvider;
    dsp_fornecedores: TDataSetProvider;
    dsp_sita: TDataSetProvider;
    dsp_ipi: TDataSetProvider;
    dsp_impostoI: TDataSetProvider;
    dsp_natop: TDataSetProvider;
    dsp_tgicms: TDataSetProvider;
    dsp_transportador: TDataSetProvider;
    dsp_nf: TDataSetProvider;
    dsp_csosn: TDataSetProvider;
    dsp_cupom: TDataSetProvider;
    dsp_tipopgto: TDataSetProvider;
    dsp_estados: TDataSetProvider;
    dsp_onusdofrete: TDataSetProvider;
    dsp_tiponf: TDataSetProvider;
    dsp_sitb: TDataSetProvider;
    dsp_cmobra: TDataSetProvider;
    cds_impostoIIcodigo: TIntegerField;
    cds_impostoIIdescricao: TStringField;
    cds_impostoIIsigla: TStringField;
    cds_impostoIIaliquota: TFloatField;
    cds_impostoIIreducao: TFloatField;
    cds_impostoIIid: TIntegerField;
    cds_impostoIIIcodigo: TIntegerField;
    cds_impostoIIIdescricao: TStringField;
    cds_impostoIIIsigla: TStringField;
    cds_impostoIIIaliquota: TFloatField;
    cds_impostoIIIreducao: TFloatField;
    cds_impostoIIIid: TIntegerField;
    cds_tiposervcodigo: TIntegerField;
    cds_tiposervdescricao: TStringField;
    cds_tiposervsigla: TStringField;
    cds_tiposervid: TIntegerField;
    cds_regtribcodigo: TIntegerField;
    cds_regtribnome: TStringField;
    cds_regtribsigla: TStringField;
    cds_regtribobs: TMemoField;
    cds_regtribid: TIntegerField;
    cds_indicecodigo: TIntegerField;
    cds_indicecaminhoarqnfe: TStringField;
    cds_indicennf: TIntegerField;
    cds_indicecaminhoarqnfetemp: TStringField;
    cds_indicecontadornfe: TIntegerField;
    cds_indicechaveconsultacep: TStringField;
    cds_indiceimportarpara: TStringField;
    cds_indiceexportarpara: TStringField;
    cds_indiceconfigcpro: TIntegerField;
    cds_indicehverao: TStringField;
    cds_indiceid: TIntegerField;
    cds_faturacodigo: TIntegerField;
    cds_faturacnf: TIntegerField;
    cds_faturactipopgto: TIntegerField;
    cds_faturanfat: TStringField;
    cds_faturavorig: TFloatField;
    cds_faturavdesc: TFloatField;
    cds_faturavliq: TFloatField;
    cds_faturapdesc: TFloatField;
    cds_faturaid: TIntegerField;
    cds_cfcodigo: TIntegerField;
    cds_cfdescricao: TStringField;
    cds_cfsigla: TStringField;
    cds_cfid: TIntegerField;
    cds_piscodigo: TIntegerField;
    cds_pisdescricao: TStringField;
    cds_pissigla: TStringField;
    cds_pisaliquota: TFloatField;
    cds_pisreducao: TFloatField;
    cds_piscpadrao: TIntegerField;
    cds_pisid: TIntegerField;
    cds_Municcodigo: TIntegerField;
    cds_Municnome: TStringField;
    cds_Municcodibge: TStringField;
    cds_Municcest: TIntegerField;
    cds_Municfxinicial: TIntegerField;
    cds_Municfxfinal: TIntegerField;
    cds_Municid: TIntegerField;
    cds_modbccodigo: TIntegerField;
    cds_modbcdescricao: TStringField;
    cds_modbcsigla: TStringField;
    cds_modbcid: TIntegerField;
    cds_cofinscodigo: TIntegerField;
    cds_cofinsdescricao: TStringField;
    cds_cofinssigla: TStringField;
    cds_cofinsaliquota: TFloatField;
    cds_cofinsreducao: TFloatField;
    cds_cofinscpadrao: TIntegerField;
    cds_cofinsid: TIntegerField;
    cds_unidadecodigo: TIntegerField;
    cds_unidadedescricao: TStringField;
    cds_unidadesigla: TStringField;
    cds_unidadeid: TIntegerField;
    cds_clientesnome: TStringField;
    cds_clientesfantasia: TStringField;
    cds_clientescnpj: TStringField;
    cds_clientestelefones: TStringField;
    cds_clientesie: TStringField;
    cds_clientesemail: TStringField;
    cds_clientessite: TStringField;
    cds_clientescontato: TStringField;
    cds_clientesendereco: TStringField;
    cds_clientesnro: TStringField;
    cds_clientescompl: TStringField;
    cds_clientesbairro: TStringField;
    cds_clientescmun: TIntegerField;
    cds_clientescest: TIntegerField;
    cds_clientescep: TStringField;
    cds_clientesim: TStringField;
    cds_clientesobs: TMemoField;
    cds_clientesctransp: TIntegerField;
    cds_clientesid: TIntegerField;
    cds_rcservcodigo: TIntegerField;
    cds_rcservdescricao: TStringField;
    cds_rcservsigla: TStringField;
    cds_rcservid: TIntegerField;
    cds_emitentecodigo: TIntegerField;
    cds_emitentenome: TStringField;
    cds_emitentefantasia: TStringField;
    cds_emitentecnpj: TStringField;
    cds_emitentetelefones: TStringField;
    cds_emitenteie: TStringField;
    cds_emitenteemail: TStringField;
    cds_emitentesite: TStringField;
    cds_emitentecontato: TStringField;
    cds_emitenteendereco: TStringField;
    cds_emitentenro: TStringField;
    cds_emitentecompl: TStringField;
    cds_emitentebairro: TStringField;
    cds_emitentecmun: TIntegerField;
    cds_emitentecest: TIntegerField;
    cds_emitentecep: TStringField;
    cds_emitenteim: TStringField;
    cds_emitenteobs: TMemoField;
    cds_emitentecregtrib: TIntegerField;
    cds_emitenteid: TIntegerField;
    cds_duplicatacodigo: TIntegerField;
    cds_duplicatandup: TStringField;
    cds_duplicatadtv: TDateField;
    cds_duplicatavdup: TFloatField;
    cds_duplicatacnf: TIntegerField;
    cds_duplicataprazo: TIntegerField;
    cds_duplicatadte: TDateField;
    cds_duplicataid: TIntegerField;
    cds_nfscodigo: TIntegerField;
    cds_nfscdesc: TIntegerField;
    cds_nfsndesc: TStringField;
    cds_nfsqtde: TFloatField;
    cds_nfsprve: TFloatField;
    cds_nfssubtotal: TFloatField;
    cds_nfscnf: TIntegerField;
    cds_nfscod1servnf: TIntegerField;
    cds_nfscod2servnf: TIntegerField;
    cds_nfscod3servnf: TIntegerField;
    cds_nfscod4servnf: TIntegerField;
    cds_nfscod5servnf: TIntegerField;
    cds_nfscod6servnf: TIntegerField;
    cds_nfscod7servnf: TIntegerField;
    cds_nfscod8servnf: TIntegerField;
    cds_nfscod9servnf: TIntegerField;
    cds_nfscod10servnf: TIntegerField;
    cds_nfscod11servnf: TIntegerField;
    cds_nfscod12servnf: TIntegerField;
    cds_nfscod13servnf: TIntegerField;
    cds_nfscod14servnf: TIntegerField;
    cds_nfscnfe: TIntegerField;
    cds_nfsid: TIntegerField;
    cds_modbcstcodigo: TIntegerField;
    cds_modbcstdescricao: TStringField;
    cds_modbcstsigla: TStringField;
    cds_modbcstid: TIntegerField;
    cds_nfepcodigo: TIntegerField;
    cds_nfepcpro: TIntegerField;
    cds_nfepnpro: TStringField;
    cds_nfepqtde: TFloatField;
    cds_nfepprve: TFloatField;
    cds_nfepsubtotal: TFloatField;
    cds_nfepcnf: TIntegerField;
    cds_nfepcod1prodnf: TIntegerField;
    cds_nfepcod2prodnf: TIntegerField;
    cds_nfepcod3prodnf: TIntegerField;
    cds_nfepcod4prodnf: TIntegerField;
    cds_nfepcod5prodnf: TIntegerField;
    cds_nfepcod6prodnf: TIntegerField;
    cds_nfepcod7prodnf: TIntegerField;
    cds_nfepcod8prodnf: TIntegerField;
    cds_nfepcod9prodnf: TIntegerField;
    cds_nfepcod10prodnf: TIntegerField;
    cds_nfepcod12prodnf: TIntegerField;
    cds_nfepcod13prodnf: TIntegerField;
    cds_nfepcod14prodnf: TIntegerField;
    cds_nfepcnfe: TIntegerField;
    cds_nfeppdesc: TFloatField;
    cds_nfepvdesc: TFloatField;
    cds_nfepbsicms: TFloatField;
    cds_nfepaliqicms: TFloatField;
    cds_nfepvicms: TFloatField;
    cds_nfepbsipi: TFloatField;
    cds_nfepaliqipi: TFloatField;
    cds_nfepvipi: TFloatField;
    cds_nfepaliqredbcicms: TFloatField;
    cds_nfepcompoetnf: TStringField;
    cds_nfepbscalcst: TFloatField;
    cds_nfepicmscalcst: TFloatField;
    cds_nfepcaux: TStringField;
    cds_nfepcbar: TStringField;
    cds_nfepid: TIntegerField;
    cds_icmscodigo: TIntegerField;
    cds_icmsdescricao: TStringField;
    cds_icmssigla: TStringField;
    cds_icmscest: TIntegerField;
    cds_icmsaliquota: TFloatField;
    cds_icmsreducao: TFloatField;
    cds_icmscsitb: TIntegerField;
    cds_icmsccfop: TIntegerField;
    cds_icmsccfopf: TIntegerField;
    cds_icmsobs: TMemoField;
    cds_icmsccsosn: TIntegerField;
    cds_icmsid: TIntegerField;
    cds_cfopcodigo: TIntegerField;
    cds_cfopdescricao: TStringField;
    cds_cfopsigla: TStringField;
    cds_cfopctipo: TIntegerField;
    cds_cfopccupom: TIntegerField;
    cds_cfopctipoest: TIntegerField;
    cds_cfopcsitb: TIntegerField;
    cds_cfopcicms: TIntegerField;
    cds_cfopobs: TMemoField;
    cds_cfopcpadrao: TIntegerField;
    cds_cfopccsosn: TIntegerField;
    cds_cfopaplicaliqfat: TStringField;
    cds_cfopcipi: TIntegerField;
    cds_cfopcpis: TIntegerField;
    cds_cfopccofins: TIntegerField;
    cds_cfopid: TIntegerField;
    cds_nfpcpro: TIntegerField;
    cds_nfpnpro: TStringField;
    cds_nfpqtde: TFloatField;
    cds_nfpprve: TFloatField;
    cds_nfpsubtotal: TFloatField;
    cds_nfpcnf: TIntegerField;
    cds_nfpcod1prodnf: TIntegerField;
    cds_nfpcod2prodnf: TIntegerField;
    cds_nfpcod3prodnf: TIntegerField;
    cds_nfpcod4prodnf: TIntegerField;
    cds_nfpcod5prodnf: TIntegerField;
    cds_nfpcod6prodnf: TIntegerField;
    cds_nfpcod7prodnf: TIntegerField;
    cds_nfpcod8prodnf: TIntegerField;
    cds_nfpcod9prodnf: TIntegerField;
    cds_nfpcod10prodnf: TIntegerField;
    cds_nfpcod11prodnf: TIntegerField;
    cds_nfpcod12prodnf: TIntegerField;
    cds_nfpcod13prodnf: TIntegerField;
    cds_nfpcod14prodnf: TIntegerField;
    cds_nfpcompoetnf: TStringField;
    cds_nfpbscalcst: TFloatField;
    cds_nfpicmscalcst: TFloatField;
    cds_nfpcnfe: TIntegerField;
    cds_nfpcaux: TStringField;
    cds_nfpcbar: TStringField;
    cds_nfpsimplesncm: TStringField;
    cds_nfpid: TIntegerField;
    cds_fornecedorescodigo: TIntegerField;
    cds_fornecedoresnome: TStringField;
    cds_fornecedoresfantasia: TStringField;
    cds_fornecedorescnpj: TStringField;
    cds_fornecedorestelefones: TStringField;
    cds_fornecedoresie: TStringField;
    cds_fornecedoresemail: TStringField;
    cds_fornecedoressite: TStringField;
    cds_fornecedorescontato: TStringField;
    cds_fornecedoresendereco: TStringField;
    cds_fornecedoresnro: TStringField;
    cds_fornecedorescompl: TStringField;
    cds_fornecedoresbairro: TStringField;
    cds_fornecedorescmun: TIntegerField;
    cds_fornecedorescest: TIntegerField;
    cds_fornecedorescep: TStringField;
    cds_fornecedoresim: TStringField;
    cds_fornecedoresobs: TMemoField;
    cds_fornecedoresctransp: TIntegerField;
    cds_fornecedoresid: TIntegerField;
    cds_sitacodigo: TIntegerField;
    cds_sitadescricao: TStringField;
    cds_sitasigla: TStringField;
    cds_sitacpadrao: TIntegerField;
    cds_sitaid: TIntegerField;
    cds_ipicodigo: TIntegerField;
    cds_ipidescricao: TStringField;
    cds_ipisigla: TStringField;
    cds_ipialiquota: TFloatField;
    cds_ipireducao: TFloatField;
    cds_ipiid: TIntegerField;
    cds_ipicpadrao: TIntegerField;
    cds_impostoIcodigo: TIntegerField;
    cds_impostoIdescricao: TStringField;
    cds_impostoIsigla: TStringField;
    cds_impostoIaliquota: TFloatField;
    cds_impostoIreducao: TFloatField;
    cds_impostoIid: TIntegerField;
    cds_natopcodigo: TIntegerField;
    cds_natopdescricao: TStringField;
    cds_natopccfop: TIntegerField;
    cds_natopccfopf: TIntegerField;
    cds_natopcicms: TIntegerField;
    cds_natopid: TIntegerField;
    cds_tgicmscodigo: TIntegerField;
    cds_tgicmsdescricao: TStringField;
    cds_tgicmscsitb: TIntegerField;
    cds_tgicmstabref: TStringField;
    cds_tgicmscamporef: TStringField;
    cds_tgicmsid: TIntegerField;
    cds_transportadorcodigo: TIntegerField;
    cds_transportadornome: TStringField;
    cds_transportadorfantasia: TStringField;
    cds_transportadorcnpj: TStringField;
    cds_transportadortelefones: TStringField;
    cds_transportadorie: TStringField;
    cds_transportadoremail: TStringField;
    cds_transportadorsite: TStringField;
    cds_transportadorcontato: TStringField;
    cds_transportadorendereco: TStringField;
    cds_transportadornro: TStringField;
    cds_transportadorcompl: TStringField;
    cds_transportadorbairro: TStringField;
    cds_transportadorcmun: TIntegerField;
    cds_transportadorcest: TIntegerField;
    cds_transportadorcep: TStringField;
    cds_transportadorim: TStringField;
    cds_transportadorid: TIntegerField;
    cds_nfcodigo: TIntegerField;
    cds_nfcemi: TIntegerField;
    cds_nfcdest: TIntegerField;
    cds_nftipodest: TStringField;
    cds_nfdatacad: TDateField;
    cds_nfctipoemi: TIntegerField;
    cds_nfncupom: TStringField;
    cds_nfvlrcredicms: TFloatField;
    cds_nfaliqcredicms: TFloatField;
    cds_nfvlrreticms: TFloatField;
    cds_nfaliqreticms: TFloatField;
    cds_nfartricms: TStringField;
    cds_nfnnfrefdevol: TStringField;
    cds_nfdatanfrefdevol: TDateField;
    cds_nfdatacupom: TDateField;
    cds_nfaliqapicms: TFloatField;
    cds_nfvlrcredipi: TFloatField;
    cds_nfaliqcredipi: TFloatField;
    cds_nfvlrretipi: TFloatField;
    cds_nfaliqretipi: TFloatField;
    cds_nfartripi: TStringField;
    cds_nfaliqapipi: TFloatField;
    cds_nfcnatop: TIntegerField;
    cds_nfhorasai: TStringField;
    cds_nfdatasai: TDateTimeField;
    cds_nfnnf: TIntegerField;
    cds_nfpdesc: TFloatField;
    cds_nfvaldesc: TFloatField;
    cds_nfliquido: TFloatField;
    cds_nfnparc: TIntegerField;
    cds_nfdatainic: TDateTimeField;
    cds_nfperiodo: TIntegerField;
    cds_nfdin: TFloatField;
    cds_nfplacavei: TStringField;
    cds_nfufvei: TStringField;
    cds_nfquantidade: TStringField;
    cds_nfespecie: TStringField;
    cds_nfmarca: TStringField;
    cds_nfnumero: TStringField;
    cds_nfpesob: TStringField;
    cds_nfpesol: TStringField;
    cds_nfiesubtrib: TFloatField;
    cds_nfbscalcsubstrib: TFloatField;
    cds_nfvlricmssubtrib: TFloatField;
    cds_nftvlrfrete: TFloatField;
    cds_nftvlrout: TFloatField;
    cds_nftvlrseg: TFloatField;
    cds_nfbscalcsubtrib: TFloatField;
    cds_nfctiponf: TIntegerField;
    cds_nfcfreteporconta: TIntegerField;
    cds_nfctransp: TIntegerField;
    cds_nfid: TIntegerField;
    cds_csosncodigo: TIntegerField;
    cds_csosndescricao: TStringField;
    cds_csosnsigla: TStringField;
    cds_csosnid: TIntegerField;
    cds_cupomcodigo: TIntegerField;
    cds_cupomdte: TDateField;
    cds_cupomcoo: TStringField;
    cds_cupomcaixa: TStringField;
    cds_cupomserieecf: TStringField;
    cds_cupomcnf: TIntegerField;
    cds_cupommodelo: TStringField;
    cds_cupomid: TIntegerField;
    cds_tipopgtocodigo: TIntegerField;
    cds_tipopgtodescricao: TStringField;
    cds_tipopgtoehvd: TStringField;
    cds_tipopgtoid: TIntegerField;
    cds_Estadoscodigo: TIntegerField;
    cds_Estadosnome: TStringField;
    cds_Estadossigla: TStringField;
    cds_Estadoscodibge: TIntegerField;
    cds_Estadoscpais: TIntegerField;
    cds_Estadosid: TIntegerField;
    cds_onusdofretecodigo: TIntegerField;
    cds_onusdofretenome: TStringField;
    cds_onusdofretesigla: TStringField;
    cds_onusdofreteid: TIntegerField;
    cds_tiponfcodigo: TIntegerField;
    cds_tiponfnome: TStringField;
    cds_tiponfsigla: TStringField;
    cds_tiponfid: TIntegerField;
    cds_sitbcodigo: TIntegerField;
    cds_sitbdescricao: TStringField;
    cds_sitbsigla: TStringField;
    cds_sitbid: TIntegerField;
    cds_cmobracodigo: TIntegerField;
    cds_cmobradescricao: TStringField;
    cds_cmobraprve: TFloatField;
    cds_cmobracrcserv: TIntegerField;
    cds_cmobractiposerv: TIntegerField;
    cds_cmobracimpostoi: TIntegerField;
    cds_cmobraid: TIntegerField;
    sql_nfecodigo: TIntegerField;
    sql_nfecemi: TIntegerField;
    sql_nfecdest: TIntegerField;
    sql_nfetipodest: TStringField;
    sql_nfectransp: TIntegerField;
    sql_nfepdesc: TFloatField;
    sql_nfevdesc: TFloatField;
    sql_nfetotal: TFloatField;
    sql_nfecnatop: TIntegerField;
    sql_nfebscalcsubtrib: TFloatField;
    sql_nfevlricmssubtrib: TFloatField;
    sql_nfeplacavei: TStringField;
    sql_nfeufvei: TStringField;
    sql_nfedatasai: TDateField;
    sql_nfehorasai: TTimeField;
    sql_nfequantidade: TStringField;
    sql_nfeespecie: TStringField;
    sql_nfemarca: TStringField;
    sql_nfenumero: TStringField;
    sql_nfepesob: TStringField;
    sql_nfepesol: TStringField;
    sql_nfeadicnf: TMemoField;
    sql_nfeadicpostofiscal: TMemoField;
    sql_nfectiponf: TIntegerField;
    sql_nfecfreteporconta: TIntegerField;
    sql_nfennf: TIntegerField;
    sql_nfeliquido: TFloatField;
    sql_nfetvlrfrete: TFloatField;
    sql_nfetvlrseg: TFloatField;
    sql_nfetvlrout: TFloatField;
    sql_nfetvlrvii: TFloatField;
    sql_nfetvlripi: TFloatField;
    sql_nfetvlrpis: TFloatField;
    sql_nfetvlrcofins: TFloatField;
    sql_nfedataemi: TDateField;
    sql_nfeiesubstrib: TStringField;
    sql_nfemodelonf: TStringField;
    sql_nfeserienf: TStringField;
    sql_nfecodigonf: TStringField;
    sql_nfetiponf: TStringField;
    sql_nfefinalidadenf: TStringField;
    sql_nfeformapgtonf: TStringField;
    sql_nfecuftransp: TIntegerField;
    sql_nfevlrserv: TFloatField;
    sql_nfevlrbsserv: TFloatField;
    sql_nfealiqserv: TFloatField;
    sql_nfevlriss: TFloatField;
    sql_nfebcipi: TFloatField;
    sql_nfealiqipi: TFloatField;
    sql_nfevipi: TFloatField;
    sql_nfecpis: TIntegerField;
    sql_nfenpis: TStringField;
    sql_nfebcpis: TFloatField;
    sql_nfevpis: TFloatField;
    sql_nfealiqpis: TFloatField;
    sql_nfeccofins: TIntegerField;
    sql_nfencofins: TStringField;
    sql_nfebscofins: TFloatField;
    sql_nfealiqcofins: TFloatField;
    sql_nfevcofins: TFloatField;
    sql_nfetotbcicms: TFloatField;
    sql_nfetoticms: TFloatField;
    sql_nfetotp: TFloatField;
    sql_nfevlrdesc: TFloatField;
    sql_nfetotipi: TFloatField;
    sql_nfevlrpis: TFloatField;
    sql_nfevlrcofins: TFloatField;
    sql_nfevlrtotal: TFloatField;
    sql_nfeccfoptrans: TIntegerField;
    sql_nfecidadecodtrans: TIntegerField;
    sql_nfeufplacavei: TStringField;
    sql_nferntc: TStringField;
    sql_nfearquivonfe: TStringField;
    sql_nfecnf: TIntegerField;
    sql_nfecontador: TIntegerField;
    sql_nfeicorrecao: TIntegerField;
    sql_nfeehcancelada: TStringField;
    sql_nfeehcorrigida: TStringField;
    sql_nfeehsucesso: TStringField;
    sql_nfeid: TIntegerField;
    cds_nfecodigo: TIntegerField;
    cds_nfecemi: TIntegerField;
    cds_nfecdest: TIntegerField;
    cds_nfetipodest: TStringField;
    cds_nfectransp: TIntegerField;
    cds_nfepdesc: TFloatField;
    cds_nfevdesc: TFloatField;
    cds_nfetotal: TFloatField;
    cds_nfecnatop: TIntegerField;
    cds_nfebscalcsubtrib: TFloatField;
    cds_nfevlricmssubtrib: TFloatField;
    cds_nfeplacavei: TStringField;
    cds_nfeufvei: TStringField;
    cds_nfedatasai: TDateField;
    cds_nfehorasai: TTimeField;
    cds_nfequantidade: TStringField;
    cds_nfeespecie: TStringField;
    cds_nfemarca: TStringField;
    cds_nfenumero: TStringField;
    cds_nfepesob: TStringField;
    cds_nfepesol: TStringField;
    cds_nfeadicnf: TMemoField;
    cds_nfeadicpostofiscal: TMemoField;
    cds_nfectiponf: TIntegerField;
    cds_nfecfreteporconta: TIntegerField;
    cds_nfennf: TIntegerField;
    cds_nfeliquido: TFloatField;
    cds_nfetvlrfrete: TFloatField;
    cds_nfetvlrseg: TFloatField;
    cds_nfetvlrout: TFloatField;
    cds_nfetvlrvii: TFloatField;
    cds_nfetvlripi: TFloatField;
    cds_nfetvlrpis: TFloatField;
    cds_nfetvlrcofins: TFloatField;
    cds_nfedataemi: TDateField;
    cds_nfeiesubstrib: TStringField;
    cds_nfemodelonf: TStringField;
    cds_nfeserienf: TStringField;
    cds_nfecodigonf: TStringField;
    cds_nfetiponf: TStringField;
    cds_nfefinalidadenf: TStringField;
    cds_nfeformapgtonf: TStringField;
    cds_nfecuftransp: TIntegerField;
    cds_nfevlrserv: TFloatField;
    cds_nfevlrbsserv: TFloatField;
    cds_nfealiqserv: TFloatField;
    cds_nfevlriss: TFloatField;
    cds_nfebcipi: TFloatField;
    cds_nfealiqipi: TFloatField;
    cds_nfevipi: TFloatField;
    cds_nfecpis: TIntegerField;
    cds_nfenpis: TStringField;
    cds_nfebcpis: TFloatField;
    cds_nfevpis: TFloatField;
    cds_nfealiqpis: TFloatField;
    cds_nfeccofins: TIntegerField;
    cds_nfencofins: TStringField;
    cds_nfebscofins: TFloatField;
    cds_nfealiqcofins: TFloatField;
    cds_nfevcofins: TFloatField;
    cds_nfetotbcicms: TFloatField;
    cds_nfetoticms: TFloatField;
    cds_nfetotp: TFloatField;
    cds_nfevlrdesc: TFloatField;
    cds_nfetotipi: TFloatField;
    cds_nfevlrpis: TFloatField;
    cds_nfevlrcofins: TFloatField;
    cds_nfevlrtotal: TFloatField;
    cds_nfeccfoptrans: TIntegerField;
    cds_nfecidadecodtrans: TIntegerField;
    cds_nfeufplacavei: TStringField;
    cds_nferntc: TStringField;
    cds_nfearquivonfe: TStringField;
    cds_nfecnf: TIntegerField;
    cds_nfecontador: TIntegerField;
    cds_nfeicorrecao: TIntegerField;
    cds_nfeehcancelada: TStringField;
    cds_nfeehcorrigida: TStringField;
    cds_nfeehsucesso: TStringField;
    cds_nfeid: TIntegerField;
    cds_nfnomedest: TStringField;
    cds_nfenomedest: TStringField;
    cds_Tempcod1: TIntegerField;
    sql_ibpt: TZQuery;
    cds_ibpt: TClientDataSet;
    dts_ibpt: TDataSource;
    dsp_ibpt: TDataSetProvider;
    sql_sitbcregime: TIntegerField;
    sql_sitbnregime: TStringField;
    cds_sitbcregime: TIntegerField;
    cds_sitbnregime: TStringField;
    sql_regtribporcg: TFloatField;
    cds_regtribporcg: TFloatField;
    sql_nfendest: TStringField;
    cds_nfendest: TStringField;
    cds_nfpnomeunidade: TStringField;
    sql_aliqinter: TZQuery;
    sql_ibptEX: TStringField;
    sql_ibptTABELA: TIntegerField;
    sql_ibptALIQNAC: TFloatField;
    sql_ibptALIQIMP: TFloatField;
    sql_ibptVERSAO: TStringField;
    sql_ibptid: TIntegerField;
    sql_aliqinterCODIGO: TIntegerField;
    sql_aliqinterCODEST: TIntegerField;
    sql_aliqinterCODPROD: TIntegerField;
    sql_aliqinterALIQ: TFloatField;
    sql_aliqinterIVA: TFloatField;
    sql_aliqinterID: TIntegerField;
    cds_aliqinter: TClientDataSet;
    dts_aliqinter: TDataSource;
    dsp_aliqinter: TDataSetProvider;
    sql_Estadosconvst: TStringField;
    sql_aliqinterST: TStringField;
    cds_aliqinterCODIGO: TIntegerField;
    cds_aliqinterCODEST: TIntegerField;
    cds_aliqinterCODPROD: TIntegerField;
    cds_aliqinterALIQ: TFloatField;
    cds_aliqinterIVA: TFloatField;
    cds_aliqinterID: TIntegerField;
    cds_aliqinterST: TStringField;
    cds_Estadosconvst: TStringField;
    sql_ibptCODNCMNBS: TStringField;
    cds_ibptEX: TStringField;
    cds_ibptTABELA: TIntegerField;
    cds_ibptALIQNAC: TFloatField;
    cds_ibptALIQIMP: TFloatField;
    cds_ibptVERSAO: TStringField;
    cds_ibptid: TIntegerField;
    cds_ibptCODNCMNBS: TStringField;
    cds_aliqintersiglaestado: TStringField;
    sql_cfopcalciva: TStringField;
    cds_cfopcalciva: TStringField;
    sql_produtos: TZQuery;
    dsp_produtos: TDataSetProvider;
    sql_produtoscodigo: TIntegerField;
    sql_produtosdescricao: TStringField;
    sql_produtoscund: TIntegerField;
    sql_produtosprve: TFloatField;
    sql_produtoscbar: TStringField;
    sql_produtosbscalcst: TFloatField;
    sql_produtosicmscalcst: TFloatField;
    sql_produtoscompoetnf: TStringField;
    sql_produtoscicms: TIntegerField;
    sql_produtoscipi: TIntegerField;
    sql_produtoscsita: TIntegerField;
    sql_produtoscsitb: TIntegerField;
    sql_produtosccfncm: TIntegerField;
    sql_produtoscmodbscalc: TIntegerField;
    sql_produtoscmodbscalcst: TIntegerField;
    sql_produtoscvii: TIntegerField;
    sql_produtoscpis: TIntegerField;
    sql_produtosccofins: TIntegerField;
    sql_produtoscoimp: TIntegerField;
    sql_produtosccfop: TIntegerField;
    sql_produtoscaux: TStringField;
    sql_produtosccsosn: TIntegerField;
    sql_produtossimplesncm: TStringField;
    sql_produtosid: TIntegerField;
    sql_produtosqtde: TFloatField;
    sql_produtosEX: TStringField;
    sql_produtosiva: TFloatField;
    sql_produtostabela: TIntegerField;
    cds_produtos: TClientDataSet;
    cds_produtoscodigo: TIntegerField;
    cds_produtosdescricao: TStringField;
    cds_produtoscund: TIntegerField;
    cds_produtosprve: TFloatField;
    cds_produtoscbar: TStringField;
    cds_produtosbscalcst: TFloatField;
    cds_produtosicmscalcst: TFloatField;
    cds_produtoscompoetnf: TStringField;
    cds_produtoscicms: TIntegerField;
    cds_produtoscipi: TIntegerField;
    cds_produtoscsita: TIntegerField;
    cds_produtoscsitb: TIntegerField;
    cds_produtosccfncm: TIntegerField;
    cds_produtoscmodbscalc: TIntegerField;
    cds_produtoscmodbscalcst: TIntegerField;
    cds_produtoscvii: TIntegerField;
    cds_produtoscpis: TIntegerField;
    cds_produtosccofins: TIntegerField;
    cds_produtoscoimp: TIntegerField;
    cds_produtosccfop: TIntegerField;
    cds_produtoscaux: TStringField;
    cds_produtosccsosn: TIntegerField;
    cds_produtossimplesncm: TStringField;
    cds_produtosid: TIntegerField;
    cds_produtosqtde: TFloatField;
    cds_produtosEX: TStringField;
    cds_produtosiva: TFloatField;
    cds_produtostabela: TIntegerField;
    dts_produtos: TDataSource;
    sql_nfnped: TStringField;
    cds_nfnped: TStringField;
    sql_nfaliqapiss: TFloatField;
    sql_nfvlrcrediss: TFloatField;
    cds_nfaliqapiss: TFloatField;
    cds_nfvlrcrediss: TFloatField;
    sql_nfpiva: TFloatField;
    sql_nfpbaseicmsstant: TFloatField;
    sql_nfpvlricmsstant: TFloatField;
    sql_nfppicmsstant: TFloatField;
    cds_nfpiva: TFloatField;
    cds_nfpbaseicmsstant: TFloatField;
    cds_nfpvlricmsstant: TFloatField;
    cds_nfppicmsstant: TFloatField;
    sql_nfpitem: TIntegerField;
    cds_nfpitem: TIntegerField;
    sql_nfpvlricms: TFloatField;
    sql_nfpvlripi: TFloatField;
    cds_nfpvlricms: TFloatField;
    cds_nfpvlripi: TFloatField;
    sql_nfpvlrsubsicms: TFloatField;
    sql_nfpbcsubsicms: TFloatField;
    cds_nfpvlrsubsicms: TFloatField;
    cds_nfpbcsubsicms: TFloatField;
    sql_nfpbcicms: TFloatField;
    cds_nfpbcicms: TFloatField;
    cds_corrigirNFP: TClientDataSet;
    cds_corrigirNFE: TClientDataSet;
    cds_corrigirNF: TClientDataSet;
    cds_corrigirClientes: TClientDataSet;
    cds_corrigirFornecedores: TClientDataSet;
    sql_nfechave: TStringField;
    cds_nfechave: TStringField;
    sql_exec: TZQuery;
    sql_nfpcodigo: TIntegerField;
    cds_nfpcodigo: TIntegerField;
    sql_clientescodigo: TIntegerField;
    cds_clientescodigo: TIntegerField;
    sql_exec2: TZQuery;
    sql_exec3: TZQuery;
    sql_exec4: TZQuery;
    sql_nfecnpjcpfemi: TStringField;
    sql_nfecnpjcpfdest: TStringField;
    sql_nfecnpjcpfeminfe: TStringField;
    cds_nfecnpjcpfemi: TStringField;
    cds_nfecnpjcpfdest: TStringField;
    cds_nfecnpjcpfeminfe: TStringField;
    sql_produtoscest: TStringField;
    sql_nfpcest: TStringField;
    cds_nfpcest: TStringField;
    cds_produtoscest: TStringField;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    sql_indiceufpadrao: TSmallintField;
    cds_indiceufpadrao: TSmallintField;
    sql_indicepICMSInterPart: TFloatField;
    cds_indicepICMSInterPart: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dts_clientesDataChange(Sender: TObject; Field: TField);
    procedure dts_emitenteDataChange(Sender: TObject; Field: TField);
    procedure dts_fornecedoresDataChange(Sender: TObject; Field: TField);
    procedure cds_nfCalcFields(DataSet: TDataSet);
    procedure cds_nfAfterScroll(DataSet: TDataSet);
    procedure importarc;
    procedure importarf;
    procedure importarp;
    procedure importarnfc;
    procedure exportarc;
    procedure exportarf;
    procedure exportarp;
    procedure exportarnfc;
    procedure cds_nfeCalcFields(DataSet: TDataSet);
    procedure gravarprodnf;
    procedure gravarcliente;
    procedure gravarfornecedor;
    procedure gravarproduto;
    procedure cds_icmsAfterScroll(DataSet: TDataSet);
    procedure cds_PaisesAfterPost(DataSet: TDataSet);
    procedure cds_PaisesAfterDelete(DataSet: TDataSet);
    procedure cds_PaisesNewRecord(DataSet: TDataSet);
    procedure cds_impostoIINewRecord(DataSet: TDataSet);
    procedure cds_impostoIIINewRecord(DataSet: TDataSet);
    procedure cds_impostoIIAfterPost(DataSet: TDataSet);
    procedure cds_impostoIIAfterDelete(DataSet: TDataSet);
    procedure cds_impostoIIIAfterDelete(DataSet: TDataSet);
    procedure cds_impostoIIIAfterPost(DataSet: TDataSet);
    procedure cds_tiposervNewRecord(DataSet: TDataSet);
    procedure cds_tiposervAfterDelete(DataSet: TDataSet);
    procedure cds_tiposervAfterPost(DataSet: TDataSet);
    procedure cds_regtribNewRecord(DataSet: TDataSet);
    procedure cds_regtribAfterPost(DataSet: TDataSet);
    procedure cds_regtribAfterDelete(DataSet: TDataSet);
    procedure cds_indiceNewRecord(DataSet: TDataSet);
    procedure cds_indiceAfterDelete(DataSet: TDataSet);
    procedure cds_indiceAfterPost(DataSet: TDataSet);
    procedure cds_faturaNewRecord(DataSet: TDataSet);
    procedure cds_cfNewRecord(DataSet: TDataSet);
    procedure cds_cfAfterDelete(DataSet: TDataSet);
    procedure cds_cfAfterPost(DataSet: TDataSet);
    procedure cds_faturaAfterPost(DataSet: TDataSet);
    procedure cds_faturaAfterDelete(DataSet: TDataSet);
    procedure cds_pisNewRecord(DataSet: TDataSet);
    procedure cds_MunicNewRecord(DataSet: TDataSet);
    procedure cds_modbcNewRecord(DataSet: TDataSet);
    procedure cds_cofinsNewRecord(DataSet: TDataSet);
    procedure cds_unidadeNewRecord(DataSet: TDataSet);
    procedure cds_clientesNewRecord(DataSet: TDataSet);
    procedure cds_rcservNewRecord(DataSet: TDataSet);
    procedure cds_emitenteNewRecord(DataSet: TDataSet);
    procedure cds_nfeNewRecord(DataSet: TDataSet);
    procedure cds_duplicataNewRecord(DataSet: TDataSet);
    procedure cds_nfsNewRecord(DataSet: TDataSet);
    procedure cds_modbcstNewRecord(DataSet: TDataSet);
    procedure cds_nfepNewRecord(DataSet: TDataSet);
    procedure cds_icmsNewRecord(DataSet: TDataSet);
    procedure cds_cfopNewRecord(DataSet: TDataSet);
    procedure cds_nfpNewRecord(DataSet: TDataSet);
    procedure cds_fornecedoresNewRecord(DataSet: TDataSet);
    procedure cds_produtosNewRecord(DataSet: TDataSet);
    procedure cds_sitaNewRecord(DataSet: TDataSet);
    procedure cds_ipiNewRecord(DataSet: TDataSet);
    procedure cds_impostoINewRecord(DataSet: TDataSet);
    procedure cds_natopNewRecord(DataSet: TDataSet);
    procedure cds_tgicmsNewRecord(DataSet: TDataSet);
    procedure cds_transportadorNewRecord(DataSet: TDataSet);
    procedure cds_nfNewRecord(DataSet: TDataSet);
    procedure cds_csosnNewRecord(DataSet: TDataSet);
    procedure cds_cupomNewRecord(DataSet: TDataSet);
    procedure cds_tipopgtoNewRecord(DataSet: TDataSet);
    procedure cds_EstadosNewRecord(DataSet: TDataSet);
    procedure cds_onusdofreteNewRecord(DataSet: TDataSet);
    procedure cds_tiponfNewRecord(DataSet: TDataSet);
    procedure cds_sitbNewRecord(DataSet: TDataSet);
    procedure cds_cmobraNewRecord(DataSet: TDataSet);
    procedure cds_cmobraAfterPost(DataSet: TDataSet);
    procedure cds_cmobraAfterDelete(DataSet: TDataSet);
    procedure cds_sitbAfterDelete(DataSet: TDataSet);
    procedure cds_sitbAfterPost(DataSet: TDataSet);
    procedure cds_tiponfAfterPost(DataSet: TDataSet);
    procedure cds_tiponfAfterDelete(DataSet: TDataSet);
    procedure cds_onusdofreteAfterDelete(DataSet: TDataSet);
    procedure cds_onusdofreteAfterPost(DataSet: TDataSet);
    procedure cds_EstadosAfterPost(DataSet: TDataSet);
    procedure cds_EstadosAfterDelete(DataSet: TDataSet);
    procedure cds_tipopgtoAfterDelete(DataSet: TDataSet);
    procedure cds_tipopgtoAfterPost(DataSet: TDataSet);
    procedure cds_cupomAfterPost(DataSet: TDataSet);
    procedure cds_cupomAfterDelete(DataSet: TDataSet);
    procedure cds_csosnAfterDelete(DataSet: TDataSet);
    procedure cds_csosnAfterPost(DataSet: TDataSet);
    procedure cds_nfAfterPost(DataSet: TDataSet);
    procedure cds_nfAfterDelete(DataSet: TDataSet);
    procedure cds_transportadorAfterDelete(DataSet: TDataSet);
    procedure cds_transportadorAfterPost(DataSet: TDataSet);
    procedure cds_tgicmsAfterPost(DataSet: TDataSet);
    procedure cds_tgicmsAfterDelete(DataSet: TDataSet);
    procedure cds_natopAfterDelete(DataSet: TDataSet);
    procedure cds_natopAfterPost(DataSet: TDataSet);
    procedure cds_impostoIAfterPost(DataSet: TDataSet);
    procedure cds_impostoIAfterDelete(DataSet: TDataSet);
    procedure cds_ipiAfterDelete(DataSet: TDataSet);
    procedure cds_ipiAfterPost(DataSet: TDataSet);
    procedure cds_sitaAfterPost(DataSet: TDataSet);
    procedure cds_sitaAfterDelete(DataSet: TDataSet);
    procedure cds_produtosAfterDelete(DataSet: TDataSet);
    procedure cds_produtosAfterPost(DataSet: TDataSet);
    procedure cds_fornecedoresAfterPost(DataSet: TDataSet);
    procedure cds_fornecedoresAfterDelete(DataSet: TDataSet);
    procedure cds_nfpAfterDelete(DataSet: TDataSet);
    procedure cds_nfpAfterPost(DataSet: TDataSet);
    procedure cds_cfopAfterPost(DataSet: TDataSet);
    procedure cds_cfopAfterDelete(DataSet: TDataSet);
    procedure cds_icmsAfterDelete(DataSet: TDataSet);
    procedure cds_icmsAfterPost(DataSet: TDataSet);
    procedure cds_nfepAfterPost(DataSet: TDataSet);
    procedure cds_nfepAfterDelete(DataSet: TDataSet);
    procedure cds_modbcstAfterDelete(DataSet: TDataSet);
    procedure cds_modbcstAfterPost(DataSet: TDataSet);
    procedure cds_nfsAfterPost(DataSet: TDataSet);
    procedure cds_nfsAfterDelete(DataSet: TDataSet);
    procedure cds_duplicataAfterDelete(DataSet: TDataSet);
    procedure cds_duplicataAfterPost(DataSet: TDataSet);
    procedure cds_nfeAfterPost(DataSet: TDataSet);
    procedure cds_nfeAfterDelete(DataSet: TDataSet);
    procedure cds_emitenteAfterDelete(DataSet: TDataSet);
    procedure cds_emitenteAfterPost(DataSet: TDataSet);
    procedure cds_rcservAfterPost(DataSet: TDataSet);
    procedure cds_rcservAfterDelete(DataSet: TDataSet);
    procedure cds_clientesAfterDelete(DataSet: TDataSet);
    procedure cds_clientesAfterPost(DataSet: TDataSet);
    procedure cds_unidadeAfterPost(DataSet: TDataSet);
    procedure cds_unidadeAfterDelete(DataSet: TDataSet);
    procedure cds_cofinsAfterDelete(DataSet: TDataSet);
    procedure cds_cofinsAfterPost(DataSet: TDataSet);
    procedure cds_modbcAfterPost(DataSet: TDataSet);
    procedure cds_modbcAfterDelete(DataSet: TDataSet);
    procedure cds_MunicAfterDelete(DataSet: TDataSet);
    procedure cds_MunicAfterPost(DataSet: TDataSet);
    procedure cds_pisAfterPost(DataSet: TDataSet);
    procedure cds_pisAfterDelete(DataSet: TDataSet);
    procedure cds_ibptNewRecord(DataSet: TDataSet);
    procedure cds_ibptAfterPost(DataSet: TDataSet);
    procedure cds_ibptAfterDelete(DataSet: TDataSet);
    procedure cds_aliqinterAfterPost(DataSet: TDataSet);
    procedure cds_aliqinterNewRecord(DataSet: TDataSet);
    procedure cds_aliqinterAfterDelete(DataSet: TDataSet);
    procedure cds_corrigirNFPAfterPost(DataSet: TDataSet);
    procedure cds_corrigirNFPAfterDelete(DataSet: TDataSet);
    procedure cds_corrigirNFEAfterDelete(DataSet: TDataSet);
    procedure cds_corrigirNFEAfterPost(DataSet: TDataSet);
    procedure cds_corrigirNFAfterPost(DataSet: TDataSet);
    procedure cds_corrigirNFAfterDelete(DataSet: TDataSet);
    procedure cds_corrigirFornecedoresAfterDelete(DataSet: TDataSet);
    procedure cds_corrigirFornecedoresAfterPost(DataSet: TDataSet);
    procedure cds_corrigirClientesAfterPost(DataSet: TDataSet);
    procedure cds_corrigirClientesAfterDelete(DataSet: TDataSet);
    procedure verificaclientes;
    procedure verificaprodutos;
    procedure verificafornecedores;
    procedure verificanfp;
    procedure verificanfe;
    procedure verificanf;
    procedure atualizancm(ncm:string);
    procedure dts_produtosDataChange(Sender: TObject; Field: TField);
    
  private
    { Private declarations }
    T: TStringField;



    scpro,
    snpro,
    sqtde,
    sprve,
    ssubtotal,
    scbar,
    sdescricao,
    saux,
    sncm,
    scest,
    sicms,
    sunidade,
    sorigem:string;

    scodigo,
    scnpj,
    sIe,
    sBairro,
    sComplemento,
    sNumero,
    sLogradouro,
    sCep,
    sFone,
    sFantasia,
    sNomeRazao:string;
    

    icodnf,
    icodprod:integer;

    Arqini:TInifile;

  public
    { Public declarations }
  end;

var
  frmdados: Tfrmdados;

implementation
    uses ugeral, upesqnf, upesqclientes, uprincipal, upesqprodutos, upesqnfemi, uSplash;
{$R *.dfm}

procedure Tfrmdados.DataModuleCreate(Sender: TObject);
var vardir, scampo:string;
    x:integer;
begin

  frmpesqnf := nil;

  vardir := extractfilepath(application.ExeName);

  arqini := tinifile.Create(vardir+'config.ini');

  if arqini.ReadString('Base','Banco','') = '' then
     begin
       arqini.WriteString('Base','Banco','nfe');
     end;

  if arqini.ReadString('Base','HostName','') = '' then
     begin
       arqini.WriteString('Base','HostName','localhost');
     end;

  if arqini.ReadString('Base','Porta','') = '' then
     begin
       arqini.WriteString('Base','Porta','3306');
     end;

  if arqini.ReadString('Base','UserName','') = '' then
     begin
       arqini.WriteString('Base','UserName','root');
     end;

  if arqini.ReadString('Base','PassWord','') = '' then
     begin
       arqini.WriteString('Base','PassWord',Cript('sqlremoto','bios2805','cript'));
     end;


  zconexao.Disconnect;

  zconexao.Database := arqini.ReadString('Base','Banco','nfe');
  zconexao.HostName := arqini.ReadString('Base','HostName','localhost');
  zconexao.Port := strtoint(arqini.ReadString('Base','Porta','3306'));
  zconexao.User := arqini.ReadString('Base','UserName','root');
  zconexao.Password :=  cript(arqini.ReadString('Base','PassWord','sqlremoto'),'bios2805','descript');

  try
    zconexao.Connect;

    sql_nfe.Active := false;
    sql_nfe.SQL.Clear;
    sql_nfe.SQL.Add('select * from nfe where id = 0');
    sql_nfe.Active := true;

    sql_nf.Active := false;
    sql_nf.SQL.Clear;
    sql_nf.SQL.Add('select * from nf where id = 0');
    sql_nf.Active := true;

    sql_nfp.Active := false;
    sql_nfp.SQL.Clear;
    sql_nfp.SQL.Add('select * from nfp where id = 0');
    sql_nfp.Active := true;


  except
    showmessage('Houve falha ao acessar a base de dados, por favor atualize-a');

    winexec(pchar(vardir+'AtualizarBase.exe'),sw_normal);

    application.Terminate;

  end;



  cds_Temp.Active := false;

  with cds_Temp do
    begin
      Active := false;
      FileName :=vardir+'Temp.cds';
      if not fileexists(vardir+'Temp.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'Temp.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_Temp_imp.Active := false;

  with cds_Temp_imp do
    begin
      Active := false;
      FileName :=vardir+'Temp_imp.cds';
      if not fileexists(vardir+'Temp_imp.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'Temp_imp.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'id';

    end;
  //endth





  cds_config.Active := false;

  with cds_config do
    begin
      Active := false;
      FileName :=vardir+'config.cds';
      if not fileexists(vardir+'config.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'config.cds',dfbinary);
         end;
      //endi
      Active := true;


      if RecordCount = 0 then
         begin
           Append;
           FieldByName('dataexpira').asDatetime := strtodate(  datamodexe  )+360;
           FieldByName('dataatual').asDatetime := date;
           //FieldByName('dataatual').asDatetime := strtodate('12/05/2014');
           Post;
         end
      else
         begin
           Edit;
           FieldByName('dataatual').asDatetime := date;
           //FieldByName('dataatual').asDatetime := strtodate('12/05/2014');
           post;
         end;
      //endi

      Active := false;

    end;
  //endth








  cds_natop.Active := false;
  cds_nf.Active := false;


  sql_paises.Active := true;
  with cds_Paises do
    begin
      //Active := false;
      //FileName :=vardir+'Paises.cds';
      //if not fileexists(vardir+'Paises.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'Paises.cds',dfbinary);
      //   end;
      //endi




           Active := true;
           //criar indice com active ativo somente qdo precisar utiliza-lo caso contrário não funciona
           //AddIndex('codigo', 'codigo', [ixDescending], 'codigo', '', 0);
           //AddIndex('codigo', 'codigo', [], 'codigo', '', 0);




            if not locate('codigo',1,[]) then
               begin
                 append;
                 fieldbyname('codigo').asInteger := 1;
                 fieldbyname('nome').AsString := 'BRASIL';
                 fieldbyname('sigla').AsString := 'BRA';
                 fieldbyname('codibge').AsString := '58';
                 post;
               end;
            //endi


            Active := false;



      //IndexName := 'codigo';
    end;
  //endth
  sql_paises.Active := false;






  sql_estados.Active := false;
  cds_Estados.Active := false;


  sql_estados.Active := true;
  with cds_Estados do
    begin
      //Active := false;
      //FileName :=vardir+'Estados.cds';
      //if not fileexists(vardir+'Estados.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'Estados.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('nome').AsString := 'SP';
           fieldbyname('sigla').AsString := 'SP';
           fieldbyname('cpais').AsInteger := 1;
           fieldbyname('codibge').AsString := '35';
           fieldbyname('convst').AsString := 'S';
           post;
         end;
      //endi



      Active := false;
      //IndexName := 'codigo';

    end;
  //endth
  sql_estados.Active := false;


  sql_munic.Active := false;
  cds_Munic.Active := false;



  sql_Munic.Active := true;
  with cds_Munic do
    begin
      //Active := false;
      //FileName :=vardir+'Munic.cds';
      //if not fileexists(vardir+'Munic.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'Munic.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth
  sql_munic.Active := false;


  sql_icms.Active := false;
  cds_ICMS.Active := false;



  sql_icms.Active := true;
  with cds_ICMS do
    begin
      //Active := false;
      //FileName :=vardir+'ICMS.cds';
      //if not fileexists(vardir+'ICMS.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'ICMS.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '7%';
           fieldbyname('sigla').AsString := '0700';
           fieldbyname('csitb').AsInteger := 1;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 7;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 1;
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '12%';
           fieldbyname('sigla').AsString := '1200';
           fieldbyname('csitb').AsInteger := 1;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 12;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 1;

           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '18%';
           fieldbyname('sigla').AsString := '1800';
           fieldbyname('csitb').AsInteger := 1;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 18;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 1;

           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '25%';
           fieldbyname('sigla').AsString := '2500';
           fieldbyname('csitb').AsInteger := 1;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 25;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 1;

           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := 'ST';
           fieldbyname('sigla').AsString := 'FF';
           fieldbyname('csitb').AsInteger := 11;
           fieldbyname('ccfop').AsInteger := 6;
           fieldbyname('ccfopf').AsInteger := 7;
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('obs').AsString := 'ICMS RETIDO ANTECIPADAMENTE NOS TERMOS DO ARTIGO ...... DO RICMS/2000';
           fieldbyname('ccsosn').AsInteger := 9;

           post;
         end;
      //endi

      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := 'ISENTO';
           fieldbyname('sigla').AsString := 'II';
           fieldbyname('csitb').AsInteger := 6;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 3;

           post;
         end;
      //endi

      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := 'NÃO TRIBUTADA';
           fieldbyname('sigla').AsString := 'NN';
           fieldbyname('csitb').AsInteger := 7;
           fieldbyname('ccfop').AsInteger := 1;
           fieldbyname('ccfopf').AsInteger := 2;
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cest').Asfloat := 1;
           fieldbyname('ccsosn').AsInteger := 8;

           post;
         end;
      //endi


      Active := false;

      //IndexName := 'codigo';

    end;
  //endth
  sql_icms.Active := false;



  cds_IPI.Active := false;



  sql_ipi.Active := true;
  with cds_IPI do
    begin
      //Active := false;
      //FileName :=vardir+'IPI.cds';
      //if not fileexists(vardir+'IPI.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'IPI.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '99-OUTRAS';
           fieldbyname('sigla').AsString := '99';
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cpadrao').AsString := '1';
           post;
         end;
      //endi




      Active := false;
      //IndexName := 'codigo';

    end;
  //endth
  sql_ipi.Active := false;

  cds_sita.Active := false;



  sql_sita.Active := true;
  with cds_sita do
    begin
      //Active := false;
      //FileName :=vardir+'sita.cds';
      //if not fileexists(vardir+'sita.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'sita.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '0-NACIONAL';
           fieldbyname('sigla').AsString := '0';
           fieldbyname('cpadrao').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '1-ESTRAGEIRA IMPORTAÇÃO DIRETA';
           fieldbyname('sigla').AsString := '1';
           fieldbyname('cpadrao').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '2-ESTRAGEIRA ADQUIRIDA NO MERCADO INTERNO';
           fieldbyname('sigla').AsString := '2';
           fieldbyname('cpadrao').AsString := '0';
           post;
         end;
      //endi

      Active := false;
      //IndexName := 'codigo';

    end;
  //endth
  sql_sita.Active := false;




  cds_sitb.Active := false;



  sql_sitb.Active := true;
  with cds_sitb do
    begin
      //Active := false;
      //FileName :=vardir+'sitb.cds';
      //if not fileexists(vardir+'sitb.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'sitb.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

      last;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '00-TRIBUTADA INTEGRALMENTE';
           fieldbyname('sigla').AsString := '00';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '10-TRIBUTADA COM COBRANÇA DE ICMS POR ST';
           fieldbyname('sigla').AsString := '10';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '10-TRIBUTADA COM COBRANÇA DE ICMS POR ST (partilha de icms entre UF de origem';
           fieldbyname('sigla').AsString := '10';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '20-COM REDUÇÃO DA BASE DE CÁLCULO';
           fieldbyname('sigla').AsString := '20';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := '30-ISENTA OU NÃO TRIBUTADA E COM COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '30';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := '40-ISENTA';
           fieldbyname('sigla').AsString := '40';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := '41-NÃO TRIBUTADA';
           fieldbyname('sigla').AsString := '41';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',8,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 8;
           fieldbyname('descricao').AsString := '41-NÃO TRIBUTADA ICMSST DEVIDO PARA UF DE DESTINO NAS OPERAÇÕES INTERESTADUAIS DE PRODUÇÃO';
           fieldbyname('sigla').AsString := '41';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',9,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 9;
           fieldbyname('descricao').AsString := '50-SUSPENSÃO';
           fieldbyname('sigla').AsString := '50';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',10,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 10;
           fieldbyname('descricao').AsString := '51-DIFERIMENTO';
           fieldbyname('sigla').AsString := '51';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',11,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 11;
           fieldbyname('descricao').AsString := '60-COBRADO AMTERIORMENTE POR ST';
           fieldbyname('sigla').AsString := '60';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',12,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 12;
           fieldbyname('descricao').AsString := '70-COM REDUÇÃO DA BASE DE CÁLCULOE COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '70';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',13,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 13;
           fieldbyname('descricao').AsString := '90-OUTRAS(COM PARTILHA DO ICMS ENTRE A UF DE ORIGEM E A UF DE DESTINO OU UF DEFINIDA';
           fieldbyname('sigla').AsString := '90';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi

      if not locate('codigo',14,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 14;
           fieldbyname('descricao').AsString := '90-OUTRAS)';
           fieldbyname('sigla').AsString := '90';
           //fieldbyname('cregime').AsInteger := 1;
           //fieldbyname('nregime').AsString := 'TRIBUTAÇÃO NORMAL';
           post;
         end;
      //endi




      if not locate('codigo',15,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 15;
           fieldbyname('descricao').AsString := '101-TRIBUTADA COM PERMISSÃO DE CRÉDITO';
           fieldbyname('sigla').AsString := '101';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',16,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 16;
           fieldbyname('descricao').AsString := '102-TRIBUTADA SEM PERMISSÃO DE CRÉDITO';
           fieldbyname('sigla').AsString := '102';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',17,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 17;
           fieldbyname('descricao').AsString := '103-ISENÇÃO DO ICMS PARA FAIXA DE RECEITA BRUTA';
           fieldbyname('sigla').AsString := '103';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',18,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 18;
           fieldbyname('descricao').AsString := '201-TRIBUTADA COMPREMISSÃO DE CRÉDITO E COM COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '201';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',19,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 19;
           fieldbyname('descricao').AsString := '202-TRIBUTADA SEM PERMISSÃO DE CRÉDITO E COM COBRAÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '202';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',20,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 20;
           fieldbyname('descricao').AsString := '203-ISENÇÃO DO ICMS PARA FAIXA DE RECEITA BRUTA E COM COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '203';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',21,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 21;
           fieldbyname('descricao').AsString := '300-IMUNE';
           fieldbyname('sigla').AsString := '300';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',22,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 22;
           fieldbyname('descricao').AsString := '400-NÃO TRIBUTADA';
           fieldbyname('sigla').AsString := '400';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',23,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 23;
           fieldbyname('descricao').AsString := '500-ICMS COBRADO ANTERIORMENTE POR ST OU POR ANTECIPAÇÃO';
           fieldbyname('sigla').AsString := '500';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',24,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 24;
           fieldbyname('descricao').AsString := '900-OUTROS';
           fieldbyname('sigla').AsString := '900';
           fieldbyname('cregime').AsInteger := 0;
           fieldbyname('nregime').AsString := 'SIMPLES NACIONAL';
           post;
         end;
      //endi



      Active := false;

    end;
  //endth
  sql_sitb.Active := false;



  cds_cf.Active := false;



  sql_cf.Active := true;
  with cds_cf do
    begin
      //Active := false;
      //FileName :=vardir+'cf.cds';
      //if not fileexists(vardir+'cf.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'cf.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth
  sql_cf.Active := false;



  cds_modbc.Active := false;


  sql_modbc.Active := true;
  with cds_modbc do
    begin
      //Active := false;
      //FileName :=vardir+'modbc.cds';
      //if not fileexists(vardir+'modbc.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'modbc.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '0-MARGEM VALOR AGREGADO (%)';
           fieldbyname('sigla').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '1-PAUTA (VALOR)';
           fieldbyname('sigla').AsString := '1';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '2-PREÇO TABELADO MÁXIMO (VALOR)';
           fieldbyname('sigla').AsString := '2';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '3-VALOR DA OPERAÇÃO';
           fieldbyname('sigla').AsString := '3';
           post;
         end;
      //endi

      Active := false;
      //IndexName := 'codigo';
    end;
  //endth
  sql_modbc.Active := false;


  cds_modbcst.Active := false;



  sql_modbcst.Active := true;
  with cds_modbcst do
    begin
      //Active := false;
      //FileName :=vardir+'modbcst.cds';
      //if not fileexists(vardir+'modbcst.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'modbcst.cds',dfbinary);
      //   end;
      //endi
      Active := true;


      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '0-PREÇO TABELADO OU MÁXIMO SUGERIDO';
           fieldbyname('sigla').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '1-LISTA NEGATIVA (VALOR)';
           fieldbyname('sigla').AsString := '1';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '2-LISTA POSITIVA (VALOR)';
           fieldbyname('sigla').AsString := '2';
           post;
         end;
      //endi


      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '3-LISTA NEUTRA (VALOR)';
           fieldbyname('sigla').AsString := '3';
           post;
         end;
      //endi


      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := '4-MARGEM VALOR AGREGADO (%)';
           fieldbyname('sigla').AsString := '4';
           post;
         end;
      //endi


      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := '5-PAUTA (VALOR)';
           fieldbyname('sigla').AsString := '5';
           post;
         end;
      //endi


      Active := false;

      //IndexName := 'codigo';

    end;
  //endth
  sql_modbcst.Active := false;





  cds_impostoI.Active := false;


  sql_impostoi.Active := true;
  with cds_impostoI do
    begin
      //Active := false;
      //FileName :=vardir+'impostoI.cds';
      //if not fileexists(vardir+'impostoI.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'impostoI.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_impostoII.Active := false;

  sql_impostoII.Active := true;


  with cds_impostoII do
    begin
      //Active := false;
      //FileName :=vardir+'impostoII.cds';
      //if not fileexists(vardir+'impostoII.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'impostoII.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_impostoIII.Active := false;


  sql_impostoIII.Active := true;

  with cds_impostoIII do
    begin
      //Active := false;
      //FileName :=vardir+'impostoIII.cds';
      //if not fileexists(vardir+'impostoIII.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'impostoIII.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth









  cds_pis.Active := false;



  sql_pis.Active := true;
  with cds_pis do
    begin
      //Active := false;
      //FileName :=vardir+'pis.cds';
      //if not fileexists(vardir+'pis.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'pis.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '99-OUTRAS';
           fieldbyname('sigla').AsString := '99';
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cpadrao').AsString := '1';
           post;
         end;
      //endi


      //IndexName := 'codigo';

    end;
  //endth

  sql_pis.Active := false;


  cds_cofins.Active := false;


  sql_cofins.Active := true;
  with cds_cofins do
    begin
      //Active := false;
      //FileName :=vardir+'cofins.cds';
      //if not fileexists(vardir+'cofins.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'cofins.cds',dfbinary);
      //   end;
      //endi
      Active := true;


      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '99-OUTRAS';
           fieldbyname('sigla').AsString := '99';
           fieldbyname('aliquota').Asfloat := 0;
           fieldbyname('reducao').Asfloat := 0;
           fieldbyname('cpadrao').AsString := '1';
           post;
         end;
      //endi

      //IndexName := 'codigo';

    end;
  //endth

  sql_cofins.Active := false;


  cds_cfop.Active := false;


  sql_cfop.Active := true;
  with cds_cfop do
    begin
      //Active := false;
      //FileName :=vardir+'cfop.cds';
      //if not fileexists(vardir+'cfop.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'cfop.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';


      last;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '5.102-VENDA DENTRO DO ESTADO';
           fieldbyname('sigla').AsString := '5.102';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';
           fieldbyname('ctipoest').AsString := '0';
           fieldbyname('csitb').AsString := '1';
           fieldbyname('cicms').AsString := '3';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '1';
           fieldbyname('aplicaliqfat').AsString := 'T';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '6.102-VENDA FORA DO ESTADO';
           fieldbyname('sigla').AsString := '6.102';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';
           fieldbyname('ctipoest').AsString := '1';
           fieldbyname('csitb').AsString := '1';
           fieldbyname('cicms').AsString := '3';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '1';
           fieldbyname('aplicaliqfat').AsString := 'T';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '5.351-SERV. TRANSP.';
           fieldbyname('sigla').AsString := '5.351';
           fieldbyname('ctipo').AsString := '1';
           fieldbyname('ccupom').AsString := '1';
           fieldbyname('ctipoest').AsString := '0';
           fieldbyname('cpadrao').AsString := '0';
           post;
         end;
      //endi


      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '5.929-VENDA C/ CUPOM DENTRO EST.';
           fieldbyname('sigla').AsString := '5.929';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '0';
           fieldbyname('ctipoest').AsString := '0';
           fieldbyname('csitb').AsString := '7';
           fieldbyname('cicms').AsString := '7';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '8';
           fieldbyname('cipi').AsString := '1';
           fieldbyname('cpis').AsString := '1';
           fieldbyname('ccofins').AsString := '1';
           post;
         end;
      //endi


      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := '6.929-VENDA C/ CUPOM FORA EST.';
           fieldbyname('sigla').AsString := '6.929';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '0';   //com cupom
           fieldbyname('ctipoest').AsString := '1'; //fora do estado
           fieldbyname('csitb').AsString := '7';
           fieldbyname('cicms').AsString := '7';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '8';
           fieldbyname('cipi').AsString := '1';
           fieldbyname('cpis').AsString := '1';
           fieldbyname('ccofins').AsString := '1';
           post;
         end;
      //endi


      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := '5.405-VENDA SUBST. TRIUB.';
           fieldbyname('sigla').AsString := '5.405';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';   //sem cupom
           fieldbyname('ctipoest').AsString := '0'; //dentro do estado
           fieldbyname('csitb').AsString := '11';
           fieldbyname('cicms').AsString := '5';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '9';
           post;
         end;
      //endi


      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := '6.404-VENDA SUBST. TRIUB. FORA ESTADO';
           fieldbyname('sigla').AsString := '6.404';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';   //sem cupom
           fieldbyname('ctipoest').AsString := '1'; //fora do estado
           fieldbyname('csitb').AsString := '11';
           fieldbyname('cicms').AsString := '5';
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('ccsosn').AsString := '9';
           post;
         end;
      //endi


      if not locate('codigo',8,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 8;
           fieldbyname('descricao').AsString := '5.202-DEVOLUÇÃO';
           fieldbyname('sigla').AsString := '5.202';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';   //sem cupom
           fieldbyname('ctipoest').AsString := '0'; //dentro do estado
           fieldbyname('cpadrao').AsString := '0';
           post;
         end;
      //endi


      if not locate('codigo',9,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 9;
           fieldbyname('descricao').AsString := '5.401-VENDA C/ SUBST. TRIB.';
           fieldbyname('sigla').AsString := '5.401';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';   //sem cupom
           fieldbyname('ctipoest').AsString := '0'; //dentro do estado
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('calciva').AsString := 'S';
           post;
         end;
      //endi


      if not locate('codigo',10,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 10;
           fieldbyname('descricao').AsString := '6.401-VENDA C/ SUBST. TRIB.';
           fieldbyname('sigla').AsString := '6.401';
           fieldbyname('ctipo').AsString := '0';
           fieldbyname('ccupom').AsString := '1';   //sem cupom
           fieldbyname('ctipoest').AsString := '1'; //fora do estado
           fieldbyname('cpadrao').AsString := '0';
           fieldbyname('calciva').AsString := 'S';
           post;
         end;
      //endi



    end;
  //endth


  sql_cfop.Active := false;

  cds_natop.Active := false;



  sql_natop.Active := true;
  with cds_natop do
    begin
      //Active := false;
      //FileName :=vardir+'natop.cds';
      //if not fileexists(vardir+'natop.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'natop.cds',dfbinary);
      //   end;
      //endi


      if not fileexists(vardir+'atnatop.txt') then
         begin



           Active := true;



           if not locate('codigo',1,[]) then
              begin
                append;
                fieldbyname('codigo').asInteger := 1;
                fieldbyname('descricao').AsString := 'VENDA';
                post;
              end;
          //endi

          if not locate('codigo',2,[]) then
             begin
               append;
               fieldbyname('codigo').asInteger := 2;
               fieldbyname('descricao').AsString := 'COMPRA';
               post;
             end;
          //endi

          Active := false;


         end;
      //endi




      //IndexName := 'codigo';

    end;
  //endth

  sql_natop.Active := false;


  cds_unidade.Active := false;


  sql_unidade.Active := true;
  with cds_unidade do
    begin
      //Active := false;
      //FileName :=vardir+'unidade.cds';
      //if not fileexists(vardir+'unidade.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'unidade.cds',dfbinary);
      //   end;
      //endi



      Active := true;




      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := 'PC';
           fieldbyname('sigla').AsString := 'PC';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := 'JG';
           fieldbyname('sigla').AsString := 'jG';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := 'KIT';
           fieldbyname('sigla').AsString := 'KIT';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := 'PAR';
           fieldbyname('sigla').AsString := 'PAR';
           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := 'MT'; // metro
           fieldbyname('sigla').AsString := 'MT'; // metro
           post;
         end;
      //endi

      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := 'DT'; // dente
           fieldbyname('sigla').AsString := 'DT'; // dente
           post;
         end;
      //endi

      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := 'CJ'; // conjunto
           fieldbyname('sigla').AsString := 'CJ'; // conjunto
           post;
         end;
      //endi


      if not locate('codigo',8,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 8;
           fieldbyname('descricao').AsString := 'UNI'; // unidade
           fieldbyname('sigla').AsString := 'UNI'; // unidade
           post;
         end;
      //endi


      if not locate('codigo',9,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 9;
           fieldbyname('descricao').AsString := 'MAQ'; // maquina
           fieldbyname('sigla').AsString := 'MAQ'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',10,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 10;
           fieldbyname('descricao').AsString := 'GL'; // maquina
           fieldbyname('sigla').AsString := 'GL'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',11,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 11;
           fieldbyname('descricao').AsString := 'LT'; // maquina
           fieldbyname('sigla').AsString := 'LT'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',12,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 12;
           fieldbyname('descricao').AsString := 'BAL'; // maquina
           fieldbyname('sigla').AsString := 'BAL'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',13,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 13;
           fieldbyname('descricao').AsString := 'CX'; // maquina
           fieldbyname('sigla').AsString := 'CX'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',14,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 14;
           fieldbyname('descricao').AsString := 'UN'; // maquina
           fieldbyname('sigla').AsString := 'UN'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',15,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 15;
           fieldbyname('descricao').AsString := 'PT'; // maquina
           fieldbyname('sigla').AsString := 'PT'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',16,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 16;
           fieldbyname('descricao').AsString := 'BR'; // maquina
           fieldbyname('sigla').AsString := 'BR'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',17,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 17;
           fieldbyname('descricao').AsString := 'M2'; // maquina
           fieldbyname('sigla').AsString := 'M2'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',18,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 18;
           fieldbyname('descricao').AsString := 'POT'; // maquina
           fieldbyname('sigla').AsString := 'POT'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',19,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 19;
           fieldbyname('descricao').AsString := 'MTS'; // maquina
           fieldbyname('sigla').AsString := 'MTS'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',20,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 20;
           fieldbyname('descricao').AsString := 'KG'; // maquina
           fieldbyname('sigla').AsString := 'KG'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',20,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 20;
           fieldbyname('descricao').AsString := 'PCT'; // maquina
           fieldbyname('sigla').AsString := 'PCT'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',21,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 21;
           fieldbyname('descricao').AsString := 'RL'; // maquina
           fieldbyname('sigla').AsString := 'RL'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',22,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 22;
           fieldbyname('descricao').AsString := 'PR'; // maquina
           fieldbyname('sigla').AsString := 'PR'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',23,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 23;
           fieldbyname('descricao').AsString := 'M3'; // maquina
           fieldbyname('sigla').AsString := 'M3'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',24,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 24;
           fieldbyname('descricao').AsString := 'SC'; // maquina
           fieldbyname('sigla').AsString := 'SC'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',25,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 25;
           fieldbyname('descricao').AsString := 'PÇ'; // maquina
           fieldbyname('sigla').AsString := 'PÇ'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',26,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 26;
           fieldbyname('descricao').AsString := 'CAR'; // maquina
           fieldbyname('sigla').AsString := 'CAR'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',27,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 27;
           fieldbyname('descricao').AsString := 'BD'; // maquina
           fieldbyname('sigla').AsString := 'BD'; // maquina
           post;
         end;
      //endi

      if not locate('codigo',28,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 28;
           fieldbyname('descricao').AsString := 'CON'; // maquina
           fieldbyname('sigla').AsString := 'CON'; // maquina
           post;
         end;
      //endi


      if not locate('codigo',29,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 29;
           fieldbyname('descricao').AsString := 'FRA'; // maquina
           fieldbyname('sigla').AsString := 'FRA'; // maquina
           post;
         end;
      //endi



      Active := false;
      //IndexName := 'codigo';

    end;
  //endth

  sql_unidade.Active := false;



  cds_tiposerv.Active := false;



  sql_tiposerv.Active := true;
  with cds_tiposerv do
    begin
      //Active := false;
      //FileName :=vardir+'tiposerv.cds';
      //if not fileexists(vardir+'tiposerv.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'tiposerv.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth





  cds_rcserv.Active := false;


  sql_rcserv.Active := true;
  with cds_rcserv do
    begin
      //Active := false;
      //FileName :=vardir+'rcserv.cds';
      //if not fileexists(vardir+'rcserv.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'rcserv.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := 'NORMAL';
           fieldbyname('sigla').AsString := 'N';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := 'RETIDA';
           fieldbyname('sigla').AsString := 'R';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := 'SUBSTITUIÇÃO';
           fieldbyname('sigla').AsString := 'S';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := 'ISENTO';
           fieldbyname('sigla').AsString := 'I';
           post;
         end;
      //endi

      Active := false;
      //IndexName := 'codigo';

    end;
  //endth

  sql_rcserv.Active := false;

  cds_produtos.Active := false;


  sql_produtos.Active := true;


  with cds_produtos do
    begin
      //Active := false;
      //FileName :=vardir+'produtos.cds';
      //if not fileexists(vardir+'produtos.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'produtos.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_transportador.Active := false;

  sql_transportador.Active := true;


  with cds_transportador do
    begin
      //Active := false;
      //FileName :=vardir+'transportador.cds';
      //if not fileexists(vardir+'transportador.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'transportador.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth

  cds_cmobra.Active := false;


  sql_cmobra.Active := true;


  with cds_cmobra do
    begin
      //Active := false;
      //FileName :=vardir+'cmobra.cds';
      //if not fileexists(vardir+'cmobra.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'cmobra.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_clientes.Active := false;


  sql_clientes.Active := true;



  with cds_clientes do
    begin
      //Active := false;
      //FileName :=vardir+'clientes.cds';
      //if not fileexists(vardir+'clientes.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'clientes.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth




  cds_regtrib.Active := false;


  sql_regtrib.Active := true;

  with cds_regtrib do
    begin
      //Active := false;
      //FileName :=vardir+'regtrib.cds';
      //if not fileexists(vardir+'regtrib.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'regtrib.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('nome').AsString := '1-SIMPLES NACIONAL';
           fieldbyname('sigla').AsString := '1';
           fieldbyname('obs').AsString := 'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('nome').AsString := '2-REGIME NACIONAL - EXCESSO DO SUB-LIMITE DA RECEITA BRUTA';
           fieldbyname('sigla').AsString := '2';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('nome').AsString := '3-REGIME NORMAL';
           fieldbyname('sigla').AsString := '3';
           post;
         end;
      //endi

      Active := false;
      //IndexName := 'codigo';

    end;
  //endth


  sql_regtrib.Active := false;

  cds_emitente.Active := false;


 sql_emitente.Active := true;


  with cds_emitente do
    begin
      //Active := false;
      //FileName :=vardir+'emitente.cds';
      //if not fileexists(vardir+'emitente.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'emitente.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_fornecedores.Active := false;


  sql_fornecedores.Active := true;


  with cds_fornecedores do
    begin
      //Active := false;
      //FileName :=vardir+'fornecedores.cds';
      //if not fileexists(vardir+'fornecedores.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'fornecedores.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_nf.Active := false;


  sql_nf.Active := true;


  with cds_nf do
    begin
      //Active := false;
      //FileName :=vardir+'nf.cds';
      //if not fileexists(vardir+'nf.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'nf.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth






  cds_indice.Active := false;

  sql_indice.Active := true;

  with cds_indice do
    begin
      //Active := false;
      //FileName :=vardir+'indice.cds';
      //if not fileexists(vardir+'indice.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'indice.cds',dfbinary);
      //   end;
      //endi

      //IndexName := 'codigo';

      if not fileexists(vardir+'atindice.txt') then
         begin


            Active := true;


            last;

            if not locate('codigo',1,[]) then
               begin
                 append;
                 fieldbyname('codigo').asInteger := 1;
                 fieldbyname('caminhoarqnfe').AsString := 'C:\ACBrNFeMonitor';
                 fieldbyname('nnf').AsInteger := 1;
                 fieldbyname('caminhoarqnfetemp').AsString := 'C:\ACBrNFeMonitor\Logs';
                 fieldbyname('contadornfe').AsInteger := 1;
                 fieldbyname('chaveconsultacep').AsString := '17JBJpoO2tCCCsMwbqmEGVqcZEO3FL1';
                 fieldbyname('importarpara').AsString := copy(vardir,1,length(vardir)-1);
                 fieldbyname('exportarpara').AsString := copy(vardir,1,length(vardir)-1);
                 post;
               end;
            //endi


         end;
      //endi


    end;
  //endth

  sql_indice.Active := false;

  cds_tiponf.Active := false;

  sql_tiponf.Active := true;

  with cds_tiponf do
    begin
      //Active := false;
      //FileName :=vardir+'tiponf.cds';
      //if not fileexists(vardir+'tiponf.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'tiponf.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

      last;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('nome').AsString := 'ENTRADA';
           fieldbyname('sigla').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('nome').AsString := 'SAIDA';
           fieldbyname('sigla').AsString := '1';
           post;
         end;
      //endi


    end;
  //endth

  sql_tiponf.Active := false;

  cds_onusdofrete.Active := false;


  sql_onusdofrete.Active := true;

  with cds_onusdofrete do
    begin
      //Active := false;
      //FileName :=vardir+'onusdofrete.cds';
      //if not fileexists(vardir+'onusdofrete.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'onusdofrete.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

      last;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('nome').AsString := 'POR CONTA DO EMITENTE';
           fieldbyname('sigla').AsString := '0';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('nome').AsString := 'POR CONTA DO DESTINATÁRIO/REMETENTE';
           fieldbyname('sigla').AsString := '1';
           post;
         end;
      //endi


      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('nome').AsString := 'POR CONTA DE TERCEIRO';
           fieldbyname('sigla').AsString := '2';
           post;
         end;
      //endi


      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('nome').AsString := 'SEM FRETE';
           fieldbyname('sigla').AsString := '9';
           post;
         end;
      //endi




    end;
  //endth

  sql_onusdofrete.Active := false;

  cds_tipopgto.Active := false;

  sql_tipopgto.Active := true;

  with cds_tipopgto do
    begin
      //Active := false;
      //FileName :=vardir+'tipopgto.cds';
      //if not fileexists(vardir+'tipopgto.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'tipopgto.cds',dfbinary);
      //   end;
      //endi
      Active := true;
      //IndexName := 'codigo';

      last;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := 'A VISTA';
           fieldbyname('ehvd').AsString := 'T';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := 'CHEQUE';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := 'CARTAO';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := 'DUPLICATA';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := 'BOLETO';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi

      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := 'ESPECIAL';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi


      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := 'OUTROS';
           fieldbyname('ehvd').AsString := 'F';
           post;
         end;
      //endi



    end;
  //endth


  sql_tipopgto.Active := false;




  cds_nfe.Active := false;


  sql_nfe.Active := true;

  with cds_nfe do
    begin
      //Active := false;
      //FileName :=vardir+'nfe.cds';
      //if not fileexists(vardir+'nfe.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'nfe.cds',dfbinary);
      //   end;
      //endi

      //Active := true;
      //IndexName := 'codigo';

      //if cds_nfe.FieldByName('icorrecao').AsInteger = 0 then
      //   begin


      //   end;
      //endi


    end;
  //endth

  cds_nfep.Active := false;


  sql_nfep.Active := true;

  with cds_nfep do
    begin
      //Active := false;
      //FileName :=vardir+'nfep.cds';
      //if not fileexists(vardir+'nfep.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'nfep.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth

  cds_nfp.Active := false;

  sql_nfp.Active := true;


  with cds_nfp do
    begin
      //Active := false;
      //FileName :=vardir+'nfp.cds';
      //if not fileexists(vardir+'nfp.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'nfp.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth



  cds_csosn.Active := false;






  sql_csosn.Active := true;
  with cds_csosn do
    begin
      //Active := false;
      //FileName :=vardir+'csosn.cds';
      //if not fileexists(vardir+'csosn.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'csosn.cds',dfbinary);
      //   end;
      //endi
      Active := true;

      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '101-TRIBUTADA COM PERMISSÃO DE CRÉDITO';
           fieldbyname('sigla').AsString := '101';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '102-TRIBUTADA SEM PERMISSÃO DE CRÉDITO';
           fieldbyname('sigla').AsString := '102';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '103-ISENÇÃO DO ICMS PARA FAIXA DE RECEITA BRUTA';
           fieldbyname('sigla').AsString := '103';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '201-TRIBUTADA COMPREMISSÃO DE CRÉDITO E COM COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '201';
           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := '202-TRIBUTADA SEM PERMISSÃO DE CRÉDITO E COM COBRAÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '202';
           post;
         end;
      //endi

      if not locate('codigo',6,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 6;
           fieldbyname('descricao').AsString := '203-ISENÇÃO DO ICMS PARA FAIXA DE RECEITA BRUTA E COM COBRANÇA DO ICMS POR ST';
           fieldbyname('sigla').AsString := '203';
           post;
         end;
      //endi

      if not locate('codigo',7,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 7;
           fieldbyname('descricao').AsString := '300-IMUNE';
           fieldbyname('sigla').AsString := '300';
           post;
         end;
      //endi

      if not locate('codigo',8,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 8;
           fieldbyname('descricao').AsString := '400-NÃO TRIBUTADA';
           fieldbyname('sigla').AsString := '400';
           post;
         end;
      //endi

      if not locate('codigo',9,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger :=9;
           fieldbyname('descricao').AsString := '500-ICMS COBRADO ANTERIORMENTE POR ST OU POR ANTECIPAÇÃO';
           fieldbyname('sigla').AsString := '500';
           post;
         end;
      //endi

      if not locate('codigo',10,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 10;
           fieldbyname('descricao').AsString := '900-OUTROS';
           fieldbyname('sigla').AsString := '900';
           post;
         end;
      //endi






      if not locate('codigo',1,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 1;
           fieldbyname('descricao').AsString := '102-TRIB. PELO SIMPLES NACIONAL SEM PERMISSÃO DE CRÉDITO';
           fieldbyname('sigla').AsString := '102';
           post;
         end;
      //endi

      if not locate('codigo',2,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 2;
           fieldbyname('descricao').AsString := '103-ISENÇÃO DO ICMS NO SIMPLES NACIONAL PARA FAIXA DE RECEITA BRUTA';
           fieldbyname('sigla').AsString := '103';
           post;
         end;
      //endi

      if not locate('codigo',3,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 3;
           fieldbyname('descricao').AsString := '300-IMUNE';
           fieldbyname('sigla').AsString := '300';
           post;
         end;
      //endi

      if not locate('codigo',4,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 4;
           fieldbyname('descricao').AsString := '400-NÃO TRIBUTADA PELO SIMPLES NACIONAL';
           fieldbyname('sigla').AsString := '400';
           post;
         end;
      //endi

      if not locate('codigo',5,[]) then
         begin
           append;
           fieldbyname('codigo').asInteger := 5;
           fieldbyname('descricao').AsString := '500-ICMS COBRADO ANTERIORMENTE POR SUBST. TRIB. OU POR ANTECIPAÇÃO';
           fieldbyname('sigla').AsString := '500';
           post;
         end;
      //endi




      Active := false;
      //IndexName := 'codigo';

    end;
  //endth

  sql_csosn.Active := false;




  cds_nfs.Active := false;


  sql_nfs.Active := true;

  with cds_nfs do
    begin
      //Active := false;
      //FileName :=vardir+'nfs.cds';
      //if not fileexists(vardir+'nfs.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'nfs.cds',dfbinary);
       //  end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth


  cds_fatura.Active := false;


  sql_fatura.Active := true;

  with cds_fatura do
    begin
      //Active := false;
      //FileName :=vardir+'fatura.cds';
      //if not fileexists(vardir+'fatura.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'fatura.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth

  cds_duplicata.Active := false;


  sql_duplicata.Active := true;

  with cds_duplicata do
    begin
      //Active := false;
      //FileName :=vardir+'duplicata.cds';
      //if not fileexists(vardir+'duplicata.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'duplicata.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth

  cds_cupom.Active := false;

  sql_cupom.Active := true;


  with cds_cupom do
    begin
      //Active := false;
      //FileName :=vardir+'cupom.cds';
      //if not fileexists(vardir+'cupom.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'cupom.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth









  cds_tgicms.Active := false;


  sql_tgicms.Active := true;


  with cds_tgicms do
    begin
      //Active := false;
      //FileName :=vardir+'tgicms.cds';
      //if not fileexists(vardir+'tgicms.cds') then
      //   begin
      //     CreateDataSet;
      //     SaveToFile(vardir+'tgicms.cds',dfbinary);
      //   end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

    end;
  //endth








  if fileexists(vardir+'atnf.txt') then
     begin
       // copia de arquivo velho para novo


       cds_nf.Active := true;

       cd_enf.Active := false;
       cd_enf.FileName := 'enf.cds';
       cd_enf.Active := true;
       while not cd_enf.eof do
         begin

           //showmessage(cds_natop.FieldByName('codigo').asString+' '+cds_natop.FieldByName('descricao').asString);

           cds_nf.append;
           cds_nf.FieldByName('codigo').asInteger :=  cd_enf.FieldByName('codigo').asInteger;
           cds_nf.FieldByName('cemi').asInteger :=  cd_enf.FieldByName('cemi').asInteger;
           cds_nf.FieldByName('cdest').asInteger :=  cd_enf.FieldByName('cdest').asInteger;
           cds_nf.FieldByName('tipodest').asString :=  cd_enf.FieldByName('tipodest').asString;
           cds_nf.FieldByName('datacad').asString :=  cd_enf.FieldByName('datacad').asString;
           //cds_nf.FieldByName('nomedest').asString :=  cd_enf.FieldByName('nomedest').asString;
           cds_nf.FieldByName('ctipoemi').asInteger :=  cd_enf.FieldByName('ctipoemi').asInteger;


           cds_nf.fieldbyname('aliqapipi').asfloat := 0;
           cds_nf.fieldbyname('nnfrefdevol').asString := '';
           cds_nf.FieldByName('horasai').asString := '';

           cds_nf.FieldByName('datasai').asString :=  '';

           cds_nf.FieldByName('placavei').asString := '';
           cds_nf.FieldByName('quantidade').asString := '';
           cds_nf.FieldByName('especie').asString := '';
           cds_nf.FieldByName('marca').asString := '';
           cds_nf.FieldByName('numero').asString := '';
           cds_nf.FieldByName('pesob').asString := '0';
           cds_nf.FieldByName('pesol').asString := '0';
           cds_nf.FieldByName('bscalcsubtrib').asfloat :=  0;
           cds_nf.FieldByName('vlricmssubtrib').asfloat :=  0;
           cds_nf.FieldByName('tvlrfrete').asfloat :=  0;
           cds_nf.FieldByName('tvlrseg').asfloat :=  0;
           cds_nf.FieldByName('tvlrout').asfloat :=  0;

           cds_nf.FieldByName('nnf').asinteger := 0;
           cds_nf.FieldByName('tvlrout').asfloat :=  0;
           cds_nf.FieldByName('valdesc').asfloat :=  0;
           cds_nf.FieldByName('liquido').asfloat :=  0;
           cds_nf.FieldByName('din').asfloat :=   0;
           cds_nf.FieldByName('nparc').asinteger :=  0;
           cds_nf.FieldByName('datainic').asString :=  '';
           cds_nf.FieldByName('periodo').asinteger :=  0;





           cds_nf.Post;


           cd_enf.next
         end;
       //endw

       cds_nf.Active := false;
       cd_enf.Active := false;

       deletefile(pchar( vardir+'atnf.txt' ) );



     end;
  //endi




  if fileexists(vardir+'atindice.txt') then
     begin
       // copia de arquivo velho para novo


       cds_indice.Active := true;

       cd_eindice.Active := false;
       cd_eindice.FileName := 'eindice.cds';
       cd_eindice.Active := true;
       while not cd_eindice.eof do
         begin


           cds_indice.append;
           cds_indice.FieldByName('codigo').asInteger :=  cd_eindice.FieldByName('codigo').asInteger;
           cds_indice.FieldByName('caminhoarqnfe').asstring :=  cd_eindice.FieldByName('caminhoarqnfe').asstring;
           cds_indice.FieldByName('nnf').asInteger :=  cd_eindice.FieldByName('nnf').asInteger;
           cds_indice.FieldByName('caminhoarqnfetemp').asString :=  cd_eindice.FieldByName('caminhoarqnfetemp').asString;
           cds_indice.FieldByName('contadornfe').asinteger :=  cd_eindice.FieldByName('contadornfe').asinteger;
           cds_indice.FieldByName('chaveconsultacep').asstring :=  cd_eindice.FieldByName('chaveconsultacep').asstring;
           cds_indice.FieldByName('importarpara').asstring :=  cd_eindice.FieldByName('importarpara').asstring;
           cds_indice.FieldByName('exportarpara').asstring :=  cd_eindice.FieldByName('exportarpara').asstring;
           cds_indice.FieldByName('configcpro').asInteger :=  0;


           cds_indice.Post;


           cd_eindice.next
         end;
       //endw

       cds_indice.Active := false;
       cd_eindice.Active := false;

       deletefile(pchar( vardir+'atindice.txt' ) );



     end;
  //endi










  if fileexists(vardir+'atnatop.txt') then
     begin
       // copia de arquivo velho para novo


       cds_natop.Active := true;

       cd_enatop.Active := false;
       cd_enatop.FileName := 'enatop.cds';
       cd_enatop.Active := true;
       while not cd_enatop.eof do
         begin

           //showmessage(cds_natop.FieldByName('codigo').asString+' '+cds_natop.FieldByName('descricao').asString);

           cds_natop.append;
           cds_natop.FieldByName('codigo').asInteger :=  cd_enatop.FieldByName('codigo').asInteger;
           cds_natop.FieldByName('descricao').asString :=  cd_enatop.FieldByName('descricao').asString;
           cds_natop.FieldByName('ccfop').asInteger :=  0;
           cds_natop.FieldByName('ccfopf').asInteger :=  0;
           cds_natop.FieldByName('cicms').asInteger :=  0;

           cds_natop.Post;


           cd_enatop.next
         end;
       //endw

       cds_natop.Active := false;
       cd_enatop.Active := false;

       deletefile(pchar( vardir+'atnatop.txt' ) );



     end;
  //endi


  if fileexists(vardir+'atnfe.txt') then
     begin
       // copia de arquivo velho para novo

       cds_nfe.Active := true;
       cds_clientes.Active := true;
       cds_fornecedores.Active := true;



       cd_enfe.FileName := 'enfe.cds';
       cd_enfe.Active := true;
       while not cd_enfe.eof do
         begin
           cds_nfe.append;
           cds_nfe.FieldByName('codigo').asInteger :=  cd_enfe.FieldByName('codigo').asInteger;
           cds_nfe.FieldByName('cemi').asInteger :=  cd_enfe.FieldByName('cemi').asInteger;
           cds_nfe.FieldByName('tipodest').asString :=  cd_enfe.FieldByName('tipodest').asString;
           cds_nfe.FieldByName('cdest').asInteger :=  cd_enfe.FieldByName('cdest').asInteger;
           cds_nfe.FieldByName('ctransp').asInteger :=  cd_enfe.FieldByName('ctransp').asInteger;
           cds_nfe.FieldByName('pdesc').asfloat :=  cd_enfe.FieldByName('pdesc').asfloat;
           cds_nfe.FieldByName('vdesc').asfloat :=  cd_enfe.FieldByName('vdesc').asfloat;
           cds_nfe.FieldByName('total').asfloat :=  cd_enfe.FieldByName('total').asfloat;
           cds_nfe.FieldByName('liquido').asfloat := cd_enfe.FieldByName('liquido').asfloat ;
           cds_nfe.FieldByName('cnatop').asInteger :=  cd_enfe.FieldByName('cnatop').asInteger;
           cds_nfe.FieldByName('bscalcsubtrib').asfloat :=  cd_enfe.FieldByName('bscalcsubtrib').asfloat;
           cds_nfe.FieldByName('vlricmssubtrib').asfloat :=  cd_enfe.FieldByName('vlricmssubtrib').asfloat;
           cds_nfe.FieldByName('placavei').asString := cd_enfe.FieldByName('placavei').asString;
           cds_nfe.FieldByName('ufvei').asString :=  cd_enfe.FieldByName('ufvei').asString;
           cds_nfe.FieldByName('horasai').asString :=  cd_enfe.FieldByName('horasai').asString;
           cds_nfe.FieldByName('datasai').asString :=  cd_enfe.FieldByName('datasai').asString;
           cds_nfe.FieldByName('quantidade').asString :=  cd_enfe.FieldByName('quantidade').asString;
           cds_nfe.FieldByName('especie').asString :=  cd_enfe.FieldByName('especie').asString;
           cds_nfe.FieldByName('marca').asString :=  cd_enfe.FieldByName('marca').asString;
           cds_nfe.FieldByName('numero').asString :=  cd_enfe.FieldByName('numero').asString;
           cds_nfe.FieldByName('pesob').asString :=  cd_enfe.FieldByName('pesob').asString;
           cds_nfe.FieldByName('pesol').asString :=  cd_enfe.FieldByName('pesol').asString;
           cds_nfe.FieldByName('adicnf').asString :=  cd_enfe.FieldByName('adicnf').asString;
           cds_nfe.FieldByName('adicpostofiscal').asString :=  cd_enfe.FieldByName('adicpostofiscal').asString;
           cds_nfe.FieldByName('ctiponf').asInteger :=  cd_enfe.FieldByName('ctiponf').asInteger;
           cds_nfe.FieldByName('cfreteporconta').asInteger := cd_enfe.FieldByName('cfreteporconta').asInteger;
           cds_nfe.FieldByName('nnf').asInteger :=  cd_enfe.FieldByName('nnf').asInteger;
           cds_nfe.FieldByName('tvlrfrete').asfloat :=  cd_enfe.FieldByName('tvlrfrete').asfloat;
           cds_nfe.FieldByName('dataemi').asString :=   cd_enfe.FieldByName('dataemi').asString;
           cds_nfe.FieldByName('tvlrseg').asfloat :=    cd_enfe.FieldByName('tvlrseg').asfloat;
           cds_nfe.FieldByName('tvlrvii').asfloat :=  cd_enfe.FieldByName('tvlrvii').asfloat;
           cds_nfe.FieldByName('tvlripi').asfloat :=  cd_enfe.FieldByName('tvlripi').asfloat;
           cds_nfe.FieldByName('tvlrpis').asfloat :=  cd_enfe.FieldByName('tvlrpis').asfloat;
           cds_nfe.FieldByName('tvlrcofins').asfloat :=  cd_enfe.FieldByName('tvlrcofins').asfloat;
           cds_nfe.FieldByName('tvlrout').asfloat:= cd_enfe.FieldByName('tvlrout').asfloat;

           cds_nfe.FieldByName('iesubstrib').asString :=  cd_enfe.FieldByName('iesubstrib').asString;
           cds_nfe.FieldByName('modelonf').asString :=  cd_enfe.FieldByName('modelonf').asString;
           cds_nfe.FieldByName('serienf').asString :=  cd_enfe.FieldByName('serienf').asString;
           cds_nfe.FieldByName('codigonf').asString :=  cd_enfe.FieldByName('codigonf').asString;
           cds_nfe.FieldByName('tiponf').asString :=  cd_enfe.FieldByName('tiponf').asString;
           cds_nfe.FieldByName('formapgtonf').asString := cd_enfe.FieldByName('formapgtonf').asString;
           cds_nfe.FieldByName('cuftransp').asInteger :=  cd_enfe.FieldByName('cuftransp').asInteger;
           cds_nfe.FieldByName('vlrserv').asfloat :=  cd_enfe.FieldByName('vlrserv').asfloat;
           cds_nfe.FieldByName('vlrbsserv').asfloat :=  cd_enfe.FieldByName('vlrbsserv').asfloat;
           cds_nfe.FieldByName('aliqserv').asfloat := cd_enfe.FieldByName('aliqserv').asfloat ;
           cds_nfe.FieldByName('vlriss').asfloat :=  cd_enfe.FieldByName('vlriss').asfloat;
           cds_nfe.FieldByName('bcipi').asfloat :=  cd_enfe.FieldByName('bcipi').asfloat;
           cds_nfe.FieldByName('aliqipi').asfloat := cd_enfe.FieldByName('aliqipi').asfloat ;
           cds_nfe.FieldByName('ccofins').asInteger :=  cd_enfe.FieldByName('ccofins').asInteger;
           cds_nfe.FieldByName('ncofins').asString :=  cd_enfe.FieldByName('ncofins').asString;
           cds_nfe.FieldByName('bscofins').asfloat :=  cd_enfe.FieldByName('bscofins').asfloat;
           cds_nfe.FieldByName('aliqcofins').asfloat :=  cd_enfe.FieldByName('aliqcofins').asfloat;
           cds_nfe.FieldByName('vcofins').asfloat :=  cd_enfe.FieldByName('vcofins').asfloat;
           cds_nfe.FieldByName('totbcicms').asfloat :=  cd_enfe.FieldByName('totbcicms').asfloat;
           cds_nfe.FieldByName('toticms').asfloat :=  cd_enfe.FieldByName('toticms').asfloat;
           cds_nfe.FieldByName('totp').asfloat :=  cd_enfe.FieldByName('totp').asfloat;
           cds_nfe.FieldByName('vlrdesc').asfloat :=  cd_enfe.FieldByName('vlrdesc').asfloat;
           cds_nfe.FieldByName('totipi').asfloat :=  cd_enfe.FieldByName('totipi').asfloat;
           cds_nfe.FieldByName('vlrpis').asfloat :=  cd_enfe.FieldByName('vlrpis').asfloat;
           cds_nfe.FieldByName('vlrcofins').asfloat := cd_enfe.FieldByName('vlrcofins').asfloat;
           cds_nfe.FieldByName('vlrtotal').asfloat :=  cd_enfe.FieldByName('vlrtotal').asfloat;
           cds_nfe.FieldByName('ccfoptrans').asInteger :=  cd_enfe.FieldByName('ccfoptrans').asInteger;
           cds_nfe.FieldByName('cidadecodtrans').asInteger :=  cd_enfe.FieldByName('cidadecodtrans').asInteger;
           cds_nfe.FieldByName('ufplacavei').asString :=  cd_enfe.FieldByName('ufplacavei').asString;
           cds_nfe.FieldByName('rntc').asString :=  cd_enfe.FieldByName('rntc').asString;
           cds_nfe.FieldByName('arquivonfe').asString := cd_enfe.FieldByName('arquivonfe').asString;
           cds_nfe.FieldByName('cnf').asInteger :=  cd_enfe.FieldByName('cnf').asInteger;

           try
            cds_nfe.FieldByName('contador').asInteger :=  cd_enfe.FieldByName('contador').asInteger;
           except
            cds_nfe.FieldByName('contador').asInteger :=  0;
           end;

           try
             cds_nfe.fieldbyname('icorrecao').asInteger := cd_enfe.FieldByName('icorrecao').asInteger;
           except
             cds_nfe.fieldbyname('icorrecao').asInteger := 1;
           end;

           try
             cds_nfe.fieldbyname('ehsucesso').asString := cd_enfe.FieldByName('ehsucesso').asString;
           except
             cds_nfe.fieldbyname('ehsucesso').asString := 'N';
           end;

           try
             cds_nfe.fieldbyname('ehcorrigida').asString := cd_enfe.FieldByName('ehcorrigida').asString;
           except
             cds_nfe.fieldbyname('ehcorrigida').asString := 'N';
           end;

           try
             cds_nfe.fieldbyname('ehcancelada').asString := cd_enfe.FieldByName('ehcancelada').asString;
           except
             cds_nfe.fieldbyname('ehcancelada').asString := 'N';
           end;


           cds_nfe.Post;


           cd_enfe.next
         end;
       //endw

       cds_nfe.Active := false;
       cd_enfe.Active := false;

       cds_clientes.Active := false;
       cds_fornecedores.Active := false;





       deletefile(pchar( vardir+'atnfe.txt' ) );



     end;
  //endi






  if fileexists(vardir+'atsitb.txt') then
     begin
       // copia de arquivo velho para novo

       //cds_sitb.Active := true;
       //cds_esitb.FileName := 'esitb.cds';
       //cds_esitb.Active := true;
       //while


       //showmessage(cds_eprodutos.FieldByName('codigo').AsString) ;
       //deletefile(pchar( vardir+'atprodutos.txt' ) );
     end;
  //endi

  if fileexists(vardir+'atprodutos.txt') then
     begin
       // copia de arquivo velho para novo

       //cds_produtos.Active := true;
       //cds_eprodutos.FileName := 'eprodutos.cds';
       //cds_eprodutos.Active := true;
       //while


       //showmessage(cds_eprodutos.FieldByName('codigo').AsString) ;
       //deletefile(pchar( vardir+'atprodutos.txt' ) );
     end;
  //endi


  if fileexists(vardir+'atnfp.txt') then
     begin
       // copia de arquivo velho para novo
       //deletefile(pchar( vardir+'atnfp.txt' ) );
     end;
  //endi


  try
    try
      if fileexists('c:\dados_nfe') then
         dados_nfe.Connected := true;
      //endi
    except
      if frmsplash <> nil then
         begin
           frmsplash.Label2.Caption := 'Sistema mono-usuário';
           frmsplash.Update;
         end;
      //endi

    end;
  finally
    if dados_nfe.Connected then
       begin
         try
           if frmsplash <> nil then
              begin
                frmsplash.Label2.Caption := 'criando cadastro paises...';
                frmsplash.Update;
              end;
           //endi
           try
             dbx_tabela1.Active := false;
             dbx_tabela1.SQL.Clear;
             dbx_tabela1.SQL.Add('create table paises ( '+cds_paises.FieldDefs[0].Name+' integer )' );
             dbx_tabela1.ExecSQL(true);
           except
             if frmsplash <> nil then
                begin
                  frmsplash.Label2.Caption := 'cadastro paises já existe...';
                  frmsplash.Update;
                end;
             //endif
           end;

         finally
           try

             for x := 1 to (cds_paises.FieldDefs.Count -1) do
                begin

                  dbx_tabela1.Active := false;
                  dbx_tabela1.SQL.Clear;

                  case cds_paises.FieldByName(cds_paises.FieldDefs[x].Name).DataType of
                     ftstring:  scampo :=  cds_paises.FieldDefs[x].Name + ' varchar('+  inttostr(cds_paises.FieldDefs[x].size)  +')';
                     ftinteger: scampo :=  cds_paises.FieldDefs[x].Name + ' integer';
                  end;


                  dbx_tabela1.SQL.Add('alter table paises add '+scampo );

                  //showmessage(cds_paises.FieldDefs[x].Name);

                  try
                    dbx_tabela1.ExecSQL(true);
                  except
                    if frmsplash <> nil then
                       begin
                         frmsplash.Label2.Caption := 'campo '+inttostr(x)+' ok';
                         frmsplash.Update;
                       end;
                    //endif


                  end;

                end;
             //endf


           finally

             if frmsplash <> nil then
                begin
                  frmsplash.Label2.Caption := 'cadastro paises ok...';
                  frmsplash.Update;
                end;
             //endif






           end;


         end;



         cds_paises.ProviderName := 'dsp_tabela1';

         dbx_tabela1.SQL.Text := 'select * from paises';

         dbx_tabela1.Active := true;

         cds_paises.Active := true;

         showmessage(dbx_tabela1.fieldbyname('nome').AsString);



       end;
  end;

  verificaclientes;
  verificaprodutos;
  verificafornecedores;
  verificanfp;
  verificanfe;
  verificanf;


end;

procedure Tfrmdados.dts_clientesDataChange(Sender: TObject; Field: TField);

begin
if frmpesqnf <> nil then
   begin
     if (Screen.ActiveForm.Name = 'frmpesqnf')  then
        begin

           with frmpesqnf do
             begin


               if rgbtipodest.ItemIndex = 0 then
                  begin
                    lblcnpj.caption := frmdados.cds_clientes.fieldbyname('cnpj').asString;
                    lblendereco.caption := frmdados.cds_clientes.fieldbyname('endereco').asString;
                    lblnumero.caption := frmdados.cds_clientes.fieldbyname('nro').asString;
                    lblbairro.caption := frmdados.cds_clientes.fieldbyname('bairro').asString;
                    lblcep.caption := frmdados.cds_clientes.fieldbyname('cep').asString;
                    lbltelefones.caption := frmdados.cds_clientes.fieldbyname('telefones').asString;
                    lblie.caption := frmdados.cds_clientes.fieldbyname('ie').asString;
                    if frmdados.cds_Munic.Locate('codigo', frmdados.cds_clientes.fieldbyname('cmun').asInteger ,[]) then
                       begin
                         lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
                       end
                    else
                       begin
                         lblmunicipio.caption := '';
                       end;
                    //endi

                    if frmdados.cds_estados.Locate('codigo', frmdados.cds_clientes.fieldbyname('cest').asInteger ,[]) then
                       begin
                         lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
                       end
                    else
                       begin
                         lblestado.caption := '';
                       end;
                    //endi


                  end;
               //endi

             end;
           //endth

        end;
     //endi

   end;
//endi


end;

procedure Tfrmdados.dts_emitenteDataChange(Sender: TObject; Field: TField);
begin
if frmpesqnf <> nil then
   begin
     if (Screen.ActiveForm.Name = 'frmpesqnf')  then
        begin

           with frmpesqnf do
             begin


               lblcnpjemi.caption := frmdados.cds_emitente.fieldbyname('cnpj').asString;
               lblenderecoemi.caption := frmdados.cds_emitente.fieldbyname('endereco').asString;
               lblnumeroemi.caption := frmdados.cds_emitente.fieldbyname('nro').asString;
               lblbairroemi.caption := frmdados.cds_emitente.fieldbyname('bairro').asString;
               lblcepemi.caption := frmdados.cds_emitente.fieldbyname('cep').asString;
               lbltelefonesemi.caption := frmdados.cds_emitente.fieldbyname('telefones').asString;
               lblieemi.caption := frmdados.cds_emitente.fieldbyname('ie').asString;
               if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').asInteger,[]) then
                  lblmunicipioemi.caption := frmdados.cds_Munic.fieldbyname('nome').asString
               else
                  lblmunicipioemi.caption := '';
               //endi

               if frmdados.cds_estados.Locate('codigo',frmdados.cds_emitente.fieldbyname('cest').asInteger,[]) then
                  lblestadoemi.caption := frmdados.cds_estados.fieldbyname('sigla').asString
               else
                  lblestadoemi.caption := '';
               //endi



             end;
           //endth

        end;
     //endi

   end;
//endi

end;

procedure Tfrmdados.dts_fornecedoresDataChange(Sender: TObject;
  Field: TField);
begin
if frmpesqnf <> nil then
   begin
     if (Screen.ActiveForm.Name = 'frmpesqnf')  then
        begin

           with frmpesqnf do
             begin


               if rgbtipodest.ItemIndex = 1 then
                  begin
                    lblcnpj.caption := frmdados.cds_fornecedores.fieldbyname('cnpj').asString;
                    lblendereco.caption := frmdados.cds_fornecedores.fieldbyname('endereco').asString;
                    lblnumero.caption := frmdados.cds_fornecedores.fieldbyname('nro').asString;
                    lblbairro.caption := frmdados.cds_fornecedores.fieldbyname('bairro').asString;
                    lblcep.caption := frmdados.cds_fornecedores.fieldbyname('cep').asString;
                    lbltelefones.caption := frmdados.cds_fornecedores.fieldbyname('telefones').asString;
                    lblie.caption := frmdados.cds_fornecedores.fieldbyname('ie').asString;
                    if frmdados.cds_Munic.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
                       lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
                    else
                       lblmunicipio.caption := '';
                    //endi

                    if frmdados.cds_estados.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cest').asInteger,[]) then
                       lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
                    else
                       lblestado.caption := '';
                    //endi


                  end;
               //endi

             end;
           //endth

        end;
     //endi

   end;
//endi

end;

procedure Tfrmdados.cds_nfCalcFields(DataSet: TDataSet);
begin

  //vardir := extractfilename(application.ExeName);

  //if fileexists(vardir+'atnf.txt') then
  //   exit;
  //endi


  //if (not cds_fornecedores.Active) and
  //   (not cds_clientes.Active)
  //then
  //   exit;
  //endi

  //showmessage(cds_nftipodest.Value);

  //if frmpesqnf <> nil then
  //   begin

  //if Screen.ActiveForm.Name = 'frmpesqnf' then
  //   begin

       if (cds_nftipodest.Value = 'C') then
          begin
            //showmessage(cds_nfnomedest.Value);
            if cds_clientes.Locate('codigo',cds_nfcdest.Value,[]) then
               begin
                 cds_nfnomedest.Value := cds_clientes.fieldbyname('nome').asString;
               end
            else
               begin
                 cds_nfnomedest.Value := '';
               end;
            //endi
          end;
       //endi

       if (cds_nftipodest.Value = 'F') then
          begin
            if cds_fornecedores.Locate('codigo',cds_nfcdest.Value,[]) then
               begin
                 cds_nfnomedest.Value := cds_fornecedores.fieldbyname('nome').asString;
               end
            else
               begin
                 cds_nfnomedest.Value := '';

               end;
            //endi
          end;
       //endi

  //   end;
  //endi


end;

procedure Tfrmdados.cds_nfAfterScroll(DataSet: TDataSet);
begin
if frmpesqnf <> nil then
   begin
     if cds_nf.FieldByName('tipodest').asString = 'C' then
        begin
          cds_clientes.Locate('codigo',cds_nf.FieldByName('cdest').asInteger,[]);
          frmpesqnf.lbldest.Caption := cds_clientes.fieldbyname('nome').asString;
        end;
     //end
     if cds_nf.FieldByName('tipodest').asString = 'F' then
        begin
          cds_fornecedores.Locate('codigo',cds_nf.FieldByName('cdest').asInteger,[]);
          frmpesqnf.lbldest.Caption := cds_fornecedores.fieldbyname('nome').asString;
        end;
     //end

   end;
//endi
end;

procedure tfrmdados.importarc;
var f:textfile;
    Linha:string;
begin

  if not fileexists(frmdados.cds_indice.fieldbyname('importarpara').asString+'\clientes.txt') then
     begin
       Showmessage('ARQUIVO NAO LOCALIZADO: '+frmdados.cds_indice.fieldbyname('importarpara').asString+'\clientes.txt');
       exit;
     end;
  //endi


  scodigo := '';

  sql_clientes.Active := true;
  cds_clientes.Active := true;


  frmprincipal.lblmensagem.caption := 'AGUARDE, IMPORTANDO CLIENTES...';
  frmprincipal.Update;

  Assignfile(f,frmdados.cds_indice.fieldbyname('importarpara').asString+'\clientes.txt');
  reset(f);
  while true do
    begin

      readln(f,Linha);

      if pos('CNPJ=',Linha) > 0 then
         scnpj := copy(linha,6,length(linha));
      //endi

      if pos('IE=',Linha) > 0 then
         sIe := copy(linha,4,length(linha));
      //endi

      if pos('NomeRazao=',Linha) > 0 then
         sNomeRazao := copy(linha,11,length(linha));
      //endi

      if pos('Fantasia=',Linha) > 0 then
         sFantasia := copy(linha,10,length(linha));
      //endi

      if pos('Fone=',Linha) > 0 then
         sFone := copy(linha,6,length(linha));
      //endi

      if pos('CEP=',Linha) > 0 then
         sCep := copy(linha,5,length(linha));
      //endi

      if pos('Logradouro=',Linha) > 0 then
         sLogradouro := copy(linha,12,length(linha));
      //endi

      if pos('Numero=',Linha) > 0 then
         sNumero := copy(linha,8,length(linha));
      //endi

      if pos('Complemento=',Linha) > 0 then
         sComplemento := copy(linha,13,length(linha));
      //endi

      if pos('Bairro=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi

      if pos('Cidade=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi

      if pos('Estado=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi


      if Eof(f) then
         begin

           gravarcliente;

           break;
         end
      else
         begin

           if pos('cliente',Linha) > 0 then
              begin

                if scodigo <> '' then
                  begin

                    gravarcliente;

                  end;
                //endi

                scodigo := copy(linha,9,5);

              end;
           //endi
                
         end;
      //endi



    end;
  //endw

  CloseFile(f);

  cds_clientes.Active := false;
  sql_clientes.Active := false;

  frmprincipal.lblmensagem.caption := '';
  frmprincipal.Update;

end;

procedure tfrmdados.importarf;
var f:textfile;
    Linha:string;
begin
  if not fileexists(frmdados.cds_indice.fieldbyname('importarpara').asString+'\Fornecedores.txt') then
     begin
       Showmessage('ARQUIVO NAO LOCALIZADO: '+frmdados.cds_indice.fieldbyname('importarpara').asString+'\clientes.txt');
       exit;
     end;
  //endi



  sql_fornecedores.Active := true;
  cds_fornecedores.Active := true;

  scodigo := '';

  frmprincipal.lblmensagem.caption := 'AGUARDE, IMPORTANDO FORNECEDORES...';
  frmprincipal.Update;


  Assignfile(f,frmdados.cds_indice.fieldbyname('importarpara').asString+'\Fornecedores.txt');
  reset(f);
  while true do
    begin

      readln(f,Linha);

      if pos('CNPJ=',Linha) > 0 then
         scnpj := copy(linha,6,length(linha));
      //endi

      if pos('IE=',Linha) > 0 then
         sIe := copy(linha,4,length(linha));
      //endi

      if pos('NomeRazao=',Linha) > 0 then
         sNomeRazao := copy(linha,11,length(linha));
      //endi

      if pos('Fantasia=',Linha) > 0 then
         sFantasia := copy(linha,10,length(linha));
      //endi

      if pos('Fone=',Linha) > 0 then
         sFone := copy(linha,6,length(linha));
      //endi

      if pos('CEP=',Linha) > 0 then
         sCep := copy(linha,5,length(linha));
      //endi

      if pos('Logradouro=',Linha) > 0 then
         sLogradouro := copy(linha,12,length(linha));
      //endi

      if pos('Numero=',Linha) > 0 then
         sNumero := copy(linha,8,length(linha));
      //endi

      if pos('Complemento=',Linha) > 0 then
         sComplemento := copy(linha,13,length(linha));
      //endi

      if pos('Bairro=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi

      if pos('Cidade=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi

      if pos('Estado=',Linha) > 0 then
         sBairro := copy(linha,8,length(linha));
      //endi



      if Eof(f) then
         begin

           gravarfornecedor;

           break;
         end
      else
         begin

           if pos('fornecedor',Linha) > 0 then
              begin

                if scodigo <> '' then
                  begin
                    gravarfornecedor;
                  end;
                //endi

                scodigo := copy(linha,12,5);

              end;
           //endi




         end;
      //endi




    end;
  //endw

  CloseFile(f);

  frmprincipal.lblmensagem.caption := '';
  frmprincipal.Update;


end;


procedure tfrmdados.importarp;
var f:textfile;
    Linha:string;
begin

  if not fileexists(frmdados.cds_indice.fieldbyname('importarpara').asString+'\Produtos.txt') then
     begin
      Showmessage('ARQUIVO NAO LOCALIZADO: '+frmdados.cds_indice.fieldbyname('importarpara').asString+'\clientes.txt');
       exit;
     end;
  //endi

  scodigo := '';



  frmprincipal.lblmensagem.caption := 'AGUARDE, IMPORTANDO PRODUTOS...';
  frmprincipal.Update;

  sql_icms.Active := true;
  cds_icms.Active := true;

  sql_unidade.Active := true;
  cds_unidade.Active := true;

  sql_sita.Active := true;
  cds_sita.Active := true;

  sql_produtos.Open;
  cds_produtos.Open;

  Assignfile(f,frmdados.cds_indice.fieldbyname('importarpara').asString+'\Produtos.txt');
  reset(f);
  while true do
    begin

      readln(f,Linha);

      if pos('DESCRICAO=',Linha) > 0 then
         sdescricao := copy(linha,11,length(linha));
      //endi

      if pos('PRVE=',Linha) > 0 then
         sprve := copy(linha,6,length(linha));
      //endi

      if pos('CBAR=',Linha) > 0 then
         scbar := copy(linha,6,length(linha));
      //endi

      if pos('CAUX=',Linha) > 0 then
         saux := copy(linha,6,length(linha));
      //endi

      if pos('NCM=',Linha) > 0 then
         sncm := copy(linha,5,length(linha));
      //endi

      if pos('CEST=',Linha) > 0 then
         scest := copy(linha,6,length(linha));
      //endi


      if pos('ICMS=',Linha) > 0 then
         sicms := copy(linha,6,length(linha));
      //endi

      if pos('UNIDADE=',Linha) > 0 then
         sunidade := copy(linha,9,length(linha));
      //endi

      if pos('ORIGEM=',Linha) > 0 then
         sorigem := copy(linha,8,1);
      //endi

      if sorigem = '1' then
         sorigem := '2';
      //endi

      if Eof(f) then
         begin

           gravarproduto;

           break;
         end
      else
         begin

           if pos('produto',Linha) > 0 then
              begin

                if scodigo <> '' then
                  begin
                    gravarproduto;
                  end;
                //endi

                scodigo := copy(linha,9,5);

              end;
           //endi





         end;
      //endi

    end;
  //endw

  CloseFile(f);

  frmprincipal.lblmensagem.caption := '';
  frmprincipal.Update;

  cds_icms.Active := false;
  sql_icms.Active := false;

  cds_unidade.Active := false;
  sql_unidade.Active := false;


  cds_sita.Active := false;
  cds_sita.Active := false;


  cds_produtos.Active := false;
  cds_produtos.Active := false;

end;

procedure tfrmdados.exportarc;
var
  f:textfile;
begin
  AssignFile(f,frmdados.cds_indice.fieldbyname('exportarpara').asString+'\clientes.txt');
  rewrite(f);

  while not frmdados.cds_clientes.Eof do
    begin

      Writeln(f,'[cliente'+formatfloat('00000',frmdados.Cds_clientes.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'CNPJ='+frmdados.Cds_clientes.fieldbyname('cnpj').asString);
      Writeln(f,'IE='+frmdados.Cds_clientes.fieldbyname('ie').asString);
      Writeln(f,'NomeRazao='+frmdados.Cds_clientes.fieldbyname('nome').asString);
      Writeln(f,'Fantasia='+frmdados.Cds_clientes.fieldbyname('fantasia').asString);
      Writeln(f,'Fone='+frmdados.Cds_clientes.fieldbyname('telefones').asString);
      Writeln(f,'CEP='+frmdados.Cds_clientes.fieldbyname('cep').asString);
      Writeln(f,'Logradouro='+frmdados.Cds_clientes.fieldbyname('endereco').asString);
      Writeln(f,'Numero='+frmdados.Cds_clientes.fieldbyname('nro').asString);
      Writeln(f,'Complemento='+frmdados.Cds_clientes.fieldbyname('compl').asString);
      Writeln(f,'Bairro='+frmdados.Cds_clientes.fieldbyname('bairro').asString);

      if cds_estados.Locate('codigo',frmdados.Cds_clientes.fieldbyname('cest').asInteger,[]) then
         begin
            Writeln(f,'Estado='+frmdados.Cds_estados.fieldbyname('sigla').asString);
         end;
      //endi

      if cds_munic.Locate('codigo',frmdados.Cds_clientes.fieldbyname('cmun').asInteger,[]) then
         begin
           Writeln(f,'Cidade='+frmdados.Cds_munic.fieldbyname('Nome').asString);
         end;
      //endi






      //if frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').asInteger,[]) then
      //   begin
      //     Writeln(f,'CidadeCod='+frmdados.cds_munic.fieldbyname('codibge').asString);
      //     Writeln(f,'Cidade='+frmdados.cds_munic.fieldbyname('nome').asString);
      //   end;
      //endi

      //if frmdados.cds_estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').asInteger,[]) then
      //   begin
      //     Writeln(f,'UF='+frmdados.cds_estados.fieldbyname('sigla').asString);
      //   end;
      //endi


      frmdados.cds_clientes.Next;
    end;
  //endi

  CloseFile(f);

end;

procedure tfrmdados.exportarf;
var
  f:textfile;
begin
  AssignFile(f,frmdados.cds_indice.fieldbyname('exportarpara').asString+'\Fornecedores.txt');
  rewrite(f);

  while not frmdados.cds_Fornecedores.Eof do
    begin

      Writeln(f,'[fornecedor'+formatfloat('00000',frmdados.Cds_fornecedores.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'CNPJ='+frmdados.Cds_fornecedores.fieldbyname('cnpj').asString);
      Writeln(f,'IE='+frmdados.Cds_fornecedores.fieldbyname('ie').asString);
      Writeln(f,'NomeRazao='+frmdados.Cds_fornecedores.fieldbyname('nome').asString);
      Writeln(f,'Fantasia='+frmdados.Cds_fornecedores.fieldbyname('fantasia').asString);
      Writeln(f,'Fone='+frmdados.Cds_fornecedores.fieldbyname('telefones').asString);
      Writeln(f,'CEP='+frmdados.Cds_fornecedores.fieldbyname('cep').asString);
      Writeln(f,'Logradouro='+frmdados.Cds_fornecedores.fieldbyname('endereco').asString);
      Writeln(f,'Numero='+frmdados.Cds_fornecedores.fieldbyname('nro').asString);
      Writeln(f,'Complemento='+frmdados.Cds_fornecedores.fieldbyname('compl').asString);
      Writeln(f,'Bairro='+frmdados.Cds_fornecedores.fieldbyname('bairro').asString);

      if cds_estados.Locate('codigo',frmdados.Cds_fornecedores.fieldbyname('cest').asInteger,[]) then
         begin
            Writeln(f,'Estado='+frmdados.Cds_estados.fieldbyname('sigla').asString);
         end;
      //endi

      if cds_munic.Locate('codigo',frmdados.Cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
         begin
           Writeln(f,'Cidade='+frmdados.Cds_munic.fieldbyname('Nome').asString);
         end;
      //endi




      //Writeln(f,'Cidade='+frmdados.Cds_fornecedores.fieldbyname('Cidade').asString);
      //Writeln(f,'Estado='+frmdados.Cds_fornecedores.fieldbyname('Estado').asString);


      frmdados.cds_fornecedores.Next;

    end;
  //endi

  CloseFile(f);
end;

procedure tfrmdados.exportarp;
var
  f:textfile;

begin
  AssignFile(f,frmdados.cds_indice.fieldbyname('exportarpara').asString+'\Produtos.txt');
  rewrite(f);

  while not frmdados.cds_produtos.Eof do
    begin

      Writeln(f,'[produto'+formatfloat('00000',frmdados.Cds_produtos.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'DESCRICAO='+frmdados.Cds_produtos.fieldbyname('descricao').asString);
      Writeln(f,'PRVE='+floattostr(frmdados.Cds_produtos.fieldbyname('prve').asfloat));
      Writeln(f,'CBAR='+frmdados.Cds_produtos.fieldbyname('cbar').asString);
      Writeln(f,'CAUX='+frmdados.Cds_produtos.fieldbyname('caux').asString);



      frmdados.cds_produtos.Next;
     end;
  //endi

  CloseFile(f);
end;


procedure tfrmdados.importarnfc;
var f:textfile;
    Linha:string;
    scodigo,
    scnpj,
    sIe,
    sBairro,
    sComplemento,
    sNumero,
    sLogradouro,
    sCep,
    sFone,
    sFantasia,
    sNomeRazao,
    sprocura,
    scidade,
    sestado:string;

    iInicio, icoddest:integer;
begin

    icodnf:=0;
    icodprod:=0;

  if frmpesqnf <> nil then
     frmpesqnf.btnlimpar.Click;

  cds_nf.IndexName := 'codigo';

  //if not fileexists(frmdados.cds_indice.fieldbyname('importarpara').asString+'\nf.txt') then

  if not fileexists(frmprincipal.scaminho) then
     begin
       exit;
     end;
  //endi

  sql_munic.Active := true;
  cds_munic.Active := true;

  sql_estados.Active := true;
  cds_estados.Active := true;

  sql_produtos.Active := true;
  cds_produtos.Active := true;

  sql_icms.Active := true;
  cds_icms.Active := true;

  sql_unidade.Active := true;
  cds_unidade.Active := true;

  sql_sita.Active := true;
  cds_sita.Active := true;

  cds_nf.Active := false;
  sql_nf.Active := false;
  sql_nf.SQL.Clear;
  sql_nf.SQL.Add('select * from nf');
  sql_nf.Active := true;
  cds_nf.Active := true;



  scodigo := '';

  //Assignfile(f,frmdados.cds_indice.fieldbyname('importarpara').asString+'\nf.txt');

  Assignfile(f,frmprincipal.scaminho);


  reset(f);
  while not Eof(f) do
    begin

      readln(f,Linha);

      if pos('cliente',Linha) > 0 then
         begin
           sprocura := 'cliente';
           iInicio := 9;
         end;
      //endi
      if pos('fornecedor',Linha) > 0 then
         begin
           sprocura := 'fornecedor';
           iInicio := 12;
         end;
      //endi

      // sprocura

      if pos(sprocura,Linha) > 0 then
         begin

           scodigo := copy(linha,iInicio,5);

         end
      else
         begin

           if pos('CNPJ=',Linha) > 0 then
              scnpj := copy(linha,6,length(linha));
           //endi

           if pos('IE=',Linha) > 0 then
              sIe := copy(linha,4,length(linha));
           //endi

           if pos('NomeRazao=',Linha) > 0 then
              sNomeRazao := copy(linha,11,length(linha));
           //endi

           if pos('Fantasia=',Linha) > 0 then
              sFantasia := copy(linha,10,length(linha));
           //endi

           if pos('Fone=',Linha) > 0 then
              sFone := copy(linha,6,length(linha));
           //endi

           if pos('CEP=',Linha) > 0 then
              sCep := copy(linha,5,length(linha));
           //endi

           if pos('Logradouro=',Linha) > 0 then
              sLogradouro := copy(linha,12,length(linha));
           //endi

           if pos('Numero=',Linha) > 0 then
              sNumero := copy(linha,8,length(linha));
           //endi

           if pos('Complemento=',Linha) > 0 then
              sComplemento := copy(linha,13,length(linha));
           //endi

           if pos('Bairro=',Linha) > 0 then
              sBairro := copy(linha,8,length(linha));
           //endi

           if pos('Cidade=',Linha) > 0 then
              sCidade := copy(linha,8,length(linha));
           //endi

           if pos('Estado=',Linha) > 0 then
              sEstado := copy(linha,8,length(linha));
           //endi


         end;
      //endi

    end;
  //endw

  CloseFile(f);

  // gravar dados destinatário
  //showmessage(scodigo+' '+scnpj+' '+sIe);

  if sprocura = 'cliente' then
     begin

       cds_clientes.Active := false;
       sql_clientes.Active := false;
       sql_clientes.SQL.Clear;
       sql_clientes.SQL.Add('select * from clientes');
       sql_clientes.Active := true;
       cds_clientes.Active := true;

       if not cds_clientes.Locate('codigo',strtoint(scodigo),[]) then
          begin

            if scodigo <> '' then
               begin
                 cds_clientes.Append;
                 cds_clientes.FieldByName('codigo').asInteger := strtoint(scodigo);
                 cds_clientes.FieldByName('cnpj').asString := scnpj;
                 cds_clientes.FieldByName('ie').asString := sie;
                 cds_clientes.FieldByName('Nome').AsString := sNomeRazao;
                 cds_clientes.FieldByName('Fantasia').asString := sfantasia;
                 cds_clientes.FieldByName('telefones').asString := sfone;
                 cds_clientes.FieldByName('cep').asString := scep;
                 cds_clientes.FieldByName('endereco').asString := slogradouro;
                 cds_clientes.FieldByName('nro').asString := sNumero;
                 cds_clientes.FieldByName('compl').asString := scomplemento;
                 cds_clientes.FieldByName('bairro').asString := sbairro;

                 if cds_estados.Locate('sigla',sEstado,[]) then
                    begin

                       if cds_munic.Locate('nome',sCidade,[]) then
                          begin
                          cds_clientes.FieldByName('cmun').asInteger := cds_munic.fieldbyname('codigo').AsInteger;
                          end;
                       //endi

                       cds_clientes.FieldByName('cest').AsInteger :=  cds_estados.fieldbyname('codigo').AsInteger;

                    end;
                 //endi




                 cds_clientes.Post;

                 icoddest := cds_clientes.FieldByName('codigo').asInteger;
               end;
          //endi

          end
       else
          begin
            icoddest := cds_clientes.FieldByName('codigo').asInteger;
          end;
       //endi





       cds_nf.Last;
       //icodnf := cds_nf.FieldByName('codigo').AsInteger + 1;

       cds_nf.Append;
       cds_nf.FieldByName('tipodest').asstring := 'C';


       icodnf :=  cds_nf.FieldByName('codigo').AsInteger;
       cds_nf.FieldByName('cdest').asInteger := icoddest;

       cds_nf.Post;

     end;
  //endi

  if sprocura = 'fornecedor' then
     begin

       cds_fornecedores.Active := false;
       sql_fornecedores.Active := false;
       sql_fornecedores.SQL.Clear;
       sql_fornecedores.SQL.Add('select * from fornecedores');
       sql_fornecedores.Active := true;
       cds_fornecedores.Active := true;

       if not cds_fornecedores.Locate('codigo',strtoint(scodigo),[]) then
          begin

            if scodigo <> '' then
               begin
                 cds_fornecedores.Append;
                 cds_fornecedores.FieldByName('codigo').asInteger := strtoint(scodigo);
                 cds_fornecedores.FieldByName('cnpj').asString := scnpj;
                 cds_fornecedores.FieldByName('ie').asString := sie;
                 cds_fornecedores.FieldByName('Nome').AsString := sNomeRazao;
                 cds_fornecedores.FieldByName('Fantasia').asString := sfantasia;
                 cds_fornecedores.FieldByName('telefones').asString := sfone;
                 cds_fornecedores.FieldByName('cep').asString := scep;
                 cds_fornecedores.FieldByName('endereco').asString := slogradouro;
                 cds_fornecedores.FieldByName('nro').asString := sNumero;
                 cds_fornecedores.FieldByName('compl').asString := scomplemento;
                 cds_fornecedores.FieldByName('bairro').asString := sbairro;

                 if cds_estados.Locate('sigla',sEstado,[]) then
                    begin

                       if cds_munic.Locate('nome',sCidade,[]) then
                          begin
                          cds_fornecedores.FieldByName('cmun').asInteger := cds_munic.fieldbyname('codigo').AsInteger;
                          end;
                       //endi

                       cds_fornecedores.FieldByName('cest').AsInteger :=  cds_estados.fieldbyname('codigo').AsInteger;

                    end;
                 //endi




                 cds_fornecedores.Post;

                 icoddest := cds_fornecedores.FieldByName('codigo').asInteger;

               end;
            //endi

          end
       else
          begin
            icoddest := cds_fornecedores.FieldByName('codigo').asInteger;
          end;
       //endi


       cds_nf.Last;
       //icodnf := cds_nf.FieldByName('codigo').AsInteger + 1;


       cds_nf.Append;
       cds_nf.FieldByName('tipodest').asstring := 'F';

       icodnf := cds_nf.FieldByName('codigo').AsInteger;

       cds_nf.FieldByName('cdest').asInteger := icoddest;

       cds_nf.fieldbyname('aliqapipi').asfloat := 0;
       cds_nf.fieldbyname('nnfrefdevol').asString := '';
       cds_nf.FieldByName('horasai').asString := '';

       cds_nf.FieldByName('datasai').asString :=  '';

       cds_nf.FieldByName('placavei').asString := '';
       cds_nf.FieldByName('quantidade').asString := '';
       cds_nf.FieldByName('especie').asString := '';
       cds_nf.FieldByName('marca').asString := '';
       cds_nf.FieldByName('numero').asString := '';
       cds_nf.FieldByName('pesob').asString := '0';
       cds_nf.FieldByName('pesol').asString := '0';
       cds_nf.FieldByName('bscalcsubtrib').asfloat :=  0;
       cds_nf.FieldByName('vlricmssubtrib').asfloat :=  0;
       cds_nf.FieldByName('tvlrfrete').asfloat :=  0;
       cds_nf.FieldByName('tvlrseg').asfloat :=  0;
       cds_nf.FieldByName('tvlrout').asfloat :=  0;

       cds_nf.FieldByName('nnf').asinteger := 0;
       cds_nf.FieldByName('tvlrout').asfloat :=  0;
       cds_nf.FieldByName('valdesc').asfloat :=  0;
       cds_nf.FieldByName('liquido').asfloat :=  0;
       cds_nf.FieldByName('din').asfloat :=   0;
       cds_nf.FieldByName('nparc').asinteger :=  0;
       cds_nf.FieldByName('datainic').asString :=  '';
       cds_nf.FieldByName('periodo').asinteger :=  0;

       cds_nf.Post;


     end;
  //endi

  scodigo := '';

  Assignfile(f,frmprincipal.scaminho);
  reset(f);
  while true do
    begin

      //showmessage(scodigo);
      readln(f,Linha);

      if pos('CPRO=',Linha) > 0 then
         scpro := copy(linha,6,length(linha));
      //endi

      if pos('NPRO=',Linha) > 0 then
         snpro := copy(linha,6,length(linha));
      //endi

      if pos('QTDE=',Linha) > 0 then
         sqtde := copy(linha,6,length(linha));
      //endi

      if pos('PRVE=',Linha) > 0 then
         sprve := copy(linha,6,length(linha));
      //endi

      if pos('SUBTOTAL=',Linha) > 0 then
         ssubtotal := copy(linha,10,length(linha));
      //endi

      if pos('CBAR=',Linha) > 0 then
         scbar := copy(linha,6,length(linha));
      //endi

      if pos('CAUX=',Linha) > 0 then
         saux := copy(linha,6,length(linha));
      //endi

      if pos('NCM=',Linha) > 0 then
         sncm := copy(linha,5,length(linha));
      //endi

      if pos('CEST=',Linha) > 0 then
         scest := copy(linha,6,length(linha));
      //endi



      if pos('ICMS=',Linha) > 0 then
         sicms := copy(linha,6,length(linha));
      //endi

      if pos('UNIDADE=',Linha) > 0 then
         sunidade := copy(linha,9,length(linha));
      //endi

      if pos('ORIGEM=',Linha) > 0 then
         sorigem := copy(linha,8,1);
      //endi

      if sorigem = '1' then
         sorigem := '2';
      //endi


      if Eof(f) then
         begin
           //showmessage(scpro+' '+scodigo+' '+snpro+' '+sprve+' '+scbar+' '+sqtde);

           gravarprodnf;

           break;
         end
      else
         begin

           if pos('produto',Linha) > 0 then
              begin

                if scodigo <> '' then
                  begin
                    gravarprodnf;
                    scodigo := '';
                  end;
                //endi

                scodigo := copy(linha,9,5);
              end;
           //endi




         end;
      //endi


    end;
  //endw

  CloseFile(f);


  //cds_produtos.Active := false;
  //cds_icms.Active := false;
  //cds_unidade.Active := false;
  //cds_sita.Active := false;


end;

procedure tfrmdados.exportarnfc;
var f:textfile;
begin
  AssignFile(f,frmdados.cds_indice.fieldbyname('exportarpara').asString+'\nf.txt');
  rewrite(f);

  if frmdados.cds_nf.fieldbyname('tipodest').asString = 'C' then
     begin
       if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin
            Writeln(f,'[cliente'+formatfloat('00000',frmdados.Cds_clientes.fieldbyname('codigo').asfloat)+']');
            Writeln(f,'CNPJ='+frmdados.Cds_clientes.fieldbyname('cnpj').asString);
            Writeln(f,'IE='+frmdados.Cds_clientes.fieldbyname('ie').asString);
            Writeln(f,'NomeRazao='+frmdados.Cds_clientes.fieldbyname('nome').asString);
            Writeln(f,'Fantasia='+frmdados.Cds_clientes.fieldbyname('fantasia').asString);
            Writeln(f,'Fone='+frmdados.Cds_clientes.fieldbyname('telefones').asString);
            Writeln(f,'CEP='+frmdados.Cds_clientes.fieldbyname('cep').asString);
            Writeln(f,'Logradouro='+frmdados.Cds_clientes.fieldbyname('endereco').asString);
            Writeln(f,'Numero='+frmdados.Cds_clientes.fieldbyname('nro').asString);
            Writeln(f,'Complemento='+frmdados.Cds_clientes.fieldbyname('compl').asString);
            Writeln(f,'Bairro='+frmdados.Cds_clientes.fieldbyname('bairro').asString);

            if cds_estados.Locate('codigo',frmdados.Cds_clientes.fieldbyname('cest').asInteger,[]) then
               begin
                  Writeln(f,'Estado='+frmdados.Cds_estados.fieldbyname('sigla').asString);
               end;
            //endi

            if cds_munic.Locate('codigo',frmdados.Cds_clientes.fieldbyname('cmun').asInteger,[]) then
               begin
                 Writeln(f,'Cidade='+frmdados.Cds_munic.fieldbyname('Nome').asString);
               end;
            //endi





            //Writeln(f,'Cidade='+frmdados.Cds_clientes.fieldbyname('cidade').asString);
            //Writeln(f,'Estado='+frmdados.Cds_clientes.fieldbyname('estado').asString);

          end;
       //endi
     end;
  //endi
  if frmdados.cds_nf.fieldbyname('tipodest').asString = 'F' then
     begin
       if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin
            Writeln(f,'[fornecedor'+formatfloat('00000',frmdados.Cds_fornecedores.fieldbyname('codigo').asfloat)+']');
            Writeln(f,'CNPJ='+frmdados.Cds_fornecedores.fieldbyname('cnpj').asString);
            Writeln(f,'IE='+frmdados.Cds_fornecedores.fieldbyname('ie').asString);
            Writeln(f,'NomeRazao='+frmdados.Cds_fornecedores.fieldbyname('nome').asString);
            Writeln(f,'Fantasia='+frmdados.Cds_fornecedores.fieldbyname('fantasia').asString);
            Writeln(f,'Fone='+frmdados.Cds_fornecedores.fieldbyname('telefones').asString);
            Writeln(f,'CEP='+frmdados.Cds_fornecedores.fieldbyname('cep').asString);
            Writeln(f,'Logradouro='+frmdados.Cds_fornecedores.fieldbyname('endereco').asString);
            Writeln(f,'Numero='+frmdados.Cds_fornecedores.fieldbyname('nro').asString);
            Writeln(f,'Complemento='+frmdados.Cds_fornecedores.fieldbyname('compl').asString);
            Writeln(f,'Bairro='+frmdados.Cds_fornecedores.fieldbyname('bairro').asString);


            if cds_estados.Locate('codigo',frmdados.Cds_fornecedores.fieldbyname('cest').asInteger,[]) then
               begin
                  Writeln(f,'Estado='+frmdados.Cds_estados.fieldbyname('sigla').asString);
               end;
            //endi

            if cds_munic.Locate('codigo',frmdados.Cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
               begin
                 Writeln(f,'Cidade='+frmdados.Cds_munic.fieldbyname('Nome').asString);
               end;
            //endi



            //Writeln(f,'Cidade='+frmdados.Cds_fornecedores.fieldbyname('cidade').asString);
            //Writeln(f,'Estado='+frmdados.Cds_fornecedores.fieldbyname('estado').asString);

          end;
       //endi
      end;
  //endi

  frmdados.sql_nfp.Active := false;
  frmdados.cds_nfp.Active := false;
  frmdados.cds_nfp.Filtered := false;
  frmdados.cds_nfp.Filter := 'cnf = '+inttostr(frmdados.cds_nf.fieldbyname('codigo').asInteger);
  frmdados.sql_nfp.Active := true;
  frmdados.cds_nfp.Active := true;


  frmdados.cds_nfp.Filtered := true;
  while not frmdados.cds_nfp.Eof do
    begin

      Writeln(f,'[produto'+formatfloat('00000',frmdados.Cds_nfp.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'CPRO='+frmdados.Cds_nfp.fieldbyname('cpro').asString);
      Writeln(f,'NPRO='+frmdados.Cds_nfp.fieldbyname('npro').asString);
      Writeln(f,'QTDE='+floattostr(frmdados.Cds_nfp.fieldbyname('qtde').asfloat));
      Writeln(f,'PRVE='+floattostr(frmdados.Cds_nfp.fieldbyname('prve').asfloat));
      Writeln(f,'SUBTOTAL='+floattostr(frmdados.Cds_nfp.fieldbyname('subtotal').asfloat));

      if frmdados.cds_produtos.Locate('codigo',frmdados.cds_nfp.fieldbyname('cpro').AsInteger,[]) then
         begin
           Writeln(f,'CAUX='+frmdados.cds_produtos.fieldbyname('caux').asString);
         end;
      //endi

      frmdados.cds_nfp.Next;

    end;
  //endi

  CloseFile(f);
end;

procedure Tfrmdados.cds_nfeCalcFields(DataSet: TDataSet);
var
   texto:textfile;
   linha:string;
   bok, bcanc:boolean;
begin

       cds_nfenomedest.Value := '';

       if (cds_nfetipodest.Value = 'C') then
          begin

            if cds_clientes.Locate('codigo',cds_nfecdest.Value,[]) then
               begin
                 //showmessage(cds_nfetipodest.Value);
                 //showmessage(cds_clientes.fieldbyname('nome').asString);
                 cds_nfenomedest.Value := cds_clientes.fieldbyname('nome').asString;
               end
            else
               begin
                 cds_nfenomedest.Value := '';
               end;
            //endi
          end;
       //endi

       if (cds_nfetipodest.Value = 'F') then
          begin
            if cds_fornecedores.Locate('codigo',cds_nfecdest.Value,[]) then
               begin
                 cds_nfenomedest.Value := cds_fornecedores.fieldbyname('nome').asString;
               end
            else
               begin
                 cds_nfenomedest.Value := '';
               end;
            //endi
          end;
       //endi


       {

       bok := false;
       bcanc := false;


       if fileexists(cds_indice.fieldbyname('caminhoarqnfetemp').asString+'\'+cds_nfe.fieldbyname('arquivonfe').asString) then
          begin

            assignfile(texto,cds_indice.fieldbyname('caminhoarqnfetemp').asString+'\'+cds_nfe.fieldbyname('arquivonfe').asString);
            reset(texto);
            while not eof(texto) do
              begin
                //showmessage('');
                readln(texto,linha);
                if pos('OK',linha) > 0 then
                   begin
                     bok := true;
                   end;
                //endi
                if pos('NFE CANCELADA',linha) > 0 then
                   begin
                     bcanc := true;
                   end;
                //endi
              end;
            //endw

            closefile(texto);

            if bcanc then
               cds_nfeimpnf.Value := 'C'
            else
               if bok then
                  cds_nfeimpnf.Value := 'T'
               else
                  cds_nfeimpnf.Value := 'F';
               //endi
            //endi



          end
       else
          begin
            cds_nfeimpnf.Value := 'F';
          end;
       //endi

       }


end;

procedure tfrmdados.gravarprodnf;
var
  icodprodutonf, icodigo:integer;
begin

  sql_unidade.Active := true;
  cds_unidade.Active := True;


  if scpro <> '' then
     begin
       if not cds_produtos.Locate('codigo',strtoint(scpro),[])  then
          begin
            cds_produtos.Append;

          end
       else
          begin
            cds_produtos.Edit;

          end;
       //endi

       //produto
            cds_produtos.FieldByName('codigo').asInteger := strtoint(scpro);
            cds_produtos.FieldByName('descricao').asString := snpro;
            cds_produtos.FieldByName('prve').asfloat := strtofloat(tirapontos(sprve));
            cds_produtos.FieldByName('cbar').AsString := scbar;
            cds_produtos.FieldByName('caux').asString := saux;
            cds_produtos.FieldByName('simplesncm').asString := sncm;
            cds_produtos.FieldByName('cest').asString := scest;
            cds_produtos.FieldByName('cpis').asInteger := 1;
            cds_produtos.FieldByName('ccofins').asInteger := 1;
            cds_produtos.FieldByName('cipi').asInteger := 1;
            if sicms <> '' then
               begin

                 //try
                 //  cds_produtos.FieldByName('cicms').AsInteger := strtoint(sicms);
                 //except
                 if cds_icms.Locate('sigla',sicms,[]) then
                    begin
                      cds_produtos.FieldByName('cicms').asInteger := cds_icms.fieldbyname('codigo').AsInteger;
                    end;
                 //endi
                 //end;


                 if cds_icms.Locate('codigo',cds_produtos.FieldByName('cicms').asInteger,[]) then
                    begin
                      cds_produtos.FieldByName('csitb').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
                      cds_produtos.FieldByName('ccsosn').asInteger := frmdados.cds_icms.fieldbyname('ccsosn').asInteger;
                    end;
                 //end
               end;
            //endi

            if sunidade <> '' then
               begin
                 if cds_unidade.Locate('sigla',sunidade,[]) then
                    begin
                      cds_produtos.FieldByName('cund').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;
                    end
                 else
                    begin
                      cds_unidade.Filtered := false;
                      cds_unidade.IndexName := 'codigo';
                      cds_unidade.Last;

                      //icodigo := cds_unidade.fieldbyname('codigo').asInteger;
                      //icodigo := icodigo + 1;

                      cds_unidade.Append;
                      //cds_unidade.FieldByName('codigo').asInteger := icodigo;
                      cds_unidade.FieldByName('descricao').AsString := sunidade;
                      cds_unidade.FieldByName('sigla').AsString := sunidade;
                      cds_unidade.Post;

                      cds_produtos.FieldByName('cund').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;


                    end;
                 //endi
               end;
            //endi

            if sorigem <> '' then
               begin
                 if cds_sita.Locate('sigla',sorigem,[]) then
                    begin
                      cds_produtos.FieldByName('csita').asInteger := cds_sita.fieldbyname('codigo').AsInteger;

                    end;
                 //endi
               end;
            //endi

            cds_produtos.Post;

            icodprod := cds_produtos.FieldByName('codigo').asInteger;

       //fim produto








     end
  else
     begin
       icodprod := 0;
     end;
  //endi

  sql_nfp.Active := true;
  sql_nfp.SQL.Clear;
  sql_nfp.SQL.Add('select * from nfp order by codigo');

  cds_nfp.Active := true;
  cds_nfp.Filtered := false;
  cds_nfp.Last;
  //icodprodutonf := cds_nfp.FieldByName('codigo').AsInteger + 1;



  cds_nfp.Append;
  icodprodutonf := cds_nfp.FieldByName('codigo').asInteger;


  cds_nfp.FieldByName('cnf').asInteger := icodnf;
  cds_nfp.FieldByName('cpro').asInteger := icodprod;
  cds_nfp.FieldByName('npro').asString := snpro;
  if sprve <> '' then
     cds_nfp.FieldByName('prve').asfloat := strtofloat(tirapontos(sprve));
  //endi
  if sqtde <> '' then
     cds_nfp.FieldByName('qtde').asfloat := strtofloat(tirapontos(sqtde));
  //endi
  if ssubtotal <> '' then
     cds_nfp.FieldByName('subtotal').asfloat := strtofloat(tirapontos(ssubtotal));
  //endi
  cds_nfp.FieldByName('cbar').AsString := scbar;
  cds_nfp.FieldByName('caux').asString := saux;
  cds_nfp.FieldByName('simplesncm').asString := sncm;
  cds_nfp.FieldByName('cest').asString := scest;
  if sicms <> '' then
     begin

       //cds_nfp.FieldByName('cod1prodnf').AsInteger := strtoint(sicms);

       //try
       //  cds_nfp.FieldByName('cod1prodnf').AsInteger := strtoint(sicms);
       //except
       if cds_icms.Locate('sigla',sicms,[]) then
          begin
            cds_nfp.FieldByName('cod1prodnf').asInteger := cds_icms.fieldbyname('codigo').AsInteger;
          end;
       //endi
       //end;

       if cds_icms.Locate('codigo',cds_nfp.FieldByName('cod1prodnf').asInteger,[]) then
          begin
            cds_nfp.FieldByName('cod5prodnf').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
            cds_nfp.FieldByName('cod14prodnf').asInteger := frmdados.cds_icms.fieldbyname('ccsosn').asInteger;
          end;
       //end


     end;
  //endi

  if sunidade <> '' then
     begin
       if cds_unidade.Locate('sigla',sunidade,[]) then
          begin
            cds_nfp.FieldByName('cod13prodnf').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;
          end
       else
          begin
            sql_unidade.Active := true;
            sql_unidade.SQL.Clear;
            sql_unidade.SQL.add('select * from unidade order by codigo');

            cds_unidade.Active := true;
            cds_unidade.Filtered := false;
            cds_unidade.IndexName := 'codigo';
            cds_unidade.Last;

            //icodigo := cds_unidade.fieldbyname('codigo').asInteger;
            //icodigo := icodigo + 1;

            cds_unidade.Append;
            //cds_unidade.FieldByName('codigo').asInteger := icodigo;
            cds_unidade.FieldByName('descricao').AsString := sunidade;
            cds_unidade.FieldByName('sigla').AsString := sunidade;
            cds_unidade.Post;

            cds_nfp.FieldByName('cod13prodnf').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;

          end;
       //endi


     end;
  //endi

  if sorigem <> '' then
     begin
       if cds_sita.Locate('sigla',sorigem,[]) then
          begin
            cds_nfp.FieldByName('cod4prodnf').asInteger := cds_sita.fieldbyname('codigo').AsInteger;
          end;
       //endi
     end;
  //endi

  cds_nfp.Post;



  cds_unidade.Active := False;
  sql_unidade.Active := false;

end;

procedure tfrmdados.gravarcliente;
begin

  if scodigo = '' then
     exit;
  //endi


  if not cds_clientes.Locate('codigo',strtoint(scodigo),[]) then
     begin
       cds_clientes.Append;
       cds_clientes.FieldByName('codigo').asInteger := strtoint(scodigo);
       
     end;
  //endi

  cds_clientes.Edit;

  //if cds_clientes.State in [dsinsert, dsedit] then
  //   begin
  cds_clientes.FieldByName('cnpj').asString := scnpj;
  cds_clientes.FieldByName('ie').asString := sie;
  cds_clientes.FieldByName('Nome').AsString := sNomeRazao;
  cds_clientes.FieldByName('Fantasia').asString := sfantasia;
  cds_clientes.FieldByName('telefones').asString := sfone;
  cds_clientes.FieldByName('cep').asString := scep;
  cds_clientes.FieldByName('endereco').asString := slogradouro;
  cds_clientes.FieldByName('nro').asString := sNumero;
  cds_clientes.FieldByName('compl').asString := scomplemento;
  cds_clientes.FieldByName('bairro').asString := sbairro;
  cds_clientes.Post;
  //   end;
  //endi




  scodigo := '';


end;

procedure tfrmdados.gravarfornecedor;
begin

  if scodigo = '' then
     exit;
  //endi


  if not cds_fornecedores.Locate('codigo',strtoint(scodigo),[]) then
     begin
       cds_fornecedores.Append;
       cds_fornecedores.FieldByName('codigo').asInteger := strtoint(scodigo);
       
     end;
  //endi

  cds_fornecedores.Edit;

  //if cds_fornecedores.State in[dsinsert, dsedit] then
  //   begin
  cds_fornecedores.FieldByName('cnpj').asString := scnpj;
  cds_fornecedores.FieldByName('ie').asString := sie;
  cds_fornecedores.FieldByName('Nome').AsString := sNomeRazao;
  cds_fornecedores.FieldByName('Fantasia').asString := sfantasia;
  cds_fornecedores.FieldByName('telefones').asString := sfone;
  cds_fornecedores.FieldByName('cep').asString := scep;
  cds_fornecedores.FieldByName('endereco').asString := slogradouro;
  cds_fornecedores.FieldByName('nro').asString := sNumero;
  cds_fornecedores.FieldByName('compl').asString := scomplemento;
  cds_fornecedores.FieldByName('bairro').asString := sbairro;
  cds_fornecedores.Post;
  //  end;
  //endi
  scodigo := '';

end;

procedure tfrmdados.gravarproduto;
var
  fprve:real;
  icodigo:integer;

begin

  if scodigo = '' then
     exit;
  //endi

  if not cds_produtos.Locate('codigo',strtoint(scodigo),[]) then
     begin
       cds_produtos.Append;
       cds_produtos.FieldByName('codigo').asInteger := strtoint(scodigo);
     
     end;
  //endi


  sprve := tirapontos(sprve);
  cds_produtos.Edit;



  //if cds_produtos.State in [dsinsert, dsedit] then
  //   begin


  cds_produtos.FieldByName('descricao').asString := sdescricao;
  cds_produtos.FieldByName('cbar').asString := scbar;
  cds_produtos.FieldByName('caux').AsString := saux;
  cds_produtos.FieldByName('prve').Asfloat := strtofloat(sprve);
  cds_produtos.FieldByName('simplesncm').AsString := sncm;
  cds_produtos.FieldByName('cest').AsString := scest;
  cds_produtos.FieldByName('cpis').asInteger := 1;
  cds_produtos.FieldByName('ccofins').asInteger := 1;
  cds_produtos.FieldByName('cipi').asInteger := 1;

  if sicms <> '' then
     begin

       //try
       //  cds_produtos.FieldByName('cicms').AsInteger := strtoint(sicms);
       //except
       if cds_icms.Locate('sigla',sicms,[]) then
          begin
            cds_produtos.FieldByName('cicms').asInteger := cds_icms.fieldbyname('codigo').AsInteger;
          end;
       //endi
       //end;


       if cds_icms.Locate('codigo',cds_produtos.FieldByName('cicms').asInteger,[]) then
          begin
            cds_produtos.FieldByName('csitb').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
            cds_produtos.FieldByName('ccsosn').asInteger := frmdados.cds_icms.fieldbyname('ccsosn').asInteger;
          end;
       //end


       //try
       //  cds_produtos.FieldByName('cicms').AsInteger := strtoint(sicms);
      // except

      // end;

      // if cds_icms.Locate('codigo',strtoint(sicms),[]) then
      //    begin
      //     cds_produtos.FieldByName('csitb').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
      //   end;
      //end




     end;
  //endi

  if sunidade <> '' then
     begin
       if cds_unidade.Locate('sigla',sunidade,[]) then
          begin
            cds_produtos.FieldByName('cund').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;
          end
       else
          begin
            sql_unidade.Active := true;
            cds_unidade.Active := true;
            cds_unidade.Filtered := false;

            cds_unidade.IndexName := 'codigo';
            cds_unidade.Last;
            //icodigo := cds_unidade.fieldbyname('codigo').asInteger;
            //icodigo := icodigo + 1;

            cds_unidade.Append;
            //cds_unidade.FieldByName('codigo').asInteger := icodigo;
            cds_unidade.FieldByName('descricao').AsString := sunidade;
            cds_unidade.FieldByName('sigla').AsString := sunidade;
            cds_unidade.Post;

            cds_produtos.FieldByName('cund').asInteger := cds_unidade.fieldbyname('codigo').AsInteger;

          end;
       //endi
     end;
  //endi

  if sorigem <> '' then
     begin
       if cds_sita.Locate('sigla',sorigem,[]) then
          begin
            cds_produtos.FieldByName('csita').asInteger := cds_sita.fieldbyname('codigo').AsInteger;
          end;
       //endi
     end;
  //endi

  cds_produtos.Post;


  //   end;
  //endi

  scodigo := '';

end;

procedure Tfrmdados.cds_icmsAfterScroll(DataSet: TDataSet);
var
  tiponf:integer;
begin
  //lança cfop

  if ( frmpesqnf <> nil ) and (Screen.ActiveForm.Name = 'frmpesqnf')  then
     begin
       if frmpesqnf.pctprod.ActivePageIndex = 1 then
          begin

            cds_natop.Locate('codigo',cds_temp.fieldbyname('cod6nf').AsInteger,[]);

            cds_temp.Edit;

            if frmpesqnf.lblestado.Caption = frmpesqnf.lblestadoemi.Caption then
               begin

                 tiponf := cds_natop.fieldbyname('ccfop').AsInteger;

                 if tiponf = 0 then
                    cds_temp.FieldByName('cod11prodnf').asInteger := frmdados.cds_icms.fieldbyname('ccfop').asInteger
                 else
                    cds_temp.FieldByName('cod11prodnf').asInteger := frmdados.cds_natop.fieldbyname('ccfop').asInteger;
                 //endi

               end
            else
               begin

                 tiponf := cds_natop.fieldbyname('ccfopf').AsInteger;

                 if tiponf = 0 then
                    cds_temp.FieldByName('cod11prodnf').asInteger := frmdados.cds_icms.fieldbyname('ccfopf').asInteger
                 else
                    cds_temp.FieldByName('cod11prodnf').asInteger := frmdados.cds_natop.fieldbyname('ccfopf').asInteger;
                 //endi


               end;
            //endi

            cds_temp.FieldByName('cod5prodnf').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
            cds_temp.FieldByName('cod14prodnf').asInteger := frmdados.cds_icms.fieldbyname('ccsosn').asInteger;


          end;
       //endi

     end;
  //endi


  if ( frmpesqprodutos <> nil ) and (Screen.ActiveForm.Name = 'frmpesqprodutos')  then
     begin
       if frmpesqprodutos.pctcadprod.ActivePageIndex = 1 then
          begin

            cds_temp.Edit;
            //cds_temp.FieldByName('cod11p').asInteger := frmdados.cds_icms.fieldbyname('ccfop').asInteger;
            cds_temp.FieldByName('cod5p').asInteger := frmdados.cds_icms.fieldbyname('csitb').asInteger;
            cds_temp.FieldByName('cod14p').asInteger := frmdados.cds_icms.fieldbyname('ccsosn').asInteger;



          end;
       //endi

     end;
  //endi


end;

procedure Tfrmdados.cds_PaisesAfterPost(DataSet: TDataSet);
begin
cds_paises.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_PaisesAfterDelete(DataSet: TDataSet);
begin
 cds_paises.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_PaisesNewRecord(DataSet: TDataSet);

begin

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from Paises');
    sql_consulta.Active := true;

    Cds_Paises.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(contador) as contador from Paises');
    sql_consulta.Active := true;



    Cds_Paises.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;



end;

procedure Tfrmdados.cds_impostoIINewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from impostoii');
    sql_consulta.Active := true;

    Cds_impostoii.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from impostoii');
    sql_consulta.Active := true;



    Cds_impostoii.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_impostoIIINewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from impostoiii');
    sql_consulta.Active := true;

    Cds_impostoiii.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;


    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from impostoiii');
    sql_consulta.Active := true;


    Cds_impostoiii.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_impostoIIAfterPost(DataSet: TDataSet);
begin
cds_impostoii.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_impostoIIAfterDelete(DataSet: TDataSet);
begin
cds_impostoii.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_impostoIIIAfterDelete(DataSet: TDataSet);
begin
cds_impostoiii.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_impostoIIIAfterPost(DataSet: TDataSet);
begin
cds_impostoiii.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tiposervNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from tiposerv');
    sql_consulta.Active := true;

    Cds_tiposerv.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from tiposerv');
    sql_consulta.Active := true;

    Cds_tiposerv.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_tiposervAfterDelete(DataSet: TDataSet);
begin
cds_tiposerv.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tiposervAfterPost(DataSet: TDataSet);
begin
cds_tiposerv.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_regtribNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from regtrib');
    sql_consulta.Active := true;

    Cds_regtrib.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from regtrib');
    sql_consulta.Active := true;


    Cds_regtrib.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_regtribAfterPost(DataSet: TDataSet);
begin
cds_regtrib.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_regtribAfterDelete(DataSet: TDataSet);
begin
cds_regtrib.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_indiceNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from indice');
    sql_consulta.Active := true;

    Cds_indice.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from indice');
    sql_consulta.Active := true;


    Cds_indice.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_indiceAfterDelete(DataSet: TDataSet);
begin
cds_indice.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_indiceAfterPost(DataSet: TDataSet);
begin
cds_indice.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_faturaNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from fatura');
    sql_consulta.Active := true;

    Cds_fatura.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from fatura');
    sql_consulta.Active := true;


    Cds_fatura.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_cfNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from cf');
    sql_consulta.Active := true;

    Cds_cf.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;


    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from cf');
    sql_consulta.Active := true;



    Cds_cf.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_cfAfterDelete(DataSet: TDataSet);
begin
cds_cf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cfAfterPost(DataSet: TDataSet);
begin
cds_cf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_faturaAfterPost(DataSet: TDataSet);
begin
cds_fatura.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_faturaAfterDelete(DataSet: TDataSet);
begin
cds_fatura.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_pisNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from pis');
    sql_consulta.Active := true;

    Cds_pis.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from pis');
    sql_consulta.Active := true;


    Cds_pis.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_MunicNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from munic');
    sql_consulta.Active := true;

    Cds_munic.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from munic');
    sql_consulta.Active := true;


    Cds_munic.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_modbcNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from modbc');
    sql_consulta.Active := true;

    Cds_modbc.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from modbc');
    sql_consulta.Active := true;


    Cds_modbc.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_cofinsNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from cofins');
    sql_consulta.Active := true;

    Cds_cofins.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from cofins');
    sql_consulta.Active := true;


    Cds_cofins.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_unidadeNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from unidade');
    sql_consulta.Active := true;

    Cds_unidade.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from unidade');
    sql_consulta.Active := true;

    Cds_unidade.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_clientesNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from clientes');
    sql_consulta.Active := true;

    Cds_clientes.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;


    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from clientes');
    sql_consulta.Active := true;


    Cds_clientes.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_rcservNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from rcserv');
    sql_consulta.Active := true;

    Cds_rcserv.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from rcserv');
    sql_consulta.Active := true;


    Cds_rcserv.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_emitenteNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from emitente');
    sql_consulta.Active := true;

    Cds_emitente.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from emitente');
    sql_consulta.Active := true;

    Cds_emitente.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_nfeNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from nfe');
    sql_consulta.Active := true;

    Cds_nfe.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from nfe');
    sql_consulta.Active := true;


    Cds_nfe.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_duplicataNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from duplicata');
    sql_consulta.Active := true;

    Cds_duplicata.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from duplicata');
    sql_consulta.Active := true;


    Cds_duplicata.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_nfsNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from nfs');
    sql_consulta.Active := true;

    Cds_nfs.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from nfs');
    sql_consulta.Active := true;


    Cds_nfs.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_modbcstNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from modbcst');
    sql_consulta.Active := true;

    Cds_modbcst.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from modbcst');
    sql_consulta.Active := true;


    Cds_modbcst.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_nfepNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from nfep');
    sql_consulta.Active := true;

    Cds_nfep.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from nfep');
    sql_consulta.Active := true;


    Cds_nfep.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_icmsNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from icms');
    sql_consulta.Active := true;

    Cds_icms.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from icms');
    sql_consulta.Active := true;

    Cds_icms.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_cfopNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from cfop');
    sql_consulta.Active := true;

    Cds_cfop.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from cfop');
    sql_consulta.Active := true;



    Cds_cfop.FieldByName('codigo').AsInteger := sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_nfpNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from nfp');
    sql_consulta.Active := true;

    Cds_nfp.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from nfp');
    sql_consulta.Active := true;



    Cds_nfp.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_fornecedoresNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from fornecedores');
    sql_consulta.Active := true;

    Cds_fornecedores.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from fornecedores');
    sql_consulta.Active := true;


    Cds_fornecedores.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_produtosNewRecord(DataSet: TDataSet);
begin
    

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from produtos');
    sql_consulta.Active := true;

    Cds_produtos.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from produtos');
    sql_consulta.Active := true;


     Cds_produtos.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_sitaNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from sita');
    sql_consulta.Active := true;

    Cds_sita.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from sita');
    sql_consulta.Active := true;


    Cds_sita.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_ipiNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from ipi');
    sql_consulta.Active := true;

    Cds_ipi.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from ipi');
    sql_consulta.Active := true;


    Cds_ipi.FieldByName('codigo').AsInteger := sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_impostoINewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from impostoi');
    sql_consulta.Active := true;

    Cds_impostoi.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from impostoi');
    sql_consulta.Active := true;


    Cds_impostoi.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_natopNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from natop');
    sql_consulta.Active := true;

    Cds_natop.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from natop');
    sql_consulta.Active := true;



    Cds_natop.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_tgicmsNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from tgicms');
    sql_consulta.Active := true;

    Cds_tgicms.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from tgicms');
    sql_consulta.Active := true;


    Cds_tgicms.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_transportadorNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from transportador');
    sql_consulta.Active := true;

    Cds_transportador.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from transportador');
    sql_consulta.Active := true;



    Cds_transportador.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_nfNewRecord(DataSet: TDataSet);
begin
     sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from nf');
    sql_consulta.Active := true;

    Cds_nf.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

     sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from nf');
    sql_consulta.Active := true;


    Cds_nf.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_csosnNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from csosn');
    sql_consulta.Active := true;

    Cds_csosn.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from csosn');
    sql_consulta.Active := true;


    Cds_csosn.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_cupomNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from cupom');
    sql_consulta.Active := true;

    Cds_cupom.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from cupom');
    sql_consulta.Active := true;


    Cds_cupom.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_tipopgtoNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from tipopgto');
    sql_consulta.Active := true;

    Cds_tipopgto.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from tipopgto');
    sql_consulta.Active := true;


     Cds_tipopgto.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_EstadosNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from estados');
    sql_consulta.Active := true;

    Cds_estados.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from estados');
    sql_consulta.Active := true;



    Cds_estados.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_onusdofreteNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from onusdofrete');
    sql_consulta.Active := true;

    Cds_onusdofrete.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from onusdofrete');
    sql_consulta.Active := true;


    Cds_onusdofrete.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_tiponfNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from tiponf');
    sql_consulta.Active := true;

    Cds_tiponf.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from tiponf');
    sql_consulta.Active := true;



    Cds_tiponf.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_sitbNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from sitb');
    sql_consulta.Active := true;

    Cds_sitb.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from sitb');
    sql_consulta.Active := true;


   Cds_sitb.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_cmobraNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from cmobra');
    sql_consulta.Active := true;

    Cds_cmobra.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from cmobra');
    sql_consulta.Active := true;


    Cds_cmobra.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_cmobraAfterPost(DataSet: TDataSet);
begin
cds_cmobra.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cmobraAfterDelete(DataSet: TDataSet);
begin
cds_cmobra.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_sitbAfterDelete(DataSet: TDataSet);
begin
cds_sitb.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_sitbAfterPost(DataSet: TDataSet);
begin
cds_sitb.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tiponfAfterPost(DataSet: TDataSet);
begin
cds_tiponf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tiponfAfterDelete(DataSet: TDataSet);
begin
cds_tiponf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_onusdofreteAfterDelete(DataSet: TDataSet);
begin
cds_onusdofrete.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_onusdofreteAfterPost(DataSet: TDataSet);
begin
cds_onusdofrete.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_EstadosAfterPost(DataSet: TDataSet);
begin
cds_estados.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_EstadosAfterDelete(DataSet: TDataSet);
begin
cds_cmobra.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tipopgtoAfterDelete(DataSet: TDataSet);
begin
cds_tipopgto.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tipopgtoAfterPost(DataSet: TDataSet);
begin
cds_tipopgto.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cupomAfterPost(DataSet: TDataSet);
begin
cds_cupom.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cupomAfterDelete(DataSet: TDataSet);
begin
cds_cupom.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_csosnAfterDelete(DataSet: TDataSet);
begin
cds_csosn.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_csosnAfterPost(DataSet: TDataSet);
begin
cds_csosn.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfAfterPost(DataSet: TDataSet);
begin
cds_nf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfAfterDelete(DataSet: TDataSet);
begin
cds_nf.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_transportadorAfterDelete(DataSet: TDataSet);
begin
  cds_transportador.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_transportadorAfterPost(DataSet: TDataSet);
begin
cds_transportador.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tgicmsAfterPost(DataSet: TDataSet);
begin
cds_tgicms.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_tgicmsAfterDelete(DataSet: TDataSet);
begin
cds_tgicms.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_natopAfterDelete(DataSet: TDataSet);
begin
cds_natop.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_natopAfterPost(DataSet: TDataSet);
begin
cds_natop.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_impostoIAfterPost(DataSet: TDataSet);
begin
cds_impostoi.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_impostoIAfterDelete(DataSet: TDataSet);
begin
cds_impostoi.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_ipiAfterDelete(DataSet: TDataSet);
begin
cds_ipi.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_ipiAfterPost(DataSet: TDataSet);
begin
cds_ipi.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_sitaAfterPost(DataSet: TDataSet);
begin
cds_sita.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_sitaAfterDelete(DataSet: TDataSet);
begin
cds_sita.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_produtosAfterDelete(DataSet: TDataSet);
begin
  cds_produtos.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_produtosAfterPost(DataSet: TDataSet);
begin
cds_produtos.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_fornecedoresAfterPost(DataSet: TDataSet);
begin
cds_fornecedores.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_fornecedoresAfterDelete(DataSet: TDataSet);
begin
cds_fornecedores.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfpAfterDelete(DataSet: TDataSet);
begin
cds_nfp.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfpAfterPost(DataSet: TDataSet);
begin
cds_nfp.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cfopAfterPost(DataSet: TDataSet);
begin
cds_cfop.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cfopAfterDelete(DataSet: TDataSet);
begin
cds_cfop.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_icmsAfterDelete(DataSet: TDataSet);
begin
cds_icms.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_icmsAfterPost(DataSet: TDataSet);
begin
cds_icms.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfepAfterPost(DataSet: TDataSet);
begin
cds_nfep.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfepAfterDelete(DataSet: TDataSet);
begin
cds_nfep.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_modbcstAfterDelete(DataSet: TDataSet);
begin
cds_modbcst.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_modbcstAfterPost(DataSet: TDataSet);
begin
cds_modbcst.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfsAfterPost(DataSet: TDataSet);
begin
cds_nfs.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfsAfterDelete(DataSet: TDataSet);
begin
cds_nfs.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_duplicataAfterDelete(DataSet: TDataSet);
begin
cds_duplicata.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_duplicataAfterPost(DataSet: TDataSet);
begin
cds_duplicata.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfeAfterPost(DataSet: TDataSet);
begin
cds_nfe.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_nfeAfterDelete(DataSet: TDataSet);
begin
cds_nfe.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_emitenteAfterDelete(DataSet: TDataSet);
begin
cds_emitente.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_emitenteAfterPost(DataSet: TDataSet);
begin
cds_emitente.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_rcservAfterPost(DataSet: TDataSet);
begin
cds_rcserv.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_rcservAfterDelete(DataSet: TDataSet);
begin
cds_rcserv.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_clientesAfterDelete(DataSet: TDataSet);
begin
cds_clientes.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_clientesAfterPost(DataSet: TDataSet);
begin
cds_clientes.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_unidadeAfterPost(DataSet: TDataSet);
begin
cds_unidade.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_unidadeAfterDelete(DataSet: TDataSet);
begin
cds_unidade.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cofinsAfterDelete(DataSet: TDataSet);
begin
cds_cofins.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_cofinsAfterPost(DataSet: TDataSet);
begin
cds_cofins.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_modbcAfterPost(DataSet: TDataSet);
begin
cds_modbc.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_modbcAfterDelete(DataSet: TDataSet);
begin
cds_modbc.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_MunicAfterDelete(DataSet: TDataSet);
begin
cds_munic.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_MunicAfterPost(DataSet: TDataSet);
begin
cds_munic.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_pisAfterPost(DataSet: TDataSet);
begin
cds_pis.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_pisAfterDelete(DataSet: TDataSet);
begin
cds_pis.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_ibptNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from ibpt');
    sql_consulta.Active := true;

    Cds_ibpt.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from ibpt');
    sql_consulta.Active := true;


    Cds_ibpt.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;
end;

procedure Tfrmdados.cds_ibptAfterPost(DataSet: TDataSet);
begin
cds_ibpt.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_ibptAfterDelete(DataSet: TDataSet);
begin
cds_ibpt.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_aliqinterAfterPost(DataSet: TDataSet);
begin
cds_aliqinter.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_aliqinterNewRecord(DataSet: TDataSet);
begin
    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(id) as contador from aliqinter');
    sql_consulta.Active := true;

    Cds_aliqinter.FieldByName('id').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(codigo) as contador from aliqinter');
    sql_consulta.Active := true;


    Cds_aliqinter.FieldByName('codigo').AsInteger :=  sql_consulta.fieldbyname('contador').asInteger + 1;

end;

procedure Tfrmdados.cds_aliqinterAfterDelete(DataSet: TDataSet);
begin
cds_aliqinter.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFPAfterPost(DataSet: TDataSet);
begin
cds_corrigirNFP.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFPAfterDelete(DataSet: TDataSet);
begin
cds_corrigirNFP.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFEAfterDelete(DataSet: TDataSet);
begin
cds_corrigirNFE.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFEAfterPost(DataSet: TDataSet);
begin
cds_corrigirNFE.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFAfterPost(DataSet: TDataSet);
begin
cds_corrigirNF.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirNFAfterDelete(DataSet: TDataSet);
begin
cds_corrigirNF.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirFornecedoresAfterDelete(DataSet: TDataSet);
begin
cds_corrigirFornecedores.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirFornecedoresAfterPost(DataSet: TDataSet);
begin
 cds_corrigirFornecedores.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirClientesAfterPost(DataSet: TDataSet);
begin
cds_corrigirClientes.ApplyUpdates(0);
end;

procedure Tfrmdados.cds_corrigirClientesAfterDelete(DataSet: TDataSet);
begin
cds_corrigirClientes.ApplyUpdates(0);
end;


procedure tfrmdados.verificaclientes;
var codigo:integer;
begin
      try
        cds_clientes.Active := false;
        sql_clientes.Active := false;
        sql_clientes.SQL.Clear;
        sql_clientes.SQL.Add('select * from clientes');
        sql_clientes.Active := true;
        cds_clientes.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar clientes, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from clientes group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from clientes where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from clientes ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update clientes set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;



procedure tfrmdados.verificaprodutos;
var codigo:integer;
begin
      try
        cds_produtos.Active := false;
        sql_produtos.Active := false;
        sql_produtos.SQL.Clear;
        sql_produtos.SQL.Add('select * from produtos');
        sql_produtos.Active := true;
        cds_produtos.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar produtos, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from produtos group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from produtos where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from produtos ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update produtos set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;




procedure tfrmdados.verificafornecedores;
var codigo:integer;
begin
      try
        cds_fornecedores.Active := false;
        sql_fornecedores.Active := false;
        sql_fornecedores.SQL.Clear;
        sql_fornecedores.SQL.Add('select * from fornecedores');
        sql_fornecedores.Active := true;
        cds_fornecedores.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar fornecedores, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from fornecedores group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from fornecedores where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from fornecedores ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update fornecedores set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;




procedure tfrmdados.verificanfp;
var codigo:integer;
begin
      try
        cds_nfp.Active := false;
        sql_nfp.Active := false;
        sql_nfp.SQL.Clear;
        sql_nfp.SQL.Add('select * from nfp');
        sql_nfp.Active := true;
        cds_nfp.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar produtos das notas fiscais, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from nfp group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from nfp where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from nfp ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update nfp set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;


procedure tfrmdados.verificanfe;
var codigo:integer;
begin
      try
        cds_nfe.Active := false;
        sql_nfe.Active := false;
        sql_nfe.SQL.Clear;
        sql_nfe.SQL.Add('select * from nfe');
        sql_nfe.Active := true;
        cds_nfe.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar produtos das notas fiscais, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from nfe group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from nfe where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from nfe ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update nfe set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;



procedure tfrmdados.verificanf;
var codigo:integer;
begin
      try
        cds_nf.Active := false;
        sql_nf.Active := false;
        sql_nf.SQL.Clear;
        sql_nf.SQL.Add('select * from nf');
        sql_nf.Active := true;
        cds_nf.Active := true;
      except

        if application.MessageBox('Ocorreu um problema ao acessar produtos das notas fiscais, deseja corrigir a base de dados? ', 'Atenção', mb_yesno) = 6 then
           begin
             //acha valores duplicados
             sql_exec.Active := false;
             sql_exec.SQL.Clear;
             sql_exec.SQL.Add('select DISTINCT codigo from nf group by codigo having count(codigo) > 1');
             sql_exec.Active := true;
             while not sql_exec.Eof  do
                begin
                  sql_exec2.Active := false;
                  sql_exec2.SQL.Clear;
                  sql_exec2.SQL.Add('select * from nf where codigo = '+frmdados.sql_exec.fieldbyname('codigo').asstring);
                  sql_exec2.Active := true;
                  while not  sql_exec2.Eof do
                      begin
                        sql_exec3.Active := false;
                        sql_exec3.SQL.Clear;
                        sql_exec3.SQL.Add('select max(codigo) as ultcodigo from nf ');
                        sql_exec3.Active := true;

                        codigo :=  sql_exec3.fieldbyname('ultcodigo').AsInteger + 1;

                        sql_exec4.Active := false;
                        sql_exec4.SQL.Clear;
                        sql_exec4.SQL.Add('update nf set codigo = '+ inttostr(codigo) +' where id = '+sql_exec2.fieldbyname('id').AsString);
                        sql_exec4.ExecSQL;

                        sql_exec2.Next;
                      end;
                  //endi


                  frmdados.sql_exec.next;
                end;





           end;





      end;



end;




procedure tfrmdados.atualizancm(ncm:string);
var
  {
  porcibpt, vlribpt, vlrestadual, vlrmunicipal, porcestadual, porcmunicipal:Currency;

  schave, sversao, sfonte:string;


  svigenciainicio:String;


  svigenciafim:String;
  }
  



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

      XMLDocument1.Active := False;
      XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=codigo'+'&valor='+ncm+'&uf='+ lowercase( sufpadrao  ));
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




      sql_exec.Active := false;
      sql_exec.SQL.Clear;
      sql_exec.SQL.Add('insert into ibpt (codigo, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
      sql_exec.SQL.Add(' values (:codigo, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

      sql_exec.Params.ParamByName('codigo').AsString :=  ncm;
      sql_exec.Params.ParamByName('ex').AsString :=  sex;
      sql_exec.Params.ParamByName('versao').AsString :=  sversao;
      sql_exec.Params.ParamByName('tipo').AsString :=  stipo;
      sql_exec.Params.ParamByName('descricao').AsString :=  sdescricao;

      sql_exec.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
      sql_exec.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

      sql_exec.Params.ParamByName('chave').AsString :=    schave;
      sql_exec.Params.ParamByName('fonte').AsString :=    sfonte;

      sql_exec.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
      sql_exec.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
      sql_exec.Params.ParamByName('estadual').AsFloat :=      festadual;
      sql_exec.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

      sql_exec.ExecSQL;








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







procedure Tfrmdados.dts_produtosDataChange(Sender: TObject; Field: TField);
begin
   sql_aliqinter.Active := false;
   cds_aliqinter.Active := false;
   sql_aliqinter.SQL.Clear;
   sql_aliqinter.SQL.Add('select * from aliqinter where codprod = '+  cds_produtos.fieldbyname('codigo').AsString );
   sql_aliqinter.Active := true;
   cds_aliqintercodprod.DefaultExpression :=  cds_produtos.fieldbyname('codigo').AsString;
   cds_aliqinterst.DefaultExpression := 'N';
   cds_aliqinter.Active := true;

end;

end.

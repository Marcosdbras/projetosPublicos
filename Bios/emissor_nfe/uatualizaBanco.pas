unit uatualizaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBXpress, FMTBcd, SqlExpr, DB, Provider, DBClient;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    cds_Paises: TClientDataSet;
    cds_Paisescodigo: TIntegerField;
    cds_Paisesnome: TStringField;
    cds_Paisessigla: TStringField;
    cds_Paisescodibge: TStringField;
    dts_Paises: TDataSource;
    cds_Estados: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    cds_Estadoscpais: TIntegerField;
    dts_Estados: TDataSource;
    cds_Temp: TClientDataSet;
    IntegerField2: TIntegerField;
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
    cds_Tempcod11P: TIntegerField;
    cds_Tempcod12P: TIntegerField;
    cds_Tempcod13P: TIntegerField;
    cds_Tempcod1A: TIntegerField;
    cds_Tempcod2A: TIntegerField;
    cds_Tempcod3A: TIntegerField;
    cds_Tempcod4A: TIntegerField;
    cds_Tempcod1B: TIntegerField;
    cds_Tempcod2B: TIntegerField;
    cds_Tempcod3B: TIntegerField;
    cds_Tempcod4B: TIntegerField;
    cds_Tempcod1C: TIntegerField;
    cds_Tempcod2C: TIntegerField;
    cds_Tempcod1T: TIntegerField;
    cds_Tempcod2T: TIntegerField;
    cds_Tempcod3T: TIntegerField;
    cds_TempCOD1I: TIntegerField;
    cds_TempCOD2I: TIntegerField;
    cds_TempCOD3I: TIntegerField;
    cds_Tempcod1m: TIntegerField;
    cds_Tempcod2m: TIntegerField;
    cds_Tempcod3m: TIntegerField;
    cds_Tempcod1cc: TIntegerField;
    cds_Tempcod2cc: TIntegerField;
    cds_Tempcod3cc: TIntegerField;
    cds_Tempcod1ee: TIntegerField;
    cds_Tempcod2ee: TIntegerField;
    cds_Tempcod3ee: TIntegerField;
    cds_Tempcod1ff: TIntegerField;
    cds_Tempcod2ff: TIntegerField;
    cds_Tempcod3ff: TIntegerField;
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
    cds_Tempcod14p: TIntegerField;
    cds_Tempid: TStringField;
    dts_Temp: TDataSource;
    cds_Munic: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    StringField7: TStringField;
    IntegerField6: TIntegerField;
    cds_Municfxinicial: TIntegerField;
    cds_Municfxfinal: TIntegerField;
    dts_Munic: TDataSource;
    cds_icms: TClientDataSet;
    IntegerField3: TIntegerField;
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
    dts_icms: TDataSource;
    cds_ipi: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    cds_ipicpadrao: TIntegerField;
    dts_ipi: TDataSource;
    cds_sita: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    cds_sitacpadrao: TIntegerField;
    dts_sita: TDataSource;
    cds_sitb: TClientDataSet;
    IntegerField8: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    dts_sitb: TDataSource;
    cds_cf: TClientDataSet;
    IntegerField9: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    dts_cf: TDataSource;
    cds_modbc: TClientDataSet;
    IntegerField10: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    dts_modbc: TDataSource;
    cds_modbcst: TClientDataSet;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    dts_modbcst: TDataSource;
    cds_impostoI: TClientDataSet;
    IntegerField12: TIntegerField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    dts_impostoI: TDataSource;
    cds_impostoII: TClientDataSet;
    IntegerField13: TIntegerField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    dts_impostoII: TDataSource;
    cds_impostoIII: TClientDataSet;
    IntegerField14: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    dts_impostoIII: TDataSource;
    cds_pis: TClientDataSet;
    IntegerField15: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    cds_piscpadrao: TIntegerField;
    dts_pis: TDataSource;
    cds_cofins: TClientDataSet;
    IntegerField16: TIntegerField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    cds_cofinscpadrao: TIntegerField;
    dts_cofins: TDataSource;
    cds_cfop: TClientDataSet;
    IntegerField17: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
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
    dts_cfop: TDataSource;
    cds_natop: TClientDataSet;
    IntegerField18: TIntegerField;
    StringField30: TStringField;
    cds_natopccfop: TIntegerField;
    cds_natopccfopf: TIntegerField;
    cds_natopcicms: TIntegerField;
    dts_natop: TDataSource;
    cds_unidade: TClientDataSet;
    IntegerField19: TIntegerField;
    StringField32: TStringField;
    cds_unidadesigla: TStringField;
    dts_unidade: TDataSource;
    cds_tiposerv: TClientDataSet;
    IntegerField20: TIntegerField;
    StringField31: TStringField;
    StringField33: TStringField;
    dts_tiposerv: TDataSource;
    cds_rcserv: TClientDataSet;
    IntegerField21: TIntegerField;
    StringField34: TStringField;
    StringField35: TStringField;
    dts_rcserv: TDataSource;
    cds_produtos: TClientDataSet;
    IntegerField22: TIntegerField;
    StringField36: TStringField;
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
    dts_produtos: TDataSource;
    cds_transportador: TClientDataSet;
    IntegerField23: TIntegerField;
    cds_transportadorcnpj: TStringField;
    cds_transportadorie: TStringField;
    cds_transportadornome: TStringField;
    cds_transportadorfantasia: TStringField;
    cds_transportadortelefones: TStringField;
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
    dts_transportador: TDataSource;
    cds_cmobra: TClientDataSet;
    IntegerField24: TIntegerField;
    StringField37: TStringField;
    FloatField13: TFloatField;
    cds_cmobracrcserv: TIntegerField;
    cds_cmobractiposerv: TIntegerField;
    cds_cmobracimpostoi: TIntegerField;
    dts_cmobra: TDataSource;
    cds_clientes: TClientDataSet;
    IntegerField25: TIntegerField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    StringField50: TStringField;
    StringField51: TStringField;
    cds_clientesctransp: TIntegerField;
    cds_clientesobs: TMemoField;
    dts_clientes: TDataSource;
    cds_regtrib: TClientDataSet;
    IntegerField28: TIntegerField;
    StringField52: TStringField;
    StringField53: TStringField;
    cds_regtribobs: TMemoField;
    cds_regtribporcg: TFloatField;
    dts_regtrib: TDataSource;
    cds_emitente: TClientDataSet;
    IntegerField29: TIntegerField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    StringField64: TStringField;
    StringField65: TStringField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    StringField66: TStringField;
    StringField67: TStringField;
    MemoField1: TMemoField;
    cds_emitentecregtrib: TIntegerField;
    dts_emitente: TDataSource;
    cds_fornecedores: TClientDataSet;
    IntegerField32: TIntegerField;
    StringField68: TStringField;
    StringField69: TStringField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    StringField80: TStringField;
    StringField81: TStringField;
    IntegerField35: TIntegerField;
    MemoField2: TMemoField;
    dts_fornecedores: TDataSource;
    cds_nf: TClientDataSet;
    IntegerField36: TIntegerField;
    cds_nfcemi: TIntegerField;
    cds_nfcdest: TIntegerField;
    cds_nftipodest: TStringField;
    cds_nfdatacad: TDateField;
    cds_nfnomedest: TStringField;
    cds_nfctipoemi: TIntegerField;
    cds_nfncupom: TStringField;
    cds_nfnnfrefdevol: TStringField;
    cds_nfdatanfrefdevol: TDateField;
    cds_nfvlrcredicms: TFloatField;
    cds_nfaliqcredicms: TFloatField;
    cds_nfvlrreticms: TFloatField;
    cds_nfaliqreticms: TFloatField;
    cds_nfartricms: TStringField;
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
    cds_nfdin: TFloatField;
    cds_nfnparc: TIntegerField;
    cds_nfdatainic: TDateTimeField;
    cds_nfperiodo: TIntegerField;
    cds_nfplacavei: TStringField;
    cds_nfufvei: TStringField;
    cds_nfquantidade: TStringField;
    cds_nfespecie: TStringField;
    cds_nfmarca: TStringField;
    cds_nfnumero: TStringField;
    cds_nfpesob: TStringField;
    cds_nfpesol: TStringField;
    cds_nfiesubtrib: TStringField;
    cds_nfBSCALCSUBSTRIB: TFloatField;
    cds_nfVLRICMSSUBTRIB: TFloatField;
    cds_nfbscalcsubtrib: TFloatField;
    cds_nftvlrfrete: TFloatField;
    cds_nftvlrseg: TFloatField;
    cds_nftvlrout: TFloatField;
    cds_nfctiponf: TIntegerField;
    cds_nfcfreteporconta: TIntegerField;
    cds_nfctransp: TIntegerField;
    dts_nf: TDataSource;
    cds_tiponf: TClientDataSet;
    IntegerField37: TIntegerField;
    StringField82: TStringField;
    StringField83: TStringField;
    dts_tiponf: TDataSource;
    cds_onusdofrete: TClientDataSet;
    IntegerField38: TIntegerField;
    StringField84: TStringField;
    StringField85: TStringField;
    dts_onusdofrete: TDataSource;
    cds_indice: TClientDataSet;
    IntegerField39: TIntegerField;
    cds_indicecaminhoarqnfe: TStringField;
    cds_indicennf: TIntegerField;
    cds_indicecaminhoarqnfetemp: TStringField;
    cds_indicecontadornfe: TIntegerField;
    cds_indicechaveconsultacep: TStringField;
    cds_indiceimportarpara: TStringField;
    cds_indiceexportarpara: TStringField;
    cds_indiceconfigcpro: TIntegerField;
    cds_indicehverao: TStringField;
    dts_indice: TDataSource;
    cds_nfe: TClientDataSet;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    cds_nfecdest: TIntegerField;
    IntegerField43: TIntegerField;
    cds_nfetipodest: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    IntegerField44: TIntegerField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField87: TStringField;
    StringField88: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    IntegerField45: TIntegerField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    FloatField20: TFloatField;
    DateField2: TDateField;
    FloatField21: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField22: TFloatField;
    StringField95: TStringField;
    cds_nfeiesubstrib: TStringField;
    cds_nfemodelonf: TStringField;
    cds_nfeserienf: TStringField;
    cds_nfecodigonf: TStringField;
    cds_nfetiponf: TStringField;
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
    cds_nfenomedest: TStringField;
    cds_nfeimpnf: TStringField;
    cds_nfecontador: TIntegerField;
    cds_nfeicorrecao: TIntegerField;
    cds_nfeehcorrigida: TStringField;
    cds_nfeehcancelada: TStringField;
    cds_nfeehsucesso: TStringField;
    dts_nfe: TDataSource;
    cds_nfp: TClientDataSet;
    IntegerField48: TIntegerField;
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
    cds_nfpnomeunidade: TStringField;
    cds_nfpsimplesncm: TStringField;
    dts_nfp: TDataSource;
    cds_csosn: TClientDataSet;
    IntegerField49: TIntegerField;
    StringField96: TStringField;
    StringField97: TStringField;
    dts_csosn: TDataSource;
    cds_nfs: TClientDataSet;
    IntegerField50: TIntegerField;
    IntegerField51: TIntegerField;
    StringField98: TStringField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    cds_nfscnf: TIntegerField;
    IntegerField53: TIntegerField;
    IntegerField54: TIntegerField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    IntegerField57: TIntegerField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IntegerField62: TIntegerField;
    IntegerField63: TIntegerField;
    IntegerField64: TIntegerField;
    IntegerField65: TIntegerField;
    IntegerField66: TIntegerField;
    IntegerField67: TIntegerField;
    dts_nfs: TDataSource;
    cds_tipopgto: TClientDataSet;
    IntegerField52: TIntegerField;
    cds_tipopgtodescricao: TStringField;
    cds_tipopgtoehvd: TStringField;
    dts_tipopgto: TDataSource;
    cds_fatura: TClientDataSet;
    IntegerField68: TIntegerField;
    cds_faturacnf: TIntegerField;
    cds_faturactipopgto: TIntegerField;
    cds_faturanfat: TStringField;
    cds_faturavorig: TFloatField;
    cds_faturavdesc: TFloatField;
    cds_faturavliq: TFloatField;
    cds_faturapdesc: TFloatField;
    cds_faturantipopgto: TStringField;
    dts_fatura: TDataSource;
    cds_duplicata: TClientDataSet;
    IntegerField69: TIntegerField;
    cds_duplicatadtv: TDateField;
    cds_duplicatavdup: TFloatField;
    cds_duplicatandup: TStringField;
    cds_duplicatacnf: TIntegerField;
    cds_duplicataprazo: TIntegerField;
    cds_duplicatadte: TDateField;
    dts_duplicata: TDataSource;
    cds_tgicms: TClientDataSet;
    IntegerField70: TIntegerField;
    StringField99: TStringField;
    cds_tgicmscsitb: TIntegerField;
    cds_tgicmstabref: TStringField;
    cds_tgicmscamporef: TStringField;
    cds_tgicmsnsitb: TStringField;
    dts_tgicms: TDataSource;
    cds_aux: TClientDataSet;
    cds_nfep: TClientDataSet;
    IntegerField71: TIntegerField;
    IntegerField72: TIntegerField;
    StringField100: TStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    IntegerField77: TIntegerField;
    IntegerField78: TIntegerField;
    IntegerField79: TIntegerField;
    IntegerField80: TIntegerField;
    IntegerField81: TIntegerField;
    IntegerField82: TIntegerField;
    IntegerField83: TIntegerField;
    IntegerField84: TIntegerField;
    IntegerField85: TIntegerField;
    IntegerField86: TIntegerField;
    IntegerField87: TIntegerField;
    IntegerField88: TIntegerField;
    cds_nfeppdescd: TFloatField;
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
    dts_nfep: TDataSource;
    cds_eprodutos: TClientDataSet;
    cds_temp_imp: TClientDataSet;
    cds_temp_impid: TStringField;
    cds_temp_impobs: TMemoField;
    cds_cupom: TClientDataSet;
    cds_cupomcodigo: TIntegerField;
    cds_cupommodelo: TStringField;
    cds_cupomdte: TDateField;
    cds_cupomcoo: TStringField;
    cds_cupomcaixa: TStringField;
    cds_cupomserieecf: TStringField;
    cds_cupomcnf: TIntegerField;
    dts_cupom: TDataSource;
    cds_config: TClientDataSet;
    cds_configdataexpira: TDateField;
    cds_configdataatual: TDateField;
    dts_config: TDataSource;
    cd_enfe: TClientDataSet;
    dsp_tabela1: TDataSetProvider;
    dados_nfe: TSQLConnection;
    dbx_tabela1: TSQLQuery;
    cd_enatop: TClientDataSet;
    cd_enf: TClientDataSet;
    cd_eindice: TClientDataSet;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
    uses Ugeral;
{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
Close
end;

procedure TForm1.Button1Click(Sender: TObject);
var vardir, scampo:string;
    x:integer;

begin

  

  vardir := extractfilepath(application.ExeName);

  cds_natop.Active := false;
  cds_nf.Active := false;


  if fileexists(vardir+'atnatop.txt') then
     begin
       CopiArq( vardir+'natop.cds', vardir+'enatop.cds' );
       deletefile(pchar( vardir+'natop.cds' ) );
     end;
  //endi

  if fileexists(vardir+'atsitb.txt') then
     begin
       CopiArq( vardir+'sitb.cds', vardir+'esitb.cds' );
       deletefile(pchar( vardir+'sitb.cds' ) );
     end;
  //endi

  if fileexists(vardir+'atprodutos.txt') then
     begin
       CopiArq( vardir+'produtos.cds', vardir+'eprodutos.cds' );
       deletefile(pchar( vardir+'produtos.cds' ) );
     end;
  //endi


  if fileexists(vardir+'atnf.txt') then
     begin
       CopiArq( vardir+'nf.cds', vardir+'enf.cds' );
       deletefile(pchar( vardir+'nf.cds' ) );
     end;
  //endi


  if fileexists(vardir+'atindice.txt') then
     begin
       CopiArq( vardir+'indice.cds', vardir+'eindice.cds' );
       deletefile(pchar( vardir+'indice.cds' ) );
     end;
  //endi



  if fileexists(vardir+'atnfe.txt') then
     begin
       CopiArq( vardir+'nfe.cds', vardir+'enfe.cds' );
       deletefile(pchar( vardir+'nfe.cds' ) );
     end;
  //endi





  if fileexists(vardir+'atnfp.txt') then
     begin
       CopiArq( vardir+'nfp.cds', vardir+'enfp.cds' );
       //deletefile(pchar( vardir+'nfp.cds' ) );
     end;
  //endi

  cds_Paises.Active := false;

  with cds_Paises do
    begin
      Active := false;
      FileName :=vardir+'Paises.cds';
      if not fileexists(vardir+'Paises.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'Paises.cds',dfbinary);
         end;
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



      IndexName := 'codigo';
    end;
  //endth


  cds_Estados.Active := false;

  with cds_Estados do
    begin
      Active := false;
      FileName :=vardir+'Estados.cds';
      if not fileexists(vardir+'Estados.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'Estados.cds',dfbinary);
         end;
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
           post;
         end;
      //endi



      Active := false;
      IndexName := 'codigo';

    end;
  //endth


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


  cds_Munic.Active := false;

  with cds_Munic do
    begin
      Active := false;
      FileName :=vardir+'Munic.cds';
      if not fileexists(vardir+'Munic.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'Munic.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_ICMS.Active := false;

  with cds_ICMS do
    begin
      Active := false;
      FileName :=vardir+'ICMS.cds';
      if not fileexists(vardir+'ICMS.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'ICMS.cds',dfbinary);
         end;
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

      IndexName := 'codigo';

    end;
  //endth


  cds_IPI.Active := false;

  with cds_IPI do
    begin
      Active := false;
      FileName :=vardir+'IPI.cds';
      if not fileexists(vardir+'IPI.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'IPI.cds',dfbinary);
         end;
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
      IndexName := 'codigo';

    end;
  //endth


  cds_sita.Active := false;

  with cds_sita do
    begin
      Active := false;
      FileName :=vardir+'sita.cds';
      if not fileexists(vardir+'sita.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'sita.cds',dfbinary);
         end;
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
      IndexName := 'codigo';

    end;
  //endth


  cds_sitb.Active := false;

  with cds_sitb do
    begin
      Active := false;
      FileName :=vardir+'sitb.cds';
      if not fileexists(vardir+'sitb.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'sitb.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';

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

      {


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

      }

      Active := false;

    end;
  //endth

  cds_cf.Active := false;

  with cds_cf do
    begin
      Active := false;
      FileName :=vardir+'cf.cds';
      if not fileexists(vardir+'cf.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'cf.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_modbc.Active := false;

  with cds_modbc do
    begin
      Active := false;
      FileName :=vardir+'modbc.cds';
      if not fileexists(vardir+'modbc.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'modbc.cds',dfbinary);
         end;
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
      IndexName := 'codigo';
    end;
  //endth

  cds_modbcst.Active := false;

  with cds_modbcst do
    begin
      Active := false;
      FileName :=vardir+'modbcst.cds';
      if not fileexists(vardir+'modbcst.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'modbcst.cds',dfbinary);
         end;
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

      IndexName := 'codigo';

    end;
  //endth


  cds_impostoI.Active := false;

  with cds_impostoI do
    begin
      Active := false;
      FileName :=vardir+'impostoI.cds';
      if not fileexists(vardir+'impostoI.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'impostoI.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_impostoII.Active := false;

  with cds_impostoII do
    begin
      Active := false;
      FileName :=vardir+'impostoII.cds';
      if not fileexists(vardir+'impostoII.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'impostoII.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_impostoIII.Active := false;

  with cds_impostoIII do
    begin
      Active := false;
      FileName :=vardir+'impostoIII.cds';
      if not fileexists(vardir+'impostoIII.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'impostoIII.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_pis.Active := false;

  with cds_pis do
    begin
      Active := false;
      FileName :=vardir+'pis.cds';
      if not fileexists(vardir+'pis.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'pis.cds',dfbinary);
         end;
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


      IndexName := 'codigo';

    end;
  //endth


  cds_cofins.Active := false;

  with cds_cofins do
    begin
      Active := false;
      FileName :=vardir+'cofins.cds';
      if not fileexists(vardir+'cofins.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'cofins.cds',dfbinary);
         end;
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

      IndexName := 'codigo';

    end;
  //endth


  cds_cfop.Active := false;

  with cds_cfop do
    begin
      Active := false;
      FileName :=vardir+'cfop.cds';
      if not fileexists(vardir+'cfop.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'cfop.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';


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



    end;
  //endth


  cds_natop.Active := false;

  with cds_natop do
    begin
      Active := false;
      FileName :=vardir+'natop.cds';
      if not fileexists(vardir+'natop.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'natop.cds',dfbinary);
         end;
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




      IndexName := 'codigo';

    end;
  //endth


  cds_unidade.Active := false;

  with cds_unidade do
    begin
      Active := false;
      FileName :=vardir+'unidade.cds';
      if not fileexists(vardir+'unidade.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'unidade.cds',dfbinary);
         end;
      //endi

      {

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

      }

      Active := false;
      IndexName := 'codigo';

    end;
  //endth

  cds_tiposerv.Active := false;

  with cds_tiposerv do
    begin
      Active := false;
      FileName :=vardir+'tiposerv.cds';
      if not fileexists(vardir+'tiposerv.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'tiposerv.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_rcserv.Active := false;

  with cds_rcserv do
    begin
      Active := false;
      FileName :=vardir+'rcserv.cds';
      if not fileexists(vardir+'rcserv.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'rcserv.cds',dfbinary);
         end;
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
      IndexName := 'codigo';

    end;
  //endth


  cds_produtos.Active := false;

  with cds_produtos do
    begin
      Active := false;
      FileName :=vardir+'produtos.cds';
      if not fileexists(vardir+'produtos.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'produtos.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_transportador.Active := false;

  with cds_transportador do
    begin
      Active := false;
      FileName :=vardir+'transportador.cds';
      if not fileexists(vardir+'transportador.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'transportador.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_cmobra.Active := false;

  with cds_cmobra do
    begin
      Active := false;
      FileName :=vardir+'cmobra.cds';
      if not fileexists(vardir+'cmobra.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'cmobra.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_clientes.Active := false;

  with cds_clientes do
    begin
      Active := false;
      FileName :=vardir+'clientes.cds';
      if not fileexists(vardir+'clientes.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'clientes.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_regtrib.Active := false;

  with cds_regtrib do
    begin
      Active := false;
      FileName :=vardir+'regtrib.cds';
      if not fileexists(vardir+'regtrib.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'regtrib.cds',dfbinary);
         end;
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
      IndexName := 'codigo';

    end;
  //endth

  cds_emitente.Active := false;

  with cds_emitente do
    begin
      Active := false;
      FileName :=vardir+'emitente.cds';
      if not fileexists(vardir+'emitente.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'emitente.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_fornecedores.Active := false;

  with cds_fornecedores do
    begin
      Active := false;
      FileName :=vardir+'fornecedores.cds';
      if not fileexists(vardir+'fornecedores.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'fornecedores.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_nf.Active := false;

  with cds_nf do
    begin
      Active := false;
      FileName :=vardir+'nf.cds';
      if not fileexists(vardir+'nf.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'nf.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_indice.Active := false;

  with cds_indice do
    begin
      Active := false;
      FileName :=vardir+'indice.cds';
      if not fileexists(vardir+'indice.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'indice.cds',dfbinary);
         end;
      //endi

      IndexName := 'codigo';

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

  cds_tiponf.Active := false;

  with cds_tiponf do
    begin
      Active := false;
      FileName :=vardir+'tiponf.cds';
      if not fileexists(vardir+'tiponf.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'tiponf.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';

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



  cds_onusdofrete.Active := false;

  with cds_onusdofrete do
    begin
      Active := false;
      FileName :=vardir+'onusdofrete.cds';
      if not fileexists(vardir+'onusdofrete.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'onusdofrete.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';

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


  cds_tipopgto.Active := false;

  with cds_tipopgto do
    begin
      Active := false;
      FileName :=vardir+'tipopgto.cds';
      if not fileexists(vardir+'tipopgto.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'tipopgto.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'codigo';

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




  cds_nfe.Active := false;

  with cds_nfe do
    begin
      Active := false;
      FileName :=vardir+'nfe.cds';
      if not fileexists(vardir+'nfe.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'nfe.cds',dfbinary);
         end;
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

  with cds_nfep do
    begin
      Active := false;
      FileName :=vardir+'nfep.cds';
      if not fileexists(vardir+'nfep.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'nfep.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_nfp.Active := false;

  with cds_nfp do
    begin
      Active := false;
      FileName :=vardir+'nfp.cds';
      if not fileexists(vardir+'nfp.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'nfp.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_csosn.Active := false;

  with cds_csosn do
    begin
      Active := false;
      FileName :=vardir+'csosn.cds';
      if not fileexists(vardir+'csosn.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'csosn.cds',dfbinary);
         end;
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




      {

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

      }


      Active := false;
      IndexName := 'codigo';

    end;
  //endth


  cds_nfs.Active := false;

  with cds_nfs do
    begin
      Active := false;
      FileName :=vardir+'nfs.cds';
      if not fileexists(vardir+'nfs.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'nfs.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth


  cds_fatura.Active := false;

  with cds_fatura do
    begin
      Active := false;
      FileName :=vardir+'fatura.cds';
      if not fileexists(vardir+'fatura.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'fatura.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_duplicata.Active := false;

  with cds_duplicata do
    begin
      Active := false;
      FileName :=vardir+'duplicata.cds';
      if not fileexists(vardir+'duplicata.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'duplicata.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

    end;
  //endth

  cds_cupom.Active := false;

  with cds_cupom do
    begin
      Active := false;
      FileName :=vardir+'cupom.cds';
      if not fileexists(vardir+'cupom.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'cupom.cds',dfbinary);
         end;
      //endi
      //Active := true;
      //IndexName := 'codigo';

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





  cds_tgicms.Active := false;

  with cds_tgicms do
    begin
      Active := false;
      FileName :=vardir+'tgicms.cds';
      if not fileexists(vardir+'tgicms.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'tgicms.cds',dfbinary);
         end;
      //endi
      //Active := true;
      IndexName := 'codigo';

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
       //copia de arquivo velho para novo
       deletefile(pchar( vardir+'atnfp.txt' ) );
     end;
  //endi






end;

end.

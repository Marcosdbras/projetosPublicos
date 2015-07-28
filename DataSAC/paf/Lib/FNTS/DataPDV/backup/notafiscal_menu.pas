unit notafiscal_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, IBC, frxClass, Menus, AdvMenus,
  ImgList, AdvMenuStylers, RzDBEdit, RzEdit, ToolEdit, Mask, RzBtnEdt,
  AdvGlowButton, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  Tfrmnotafiscal_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    dsnota: TDataSource;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Sair2: TMenuItem;
    espelho: TfrxReport;
    ImageList2: TImageList;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Label10: TLabel;
    bfiltrar: TAdvGlowButton;
    Bevel1: TBevel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    RzDBEdit1: TRzDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel7: TBevel;
    Bevel4: TBevel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    query: TIBCQuery;
    qrnota: TIBCQuery;
    qrnotaSITUACAO: TIntegerField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_SAIDA: TDateTimeField;
    qrnotacliente: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaempresa: TStringField;
    qrnotaCODIGO: TStringField;
    qrnotaCODCLIENTE: TStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TStringField;
    qrnotaPLACA_UF: TStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TStringField;
    qrnotaVOL_MARCA: TStringField;
    qrnotaVOL_NUMERO: TStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaMOTIVO: TStringField;
    qrnotaFATURAMENTO_DATA1: TDateTimeField;
    qrnotaFATURAMENTO_DATA2: TDateTimeField;
    qrnotaFATURAMENTO_DATA3: TDateTimeField;
    qrnotaFATURAMENTO_DATA4: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO1: TStringField;
    qrnotaFATURAMENTO_NUMERO2: TStringField;
    qrnotaFATURAMENTO_NUMERO3: TStringField;
    qrnotaFATURAMENTO_NUMERO4: TStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaINF1: TStringField;
    qrnotaINF2: TStringField;
    qrnotaINF3: TStringField;
    qrnotaINF4: TStringField;
    qrnotaINF5: TStringField;
    qrnotaHORA: TStringField;
    qrnotaSITUACAO_A: TStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaMOVIMENTO: TStringField;
    qrnotaendereco: TStringField;
    qrnotacpf: TStringField;
    qrnotarg: TStringField;
    qrnotanatureza: TStringField;
    qrnotafilial: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaBAIXA_ESTOQUE: TStringField;
    qrnotaTIPO: TStringField;
    qrnotaOS_COD1: TStringField;
    qrnotaOS_COD2: TStringField;
    qrnotaOS_COD3: TStringField;
    qrnotaOS_COD4: TStringField;
    qrnotaOS_COD5: TStringField;
    qrnotaOS_COD6: TStringField;
    qrnotaOS_SERV1: TStringField;
    qrnotaOS_SERV2: TStringField;
    qrnotaOS_SERV3: TStringField;
    qrnotaOS_SERV4: TStringField;
    qrnotaOS_SERV5: TStringField;
    qrnotaOS_SERV6: TStringField;
    qrnotaOS_COMP1: TStringField;
    qrnotaOS_COMP2: TStringField;
    qrnotaOS_COMP3: TStringField;
    qrnotaOS_COMP4: TStringField;
    qrnotaOS_COMP5: TStringField;
    qrnotaOS_COMP6: TStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaFAT_FORMA_PGTO: TStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;
    qrproduto2: TIBCQuery;
    qrcliente2: TIBCQuery;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    qrempresa: TIBCQuery;
    qrempresaCODIGO: TStringField;
    qrempresaFILIAL: TStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TStringField;
    qrempresaOBS1: TStringField;
    qrempresaOBS2: TStringField;
    qrempresaCONTRIBUINTE_IPI: TStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrempresaEMPRESA_ESTADUAL: TStringField;
    qrempresaOPTANTE_SIMPLES: TStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrempresaECF: TStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TStringField;
    qrempresaRESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaBAIRRO: TStringField;
    qrmodelo: TIBCQuery;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    qrcliente: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    qrnota_item: TIBCQuery;
    qrnota_total: TIBCQuery;
    qrnota_antes: TIBCQuery;
    qritem_antes: TIBCQuery;
    qrgrade_entrada: TIBCQuery;
    query2: TIBCQuery;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaFAT_TIPO: TIntegerField;
    qrnotaCODVENDEDOR: TStringField;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  vopcao_nfs,vopcao_item: integer;
    { Public declarations }
  end;

var
  frmnotafiscal_menu: Tfrmnotafiscal_menu;
     vrecno: integer;
       cancela : boolean;
implementation

uses modulo, principal, xloc_cliente, funcoes, notafiscal;

{$R *.dfm}

procedure Tfrmnotafiscal_menu.bincluirClick(Sender: TObject);
begin


     vrecno := qrnota.RecNo;

     vopcao_nfs := 1;

  qrnota.Insert;
  qrnota.FieldByName('codigo').asstring := frmprincipal.codifica('000061',6);
  qrnota.fieldbyname('situacao').asinteger := 1;
  qrnota.fieldbyname('baixa_estoque').asstring := 'S';
  qrnota.fieldbyname('sit').asstring := 'N';
  qrnota.fieldbyname('movimento').asstring := 'S';
  qrnota.fieldbyname('codfilial').asstring := '000001';
  qrnota.fieldbyname('codvendedor').asstring := 'S/VEND';

  FRMMODULO.QRCONFIG.OPEN;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_RECEBER').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 0 ;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_duplicata').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 0 ;






  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.Open;

  btotaliza_notaClick(frmnotafiscal_menu);


  

end;

procedure Tfrmnotafiscal_menu.FormShow(Sender: TObject);
begin

  qrmodelo.CLOSE;
  QRMODELO.SQL.CLEAR;
  QRMODELO.SQL.ADD('SELECT * FROM C000082 ORDER BY SINTEGRA');
  QRMODELO.OPEN;
  QRMODELO.IndexFieldNames := 'SINTEGRA';

  FRMMODULO.QRFILIAL.close;
  FRMMODULO.QRFILIAL.sql.clear;
  FRMMODULO.QRFILIAL.sql.add('select * from c000004');
  FRMMODULO.QRFILIAL.Open;


  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';


  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 ');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.sql.clear;
  frmmodulo.qrfiscal_modelo.sql.add('SELECT * FROM C000082 ORDER BY MODELO');
  frmmodulo.qrfiscal_modelo.open;
  frmmodulo.qrfiscal_MODELO.IndexFieldNames := 'SINTEGRA';


 dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf order by numero');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;

  qrnota.open;


  //conf_totalnota

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  //gridRowChanged(frmcompra_menu);
  grid.SetFocus;

end;

procedure Tfrmnotafiscal_menu.bfecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmnotafiscal_menu.balterarClick(Sender: TObject);
var
  vrecno : integer;
begin

  vrecno := qrnota.RecNo;

  IF QRNOTA.FieldByName('SITUACAO').ASINTEGER = 1 THEN
  BEGIN
    vopcao_nfs := 2;
    IF QRNOTA.RECORDCOUNT = 0 THEN EXIT;

    qrnota.edit;






  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.showmodal;



    qrnota.refresh;


    qrempresa.close;
    qrempresa.sql.clear;
    qrempresa.sql.add('select * from  c000004');
    qrempresa.Open;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from  c000007');
    qrcliente.Open;

    btotaliza_notaClick(frmnotafiscal_menu);

    qrnota.RecNo := vrecno;

  END
  else
  begin
    application.messagebox('Nota fiscal cancelada! Impossível alterar!','Atenção',mb_ok+mb_iconerror);
  end;

  

end;

procedure Tfrmnotafiscal_menu.b(Sender: TObject);
begin
//
end;

procedure Tfrmnotafiscal_menu.gridRowChanged(Sender: TObject);
begin
{
  IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
}
    
end;

procedure Tfrmnotafiscal_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then balterarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
    qrcliente2.close;
    qrcliente2.sql.Clear;
    qrcliente2.sql.add('select * from c000007 where codigo = '''+zerar(copy(ecliente.Text,1,6),6)+'''');
    qrcliente2.Open;
    if qrcliente2.RecordCount > 0 then
    begin
      if qrcliente2.RecordCount = 1 then
      begin
        ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
          perform(wm_nextdlgctl,0,0);
        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado! Favor verificar!','Atenção',mb_ok+mb_iconerror);
      ecliente.setfocus;

    end;
    end;
  end;


end;

procedure Tfrmnotafiscal_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  ecliente.text;
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        enumero.setfocus;
end;

procedure Tfrmnotafiscal_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)
end;

procedure Tfrmnotafiscal_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

procedure Tfrmnotafiscal_menu.BfiltrarClick(Sender: TObject);
var cliente, nota : string;
begin
  if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

  qrnota.close;
  qrnota.sql.clear;

  if (enumero.text = '000000') or (enumero.text = '') then
  begin
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  end
  else
    qrnota.SQL.add('select * from c000061 where codigo is not null '+cliente+nota+' order by numero');
  qrnota.open;

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  gridRowChanged(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.ENUMEROExit(Sender: TObject);
begin
  enumero.text := zerar(enumero.text,6);
end;

procedure Tfrmnotafiscal_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.next;
  end;
  dsnota.DataSet := qrnota;

  qrnota.RecNo := vrecno;


end;

procedure Tfrmnotafiscal_menu.eclienteEnter(Sender: TObject);
begin
     ecliente.Text := '';
end;

procedure Tfrmnotafiscal_menu.gridKeyPress(Sender: TObject; var Key: Char);
begin
{  if key = #13 then
    begin
      vrecno := qrnota.RecNo;

      vopcao_nfs := 0;

      qrnota.edit;

      frmnotafiscal := tfrmnotafiscal.create(self);
      frmnotafiscal.showmodal;
      qrnota.refresh;

      qrnota.RecNo := vrecno;

      qrempresa.close;
      qrempresa.sql.clear;
      qrempresa.sql.add('select * from  c000004');
      qrempresa.Open;

      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from  c000007');
      qrcliente.Open;

      btotaliza_notaClick(frmnotafiscal_menu);

    end;

}
end;

procedure Tfrmnotafiscal_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
var cliente, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_saida'))or
      (ansiuppercase(aFieldName) = ansiuppercase('modelo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('crop'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total_nota'))or
      (ansiuppercase(aFieldName) = ansiuppercase('base_calculo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('valor_icms'))then

   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;

   end;

   if ansiuppercase(afieldname) = 'CLIENTE' then
   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;

end;

procedure Tfrmnotafiscal_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.

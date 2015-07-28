unit lista_cliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_cliente2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_cliente: TComboBox;
    Label3: TLabel;
    combo_vendedor: TComboBox;
    ldia: TLabel;
    combo_dia: TComboBox;
    Label7: TLabel;
    combo_regiao: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    Label4: TLabel;
    combo_situacao: TComboBox;
    combo_mes: TComboBox;
    lmes: TLabel;
    fxcliente: TfrxReport;
    fscliente: TfrxDBDataset;
    qrcliente: TZQuery;
    qrclienteNOME: TStringField;
    qrclienteCODIGO: TStringField;
    qrclienteCPF: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrclienteCODREGIAO: TStringField;
    qrclienteregiao: TStringField;
    qrclientevendedor: TStringField;
    qrclientepessoa: TStringField;
    qrclientesit: TStringField;
    qrcidade: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    dscidade: TDataSource;
    qrregiao: TZQuery;
    frxDBDataset2: TfrxDBDataset;
    qrregiaoCODREGIAO: TStringField;
    qrregiaoTOTAL: TIntegerField;
    qrregiaoregiao: TStringField;
    dsregiao: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_vendedorChange(Sender: TObject);
    procedure combo_regiaoChange(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure qrclienteCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cliente2: Tfrmlista_cliente2;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal;

{$R *.dfm}

procedure Tfrmlista_cliente2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_cliente2.FormShow(Sender: TObject);
VAR DIA, MES, ANO : WORD;
begin


  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_vendedor.ItemIndex := 0;
  combo_regiao.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;


  combo_ordem.ItemIndex := 0;
  combo_dia.ItemIndex := 0;

  TRY
  DecodeDate(DATE,ANO,MES,DIA);
  combo_mes.ItemIndex := MES-1;

  EXCEPT
    combo_mes.ItemIndex := 0;
  END;

  


end;

procedure Tfrmlista_cliente2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cliente2.combo_vendedorChange(Sender: TObject);
begin
  IF combo_vendedor.Text = 'SELECIONAR' THEN
  BEGIN
    frmloc_funci := tfrmloc_funci.create(self);
    frmloc_funci.showmodal;


    combo_vendedor.Items.Add(frmmodulo.qrfunci.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrfunci.fieldbyname('nome').asstring);
    combo_vendedor.ItemIndex := combo_vendedor.Items.Count - 1;
  END;
end;

procedure Tfrmlista_cliente2.combo_regiaoChange(Sender: TObject);
begin
  IF combo_regiao.Text = 'SELECIONAR' THEN
  BEGIN
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;


    combo_regiao.Items.Add(frmmodulo.qrregiao.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrregiao.fieldbyname('REGIAO').asstring);
    combo_regiao.ItemIndex := combo_regiao.Items.Count - 1;
  END;
end;

procedure Tfrmlista_cliente2.bimprimirClick(Sender: TObject);
var cliente, VENDEDOR, regiao, tipo, situacao, setor, periodo, ordem,dia,mes: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin  cliente := ' and codIGO = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
  if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin VENDEDOR := ' and CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: '+combo_vendedor.TEXT; end;
  if combo_regiao.Text = 'TODOS' then regiao := '' else begin regiao := ' and codregiao = '''+copy(combo_regiao.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'VEÍCULO '+COMBO_regiao.TEXT+'   '; end;
  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    IF COMBO_SITUACAO.ItemIndex = 3 THEN
    BEGIN
     situacao := '';
    END
    ELSE
      situacao := ' and situacao = '+inttostr(combo_situacao.ItemIndex+1);;
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;


  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo is not null '+situacao+cliente+vendedor+regiao+' order by '+COMBO_ORDEM.TEXT);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE CLIENTES';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000001.fr3');
    FXCLIENTE.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';


    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo is not null  '+situacao+cliente+vendedor+regiao+' order by '+COMBO_ORDEM.TEXT);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE CLIENTES';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000002.fr3');
    FXCLIENTE.ShowReport;

  end;
  //
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CIDADE' then
  begin
   qrcidade.CLOSE;
   qrcidade.SQL.Clear;
   qrcidade.SQL.ADD('SELECT CIDADE, COUNT(CODIGO) qtde_clientes FROM C000007 WHERE codigo is not null  '+situacao+cliente+vendedor+regiao+' GROUP BY CIDADE');
   qrcidade.OPEN;

   qrcliente.MasterSource := dscidade;
   qrcliente.MasterFields := 'cidade';
   qrcliente.IndexFieldNames := 'cidade';


    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo is not null  '+situacao+cliente+vendedor+regiao+' order by '+COMBO_ORDEM.TEXT);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE CLIENTES POR CIDADE';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000003.fr3');
    FXCLIENTE.ShowReport;
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR REGIÃO' then
  begin
   qrcliente.MasterSource := dsregiao;
   qrcliente.MasterFields := 'codregiao';
   qrcliente.IndexFieldNames := 'codregiao';

   qrREGIAO.CLOSE;
   qrREGIAO.SQL.Clear;
   qrREGIAO.SQL.ADD('SELECT CODREGIAO, COUNT(CODIGO) TOTAL FROM C000007 WHERE codigo is not null  '+situacao+cliente+vendedor+regiao+' GROUP BY CODREGIAO');
   qrREGIAO.OPEN;


    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo is not null  '+situacao+cliente+vendedor+regiao+' order by '+COMBO_ORDEM.TEXT);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE CLIENTES POR REGIÃO';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000004.fr3');
    FXCLIENTE.ShowReport;
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';    
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo is not null  '+situacao+cliente+vendedor+regiao+' order by '+COMBO_ORDEM.TEXT);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ETIQUETAS';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000006.fr3');
    FXCLIENTE.ShowReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - RELAÇÃO' then
  begin
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';


    qrcliente.close;
    qrcliente.sql.clear;
    if (combo_dia.text <> 'TODOS') and (combo_mes.text <> '') then
    begin
      qrcliente.sql.add('select * from c000007 where NASCIMENTO like '''+combo_dia.TEXT+'/'+copy(combo_mes.text,1,2)+'%'' '+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;
    if (combo_dia.text <> 'TODOS') and (combo_mes.text = '') then
    begin
       qrcliente.sql.add('select * from c000007 where NASCIMENTO like '''+combo_dia.TEXT+'/%'' '+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;
    if (combo_dia.text = 'TODOS') and (combo_mes.text <> '') then
    begin
      qrcliente.sql.add('select * from c000007 where NASCIMENTO like ''%/'+COPY(combo_mes.TEXT,1,2)+'/%'' '+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;

    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ANIVERSARIANTES';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000005.fr3');
    FXCLIENTE.ShowReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - ETIQUETAS' then
  begin
   qrcliente.MasterSource := NIL;
   qrcliente.MasterFields := '';
   qrcliente.IndexFieldNames := '';


    qrcliente.close;
    qrcliente.sql.clear;
    if (combo_dia.text <> 'TODOS') and (combo_mes.text <> '') then
    begin
      qrcliente.sql.add('select * from c000007 where NASCIMENTO like '''+combo_dia.TEXT+'/'+copy(combo_mes.text,1,2)+'%'' '+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;
    if (combo_dia.text <> 'TODOS') and (combo_mes.text = '') then
    begin
       qrcliente.sql.add('select * from c000007 where NASCIMENTO like '''+combo_dia.TEXT+'/%'''+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;
    if (combo_dia.text = 'TODOS') and (combo_mes.text <> '') then
    begin
      qrcliente.sql.add('select * from c000007 where NASCIMENTO like ''%/'+COPY(combo_mes.TEXT,1,2)+'/%'''+situacao+vendedor+regiao+' order by NASCIMENTO');
    end;

    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ANIVERSARIANTES';
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000006.fr3');
    FXCLIENTE.ShowReport;
  end;


end;

procedure Tfrmlista_cliente2.combo_relatorioChange(Sender: TObject);
begin
  IF COMBO_RELATORIO.ItemIndex > 4  THEN // aniversariantes
  BEGIN
    COMBO_ordem.Visible := TRUE;
    combo_dia.Visible := TRUE;
    combo_mes.Visible := TRUE;

    combo_situacao.visible := true;

    combo_cliente.visible := false;
    lcliente.visible := FALSE;
    combo_vendedor.visible := true;
    combo_regiao.visible := true;

    ldia.visible := true;
    lmes.visible := true;
  END
  else
  begin
    combo_dia.Visible := false;
    ldia.visible := false;
    combo_mes.Visible := false;
    lmes.visible := false;

    combo_cliente.visible := true;
    combo_vendedor.visible := true;
    combo_regiao.visible := true;
    combo_ordem.visible := true;
    combo_situacao.visible := true;

    LCLIENTE.VISIBLE := TRUE;    
  end;

end;

procedure Tfrmlista_cliente2.combo_clienteChange(Sender: TObject);
begin
  IF combo_cliente.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_cliente.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    END
    ELSE
      COMBO_CLIENTE.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_cliente2.qrclienteCalcFields(DataSet: TDataSet);
begin
  if QRCLIENTETIPO.Value = 2 then QRCLIENTEpessoa.Value := 'JURIDICA' else QRCLIENTEpessoa.Value := 'FISICA';
  if QRCLIENTESITUACAO.Value = 1 then QRCLIENTESIT.Value := 'APROVADO';
  if QRCLIENTESITUACAO.Value = 2 then QRCLIENTESIT.Value := 'EM OBERVAÇÃO';
  if QRCLIENTESITUACAO.Value = 3 then QRCLIENTESIT.Value := 'BLOQUEADO';
  if QRCLIENTESITUACAO.Value = 4 then QRCLIENTESIT.Value := 'INATIVO';
  if QRCLIENTESITUACAO.Value = 5 then QRCLIENTESIT.Value := 'SPC';


end;

procedure Tfrmlista_cliente2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000001.fr3');
    FXCLIENTE.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000002.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CIDADE' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000003.fr3');
    FXCLIENTE.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR REGIÃO' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000004.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000006.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - RELAÇÃO' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000005.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - ETIQUETAS' then
  begin
    FXCLIENTE.LoadFromFile('\DATASAC\server\rel\f000006.fr3');
    FXCLIENTE.DesignReport;
  end;
end;

end.

  (1,1,'Autorização de Carregamento e Transporte, modelo 2','ACT','24','61'),

unit os_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxtooledit, RXDBCtrl, StdCtrls, Mask, DBCtrls, ExtCtrls,
  TFlatPanelUnit, Buttons, Collection, wwdblook, ComCtrls, PageView,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, rxcurredit, DB,
  Menus, ZAbstractRODataset, ZDataset, ZAbstractDataset, Wwdbdlg, RpDefine,
  RpCon, RpConDS, VrControls, VrTrackBar, RXSlider, AdvGlowButton, RzEdit,
  RzDBEdit, RzDBBnEd, AdvShapeButton;

type
  TfrmOS_Auto = class(TForm)
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    dsos: TDataSource;
    PopupMenu1: TPopupMenu;
    Laudo1: TMenuItem;
    Servios1: TMenuItem;
    Produtos1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    N1: TMenuItem;
    dsos_servico: TDataSource;
    qros_servico: TZQuery;
    qros_servicoCODSERVICO: TStringField;
    qros_servicoCOMPLEMENTO: TStringField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCODTECNICO: TStringField;
    qros_servicoDATA: TDateTimeField;
    qros_servicoSERVICO: TStringField;
    qros_servicoTECNICO: TStringField;
    qros_servicoCODOS: TStringField;
    qros_servicoCODCLIENTE: TStringField;
    N2: TMenuItem;
    ExcluirServio1: TMenuItem;
    qros_produto: TZQuery;
    dsos_produto: TDataSource;
    qros_produtoCODIGO: TStringField;
    qros_produtoCODNOTA: TStringField;
    qros_produtoCODPRODUTO: TStringField;
    qros_produtoQTDE: TFloatField;
    qros_produtoUNITARIO: TFloatField;
    qros_produtoTOTAL: TFloatField;
    qros_produtoICMS: TFloatField;
    qros_produtoIPI: TFloatField;
    qros_produtoCFOP: TStringField;
    qros_produtoDATA: TDateTimeField;
    qros_produtoNUMERONOTA: TStringField;
    qros_produtoCODCLIENTE: TStringField;
    qros_produtoDESCONTO: TFloatField;
    qros_produtoACRESCIMO: TFloatField;
    qros_produtoMOVIMENTO: TIntegerField;
    qros_produtoCODVENDEDOR: TStringField;
    qros_produtoCODGRADE: TStringField;
    qros_produtoSERIAL: TStringField;
    qros_produtoUNIDADE: TStringField;
    qros_produtoproduto: TStringField;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    IncluirProduto1: TMenuItem;
    qrOS_contasreceber: TZQuery;
    qrOS_contasreceberPRESTACAO: TIntegerField;
    qrOS_contasreceberVENCIMENTO: TDateTimeField;
    qrOS_contasreceberTIPO: TStringField;
    qrOS_contasreceberDOCUMENTO: TStringField;
    qrOS_contasreceberVALOR: TFloatField;
    ProdutosdeTerceiros1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label2: TLabel;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    enomeatendente: TDBEdit;
    COMBOTIPO: TwwDBComboBox;
    eatendent: TRzDBButtonEdit;
    enomecliente: TDBEdit;
    DBEdit10: TDBEdit;
    ecliente: TRzDBButtonEdit;
    Bevel3: TBevel;
    PageSheet3: TPageSheet;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    DBDateEdit2: TDBDateEdit;
    enometecnico: TDBEdit;
    enomesetor: TDBEdit;
    DBEdit1: TDBEdit;
    EDETECTADO: TDBMemo;
    etecnico: TRzDBButtonEdit;
    esetor: TRzDBButtonEdit;
    Label50: TLabel;
    combosituacao: TwwDBComboBox;
    Panel1: TPanel;
    Label51: TLabel;
    gconclusao: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit11: TDBEdit;
    EINTERVENCAO: TDBMemo;
    Bevel4: TBevel;
    pgravar: TFlatPanel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel2: TPanel;
    Label42: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Bevel2: TBevel;
    qros_produtoALIQUOTA: TFloatField;
    qros_produtoCST: TStringField;
    qros_produtoMOVIMENTO_ESTOQUE: TFloatField;
    Panel3: TPanel;
    AdvShapeButton2: TAdvShapeButton;
    Label7: TLabel;
    Label44: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    combomarca: TwwDBLookupCombo;
    DBEdit18: TDBEdit;
    Bevel8: TBevel;
    bitbtn1: TAdvGlowButton;
    Label23: TLabel;
    Label24: TLabel;
    Label47: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    GroupBox2: TGroupBox;
    Label46: TLabel;
    DBComboBox1: TDBComboBox;
    rnivel: TRxSlider;
    EDEFEITO: TDBMemo;
    Bevel9: TBevel;
    Label48: TLabel;
    Bevel10: TBevel;
    bexcluir_servico: TAdvGlowButton;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    Bevel11: TBevel;
    gridservico: TwwDBGrid;
    ESERVICO: TwwDBEdit;
    COMBOSERVICO: TwwDBLookupCombo;
    combotecnico: TwwDBLookupComboDlg;
    wwDBGrid2: TwwDBGrid;
    Bevel12: TBevel;
    bincluir_produto: TAdvGlowButton;
    bexcluir_produto: TAdvGlowButton;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    qrOS_contasreceberTERMINAL: TStringField;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure eatendentExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eatendentEnter(Sender: TObject);
    procedure rinternaKeyPress(Sender: TObject; var Key: Char);
    procedure rexternaKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure ravulsoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure combomarcaEnter(Sender: TObject);
    procedure combomarcaExit(Sender: TObject);
    procedure edefeitoEnter(Sender: TObject);
    procedure edefeitoExit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure etecnicoExit(Sender: TObject);
    procedure edetectadoEnter(Sender: TObject);
    procedure edetectadoExit(Sender: TObject);
    procedure combosituacaoExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure eintervencaoEnter(Sender: TObject);
    procedure eintervencaoExit(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Laudo1Click(Sender: TObject);
    procedure combosituacaoEnter(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure esetorExit(Sender: TObject);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure combosituacaoChange(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoEnter(Sender: TObject);
    procedure ESERVICOButtonClick(Sender: TObject);
    procedure qros_servicoBeforePost(DataSet: TDataSet);
    procedure bexcluir_servicoClick(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure qros_servicoBeforeEdit(DataSet: TDataSet);
    procedure qros_servicoBeforeInsert(DataSet: TDataSet);
    procedure qros_servicoAfterPost(DataSet: TDataSet);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure COMBOSERVICOExit(Sender: TObject);
    procedure ESERVICOExit(Sender: TObject);
    procedure combotecnicoExit(Sender: TObject);
    procedure qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PageView1Change(Sender: TObject);
    procedure bincluir_produtoClick(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure bexcluir_produtoClick(Sender: TObject);
    procedure IncluirProduto1Click(Sender: TObject);
    procedure eveiculoEnter(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure Produtos1Click(Sender: TObject);
    procedure esetorEnter(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure rnivelKeyPress(Sender: TObject; var Key: Char);
    procedure rnivelEnter(Sender: TObject);
    procedure rnivelExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure eatendentButtonClick(Sender: TObject);
    procedure eatendentKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOTIPOEnter(Sender: TObject);
    procedure COMBOTIPOExit(Sender: TObject);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoButtonClick(Sender: TObject);
    procedure etecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure esetorKeyPress(Sender: TObject; var Key: Char);
    procedure esetorButtonClick(Sender: TObject);
    procedure qros_produtoBeforePost(DataSet: TDataSet);
    procedure eclienteButtonClick(Sender: TObject);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure qrOS_contasreceberBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS_Auto: TfrmOS_Auto;
  valor_anterior : real;
  selecionado : boolean;
  FINALIZADO : BOOLEAN;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  continuar : boolean;
    cupom_fiscal : boolean;
    numero_terminal : string;

implementation

uses modulo, locvendedor, principal, loc_setor,
  loc_veiculo,  cliente_veiculo,
  xloc_cliente, os_item_2,  os_item_2_auto;

{$R *.dfm}

procedure TfrmOS_Auto.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(SENDER).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBDateEdit1Exit(Sender: TObject);
begin
    tedit(SENDER).color := clwindow;
end;

procedure TfrmOS_Auto.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_Auto.EVENDEDOREnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.EVENDEDORExit(Sender: TObject);
begin
  tedit(SENDER).color := clwindow;
end;

procedure TfrmOS_Auto.eatendentExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codatendente').asstring := frmprincipal.zerarcodigo(eatendent.text,6);

    if eatendent.text <> '000000' then
    begin
      with frmmodulo do
      begin
        qrfunci.close;
        qrfunci.sql.clear;
        qrfunci.sql.add('select * from c000008 where situacao = 1');
        qrfunci.open;
      end;
      if not frmprincipal.Locregistro(frmmodulo.qrfunci,eatendent.text,'codigo') then
      BEGIN
        eatendentButtonClick(frmos_auto);
      END
      else
      begin
        COMBOTIPO.SETFOCUS;
      end;
    end
    else
      eatendentButtonClick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.FormShow(Sender: TObject);
begin

   FINALIZADO := FALSE;

   rnivel.Value := frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger;


    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;
   

    qrOS_contasreceber.close;
    qrOS_contasreceber.sql.clear;
    qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
    qrOS_contasreceber.ExecSQL;


   frmmodulo.qrveiculo.close;
   frmmodulo.qrveiculo.sql.clear;
   frmmodulo.qrveiculo.sql.add('select * from c000054 order by nome');
   frmmodulo.qrveiculo.open;
   frmmodulo.qrveiculo.IndexFieldNames := 'nome';


   frmmodulo.qrcliente.close;
   frmmodulo.qrcliente.sql.clear;
   frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
   frmmodulo.qrcliente.open;
   frmmodulo.qrcliente.indexfieldnames := 'nome';


   frmmodulo.qrcliente_VEICULO.Close;
   frmmodulo.qrcliente_VEICULO.sql.clear;
   frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 order by veiculo');
   frmmodulo.qrcliente_VEICULO.open;
   frmmodulo.qrcliente_VEICULO.indexfieldnames := 'veiculo';


   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

   frmmodulo.qrsetor.close;
   frmmodulo.qrsetor.sql.clear;
   frmmodulo.qrsetor.SQL.add('select * from c000052 order by setor');
   frmmodulo.qrsetor.open;
   frmmodulo.qrsetor.indexfieldnames := 'setor';

   frmmodulo.qrservico.Close;
   frmmodulo.qrservico.sql.clear;
   frmmodulo.qrservico.SQL.Add('select * from c000011 order by servico');
   frmmodulo.qrservico.open;
   frmmodulo.qrservico.indexfieldnames := 'servico';


   qros_produto.close;
   qros_produto.sql.clear;
   qros_produto.sql.add('select * from c000032 where codnota = '''+frmmodulo.qros.fieldbyname('codigo').asstring+''' and movimento = 9');
   qros_produto.open;


  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;   



   qros_servico.close;
   qros_servico.sql.clear;
   qros_servico.sql.add('select * from c000053 where codos = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'''');
   qros_servico.open;

end;

procedure TfrmOS_Auto.eatendentEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure TfrmOS_Auto.rinternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

procedure TfrmOS_Auto.rexternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

procedure TfrmOS_Auto.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
        eclientebuttonclick(frmos_auto)
      else
      begin
         IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
         dbedit10.setfocus;
      end;
    end
    else
      eclientebuttonclick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.DBEdit10Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure TfrmOS_Auto.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then combomarca.setfocus;
end;

procedure TfrmOS_Auto.ravulsoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then edefeito.setfocus; 
end;

procedure TfrmOS_Auto.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL,0,0);


  end;
end;

procedure TfrmOS_Auto.combomarcaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
   frmmodulo.qrcliente_VEICULO.Close;
   frmmodulo.qrcliente_VEICULO.sql.clear;
   frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' order by veiculo');
   frmmodulo.qrcliente_VEICULO.open;

end;

procedure TfrmOS_Auto.combomarcaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  IF COMBOMARCA.TEXT <> '' THEN
  BEGIN
    if frmmodulo.qrcliente_veiculo.Locate('veiculo',combomarca.Text,[loPartialKey]) then
    begin
      frmmodulo.qros.FieldByName('modelo').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('ano').asstring;
      frmmodulo.qros.FieldByName('serial').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('placa').asstring;
      frmmodulo.qros.FieldByName('chassi').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('RENAVAM').asstring;
      frmmodulo.qros.FieldByName('cor').asstring := frmmodulo.qrcliente_veiculo.fieldbyname('cor').asstring;
    end;
  END;
end;

procedure TfrmOS_Auto.edefeitoEnter(Sender: TObject);
begin
  edefeito.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.edefeitoExit(Sender: TObject);
begin
  edefeito.Color := clwindow;
end;

procedure TfrmOS_Auto.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmOS_Auto.etecnicoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE F_TECNICO = 1 AND SITUACAO = 1 order by nome');
     frmmodulo.qrfunci.open;
     frmmodulo.qrfunci.indexfieldnames := 'nome';

    frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmprincipal.zerarcodigo(etecnico.text,6);

    if etecnico.text <> '000000' then
    begin



      if not frmprincipal.Locregistro(frmmodulo.qrfunci,etecnico.text,'codigo') then
        etecnicobuttonclick(frmos_auto)
      else
      begin
        esetor.setfocus;
      end;
    end
    else
     etecnicobuttonclick(frmos_auto);
  end;

   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure TfrmOS_Auto.edetectadoEnter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.edetectadoExit(Sender: TObject);
begin
  edetectado.Color := clwindow;
end;

procedure TfrmOS_Auto.combosituacaoExit(Sender: TObject);
begin
  combosituacao.Color := clwindow;
  if combosituacao.Text = 'FECHADA' then
  gconclusao.Visible := true else gconclusao.Visible := false;



end;

procedure TfrmOS_Auto.wwDBComboBox1Enter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.eintervencaoEnter(Sender: TObject);
begin
  eintervencao.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.eintervencaoExit(Sender: TObject);
begin
  eintervencao.Color := clwindow;
end;

procedure TfrmOS_Auto.BCANCELARClick(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin

    IF APPLICATION.MESSAGEBOX('Deseja Reimprimir esta O.S?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin

      frmmodulo.qrcliente.Close;
      frmmodulo.qrcliente.SQL.Clear;
      frmmodulo.qrcliente.SQL.Add('select * from c000007 where codigo = ''' + ecliente.Text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecordCount > 0 then
        begin
//          frmos_impressao := Tfrmos_impressao.create(self);
//          frmos_impressao.showmodal;
        end;
    end;



    finalizado := false;
    close;
  end
  else
  begin
    IF APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Serviço?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = IDYES THEN
    BEGIN
      frmmodulo.qros.cancel;
      frmmodulo.Conexao.Rollback;
      FINALIZADO := TRUE;
      close;
    END;
  end;
  
end;

procedure TfrmOS_Auto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF NOT FINALIZADO THEN
  BEGIN
    IF (FRMMODULO.QROS.State = DSINSERT) OR (FRMMODULO.qros.State = DSEDIT) THEN
       FRMMODULO.QROS.Cancel;
    FRMMODULO.Conexao.Rollback;
  END;

  action := cafree;
end;

procedure TfrmOS_Auto.Laudo1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  dbdateedit2.setfocus;
end;

procedure TfrmOS_Auto.combosituacaoEnter(Sender: TObject);
begin
  combosituacao.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.BGRAVARClick(Sender: TObject);
begin

  frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger := rnivel.Value;

  IF NOT BGRAVAR.Visible THEN EXIT;



  if frmmodulo.qros.FieldByName('CODATENDENTE').asstring = '' then
  begin
    showmessage('Não foi informado o atendente!');
    ecliente.setfocus;
    exit;
  end;


  if frmmodulo.qros.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('Não foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end;

    IF APPLICATION.MESSAGEBOX('Confirma o encerramento desta O.S.?','Atenção',mb_yesno+mb_iconquestion) = Idno then exit;



    if combosituacao.Text = 'ABERTA - Aguardando Confirmação' then frmmodulo.qros.fieldbyname('st').asinteger := 2;
    if combosituacao.Text = 'ABERTA - Executando Serviços' then frmmodulo.qros.fieldbyname('st').asinteger := 3;

    frmmodulo.QROS.fieldbyname('TOTAL').asfloat := frmmodulo.QROS.fieldbyname('SUBTOTAL').asfloat;


    FRMMODULO.qros.Post;
    FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);


    FRMMODULO.Conexao.Commit;


//    frmos_impressao := tfrmos_impressao.create(self);
//    frmos_impressao.showmodal;

    FINALIZADO := TRUE;
    CLOSE;

end;

procedure TfrmOS_Auto.esetorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codsetor').asstring := frmprincipal.zerarcodigo(esetor.text,6);
    if esetor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrsetor,esetor.text,'codigo') then
        esetorbuttonclick(frmos_auto)
      else
      begin
        edetectado.setfocus;
      end;
    end
    else
        esetorbuttonclick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then eintervencao.SetFocus;
end;

procedure TfrmOS_Auto.combosituacaoChange(Sender: TObject);
begin
  if combosituacao.Text = 'FECHADA' then
  BEGIN



    FRMMODULO.qrcaixa_operador.Open;
    FRMMODULO.qrcaixa_operador.Locate('CODIGO','000099',[loCaseInsensitive]);
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      frmmodulo.qros.fieldbyname('CONCLUSAO_DATA').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      gconclusao.Visible := true;
    END
    ELSE
    BEGIN
      APPLICATION.MessageBox('O caixa do sistema está fechado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      abort;

    END;



  END
  else
  BEGIN
    gconclusao.Visible := false;
  END;

end;

procedure TfrmOS_Auto.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_Auto.etecnicoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;

end;

procedure TfrmOS_Auto.ESERVICOButtonClick(Sender: TObject);
begin
  SHOWMESSAGE('');
end;

procedure TfrmOS_Auto.qros_servicoBeforePost(DataSet: TDataSet);
begin
  qros_servico.FieldByName('codos').AsString := frmmodulo.qros.fieldbyname('codigo').asstring;
  qros_servico.FieldByName('codcliente').AsString := frmmodulo.qros.fieldbyname('codcliente').asstring;
  qros_servico.FieldByName('data').AsString := frmmodulo.qros.fieldbyname('data').asstring;
end;

procedure TfrmOS_Auto.bexcluir_servicoClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a Exclusão do Item?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    qros_servico.fieldbyname('valor').asfloat;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;


      frmmodulo.qros.fieldbyname('subtotal').asfloat :=
      frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

      frmmodulo.qros.fieldbyname('total').asfloat :=
      frmmodulo.qros.fieldbyname('subtotal').asfloat +
      frmmodulo.qros.fieldbyname('acrescimo').asfloat -
      frmmodulo.qros.fieldbyname('desconto').asfloat ;




    qros_servico.delete;
    gridservico.setfocus;
  end;
end;

procedure TfrmOS_Auto.Servios1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  gridservico.SetFocus;
end;

procedure TfrmOS_Auto.qros_servicoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qros_servico.fieldbyname('valor').asfloat;
end;

procedure TfrmOS_Auto.qros_servicoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure TfrmOS_Auto.qros_servicoAfterPost(DataSet: TDataSet);
begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat +
    qros_servico.fieldbyname('valor').asfloat -
    valor_anterior;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;


      frmmodulo.qros.fieldbyname('subtotal').asfloat :=
      frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

      frmmodulo.qros.fieldbyname('total').asfloat :=
      frmmodulo.qros.fieldbyname('subtotal').asfloat +
      frmmodulo.qros.fieldbyname('acrescimo').asfloat -
      frmmodulo.qros.fieldbyname('desconto').asfloat ;


end;

procedure TfrmOS_Auto.ExcluirServio1Click(Sender: TObject);
begin
  if bexcluir_servico.Enabled then
  begin
    bexcluir_servicoClick(frmos_auto);
  end;
  if bexcluir_produto.Enabled then
  begin
    bexcluir_produtoClick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.COMBOSERVICOExit(Sender: TObject);
begin
  if comboservico.Text <> '' then
  begin
    if frmmodulo.qrservico.Locate('servico',comboservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('codservico').asstring := frmmodulo.qrservico.fieldbyname('codigo').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Serviço não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      comboservico.text := '';
      comboservico.setfocus;
    end;
  end;
end;

procedure TfrmOS_Auto.ESERVICOExit(Sender: TObject);
begin
  if eservico.Text <> '' then
  begin
    qros_servico.fieldbyname('codservico').asstring := frmprincipal.zerarcodigo(eservico.Text,6);
    if frmmodulo.qrservico.Locate('codigo',eservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('servico').asstring := frmmodulo.qrservico.fieldbyname('servico').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Serviço não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codservico').asstring := '';
      eservico.setfocus;
    end;
  end;
end;

procedure TfrmOS_Auto.combotecnicoExit(Sender: TObject);
begin
  if combotecnico.Text <> '' then
  begin
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
     frmmodulo.qrfunci.open;

    qros_servico.fieldbyname('codtecnico').asstring := frmprincipal.zerarcodigo(combotecnico.Text,6);
    if frmmodulo.qrfunci.Locate('codigo',combotecnico.Text,[loCaseInsensitive]) then
    begin
      //
    end
    else
    begin
      application.messagebox('Técnico não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codtecnico').asstring := '';
      combotecnico.setfocus;
    end;
  end;
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
     frmmodulo.qrfunci.open;
end;

procedure TfrmOS_Auto.qros_servicoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Favor informar o serviço!');
  Action:= daAbort;
end;

procedure TfrmOS_Auto.PageView1Change(Sender: TObject);
begin
 if PageView1.ActivePageindex = 1 then
  begin

    if frmmodulo.qros.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_servico.Enabled := true;
    end
    else
    begin
      bexcluir_servico.Enabled := false;
    end;

  end
  else
  begin
    bexcluir_servico.Enabled := false;
  end;












  if PageView1.ActivePageindex = 2 then // produtos
  begin
    if frmmodulo.qros.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_produto.Enabled := true;
      bincluir_produto.Enabled := true;
    end
    else
    begin
      bexcluir_produto.Enabled := false;
      bincluir_produto.Enabled := false;
    end;
  end
  else
  begin
    bexcluir_produto.Enabled := false;
    bincluir_produto.Enabled := false;
  end;



end;

procedure TfrmOS_Auto.bincluir_produtoClick(Sender: TObject);
var item, qtde, total : real;
begin
  frmOS_item_2_auto := tfrmOS_item_2_auto.create(self);
  frmOS_item_2_auto.showmodal;


  qtde := 0; total := 0; item := 0;

  qros_produto.First;
  while not qros_produto.eof do
  begin
    total := total + qros_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qros_produto.next;
  end;
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat := total;
  frmmodulo.qros.fieldbyname('produto_total').asfloat :=
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;
  qros_produto.Refresh;
end;

procedure TfrmOS_Auto.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('servico_total').asfloat :=
  frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;

end;

procedure TfrmOS_Auto.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_Auto.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_Auto.DBEdit8Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('produto_total').asfloat :=
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;

end;

procedure TfrmOS_Auto.bexcluir_produtoClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclusão do registro?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    if frmmodulo.qrproduto.Locate('codigo',qros_produto.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
    begin

      if qros_produto.fieldbyname('serial').asstring <> '' then
      begin
        frmmodulo.qrserial_produto.Open;
        if frmmodulo.qrserial_produto.Locate('serial',frmmodulo.qrproduto_mov.FieldByName('serial').AsString,[loCaseInsensitive]) then
        begin
          frmmodulo.qrserial_produto.Close;
          frmmodulo.qrserial_produto.sql.Clear;
          frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''+qros_produto.fieldbyname('codproduto').asstring+''' and serial = '''+qros_produto.fieldbyname('serial').asstring+'''');
          frmmodulo.qrserial_produto.ExecSQL;
        end;
      end;



      frmmodulo.qros.fieldbyname('produto_subtotal').ASFLOAT := frmmodulo.qros.fieldbyname('produto_subtotal').ASFLOAT - qros_produto.fieldbyname('total').asfloat;

      frmmodulo.qros.fieldbyname('produto_total').asfloat :=
      frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
      frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;

      qros_produto.Delete;

      frmmodulo.qros.fieldbyname('subtotal').asfloat :=
      frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
      frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

      frmmodulo.qros.fieldbyname('total').asfloat :=
      frmmodulo.qros.fieldbyname('subtotal').asfloat +
      frmmodulo.qros.fieldbyname('acrescimo').asfloat -
      frmmodulo.qros.fieldbyname('desconto').asfloat ;
    end
    else
    begin
      application.messagebox('Não possível prosseguir com a exclusão! O Produto não pode ser localizado no cadastro de estoque.','Atenção',mb_ok+MB_ICONWARNING);
    end;
  end;
end;

procedure TfrmOS_Auto.IncluirProduto1Click(Sender: TObject);
begin
  if bincluir_produto.Enabled then
  begin
     bincluir_produtoClick(frmos_auto);
  end;
end;

procedure TfrmOS_Auto.eveiculoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_Auto.Produtos1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 2;
  wwdbgrid2.setfocus;
end;

procedure TfrmOS_Auto.esetorEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TfrmOS_Auto.DBEdit9Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;
  end;
end;

procedure TfrmOS_Auto.DBEdit4Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure TfrmOS_Auto.DBEdit17Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure TfrmOS_Auto.DBEdit23Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;
    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrOS_contasreceber.fieldbyname('valor').asfloat;
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
begin
   valor_prestacao := 0;
end;

procedure TfrmOS_Auto.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin


  end;
end;

procedure TfrmOS_Auto.rnivelKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edefeito.setfocus;
end;

procedure TfrmOS_Auto.rnivelEnter(Sender: TObject);
begin
  rnivel.Color := $00A0FAF8;
end;

procedure TfrmOS_Auto.rnivelExit(Sender: TObject);
begin
  rnivel.Color := clbtnface;
end;

procedure TfrmOS_Auto.BitBtn1Click(Sender: TObject);
begin
  frmcliente_veiculo := tfrmcliente_veiculo.create(self);
  frmcliente_veiculo.showmodal;

 frmmodulo.qrcliente_veiculo.REFRESH;
 
   frmmodulo.qrcliente_VEICULO.Close;
   frmmodulo.qrcliente_VEICULO.sql.clear;
   frmmodulo.qrcliente_VEICULO.sql.add('select * from c000063 where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' order by veiculo');
   frmmodulo.qrcliente_VEICULO.open;


End;

procedure TfrmOS_Auto.DBDateEdit3Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  DBDATEEDIT3.DATE := DATE;

end;

procedure TfrmOS_Auto.eatendentButtonClick(Sender: TObject);
begin

   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  frmmodulo.qros.fieldbyname('codatendente').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
   COMBOTIPO.SETFOCUS;
end;

procedure TfrmOS_Auto.eatendentKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_Auto.COMBOTIPOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure TfrmOS_Auto.COMBOTIPOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmOS_Auto.COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ECLIENTE.SetFocus;
end;

procedure TfrmOS_Auto.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_Auto.etecnicoButtonClick(Sender: TObject);
begin
  frmlocvendedor := tfrmlocvendedor.create(self);
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE F_TECNICO = 1 AND SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmlocvendedor.showmodal;
  frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  esetor.setfocus;

   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';  
end;

procedure TfrmOS_Auto.etecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_Auto.esetorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_Auto.esetorButtonClick(Sender: TObject);
begin
  frmloc_setor := tfrmloc_setor.create(self);
  frmloc_setor.showmodal;
  frmmodulo.qros.fieldbyname('codsetor').asstring := frmmodulo.qrsetor.fieldbyname('codigo').asstring;
  edetectado.setfocus;
end;

procedure TfrmOS_Auto.qros_produtoBeforePost(DataSet: TDataSet);
begin
    case qros_produto.fieldbyname('movimento').asinteger of
    0,10 : qros_produto.FieldByName('movimento_estoque').asfloat := qros_produto.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : qros_produto.FieldByName('movimento_estoque').asfloat := qros_produto.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : qros_produto.FieldByName('movimento_estoque').asfloat := qros_produto.FieldByName('qtde').asfloat * (-1);
    99 : qros_produto.FieldByName('movimento_estoque').asfloat := 0;
    end;
end;

procedure TfrmOS_Auto.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qros.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
  dbedit10.setfocus;
end;

procedure TfrmOS_Auto.wwDBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
    IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmOS_Auto.qrOS_contasreceberBeforePost(DataSet: TDataSet);
begin
  qros_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

end.




unit lista_vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Mask, rxtooledit, Collection, ExtCtrls,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RpDefine, RpCon,
  RpConDS, Grids, DBGrids, frxClass, frxDBSet;

type
  TFrmlista_vendas = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    RadioButton2: TRadioButton;
    rsintetica: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    RadioButton3: TRadioButton;
    rresumo_produto: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox3: TGroupBox;
    ECLIENTE: TEdit;
    BLOCCLIENTE: TBitBtn;
    ENOMECLIENTE: TEdit;
    GroupBox4: TGroupBox;
    EFUNCI: TEdit;
    BLOCFUNCI: TBitBtn;
    ENOMEFUNCI: TEdit;
    rcaixa: TGroupBox;
    ECAIXA: TEdit;
    BLOCCAIXA: TBitBtn;
    ENOMECAIXA: TEdit;
    FlipView2: TFlipView;
    rdin: TCheckBox;
    rchv: TCheckBox;
    rchp: TCheckBox;
    rcac: TCheckBox;
    rcad: TCheckBox;
    rcre: TCheckBox;
    RPRODUTO: TGroupBox;
    EPRODUTO: TEdit;
    BLOCPRODUTO: TBitBtn;
    ENOMEPRODUTO: TEdit;
    qrvenda: TZQuery;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    qrvendaCODIGO: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendacliente: TStringField;
    qrvendaTOTAL: TFloatField;
    qrvendavendedor: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrcliente: TZQuery;
    qrcliente2: TZQuery;
    qrcliente2NOME: TStringField;
    qrcliente2CODIGO: TStringField;
    qrcliente2ATUAL: TFloatField;
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
    dsvenda: TRvDataSetConnection;
    qrvenda_produto: TZQuery;
    fxvenda_produto: TfrxReport;
    fsvenda_produto: TfrxDBDataset;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoMEDIA_VENDA: TFloatField;
    qrvenda_produtoTOTAL_QTDE: TFloatField;
    qrvenda_produtoTOTAL_GERAL: TFloatField;
    qrproduto: TZQuery;
    qrvenda_produtoproduto: TStringField;
    qrvenda_produtoun: TStringField;
    qrvenda_produtopreco_venda: TFloatField;
    qrvenda_produtopreco_custo: TFloatField;
    procedure BLOCCLIENTEClick(Sender: TObject);
    procedure ECLIENTEEnter(Sender: TObject);
    procedure ECLIENTEExit(Sender: TObject);
    procedure rsinteticaClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure rresumo_produtoClick(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BLOCFUNCIClick(Sender: TObject);
    procedure EFUNCIExit(Sender: TObject);
    procedure EFUNCIEnter(Sender: TObject);
    procedure EFUNCIKeyPress(Sender: TObject; var Key: Char);
    procedure ECAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCCAIXAClick(Sender: TObject);
    procedure ECAIXAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BLOCPRODUTOClick(Sender: TObject);
    procedure EPRODUTOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_vendas: TFrmlista_vendas;

implementation

uses modulo, loc_cliente, principal, loc_funci, loc_caixa, loc_produto,
  loc_produto_venda;

{$R *.dfm}

procedure TFrmlista_vendas.BLOCCLIENTEClick(Sender: TObject);
begin
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.dscliente.DataSet := qrcliente;
  frmloc_cliente.showmodal;
  enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
  ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
  efunci.setfocus;
end;

procedure TFrmlista_vendas.ECLIENTEEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure TFrmlista_vendas.ECLIENTEExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
        blocclienteclick(FrmLISTA_VENDAS)
     else
     begin
       ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
       enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
       efunci.setfocus;
     end;
  end
  else
  begin
    ENOMECLIENTE.TEXT := '';
    bloccliente.setfocus;
  end;
end;

procedure TFrmlista_vendas.rsinteticaClick(Sender: TObject);
begin
  RPRODUTO.Visible := FALSE;
  rcaixa.Visible := true;
end;

procedure TFrmlista_vendas.RadioButton2Click(Sender: TObject);
begin
  RPRODUTO.Visible := FALSE;
end;

procedure TFrmlista_vendas.RadioButton3Click(Sender: TObject);
begin
  RPRODUTO.VISIBLE := TRUE;
end;

procedure TFrmlista_vendas.rresumo_produtoClick(Sender: TObject);
begin
  RPRODUTO.VISIBLE := TRUE;
  rcaixa.visible := false;
end;

procedure TFrmlista_vendas.RadioButton5Click(Sender: TObject);
begin
  RPRODUTO.VISIBLE := FALSE;
end;

procedure TFrmlista_vendas.RadioButton8Click(Sender: TObject);
begin
  RPRODUTO.VISIBLE := TRUE;
end;

procedure TFrmlista_vendas.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure TFrmlista_vendas.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure TFrmlista_vendas.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TFrmlista_vendas.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TFrmlista_vendas.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmlista_vendas.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BIMPRIMIR.SetFocus;
end;

procedure TFrmlista_vendas.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmlista_vendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TFrmlista_vendas.BLOCFUNCIClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  enomefunci.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
  efunci.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  ecaixa.setfocus;
end;

procedure TFrmlista_vendas.EFUNCIExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  efunci.text := frmprincipal.zerarcodigo(efunci.text,6);
  if efunci.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrfunci,efunci.text,'codigo') then
        blocfunciclick(FrmLISTA_VENDAS)
     else
     begin
       efunci.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
       enomefunci.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
       ecaixa.setfocus;
     end;
  end
  else
  begin
    ENOMEFUNCI.TEXT := '';
    blocfunci.setfocus;
  end;
end;

procedure TFrmlista_vendas.EFUNCIEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure TFrmlista_vendas.EFUNCIKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);  
end;

procedure TFrmlista_vendas.ECAIXAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmlista_vendas.EPRODUTOKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmlista_vendas.BLOCCAIXAClick(Sender: TObject);
begin
  frmloc_caixa := tfrmloc_caixa.create(self);
  frmloc_caixa.showmodal;
  enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
  ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
  DATEEDIT1.setfocus;
end;

procedure TFrmlista_vendas.ECAIXAExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecaixa.text := frmprincipal.zerarcodigo(ecaixa.text,6);
  if ecaixa.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrcaixa_OPERADOR,ecaixa.text,'codigo') then
        bloccaixaclick(FrmLISTA_VENDAS)
     else
     begin
       ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
       enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
       DATEEDIT1.setfocus;
     end;
  end
  else
  begin
    ENOMECAIXA.Text := '';
    bloccaixa.setfocus;
  end;
end;

procedure TFrmlista_vendas.FormShow(Sender: TObject);
begin
  QRCLIENTE.CLOSE;
  QRCLIENTE.SQL.CLEAR;
  QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  QRCLIENTE.OPEN;
  QRCLIENTE.INDEXFIELDNAMES := 'NOME';

  FRMMODULO.QRFUNCI.CLOSE;
  FRMMODULO.QRFUNCI.SQL.CLEAR;
  FRMMODULO.QRFUNCI.SQL.ADD('SELECT * FROM C000008 ORDER BY NOME');
  FRMMODULO.QRFUNCI.OPEN;
  FRMMODULO.QRFUNCI.INDEXFIELDNAMES := 'NOME';

  FRMMODULO.QRCAIXA_OPERADOR.CLOSE;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.CLEAR;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.ADD('SELECT * FROM C000045 ORDER BY CODIGO');
  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.INDEXFIELDNAMES := 'CODIGO';

  FRMMODULO.QRformapgto.CLOSE;
  FRMMODULO.QRformapgto.SQL.CLEAR;
  FRMMODULO.QRformapgto.SQL.ADD('SELECT * FROM C000014 ORDER BY formapgto');
  FRMMODULO.QRformapgto.OPEN;
  FRMMODULO.QRformapgto.INDEXFIELDNAMES := 'formapgto';


  ECLIENTE.SETFOCUS;
end;

procedure TFrmlista_vendas.bimprimirClick(Sender: TObject);
var din, chv, chp, cac, cad, cre, cliente, vendedor, caixa, periodo, produto : string;
begin
   FRMMODULO.QRRELATORIO.open;
   FRMMODULO.QRRELATORIO.edit;
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
   FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

   if (ecliente.Text = '000000') or (ecliente.Text = '') then cliente  := '' else BEGIN FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'CLIENTE: '+ECLIENTE.TEXT; cliente := ' and codcliente = '''+ecliente.text+''''; END;
   if (efunci.Text = '000000') or (efunci.Text = '')   then vendedor := '' else BEGIN FRMMODULO.QRRELATORIO.FieldByName('linha4').AsString := 'VENDEDOR: '+ENOMEFUNCI.TEXT; vendedor := ' and codvendedor = '''+efunci.text+''''; END;
   if (ecaixa.Text = '000000') or (ecaixa.Text = '')   then caixa    := '' else BEGIN caixa := ' and codcaixa = '''+ecaixa.text+''''; END;
   if (eproduto.Text = '000000') or (eproduto.Text = '')   then produto    := '' else BEGIN  produto := ' and codproduto = '''+eproduto.text+'''';END;


   if rdin.Checked then din := '' else din := ' and meio_dinheiro   = 99999999 ';
   if rchv.Checked then chv := '' else chv := ' and meio_chequeav   = 99999999 ';
   if rchp.Checked then chp := '' else chp := ' and meio_chequeap   = 99999999 ';
   if rcac.Checked then cac := '' else cac := ' and meio_cartaocred = 99999999 ';
   if rcad.Checked then cad := '' else cad := ' and meio_cartaodeb  = 99999999 ';
   if rcre.Checked then cre := '' else cre := ' and meio_crediario  = 99999999 ';

   periodo := ' data >= :datai and data <= :dataf ';



   if rsintetica.Checked then
   begin
     FRMMODULO.QRRELATORIO.FieldByName('linha5').AsString := dateedit1.text+' a '+dateedit2.text;
     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := ENOMEFUNCI.TEXT;
     FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := ENOMECAIXA.Text;

     qrvenda.close;
     qrvenda.SQL.clear;
     qrvenda.sql.add('select * from c000048 where '+periodo+cliente+vendedor+caixa+din+chv+chp+cac+cad+cre+' order by data');
     qrvenda.Params.ParamByName('datai').asdatetime := dateedit1.date;
     qrvenda.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrvenda.open;



     frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
     frmmodulo.relatorio.ExecuteReport('relvenda_sintetica');
   end;

   if rresumo_produto.checked then
   begin
     qrvenda_produto.close;
     qrvenda_produto.sql.clear;
     qrvenda_produto.sql.add('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde, sum(total) total_geral from c000032 where movimento in (2,9) and '+periodo+cliente+vendedor+produto+' group by codproduto order by codproduto');
     qrvenda_produto.Params.ParamByName('datai').asdatetime := dateedit1.date;
     qrvenda_produto.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrvenda_produto.open;
     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE VENDAS DE PRODUTOS/LUCRO';
     fXVENDA_PRODUTO.LoadFromFile('C:\ELPRO\COMPLUS\REL\F000032.fr3');
     fXVENDA_PRODUTO.ShowReport;
   end;










end;

procedure TFrmlista_vendas.BLOCPRODUTOClick(Sender: TObject);
begin



  FRMLOC_PRODUTO_VENDA := tFRMLOC_PRODUTO_VENDA.create(self);
  FRMLOC_PRODUTO_VENDA.showmodal;


  enomePRODUTO.Text := PRODUTO_LOC_NOME;
  ePRODUTO.Text := PRODUTO_LOC;
  DATEEDIT1.setfocus;
end;

procedure TFrmlista_vendas.EPRODUTOExit(Sender: TObject);
begin


  tedit(sender).Color := clwindow;
  ePRODUTO.text := frmprincipal.zerarcodigo(ePRODUTO.text,6);
  if ePRODUTO.text <> '000000' then
  begin
    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+EPRODUTO.TEXT+'''');
    QRPRODUTO.OPEN;
    IF  QRPRODUTO.RecordCount = 0 THEN
    BEGIN
       application.messagebox('Produto não cadastrado!','Atenção',mb_ok+mb_iconwarning);
       blocPRODUTOclick(FrmLISTA_VENDAS);
    END
    else
    begin
       ePRODUTO.Text := qrPRODUTO.fieldbyname('codigo').asstring;
       enomePRODUTO.Text := qrPRODUTO.fieldbyname('produto').asstring;
       DATEEDIT1.setfocus;
     end;
  end
  else
  begin
    ENOMEPRODUTO.Text := '';
    blocPRODUTO.setfocus;
  end;
end;

end.

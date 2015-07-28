unit cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton;

type
  Tfrmcheque = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    BLOC: TBitBtn;
    plocalizar2: THeaderView;
    dscheque2: TDataSource;
    qrcheque: TZQuery;
    FlatPanel1: TFlatPanel;
    rnome: TRadioButton;
    rcodigo: TRadioButton;
    BitBtn5: TBitBtn;
    Relatrios1: TMenuItem;
    rcpf: TRadioButton;
    FlatPanel2: TFlatPanel;
    rinicio: TRadioButton;
    rparte: TRadioButton;
    Label30: TLabel;
    dscheque: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    LRG: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    EDATA: TDBDateEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    Label4: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ebanco: TDBEdit;
    blocbanco: TBitBtn;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    pbaixa: THeaderView;
    GroupBox1: TGroupBox;
    DBDateEdit2: TDBDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit5: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    DBDateEdit7: TDBDateEdit;
    qrchequeCODIGO: TStringField;
    qrchequeEMISSAO: TDateTimeField;
    qrchequeVENCIMENTO: TDateTimeField;
    qrchequeDATA_DEPOSITO1: TDateTimeField;
    qrchequeDATA_DEPOSITO2: TDateTimeField;
    qrchequeDATA_DEVOLUCAO1: TDateTimeField;
    qrchequeDATA_DEVOLUCAO2: TDateTimeField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TStringField;
    qrchequeTITULAR: TStringField;
    qrchequeCODBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA: TStringField;
    qrchequeDATA_CONTA: TDateTimeField;
    qrchequeNUMERO: TStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TStringField;
    qrchequeOBS1: TStringField;
    qrchequeOBS2: TStringField;
    qrchequeCODCONTAS_PAGAR: TStringField;
    qrchequeDESTINO: TStringField;
    qrchequeDATA_BAIXA: TDateTimeField;
    qrchequeCLIENTE: TStringField;
    dbgrid1: TwwDBGrid;
    Shape11: TShape;
    Label42: TLabel;
    BitBtn6: TBitBtn;
    Baixar1: TMenuItem;
    rvencimento: TRadioButton;
    FlatPanel4: TFlatPanel;
    FLATPANEL3: THeaderView;
    FlatPanel5: TFlatPanel;
    HeaderView2: THeaderView;
    qrconta_cliente: TZQuery;
    qrconta_clienteCONTA: TStringField;
    qrconta_clienteCODBANCO: TStringField;
    qrconta_clienteBANCO: TStringField;
    qrconta_clienteAGENCIA: TStringField;
    qrconta_clienteDATA_CONTA: TDateTimeField;
    qrconta_clienteCHEQUE: TIntegerField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    bbaixar: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rnomeKeyPress(Sender: TObject; var Key: Char);
    procedure rcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure EDATAEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure InciodoNome1Click(Sender: TObject);
    procedure PartedoNome1Click(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure EDATAExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure blocbancoClick(Sender: TObject);
    procedure ebancoExit(Sender: TObject);
    procedure rnomeClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure LOCEnter(Sender: TObject);
    procedure LOCExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);

  private
   vcliente: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque: Tfrmcheque;
  comando : string;

implementation

uses modulo, principal, loc_cliente,
  loc_banco, xloc_cliente, cheque_conta, lista_cheque2;

{$R *.dfm}


procedure Tfrmcheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque.FormShow(Sender: TObject);
begin
  pbaixa.Enabled := false;
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.sql.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.open;
  frmmodulo.qrbanco.IndexFieldNames := 'banco';


  pgravar.visible := false;
  pgravar.Align := alClient;
  plocalizar2.Align := alclient;
  plocalizar1.Align := alclient;
//  plocalizar1.Align := alnone;


  frmmodulo.qrcheque.close;
  frmmodulo.qrcheque.SQL.clear;
  frmmodulo.qrcheque.SQL.add('select * from c000040 order by vencimento');
  frmmodulo.qrcheque.open;
  frmmodulo.qrcheque.first;
  pficha.Enabled := false;
  bincluir.SetFocus;


  IF CHEQUE_VENDA <> '' THEN  bincluirClick(FRMCHEQUE);

end;

procedure Tfrmcheque.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmcheque.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcheque.insert;
  FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCLIENTE').ASSTRING := CHEQUE_CODCLIENTE;
  FRMMODULO.QRCHEQUE.FIELDBYNAME('CODVENDA').ASSTRING := CHEQUE_VENDA;

  frmmodulo.qrcheque.fieldbyname('codigo').asstring := frmprincipal.codifica('000040',6);
  FRMMODULO.qrcheque.FIELDBYNAME('SITUACAO').ASSTRING := '1';
  pficha.Enabled := true;

  vcliente := frmmodulo.qrchequeCODCLIENTE.Value;  // grava o codigo do cliente atual

  EDATA.setfocus;

  pgravar.Visible := true;

  PopupMenu := pop2;

  try
    case frmmodulo.qrcheque.fieldbyname('situacao').asinteger of
    1:begin
        pbaixa.Visible := false;
      end;
    2:begin
        pbaixa.Visible := TRUE;
      end;
    3:begin
        pbaixa.Visible := TRUE;
      end;
    4:begin
        pbaixa.Visible := TRUE;
      end;
    5:begin
        pbaixa.Visible := TRUE;
      end;
    6:begin
        pbaixa.Visible := TRUE;
      end;
    7:begin
        pbaixa.Visible := TRUE;
      end;
    8:begin
        pbaixa.Visible := TRUE;
      end;
    9:begin
        pbaixa.Visible := TRUE;
      end;
    end;


  except
  end;
end;

procedure Tfrmcheque.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


    frmmodulo.qrcheque.Edit;
    pficha.Enabled := true;
    EDATA.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;


  try
    case frmmodulo.qrcheque.fieldbyname('situacao').asinteger  of
    1:begin
        pbaixa.Visible := false;
      end;
    2:begin
        pbaixa.Visible := TRUE;
      end;
    3:begin
        pbaixa.Visible := TRUE;
      end;
    4:begin
        pbaixa.Visible := TRUE;
      end;
    5:begin
        pbaixa.Visible := TRUE;
      end;
    6:begin
        pbaixa.Visible := TRUE;
      end;
    7:begin
        pbaixa.Visible := TRUE;
      end;
    8:begin
        pbaixa.Visible := TRUE;
      end;
    9:begin
        pbaixa.Visible := TRUE;
      end;
      


    end;


  except
  end;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmcheque.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cheque',4) then
  begin
    frmmodulo.qrcheque.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcheque.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  PopupMenu := POP3;


  rcodigo.setfocus;
end;

procedure Tfrmcheque.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcheque.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  IF FRMMODULO.QRCHEQUE.FIELDBYNAME('VALOR').ASFLOAT = 0 THEN
  BEGIN
    SHOWMESSAGE('Favor informar o valor!');
    DBEDIT16.SETFOCUS;
    exit;
  END;
  IF DBDateEdit7.text = '  /  /    ' THEN
  BEGIN
    SHOWMESSAGE('Favor informar a data de vencimento!');
    DBdateedit7.SETFOCUS;
    exit;
  END;
  if frmmodulo.qrcheque.fieldbyname('codcliente').asstring = '' then
  begin
    SHOWMESSAGE('Favor informar o cliente!');
    ecliente.SETFOCUS;
    exit;
  end;


  if (frmmodulo.qrcheque.State = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
      frmmodulo.qrcheque.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;





end;

procedure Tfrmcheque.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcheque.State = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.cancel;

    pficha.Enabled := false;
    pgravar.Visible := false;
    PopupMenu := pop1;
    bincluir.setfocus;
    comando := '';
  end;

  if frmmodulo.qrcliente.fieldbyname('codigo').AsString <> vcliente then
        begin
          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.sql.clear;
          frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+vcliente+'''');
          frmmodulo.qrcliente.open;
        end;
end;

procedure Tfrmcheque.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcheque.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcheque.first;
end;

procedure Tfrmcheque.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcheque.last;

end;

procedure Tfrmcheque.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcheque.prior;

end;

procedure Tfrmcheque.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcheque.next;

end;

procedure Tfrmcheque.rnomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SetFocus
end;

procedure Tfrmcheque.rcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SETFOCUS;
end;

procedure Tfrmcheque.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BLOC.SETFOCUS;
End;

procedure Tfrmcheque.BLOCClick(Sender: TObject);
begin
try
  qrcheque.close;
  qrcheque.sql.clear;
  if rnome.Checked then
  begin
    qrcheque.sql.add('select * from c000040 where codcliente = '''+copy(loc.text,1,6)+''' order by vencimento');
  end;
  if rcodigo.Checked then
  begin
   if rinicio.Checked then qrcheque.sql.add('select * from c000040 where numero like '''+loc.text+'%'' order by vencimento');
  end;
  if rcpf.Checked then
  begin
    if rinicio.Checked then qrcheque.sql.add('select * from c000040 where upper(titular) like '''+ansiuppercase(loc.text)+'%'' order by vencimento');
    if rparte.Checked  then qrcheque.sql.add('select * from c000040 where upper(titular) like ''%'+ansiuppercase(loc.text)+'%'' order by vencimento');
  end;
  if rvencimento.Checked then
  begin
    qrcheque.sql.add('select * from c000040 where vencimento = :datax order by vencimento');
    qrcheque.Params.ParamByName('datax').asdatetime := strtodate(loc.text);
  end;
except
showmessage('Os dados informados para consulta estão incorretos!');
end;


  qrcheque.open;
  dbgrid1.setfocus;

end;

procedure Tfrmcheque.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  TRY
    frmmodulo.qrcheque.Locate('codigo',qrcheque.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    qrcheque.close;
  EXCEPT
  END;

    PopupMenu := POP1;

    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure Tfrmcheque.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque.EDATAEnter(Sender: TObject);
begin
 tedit(sender).Color := clyellow;
 if frmmodulo.qrcheque.state = dsinsert then
  EDATA.Date := DATE;
end;

procedure Tfrmcheque.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit1Enter(Sender: TObject);
begin

tedit(sender).Color := clyellow;

end;

procedure Tfrmcheque.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcheque.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque.FecharLocalizao1Click(Sender: TObject);
begin
    PopupMenu := POP1;
    qrcheque.close;
    plocalizar1.Visible := false;
    plocalizar2.visible := false;
end;

procedure Tfrmcheque.InciodoNome1Click(Sender: TObject);
begin
  RINICIO.Checked := TRUE;
end;

procedure Tfrmcheque.PartedoNome1Click(Sender: TObject);
begin
  rparte.Checked := TRUE;
end;

procedure Tfrmcheque.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrcheque.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmcheque.EDATAExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    tdbdateedit(sender).SetFocus;
  END;
 end;


end;

procedure Tfrmcheque.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if QRCHEQUE.FieldByName('situacao').asinteger <> 1 then // VERIFICAR
  begin
    Dbgrid1.canvas.Brush.Color:= clred;
    Dbgrid1.Canvas.Pen.Color:= clWhite;
  end;
  Dbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmcheque.blocclienteClick(Sender: TObject);
begin
  frmxloc_CLIENTE := tfrmxloc_CLIENTE.create(self);
  frmxloc_CLIENTE.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcheque.fieldbyname('codCLIENTE').asstring := resultado_pesquisa1;

    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''+ecliente.text+''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        FRMMODULO.QRCHEQUE.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;



    IF FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').AsString = '' THEN
       FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').AsString :=
       FRMMODULO.QRCHEQUE.FIELDBYNAME('CLIENTE').AsString;
      dbedit3.setfocus;

  end
  ELSE
    ecliente.setfocus;
end;

procedure Tfrmcheque.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
      BEGIN
        blocclienteclick(frmcheque);
      END
      else
      BEGIN


    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''+ecliente.text+''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        FRMMODULO.QRCHEQUE.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        FRMMODULO.QRCHEQUE.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;


        dbedit3.setfocus;
        IF FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').AsString = '' THEN
           FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').AsString :=
           FRMMODULO.QRCHEQUE.FIELDBYNAME('CLIENTE').AsString;

      END;
    END
    else
    BEGIN
      bloccliente.SetFocus;
    END;
  end;
end;


procedure Tfrmcheque.blocbancoClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmmodulo.qrcheque.fieldbyname('codbanco').asstring := frmmodulo.qrbanco.fieldbyname('numero').asstring;
  dbedit4.setfocus;
end;

procedure Tfrmcheque.ebancoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.fieldbyname('codbanco').asstring := frmprincipal.zerarcodigo(ebanco.text,3);
    if ebanco.text <> '000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrbanco,ebanco.text,'numero') then blocbancoclick(frmcheque) else dbedit4.setfocus
    else
      blocbanco.SetFocus;
  end;
end;

procedure Tfrmcheque.rnomeClick(Sender: TObject);
begin
  frmmodulo.qrcliente.IndexFieldNames := 'nome';
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;
  loc.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring +'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring;
  loc.setfocus;
end;

procedure Tfrmcheque.DBEdit1Change(Sender: TObject);
begin
  try

    IF frmmodulo.qrcheque.fieldbyname('situacao').asSTRING = '' THEN pbaixa.Visible := false;
    case frmmodulo.qrcheque.fieldbyname('situacao').asinteger  of
    1:begin
        pbaixa.Visible := false;
      end;
    2:begin
        pbaixa.Visible := TRUE;
      end;
    3:begin
        pbaixa.Visible := TRUE;
      end;
    4:begin
        pbaixa.Visible := TRUE;
      end;
    5:begin
        pbaixa.Visible := TRUE;
      end;
    6:begin
        pbaixa.Visible := TRUE;
      end;
    7:begin
        pbaixa.Visible := TRUE;
      end;
    8:begin
        pbaixa.Visible := TRUE;
      end;
    9:begin
        pbaixa.Visible := TRUE;
      end;
      


    end;
  except
  end;
end;

procedure Tfrmcheque.BitBtn6Click(Sender: TObject);
begin
  if frmprincipal.autentica('Baixar cheque',4) then
  begin
      frmmodulo.qrcheque.Edit;
      //frmcheque_baixa := tfrmcheque_baixa.create(self);
      //frmcheque_baixa.showmodal;


  try
    case frmmodulo.qrcheque.fieldbyname('situacao').asinteger  of
    1:begin
        pbaixa.Visible := false;
      end;
    2:begin
        pbaixa.Visible := TRUE;
      end;
    3:begin
        pbaixa.Visible := TRUE;
      end;
    4:begin
        pbaixa.Visible := TRUE;
      end;
    5:begin
        pbaixa.Visible := TRUE;
      end;
    6:begin
        pbaixa.Visible := TRUE;
      end;
    7:begin
        pbaixa.Visible := TRUE;
      end;
    8:begin
        pbaixa.Visible := TRUE;
      end;
    9:begin
        pbaixa.Visible := TRUE;
      end;
      


    end;


  except
  end;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcheque.LOCEnter(Sender: TObject);
begin
  LOC.Color := CLYELLOW;
end;

procedure Tfrmcheque.LOCExit(Sender: TObject);
begin
LOC.Color := CLWINDOW;
end;

procedure Tfrmcheque.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_CHEQUE2 := TFRMLISTA_CHEQUE2.CREATE(SELF);
  FRMLISTA_CHEQUE2.SHOWMODAL;
end;

procedure Tfrmcheque.DBEdit3Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
IF FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').ASSTRING = '' THEN
   FRMMODULO.QRCHEQUE.FIELDBYNAME('TITULAR').ASSTRING :=
   FRMMODULO.QRCHEQUE.FIELDBYNAME('CLIENTE').ASSTRING;

end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);


{ SITUACAO DO CHEQUE
1 - ATIVO
2 - BAIXA - 1o.DEPOSITO
3 - BAIXA - 2o.DEPOSITO
4 - BAIXA - DESCONTADO
5 - BAIXA - 1a.DEVOLUCAO
6 - BAIXA - 2a.DEVOLUCAO
7 - BAIXA - REPASSADO
8 - BAIXA - SUSTADO
9 - BAIXA - OUTROS
}

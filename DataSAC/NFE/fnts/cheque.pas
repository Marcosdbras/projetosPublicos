unit cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton;

type
  Tfrmcheque = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscheque2: TDataSource;
    qrcheque: TZQuery;
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
    qrconta_cliente: TZQuery;
    qrconta_clienteCHEQUE: TIntegerField;
    qrconta_clienteCONTA: TStringField;
    qrconta_clienteCODBANCO: TStringField;
    qrconta_clienteAGENCIA: TStringField;
    qrconta_clienteDATA_CONTA: TDateTimeField;
    qrconta_clienteBANCO: TStringField;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Panel1: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit5: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    DBEdit9: TDBEdit;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    LRG: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    EDATA: TDBDateEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ebanco: TDBEdit;
    blocbanco: TBitBtn;
    DBEdit6: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBDateEdit7: TDBDateEdit;
    Panel2: TPanel;
    Bevel10: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Informaesdabaixa1: TMenuItem;
    DBText1: TDBText;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure EDATAEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure EDATAExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure blocbancoClick(Sender: TObject);
    procedure ebancoExit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure Fichadecadastro1Click(Sender: TObject);
    procedure InformaesdaBaixa1Click(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);

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

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_cliente,
  loc_banco, Cheque_baixa, xloc_cliente, cheque_conta, lista_cheque2,
  xloc_cheque, cheque_menu;

{$R *.dfm}


procedure Tfrmcheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque.FormShow(Sender: TObject);
begin
  dbedit1.setfocus;
end;

procedure Tfrmcheque.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcheque.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  IF frmcheque_menu.qrcheque.FIELDBYNAME('VALOR').ASFLOAT = 0 THEN
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
  if frmcheque_menu.qrcheque.fieldbyname('codcliente').asstring = '' then
  begin
    SHOWMESSAGE('Favor informar o cliente!');
    ecliente.SETFOCUS;
    exit;
  end;


  if (frmcheque_menu.qrcheque.State = dsinsert) or (frmcheque_menu.qrcheque.State = dsedit) then
  begin
      frmcheque_menu.qrcheque.post;
  end;

  frmmodulo.Conexao.Commit;

  close;




end;

procedure Tfrmcheque.bcancelarClick(Sender: TObject);
begin
  if (frmcheque_menu.qrcheque.State = dsinsert) or (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.cancel;
    frmmodulo.conexao.rollback;
  end;
  close;
end;

procedure Tfrmcheque.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcheque.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque.EDATAEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmcheque_menu.qrcheque.state = dsinsert then
  EDATA.Date := DATE;
end;

procedure Tfrmcheque.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit1Enter(Sender: TObject);
begin

tedit(sender).Color := $00A0FAF8;

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

procedure Tfrmcheque.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmcheque_menu.qrcheque.state = dsinsert) or (frmcheque_menu.qrcheque.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmcheque_menu.qrcheque.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

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

procedure Tfrmcheque.blocbancoClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmcheque_menu.qrcheque.fieldbyname('codbanco').asstring := frmmodulo.qrbanco.fieldbyname('numero').asstring;
  dbedit4.setfocus;
end;

procedure Tfrmcheque.ebancoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmcheque_menu.qrcheque.state = dsinsert) or (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.fieldbyname('codbanco').asstring := frmprincipal.zerarcodigo(ebanco.text,3);
    if ebanco.text <> '000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrbanco,ebanco.text,'numero') then blocbancoclick(frmcheque) else dbedit4.setfocus
    else
      blocbanco.SetFocus;
  end;
end;

procedure Tfrmcheque.DBEdit3Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
IF frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').ASSTRING = '' THEN
   frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').ASSTRING :=
   frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').ASSTRING;

end;

procedure Tfrmcheque.Fichadecadastro1Click(Sender: TObject);
begin
  pageview1.activepageindex := 0;
end;

procedure Tfrmcheque.InformaesdaBaixa1Click(Sender: TObject);
begin
  pageview1.activepageindex := 1;
end;

procedure Tfrmcheque.blocclienteClick(Sender: TObject);
begin
  frmxloc_CLIENTE := tfrmxloc_CLIENTE.create(self);
  frmxloc_CLIENTE.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcheque_menu.qrcheque.fieldbyname('codCLIENTE').asstring := resultado_pesquisa1;

    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''+ecliente.text+''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE.qrconta_cliente;
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        frmcheque_menu.qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        frmcheque_menu.qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        frmcheque_menu.qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        frmcheque_menu.qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;



    IF frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').AsString = '' THEN
       frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').AsString :=
       frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').AsString;
      dbedit3.setfocus;

  end
  ELSE
    ecliente.setfocus;
end;

procedure Tfrmcheque.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmcheque_menu.qrcheque.state = dsinsert) or (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
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
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE.qrconta_cliente;
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        frmcheque_menu.qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        frmcheque_menu.qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        frmcheque_menu.qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        frmcheque_menu.qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;


        dbedit3.setfocus;
        IF frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').AsString = '' THEN
           frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').AsString :=
           frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').AsString;

      END;
    END
    else
    BEGIN
      bloccliente.SetFocus;
    END;
  end;
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

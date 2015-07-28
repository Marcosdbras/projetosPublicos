unit cheque_avulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, MemDS, DBAccess, IBC;

type
  Tfrmcheque_avulso = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscheque2: TDataSource;
    Panel2: TPanel;
    Bevel10: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
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
    qrCheque: TIBCQuery;
    qrCliente: TIBCQuery;
    qrChequeNUMERO: TStringField;
    qrChequeVENCIMENTO: TDateTimeField;
    qrChequeCLIENTE: TStringField;
    qrChequeTITULAR: TStringField;
    qrChequeVALOR: TFloatField;
    qrChequeCODIGO: TStringField;
    qrChequeEMISSAO: TDateTimeField;
    qrChequeDATA_DEPOSITO1: TDateTimeField;
    qrChequeDATA_DEPOSITO2: TDateTimeField;
    qrChequeDATA_DEVOLUCAO1: TDateTimeField;
    qrChequeDATA_DEVOLUCAO2: TDateTimeField;
    qrChequeSITUACAO: TIntegerField;
    qrChequeCODCLIENTE: TStringField;
    qrChequeCODBANCO: TStringField;
    qrChequeAGENCIA: TStringField;
    qrChequeCONTA: TStringField;
    qrChequeDATA_CONTA: TDateTimeField;
    qrChequeDESCONTO: TFloatField;
    qrChequeLIQUIDO: TFloatField;
    qrChequeCODVENDA: TStringField;
    qrChequeOBS1: TStringField;
    qrChequeOBS2: TStringField;
    qrChequeCODCONTAS_PAGAR: TStringField;
    qrChequeDESTINO: TStringField;
    qrChequeDATA_BAIXA: TDateTimeField;
    IBCQuery1: TIBCQuery;
    query: TIBCQuery;
    qrconta_cliente: TIBCQuery;
    qrconta_clienteCONTA: TStringField;
    qrconta_clienteCODBANCO: TStringField;
    qrconta_clienteBANCO: TStringField;
    qrconta_clienteAGENCIA: TStringField;
    qrconta_clienteDATA_CONTA: TDateTimeField;
    qrconta_clienteCHEQUE: TIntegerField;
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
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);

  private
   vcliente: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_avulso: Tfrmcheque_avulso;
  comando : string;

implementation

uses modulo, principal, loc_banco, xloc_cliente, funcoes, cheque_conta;

{$R *.dfm}


procedure Tfrmcheque_avulso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque_avulso.FormShow(Sender: TObject);
begin
  qrcheque.open;
  qrcheque.insert;
  qrcheque.FIELDBYNAME('CODCLIENTE').ASSTRING := CHEQUE_CODCLIENTE;
  qrcheque.FIELDBYNAME('CODVENDA').ASSTRING := CHEQUE_VENDA;
  qrcheque.fieldbyname('codigo').asstring := frmprincipal.codifica('000040');
  qrcheque.FIELDBYNAME('SITUACAO').ASSTRING := '1';

  dbedit1.setfocus;
end;

procedure Tfrmcheque_avulso.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcheque_avulso.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  IF qrcheque.FIELDBYNAME('VALOR').ASFLOAT = 0 THEN
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
  if qrcheque.fieldbyname('codcliente').asstring = '' then
  begin
    SHOWMESSAGE('Favor informar o cliente!');
    ecliente.SETFOCUS;
    exit;
  end;


  if (qrcheque.State = dsinsert) or (qrcheque.State = dsedit) then
  begin
      qrcheque.post;
  end;


  frmcheque_avulso.OnShow(frmcheque_avulso);




end;

procedure Tfrmcheque_avulso.bcancelarClick(Sender: TObject);
begin
  if (qrcheque.State = dsinsert) or (qrcheque.State = dsedit) then
  begin
    qrcheque.cancel;
  end;
  close;
end;

procedure Tfrmcheque_avulso.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcheque_avulso.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.EDATAEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if qrcheque.state = dsinsert then
  EDATA.Date := DATE;
end;

procedure Tfrmcheque_avulso.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit1Enter(Sender: TObject);
begin

tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmcheque_avulso.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcheque_avulso.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (qrcheque.state = dsinsert) or (qrcheque.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       qrcheque.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmcheque_avulso.EDATAExit(Sender: TObject);
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

procedure Tfrmcheque_avulso.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.blocbancoClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrcheque.fieldbyname('codbanco').asstring := resultado_pesquisa1;
    dbedit4.setfocus;
  end
  else
    ebanco.setfocus;
end;

procedure Tfrmcheque_avulso.ebancoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrcheque.state = dsinsert) or (qrcheque.State = dsedit) then
  begin
    qrcheque.fieldbyname('codbanco').asstring := zerar(ebanco.text,3);
    if ebanco.text <> '000' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where numero = '''+ebanco.text+'''');
      query.open;
      if query.recordcount = 0 then
      begin
        application.messagebox('Banco não encontrado!','Erro',mb_ok+mb_iconerror);
      end;
    end
    else
      blocbanco.SetFocus;
  end;
end;

procedure Tfrmcheque_avulso.DBEdit3Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
IF qrcheque.FIELDBYNAME('TITULAR').ASSTRING = '' THEN
   qrcheque.FIELDBYNAME('TITULAR').ASSTRING :=
   qrcheque.FIELDBYNAME('CLIENTE').ASSTRING;

end;

procedure Tfrmcheque_avulso.blocclienteClick(Sender: TObject);
begin
  frmxloc_CLIENTE := tfrmxloc_CLIENTE.create(self);
  frmxloc_CLIENTE.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
    qrcliente.open;

    qrcheque.fieldbyname('codCLIENTE').asstring := resultado_pesquisa1;

    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''+ecliente.text+''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE_AVULSO.qrconta_cliente;
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;



    IF qrcheque.FIELDBYNAME('TITULAR').AsString = '' THEN
       qrcheque.FIELDBYNAME('TITULAR').AsString :=
       qrcheque.FIELDBYNAME('CLIENTE').AsString;
      dbedit3.setfocus;

  end
  ELSE
    ecliente.setfocus;
end;

procedure Tfrmcheque_avulso.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrcheque.state = dsinsert) or (qrcheque.State = dsedit) then
  begin
    qrcheque.fieldbyname('codcliente').asstring := zerar(ecliente.text,6);
    if ecliente.text <> '000000' then
    BEGIN
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+'''');
      qrcliente.open;
      if qrcliente.recordcount > 0 then
      BEGIN
        blocclienteclick(frmcheque_avulso);
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
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE_AVULSO.qrconta_cliente;
      FRMCHEQUE_CONTA.SHOWMODAL;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      END;
    end;


        dbedit3.setfocus;
        IF qrcheque.FIELDBYNAME('TITULAR').AsString = '' THEN
           qrcheque.FIELDBYNAME('TITULAR').AsString :=
           qrcheque.FIELDBYNAME('CLIENTE').AsString;

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

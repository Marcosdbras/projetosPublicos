unit contasreceber_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, rxcurredit, wwdblook, rxtooledit, RXDBCtrl, Mask, DBCtrls,
  ExtCtrls, Collection, Buttons, TFlatPanelUnit, Menus, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton,
  IBCustomDataSet, IBQuery, RzPanel;

type
  Tfrmcontasreceber_ficha = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    COMBOTIPO: TwwDBLookupCombo;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label8: TLabel;
    BLOCCLIENTE: TBitBtn;
    ENOMECLIENTE: TEdit;
    BLOCVENDEDOR: TBitBtn;
    ENOMEVENDEDOR: TEdit;
    Label9: TLabel;
    ecliente: TDBEdit;
    evendedor: TDBEdit;
    dscontasreceber: TDataSource;
    rvalor: TRxDBCalcEdit;
    QRCLIENTE: TZQuery;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    query: TZQuery;
    fdados_limite: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    LLIMITE: TLabel;
    RzGroupBox2: TRzGroupBox;
    LUTILIZADO: TLabel;
    RzGroupBox3: TRzGroupBox;
    LDISPONIVEL: TLabel;
    qrcontasreceber: TZQuery;
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure BLOCCLIENTEClick(Sender: TObject);
    procedure BLOCVENDEDORClick(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure evendedorExit(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_ficha: Tfrmcontasreceber_ficha;
  vdisponivel : double;

implementation

uses loc_cliente, modulo, contasreceber, loc_funci, principal,
  xloc_cliente;

{$R *.dfm}

procedure Tfrmcontasreceber_ficha.DBEdit1Enter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_ficha.DBEdit1Exit(Sender: TObject);
begin
  tedit(SENDER).Color := clwindow;
end;

procedure Tfrmcontasreceber_ficha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_ficha.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A0FAF8;
  if dbdateedit1.text = '  /  /    ' then
   dbdateedit1.Date := date;
end;

procedure Tfrmcontasreceber_ficha.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A0FAF8;
  if dbdateedit2.text = '  /  /    ' then
   dbdateedit2.Date := incmonth(dbdateedit1.date,1);
end;

procedure Tfrmcontasreceber_ficha.bcancelarClick(Sender: TObject);
begin
  frmcontasreceber.qrcontasreceber.Cancel;
  close;
end;

procedure Tfrmcontasreceber_ficha.bgravarClick(Sender: TObject);
var
  texto : pansichar;
  Data: TDateTime;
  dia, mes, ano: Word;
  dias : integer;
  vlimite : double;

begin

  fdados_limite.Visible := false;

  if (ecliente.Text = '') or (ecliente.Text = '000000') then
  begin
    showmessage('Favor informar o cliente!');
    ecliente.setfocus;
    exit;
  end;
  if dbdateedit2.text = '  /  /    ' then
  begin
    showmessage('Favor informar o vencimento!');
    dbdateedit2.SetFocus;
    exit;
  end;


  if rvalor.Value = 0 then
  begin
    showmessage('O valor está zerado!');
    rvalor.setfocus;
    exit;
  end;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+ecliente.Text+''' and situacao = 1');
  qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
  qrcontasreceber.Open;

  (*  VERIFICAR QUANTO AINDA TEM DE LIMITE *)
  vlimite := 0;
  qrcontasreceber.first;
  while not qrcontasreceber.Eof do
  begin
    vlimite := vlimite + qrcontasreceber.fieldbyname('total_cliente').AsFloat;
    qrcontasreceber.Next;
  end;


  case qrcliente.FieldByName('situacao').asinteger of

  3 : begin // bloqueado
        texto := pansichar('Cliente com crédito Bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
  4 : begin // inativo
        texto := pansichar('Cliente INATIVO!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
  5 : begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        ECLIENTE.SetFocus;
        exit;

      end;
  end;




     if qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
     begin

     limite_disponivel := vdisponivel-rvalor.Value;

       IF limite_disponivel <= 0 THEN
       BEGIN
         texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',(qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite))+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
           if not frmPrincipal.autentica('Liberar venda',3) then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             ECLIENTE.SetFocus;
             exit;
           end;
         end
         else
         begin
           ECLIENTE.SetFocus;
           exit;
         end;
       END;
     END;


  frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring := frmprincipal.codifica('000049')+'/INC';
  frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 1;
  frmcontasreceber.qrcontasreceber.fieldbyname('filtro').asinteger := 0;
  frmcontasreceber.qrcontasreceber.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
  frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat := rvalor.value;
  frmcontasreceber.qrcontasreceber.post;
  frmmodulo.conexao.commit;

  ENOMECLIENTE.Text := '';
  ENOMEVENDEDOR.Text := '';
  frmcontasreceber.qrcontasreceber.Insert;
  ecliente.setfocus;



end;

procedure Tfrmcontasreceber_ficha.BLOCCLIENTEClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  vdisponivel := 0;

  IF RESULTADO_PESQUISA1 <> '' THEN
  BEGIN


    query.close;
    query.sql.clear;
    query.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+RESULTADO_PESQUISA1+''' and situacao = 1');
    query.Open;

    LLIMITE.Caption := formatfloat('###,###,##0.00',frmxloc_cliente.query.FIELDBYNAME('LIMITE').ASFLOAT);
    vdisponivel := frmxloc_cliente.query.FIELDBYNAME('LIMITE').ASFLOAT - query.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;

    if vdisponivel < 0 then
      LDISPONIVEL.Font.Color := clRed
    else
      LDISPONIVEL.Font.Color := clBlack;


    Ldisponivel.Caption := formatfloat('###,###,##0.00',vdisponivel);
    Lutilizado.Caption := formatfloat('###,###,##0.00',query.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);
    fdados_limite.Visible := true;

    QRCLIENTE.CLOSE;
    QRCLIENTE.SQL.CLEAR;
    QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+resultado_pesquisa1+'''');
    QRCLIENTE.Open;

    frmcontasreceber.qrcontasreceber.FieldByName('codcliente').asstring := RESULTADO_PESQUISA1;
    frmcontasreceber.qrcontasreceber.FieldByName('codREGIAO').asstring := RESULTADO_PESQUISA8;
    enomecliente.Text := RESULTADO_PESQUISA2;
    dbdateedit1.setfocus;
  END;

end;

procedure Tfrmcontasreceber_ficha.BLOCVENDEDORClick(Sender: TObject);
begin

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmcontasreceber.qrcontasreceber.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  enomevendedor.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
  BGRAVAR.setfocus;
end;

procedure Tfrmcontasreceber_ficha.evendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_ficha.evendedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  evendedor.text := frmprincipal.zerarcodigo(evendedor.text,6);
  if evendedor.text <> '000000' then
  begin

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

     if not frmprincipal.Locregistro(frmmodulo.qrfunci,evendedor.text,'codigo') then
        blocvendedorclick(Frmcontasreceber_ficha)
     else
     begin
        frmcontasreceber.qrcontasreceber.FieldByName('codigo').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        enomevendedor.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
        bgravar.setfocus;
     end;
  end
  else
  begin
    blocvendedor.setfocus;
  end;
end;

procedure Tfrmcontasreceber_ficha.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  vdisponivel := 0;
  if ecliente.text <> '000000' then
  begin
     QRCLIENTE.CLOSE;
     QRCLIENTE.SQL.CLEAR;
     QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+ecliente.text+'''');
     QRCLIENTE.Open;

     if QRCLIENTE.RECNO = 0 then
        blocclienteclick(Frmcontasreceber_ficha)
     else
     begin

       query.close;
       query.sql.clear;
       query.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+ecliente.Text+''' and situacao = 1');
       query.Open;

       LLIMITE.Caption := formatfloat('###,###,##0.00',QRCLIENTE.FIELDBYNAME('LIMITE').ASFLOAT);

       vdisponivel := QRCLIENTE.FIELDBYNAME('LIMITE').ASFLOAT - query.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
       if vdisponivel < 0 then
         LDISPONIVEL.Font.Color := clRed
       else
         LDISPONIVEL.Font.Color := clBlack;


       Ldisponivel.Caption := formatfloat('###,###,##0.00',vdisponivel);
       Lutilizado.Caption := formatfloat('###,###,##0.00',query.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);
       fdados_limite.Visible := true;

       frmcontasreceber.qrcontasreceber.fieldbyname('codcliente').asstring := qrcliente.fieldbyname('codigo').asstring;
       frmcontasreceber.qrcontasreceber.fieldbyname('codregiao').asstring := qrcliente.fieldbyname('codregiao').asstring;
       enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
       dbdateedit1.SetFocus;
     end;
  end
  else
  begin
    bloccliente.setfocus;
  end;
end;

procedure Tfrmcontasreceber_ficha.FormShow(Sender: TObject);
begin
//  enomecliente.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
//  enomevendedor.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;



  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';

  
  
end;

procedure Tfrmcontasreceber_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.

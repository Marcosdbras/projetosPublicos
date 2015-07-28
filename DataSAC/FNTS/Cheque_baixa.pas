unit Cheque_baixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RXDBCtrl, DBCtrls, Buttons, ExtCtrls,
  Collection, DB, TFlatPanelUnit, Menus, AdvGlowButton;

type
  Tfrmcheque_baixa = class(TForm)
    GroupBox1: TGroupBox;
    rdesfazer: TRadioButton;
    r1dev: TRadioButton;
    r2dev: TRadioButton;
    r1dep: TRadioButton;
    r2dep: TRadioButton;
    rrep: TRadioButton;
    GroupBox2: TGroupBox;
    DBDateEdit3: TDBDateEdit;
    FlipPanel1: TFlipPanel;
    ViewSplit1: TViewSplit;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    rdesc: TRadioButton;
    rsust: TRadioButton;
    rout: TRadioButton;
    dscheque2: TDataSource;
    PCONTA: TFlatPanel;
    Label4: TLabel;
    econta: TDBEdit;
    blocconta: TBitBtn;
    Edit1: TEdit;
    pdesconto: TFlatPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure rdesfazerClick(Sender: TObject);
    procedure r1depClick(Sender: TObject);
    procedure r2depClick(Sender: TObject);
    procedure r1devClick(Sender: TObject);
    procedure r2devClick(Sender: TObject);
    procedure rrepClick(Sender: TObject);
    procedure DBDateEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBDateEdit3Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure rsustClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure routClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure rdescClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_baixa: Tfrmcheque_baixa;

implementation

uses modulo, principal, loc_contacorrent, contacorrente_lancamento2;

{$R *.dfm}

procedure Tfrmcheque_baixa.rdesfazerClick(Sender: TObject);
begin
  Groupbox2.Visible := false;
  pconta.Visible := false;
  bgravar.setfocus;
  pdesconto.visible := false;
end;

procedure Tfrmcheque_baixa.r1depClick(Sender: TObject);
begin

  pconta.visible := true;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
  pdesconto.visible := false;
end;

procedure Tfrmcheque_baixa.r2depClick(Sender: TObject);
begin
  pconta.Visible := true;
  pdesconto.Visible := true;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
  pdesconto.visible := false;
end;

procedure Tfrmcheque_baixa.r1devClick(Sender: TObject);
begin
    pconta.Visible := true;
  groupbox2.Visible := true;
  pdesconto.visible := false;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.r2devClick(Sender: TObject);
begin
      pconta.Visible := true;
      pdesconto.visible := false;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.rrepClick(Sender: TObject);
begin
  pconta.Visible := false;
  pdesconto.visible := true;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.DBDateEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcheque_baixa.DBDateEdit3Enter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmcheque_baixa.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmcheque_baixa.DBEdit2Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmcheque_baixa.DBEdit3Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmcheque_baixa.DBDateEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_baixa.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_baixa.DBEdit2Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_baixa.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_baixa.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);


end;

procedure Tfrmcheque_baixa.bgravarClick(Sender: TObject);
begin
 if (rdesfazer.Checked) or (r1dep.checked) or (r2dep.Checked) or (rdesc.checked) or
    (r1dev.Checked) or (r2dev.Checked) or (rrep.Checked) or (rsust.Checked) or (rout.Checked) then
 begin



  if rdesfazer.Checked then  // RETORNAR O CHEQUE PARA ATIVO
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 1;
    frmmodulo.qrcheque.fieldbyname('desconto').asfloat := 0;
    frmmodulo.qrcheque.FieldByName('liquido').asfloat := 0;
    frmmodulo.qrcheque.fieldbyname('data_baixa').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_deposito1').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_deposito2').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_devolucao1').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_devolucao2').asstring := '';
    frmmodulo.qrcheque.fieldbyname('codconta').asstring := '';

  end;
  if r1dep.Checked then   // DEPOSITADO PELA PRIMEIRA VEZ
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 2;
    frmmodulo.qrcheque.fieldbyname('desconto').asfloat := 0;
    frmmodulo.qrcheque.FieldByName('liquido').asfloat := frmmodulo.qrcheque.FieldByName('valor').asfloat;
    frmmodulo.qrcheque.fieldbyname('data_deposito1').asdatetime :=  dbdateedit3.Date;
    frmmodulo.qrcheque.fieldbyname('data_deposito2').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_devolucao1').asstring := '';
    frmmodulo.qrcheque.fieldbyname('data_devolucao2').asstring := '';
//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Depositado na C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'DEPOSITO EM CHEQUE';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'C';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  end;

  if r2dep.Checked then   // DEPOSITADO PELA SEGUNDA VEZ
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 3;
    frmmodulo.qrcheque.fieldbyname('data_deposito2').asDATETIME := dbdateedit3.Date;
    frmmodulo.qrcheque.fieldbyname('data_devolucao2').asstring := '';
//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Depositado pela 2a. vez na C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'DEPOSITO EM CHEQUE 2X';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'C';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  end;

  if r1dev.Checked then  // DEVOLVIDO PELA PRIMEIRA VEZ
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 5;
    frmmodulo.qrcheque.fieldbyname('data_devolucao1').asDATETIME := DBDATEEDIT3.date;
//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Cheque Devolvido na C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'CHEQUE DEVOLVIDO';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'D';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  end;

  if r2dev.Checked then  // DEVOLVIDO PELA SEGUNDA VEZ
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 6;
    frmmodulo.qrcheque.fieldbyname('data_devolucao2').asDATETIME := DBDATEEDIT3.date;
//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Cheque Devolvido pela 2a. vez na C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'CHEQUE DEVOLVIDO 2a.X';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'D';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  end;



  if rDESC.Checked then   // descontado
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 4;
//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Descontado na C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        // lancamento do valor do cheque
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'DEPOSITO EM CHEQUE';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'C';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;

        // lancamento do desconto

        if frmmodulo.qrcheque.fieldbyname('DESCONTO').ASFLOAT > 0 THEN
        BEGIN
          frmmodulo.qrlancamento_conta.Insert;
          frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
          frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
          frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
          frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('DESCONTO').asFLOAT;
          frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
          frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'DESCONTO DE CHEQUE';
          frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'D';
          frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
          frmcontacorrente_lancamento2.showmodal;
        END;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  END;


  if rREP.Checked then   // REPASSADO
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 7;
  end;


  if rsust.Checked then  // sustado
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 8;
    frmmodulo.qrcheque.fieldbyname('data_devolucao1').asDATETIME := DBDATEEDIT3.date;
    frmmodulo.qrcheque.fieldbyname('data_devolucao2').asDATETIME := DBDATEEDIT3.date;
    frmmodulo.qrcheque.fieldbyname('data_deposito1').asDATETIME := DBDATEEDIT3.date;
    frmmodulo.qrcheque.fieldbyname('data_deposito2').asDATETIME := DBDATEEDIT3.date;

//    FRMMODULO.qrcheque.FIELDBYNAME('DESTINO').ASSTRING := 'Cheque SUSTADO - C/C: '+frmmodulo.qrcheque.fieldbyname('codconta').AsString;

    if application.messagebox('Deseja fazer um lançamento da movimento de Conta Corrente?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcontacorrente.Open;
      IF FRMMODULO.QRCONTACORRENTE.Locate('CODIGO',FRMMODULO.QRCHEQUE.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING,[loCaseInsensitive]) THEN
      BEGIN
        frmmodulo.qrlancamento_conta.Open;
        frmmodulo.qrlancamento_conta.Insert;
        frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring := frmPrincipal.codifica('000042');
        frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime := dbdateedit3.date;
        frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring;
        frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT := frmmodulo.qrcheque.fieldbyname('VALOR').asFLOAT;
        frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring := frmmodulo.qrcheque.fieldbyname('NUMERO').asSTRING;
        frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring := 'CHEQUE SUSTADO';
        frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'D';
        frmcontacorrente_lancamento2 := tfrmcontacorrente_lancamento2.create(self);
        frmcontacorrente_lancamento2.showmodal;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Conta Corrente não encontrada no sistema!');
      END;
    end;
  end;


  if rOUT.Checked then   // OUTRAS
  begin
    frmmodulo.qrcheque.FieldByName('situacao').asinteger := 9;
  end;





  


  frmmodulo.qrcheque.post;
  frmmodulo.conexao.Commit;
  close;
 end
 else
 begin
   showmessage('Selecione uma opção!');
 end;


end;

procedure Tfrmcheque_baixa.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(self);
  frmloc_contacorrente.showmodal;
  frmmodulo.qrcheque.fieldbyname('codconta').asstring := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
  frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring := frmmodulo.qrcontacorrente.fieldbyname('cODIGO').asstring;

  EDIT1.TEXT := frmmodulo.qrcontacorrente.fieldbyname('BANCO').asstring;

  dbedit2.setfocus;
end;

procedure Tfrmcheque_baixa.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    if eCONTA.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcontacorrente,econta.text,'conta') then
      begin
        bloccontaclick(frmcheque_baixa);
      end
      else
      begin
        edit1.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
        frmmodulo.qrcheque.fieldbyname('codconta_CORRENTE').asstring := frmmodulo.qrcontacorrente.fieldbyname('cODIGO').asstring;
        dbedit2.setfocus;
      end;
    end
    else
    begin
      blocconta.SetFocus;
    end;
  end;
end;

procedure Tfrmcheque_baixa.rsustClick(Sender: TObject);
begin
  pconta.Visible := true;
  groupbox2.Visible := true;
  pdesconto.visible := false;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.FormShow(Sender: TObject);
begin


  FRMMODULO.QRCONTACORRENTE.Close;
  FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
  FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 ORDER BY CONTA');
  FRMMODULO.QRCONTACORRENTE.OPEN;
  FRMMODULO.QRCONTACORRENTE.INDEXFIELDNAMES := 'CONTA';

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

  CASE frmmodulo.qrcheque.FIELDBYNAME('SITUACAO').ASINTEGER OF
  1:rdesfazer.Enabled := FALSE;
  2:BEGIN
      r1dep.Enabled := FALSE;
      R2DEP.Enabled := FALSE;
      R2DEV.Enabled := FALSE;
    END;
  3:BEGIN
      r2DEP.Enabled := FALSE;
      R1DEP.Enabled := FALSE;
      R1DEV.Enabled := FALSE;
    END;
  4:BEGIN
      rDESC.Enabled := FALSE;
    END;

  5:BEGIN
      R1DEP.Enabled := FALSE;
      r1DEV.Enabled := FALSE;
      R2DEV.Enabled := FALSE;
    END;

  6:BEGIN
     r2DEV.Enabled := FALSE;
     R1DEP.Enabled := FALSE;
     R2DEP.Enabled := FALSE;
     R1DEV.Enabled := FALSE;
     rdesc.Enabled := false;
     rrep.Enabled := false;
    END;
  7:rrep.Enabled  := FALSE;
  8:rsust.Enabled := FALSE;
  9:rout.Enabled  := FALSE;
  END;


  groupbox1.SetFocus;




end;

procedure Tfrmcheque_baixa.econtaEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmcheque_baixa.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcheque_baixa.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_baixa.routClick(Sender: TObject);
begin
  pconta.Visible := false;
  pdesconto.visible := TRUE;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrcheque.Cancel;
  close;
end;

procedure Tfrmcheque_baixa.rdescClick(Sender: TObject);
begin
  pconta.Visible := TRUE;
  pdesconto.visible := true;
  groupbox2.Visible := true;
  dbdateedit3.setfocus;
end;

procedure Tfrmcheque_baixa.DBEdit4Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  TRY
    IF FRMMODULO.QRCHEQUE.State = DSEDIT THEN
    BEGIN
      FRMMODULO.QRCHEQUE.FIELDBYNAME('LIQUIDO').ASFLOAT :=
      FRMMODULO.QRCHEQUE.FIELDBYNAME('VALOR').ASFLOAT -
      FRMMODULO.QRCHEQUE.FIELDBYNAME('DESCONTO').ASFLOAT;
    END;
  EXCEPT
  END;
end;

procedure Tfrmcheque_baixa.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_baixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque_baixa.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if pdesconto.Visible then dbedit4.SetFocus else bgravar.setfocus;
  end;
end;

end.


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

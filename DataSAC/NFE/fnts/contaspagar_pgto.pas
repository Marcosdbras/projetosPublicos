unit contaspagar_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Collection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask,
  rxtooledit, rxcurredit, wwdbedit, Wwdotdot, Wwdbcomb, Buttons, Menus, DBCtrls,
  AdvGlowButton;

type
  Tfrmcontaspagar_pgto = class(TForm)
    qrcontaspagar: TZQuery;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarDATA_VENCIMENTO: TDateTimeField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarNOTAFISCAL: TStringField;
    qrcontaspagarDOCUMENTO: TStringField;
    qrcontaspagarESPECIE: TStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarCODCONTA: TStringField;
    qrcontaspagarCODFORNECEDOR: TStringField;
    qrcontaspagarCODIGO: TStringField;
    qrcontaspagarDATA_EMISSAO: TDateTimeField;
    qrcontaspagarDATA_PAGAMENTO: TDateTimeField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarHISTORICO: TStringField;
    qrcontaspagarC: TStringField;
    qrcontaspagarE: TStringField;
    qrcontaspagarCODNOTA: TStringField;
    qrcontaspagarconta: TStringField;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TStringField;
    FlatPanel7: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    wwDBGrid1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Label6: TLabel;
    FlatPanel2: TFlatPanel;
    RTOTAL_VALOR: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    RTOTAL_DESCONTO: TRxCalcEdit;
    FlatPanel4: TFlatPanel;
    RTOTAL_ACRESCIMO: TRxCalcEdit;
    FlatPanel5: TFlatPanel;
    RTOTAL_PAGO: TRxCalcEdit;
    Bevel3: TBevel;
    FlatPanel12: TFlatPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    rvalor_caixa: TRxCalcEdit;
    rvalor_banco: TRxCalcEdit;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Edit2: TEdit;
    rvalor_terceiro: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    FlatPanel10: TFlatPanel;
    Label18: TLabel;
    Label5: TLabel;
    eplano: TEdit;
    blocplano: TBitBtn;
    enomeplano: TEdit;
    Edit1: TEdit;
    FlatPanel9: TFlatPanel;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    bterceiro: TAdvGlowButton;
    EACRESCIMO: TwwDBEdit;
    EDESCONTO: TwwDBEdit;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure EDESCONTOExit(Sender: TObject);
    procedure FinalizarEdio1Click(Sender: TObject);
    procedure qrcontaspagarAfterEdit(DataSet: TDataSet);
    procedure qrcontaspagarAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure blocplanoClick(Sender: TObject);
    procedure eplanoExit(Sender: TObject);
    procedure eplanoEnter(Sender: TObject);
    procedure eplanoKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_caixaEnter(Sender: TObject);
    procedure rvalor_caixaExit(Sender: TObject);
    procedure rvalor_caixaKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_bancoExit(Sender: TObject);
    procedure rvalor_bancoKeyPress(Sender: TObject; var Key: Char);
    procedure bterceiroClick(Sender: TObject);
    procedure rvalor_terceiroExit(Sender: TObject);
    procedure rvalor_terceiroKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_pgto: Tfrmcontaspagar_pgto;
  acrescimo_a:real;
  desconto_a:real;
  pago_a : real;
  fornecedor : string;

implementation

uses modulo, principal, contaspagar, loc_contacorrent, loc_conta, cheque,
  contaspagar_cheque, ecf;

{$R *.dfm}

procedure Tfrmcontaspagar_pgto.bcancelarClick(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  CLOSE;
end;

procedure Tfrmcontaspagar_pgto.bgravarClick(Sender: TObject);
begin


  TRY
  if rsoma.value <> RTOTAL_PAGO.value then
  begin
    application.MessageBox('O Valor informado não confere com o somatório das contas! Favor verificar!','Atençã!',mb_ok+MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin

    IF RVALOR_BANCO.Value <> 0 THEN
    BEGIN
      if econta.Text = '' then
      begin
        application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!','Atenção',mb_ok+MB_ICONWARNING);
        econta.setfocus;
        exit;
      end;
    END;

    frmmodulo.qrcaixa_mov.open;
    if rvalor_caixa.Value <> 0 then // pagamento com caixa
    begin

      frmmodulo.qrcaixa_mov.Insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;

//      IF rvalor_caixa.Value > 0 THEN
//      BEGIN
        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := RVALOR_CAIXA.VALUE;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := RVALOR_CAIXA.VALUE* (-1);
//      END
//      ELSE
//      BEGIN
//        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0 ;
//        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := RVALOR_CAIXA.VALUE* (-1);
//        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := RVALOR_CAIXA.VALUE* (-1);
 //     END;

      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring   := EPLANO.TEXT;
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 25; // pgto. conta - caixa
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := EDIT1.TEXT;
      frmmodulo.qrcaixa_mov.post;
    end;

    if rVALOR_BANCO.VALUE <> 0 then // pagamento com banco
    begin
      frmmodulo.qrcaixa_mov.Insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
      frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := RVALOR_BANCO.VALUE* (-1);
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring   := EPLANO.TEXT;
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 26; // pgto. conta - banco
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := EDIT1.TEXT;
      frmmodulo.qrcaixa_mov.post;

      frmmodulo.qrlancamento_conta.Open;
      frmmodulo.qrlancamento_conta.Insert;
      frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring           := frmPrincipal.codifica('000042');
      frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime           := dateedit1.date;
      frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring;
      frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT             := RVALOR_BANCO.VALUE*(-1);
      frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring        := edit2.text;
      frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring        := edit1.text;
      frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring             := 'D';
      frmmodulo.qrlancamento_conta.FieldByName('codconta').asstring         := eplano.Text;
      frmmodulo.qrlancamento_conta.post;
    end;
    if rVALOR_TERCEIRO.VALUE <> 0 THEN // pagamento com cheque de terceiros
    begin
      frmmodulo.qrcaixa_mov.Insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
      frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := rvalor_terceiro.VALUE* (-1);


      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring   := EPLANO.TEXT;
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := EDIT1.TEXT;
      frmmodulo.qrcaixa_mov.post;
    END;

    qrcontaspagar.first;
    while not qrcontaspagar.eof do
    begin
      qrcontaspagar.edit;
      qrcontaspagar.fieldbyname('situacao').asinteger := 2;
      qrcontaspagar.fieldbyname('filtro').asinteger := 0;
      qrcontaspagar.fieldbyname('data_pagamento').asdatetime := dateedit1.Date;
      qrcontaspagar.FieldByName('movimento').asinteger := 99;
      if (rvalor_caixa.Value <> 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then qrcontaspagar.FieldByName('movimento').asinteger := 25;
      if (rvalor_caixa.Value = 0) and (rvalor_banco.value <> 0) and (rvalor_terceiro.value = 0) then qrcontaspagar.FieldByName('movimento').asinteger := 26;
      if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value <> 0) then qrcontaspagar.FieldByName('movimento').asinteger := 27;
      qrcontaspagar.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
      qrcontaspagar.post;
      qrcontaspagar.next;
    end;



                 if rtotal_pago.value > 0 then
                 begin
                   ecf_sangriaX(ecf_modelo,FORMATFLOAT('##############0.00',RTOTAL_PAGO.value));

                 end;



    qrcontaspagar.Refresh;
    FRMMODULO.Conexao.Commit;
    FRMCONTASPAGAR.qrcontaspagar.Refresh;
    close;
  end; // conferencia dos valores
  EXCEPT
    application.messagebox('Houve falha no pagamento destas contas! Este processamento foi cancelado!','Erro',mb_ok+mb_iconerror);
    frmmodulo.Conexao.Rollback;
  END;






end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  QRCONTASPAGAR.Cancel;
end;

procedure Tfrmcontaspagar_pgto.EDESCONTOExit(Sender: TObject);
begin
  if QRCONTASPAGAR.state in [dsinsert,dsedit] then
  begin
    QRCONTASPAGAR.FIELDBYNAME('VALORPAGO').ASFLOAT :=
    QRCONTASPAGAR.FIELDBYNAME('VALOR').ASFLOAT +
    QRCONTASPAGAR.FIELDBYNAME('ACRESCIMO').ASFLOAT -
    QRCONTASPAGAR.FIELDBYNAME('DESCONTO').ASFLOAT ;
  end;
end;

procedure Tfrmcontaspagar_pgto.FinalizarEdio1Click(Sender: TObject);
begin
  EDIT1.setfocus;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterEdit(DataSet: TDataSet);
begin
  desconto_a := qrcontaspagar.fieldbyname('desconto').asfloat;
  acrescimo_a:= qrcontaspagar.fieldbyname('acrescimo').asfloat;
  pago_a := qrcontaspagar.fieldbyname('valorpago').asfloat;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterPost(DataSet: TDataSet);
begin
  rtotal_desconto.Value := rtotal_desconto.value + qrcontaspagar.fieldbyname('desconto').asfloat - desconto_a;
  rtotal_acrescimo.Value := rtotal_acrescimo.value + qrcontaspagar.fieldbyname('acrescimo').asfloat - acrescimo_a;

  rtotal_pago.Value := rtotal_pago.value + qrcontaspagar.fieldbyname('valorpago').asfloat - pago_a;




end;

procedure Tfrmcontaspagar_pgto.wwDBGrid1Exit(Sender: TObject);
begin
  if qrcontaspagar.State = dsedit then qrcontaspagar.Post;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  dateedit1.Date := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;





end;

procedure Tfrmcontaspagar_pgto.Edit1Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit1Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure Tfrmcontaspagar_pgto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then  EPLANO.SETFOCUS;

end;

procedure Tfrmcontaspagar_pgto.Gravar1Click(Sender: TObject);
begin
  BGRAVAR.SETFOCUS;
  BGRAVAR.Click;
end;

procedure Tfrmcontaspagar_pgto.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(self);
  frmloc_contacorrente.showmodal;
  enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
  econta.text    := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
  EDIT2.SETFOCUS;
  
  
end;

procedure Tfrmcontaspagar_pgto.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    if eCONTA.text <> '' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcontacorrente,econta.text,'conta') then
      begin
        bloccontaclick(frmcontaspagar_pgto);
      end
      else
      begin
        enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
        econta.text    := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
        edit2.setfocus;
      end;
    end
    else
    begin
      blocconta.SetFocus;
    end;

end;

procedure Tfrmcontaspagar_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_pgto.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCONTACORRENTE.Close;
  FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
  FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 ORDER BY CONTA');
  FRMMODULO.QRCONTACORRENTE.OPEN;
  FRMMODULO.QRCONTACORRENTE.INDEXFIELDNAMES := 'CONTA';

  if qrcontaspagar.RecordCount = 1 then // verificar se ha mais de uma conta para o pagamento em cheque
  begin
     edit1.text := qrcontaspagar.fieldbyname('historico').asstring;
     eplano.text := qrcontaspagar.fieldbyname('codconta').asstring;
     enomeplano.text := qrcontaspagar.fieldbyname('conta').asstring;
     fornecedor := 'Pgto. '+qrcontaspagar.fieldbyname('fornecedor').AsString+' - Docto: '+qrcontaspagar.fieldbyname('Documento').asstring;
  end
  else
  begin
    edit1.text := '';
    enomeplano.text := '';
    eplano.text := '';
    fornecedor := 'Pgto. de vários fornecedores';
  end;
  dateedit1.Date := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

end;

procedure Tfrmcontaspagar_pgto.econtaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Enter(Sender: TObject);
begin
TEdit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Exit(Sender: TObject);
begin
TEdit(sender).Color := clwindow;
IF rsoma.Value = RTOTAL_PAGO.VALUE THEN BGRAVAR.SETFOCUS ELSE rvalor_terceiro.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.econtaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmcontaspagar_pgto.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BEGIN
    PERFORM(WM_NEXTDLGCTL,0,0);
  END;
end;

procedure Tfrmcontaspagar_pgto.blocplanoClick(Sender: TObject);
begin
 frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  eplano.text := frmmodulo.qrplano.fieldbyname('CODIGO').asstring;
  enomeplano.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;
   RVALOR_CAIXA.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.eplanoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    eplano.text := frmprincipal.zerarcodigo(eplano.text,6);
    if eplano.text <> '000000' then
    BEGIN
      if not frmprincipal.Locregistro(frmmodulo.qrplano,eplano.text,'codigo') then
      BEGIN
       blocplanoclick(frmcontaspagar_pgto);
      END
      else
      begin
        enomeplano.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;

        RVALOR_CAIXA.SETFOCUS;

      end;
    END
    else
      blocplano.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.eplanoEnter(Sender: TObject);
begin
  eplano.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.eplanoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;

  if RTOTAL_PAGO.value = rsoma.value then bgravar.setfocus else rvalor_banco.setfocus;

  
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BEGIN
    PERFORM(WM_NEXTDLGCTL,0,0);
  END;
end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  if rvalor_banco.Value <> 0 then
    econta.setfocus
  else
    rvalor_terceiro.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then econta.setfocus;
end;

procedure Tfrmcontaspagar_pgto.bterceiroClick(Sender: TObject);
begin


  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bgravar.setfocus;



end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bterceiro.setfocus
end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then  bterceiro.setfocus;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN EDIT1.SETFOCUS;
end;

end.

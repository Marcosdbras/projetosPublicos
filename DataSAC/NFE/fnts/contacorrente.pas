unit contacorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, ImgList, ComCtrls,
  Wwdbigrd, Wwdbgrid, Wwkeycb, AdvGlowButton, frxDesgn, frxClass, frxDBSet;

type
  Tfrmcontacorrente = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    ds: TDataSource;
    Relatrios1: TMenuItem;
    dslancamento_conta: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    ImageList1: TImageList;
    dsbanco2: TDataSource;
    Panel1: TPanel;
    qrlancamento_conta: TZQuery;
    qrlancamento_contaCODIGO: TStringField;
    qrlancamento_contaCODCONTACORRENTE: TStringField;
    qrlancamento_contaDATA: TDateTimeField;
    qrlancamento_contaHISTORICO: TStringField;
    qrlancamento_contaCODCONTA: TStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TStringField;
    qrlancamento_contaDOCUMENTO: TStringField;
    wwDBGrid1: TwwDBGrid;
    qrsaldo_anterior: TZQuery;
    FlatPanel2: TFlatPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    rsaldo: TRxCalcEdit;
    Label2: TLabel;
    MenudeLanamentos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MenudeContaCorrente1: TMenuItem;
    N3: TMenuItem;
    Incluir2: TMenuItem;
    Algerar1: TMenuItem;
    Excluir2: TMenuItem;
    Filtrar1: TMenuItem;
    Panel3: TPanel;
    Label4: TLabel;
    rsaldo_anterior: TRxCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel4: TPanel;
    arvore: TTreeView;
    Panel5: TPanel;
    Bevel5: TBevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel6: TBevel;
    plocalizar: TFlatPanel;
    Label5: TLabel;
    loc: TwwIncrementalSearch;
    Panel6: TPanel;
    Bevel7: TBevel;
    BITBTN6: TAdvGlowButton;
    BITBTN7: TAdvGlowButton;
    BITBTN8: TAdvGlowButton;
    bfiltrar: TAdvGlowButton;
    fxcontacorrente: TfrxReport;
    fscliente: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
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
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure arvoreKeyPress(Sender: TObject; var Key: Char);
    procedure arvoreClick(Sender: TObject);
    procedure arvoreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure locChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente: Tfrmcontacorrente;
  comando : string;
  saldo : real;
  conta_selecionada : string;

implementation

uses modulo, principal, contacorrente_ficha, contacorrente_lancamento,
  principal2;

{$R *.dfm}


procedure Tfrmcontacorrente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontacorrente.FormShow(Sender: TObject);
VAR X : BYTE;
begin
  plocalizar.Top := 376;
  plocalizar.left := 244;

  conta_selecionada := '';
  SetWindowLong(arvore.Handle, GWL_STYLE,
  GetWindowLong(arvore.Handle,GWL_STYLE) or $80);

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by numero desc');
  frmmodulo.qrbanco.open;
  FRMMODULO.QRBANCO.INDEXFIELDNAMES := 'BANCO';


  frmmodulo.qrplano.close;
  frmmodulo.qrplano.SQL.clear;
  frmmodulo.qrplano.sql.add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  FRMMODULO.QRPLANO.INDEXFIELDNAMES := 'CONTA';

try
  frmmodulo.qrbanco.First;
  arvore.Items.Clear;
  while not frmmodulo.qrbanco.Eof do
  begin
    frmmodulo.qrcontacorrente.close;
    frmmodulo.qrcontacorrente.sql.clear;
    frmmodulo.qrcontacorrente.SQL.add('select * from c000041 where codbanco = '''+frmmodulo.qrbanco.fieldbyname('numero').asstring+''' order by conta');
    frmmodulo.qrcontacorrente.Open;
    if frmmodulo.qrcontacorrente.RecordCount > 0 then
    begin
      with arvore.Items.AddFirst(nil,  frmmodulo.qrbanco.fieldbyname('banco').asstring) do
      begin
        if frmmodulo.qrbanco.FieldByName('numero').asstring = '001' then // banco do brasil
        begin
          ImageIndex := 2;
          SelectedIndex := 2;
        end;
        if frmmodulo.qrbanco.FieldByName('numero').asstring = '021' then // banestes     VERIFICAR --> COLOCAR OS DESENHOS DOS DEMAIS BANCOS
        begin
          ImageIndex := 3;
          SelectedIndex := 3;
        end;
        Selected := true
      end;
      frmmodulo.qrcontacorrente.First;
      while not frmmodulo.qrcontacorrente.Eof do
      begin
        with arvore.Items.AddChild(ARVORE.Selected, 'C/C: '+frmmodulo.qrcontacorrente.fieldbyname('conta').AsString+'   ['+frmmodulo.qrcontacorrente.fieldbyname('codigo').AsString+']') do
        begin
            ImageIndex := 0;
            SelectedIndex := 1;
        end;
        frmmodulo.qrcontacorrente.Next;
      end;
    end;
    frmmodulo.qrbanco.Next;
  end;

  // EXPANDIR TODOS AS CONTAS DO TREE VIEW
  For x := 0 to ARVORE.Items.Count - 1 do ARVORE.Items.Item[x].Expand(True);
 except
 end;
  qrlancamento_conta.close;

  dateedit1.text := '01/'+copy(datetostr(date),4,7);
  dateedit2.date := date;

        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.sql.clear;
        frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by conta');
        frmmodulo.qrcontacorrente.Open;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by BANCO');
  frmmodulo.qrbanco.open;
  FRMMODULO.QRBANCO.INDEXFIELDNAMES := 'BANCO';



  pgravar.visible := false;
  pgravar.Align := alClient;

end;

procedure Tfrmcontacorrente.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.bincluirClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    if frmmodulo.qrcontacorrente.Locate('codigo',conta_selecionada,[loCaseInsensitive]) then
    begin
      qrlancamento_conta.insert;
      qrlancamento_conta.fieldbyname('codigo').asstring := frmprincipal2.codifica('000042');
      qrlancamento_conta.FieldByName('tipo').asstring := 'C';
      frmcontacorrente_lancamento := tfrmcontacorrente_lancamento.create(self);
      frmcontacorrente_lancamento.showmodal;

      bfiltrarclick(frmcontacorrente);
    end
    else
    begin
      Showmessage('O sistema n�o consegui encontrar esta conta!');
    end;
  end
  else
  begin
    showmessage('Nenhuma conta foi selecionada!');
  end;
end;

procedure Tfrmcontacorrente.balterarClick(Sender: TObject);
begin
IF QRLANCAMENTO_CONTA.FieldByName('CODIGO').ASSTRING <> '' THEN
BEGIN
  qrlancamento_conta.edit;
  IF qrlancamento_conta.FieldByName('tipo').asstring = 'D' THEN
     QRLANCAMENTO_CONTA.FIELDBYNAME('VALOR').ASFLOAT :=
     QRLANCAMENTO_CONTA.FIELDBYNAME('VALOR').ASFLOAT * (-1);
  frmcontacorrente_lancamento := tfrmcontacorrente_lancamento.create(self);
  frmcontacorrente_lancamento.showmodal;

  bfiltrarclick(frmcontacorrente);
END
ELSE
BEGIN
  SHOWMESSAGE('Nenhum registro foi selecionado!');
END;
end;

procedure Tfrmcontacorrente.bexcluirClick(Sender: TObject);
begin
if conta_selecionada <> '' then
begin

  if frmprincipal2.autentica('Excluir Lancto. Conta',4) then
  begin
    QRLANCAMENTO_CONTA.Delete;
    frmmodulo.Conexao.commit;
    bfiltrarCLICK(FRMCONTACORRENTE);
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end
else
begin
  showmessage('N�o h� nenhuma conta selecionada!');
end;
end;

procedure Tfrmcontacorrente.blocalizarClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    qrlancamento_conta.IndexFieldNames := 'documento';
    PLOCALIZAR.Align := alClient;
    plocalizar.visible := true;
    loc.setfocus;
  end
  else
  begin
    showmessage('N�o h� nenhuma conta selecionada!');
  end;

 //

end;

procedure Tfrmcontacorrente.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontacorrente.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin


  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit) then
  begin

      frmmodulo.qrcfop.post;
  end;

  frmmodulo.Conexao.Commit;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmcontacorrente.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit) then
      frmmodulo.qrcfop.cancel;


  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmcontacorrente.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcontacorrente.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcfop.first;
end;

procedure Tfrmcontacorrente.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcfop.last;
end;

procedure Tfrmcontacorrente.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcfop.prior;
end;

procedure Tfrmcontacorrente.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcfop.next;
end;

procedure Tfrmcontacorrente.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrcfop.state = dsinsert then
end;

procedure Tfrmcontacorrente.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontacorrente.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmcontacorrente.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontacorrente.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontacorrente.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcontacorrente.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontacorrente.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrlancamento_conta.FieldByName('valor').asfloat < 0 then
  begin
    wwDbgrid1.canvas.font.color:= clred;
  end;


  wwDbgrid1.DefaultDrawDataCell(Rect, field, State);

end;

procedure Tfrmcontacorrente.BitBtn7Click(Sender: TObject);
begin
 if conta_selecionada <> '' then
 begin
        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.sql.clear;
        frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by conta');
        frmmodulo.qrcontacorrente.Open;



  if frmmodulo.qrcontacorrente.Locate('codigo',conta_selecionada,[loCaseInsensitive]) then
  begin
    frmmodulo.qrCONTAcorrente.edit;
    frmcontacorrente_ficha := tfrmcontacorrente_ficha.create(self);
    frmcontacorrente_ficha.showmodal;
  end
  else
  begin
    showmessage('N�o foi poss�vel localizar a conta!');
  end;
 end
 else
 begin
   showmessage('N�o h� nenhuma conta selecionada!');
 end;

end;

procedure Tfrmcontacorrente.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrCONTAcorrente.insert;
  frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring := frmprincipal2.codifica('000041');
  frmcontacorrente_ficha := tfrmcontacorrente_ficha.create(self);
  frmcontacorrente_ficha.showmodal;


  frmcontacorrente.OnShow(frmcontacorrente);
end;

procedure Tfrmcontacorrente.BitBtn8Click(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    if frmprincipal2.autentica('Excluir Conta Corrente',4) then
    begin
      if application.messagebox('Tem certeza que deseja excluir esta conta e todos os seus lan�amentos?','Aten��o',mb_yesno+MB_ICONWARNING) = idyes then
      begin
        qrlancamento_conta.Close;
        qrlancamento_conta.SQL.clear;
        qrlancamento_conta.sql.add('delete from c000042 where codconta = '''+conta_selecionada+'''');
        qrlancamento_conta.ExecSQL;

        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.SQL.clear;
        frmmodulo.qrcontacorrente.sql.add('delete from c000041 where codigo = '''+conta_selecionada+'''');
        frmmodulo.qrcontacorrente.ExecSQL;
        frmmodulo.Conexao.commit;

        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.sql.clear;
        frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by conta');
        frmmodulo.qrcontacorrente.Open;



        onshow(frmcontacorrente);
      end;
    end
    else
    begin
      Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    ShowMessage('Nenhuma conta foi selecionada!');
  end;
end;



procedure Tfrmcontacorrente.bfiltrarClick(Sender: TObject);
begin
  IF CONTA_SELECIONADA <> '' THEN
  BEGIN
    if qrlancamento_conta.State = dsOpening then
    qrlancamento_conta.Refresh;

    frmmodulo.qrcontacorrente.close;
    frmmodulo.qrcontacorrente.sql.clear;
    frmmodulo.qrcontacorrente.SQL.add('select * from c000041 where CODIGO = '''+CONTA_SELECIONADA+'''');
    frmmodulo.qrcontacorrente.Open;


    qrsaldo_anterior.Close;
    qrsaldo_anterior.sql.clear;
    qrsaldo_anterior.sql.add('select sum(valor) saldo_anterior from c000042 where codcontacorrente = '''+conta_selecionada+''' and data < :datai');
    qrsaldo_anterior.Params.ParamByName('datai').value := dateedit1.Date;
    qrsaldo_anterior.Open;
    rsaldo_anterior.Value := qrsaldo_anterior.fieldbyname('saldo_anterior').asfloat;

    qrsaldo_anterior.Close;
    qrsaldo_anterior.sql.clear;
    qrsaldo_anterior.sql.add('select sum(valor) saldo_atual from c000042 where codcontacorrente = '''+conta_selecionada+''' and data >= :datai and data <= :dataf');
    qrsaldo_anterior.Params.ParamByName('datai').value := dateedit1.Date;
    qrsaldo_anterior.Params.ParamByName('dataf').value := dateedit2.Date;
    qrsaldo_anterior.Open;
    rsaldo.Value := qrsaldo_anterior.fieldbyname('saldo_atual').asfloat + rsaldo_anterior.value;
    qrsaldo_anterior.Close;

    qrlancamento_conta.Close;
    qrlancamento_conta.sql.clear;
    qrlancamento_conta.sql.add('select * from c000042 where codcontacorrente = '''+conta_selecionada+''' and data >= :datai and data <= :dataf order by data, codigo');
    qrlancamento_conta.Params.ParamByName('datai').value := dateedit1.Date;
    qrlancamento_conta.Params.ParamByName('dataf').value := dateedit2.Date;
    qrlancamento_conta.Open;

    if rsaldo_anterior.Value < 0 then rsaldo_anterior.Font.color := clred else rsaldo_anterior.Font.Color := clblue;
    if rsaldo.Value < 0 then rsaldo.Font.color := clred else rsaldo.Font.Color := clblue;
  END
  ELSE
  BEGIN
    SHOWMESSAGE('N�o h� nenhuma conta selecionada!');
  END;
end;

procedure Tfrmcontacorrente.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DateEdit2Enter(Sender: TObject);
begin
 tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DateEdit2Exit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
end;

procedure Tfrmcontacorrente.arvoreKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
   arvoreClick(FRMCONTACORRENTE);
  END;
end;

procedure Tfrmcontacorrente.arvoreClick(Sender: TObject);
 var l1, l2 : integer;
  c : string;
begin
TRY
  c:= arvore.Selections[0].Text;
  if  copy(c,1,3) = 'C/C' then
  begin

    l1 := pos('[',c);
    l2 := pos(']',c);

    if l1 > 0 then
    begin
      conta_selecionada := copy(c,l1+1,l2-l1-1);
    end;

    bfiltrarClick(frmcontacorrente);

  end
  ELSE
  BEGIN
    QRLANCAMENTO_CONTA.CLOSE;
    conta_selecionada := '';
  END;
EXCEPT
END;
end;

procedure Tfrmcontacorrente.arvoreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key= vk_up) or (key=vk_down) then panel2.visible := true;
end;

procedure Tfrmcontacorrente.wwDBGrid1DblClick(Sender: TObject);
begin
  balterarClick(frmcontacorrente);
end;

procedure Tfrmcontacorrente.BitBtn5Click(Sender: TObject);
begin
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.Edit;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'EXTRATO DE CONTA CORRENTE';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'BANCO: '+FRMMODULO.QRCONTACORRENTE.FIELDBYNAME('BANCO').ASSTRING+' AG�NCIA: '+FRMMODULO.QRCONTACORRENTE.FIELDBYNAME('AGENCIA').ASSTRING;
    frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring :='CONTA: '+FRMMODULO.QRCONTACORRENTE.FIELDBYNAME('CONTA').ASSTRING+'  -  TITULAR: '+FRMMODULO.QRCONTACORRENTE.FIELDBYNAME('TITULAR').ASSTRING;
    frmmodulo.qrrelatorio.fieldbyname('linha5').AsString := 'PER�ODO: '+dateedit1.Text+' A '+DATEEDIT2.TEXT;
    FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR1').ASFLOAT := RSALDO_ANTERIOR.VALUE;
    FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR2').ASFLOAT := RSALDO.VALUE;

    frmmodulo.qrrelatorio.post;

    FXcontacorrente.LoadFromFile('\DATASAC\server\rel\f000152.fr3');
    FXCONTACORRENTE.ShowReport;
end;

procedure Tfrmcontacorrente.locExit(Sender: TObject);
begin
  tedit(SENDER).COLOR := CLWINDOW;
  plocalizar.visible := false;
end;

procedure Tfrmcontacorrente.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmcontacorrente.locKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN WWDBGRID1.SETFOCUS;
end;

procedure Tfrmcontacorrente.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN balterarClick(FRMCONTACORRENTE);
end;

procedure Tfrmcontacorrente.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dateedit2.setfocus;
end;

procedure Tfrmcontacorrente.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

procedure Tfrmcontacorrente.locChange(Sender: TObject);
begin
  qrlancamento_conta.Locate('documento',loc.Text,[loPartialKey]);
end;

end.





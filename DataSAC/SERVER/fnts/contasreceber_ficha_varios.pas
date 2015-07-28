unit contasreceber_ficha_varios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxtooledit, rxcurredit, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, wwdbedit, Wwdotdot, Wwdbcomb,
  AdvGlowButton, wwdblook;

type
  Tfrmcontasreceber_ficha_varios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    ecliente: TEdit;
    bloccliente: TBitBtn;
    enomecliente: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    RVALOR: TRxCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrgrade: TZQuery;
    dsgrade: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    qrgradeVENCIMENTO: TDateTimeField;
    qrgradeDOCUMENTO: TStringField;
    qrgradeHISTORICO: TStringField;
    qrgradeVALOR: TFloatField;
    qrgradeC: TStringField;
    qrgradeE: TStringField;
    qrgradeESPECIE: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label8: TLabel;
    RTOTAL: TRxCalcEdit;
    Bevel3: TBevel;
    COMBOTIPO: TwwDBLookupCombo;
    QRCLIENTE: TZQuery;
    qrcontasreceber: TZQuery;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure qrgradeAfterInsert(DataSet: TDataSet);
    procedure qrgradeAfterEdit(DataSet: TDataSet);
    procedure qrgradeAfterPost(DataSet: TDataSet);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_ficha_varios: Tfrmcontasreceber_ficha_varios;
  VALOR_A : REAL;

implementation

uses modulo, principal,
  xloc_cliente;

{$R *.dfm}

procedure Tfrmcontasreceber_ficha_varios.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.Date := date
end;

procedure Tfrmcontasreceber_ficha_varios.DateEdit1Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
end;

procedure Tfrmcontasreceber_ficha_varios.blocclienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  IF RESULTADO_PESQUISA1 <> '' THEN
  BEGIN
     QRCLIENTE.CLOSE;
     QRCLIENTE.SQL.CLEAR;
     QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+RESULTADO_PESQUISA1+'''');
     QRCLIENTE.Open;
    ecliente.text := RESULTADO_PESQUISA1;
    enomecliente.Text := RESULTADO_PESQUISA2;
    edit5.setfocus;
  END;
end;

procedure Tfrmcontasreceber_ficha_varios.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_ficha_varios.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text <> '000000' then
  begin
     QRCLIENTE.CLOSE;
     QRCLIENTE.SQL.CLEAR;
     QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+ecliente.text+'''');
     QRCLIENTE.Open;

     if QRCLIENTE.RECNO = 0 then
        blocclienteclick(Frmcontasreceber_ficha_varios)
     else
     begin
       ecliente.text := qrcliente.fieldbyname('codigo').asstring;
       enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
       edit5.SetFocus;
     end;
  end
  else
  begin
    bloccliente.setfocus;
  end;

end;

procedure Tfrmcontasreceber_ficha_varios.Edit5Exit(Sender: TObject);
begin
  tedit(sender).color := clWINDOW;
  edit5.text := frmprincipal.zerarcodigo(edit5.text,6);
end;

procedure Tfrmcontasreceber_ficha_varios.Edit5Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_ficha_varios.BitBtn2Click(Sender: TObject);
var qtde, i : integer;
begin
  i := 1;
  try
      qrgrade.close;
      qrgrade.sql.clear;
      qrgrade.sql.add('delete from c000047');
      qrgrade.execsql;
      qrgrade.SQL.clear;
      qrgrade.sql.add('select * from c000047');
      qrgrade.open;
      qtde := strtoint(edit7.Text);
      while qtde <> 0 do
      begin
        qrgrade.Insert;
        qrgrade.FieldByName('vencimento').asdatetime := incmonth(dateedit1.date,i);
        qrgrade.fieldbyname('documento').asstring := edit5.Text+'/'+inttostr(i);
        if rvalor.value <> 0 then  qrgrade.FieldByName('valor').asfloat := RVALOR.VALUE / strtoint(edit7.text);
        qrgrade.post;
        I := I + 1;
        qtde := qtde - 1;
      end;
      QRGRADE.Refresh;
      RTOTAL.VALUE := RVALOR.VALUE;
      WWDBGRID1.SetFocus;
  except
    showmessage('Houve erro ao tentar gerar as prestações! Verifique a quantidade informada ou o valor da nota fiscal!');
  end;
end;

procedure Tfrmcontasreceber_ficha_varios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontasreceber_ficha_varios.FormShow(Sender: TObject);
begin
  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';


  qrgrade.close;
  qrgrade.sql.clear;
  qrgrade.sql.add('delete from c000047');
  qrgrade.execsql;
  qrgrade.SQL.clear;
  qrgrade.sql.add('select * from c000047');
  qrgrade.open;
end;

procedure Tfrmcontasreceber_ficha_varios.bgravarClick(Sender: TObject);
var
  valor_c : real;
  texto : pansichar;
  Data: TDateTime;
  dia, mes, ano: Word;
  dias : integer;
  vlimite : double;

begin
  if (qrgrade.State = dsedit) then
      qrgrade.post
  else
  begin
    if qrgrade.State = dsinsert then
    begin
      if qrgrade.FieldByName('valor').asfloat <> 0 then
        qrgrade.Post;
    end;
  end;



  if rvalor.value <> 0 then
     valor_c := rvalor.value else
     valor_c := rtotal.value;

  VALOR_C := RTOTAL.VALUE - VALOR_C;




  if (VALOR_C > 0.05) OR (VALOR_C < -0.05) THEN
  begin
    application.MessageBox('O valor total das prestação não confere com o valor da Nota Fiscal! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin


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




       qrcontasreceber.close;
     qrcontasreceber.sql.clear;
     qrcontasreceber.sql.add('select * from c000049 where codigo = ''nenhum''');
     qrcontasreceber.open;

  
    qrgrade.Refresh;
    qrgrade.first;
    while not qrgrade.Eof do
    begin






    
      qrcontasreceber.insert;
      qrcontasreceber.FieldByName('codigo').asstring         := frmprincipal.codifica('000049')+'/INC';
      qrcontasreceber.fieldbyname('data_emissao').asdatetime := dateedit1.date;
      QRCONTASRECEBER.FIELDBYNAME('DATA_VENCIMENTO').ASDATETIME:= QRGRADE.FIELDBYNAME('VENCIMENTO').ASDATETIME;
      qrcontasreceber.fieldbyname('codcliente').asstring     := ecliente.text;
      qrcontasreceber.fieldbyname('codregiao').asstring      := qrcliente.fieldbyname('codregiao').asstring;
      qrcontasreceber.fieldbyname('filtro').aSINTEGER        := 0;
      qrcontasreceber.fieldbyname('situacao').aSINTEGER      := 1;
      qrcontasreceber.fieldbyname('codvenda').asstring       := edit5.text;
      qrcontasreceber.fieldbyname('tipo').asstring           := combotipo.text;
      qrcontasreceber.Fieldbyname('valor_original').asfloat  := qrgrade.fieldbyname('valor').asfloat;
      qrcontasreceber.Fieldbyname('valor_atual').asfloat     := qrgrade.fieldbyname('valor').asfloat;
      qrcontasreceber.Fieldbyname('documento').asstring      := qrgrade.fieldbyname('documento').asstring;
      qrcontasreceber.post;
      qrgrade.next;
    end;
    FRMMODULO.Conexao.Commit;
    CLOSE;
  end;


end;

procedure Tfrmcontasreceber_ficha_varios.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontasreceber_ficha_varios.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontasreceber_ficha_varios);
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterInsert(DataSet: TDataSet);
begin
  VALOR_A := 0;
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterEdit(DataSet: TDataSet);
begin
  VALOR_A := QRGRADE.FIELDBYNAME('VALOR').ASFLOAT;
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterPost(DataSet: TDataSet);
begin
  RTOTAL.VALUE :=
  RTOTAL.VALUE +
  QRGRADE.FIELDBYNAME('VALOR').ASFLOAT -
  VALOR_A;
end;

procedure Tfrmcontasreceber_ficha_varios.COMBOTIPOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.

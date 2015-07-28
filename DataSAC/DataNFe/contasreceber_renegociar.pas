unit contasreceber_renegociar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, TFlatPanelUnit, Mask, ToolEdit,
  CurrEdit, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, wwdblook, AdvGlowButton, Menus;

type
  Tfrmcontasreceber_renegociar = class(TForm)
    FlatPanel1: TFlatPanel;
    Label4: TLabel;
    rdesconto: TRxCalcEdit;
    Label5: TLabel;
    rliquido: TRxCalcEdit;
    Label6: TLabel;
    rprestacao: TRxCalcEdit;
    Label7: TLabel;
    rintervalo: TRxCalcEdit;
    Label8: TLabel;
    DateEdit1: TDateEdit;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    combotipo: TwwDBLookupCombo;
    dsvenda_contasreceber: TDataSource;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TRxCalcEdit;
    rjuros: TRxCalcEdit;
    ratualizado: TRxCalcEdit;
    Label9: TLabel;
    racrescimo: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    wwDBGrid1: TwwDBGrid;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrvenda_contasreceberTERMINAL: TStringField;
    query: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rintervaloKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_renegociar: Tfrmcontasreceber_renegociar;

implementation

uses modulo, principal, contasreceber;

{$R *.dfm}

procedure Tfrmcontasreceber_renegociar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_renegociar.FormShow(Sender: TObject);
begin
    qrvenda_contasreceber.close;
    qrvenda_contasreceber.sql.clear;
    qrvenda_contasreceber.SQL.Add('delete from cl00002  where terminal = '''+numero_terminal+'''');
    qrvenda_contasreceber.ExecSQL;

    qrvenda_contasreceber.close;
    qrvenda_contasreceber.sql.clear;
    qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+'''');
    qrvenda_contasreceber.open;


  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';

end;

procedure Tfrmcontasreceber_renegociar.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_renegociar.rdescontoExit(Sender: TObject);
begin
    tedit(sender).color := clwindow;

    rliquido.Value := ratualizado.Value + racrescimo.Value - rdesconto.Value;
end;

procedure Tfrmcontasreceber_renegociar.rdescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_renegociar.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.date := date;
end;

procedure Tfrmcontasreceber_renegociar.DateEdit1Exit(Sender: TObject);
begin
  tedit(SENDER).COLOR := clwindow;
end;

procedure Tfrmcontasreceber_renegociar.BitBtn1Click(Sender: TObject);
var valor : real;
prestacao,i, dias : integer;
begin
  if rliquido.value = 0 then
  begin
    showmessage('O valor líquido está zerado!');
    exit;
  end;
  if dateedit1.text = '  /  /    ' then
  begin
    showmessage('Data de emissão não informada!');
    dateedit1.setfocus;
    exit;
 end;
 dias := trunc(rintervalo.Value);
 valor := rliquido.Value / rprestacao.Value;
 i := 0;

       prestacao := 1;

        qrvenda_contasreceber.close;
        qrvenda_contasreceber.sql.clear;
        qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
        qrvenda_contasreceber.ExecSQL;
        qrvenda_contasreceber.sql.clear;
        qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+''' order by prestacao');
        qrvenda_contasreceber.open;



 while i <> rprestacao.Value do
 begin

          qrvenda_contasreceber.Insert;
          qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrvenda_contasreceber.FieldByName('vencimento').asdatetime := dateedit1.Date + dias;
          qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          qrvenda_contasreceber.FieldByName('documento').asstring := 'RENEGO/'+frmprincipal.zerarcodigo(INTTOSTR(PRESTACAO),2);
          qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
          qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          dias := dias + trunc(rintervalo.value);
          i := i + 1;
 end;
         qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;






end;

procedure Tfrmcontasreceber_renegociar.BCANCELARClick(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmcontasreceber_renegociar.BGRAVARClick(Sender: TObject);
begin
 try
   numero_venda := frmprincipal.codifica('000048');

   frmcontasreceber.qrcr.First;
   while not frmcontasreceber.QRCR.eof do
   begin
     frmcontasreceber.qrproduto_mov.close;
     frmcontasreceber.qrproduto_mov.SQL.clear;
     frmcontasreceber.qrproduto_mov.sql.add('update c000032 set codnota = '''+numero_venda+''' where codnota = '''+frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring+''' and movimento in (2,7) and codcliente = '''+frmcontasreceber.qrcr.fieldbyname('codcliente').asstring+'''');
     frmcontasreceber.qrproduto_mov.execsql;

     if frmcontasreceber.qrcr.FieldByName('filtro').asinteger = 1 then
     begin
       frmcontasreceber.qrcontasreceber.Close;
       frmcontasreceber.qrcontasreceber.sql.clear;
       frmcontasreceber.qrcontasreceber.sql.Add('delete from c000049 where codigo = '''+frmcontasreceber.qrcr.fieldbyname('codigo').asstring+'''');
       frmcontasreceber.qrcontasreceber.ExecSQL;
     end;
     frmcontasreceber.qrcr.next;

   end;




       frmcontasreceber.qrcontasreceber.Close;
       frmcontasreceber.qrcontasreceber.sql.clear;
       frmcontasreceber.qrcontasreceber.sql.Add('select * from c000049 where codigo = ''nenhum''');
       frmcontasreceber.qrcontasreceber.open;





    qrvenda_contasreceber.First;
    while not qrvenda_contasreceber.eof do
    begin
      frmcontasreceber.qrcontasreceber.insert;
      frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring          := numero_venda+'/'+frmprincipal.zerarcodigo(qrvenda_contasreceber.fieldbyname('prestacao').asstring,2);
      frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring        := numero_venda;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcliente').asstring      := FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.fieldbyname('codvendedor').asstring     := codigo_vendedor;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').asstring    := DATEEDIT1.TEXT;
      frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').asstring := qrvenda_contasreceber.fieldbyname('vencimento').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_original').asfloat   := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat      := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring       := qrvenda_contasreceber.fieldbyname('documento').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('tipo').asstring            := QRVENDA_CONTASRECEBER.FIELDBYNAME('TIPO').ASSTRING;
      frmcontasreceber.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmcontasreceber.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmcontasreceber.qrcontasreceber.post;
      qrvenda_contasreceber.next;
    end;













  frmmodulo.Conexao.Commit;
  FRMCONTASRECEBER.bfiltrarClick(FRMCONTASRECEBER);
 except

 end;


  close;

end;

procedure Tfrmcontasreceber_renegociar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmcontasreceber_renegociar.rintervaloKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BITBTN1.SETFOCUS;
end;

procedure Tfrmcontasreceber_renegociar.Fechar1Click(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmcontasreceber_renegociar.qrvenda_contasreceberBeforePost(
  DataSet: TDataSet);
begin
   qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

end.

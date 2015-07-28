unit venda_contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  ToolEdit, CurrEdit, Grids, Wwdbigrd, Wwdbgrid, DB, Buttons;

type
  Tfrmvenda_contasreceber = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    Label1: TLabel;
    combocondpgto: TwwDBLookupCombo;
    Label2: TLabel;
    rqtde: TRxCalcEdit;
    wwDBGrid1: TwwDBGrid;
    dsvenda_contasreceber: TDataSource;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    rsoma: TRxCalcEdit;
    Label4: TLabel;
    rdiferenca: TRxCalcEdit;
    ViewSplit2: TViewSplit;
    BGRAVAR: TBitBtn;
    BCANCELAR: TBitBtn;
    combotipo: TwwDBLookupCombo;
    TOPO: THeaderView;
    ViewSplit3: TViewSplit;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_contasreceber: Tfrmvenda_contasreceber;

implementation

uses modulo, venda_fechamento, principal;

{$R *.dfm}

procedure Tfrmvenda_contasreceber.combocondpgtoEnter(Sender: TObject);
begin
  lancando_contasreceber := false;

  tedit(sender).color := clyellow;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';

 

end;

procedure Tfrmvenda_contasreceber.combocondpgtoExit(Sender: TObject);
var prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if combocondpgto.text <> '' then
  begin
    if frmmodulo.qrcondpgto.locate('condpgto',combocondpgto.text,[loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.sql.clear;
      frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = '''+frmmodulo.qrcondpgto.fieldbyname('codigo').asstring+''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          frmmodulo.qrvenda_contasreceber.Insert;
          frmmodulo.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := strtodate(data_caixa)+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := frmvenda_fechamento.rcrediario.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);
          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          frmmodulo.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring := numero_cupom +'/'+inttostr(prestacao);
          frmmodulo.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CREDIÁRIO';
          frmmodulo.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        frmmodulo.qrvenda_contasreceber.Refresh;
        rsoma.value := frmvenda_fechamento.rCREDIARIO.Value;
        rdiferenca.Value := 0;

        wwdbgrid1.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
        combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!','Aviso',mb_ok+MB_ICONERROR);
      combocondpgto.setfocus;
    end;
  end
  else
  begin
    rqtde.setfocus;
  end;


end;

procedure Tfrmvenda_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_contasreceber.rqtdeEnter(Sender: TObject);
begin
  lancando_contasreceber := false;

  IF RQTDE.VALUE = 0 THEN RQTDE.VALUE := 1;
  tedit(sender).color := clyellow;
end;

procedure Tfrmvenda_contasreceber.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin
        prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := frmvenda_fechamento.rCREDIARIO.value / qtde;

        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;
        while QTDE <> 0 do
        begin
          frmmodulo.qrvenda_contasreceber.Insert;
          frmmodulo.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(data_caixa),prestacao);
          frmmodulo.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring := numero_cupom +'/'+inttostr(prestacao);
          frmmodulo.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CREDIÁRIO';
          frmmodulo.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;
        rsoma.value := frmvenda_fechamento.rCREDIARIO.Value;
        rdiferenca.Value := 0;

        frmmodulo.qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;
  end;

end;

procedure Tfrmvenda_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmvenda_contasreceber.BGRAVARClick(Sender: TObject);
begin
  if frmmodulo.qrvenda_contasreceber.State = dsedit then
  begin
    frmmodulo.qrvenda_contasreceber.post;
    lancando_contasreceber := false;
  end;

  if rdiferenca.Value <> 0 then
  begin
    application.MessageBox('Os valores informados nas parcelas não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end;



  CONTINUAR := TRUE;
  CLOSE;
end;

procedure Tfrmvenda_contasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  lancando_contasreceber := true;
end;

procedure Tfrmvenda_contasreceber.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmvenda_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmvenda_contasreceber.FormShow(Sender: TObject);
begin
        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;



  TOPO.Caption := 'CLIENTE: '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING +' - '+
                  FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING ;

  CONTINUAR := FALSE;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';
end;

end.

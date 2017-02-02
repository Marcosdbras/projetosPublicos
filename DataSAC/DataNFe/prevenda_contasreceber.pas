unit prevenda_contasreceber;

interface
                                                                                                                                                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  ToolEdit, CurrEdit, Grids, Wwdbigrd, Wwdbgrid, DB, Buttons,
  AdvGlowButton, RzEdit, RzSpnEdt;

type
  Tfrmprevenda_contasreceber = class(TForm)
    dsvenda_contasreceber: TDataSource;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRzSpinEdit;
    Bevel2: TBevel;
    wwDBGrid1: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    Label4: TLabel;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    Bevel3: TBevel;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_contasreceber: Tfrmprevenda_contasreceber;

implementation

uses modulo, prevenda_fechamento, prevenda, prevenda_fechamento_loja;

{$R *.dfm}

procedure Tfrmprevenda_contasreceber.combocondpgtoEnter(Sender: TObject);
begin

  tedit(sender).Color := $00A0FAF8;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';

 

end;

procedure Tfrmprevenda_contasreceber.combocondpgtoExit(Sender: TObject);
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
        FRMPREVENDA.qrvenda_contasreceber.close;
        FRMPREVENDA.qrvenda_contasreceber.sql.clear;
        FRMPREVENDA.qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
        FRMPREVENDA.qrvenda_contasreceber.ExecSQL;
        FRMPREVENDA.qrvenda_contasreceber.sql.clear;
        FRMPREVENDA.qrvenda_contasreceber.SQL.Add('select * from cl00002 where terminal = '''+numero_terminal+''' order by prestacao');
        FRMPREVENDA.qrvenda_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          FRMPREVENDA.qrvenda_contasreceber.Insert;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := strtodate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING)+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          if prevenda_tipo = '1' then
            valor := frmprevenda_fechamento_loja.rCREDIARIO.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100)
          else
            valor := frmprevenda_fechamento.rCREDIARIO.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);

          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          FRMPREVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('documento').asstring := NUMERO_VENDAx +'/'+inttostr(prestacao);
          if prevenda_tipo = '2' then
          begin
            if frmprevenda_fechamento.rconvenio.Value > 0 then
              frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CONVENIO'
            else
              frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          end
          else
          begin
            frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          end;

          FRMPREVENDA.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        FRMPREVENDA.qrvenda_contasreceber.Refresh;
        if prevenda_tipo = '1' then
          rsoma.value := frmprevenda_fechamento_loja.rCREDIARIO.Value
        else
          rsoma.value := frmprevenda_fechamento.rCREDIARIO.Value;

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

procedure Tfrmprevenda_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_contasreceber.rqtdeEnter(Sender: TObject);
begin
  IF RQTDE.VALUE = 0 THEN RQTDE.VALUE := 1;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmprevenda_contasreceber.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin

        prestacao := 1;
        qtde := trunc(rqtde.value);

        if prevenda_tipo = '1' then
        begin
          if frmprevenda_fechamento_loja.rcrediario.Value > 0 then
            VALOR := frmprevenda_fechamento_loja.rCREDIARIO.value / qtde;
        end
        else
        begin
          if frmprevenda_fechamento.rcrediario.Value > 0 then
            VALOR := frmprevenda_fechamento.rCREDIARIO.value / qtde;
          if frmprevenda_fechamento.rconvenio.Value > 0 then
            VALOR := frmprevenda_fechamento.rconvenio.value / qtde;

        end;

        FRMPREVENDA.qrvenda_contasreceber.close;
        FRMPREVENDA.qrvenda_contasreceber.sql.clear;
        FRMPREVENDA.qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
        FRMPREVENDA.qrvenda_contasreceber.ExecSQL;
        FRMPREVENDA.qrvenda_contasreceber.sql.clear;
        FRMPREVENDA.qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+''' order by prestacao');
        FRMPREVENDA.qrvenda_contasreceber.open;
        while QTDE <> 0 do
        begin
          FRMPREVENDA.qrvenda_contasreceber.Insert;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING),prestacao);
          FRMPREVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('documento').asstring := NUMERO_VENDAx +'/'+inttostr(prestacao);

          if prevenda_tipo = '2' then
          begin
            if frmprevenda_fechamento.rconvenio.Value > 0 then
              frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CONVENIO'
            else
              frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          end
          else
          begin
            frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          end;

          FRMPREVENDA.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;

        if prevenda_tipo = '2' then
        begin
          if frmprevenda_fechamento.rcrediario.Value > 0 then
            rsoma.value := frmprevenda_fechamento.rCREDIARIO.Value;
          if frmprevenda_fechamento.rconvenio.Value > 0 then
            rsoma.value := frmprevenda_fechamento.rconvenio.Value;
        end
        else
        begin
          if frmprevenda_fechamento_loja.rcrediario.Value > 0 then
            rsoma.value := frmprevenda_fechamento_loja.rCREDIARIO.Value;

        end;

        rdiferenca.Value := 0;

        FRMPREVENDA.qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;
  end;

end;

procedure Tfrmprevenda_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmprevenda_contasreceber.BGRAVARClick(Sender: TObject);
begin
  if FRMPREVENDA.qrvenda_contasreceber.State = dsedit then
  begin
    FRMPREVENDA.qrvenda_contasreceber.post;
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

procedure Tfrmprevenda_contasreceber.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmprevenda_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmprevenda_contasreceber.FormShow(Sender: TObject);
begin

  CONTINUAR := FALSE;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';
end;

procedure Tfrmprevenda_contasreceber.rqtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then wwdbgrid1.setfocus;
end;

end.

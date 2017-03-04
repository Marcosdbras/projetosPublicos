unit pedido_contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  Grids, Wwdbigrd, Wwdbgrid, DB, Buttons, RzEdit, RzSpnEdt, AdvGlowButton,
  rxToolEdit, rxCurrEdit;

type
  Tfrmpedido_contasreceber = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsvenda_contasreceber: TDataSource;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    rsoma: TRxCalcEdit;
    Label4: TLabel;
    rdiferenca: TRxCalcEdit;
    combotipo: TwwDBLookupCombo;
    Bevel1: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRzSpinEdit;
    Bevel2: TBevel;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedido_contasreceber: Tfrmpedido_contasreceber;

implementation

uses modulo, pedido, pedido_fechar;

{$R *.dfm}

procedure Tfrmpedido_contasreceber.combocondpgtoEnter(Sender: TObject);
begin
  lancando_contasreceber := false;

  tedit(sender).color := clyellow;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';

 

end;

procedure Tfrmpedido_contasreceber.combocondpgtoExit(Sender: TObject);
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
        frmpedido.qrpedido_contasreceber.close;
        frmpedido.qrpedido_contasreceber.sql.clear;
        frmpedido.qrpedido_contasreceber.SQL.Add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+'''');
        frmpedido.qrpedido_contasreceber.ExecSQL;
        frmpedido.qrpedido_contasreceber.sql.clear;
        frmpedido.qrpedido_contasreceber.SQL.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+''' order by prestacao ');
        frmpedido.qrpedido_contasreceber.open;

        rqtde.IntValue := frmmodulo.qrcondpgto_parcela.RecordCount;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          frmpedido.qrpedido_contasreceber.Insert;
          frmpedido.qrpedido_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmpedido.qrpedido_contasreceber.FieldByName('vencimento').asdatetime := strtodate(frmpedido.dbdateedit1.text)+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          frmpedido.qrpedido_contasreceber.fieldbyname('codpedido').asstring := frmmodulo.qrpedido.fieldbyname('codigo').asstring;


          if frmpedido_fechar.rcrediario.Value > 0 then
            valor := frmpedido_fechar.rCREDIARIO.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);

          if frmpedido_fechar.rconvenio.Value > 0 then
            valor := frmpedido_fechar.rconvenio.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);

          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat := valor;
          frmpedido.qrpedido_contasreceber.FieldByName('documento').asstring := frmpedido.dbedit1.text +'/'+inttostr(prestacao);

          if frmpedido_fechar.rconvenio.Value > 0 then
            frmpedido.qrpedido_contasreceber.FieldByName('TIPO').asstring := 'CONVENIO'
          else
            frmpedido.qrpedido_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';

          frmpedido.qrpedido_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        frmpedido.qrpedido_contasreceber.open;


          if frmpedido_fechar.rcrediario.Value > 0 then
            rsoma.value := frmpedido_fechar.rCREDIARIO.Value;

          if frmpedido_fechar.rconvenio.Value > 0 then
            rsoma.value := frmpedido_fechar.rconvenio.Value;

        rdiferenca.Value := 0;

                nome_condicao := combocondpgto.text;

        frmpedido.qrpedido_contasreceber.REFRESH;

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

procedure Tfrmpedido_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido_contasreceber.rqtdeEnter(Sender: TObject);
begin
  IF RQTDE.VALUE = 0 THEN RQTDE.VALUE := 1;
  lancando_contasreceber := false;
  tedit(sender).color := clyellow;
end;

procedure Tfrmpedido_contasreceber.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin
        nome_condicao := rqtde.text+'x';

        prestacao := 1;
        qtde := trunc(rqtde.value);

        if frmpedido_fechar.rcrediario.Value > 0 then
          VALOR := frmpedido_fechar.rCREDIARIO.value / qtde;
        if frmpedido_fechar.rconvenio.Value > 0 then
          VALOR := frmpedido_fechar.rconvenio.value / qtde;

        frmpedido.qrpedido_contasreceber.close;
        frmpedido.qrpedido_contasreceber.sql.clear;
        frmpedido.qrpedido_contasreceber.SQL.Add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+'''');
        frmpedido.qrpedido_contasreceber.ExecSQL;
        frmpedido.qrpedido_contasreceber.sql.clear;
        frmpedido.qrpedido_contasreceber.SQL.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+''' order by prestacao ');
        frmpedido.qrpedido_contasreceber.open;

        frmmodulo.conexaolocal.commit;



        while QTDE <> 0 do
        begin
          frmpedido.qrpedido_contasreceber.Insert;
          frmpedido.qrpedido_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmpedido.qrpedido_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(frmpedido.dbdateedit1.text),prestacao);
          frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat := valor;
          frmpedido.qrpedido_contasreceber.FieldByName('documento').asstring := frmpedido.dbedit1.text +'/'+inttostr(prestacao);
          frmpedido.qrpedido_contasreceber.fieldbyname('codpedido').asstring := frmmodulo.qrpedido.fieldbyname('codigo').asstring;

          if frmpedido_fechar.rconvenio.Value > 0 then
            frmpedido.qrpedido_contasreceber.FieldByName('TIPO').asstring := 'CONVENIO'
          else
            frmpedido.qrpedido_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';

          frmpedido.qrpedido_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;


                frmpedido.qrpedido_contasreceber.REFRESH;

          if frmpedido_fechar.rcrediario.Value > 0 then
            rsoma.value := frmpedido_fechar.rCREDIARIO.Value;
          if frmpedido_fechar.rconvenio.Value > 0 then
            rsoma.value := frmpedido_fechar.rconvenio.Value;

        rdiferenca.Value := 0;
        wwdbgrid1.SetFocus;
  end;

end;

procedure Tfrmpedido_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmpedido_contasreceber.BGRAVARClick(Sender: TObject);
begin
  if frmpedido.qrpedido_contasreceber.State = dsedit then
  begin

    frmpedido.qrpedido_contasreceber.post;
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

procedure Tfrmpedido_contasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  lancando_contasreceber := true;
end;

procedure Tfrmpedido_contasreceber.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmpedido_contasreceber.FormShow(Sender: TObject);
begin
  CONTINUAR := FALSE;
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';
  combocondpgto.SetFocus;

end;



procedure Tfrmpedido_contasreceber.rqtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.

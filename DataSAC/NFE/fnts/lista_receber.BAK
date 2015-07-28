unit lista_receber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Menus, Buttons, Collection, ExtCtrls,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RpDefine, RpCon,
  RpConDS, Grids, DBGrids, FR_DSet, FR_DBSet, FR_Class, FR_E_TXT, FR_E_HTM,
  FR_E_CSV, FR_E_RTF, wwdblook;

type
  TFrmlista_receber = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    rresumo: TRadioButton;
    ragrupada: TRadioButton;
    rsimples: TRadioButton;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    GroupBox2: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    FlipView3: TFlipView;
    rreceber: TRadioButton;
    rtodas: TRadioButton;
    rrecebidas: TRadioButton;
    GroupBox3: TGroupBox;
    ecliente: TEdit;
    bloccliente: TBitBtn;
    enomecliente: TEdit;
    GroupBox1: TGroupBox;
    efunci: TEdit;
    blocfunci: TBitBtn;
    enomefunci: TEdit;
    GroupBox4: TGroupBox;
    ecaixa: TEdit;
    bloccaixa: TBitBtn;
    enomecaixa: TEdit;
    rvencimento: TRadioButton;
    rcompra: TRadioButton;
    rrecebimento: TRadioButton;
    rvcontasreceber: TRvDataSetConnection;
    qrcontasreceber: TZQuery;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasrecebercliente: TStringField;
    qrcliente: TZQuery;
    rvcontasreceber_cliente: TRvDataSetConnection;
    qrcontasreceber_pgto: TZQuery;
    qrcontasreceber_pgtoDATA: TDateTimeField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoCODCONTA: TStringField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TStringField;
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    rvcontasreceber_pgto: TRvDataSetConnection;
    ragrupada_pgto: TRadioButton;
    qrcliente2: TZQuery;
    qrcliente2NOME: TStringField;
    qrcliente2CODIGO: TStringField;
    qrcliente2ATUAL: TFloatField;
    rvcontasreceber_cliente2: TRvDataSetConnection;
    DataSource1: TDataSource;
    FlipView2: TFlipView;
    COMBOTIPO: TwwDBLookupCombo;
    frReport1: TfrReport;
    creport: TfrCompositeReport;
    frRTFExport1: TfrRTFExport;
    frCSVExport1: TfrCSVExport;
    frHTMExport1: TfrHTMExport;
    frTextExport1: TfrTextExport;
    qremitente: TZQuery;
    qrrelatorio: TZQuery;
    qrrelatorioLINHA1: TStringField;
    qrrelatorioLINHA2: TStringField;
    qrrelatorioLINHA3: TStringField;
    qrrelatorioLINHA4: TStringField;
    qrrelatorioLINHA5: TStringField;
    qrrelatorioLINHA6: TStringField;
    qrrelatorioLINHA7: TStringField;
    qrrelatorioLINHA8: TStringField;
    qrrelatorioLINHA9: TStringField;
    qrrelatorioLINHA10: TStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    qremitenteCODIGO: TStringField;
    qremitenteNOME: TStringField;
    qremitenteFANTASIA: TStringField;
    qremitenteENDERECO: TStringField;
    qremitenteBAIRRO: TStringField;
    qremitenteCIDADE: TStringField;
    qremitenteUF: TStringField;
    qremitenteCEP: TStringField;
    qremitenteTELEFONE: TStringField;
    qremitenteCNPJ: TStringField;
    qremitenteIE: TStringField;
    qremitenteEMAIL: TStringField;
    qremitenteHOMEPAGE: TStringField;
    qremitenteRESPONSAVEL: TStringField;
    qremitenteCELULAR: TStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TStringField;
    qremitenteNUMERO: TStringField;
    qremitenteCOMPLEMENTO: TStringField;
    qremitenteCONTRIBUINTE_IPI: TIntegerField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TIntegerField;
    frcliente: TfrDBDataSet;
    frcontasreceber: TfrDBDataSet;
    procedure blocclienteClick(Sender: TObject);
    procedure blocfunciClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure efunciExit(Sender: TObject);
    procedure bloccaixaClick(Sender: TObject);
    procedure ecaixaExit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure rvencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_receber: TFrmlista_receber;
    juro_taxa, juro_multa, total_original, total_juros : real;
      juro_carencia : integer;

implementation

uses modulo, loc_cliente, loc_funci, principal, loc_caixa;

{$R *.dfm}

procedure TFrmlista_receber.blocclienteClick(Sender: TObject);
begin
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.dscliente.DataSet := qrcliente;
  frmloc_cliente.showmodal;
  enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
  ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
  efunci.setfocus;


end;

procedure TFrmlista_receber.blocfunciClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  enomefunci.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
  efunci.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  ecaixa.setfocus;
end;

procedure TFrmlista_receber.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
        blocclienteclick(Frmlista_receber)
     else
     begin
       ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
       enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
       efunci.setfocus;
     end;
  end
  else
  begin
    ENOMECLIENTE.TEXT := '';
    bloccliente.setfocus;
  end;

end;

procedure TFrmlista_receber.efunciExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  efunci.text := frmprincipal.zerarcodigo(efunci.text,6);
  if efunci.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrfunci,efunci.text,'codigo') then
        blocfunciclick(Frmlista_receber)
     else
     begin
       efunci.Text := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
       enomefunci.Text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
       ecaixa.setfocus;
     end;
  end
  else
  begin
    ENOMEFUNCI.TEXT := '';
    blocfunci.setfocus;
  end;

end;

procedure TFrmlista_receber.bloccaixaClick(Sender: TObject);
begin
  frmloc_caixa := tfrmloc_caixa.create(self);
  frmloc_caixa.showmodal;
  enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
  ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
  DATEEDIT1.setfocus;
end;

procedure TFrmlista_receber.ecaixaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecaixa.text := frmprincipal.zerarcodigo(ecaixa.text,6);
  if ecaixa.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrcaixa_OPERADOR,ecaixa.text,'codigo') then
        bloccaixaclick(Frmlista_receber)
     else
     begin
       ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
       enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
       DATEEDIT1.setfocus;
     end;
  end
  else
  begin
    ENOMECAIXA.Text := '';
    bloccaixa.setfocus;
  end;
end;

procedure TFrmlista_receber.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmlista_receber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TFrmlista_receber.FormShow(Sender: TObject);
begin
  QRCLIENTE.CLOSE;
  QRCLIENTE.SQL.CLEAR;
  QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  QRCLIENTE.OPEN;
  QRCLIENTE.INDEXFIELDNAMES := 'NOME';

  FRMMODULO.QRFUNCI.CLOSE;
  FRMMODULO.QRFUNCI.SQL.CLEAR;
  FRMMODULO.QRFUNCI.SQL.ADD('SELECT * FROM C000008 ORDER BY NOME');
  FRMMODULO.QRFUNCI.OPEN;
  FRMMODULO.QRFUNCI.INDEXFIELDNAMES := 'NOME';

  FRMMODULO.QRCAIXA_OPERADOR.CLOSE;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.CLEAR;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.ADD('SELECT * FROM C000045 ORDER BY CODIGO');
  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.INDEXFIELDNAMES := 'CODIGO';

  FRMMODULO.QRformapgto.CLOSE;
  FRMMODULO.QRformapgto.SQL.CLEAR;
  FRMMODULO.QRformapgto.SQL.ADD('SELECT * FROM C000014 ORDER BY formapgto');
  FRMMODULO.QRformapgto.OPEN;
  FRMMODULO.QRformapgto.INDEXFIELDNAMES := 'formapgto';


  ECLIENTE.SETFOCUS;

end;

procedure TFrmlista_receber.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmlista_receber.rvencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN DATEEDIT1.SETFOCUS;
end;

procedure TFrmlista_receber.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BIMPRIMIR.SETFOCUS;
end;

procedure TFrmlista_receber.eclienteEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure TFrmlista_receber.bimprimirClick(Sender: TObject);
var forma, cliente, vendedor, caixa, periodo, tipo : string;
begin
   qrrelatorio.open;
   qrrelatorio.edit;
   if (ecliente.Text = '000000') or (ecliente.Text = '') then cliente  := '' else cliente := ' and codcliente = '''+ecliente.text+'''';
   if (efunci.Text = '000000') or (efunci.Text = '')   then vendedor := '' else vendedor := ' and codvendedor = '''+efunci.text+'''';
   if (ecaixa.Text = '000000') or (ecaixa.Text = '')   then caixa    := '' else caixa := ' and codcaixa = '''+ecaixa.text+'''';

   if (combotipo.Text) = '' then
   begin
     forma := '';
   end
   else
   begin
     forma := ' and upper(tipo) like ''%'+combotipo.Text+'%''';
   end;

   if rvencimento.Checked then
   begin
     periodo := ' data_vencimento >= :datai and data_vencimento <= :dataf ';
     qrrelatorio.FieldByName('linha5').AsString := 'Dt.Vencimento: '+dateedit1.text+' a '+dateedit2.text;
   end;
   if rcompra.Checked then
   begin
     periodo := ' data_emissao >= :datai and data_emissao <= :dataf ';
     qrrelatorio.FieldByName('linha5').AsString := 'Dt.Compra: '+dateedit1.text+' a '+dateedit2.text;
   end;
   if rrecebimento.Checked then
   begin
     periodo := ' data_pagamento >= :datai and data_pagamento <= :dataf ';
     qrrelatorio.FieldByName('linha5').AsString := 'Dt.Pagamento: '+dateedit1.text+' a '+dateedit2.text;
   end;

   if rtodas.Checked then
   BEGIN
     tipo := '';
     qrrelatorio.FieldByName('linha4').AsString := 'Todas as Contas';
   END;
   if rreceber.Checked then
   BEGIN
     tipo := ' and situacao = 1 ';
     qrrelatorio.FieldByName('linha4').AsString := 'Contas a Receber';
   END;
   if rrecebidas.Checked then
   BEGIN
     tipo := ' and situacao = 2 ';
     qrrelatorio.FieldByName('linha4').AsString := 'Contas Recebidas';
   END;


   qrcontasreceber.close;
   qrcontasreceber.SQL.clear;
   qrcontasreceber.sql.add('select * from c000049 where '+periodo+cliente+vendedor+caixa+forma+tipo+' order by data_vencimento');
   qrcontasreceber.Params.ParamByName('datai').asdatetime := dateedit1.date;
   qrcontasreceber.Params.ParamByName('dataf').asdatetime := dateedit2.date;
   qrcontasreceber.open;

   qrrelatorio.FieldByName('linha1').AsString := enomecliente.Text;
   qrrelatorio.FieldByName('linha2').AsString := enomefunci.Text;
   qrrelatorio.FieldByName('linha3').AsString := enomecaixa.text+' | Forma:'+combotipo.Text;








   if rsimples.Checked then
   begin
     qrrelatorio.post;
     frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
     frmmodulo.relatorio.ExecuteReport('RelContasReceber_Relacao');
   end;




   if (ragrupada.Checked) or (ragrupada_pgto.checked) or (rresumo.Checked) then
   begin
     if (ecliente.Text = '000000') or (ecliente.Text = '') then cliente  := '' else cliente := ' and contasreceber.codcliente = '''+ecliente.text+'''';
     if (efunci.Text = '000000') or (efunci.Text = '')   then vendedor := '' else vendedor := ' and contasreceber.codvendedor = '''+efunci.text+'''';
     if (ecaixa.Text = '000000') or (ecaixa.Text = '')   then caixa    := '' else caixa := ' and contasreceber.codcaixa = '''+ecaixa.text+'''';
     if rtodas.Checked then
     BEGIN
       tipo := '';
     END;
     if rreceber.Checked then
     BEGIN
       tipo := ' and contasreceber.situacao = 1 ';
     END;
     if rrecebidas.Checked then
     BEGIN
       tipo := ' and contasreceber.situacao = 2 ';
     END;
     if rvencimento.Checked then
     begin
       periodo := ' contasreceber.data_vencimento >= :datai and contasreceber.data_vencimento <= :dataf ';
     end;
     if rcompra.Checked then
     begin
       periodo := ' contasreceber.data_emissao >= :datai and contasreceber.data_emissao <= :dataf ';
     end;
     if rrecebimento.Checked then
     begin
       periodo := ' contasreceber.data_pagamento >= :datai and contasreceber.data_pagamento <= :dataf ';
     end;
     if (combotipo.Text) = '' then
     begin
       forma := '';
     end
     else
     begin
       forma := ' and upper(contasreceber.tipo) like ''%'+combotipo.Text+'%''';
     end;


     qrrelatorio.post;


     if rresumo.checked then
     begin
       qrcliente2.close;
       qrcliente2.sql.clear;
       qrcliente2.sql.add('select cliente.nome, cliente.codigo, sum(contasreceber.valor_ATUAL) ATUAL '+
                       'from c000007 cliente '+
                       'JOIN c000049 contasreceber on cliente.codigo = contasreceber.codcliente '+
                       ' and '+periodo+cliente+vendedor+caixa+forma+tipo+' group by cliente.nome, cliente.codigo order by cliente.nome');

       qrcliente2.Params.ParamByName('datai').asdatetime := dateedit1.date;
       qrcliente2.Params.ParamByName('dataf').asdatetime := dateedit2.Date;

       qrcliente2.Open;
       frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
       Frmmodulo.relatorio.ExecuteReport('RelContasreceber_resumo');
     end
     else
     begin
       qrcliente.close;
       qrcliente.sql.clear;
       qrcliente.sql.add('select cliente.nome, cliente.codigo, sum(contasreceber.valor_original) total from c000007 cliente '+
                       'JOIN c000049 contasreceber on cliente.codigo = contasreceber.codcliente '+
                       ' and '+periodo+cliente+vendedor+caixa+forma+tipo+' group by cliente.nome, cliente.codigo order by cliente.nome');
       qrcliente.Params.ParamByName('datai').asdatetime := dateedit1.date;
       qrcliente.Params.ParamByName('dataf').asdatetime := dateedit2.Date;
       qrcliente.Open;

       frreport1.LoadFromFile('\elpro\complus\rel\frep\cr_cliente.frf');
       frreport1.ShowReport;

     end;

   end;




end;

procedure TFrmlista_receber.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;


  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS - juro_carencia)));
          valor := valor + juro + multa;
        END;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;





end;

procedure TFrmlista_receber.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   IF ParName = 'MEMO1' then ParValue := 'KLEBERSON';
end;

procedure TFrmlista_receber.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TFrmlista_receber.DateEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

end.

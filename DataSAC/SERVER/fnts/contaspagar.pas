unit contaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, Collection, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask,
  rxtooledit, Buttons, wwdblook, wwDialog, wwidlg,
  Menus, DBCtrls,
  ImgList, Wwkeycb, rxcurredit, AdvGlowButton;

type
  Tfrmcontaspagar = class(TForm)
    qrcontaspagar: TZQuery;
    wwDBGrid1: TwwDBGrid;
    dscontaspagar: TDataSource;
    qrcontaspagarCODIGO: TStringField;
    qrcontaspagarDATA_EMISSAO: TDateTimeField;
    qrcontaspagarDATA_VENCIMENTO: TDateTimeField;
    qrcontaspagarDATA_PAGAMENTO: TDateTimeField;
    qrcontaspagarCODCONTA: TStringField;
    qrcontaspagarCODFORNECEDOR: TStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarDOCUMENTO: TStringField;
    qrcontaspagarNOTAFISCAL: TStringField;
    qrcontaspagarHISTORICO: TStringField;
    qrcontaspagarC: TStringField;
    qrcontaspagarE: TStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarESPECIE: TStringField;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Pagamento1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Extornar1: TMenuItem;
    Fechar1: TMenuItem;
    otalizar1: TMenuItem;
    Filtro1: TMenuItem;
    DBEdit1: TDBEdit;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TStringField;
    ImageList1: TImageList;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarconta: TStringField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TStringField;
    Qrsoma: TZQuery;
    FlatPanel7: TFlatPanel;
    pselecao: TFlatPanel;
    Label19: TLabel;
    rselecao: TRxCalcEdit;
    Panel1: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText8: TDBText;
    Bevel6: TBevel;
    Bevel7: TBevel;
    bnf: TAdvGlowButton;
    Bevel8: TBevel;
    Panel2: TPanel;
    Label7: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    combo_situacao: TComboBox;
    COMBOFORNECEDOR: TwwDBLookupCombo;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    bitbtn1: TAdvGlowButton;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    DBText6: TDBText;
    DBText7: TDBText;
    combo_loc: TComboBox;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bpagamento: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bdesliga_filtro: TBitBtn;
    Panel4: TPanel;
    Bevel12: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    rpagar: TRxCalcEdit;
    rpaga: TRxCalcEdit;
    btotal: TButton;
    Label2: TLabel;
    Image2: TImage;
    Bevel15: TBevel;
    Label15: TLabel;
    Image6: TImage;
    Image7: TImage;
    Bevel14: TBevel;
    Label22: TLabel;
    Bevel13: TBevel;
    Label23: TLabel;
    Image8: TImage;
    Bevel16: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure COMBOFORNECEDOREnter(Sender: TObject);
    procedure COMBOFORNECEDORExit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure rpagarKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure qrcontaspagarCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure bnfClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure bpagamentoClick(Sender: TObject);
    procedure Pagamento1Click(Sender: TObject);
    procedure Extornar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LOCEnter(Sender: TObject);
    procedure LOCExit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure rselecaoChange(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Filtro1Click(Sender: TObject);
    procedure combo_periodoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_locKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bdesliga_filtroClick(Sender: TObject);
    procedure btotalClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar: Tfrmcontaspagar;
  NAO_INCLUIR : BOOLEAN;

implementation

uses modulo, contaspagar_ficha, contaspagar_fichaalteracao,
  contaspagar_pgto, principal, lista_pagar2, contaspagar_data,
  contaspagar_nf;

{$R *.dfm}

procedure Tfrmcontaspagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmmodulo.Conexao.Rollback;

  ACTION := CAFREE;
end;

procedure Tfrmcontaspagar.FormShow(Sender: TObject);
begin



    frmmodulo.Conexao.Rollback;


  bdesliga_filtroClick(frmcontaspagar);

      rselecao.Value   := 0;
  pselecao.visible := false;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.Add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.indexfieldnames := 'nome';

  frmmodulo.qrplano.close;
  frmmodulo.qrplano.sql.clear;
  frmmodulo.qrplano.sql.Add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  frmmodulo.qrplano.indexfieldnames := 'conta';


  qrcontaspagar.close;
  QRCONTASPAGAR.SQL.CLEAR;
  QRCONTASPAGAR.SQL.ADD('SELECT * FROM C000046 WHERE SITUACAO = 1 ORDER BY DATA_VENCIMENTO');
  QRCONTASPAGAR.Open;

  btotalclick(frmcontaspagar);

  WWDBGRID1.SETFOCUS;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDOREnter(Sender: TObject);
begin
  combofornecedor.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORExit(Sender: TObject);
begin
  combofornecedor.Color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontaspagar.rpagarKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then combofornecedor.setfocus;
end;

procedure Tfrmcontaspagar.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.DBEdit1Change(Sender: TObject);
begin
  TRY
    IF QRCONTASPAGAR.FieldByName('SITUACAO').ASINTEGER = 2 THEN
    BEGIN

      balterar.enabled := false;
      bpagamento.enabled := false;
      bextornar.enabled := true;

    END
    ELSE
    BEGIN
      balterar.enabled := true;
      bpagamento.enabled := true;
      bextornar.enabled := false;
    END;

    if qrcontaspagar.FieldByName('codnota').asstring <> '' then
       bnf.visible := true else bnf.visible := false;
  EXCEPT
  END;
end;

procedure Tfrmcontaspagar.bincluirClick(Sender: TObject);
begin
  NAO_INCLUIR := FALSE;
  frmcontaspagar_ficha := tfrmcontaspagar_ficha.create(self);
  frmcontaspagar_ficha.showmodal;

  wwdbgrid1.setfocus;
end;

procedure Tfrmcontaspagar.balterarClick(Sender: TObject);
begin
  if qrcontaspagar.FieldByName('situacao').asinteger = 1 then
  begin
    frmcontaspagar_FICHAALTERACAO := tfrmcontaspagar_FICHAALTERACAO.create(self);
    WITH FRMCONTASPAGAR_FICHAALTERACAO DO
    BEGIN
      DATEEDIT1.DATE      := qrcontaspagar.fieldbyname('data_emissao').asdatetime;
      EFORNECEDOR.TEXT    := qrcontaspagar.fieldbyname('codfornecedor').asstring;
      enomefornecedor.Text:= QRCONTASPAGAR.FIELDBYNAME('FORNECEDOR').ASSTRING;
      enomeconta.text     := QRCONTASPAGAR.FIELDBYNAME('conta').ASSTRING;
      ECONTa.TEXT         := qrcontaspagar.fieldbyname('codconta').asstring;
      EDIT5.TEXT          := qrcontaspagar.fieldbyname('notafiscal').asstring;
      RVALOR.value        := qrcontaspagar.Fieldbyname('valor').asfloat;
      EDIT1.TEXT          := qrcontaspagar.Fieldbyname('documento').asstring;
      EDIT6.TEXT          := qrcontaspagar.Fieldbyname('historico').asstring;
      COMBOESPECIE.TEXT   := qrcontaspagar.Fieldbyname('especie').asstring;
      EDIT2.TEXT          := qrcontaspagar.Fieldbyname('C').asstring;
      EDIT3.TEXT          := qrcontaspagar.Fieldbyname('E').asstring;
      DATEEDIT2.date      := qrcontaspagar.Fieldbyname('data_vencimento').asdatetime;
    END;
    frmcontaspagar_FICHAALTERACAO.showmodal;
  end
  else
  begin
    application.messagebox('Esta conta já foi paga! Impossível fazer alteração!','Atenção',mb_ok+MB_ICONWARNING);
  end;

  wwdbgrid1.SetFocus;
end;

procedure Tfrmcontaspagar.wwDBGrid1Enter(Sender: TObject);
begin
  NAO_INCLUIR := TRUE;
end;

procedure Tfrmcontaspagar.wwDBGrid1Exit(Sender: TObject);
begin
  NAO_INCLUIR := FALSE;
end;

procedure Tfrmcontaspagar.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  IF NAO_INCLUIR THEN QRCONTASPAGAR.Cancel;

end;

procedure Tfrmcontaspagar.qrcontaspagarCalcFields(DataSet: TDataSet);
begin
  if qrcontaspagar.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontaspagar.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
end;


procedure Tfrmcontaspagar.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
var situacao, fornecedor, periodo : string;
begin
  if afieldname = 'situacao2' then
  begin
   // plegenda.Visible := true;
 //   BitBtn28.SetFocus;
  end;




   if (ansiuppercase(aFieldName) = ansiuppercase('data_vencimento'))or
      (ansiuppercase(aFieldName) = ansiuppercase('historico'))or
      (ansiuppercase(aFieldName) = ansiuppercase('notafiscal'))or
      (ansiuppercase(aFieldName) = ansiuppercase('documento'))or
      (ansiuppercase(aFieldName) = ansiuppercase('especie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('valor'))then
   begin
     if combo_situacao.itemindex = 0 then situacao := ' and situacao = 1 ';
     if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1 and data_vencimento >= :datax ';
     if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2 ';
     if combo_situacao.itemindex = 3 then situacao := '';

     if combofornecedor.Text = '' then fornecedor := '' else fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''';



     if combo_periodo.itemindex = 0 then periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
     if combo_periodo.itemindex = 1 then periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
     if combo_periodo.itemindex = 2 then periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';


     qrcontaspagar.close;
     qrcontaspagar.sql.clear;
     qrcontaspagar.sql.add('select * from c000046 where codigo is not null'+situacao+fornecedor+periodo+' order by '+afieldname);
     if combo_situacao.itemindex = 1 then   qrcontaspagar.Params.ParamByName('datax').asdatetime := date;
     qrcontaspagar.Params.ParamByName('datai').asdatetime := dateedit1.Date;
     qrcontaspagar.Params.ParamByName('dataf').asdatetime := dateedit2.Date;
     qrcontaspagar.Open;
   end;

   if ansiuppercase(afieldname) = 'FORNECEDOR' then
   begin
     if combo_situacao.itemindex = 0 then situacao := ' and situacao = 1 ';
     if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1 and data_vencimento >= :datax ';
     if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2 ';
     if combo_situacao.itemindex = 3 then situacao := '';

     if combofornecedor.Text = '' then fornecedor := '' else fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''';



     if combo_periodo.itemindex = 0 then periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
     if combo_periodo.itemindex = 1 then periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
     if combo_periodo.itemindex = 2 then periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';


     qrcontaspagar.close;
     qrcontaspagar.sql.clear;
     qrcontaspagar.sql.add('select * from c000046 where codigo is not null'+situacao+fornecedor+periodo+' order by codfornecedor');
     if combo_situacao.itemindex = 1 then   qrcontaspagar.Params.ParamByName('datax').asdatetime := date;
     qrcontaspagar.Params.ParamByName('datai').asdatetime := dateedit1.Date;
     qrcontaspagar.Params.ParamByName('dataf').asdatetime := dateedit2.Date;
     qrcontaspagar.Open;
   end;

end;

procedure Tfrmcontaspagar.BitBtn1Click(Sender: TObject);
var situacao, fornecedor, periodo : string;
begin
  bdesliga_filtroClick(frmcontaspagar);


  if combo_situacao.itemindex = 0 then situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 2 then situacao := '';

  if combofornecedor.Text = '' then fornecedor := '' else fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''';



  if combo_periodo.itemindex = 0 then periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';


  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.add('select * from c000046 where codigo is not null'+situacao+fornecedor+periodo+' order by data_vencimento');
  qrcontaspagar.Params.ParamByName('datai').asdatetime := dateedit1.Date;
  qrcontaspagar.Params.ParamByName('dataf').asdatetime := dateedit2.Date;
  qrcontaspagar.Open;
  btotalclick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.bnfClick(Sender: TObject);
begin
  frmcontaspagar_nf := tfrmcontaspagar_nf.create(self);
  with frmcontaspagar_nf do
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.add('select * from c000087 where codigo = '''+qrcontaspagar.fieldbyname('codnota').asstring+'''');
    qrnota.open;
    if qrnota.recordcount > 0 then
    begin
      qritem.close;
      qritem.sql.clear;
      qritem.sql.add('select * from c000088 where codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
      qritem.sql.add('ordeR by item');
      qritem.open;
      frmcontaspagar_nf.showmodal;
    end
    else
    begin
      application.messagebox('Nota Fiscal não encontrada! Favor verificar!','Atenção',mb_ok+mb_iconerror);
      frmcontaspagar_nf.destroy;
    end;


  end;

end;

procedure Tfrmcontaspagar.Alterar1Click(Sender: TObject);
begin
  if balterar.Enabled then balterar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.bextornarClick(Sender: TObject);
var texto :pansichar;
begin
  if frmprincipal.autentica('Extornar Conta',4) then
  begin
    if qrcontaspagar.FieldByName('situacao').asinteger = 1 then
    begin
      application.MessageBox('Esta conta não foi paga!','Aviso',mb_ok+MB_ICONWARNING);
    end
    else
    begin
      frmmodulo.qrcaixa_operador.open;
      frmmodulo.qrcaixa_operador.locate('codigo','000099',[loCaseInsensitive]);
      if qrcontaspagar.FieldByName('data_pagamento').asdatetime = frmmodulo.qrcaixa_operador.FieldByName('data').asdatetime then
      begin
        if qrcontaspagar.FieldByName('movimento').asinteger = 99 then
        begin
          application.messagebox('Esta conta foi paga com várias formas de pagamento ou em conjunto com outras contas. Isto impede que seja feito um lançamento automático do estorno no caixa. Favor entrar no caixa, e providenciar o acerto manualmente.','Aviso',mb_ok+MB_ICONINFORMATION);
          qrcontaspagar.edit;
          qrcontaspagar.FieldByName('situacao').asinteger := 1;
          qrcontaspagar.FieldByName('filtro').asinteger := 0;
          qrcontaspagar.fieldbyname('valorpago').asfloat := 0;
          qrcontaspagar.FieldByName('data_pagamento').asstring := '';
          qrcontaspagar.post;
          frmmodulo.Conexao.commit;
          qrcontaspagar.Refresh;
        end
        else
        begin
          if frmPrincipal.autentica_caixa('Acesso ao Caixa',0) then
          begin
            if (frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring = qrcontaspagar.fieldbyname('codcaixa').asstring) then
            begin
              if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then // caixa aberto
              begin
                frmmodulo.qrcaixa_mov.open;
                frmmodulo.qrcaixa_mov.Insert;
                frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
                frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0 ;
                if qrcontaspagar.FieldByName('movimento').asinteger = 25 then // pagamento com caixa
                begin
                  frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := qrcontaspagar.fieldbyname('valorpago').AsFloat;
                end
                else
                begin
                  frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
                end;
                frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := (qrcontaspagar.fieldbyname('valorpago').AsFloat)*(-1);
                frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring   := qrcontaspagar.fieldbyname('codconta').asstring;
                frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := qrcontaspagar.fieldbyname('movimento').asinteger;
                frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := 'Estorno de Pagto. Docto. '+qrcontaspagar.fieldbyname('documento').asstring;
                frmmodulo.qrcaixa_mov.post;

                qrcontaspagar.edit;
                qrcontaspagar.FieldByName('situacao').asinteger := 1;
                qrcontaspagar.FieldByName('filtro').asinteger := 0;
                qrcontaspagar.fieldbyname('valorpago').asfloat := 0;
                qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                qrcontaspagar.post;
                frmmodulo.Conexao.commit;
                qrcontaspagar.Refresh;
              end
              else
              begin
                application.messagebox('Não há caixa aberto para este operador! Impossível prosseguir com o estorno!','Aviso',mb_ok+MB_ICONWARNING);
              end;
            end
            else
            begin
              texto := pansichar('Esta conta foi baixada pelo caixa '+qrcontaspagar.fieldbyname('codcaixa').asstring+'. Apenas ele tem autorização para extorná-la!');
              application.messagebox(texto,'Atenção',mb_ok+mb_iconwarning);
            end;
          end
          else
          begin
            application.messagebox('Acesso não permitido!','Aviso',mb_ok+MB_ICONWARNING);
          end;
        end;
      end
      else
      begin
        texto := pansichar('O pagamento desta conta foi lançado no caixa do dia: '+qrcontaspagar.fieldbyname('data_pagamento').asstring+'. Não será possível fazer um lançamento de estorno no caixa atual! Deseja prosseguir com o estorno?');
        if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
        begin
                qrcontaspagar.edit;
                qrcontaspagar.FieldByName('situacao').asinteger := 1;
                qrcontaspagar.FieldByName('filtro').asinteger := 0;
                qrcontaspagar.fieldbyname('valorpago').asfloat := 0;
                qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                qrcontaspagar.post;
                frmmodulo.Conexao.commit;
                qrcontaspagar.Refresh;
        end;
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmcontaspagar.bpagamentoClick(Sender: TObject);
var valor : real;
begin
  if rselecao.value = 0 then wwDBGrid1.OnDblClick(frmcontaspagar);
  if not qrcontaspagar.Locate('filtro',1,[loCaseInsensitive]) then
  begin
    showmessage('Favor selecionar uma conta!');
    exit;

  end;

  if rselecao.value = 0 then wwDBGrid1.OnDblClick(frmcontaspagar);

  if frmPrincipal.autentica_caixa('Acesso ao Caixa',0) then
  begin
  if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then // caixa geral aberto
  begin
    if qrcontaspagar.State = dsedit then
       qrcontaspagar.Post;
    frmmodulo.Conexao.commit;

    qrcontaspagar.Refresh;

    frmcontaspagar_pgto := tfrmcontaspagar_pgto.create(self);
    frmcontaspagar_pgto.qrcontaspagar.Close;
    frmcontaspagar_pgto.qrcontaspagar.sql.clear;
    frmcontaspagar_pgto.qrcontaspagar.sql.add('select * from c000046 where situacao = 1 and filtro = 1 order by data_vencimento');
    frmcontaspagar_pgto.qrcontaspagar.open;
    frmcontaspagar_pgto.qrcontaspagar.first;
    valor := 0;
    while not frmcontaspagar_pgto.qrcontaspagar.Eof do
    begin
      frmcontaspagar_pgto.qrcontaspagar.Edit;
      frmcontaspagar_pgto.qrcontaspagar.fieldbyname('desconto').asfloat := 0;
      frmcontaspagar_pgto.qrcontaspagar.fieldbyname('acrescimo').asfloat := 0;
      frmcontaspagar_pgto.qrcontaspagar.fieldbyname('valorpago').asfloat := frmcontaspagar_pgto.qrcontaspagar.fieldbyname('valor').asfloat;
      frmcontaspagar_pgto.qrcontaspagar.Post;

      valor := valor + frmcontaspagar_pgto.qrcontaspagar.fieldbyname('valor').asfloat;
      frmcontaspagar_pgto.qrcontaspagar.next;
    end;
    frmcontaspagar_pgto.RTOTAL_VALOR.value := valor;
    frmcontaspagar_pgto.RTOTAL_desconto.value := 0;
    frmcontaspagar_pgto.RTOTAL_acrescimo.value := 0;
    frmcontaspagar_pgto.RTOTAL_PAGO.value := valor;
    frmcontaspagar_pgto.showmodal;
  end
  else
  begin
    application.messagebox('Caixa fechado! Favor verificar...','Atenção',MB_OK+MB_ICONWARNING);
  end;
  end
  else
  begin
    application.messagebox('Acesso não autorizado!','Atenção',MB_OK+MB_ICONWARNING);
  end;

  rselecao.Value := 0;
  
  if qrcontaspagar.RecordCount > 0 then
    begin
      qrcontaspagar.First;
      while not qrcontaspagar.Eof do
      begin
        if qrcontaspagar.FieldByName('filtro').AsString = '1' then
          rselecao.Value := rselecao.Value + qrcontaspagarVALOR.AsFloat;
        qrcontaspagar.Next;
      end;
      qrcontaspagar.First;
    end;
  
end;

procedure Tfrmcontaspagar.Pagamento1Click(Sender: TObject);
begin
  if bpagamento.Enabled then bpagamento.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Extornar1Click(Sender: TObject);
begin
if bextornar.Enabled then bextornar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Fechar1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontaspagar.bexcluirClick(Sender: TObject);
var texto :pansichar;
begin
  if frmprincipal.autentica('Excluir Conta',4) then
  begin
    if qrcontaspagar.FieldByName('situacao').asinteger = 1 then
    begin
      texto := pansichar('Confirma a Exclusão da Conta: '+#13+
                         'Fornecedor: '+qrcontaspagar.FieldByName('fornecedor').asstring+'           '+#13+
                         'Vencimento: '+qrcontaspagar.FieldByName('data_vencimento').asstring+#13+
                         'Documento: '+qrcontaspagar.FieldByName('documento').asstring+#13+
                         'Valor - R$: '+formatfloat('###,###,##0.00',qrcontaspagar.FieldByName('valor').asfloat));
      if application.messagebox(texto,'Atenção',MB_YESNO+MB_ICONWARNING) = idyes then
      begin
        frmprincipal.log(codigo_usuario,'C.PAGAR',QRCONTASPAGAR.fieldbyname('codigo').asstring,'EXCLUIU',QRCONTASPAGAR.FIELDBYNAME('FORNECEDOR').ASSTRING);

        qrcontaspagar.Delete;
        frmmodulo.Conexao.Commit;
      end;
    end
    else
    begin
      Application.messagebox('Esta conta já foi paga! Impossível excluir!','Atenção!!',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcontaspagar.BitBtn4Click(Sender: TObject);
begin
  LOC.SetFocus;
end;

procedure Tfrmcontaspagar.LOCEnter(Sender: TObject);
begin
  LOC.COLOR := $00A0FAF8;
  IF combo_loc.ItemIndex = 1 THEN
  begin
     QRCONTASPAGAR.IndexFieldNames := 'NOTAFISCAL';
     loc.SearchField := 'NOTAFISCAL';
  end;
  IF combo_loc.ItemIndex = 0 THEN
  begin
   QRCONTASPAGAR.IndexFieldNames := 'DOCUMENTO';
   LOC.SEARCHFIELD := 'DOCUMENTO';
  end;

end;

procedure Tfrmcontaspagar.LOCExit(Sender: TObject);
begin
LOC.COLOR := CLWindow;
end;

procedure Tfrmcontaspagar.wwDBGrid1DblClick(Sender: TObject);
begin
try
  if qrcontaspagar.FieldByName('filtro').asstring = '1' then
  begin
    qrcontaspagar.Edit;
    qrcontaspagar.fieldbyname('filtro').AsString := '0';
    rselecao.value := rselecao.value - qrcontaspagar.fieldbyname('valor').asfloat;
    qrcontaspagar.Post;
  end
  else
  begin
    qrcontaspagar.Edit;
    qrcontaspagar.fieldbyname('filtro').AsString := '1';
    rselecao.value := rselecao.value + qrcontaspagar.fieldbyname('valor').asfloat;
    qrcontaspagar.Post;
  end;
except
  Application.messagebox('Esta conta está sendo utilizada em outro terminal! Aguarde...','Atenção',mb_ok+mb_iconerror);

end;
end;

procedure Tfrmcontaspagar.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.CREATE(SELF);
  FRMLISTA_PAGAR2.SHOWMODAL;
end;

procedure Tfrmcontaspagar.DBText1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Conta',4) then
  begin
     frmcontaspagar_data := tfrmcontaspagar_data.create(self);
     frmcontaspagar_data.showmodal;
  end;
end;

procedure Tfrmcontaspagar.rselecaoChange(Sender: TObject);
begin
  IF RSELECAO.Value <> 0 THEN PSELECAO.VISIBLE := TRUE ELSE
  PSELECAO.VISIBLE := FALSE;

end;

procedure Tfrmcontaspagar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #32 then
  begin
    wwDBGrid1DblClick(frmcontaspagar);
  end;
  if key = #13 then bpagamentoClick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.Filtro1Click(Sender: TObject);
begin
  combo_situacao.setfocus;
end;

procedure Tfrmcontaspagar.combo_periodoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dateedit1.setfocus;
end;

procedure Tfrmcontaspagar.combo_locKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then LOC.setfocus;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then combo_periodo.setfocus;
end;

procedure Tfrmcontaspagar.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then combofornecedor.setfocus;
end;

procedure Tfrmcontaspagar.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bitbtn1.setfocus;
end;

procedure Tfrmcontaspagar.bdesliga_filtroClick(Sender: TObject);
begin
  rselecao.Value   := 0;
  pselecao.visible := false;

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.add('select * from c000046 where filtro = ''1''');
  qrcontaspagar.Open;

  if qrcontaspagar.RecordCount > 0 then

    begin
      qrcontaspagar.First;
      while not qrcontaspagar.Eof do
      begin

        if (qrcontaspagar.FieldByName('filtro').AsString = '1') AND (qrcontaspagar.FieldByName('situacao2').AsInteger <> 2) then
          rselecao.Value := rselecao.Value - qrcontaspagarVALOR.AsFloat;

        qrcontaspagar.Edit;
        qrcontaspagar.fieldbyname('filtro').AsString := '0';
        qrcontaspagar.Post;

        qrcontaspagar.Next;
      end;
      qrcontaspagar.First;
    end;
end;

procedure Tfrmcontaspagar.btotalClick(Sender: TObject);
var situacao, fornecedor, periodo : string;
begin

  WWDBGRID1.DATASOURCE := NIL;


  if combo_periodo.itemindex = 0 then periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';



  if combo_situacao.itemindex = 0 then situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1 and data_vencimento >= :datax ';
  if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 3 then situacao := '';

  if combofornecedor.Text = '' then fornecedor := '' else fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''';





      qrsoma.Close;
      qrsoma.SQL.clear;
      qrsoma.sql.add('select sum(VALOR) apagar, '+ // sum_0 A VENCER
                     '(select sum(VALORPAGO) VALORPAGO from c000046 where SITUACAO = 2 '+PERIODO+fornecedor+situacao+') '+ // column_
                     'from c000046 where situacao = 1 '+PERIODO+fornecedor+situacao);
      qrsoma.Params.ParamByName('datai').asdatetime := dateedit1.Date;
      qrsoma.Params.ParamByName('dataf').asdatetime := dateedit2.Date;
      qrsoma.open;



    Rpagar.Value := QRSOMA.FIELDBYNAME('apagar').ASFLOAT;
    RPAGA.Value := QRSOMA.FIELDBYNAME('VALORPAGO').ASFLOAT;

    WWDBGRID1.DATASOURCE := DSCONTASPAGAR;

end;

procedure Tfrmcontaspagar.Localizar1Click(Sender: TObject);
begin
  loc.setfocus;
end;

end.

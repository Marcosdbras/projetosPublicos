unit lista_ecf_reducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_ecf_reducao = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsreducao: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrreducao: TZQuery;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dsnota: TDataSource;
    Label6: TLabel;
    combo_ecf: TComboBox;
    qrreducaoID: TIntegerField;
    qrreducaoMOVIMENTO: TStringField;
    qrreducaoCODIGO_EMPRESA: TIntegerField;
    qrreducaoOBS1: TStringField;
    qrreducaoCNPJ: TStringField;
    qrreducaoIE: TStringField;
    qrreducaoUF: TStringField;
    qrreducaoCODIGO_CLIENTE: TIntegerField;
    qrreducaoCNPJ_CLIENTE: TStringField;
    qrreducaoIE_CLIENTE: TStringField;
    qrreducaoUF_CLIENTE: TStringField;
    qrreducaoCFOP: TStringField;
    qrreducaoCOD_SINTEGRA_R60: TStringField;
    qrreducaoDATA_EMISSAO: TDateTimeField;
    qrreducaoNRO_SERIE_EQP: TStringField;
    qrreducaoNRO_ORDEM_EQP: TIntegerField;
    qrreducaoMODELO_DOC: TStringField;
    qrreducaoNRO_CONTADOR_INICIO: TIntegerField;
    qrreducaoNRO_CONTADOR_FIM: TIntegerField;
    qrreducaoNRO_CONTADOR_Z: TIntegerField;
    qrreducaoNRO_DOC_FISCAL: TIntegerField;
    qrreducaoNRO_ITENS: TIntegerField;
    qrreducaoCONTADOR_REINICIO: TIntegerField;
    qrreducaoVALOR_VENDA_BRUTA: TFloatField;
    qrreducaoVALOR_TOTAL_GERAL: TFloatField;
    qrreducaoBRANCOS: TStringField;
    qrreducaoDATAHORA_RECEBIMENTO: TDateTimeField;
    qrreducaoMODELO_NF: TStringField;
    qrreducaoDATAHORA_INI: TDateTimeField;
    qrreducaoDATAHORA_FIM: TDateTimeField;
    qrreducaoCANCELAMENTO: TFloatField;
    qrreducaoDESCONTO: TFloatField;
    qrreducaoISSQN: TFloatField;
    qrreducaoSUBSTITUICAO_TRIBUTARIA: TFloatField;
    qrreducaoISENTO: TFloatField;
    qrreducaoNAO_INCIDENCIA: TFloatField;
    qrreducaoACRESCIMO_IOF: TFloatField;
    qrreducaoALIQUOTA01: TFloatField;
    qrreducaoALIQUOTA02: TFloatField;
    qrreducaoALIQUOTA03: TFloatField;
    qrreducaoALIQUOTA04: TFloatField;
    qrreducaoALIQUOTA05: TFloatField;
    qrreducaoBASE01: TFloatField;
    qrreducaoBASE02: TFloatField;
    qrreducaoBASE03: TFloatField;
    qrreducaoBASE04: TFloatField;
    qrreducaoBASE05: TFloatField;
    qrreducaoVALOR_TPARCIAL01: TFloatField;
    qrreducaoVALOR_TPARCIAL02: TFloatField;
    qrreducaoVALOR_TPARCIAL03: TFloatField;
    qrreducaoVALOR_TPARCIAL04: TFloatField;
    qrreducaoVALOR_TPARCIAL05: TFloatField;
    qrreducaoBRANCOS_60A01: TStringField;
    qrreducaoBRANCOS_60A02: TStringField;
    qrreducaoBRANCOS_60A03: TStringField;
    qrreducaoBRANCOS_60A04: TStringField;
    qrreducaoBRANCOS_60A05: TStringField;
    qrreducaoTOTAL_INICIO_DIA: TFloatField;
    qrreducaoTOTAL_FINAL_DIA: TFloatField;
    qrreducaoTOTAL_DIA: TFloatField;
    qrreducaoOBSERVACAO: TStringField;
    qrreducaoVALOR_VENDA_LIQUIDA: TFloatField;
    qrreducaototal_imposto: TFloatField;
    qrreducaoNRO_CONTADOR_CANCELAMENTO: TIntegerField;
    qrmapa_resumo: TZQuery;
    qrmapa_resumoDATA: TDateTimeField;
    qrmapa_resumoCONTROLE: TStringField;
    qrmapa_resumoMOVIMENTO_DIA: TFloatField;
    qrmapa_resumoCANCELAMENTO: TFloatField;
    qrmapa_resumoDESCONTO: TFloatField;
    qrmapa_resumoVALOR_CONTABIL: TFloatField;
    qrmapa_resumoISENTAS: TFloatField;
    qrmapa_resumoNAO_TRIBUTADAS: TFloatField;
    qrmapa_resumoIMPOSTO: TFloatField;
    QUERY: TZQuery;
    qrmapa_resumoSUBST_TRIBUTARIA: TFloatField;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
    procedure qrreducaoCalcFields(DataSet: TDataSet);
    procedure DateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_ecf_reducao: Tfrmlista_ecf_reducao;
  
implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_ecf_reducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_ecf_reducao.FormShow(Sender: TObject);
begin

  frmmodulo.qrfiscal_ecf.Close;
  frmmodulo.qrfiscal_ecf.sql.clear;
  frmmodulo.qrfiscal_ecf.SQL.add('select * from c000081 order by serie_empresa ');
  frmmodulo.qrfiscal_ecf.open;
  frmmodulo.qrfiscal_ecf.first;

  combo_ecf.Items.Clear;

  WHILE NOT FRMMODULO.QRFISCAL_ECF.Eof DO
  BEGIN
    combo_ecf.Items.Add(frmmodulo.qrfiscal_ecf.fieldbyname('serie_empresa').asstring+' - '+ frmmodulo.qrfiscal_ecf.fieldbyname('SERIE_EQUIPAMENTO').asstring);
    FRMMODULO.QRFISCAL_ECF.NEXT;
  END;

  combo_relatorio.ItemIndex := 0;

  combo_ECF.ItemIndex := 0;

  dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);

end;

procedure Tfrmlista_ecf_reducao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_ecf_reducao.bimprimirClick(Sender: TObject);
var
  ECF: string;
  vqtde: integer;
  SITUACAO : string;
  cfop, movimento : string;

begin


  if combo_relatorio.ItemIndex = 0 then // RELACAO DE REDUCAO
  BEGIN

    qrreducao.close;
    qrreducao.sql.clear;
    qrreducao.SQL.add('select * from SINTEGRA_REG60 where data_emissao BETWEEN :datai and :dataf '+ecf+' order by data_emissao');
    qrreducao.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrreducao.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrreducao.open;
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;


        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTO DIÁRIO - Reduções "Z" ';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000092.fr3');
    FXNOTA.ShowReport;

  end;

  if ( combo_relatorio.ItemIndex = 1 ) or ( combo_relatorio.ItemIndex = 2 ) then // MAPA RESUMO ECF
  BEGIN



      ///////////////////////

      // mapa resumo


        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.add('select DATA_EMISSAO,sum(VALOR_VENDA_BRUTA) movimento_dia,sum(cancelamento) cancelamento,sum(desconto) desconto,');
        QUERY.SQL.add('sum(VALOR_VENDA_LIQUIDA) valor_contabil,sum(ISENTO) isentas,sum(nao_incidencia) nao_tributadas,');
        QUERY.SQL.add('sum(SUBSTITUICAO_TRIBUTARIA) subst_tributaria,sum(VALOR_TPARCIAL01+VALOR_TPARCIAL02+VALOR_TPARCIAL03+VALOR_TPARCIAL04+VALOR_TPARCIAL05) imposto');
        QUERY.SQL.add('from SINTEGRA_REG60 where DATA_EMISSAO BETWEEN :datai and :dataf');
        QUERY.params.ParamByName('datai').asdatetime := dateedit1.date;
        QUERY.params.ParamByName('dataf').asdatetime := dateedit2.date;
        QUERY.SQL.add('group by DATA_EMISSAO');
        QUERY.SQL.add('order by DATA_EMISSAO');
        QUERY.open;



        qrmapa_resumo.Close;
        qrmapa_resumo.sql.clear;
        qrmapa_resumo.SQL.add('select * from SINTEGRA_MAPA_RESUMO where data BETWEEN :datai and :dataf');
        qrmapa_resumo.SQL.add('order by data');
        qrmapa_resumo.params.ParamByName('datai').asdatetime := dateedit1.date;
        qrmapa_resumo.params.ParamByName('dataf').asdatetime := dateedit2.date;
        qrmapa_resumo.open;

        frmmodulo.qrconfig.Open;

        if frmmodulo.qrconfig.FieldByName('nr_controle_ecf').AsString = '' then
        begin
          application.messagebox('Favor configurar o número de controle de mapa resumo do ECF!','Erro',mb_ok+mb_iconerror);
          exit;
        end;

        if qrmapa_resumo.RecordCount = 0 then
          begin
            //frmmodulo.qrconfig.Open;
            frmmodulo.qrconfig.Edit;
            frmmodulo.qrconfig.FieldByName('nr_controle_ecf').AsString := frmPrincipal.zerarcodigo(inttostr(strtoint(frmmodulo.qrconfig.FIELDBYNAME('nr_controle_ecf').AsString)+1),6);
            frmmodulo.qrconfig.Post;

            if QUERY.FieldByName('valor_contabil').AsFloat > 0 then
              begin
                qrmapa_resumo.Insert;
                qrmapa_resumo.FieldByName('DATA').AsDateTime := DateEdit1.Date;
                qrmapa_resumo.FieldByName('CONTROLE').AsString := frmmodulo.qrconfig.FieldByName('nr_controle_ecf').AsString
              end;
          end
        else
          qrmapa_resumo.Edit;



        if QUERY.FieldByName('valor_contabil').AsFloat > 0 then
          begin
            qrmapa_resumo.FieldByName('MOVIMENTO_DIA'   ).AsFloat := QUERY.FieldByName('MOVIMENTO_DIA').AsFloat;
            qrmapa_resumo.FieldByName('CANCELAMENTO'    ).AsFloat := QUERY.FieldByName('CANCELAMENTO').AsFloat;
            qrmapa_resumo.FieldByName('DESCONTO'        ).AsFloat := QUERY.FieldByName('DESCONTO').AsFloat;
            qrmapa_resumo.FieldByName('VALOR_CONTABIL'  ).AsFloat := QUERY.FieldByName('VALOR_CONTABIL').AsFloat;
            qrmapa_resumo.FieldByName('ISENTAS'         ).AsFloat := QUERY.FieldByName('ISENTAS').AsFloat;
            qrmapa_resumo.FieldByName('NAO_TRIBUTADAS'  ).AsFloat := QUERY.FieldByName('NAO_TRIBUTADAS').AsFloat;
            qrmapa_resumo.FieldByName('SUBST_TRIBUTARIA').AsFloat := QUERY.FieldByName('SUBST_TRIBUTARIA').AsFloat;
            qrmapa_resumo.FieldByName('IMPOSTO'         ).AsFloat := QUERY.FieldByName('IMPOSTO').AsFloat;
            qrmapa_resumo.Post;
          end;


        frmmodulo.Conexao.Commit;
        frmmodulo.ConexaoLocal.Commit;

        qrmapa_resumo.Close;
        qrmapa_resumo.sql.clear;
        qrmapa_resumo.SQL.add('select * from SINTEGRA_MAPA_RESUMO where data BETWEEN :datai and :dataf');
        qrmapa_resumo.SQL.add('order by data');
        qrmapa_resumo.params.ParamByName('datai').asdatetime := dateedit1.date;
        qrmapa_resumo.params.ParamByName('dataf').asdatetime := dateedit2.date;
        qrmapa_resumo.open;



        ///////////////////

        frmmodulo.qrrelatorio.open;
        frmmodulo.qrrelatorio.edit;

        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
        FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

        frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := 0;
        frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := 0;
        frmmodulo.qrrelatorio.FieldByName('valor3').Asfloat := 0;
        frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat := 0;
        frmmodulo.qrrelatorio.FieldByName('valor5').Asfloat := 0;
        frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat := 0;



        if combo_ECF.ItemIndex = -1 then ECF := '' else ECF := ' and NRO_ORDEM_EQP = '+COPY(COMBO_ECF.Text,1,3);




    FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := qrmapa_resumo.FieldByName('CONTROLE').AsString;
    frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat := qrmapa_resumo.FieldByName('IMPOSTO').AsFloat;
     qrreducao.close;
    qrreducao.sql.clear;
    qrreducao.SQL.add('select * from SINTEGRA_REG60 where data_emissao BETWEEN :datai and :dataf order by NRO_ORDEM_EQP');
    qrreducao.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrreducao.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrreducao.open;



    if QUERY.FieldByName('valor_contabil').AsFloat > 0 then
      begin
        frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'MAPA RESUMO ECF';
        if combo_relatorio.Text = 'MAPA RESUMO ECF' then
          FXNOTA.LoadFromFile('\DATASAC\server\rel\f000140.fr3')
        else
          FXNOTA.LoadFromFile('\DATASAC\server\rel\f000140_1.fr3');
        FXNOTA.ShowReport;
      end
    else
      begin
        Application.messagebox('Atenção, Não Há Informação para gerar o MAPA RESUMO ECF Nesta Data!','MAPA RESUMO ECF!',mb_ok+MB_ICONEXCLAMATION);
        DateEdit1.SetFocus;
      end;
  END;

end;

procedure Tfrmlista_ecf_reducao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.ITEMINDEX = 0 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000092.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ITEMINDEX = 1 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000140.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_ecf_reducao.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_ecf_reducao.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

procedure Tfrmlista_ecf_reducao.qrreducaoCalcFields(DataSet: TDataSet);
begin

  if combo_relatorio.ItemIndex = 1 then // MAPA RESUMO ECF
    begin
      frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := qrreducao.fieldbyname('base01').asfloat*qrreducao.fieldbyname('aliquota01').asfloat/100;
      frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := qrreducao.fieldbyname('base02').asfloat*qrreducao.fieldbyname('aliquota02').asfloat/100;
      frmmodulo.qrrelatorio.FieldByName('valor3').Asfloat := qrreducao.fieldbyname('base03').asfloat*qrreducao.fieldbyname('aliquota03').asfloat/100;
      frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat := qrreducao.fieldbyname('base04').asfloat*qrreducao.fieldbyname('aliquota04').asfloat/100;
      frmmodulo.qrrelatorio.FieldByName('valor5').Asfloat := qrreducao.fieldbyname('base05').asfloat*qrreducao.fieldbyname('aliquota05').asfloat/100;

      qrreducao.FieldByName('total_imposto').Asfloat      := qrreducao.FieldByName('total_imposto').Asfloat+
                                                             (frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat+
                                                              frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat+
                                                              frmmodulo.qrrelatorio.FieldByName('valor3').Asfloat+
                                                              frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat+
                                                              frmmodulo.qrrelatorio.FieldByName('valor5').Asfloat);

    end;
end;

procedure Tfrmlista_ecf_reducao.DateEdit1Exit(Sender: TObject);
begin
  if ( combo_relatorio.ItemIndex = 1 ) or ( combo_relatorio.ItemIndex = 2 ) then // MAPA RESUMO ECF
    begin
      DateEdit2.Date := DateEdit1.Date;
      bimprimir.SetFocus;
    end;
end;

end.

unit venda_farma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Collection, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, Buttons, Mask, wwdbedit, Menus, Wwdatsrc, AdvShapeButton,
  AdvGlowButton, RxMemDS;

type
  Tfrmvenda_farma = class(TForm)
    dsvenda_produto: TDataSource;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoNOME: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoCODRECEITA: TStringField;
    PopupMenu1: TPopupMenu;
    FinalizarEdio1: TMenuItem;
    ExcluirProduto1: TMenuItem;
    CancelarVenda1: TMenuItem;
    query1: TZQuery;
    MainMenu1: TMainMenu;
    menuoculto1: TMenuItem;
    CancelarSaida1: TMenuItem;
    QUERY: TZQuery;
    Vidalink1: TMenuItem;
    qrprodutoCST: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoCODMARCA: TStringField;
    FlatPanel10: TFlatPanel;
    Retorna1: TMenuItem;
    Bevel6: TBevel;
    Bevel5: TBevel;
    Label7: TLabel;
    lvenda_codigo: TLabel;
    Label10: TLabel;
    Bevel7: TBevel;
    lvenda_data: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel8: TBevel;
    lcaixa_codigo: TLabel;
    Bevel9: TBevel;
    lvendedor_codigo: TLabel;
    lvendedor_nome: TLabel;
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    EPRODUTO: TwwDBEdit;
    EQTDE: TwwDBEdit;
    EUNITARIO: TwwDBEdit;
    Panel1: TPanel;
    Bevel2: TBevel;
    litens: TLabel;
    ltotal: TLabel;
    Panel2: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    Bevel10: TBevel;
    Label2: TLabel;
    bfinaliza: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bvidalink: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    AdvShapeButton2: TAdvShapeButton;
    qrestoque: TZQuery;
    qrvendido: TZQuery;
    qrvenda_contasreceberTERMINAL: TStringField;
    qrvenda_produto: TRxMemoryData;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoCST: TStringField;
    qrvenda_produtoALIQUOTA: TFloatField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoMIX: TFloatField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoTIPO: TIntegerField;
    qrvenda_produtoTERMINAL: TStringField;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure EPRODUTOExit(Sender: TObject);
    procedure EQTDEExit(Sender: TObject);
    procedure EPRODUTOEnter(Sender: TObject);
    procedure EQTDEEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrvenda_produtoBeforePost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure qrvenda_produtoBeforeDelete(DataSet: TDataSet);
    procedure qrvenda_produtoAfterEdit(DataSet: TDataSet);
    procedure qrvenda_produtoAfterInsert(DataSet: TDataSet);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bentregaClick(Sender: TObject);
    procedure qrvenda_produtoAfterPost(DataSet: TDataSet);
    procedure qrvenda_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrvenda_produtoBeforeEdit(DataSet: TDataSet);
    procedure bfinalizaClick(Sender: TObject);
    procedure bvidalinkClick(Sender: TObject);
    procedure Vidalink1Click(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure EUNITARIOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_farma: Tfrmvenda_farma;
  ITENS, TOTAL_VENDA, qtde_anterior, valor_anterior : REAL;
  codigo_anterior, nome_anterior : string;
  cupom_fiscal : boolean;
  numero_terminal : string;
  continuar : boolean;
  lancando_contasreceber : boolean;
  observ : string;

implementation

uses modulo, venda_farma_produto, Math, principal, venda_farma_fechamento,
  venda_farma_vidalink;

{$R *.dfm}

procedure Tfrmvenda_farma.Edit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure Tfrmvenda_farma.Edit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_farma.EPRODUTOExit(Sender: TObject);
var a : string;

i : integer;

begin
  tedit(sender).color := clwindow;
    if (qrvenda_produto.State = dsinsert) or (qrvenda_produto.State = dsedit) then
    begin
        if eproduto.Text = '' then
        begin
          qrvenda_produto.fieldbyname('produto').asstring := '';
          qrvenda_produto.fieldbyname('codbarras').asstring := '';
          qrvenda_produto.fieldbyname('codproduto').asstring := '';
          qrvenda_produto.fieldbyname('cst').AsString := '';
          qrvenda_produto.fieldbyname('item').AsString := '';
          qrvenda_produto.fieldbyname('aliquota').AsFloat := 0;
          qrvenda_produto.fieldbyname('serial').asstring := '';
          qrvenda_produto.fieldbyname('numeracao').asstring := '';
          qrvenda_produto.fieldbyname('qtde').asstring := '';
          qrvenda_produto.fieldbyname('unitario').asstring := '';
          qrvenda_produto.fieldbyname('total').asstring := '';

        end;

        a := copy(eproduto.text,1,1);
        for I := 1 To Length(A) Do
        begin                                                               // CODIGO DO PRODUTO ANTERIOR \\
          if (A[I] in ['A'..'Z']) then
          begin
            qrproduto.close;
            qrproduto.sql.clear;
            //qrproduto.sql.add('select PRO.*, LAB.NOME from c000025 PRO, C000019 LAB where PRO.CODMARCA = LAB.CODIGO AND upper(produto) like '''+eproduto.text+'%'' order by produto');
            qrproduto.sql.add('select PRO.*, LAB.NOME from c000025 PRO, C000019 LAB where pro.situacao = 0 and PRO.CODMARCA = LAB.CODIGO AND upper(PRO.produto) like '''+eproduto.text+'%'' order by produto');
            qrproduto.open;

            if qrproduto.RecordCount > 0 then
            begin

              if qrproduto.RecordCount = 1 then
              begin
                IF NOME_ANTERIOR <> QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING THEN
                BEGIN
                  IF NOT ESTOQUE_NEGATIVO THEN
                  BEGIN
                    qrestoque.close;
                    qrestoque.sql.clear;
                    qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                    qrestoque.open;

                    if qrestoque.recordcount > 0 then
                    IF qrestoque.fieldbyname('estoque_atual').asfloat < 0.01 THEN
                    BEGIN
                      APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
                      qrvenda_produto.FieldByName('PRODUTO').ASSTRING := nome_anterior;
                      eproduto.setfocus;
                      exit;
                    END;
                  END;
                  qrvenda_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                  if qrproduto.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codbarra').asstring else
                                                                           qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codigo').asstring;
                  qrvenda_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
                  qrvenda_produto.fieldbyname('numeracao').asstring := qrproduto.fieldbyname('unidade').asstring;

                  qrvenda_produto.fieldbyname('cst').asstring := qrproduto.fieldbyname('cst').asstring;
                  qrvenda_produto.fieldbyname('aliquota').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                  //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

                  qrvenda_produto.fieldbyname('qtde').asfloat := 1;
                  qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                  qrvenda_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                END;
              end
              else
              begin

                resultado_pesquisa1 := '';
                frmvenda_farma_produto := tfrmvenda_farma_produto.create(self);
                frmvenda_farma_produto.dsproduto.DataSet := qrproduto;
                qrproduto.open;
                frmvenda_farma_produto.showmodal;
                if resultado_pesquisa1 <> '' then
                begin
                  qrvenda_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                  if qrproduto.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codbarra').asstring else
                                                                           qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codigo').asstring;
                  qrvenda_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
                  qrvenda_produto.fieldbyname('numeracao').asstring := qrproduto.fieldbyname('unidade').asstring;

                  qrvenda_produto.fieldbyname('cst').asstring := qrproduto.fieldbyname('cst').asstring;
                  qrvenda_produto.fieldbyname('aliquota').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                  //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

                  qrvenda_produto.fieldbyname('qtde').asfloat := 1;
                  qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                  qrvenda_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                end
                else
                begin
                  qrvenda_produto.FieldByName('PRODUTO').ASSTRING := NOME_ANTERIOR;
                  eproduto.setfocus;
                  exit;
                end;
              end;
            end
            else
            begin
              qrproduto.close;
              qrproduto.sql.clear;
              qrproduto.sql.add('select PRO.*, LAB.NOME from c000025 PRO, C000019 LAB where pro.situacao = 0 and PRO.CODMARCA = LAB.CODIGO AND upper(lab.nome) like '''+eproduto.text+'%'' order by produto');
              qrproduto.open;

              IF QRPRODUTO.RecordCount > 0 THEN
              BEGIN
                if qrproduto.RecordCount = 1 then
                begin
                  IF NOME_ANTERIOR <> QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING THEN
                  BEGIN

                    IF NOT ESTOQUE_NEGATIVO THEN
                    BEGIN
                      qrestoque.close;
                      qrestoque.sql.clear;
                      qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                      qrestoque.open;
                      if qrestoque.recordcount > 0 then
                      IF qrestoque.fieldbyname('estoque_atual').asfloat < 0.01 THEN
                      BEGIN
                        APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
                        qrvenda_produto.FieldByName('PRODUTO').ASSTRING := nome_anterior;
                        eproduto.setfocus;
                        exit;
                      END;
                    END;

                    qrvenda_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                    if qrproduto.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codbarra').asstring else
                                                                             qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codigo').asstring;
                    qrvenda_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
                    qrvenda_produto.fieldbyname('numeracao').asstring := qrproduto.fieldbyname('unidade').asstring;

                    qrvenda_produto.fieldbyname('cst').asstring := qrproduto.fieldbyname('cst').asstring;
                    qrvenda_produto.fieldbyname('aliquota').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                    //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

                    qrvenda_produto.fieldbyname('qtde').asfloat := 1;
                    qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                    qrvenda_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                  END;
                END
                ELSE
                BEGIN
                  resultado_pesquisa1 := '';
                  frmvenda_farma_produto := tfrmvenda_farma_produto.create(self);
                  frmvenda_farma_produto.showmodal;
                  if resultado_pesquisa1 <> '' then
                  begin
                    qrvenda_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                    if qrproduto.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codbarra').asstring else
                                                                           qrvenda_produto.fieldbyname('codbarras').asstring := qrproduto.fieldbyname('codigo').asstring;
                    qrvenda_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
                    qrvenda_produto.fieldbyname('numeracao').asstring := qrproduto.fieldbyname('unidade').asstring;

                    qrvenda_produto.fieldbyname('cst').asstring := qrproduto.fieldbyname('cst').asstring;
                    qrvenda_produto.fieldbyname('aliquota').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                    //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

                    qrvenda_produto.fieldbyname('qtde').asfloat := 1;
                    qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                    qrvenda_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
                  end
                  else
                  begin
                    qrvenda_produto.FieldByName('PRODUTO').ASSTRING := NOME_ANTERIOR;
                    eproduto.setfocus;
                    exit;
                  end;

                END;
              END
              ELSE
              BEGIN

                  resultado_pesquisa1 := '';
                  frmvenda_farma_produto := tfrmvenda_farma_produto.create(self);
                  frmvenda_farma_produto.showmodal;


                application.messagebox('Produto não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
                IF NOME_ANTERIOR <> '' THEN
                  qrvenda_produto.FieldByName('PRODUTO').ASSTRING := NOME_ANTERIOR;
                eproduto.setfocus;
                exit;
              END;
            end;
          end
          ELSE
          BEGIN // PROCURAR POR CODIGO
            A := frmPrincipal.zerarcodigo(EPRODUTO.TEXT,6);
            QUERY.close;
            QUERY.sql.clear;
            QUERY.sql.add('select * from c000025 where situacao = 0 and CODIGO = '''+A+'''');
            QUERY.open;

            IF QUERY.RecNo = 1 THEN
            BEGIN
              qrvenda_produto.fieldbyname('codproduto').asstring := QUERY.fieldbyname('codigo').asstring;
              if QUERY.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := QUERY.fieldbyname('codbarra').asstring else
                                                                       qrvenda_produto.fieldbyname('codbarras').asstring := QUERY.fieldbyname('codigo').asstring;
              qrvenda_produto.fieldbyname('produto').asstring := QUERY.fieldbyname('produto').asstring;
              qrvenda_produto.fieldbyname('numeracao').asstring := QUERY.fieldbyname('unidade').asstring;

              qrvenda_produto.fieldbyname('cst').asstring := Query.fieldbyname('cst').asstring;
              qrvenda_produto.fieldbyname('aliquota').AsFloat := Query.fieldbyname('aliquota').AsFloat;
              //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

              qrvenda_produto.fieldbyname('qtde').asfloat := 1;
              qrvenda_produto.fieldbyname('unitario').asfloat := QUERY.fieldbyname('precovenda').asfloat;
              qrvenda_produto.fieldbyname('total').asfloat := QUERY.fieldbyname('precovenda').asfloat;
            END
            ELSE
            BEGIN
              A := EPRODUTO.TEXT;
              QUERY.close;
              QUERY.sql.clear;
              QUERY.sql.add('select * from c000025 where situacao = 0 and CODBARRA = '''+A+'''');
              QUERY.open;
              IF QUERY.RecNo = 1 THEN
              BEGIN
                qrvenda_produto.fieldbyname('codproduto').asstring := QUERY.fieldbyname('codigo').asstring;
                if QUERY.fieldbyname('codbarra').asstring <> '' then qrvenda_produto.fieldbyname('codbarras').asstring := QUERY.fieldbyname('codbarra').asstring else
                                                                         qrvenda_produto.fieldbyname('codbarras').asstring := QUERY.fieldbyname('codigo').asstring;
                qrvenda_produto.fieldbyname('produto').asstring := QUERY.fieldbyname('produto').asstring;
                qrvenda_produto.fieldbyname('numeracao').asstring := QUERY.fieldbyname('unidade').asstring;

                qrvenda_produto.fieldbyname('cst').asstring := Query.fieldbyname('cst').asstring;
                qrvenda_produto.fieldbyname('aliquota').AsFloat := Query.fieldbyname('aliquota').AsFloat;
                //qrvenda_produto.fieldbyname('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);

                qrvenda_produto.fieldbyname('qtde').asfloat := 1;
                qrvenda_produto.fieldbyname('unitario').asfloat := QUERY.fieldbyname('precovenda').asfloat;
                qrvenda_produto.fieldbyname('total').asfloat := QUERY.fieldbyname('precovenda').asfloat;
              END
              ELSE
              BEGIN
                application.messagebox('Produto não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
                IF NOME_ANTERIOR <> '' THEN
                  qrvenda_produto.FieldByName('PRODUTO').ASSTRING := NOME_ANTERIOR;
                eproduto.setfocus;
                exit;
              END;
            END;
          END;
        end;

    end // state

end;

procedure Tfrmvenda_farma.EQTDEExit(Sender: TObject);
begin

  if qrvenda_produto.fieldbyname('codproduto').asstring <> '' then
  begin


                IF NOT ESTOQUE_NEGATIVO THEN
                BEGIN
                  qrproduto.close;
                  qrproduto.sql.clear;
                  qrproduto.sql.add('select PRO.*, LAB.NOME from c000025 PRO, C000019 LAB where PRO.CODMARCA = LAB.CODIGO AND pro.codigo = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
                  qrproduto.open;

                    qrestoque.close;
                    qrestoque.sql.clear;
                    qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                    qrestoque.open;
                    if qrestoque.recordcount > 0 then
                    IF qrestoque.fieldbyname('estoque_atual').asfloat < (qrvenda_produto.fieldbyname('qtde').asfloat - qtde_anterior) THEN
                    BEGIN
                      APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
                      if nome_anterior <> '' then
                        qrvenda_produto.FieldByName('PRODUTO').ASSTRING := nome_anterior;
                      qrvenda_produto.fieldbyname('qtde').asfloat := 0;
                      exit;
                    END;
                  END;



    tedit(sender).color := clwindow;
    if (qrvenda_produto.State = dsinsert) or (qrvenda_produto.State = dsedit) then
    begin
      qrvenda_produto.FieldByName('total').asfloat :=
      qrvenda_produto.FieldByName('unitario').asfloat *
      qrvenda_produto.FieldByName('qtde').asfloat ;
    END;
  end
  else
  begin
    Application.MessageBox('Favor informar o produto!','Atenção',MB_OK+MB_ICONWARNING);
    Abort;
  end;
end;

procedure Tfrmvenda_farma.EPRODUTOEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmvenda_farma.EQTDEEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmvenda_farma.FormShow(Sender: TObject);
begin


  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('ALTERAR_UNITARIO').ASINTEGER = 1 THEN ALTERA_UNITARIO := FALSE
  ELSE ALTERA_UNITARIO := TRUE;

   nova_venda := false;

   cupom_fiscal := false;

    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;


  FRmvenda_farma.qrvenda_contasreceber.close;
  FRmvenda_farma.qrvenda_contasreceber.sql.clear;
  FRmvenda_farma.qrvenda_contasreceber.SQL.Add('delete from cl00002 where  terminal = '''+numero_terminal+'''');
  FRmvenda_farma.qrvenda_contasreceber.ExecSQL;

  qrvenda_produto.open;
  while qrvenda_produto.RecordCount > 0 do
  qrvenda_produto.delete;
  qrvenda_produto.refresh;


  ITENS := 0;
  TOTAL_VENDA := 0;

  lvenda_codigo.Caption := frmprincipal.codifica('000048');
  lvenda_data.Caption :=   frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
  lcaixa_codigo.Caption :=   frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString;

  lvendedor_nome.caption := '';
  lvendedor_codigo.caption := '';

end;

procedure Tfrmvenda_farma.qrvenda_produtoBeforePost(DataSet: TDataSet);
begin
  if qrvenda_produto.fieldbyname('qtde').asfloat = 0 then
  begin
    application.messagebox('Quantidade zerada!','Erro',mb_ok+mb_iconerror);
    abort;
    exit;
  end;


  if qrvenda_produto.fieldbyname('codproduto').asstring = '' then
  begin
    qrvenda_produto.cancel;
    abort;
  end;


  total_venda := total_venda + qrvenda_produto.fieldbyname('total').asfloat - valor_anterior;
  ITENS := itens + qrvenda_produto.fieldbyname('qtde').asfloat - qtde_anterior;
  ltotal.caption := formatfloat('###,###,##0.00',total_venda);
  litens.Caption := floattostr(itens);


end;

procedure Tfrmvenda_farma.bexcluirClick(Sender: TObject);
begin
  if (qrvenda_produto.State = dsinsert) or (qrvenda_produto.State = dsedit) then
  begin
    qrvenda_produto.Cancel;
    exit;
  end;
  qrvenda_produto.Delete;
end;

procedure Tfrmvenda_farma.qrvenda_produtoBeforeDelete(DataSet: TDataSet);
begin
  total_venda := total_venda - qrvenda_produto.fieldbyname('total').asfloat;
  ITENS := itens - qrvenda_produto.fieldbyname('qtde').asfloat;
  ltotal.caption := formatfloat('###,###,##0.00',total_venda);
  litens.Caption := floattostr(itens);
end;

procedure Tfrmvenda_farma.qrvenda_produtoAfterEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrvenda_produto.fieldbyname('qtde').asfloat;
  valor_anterior := qrvenda_produto.fieldbyname('total').asfloat;

end;

procedure Tfrmvenda_farma.qrvenda_produtoAfterInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
  valor_anterior := 0;
end;

procedure Tfrmvenda_farma.bcancelarClick(Sender: TObject);
begin
  if application.messagebox('Confirma o cancelamento desta venda?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    frmmodulo.Conexao.Rollback;
    close;
  end;
end;

procedure Tfrmvenda_farma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;
end;

procedure Tfrmvenda_farma.bentregaClick(Sender: TObject);
begin
//
end;

procedure Tfrmvenda_farma.qrvenda_produtoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.ConexaoLocal.Commit;
end;

procedure Tfrmvenda_farma.qrvenda_produtoBeforeInsert(DataSet: TDataSet);
begin
  codigo_anterior := '';
  nome_anterior := '';
end;

procedure Tfrmvenda_farma.qrvenda_produtoBeforeEdit(DataSet: TDataSet);
begin
  codigo_anterior := QRVENDA_PRODUTO.FIELDBYNAME('codPRODUTO').ASSTRING;
  nome_anterior := QRVENDA_PRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
end;

procedure Tfrmvenda_farma.bfinalizaClick(Sender: TObject);
var
  item : integer;
begin

  if frmPrincipal.autentica('Fechamento',0) then
  begin
    if frmmodulo.qrUsuario.FieldByName('codvendedor').asstring = '' then
    begin
      application.MessageBox('Usuário não é um vendedor! Favor verificar!','Atenção!',mb_ok+MB_ICONERROR);
      exit;
    end
    else
    begin
      query1.Close;
      query1.sql.Clear;
      query1.sql.add('select * from c000008 where codigo = '''+frmmodulo.qrusuario.fieldbyname('codvendedor').asstring+'''');
      query1.open;
    end;

    qrvenda_produto.First;
    item := 0;
    while not qrvenda_produto.Eof do
    begin
      item := item + 1;
      qrvenda_produto.Edit;
      qrvenda_produto.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(item),3);
      qrvenda_produto.Next;
    end;

    lvendedor_codigo.Caption := query1.fieldbyname('codigo').asstring;
    lvendedor_nome.Caption := query1.fieldbyname('nome').asstring;

    frmvenda_farma_fechamento := tfrmvenda_farma_fechamento.create(self);
    frmvenda_farma_fechamento.lvendedor.caption := lvendedor_codigo.Caption +' | '+lvendedor_nome.Caption;
    frmvenda_farma_fechamento.rsubtotal.value := TOTAL_VENDA;
    frmvenda_farma_fechamento.rtotal.value := TOTAL_VENDA;
    frmvenda_farma_fechamento.showmodal;
  end;

end;

procedure Tfrmvenda_farma.bvidalinkClick(Sender: TObject);
begin

  If frmprincipal.acesso(codigo_usuario,'03.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmvenda_farma_vidalink := tfrmvenda_farma_vidalink.create(self);
  frmvenda_farma_vidalink.showmodal;

end;

procedure Tfrmvenda_farma.Vidalink1Click(Sender: TObject);
begin
  bvidalinkClick(frmvenda_farma);
end;

procedure Tfrmvenda_farma.Retorna1Click(Sender: TObject);
begin
  bcancelarClick(frmvenda_farma);
end;

procedure Tfrmvenda_farma.EUNITARIOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key <> #13 then
  if key <> #27 then
  if not altera_unitario then abort;
end;

end.

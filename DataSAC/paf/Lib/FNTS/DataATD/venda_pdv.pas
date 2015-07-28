unit venda_pdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, TFlatEditUnit,
  Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, Buttons, VrControls, VrButtons, Mask, rxToolEdit, rxCurrEdit,
  TFlatComboBoxUnit, Menus, Wwdatsrc, frxDesgn, frxClass;

type
  Tfrmvenda_pdv = class(TForm)
    qrvenda_produto: TZQuery;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoMIX: TFloatField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoTIPO: TIntegerField;
    dsvenda_produto: TDataSource;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPRECO: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    Timer1: TTimer;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoCODALIQUOTA: TStringField;
    PopupMenu1: TPopupMenu;
    RepetirpesquisadeProdutos1: TMenuItem;
    Excluiritem1: TMenuItem;
    CancelarVenda1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    AlternarFormadePagamento1: TMenuItem;
    ForarCancelamentodeVenda1: TMenuItem;
    Alterarformadedesconto1: TMenuItem;
    qrcontasreceber: TZQuery;
    bver_limite: TBitBtn;
    qrpessoas: TZQuery;
    qrestoque: TZQuery;
    qrvenda_produtoTERMINAL: TStringField;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label14: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    LDATA_VENDA: TLabel;
    LHORA_VENDA: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label28: TLabel;
    litem: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Bevel4: TBevel;
    ltotal: TLabel;
    Label7: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    lcliente_limite: TLabel;
    Bevel5: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Bevel6: TBevel;
    bvendedor: TBitBtn;
    eVendedor: TEdit;
    eNomeVendedor: TEdit;
    eCliente: TEdit;
    eNomeCliente: TEdit;
    bcliente: TBitBtn;
    comboforma: TComboBox;
    Bevel7: TBevel;
    Panel4: TPanel;
    Bevel8: TBevel;
    Label19: TLabel;
    LCODIGO: TLabel;
    Bevel10: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label16: TLabel;
    eProduto: TEdit;
    RQTDE: TRxCalcEdit;
    RUNITARIO: TRxCalcEdit;
    RDESCONTO: TRxCalcEdit;
    RTOTAL: TRxCalcEdit;
    Bevel9: TBevel;
    fxvenda: TfrxReport;
    fxdesenhar: TfrxDesigner;
    qrserial_p: TZQuery;
    qrgrade_p: TZQuery;
    qrgrade: TZReadOnlyQuery;
    qrserial: TZReadOnlyQuery;
    qrconsultaproduto: TZReadOnlyQuery;
    qrvenda_produtoIDGRADE: TIntegerField;
    qrconsulta: TZReadOnlyQuery;
    qrquery: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bvendedorClick(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bclienteClick(Sender: TObject);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure RDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure RTOTALKeyPress(Sender: TObject; var Key: Char);
    procedure RUNITARIOExit(Sender: TObject);
    procedure RQTDEExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RepetirpesquisadeProdutos1Click(Sender: TObject);
    procedure EPRODUTOEnter(Sender: TObject);
    procedure EPRODUTOExit(Sender: TObject);
    procedure Excluiritem1Click(Sender: TObject);
    procedure CancelarVenda1Click(Sender: TObject);
    procedure FinalizarVenda1Click(Sender: TObject);
    procedure comboformaChange(Sender: TObject);
    procedure comboformaEnter(Sender: TObject);
    procedure RUNITARIOEnter(Sender: TObject);
    procedure RDESCONTOExit(Sender: TObject);
    procedure Alterarformadedesconto1Click(Sender: TObject);
    procedure AlternarFormadePagamento1Click(Sender: TObject);
    procedure bver_limiteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure qrvenda_produtoBeforePost(DataSet: TDataSet);
    procedure evendedorExit(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    function loc_produto(parametro:string):boolean;
    procedure gradeserial;
  private
    { Private declarations }
  public
    { Public declarations }

    nr_serial:string;
    nr_grade:string;
    cd_grade:string;
    scodPedido:String;

    iid_grade:integer;

  end;

var
  frmvenda_pdv: Tfrmvenda_pdv;
  item : integer;
  ultima_pesquisa : string;
  forma_anterior : integer;
  estoque_produto : real;
  CONTINUAR : BOOLEAN;

  FORMA1 : STRING;
  vforma1 : real;
  venda_liberada : boolean;

implementation

uses modulo, locvendedor, principal, loccliente, locproduto, Math,
  venda_fechamento_avista, venda_fechamento_aprazo, pedido_serial, pedido_grade;

{$R *.dfm}

procedure Tfrmvenda_pdv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmvenda_pdv.FormShow(Sender: TObject);
begin

  If senha_vendedor = '1' then
    venda_liberada := false
  else
    venda_liberada := true;



    frmlocproduto := tfrmlocproduto.Create(self);
    frmlocproduto.qrproduto.close;
    frmlocproduto.qrproduto.sql.clear;
    frmlocproduto.qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
    frmlocproduto.qrproduto.open;


    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = ''xxxxxx''');
    qrproduto.open;


    ldata_venda.Caption := frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;

    eproduto.CharCase := ecUpperCase;







    IF ABRE_ORCAMENTO THEN
    BEGIN
      item := QRVENDA_PRODUTO.RecordCount + 1;
    END
    ELSE
    BEGIN
      comboforma.ItemIndex := StrToInt(forma_pdv);
      qrvenda_produto.Close;
      qrvenda_produto.sql.Clear;
      qrvenda_produto.sql.add('delete from cl00001 where terminal = '''+registro_terminal+'''');
      qrvenda_produto.ExecSQL;
      qrvenda_produto.sql.clear;
      qrvenda_produto.sql.add('select * from cl00001  where terminal = '''+registro_terminal+'''');
      qrvenda_produto.open;
      item := 1;
    END;

    EVENDEDOR.SETFOCUS;
    ultima_pesquisa := '';


 // comboforma.ItemIndex := 2;

end;

procedure Tfrmvenda_pdv.bvendedorClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  IF resultado_pesquisa1 <> '' THEN
  BEGIN
    EVENDEDOR.TEXT := RESULTADO_PESQUISA1;
    ENOMEVENDEDOR.TEXT := RESULTADO_PESQUISA2;
    ECLIENTE.SETFOCUS;
  END
  ELSE
  BEGIN
    EVENDEDOR.SETFOCUS;
  END;
end;

procedure Tfrmvenda_pdv.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_pdv.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    ecliente.Text := frmprincipal.zerarcodigo(ecliente.text,6);

    if (ecliente.Text <> '') and (ecliente.Text <> '000000') then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+''' order by nome');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.RecNo = 1 then
      begin
        enomecliente.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;

        bver_limiteClick(frmvenda_pdv);

       IF NOT CONTINUAR THEN
       BEGIN
         ECLIENTE.TEXT := '';
         ENOMECLIENTE.TEXT := '';
         ECLIENTE.SETFOCUS;
         EXIT;
       END;
       comboforma.setfocus;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        enomecliente.text := '';
        ecliente.SetFocus;
        ecliente.SelectAll;
      end;
    end
    else
    begin
      bclienteClick(frmvenda_pdv);
    end;
  end;

end;

procedure Tfrmvenda_pdv.bclienteClick(Sender: TObject);

begin
  RESULTADO_PESQUISA1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  IF resultado_pesquisa1 <> '' THEN
  BEGIN
    Ecliente.TEXT := RESULTADO_PESQUISA1;

    qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+Ecliente.TEXT+''' and situacao = 1');
  qrcontasreceber.Open;

  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;


    bver_limiteClick(frmvenda_pdv);


    IF NOT CONTINUAR THEN
    BEGIN
      ECLIENTE.TEXT := '';
      ENOMECLIENTE.TEXT := '';
      ECLIENTE.SETFOCUS;
      EXIT;
    END;


    ENOMEcliente.TEXT := RESULTADO_PESQUISA2;

    comboforma.setfocus;
  END
  ELSE
  BEGIN
    Ecliente.SETFOCUS;
  END;
end;

procedure Tfrmvenda_pdv.comboformaKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    EPRODUTO.SETFOCUS;
  END;
end;

procedure Tfrmvenda_pdv.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a : string;
I : INTEGER;
begin
  if key = #13 then
  begin
    ultima_pesquisa := '';
    a := copy(eproduto.text,1,1);
    for I := 1 To Length(A) Do
    begin
      if (A[I] in ['A'..'Z']) then
      begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where upper(produto) like '''+AnsiUpperCase(eproduto.text)+'%'' order by produto');
        qrproduto.open;
        if qrproduto.RecordCount > 0 then
        begin
          if qrproduto.RecordCount = 1 then
          begin
            if comboforma.ItemIndex <> 2 then
            begin

            IF (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) THEN
            BEGIN


              qrestoque.close;
              qrestoque.sql.clear;
              qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
              qrestoque.open;

              estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;

              IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 THEN
              BEGIN
                 frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
                 eproduto.setfocus;
                 exit;
              END;
            END;
            end;
            lCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
            eproduto.text := qrproduto.fieldbyname('produto').asstring;
            rqtde.value := 1;
            runitario.value := qrproduto.fieldbyname('preco').asfloat;
            rdesconto.Value := 0;
            rtotal.value := qrproduto.fieldbyname('preco').asfloat;
            rqtde.setfocus;
            exit;
          end
          else
          begin
            resultado_pesquisa1 := '';
            frmlocproduto.LOC.Text := EPRODUTO.text;
            frmlocproduto.showmodal;
            if resultado_pesquisa1 <> '' then
            begin
              qrproduto.close;
              qrproduto.sql.clear;
              qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
              qrproduto.open;
              if comboforma.ItemIndex <> 2 then
              begin
              IF (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) THEN
              BEGIN
                qrestoque.close;
                qrestoque.sql.clear;
                qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                qrestoque.open;
                estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
                IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 THEN
                 BEGIN
                   frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');

                   eproduto.setfocus;
                   exit;
                END;
              END;
              end;
              LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
              eproduto.text := qrproduto.fieldbyname('produto').asstring;
              rqtde.value := 1;
              runitario.value := qrproduto.fieldbyname('preco').asfloat;
              rtotal.value := qrproduto.fieldbyname('preco').asfloat;
              rdesconto.Value := 0;
              rqtde.setfocus;
              exit;
            end;
          end;
        END
        ELSE
        BEGIN
           frmprincipal.msg('LOCE','Produto não econtrado!',FALSE,FALSE,TRUE,'');
           eproduto.setfocus;
           exit;
        end;
      end
      ELSE
      BEGIN // PROCURAR POR CODIGO
        A :=EPRODUTO.TEXT;
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codbarra = '''+a+'''');
        qrproduto.open;
        IF qrproduto.RecNo = 1 THEN
        BEGIN
          IF (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) THEN
          BEGIN
             qrestoque.close;
             qrestoque.sql.clear;
             qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
             qrestoque.open;
             estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
             IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 THEN
             BEGIN
               frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
               eproduto.setfocus;
               exit;
            END;
          END;
          LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
          eproduto.text := qrproduto.fieldbyname('produto').asstring;
          rqtde.value := 1;
          runitario.value := qrproduto.fieldbyname('preco').asfloat;
          rtotal.value := qrproduto.fieldbyname('preco').asfloat;
          rdesconto.Value := 0;
          rqtde.setfocus;
          exit;
        END
        ELSE
        BEGIN
          A := frmPrincipal.zerarcodigo(EPRODUTO.TEXT,6);
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.add('select * from c000025 where codigo = '''+a+'''');
          qrproduto.open;
          if comboforma.ItemIndex <> 2 then
          begin
          IF qrproduto.RecNo = 1 THEN
          BEGIN
            IF (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) THEN
            BEGIN
              qrestoque.close;
              qrestoque.sql.clear;
              qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
              qrestoque.open;
              estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
              IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 THEN
              BEGIN

                 frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
                 eproduto.setfocus;
                 exit;
              END;
            END;
          end
          ELSE
          BEGIN
           frmprincipal.msg('LOCE','Produto não econtrado!',FALSE,FALSE,TRUE,'');
           eproduto.setfocus;
           exit;


          END;
            LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
            eproduto.text := qrproduto.fieldbyname('produto').asstring;
            rqtde.value := 1;
            runitario.value := qrproduto.fieldbyname('preco').asfloat;
            rtotal.value := qrproduto.fieldbyname('preco').asfloat;
            rdesconto.Value := 0;
            rqtde.setfocus;
            exit;
          END
          ELSE
          BEGIN
           frmprincipal.msg('LOCE','Produto não econtrado!',FALSE,FALSE,TRUE,'');
           eproduto.setfocus;
           exit;
          END;
        END;
      END;
    END;
  end; // #13

end;

procedure Tfrmvenda_pdv.qrprodutoCalcFields(DataSet: TDataSet);
begin
  IF comboforma.ItemIndex = 1 THEN
  BEGIN
    If  aumento_prazo <> 0 then
    begin
       qrproduto.FieldByName('preco').asfloat :=
       qrproduto.FieldByName('precovenda').asfloat + (qrproduto.FieldByName('precovenda').asfloat * (aumento_prazo/100));
    end
    else
      qrproduto.FieldByName('preco').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
  END
  ELSE
  BEGIN
    qrproduto.FieldByName('preco').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
  END;
end;

procedure Tfrmvenda_pdv.RDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmvenda_pdv.RTOTALKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    if (RQTDE.value <> 0) and (eproduto.Text <> '') and (RTOTAL.Value <> 0) then
    begin
      try

      qrvenda_produto.Insert;
      qrvenda_produto.FieldByName('codproduto').asstring   := qrproduto.fieldbyname('codigo').asstring;
      qrvenda_produto.FieldByName('produto').asstring      := qrproduto.fieldbyname('produto').asstring;
      qrvenda_produto.FieldByName('NUMERACAO').asstring    := qrproduto.fieldbyname('UNIDADE').asstring;
      qrvenda_produto.FieldByName('qtde').asfloat          := rqtde.value;
      qrvenda_produto.FieldByName('unitario').asfloat      := runitario.value;
      qrvenda_produto.FieldByName('total').asfloat         := rtotal.value;
      qrvenda_produto.FieldByName('desconto').asfloat      := rdesconto.value;
      qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
      qrvenda_produto.FieldByName('item').asstring         := frmprincipal.zerarcodigo(inttostr(item),3);
      litem.Caption := frmprincipal.zerarcodigo(inttostr(item),4);
      item := item+1;
      ltotal.caption := formatfloat('############0.00',strtofloat(ltotal.caption)+qrvenda_produto.FieldByName('total').asfloat);
      qrvenda_produto.post;
      frmmodulo.ConexaoLocal.Commit;
      qrvenda_produto.refresh;
      qrvenda_produto.Last;

      eproduto.text := '';
      rqtde.value := 0;
      runitario.value := 0;
      rdesconto.value := 0;
      rtotal.value := 0;
      lcodigo.Caption := '';
      eproduto.setfocus;
      except
        frmprincipal.msg('ERRO','Este item está sendo utilizado'+#13+'em outro terminal!'+#13+'Favor pedir a sua liberação'+#13+'para poder prosseguir!',false,false,true,'');
        rtotal.setfocus;
        exit;
      end;
    end
    else
    begin
      rtotal.setfocus;
    end;


  END
  ELSE
  BEGIN
    ABORT;
  END;
end;

procedure Tfrmvenda_pdv.RUNITARIOExit(Sender: TObject);
begin
  RTOTAL.VALUE :=
  (RQTDE.VALUE *
  RUNITARIO.VALUE) -
  RDESCONTO.VALUE;
end;

procedure Tfrmvenda_pdv.RQTDEExit(Sender: TObject);
begin
  if (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) then
  begin
    if rqtde.value > estoque_produto then
    begin
      frmprincipal.msg('ALER','Este produto não possue'+#13+' este estoque!',false,false,true,'');
      rqtde.SetFocus;
    end;
  end;
end;

procedure Tfrmvenda_pdv.Timer1Timer(Sender: TObject);
begin
  LHORA_VENDA.CAPTION := TIMETOSTR(TIME);
end;

procedure Tfrmvenda_pdv.RepetirpesquisadeProdutos1Click(Sender: TObject);
var key : char;
begin
  ultima_pesquisa := 'x';
  key := #13;
  if ultima_pesquisa = '' then exit;
  frmlocproduto.showmodal;
  EPRODUTO.Text := resultado_pesquisa1;
  EPRODUTOKeyPress(sender,key);
end;

procedure Tfrmvenda_pdv.EPRODUTOEnter(Sender: TObject);
begin
  RepetirpesquisadeProdutos1.Enabled := true;
end;

procedure Tfrmvenda_pdv.EPRODUTOExit(Sender: TObject);
begin
RepetirpesquisadeProdutos1.Enabled := false;
end;

procedure Tfrmvenda_pdv.Excluiritem1Click(Sender: TObject);
begin
  if frmprincipal.msg('EXCL','Confirma e exclusão do item?',true,true,false,'') = 'SIM' then
  begin
      qrproduto.close;
      qrproduto.SQL.Clear;
      qrproduto.sql.add('select * from c000025 where codigo = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
      qrproduto.open;
      if qrproduto.RecNo = 1 then
      begin
        ltotal.caption := formatfloat('##########0.00', strtofloat(ltotal.caption) - qrvenda_produto.fieldbyname('total').asfloat);
        litem.Caption := frmprincipal.zerarcodigo(inttostr(strtoint(litem.caption)-1),4);
        qrvenda_produto.Delete;
      end
      else
      begin
        frmprincipal.msg('ERRO','Produto não econtrado!',false,false,true,'');
      end;
  end;

end;

procedure Tfrmvenda_pdv.CancelarVenda1Click(Sender: TObject);
begin
  if frmprincipal.msg('INTE','Confirma o cancelamento?',true,true,false,'') = 'SIM' then
  begin
    qrvenda_produto.Close;
    qrvenda_produto.sql.Clear;
    qrvenda_produto.sql.add('delete from cl00001  where terminal = '''+registro_terminal+'''');
    qrvenda_produto.ExecSQL;
    frmmodulo.ConexaoLocal.Commit;

    frmmodulo.Conexao.Rollback;
    close;
  end;
end;

procedure Tfrmvenda_pdv.FinalizarVenda1Click(Sender: TObject);
VAR TEXTO : STRING;
begin
  if ( evendedor.text = '') or
     ( evendedor.text = '000000' ) then
  begin
    FRMPRINCIPAL.msg('ERRO','Favor informar o vendedor!',false,false,true,'');
    evendedor.setfocus;
  end;


   if comboforma.itemindex = 0 then
   begin
       frmvenda_fechamento_aVISTA := tfrmvenda_fechamento_aVISTA.create(self);
       frmvenda_fechamento_aVISTA.rsubtotal.Value := StrToFloat(ltotal.caption);
       frmvenda_fechamento_aVISTA.rtotal.value := StrToFloat(ltotal.caption);
       frmvenda_fechamento_aVISTA.showmodal;


   end
   else
   begin
       frmvenda_fechamento_aPRAZO := tfrmvenda_fechamento_aPRAZO.create(self);
       frmvenda_fechamento_aPRAZO.rsubtotal.Value := StrToFloat(ltotal.caption);
       frmvenda_fechamento_aPRAZO.rtotal.value := StrToFloat(ltotal.caption);
       frmvenda_fechamento_aPRAZO.showmodal;
   end;
end;

procedure Tfrmvenda_pdv.comboformaChange(Sender: TObject);
VAR TEXTO : STRING;
total : real;
roda : boolean;
begin


  IF COMBOFORMA.ItemIndex = 2 THEN
  BEGIN
     if (forma_anterior < 2) THEN
     BEGIN
       IF qrvenda_produto.RecordCount > 0 THEN
       BEGIN
         FRMPRINCIPAL.msg('ERRO','Este atendimento não pode'+#13+'ser alterado para orçamento,'+#13+'pois existem itens já lançados!',false,false,true,'');
         comboforma.ItemIndex := forma_anterior;
         comboforma.setfocus;
         exit;
       END;
     END;
  END;

  if comboforma.ItemIndex = 1 then // venda a prazo
  begin
    FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
      if frmmodulo.qrcliente.FieldByName('situacao').asinteger > 1 then
      begin
        frmprincipal.msg('ERRO','Cliente BLOQUEADO!'+#13+'Impossível prosseguir com esta'+#13+'forma de pagamento!',false,false,true,'');
        comboforma.ItemIndex := 0;
        abort;
        exit;
      end;
      if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2 then
      begin

        texto := pansichar('CADASTRO COM OBSERVAÇÃO: '+#13+
                 frmmodulo.qrcliente.fieldbyname('obs1').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs2').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs3').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs4').asstring+#13+
                 'Deseja prosseguir com a venda?');

        IF frmprincipal.msg('ALER',TEXTO,TRUE,TRUE,FALSE,'') = 'NAO' THEN
        BEGIN
          comboforma.ItemIndex := 0;
          ABORT;
        END;
      end;
    END;
  end;

  try
  qrproduto.Refresh;
  frmlocproduto.qrproduto.Refresh;
  except
  end;
  total := 0;
  roda := false;
  qrvenda_produto.first;
  while not qrvenda_produto.Eof do
  begin
    qrproduto.Close;
    qrproduto.sql.Clear;
    qrproduto.sql.add('select * from c000025 where codigo = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
    qrproduto.open;
    IF (NOT ESTOQUE_NEGATIVO) and (comboforma.itemindex <> 2) THEN
    BEGIN
      IF qrproduto.FieldByName('ESTOQUE').ASFLOAT < qrvenda_produto.fieldbyname('qtde').asfloat THEN
      BEGIN
         IF forma_anterior = 2 THEN
         BEGIN
         if frmprincipal.msg('ALER','O Produto: '+#13+ qrproduto.fieldbyname('codigo').asstring+'-'+copy(qrproduto.fieldbyname('produto').asstring,1,20)+#13+
                          'não possue '+qrvenda_produto.fieldbyname('qtde').asstring+' '+qrproduto.fieldbyname('unidade').asstring+' em estoque! '+#13+'Deseja retirar da venda?' ,true,true,false,'') = 'SIM' then
         begin
           qrvenda_produto.Delete;
           roda := true;
         end
         else
         begin
           total := 0;
           comboforma.ItemIndex := forma_anterior;
           qrvenda_produto.first;
           while not qrvenda_produto.Eof do
           begin
             qrproduto.Close;
             qrproduto.sql.Clear;
             qrproduto.sql.add('select * from c000025 where codigo = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
             qrproduto.open;
             qrvenda_produto.Edit;
             qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('preco').asfloat;
             qrvenda_produto.fieldbyname('total').asfloat := (qrproduto.fieldbyname('preco').asfloat * qrvenda_produto.fieldbyname('qtde').asfloat) -
             qrvenda_produto.fieldbyname('desconto').asfloat;
             qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
             qrvenda_produto.post;
             frmmodulo.ConexaoLocal.Commit;
             total := total + qrvenda_produto.fieldbyname('total').asfloat;
             qrvenda_produto.Next;
           end;
           break;
           exit;
         end;
         END
         ELSE
         BEGIN
           qrvenda_produto.Edit;
           qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('preco').asfloat;
           qrvenda_produto.fieldbyname('total').asfloat := (qrproduto.fieldbyname('preco').asfloat * qrvenda_produto.fieldbyname('qtde').asfloat) -
           qrvenda_produto.fieldbyname('desconto').asfloat;
           qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
           qrvenda_produto.post;
           frmmodulo.ConexaoLocal.Commit;
           total := total + qrvenda_produto.fieldbyname('total').asfloat;
           qrvenda_produto.Next;
         END;
      END
      else
      begin
        qrvenda_produto.Edit;
        qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('preco').asfloat;
        qrvenda_produto.fieldbyname('total').asfloat := (qrproduto.fieldbyname('preco').asfloat * qrvenda_produto.fieldbyname('qtde').asfloat) -
        qrvenda_produto.fieldbyname('desconto').asfloat;
        qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
        qrvenda_produto.post;
        frmmodulo.ConexaoLocal.Commit;
        total := total + qrvenda_produto.fieldbyname('total').asfloat;
        qrvenda_produto.Next;
      end;

    END
    else
    begin
      qrvenda_produto.Edit;
      qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('preco').asfloat;
      qrvenda_produto.fieldbyname('total').asfloat := (qrproduto.fieldbyname('preco').asfloat * qrvenda_produto.fieldbyname('qtde').asfloat) -
      qrvenda_produto.fieldbyname('desconto').asfloat;
      qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
      qrvenda_produto.post;
      frmmodulo.ConexaoLocal.Commit;
      total := total + qrvenda_produto.fieldbyname('total').asfloat;
      qrvenda_produto.Next;
    end;
  end;


  if roda then
  begin
           total := 0;
           qrvenda_produto.first;
           while not qrvenda_produto.Eof do
           begin
             qrproduto.Close;
             qrproduto.sql.Clear;
             qrproduto.sql.add('select * from c000025 where codigo = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
             qrproduto.open;
             qrvenda_produto.Edit;
             qrvenda_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('preco').asfloat;
             qrvenda_produto.fieldbyname('total').asfloat := (qrproduto.fieldbyname('preco').asfloat * qrvenda_produto.fieldbyname('qtde').asfloat) -
             qrvenda_produto.fieldbyname('desconto').asfloat;
             qrvenda_produto.FieldByName('tipo').asinteger        := comboforma.ItemIndex;
             qrvenda_produto.post;
             frmmodulo.ConexaoLocal.Commit;
             total := total + qrvenda_produto.fieldbyname('total').asfloat;
             qrvenda_produto.Next;
           end;

  end;


  qrvenda_produto.refresh;
  ltotal.caption := formatfloat('##########0.00',total);

end;

procedure Tfrmvenda_pdv.comboformaEnter(Sender: TObject);
begin
  forma_anterior := comboforma.itemindex;
  if ecliente.Text = '' then
  begin
    ecliente.setfocus;
  end;
end;

procedure Tfrmvenda_pdv.RUNITARIOEnter(Sender: TObject);
begin
 FRMMODULO.QRCONFIG.OPEN;
 IF FRMMODULO.QRCONFIG.FIELDBYNAME('VENDA_ALTERAR_PRECO').ASINTEGER <> 1 THEN   rdesconto.setfocus;
end;

procedure Tfrmvenda_pdv.RDESCONTOExit(Sender: TObject);
var pdesc : real;
valor_desconto : real;
begin
TRY
 if rdesconto.value <> 0 then
 begin
  if rdesconto.DisplayFormat = 'R$ ######0.00' then
     valor_desconto := rdesconto.Value
  else
     valor_desconto := (rqtde.value * runitario.value) * (rdesconto.value/100);




  if comboforma.ItemIndex = 1 then // aprazo
  begin
      if rdesconto.value <> 0 then
      begin
        pdesc := valor_desconto * 100 / (rqtde.value * runitario.value);
        if pdesc > desconto_produto then
        begin
          If frmprincipal.msg('SENH','',TRUE,TRUE,FALSE,'4 - DESCONTO') = 'NAO' THEN
          BEGIN
            frmprincipal.msg('ERRO','Não autorizado!',false,false,true,'');
            valor_desconto := 0;
            rdesconto.setfocus;
          END;
        end;
      end;
  end
  else
  begin
    if comboforma.ItemIndex = 0 then // a vista
    begin
      if rdesconto.value <> 0 then
      begin
        pdesc := valor_desconto * 100 / (rqtde.value * runitario.value);
        if pdesc > desconto_produto then
        begin
          If frmprincipal.msg('SENH','',TRUE,TRUE,FALSE,'4 - DESCONTO') = 'NAO' THEN
          BEGIN
            frmprincipal.msg('ERRO','Não autorizado!',false,false,true,'');
            valor_desconto := 0;
            rdesconto.setfocus;
          END;
        end;
      end;
    end
    else
    begin
      if valor_desconto <> 0 then
      begin
        pdesc := valor_desconto * 100 / (rqtde.value * runitario.value);
        if pdesc > desconto_produto then
        begin
          If frmprincipal.msg('SENH','',TRUE,TRUE,FALSE,'4 - DESCONTO') = 'NAO' THEN
          BEGIN
            frmprincipal.msg('ERRO','Não autorizado!',false,false,true,'');
            valor_desconto := 0;
            rdesconto.setfocus;
          END;
        end;
      end;
    end;
  end;
  RTOTAL.VALUE :=
  (RQTDE.VALUE *
  RUNITARIO.VALUE) -
  valor_desconto;

  end;

 EXCEPT
 END;

end;

procedure Tfrmvenda_pdv.Alterarformadedesconto1Click(Sender: TObject);
begin
  if rdesconto.DisplayFormat = 'R$ ######0.00' then
     rdesconto.DisplayFormat :='######0.00%' else
     rdesconto.DisplayFormat :='R$ ######0.00';

end;

procedure Tfrmvenda_pdv.AlternarFormadePagamento1Click(Sender: TObject);
begin
  if comboforma.ItemIndex =2 then comboforma.ItemIndex := 0 else
  comboforma.ItemIndex := comboforma.ItemIndex + 1;
end;

procedure Tfrmvenda_pdv.bver_limiteClick(Sender: TObject);

var texto : pansichar;
Data: TDateTime;
dia, mes, ano: Word;

begin
    ////////


    CONTINUAR := TRUE;
    qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+Ecliente.TEXT+''' and situacao = 1');
  qrcontasreceber.Open;

  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;

  lcliente_limite.caption := formatfloat('###,###,##0.00',(FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT));
  //frmvenda.lcliente_limite.caption := formatfloat('###,###,##0.00',(FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT));

  //frmvenda.lvendedor_nome.caption := enomevendedor.Text;
  //frmvenda.lvendedor_codigo.caption := evendedor.Text;
  //FRMVENDA.lcaixa_codigo.Caption := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;

  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
  BEGIN
      if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3)  then
      begin
        texto := pansichar('Cliente com crédito bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar venda',4) then
          begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
            Ecliente.TEXT := '';
            ECLIENTE.SetFocus;
            CONTINUAR := FALSE;
            exit;
          end;
        end
        else
        begin
          Ecliente.TEXT := '';
          ECLIENTE.setfocus;
          CONTINUAR := FALSE;
          exit;

        end;

      end
      ELSE
      BEGIN
        if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2)  then
        begin

          texto := pansichar('Cliente com crédito em Observação!, Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              Ecliente.TEXT := '';
              ECLIENTE.SetFocus;
              CONTINUAR := FALSE;
              exit;
            end;
          end
          else
          begin
            Ecliente.TEXT := '';
            ECLIENTE.setfocus;
            CONTINUAR := FALSE;
            exit;

          end;
        END
        ELSE
        BEGIN
          if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5)  then
          begin
            texto := pansichar('Cliente com nome no SPC!, Deseja continuar?');
            if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
              begin
                application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                Ecliente.TEXT := '';
                ECLIENTE.SetFocus;
                CONTINUAR := FALSE;
                exit;
              end;
            end
            else
            begin
              Ecliente.TEXT := '';
              ECLIENTE.setfocus;
              CONTINUAR := FALSE;
              exit;
            end;
          END;
        end;
      END;
  end;


     if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
        IF limite_disponivel <= 0 THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
              begin
                application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                Ecliente.TEXT := '';
                ECLIENTE.SetFocus;
                CONTINUAR := FALSE;
                exit;
              end
              else
              begin
                comboforma.SetFocus;
                exit;
              end;
            end
          else
            begin
              Ecliente.TEXT := '';
              ECLIENTE.SetFocus;
              CONTINUAR := FALSE;
              exit;
          end;
        END;
    END;





    /////////

end;

procedure Tfrmvenda_pdv.eclienteExit(Sender: TObject);
begin
  COMBOBOX1.ItemIndex := 0;
       ecliente.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
       {
       enomecliente.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
       lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                            frmmodulo.qrcliente.fieldbyname('bairro').asstring;
       ltelefone.caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'   '+
                            frmmodulo.qrcliente.fieldbyname('celular').asstring;
       lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
        }
       qrpessoas.close;
       qrpessoas.SQL.clear;
       qrpessoas.SQL.add('select * from c000070 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
       qrpessoas.Open;

  IF QRPESSOAS.RecordCount > 0 THEN
    BEGIN
         ComboBox1.Clear;
         COMBOBOX1.ItemS.Add('O MESMO');

         QRPESSOAS.First;
         WHILE NOT QRPESSOAS.EOF DO
         BEGIN
           COMBOBOX1.Items.ADD(QRPESSOAS.FIELDBYNAME('NOME').ASSTRING+' - '+QRPESSOAS.FIELDBYNAME('PARENTESCO').ASSTRING);
           QRPESSOAS.NEXT;
         END;
         COMBOBOX1.ItemIndex := 0;
         COMBOBOX1.SetFocus;

    END
 ELSE
   comboforma.setfocus;


end;

procedure Tfrmvenda_pdv.ComboBox1Exit(Sender: TObject);
begin
  comboforma.SetFocus;
end;

procedure Tfrmvenda_pdv.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmvenda_pdv.qrvenda_produtoBeforePost(DataSet: TDataSet);
begin


  qrvenda_produto.fieldbyname('terminal').asstring :=   registro_terminal;

  gradeserial;


end;


procedure tfrmvenda_pdv.gradeserial;
var
  nomecli:string;

begin

  if qrvenda_produto.State = dsinsert then
     begin

      //parei aqui
      loc_produto( qrvenda_produto.fieldbyname('codproduto').AsString  );

      qrvenda_produto.FieldByName('serial').AsString := Copy(nr_serial,1,25);

      //vincular serial

      if nr_serial <> '' then
      begin

        qrconsulta.Close;
        qrconsulta.sql.clear;
        qrconsulta.SQL.Add('select * from C000007 where codigo = '+quotedstr( enomecliente.text )  );
        qrconsulta.Open;

        nomecli := qrconsulta.fieldbyname('nome').asstring;

        //trans.active := true;
        qrquery.close;
        qrquery.sql.clear;
        qrquery.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        qrquery.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        qrquery.sql.add('where serial = '''+nr_serial+'''');
        qrquery.sql.add('and codproduto = '''+ qrvenda_produto.fieldbyname('codproduto').AsString +'''');
        qrquery.params.Parambyname('situacao').AsInteger  := 2;

        qrquery.params.Parambyname('cliente').asstring    := nomecli;

        qrquery.params.Parambyname('codcliente').asstring := ecliente.Text ;
        qrquery.params.Parambyname('DATAVENDA').ASdatetime:= date;
        qrquery.params.Parambyname('codvenda').asstring   := 'pré-venda';
        qrquery.params.Parambyname('precovenda').asfloat  := qrvenda_produto.fieldbyname('unitario').AsFloat;

        qrquery.execsql;
        //trans.Commit;
      end;


      // vincular grade

      if iid_grade > 0 then
         begin

           qrquery.Close;
           qrquery.SQL.Clear;
           qrquery.SQL.Add('select * from c000021 where id = '+inttostr(iid_grade) );
           qrquery.Open;

           qrvenda_produto.FieldByName('codgrade').AsString :=  qrquery.fieldbyname('codigo').AsString;
           qrvenda_produto.FieldByName('idgrade').Asinteger :=  qrquery.fieldbyname('id').Asinteger;

           qrquery.Close;
           qrquery.SQL.Clear;
           qrquery.SQL.Add('update c000021 set estoque = estoque - '+ floattostr( qrvenda_produto.fieldbyname('qtde').asfloat )+' where id = '+inttostr(iid_grade) );
           qrquery.ExecSQL;

         end;








     end;



end;



procedure Tfrmvenda_pdv.evendedorExit(Sender: TObject);
begin
  
    evendedor.Text := frmprincipal.zerarcodigo(evendedor.text,6);
    if (evendedor.Text <> '') and (evendedor.Text <> '000000') then
    begin
      frmmodulo.qrfunci.close;
      frmmodulo.qrfunci.sql.clear;
      frmmodulo.qrfunci.sql.add('select * from c000008 where codigo = '''+evendedor.text+''' and F_VENDEDOR = 1 AND SITUACAO = 1 order by nome');
      frmmodulo.qrfunci.open;
      if frmmodulo.qrfunci.RecNo = 1 then
      begin
        enomevendedor.text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
        ecliente.setfocus;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        enomevendedor.text := '';
        evendedor.SetFocus;
        evendedor.SelectAll;
      end;
    end
    else
    begin
      bvendedorClick(frmvenda_pdv);
    end;



end;

procedure Tfrmvenda_pdv.evendedorEnter(Sender: TObject);
begin
{
        if senha_vendedor = '1' then
        begin
          if frmPrincipal.autentica('Senha Vendedor',0) then
          begin
            if frmmodulo.qrUsuario.FieldByName('codvendedor').asstring = '' then
            begin
              application.MessageBox('Usuário não é um vendedor! Favor verificar!','Atenção!',mb_ok+MB_ICONERROR);
              exit;
            end
            else
              evendedor.Text := frmmodulo.qrUsuario.FieldByName('codvendedor').asstring;
          end
          else
            exit;
        end;
}
end;


function Tfrmvenda_pdv.loc_produto(parametro:string):boolean;
var
  sfilialUF, sClienteUF:string;
  iva, aliqinter:Real;
  ipilotoUF:Integer;

begin


        nr_serial := '';
        nr_grade  := '';
        cd_grade  := '';
        iid_grade := 0;


        qrconsultaproduto.close;
        qrconsultaproduto.sql.clear;
        qrconsultaproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and codigo = '''+parametro+'''');
        qrconsultaproduto.open;
        if qrconsultaproduto.RecordCount = 0 then
        begin
          qrconsultaproduto.close;
          qrconsultaproduto.sql.clear;
          qrconsultaproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codbarra = '''+parametro+'''');
          qrconsultaproduto.open;
          if qrconsultaproduto.recordcount = 0 then
          begin
            qrconsultaproduto.close;
            qrconsultaproduto.sql.clear;
            qrconsultaproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  upper(produto) like '''+ansiuppercase(parametro)+'%''');
            qrconsultaproduto.open;
            if qrconsultaproduto.recordcount = 0 then
            begin
              QrSerial.close;
              QrSerial.sql.clear;
              QrSerial.sql.Add('select * from c000022 where serial = '''+parametro+''' and situacao = 1 ');
              QrSerial.open;
              if qrserial.recordcount > 0 then
              begin
                qrconsultaproduto.close;
                qrconsultaproduto.sql.clear;
                qrconsultaproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codigo = '''+qrserial.fieldbyname('codproduto').asstring+'''');
                qrconsultaproduto.open;
                nr_serial := qrserial.fieldbyname('serial').asstring;
              end;
            end;
          end;
        end;

        if qrconsultaproduto.RecordCount > 0 then
           begin
             if qrconsultaproduto.recordcount = 1 then
                begin
                  if nr_serial = '' then
                    begin
                      QrSerial.close;
                      QrSerial.sql.clear;
                      QrSerial.sql.Add('select * from c000022 where codproduto = '''+qrconsultaproduto.fieldbyname('codigo').asstring+''' and situacao = 1 ');
                      QrSerial.open;
                      if qrserial.recordcount > 0 then
                          begin
                            resultado_pesquisa1 := '';
                            resultado_pesquisa3 := '';
                            frmpedido_serial := tfrmpedido_serial.create(self);
                            frmpedido_serial.ShowModal;
                            if resultado_pesquisa1 <> '' then
                                begin
                                  QrSerial.close;
                                  QrSerial.sql.clear;
                                  QrSerial.sql.Add('select * from c000022 where serial = '''+resultado_pesquisa1+''' and situacao = 1 ');
                                  QrSerial.open;
                                  nr_serial := qrserial.fieldbyname('serial').asstring;
                                end;
                          end
                      else
                          begin
                            if qrconsultaproduto.fieldbyname('usa_grade').asstring = '1' then
                                begin
                                  qrgrade.close;
                                  qrgrade.sql.clear;
                                  qrgrade.sql.Add('select * from c000021 where codproduto = '''+qrconsultaproduto.fieldbyname('codigo').asstring+'''');
                                  qrgrade.open;
                                  if qrgrade.recordcount > 0 then
                                      begin
                                        resultado_pesquisa1 := '';
                                        resultado_pesquisa3 := '';
                                        frmpedido_grade := tfrmpedido_grade.create(self);
                                        frmpedido_grade.ShowModal;

                                        if resultado_pesquisa1 <> '' then
                                            begin
                                              Qrgrade.close;
                                              Qrgrade.sql.clear;
                                              Qrgrade.sql.Add('select * from c000021 where codigo = '''+resultado_pesquisa1+'''');
                                              Qrgrade.open;
                                              nr_grade := qrgrade.fieldbyname('numeracao').asstring;
                                              cd_grade := qrgrade.fieldbyname('codigo').asstring;
                                              iid_grade := qrgrade.fieldbyname('id').asinteger;
                                            end;
                                       end;
                                end;
                          end;
                    end;

                end
             else
                begin
                  result := false;
                end;
           end;
end;


end.

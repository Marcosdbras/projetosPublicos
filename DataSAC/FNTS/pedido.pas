unit pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, RXDBCtrl, StdCtrls, Mask,
  DBCtrls, Collection, Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdblook, wwdbedit,
  rxCurrEdit, RXCtrls, Menus, RpDefine, RpCon, RpConDS, RzEdit, RzDBEdit,
  RzDBBnEd, AdvShapeButton, AdvGlowButton, MemDS, DBAccess, IBC,
  rxToolEdit;


type
  Tfrmpedido = class(TForm)
    dspedido: TDataSource;
    qrpedido_produto: TZQuery;
    dspedido_produto: TDataSource;
    s_produtoCODPRODUTO: TStringField;
    s_produtoPRODUTO: TStringField;
    s_produtoUNIDADE: TStringField;
    f_produtoQTDE: TFloatField;
    f_produtoUNITARIO: TFloatField;
    f_produtoDESCONTO: TFloatField;
    f_produtoACRESCIMO: TFloatField;
    f_produtoTOTAL: TFloatField;
    s_produtoCODPEDIDO: TStringField;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eunitario: TwwDBEdit;
    edesconto: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    etotal: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rsubtotal: TRxDBCalcEdit;
    rdesconto: TRxDBCalcEdit;
    racrescimo: TRxDBCalcEdit;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    dspedido_contasreceber: TDataSource;
    qrpedido_contasreceber: TZQuery;
    s_contasreceberCODPEDIDO: TStringField;
    intgrfld_contasreceberPRESTACAO: TIntegerField;
    f_contasreceberVALOR: TFloatField;
    s_contasreceberDOCUMENTO: TStringField;
    s_contasreceberTIPO: TStringField;
    Panel3: TPanel;
    Label8: TLabel;
    rtotal: TRxDBCalcEdit;
    ExcluirProduto1: TMenuItem;
    dtmfld_contasreceberVENCIMENTO: TDateTimeField;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel10: TBevel;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    Bevel4: TBevel;
    Panel4: TPanel;
    Bevel5: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    enomecliente: TDBEdit;
    ecliente: TRzDBButtonEdit;
    evendedor: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    comboproduto: TwwDBLookupCombo;
    QRPRODUTO: TZQuery;
    QRPRODUTOCODIGO: TStringField;
    QRPRODUTOCODBARRA: TStringField;
    QRPRODUTOPRODUTO: TStringField;
    QRPRODUTOUNIDADE: TStringField;
    QRPRODUTOPRECOVENDA: TFloatField;
    babrir: TAdvGlowButton;
    OramentoPDV1: TMenuItem;
    f_produtoestoque: TFloatField;
    qrestoque: TZQuery;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    QRPRODUTOestoque: TFloatField;
    PageView1: TPageView;
    Software1: TPageSheet;
    FlatPanel3: TFlatPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    edtrqtde: TRxCalcEdit;
    wwDBGrid2: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    Software2: TPageSheet;
    DBEDIT2: TDBEdit;
    DBEDIT3: TDBEdit;
    DBEDIT4: TDBEdit;
    DBEDIT6: TDBEdit;
    intgrfld_produtoNUMERACAO: TIntegerField;
    btn1: TAdvGlowButton;
    s_produtoCODBARRA: TStringField;
    s_produtoITEM: TStringField;
    s_produtoCODBARRAS: TStringField;
    s_produtoSERIAL: TStringField;
    s_produtoCODGRADE: TStringField;
    intgrfld_produtoTIPO: TIntegerField;
    f_produtoALIQUOTA: TFloatField;
    s_produtoCST: TStringField;
    s_produtoTERMINAL: TStringField;
    s_produtoCODSUBGRUPO: TStringField;
    s_produtoPISCOFINS: TStringField;
    s_produtoSERIAL_CODINT: TStringField;
    s_produtoGRADE_CODINT: TStringField;
    dbtxtSITUACAO: TDBText;
    qrconsultaproduto: TZReadOnlyQuery;
    qrserial: TZReadOnlyQuery;
    qrgrade: TZReadOnlyQuery;
    qrconsulta: TZReadOnlyQuery;
    qrquery: TZReadOnlyQuery;
    qrquery2: TZReadOnlyQuery;
    btn3: TAdvGlowButton;
    rdesconto1: TRxDBCalcEdit;
    racrescimo1: TRxDBCalcEdit;
    qrpedido_produtoPDESCONTO: TFloatField;
    qrpedido_produtoPACRESCIMO: TFloatField;
    Bevel6: TBevel;
    pdesconto: TwwDBEdit;
    pacrescimo: TwwDBEdit;
    lvoltar: TLabel;
    Label2: TLabel;
    Bevel7: TBevel;
    Label3: TLabel;
    qrpedido_produtoIDGRADE: TIntegerField;
    procedure qrpedido_produtoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure racrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEDIT2Enter(Sender: TObject);
    procedure DBEDIT2Exit(Sender: TObject);
    procedure DBEDIT2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEDIT6KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qrpedido_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrpedido_produtoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrpedido_produtoBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Exit(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimoExit(Sender: TObject);
    procedure babrirClick(Sender: TObject);
    procedure qrpedido_produtoCalcFields(DataSet: TDataSet);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
    procedure edtrqtdeExit(Sender: TObject);
    procedure edtrqtdeEnter(Sender: TObject);
    function loc_produto(parametro:string):boolean;
    procedure btn3Click(Sender: TObject);
    procedure pacrescimoExit(Sender: TObject);
    procedure pdescontoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    observ : string;
    nr_serial:string;
    nr_grade:string;
    cd_grade:string;
    scodPedido:String;

    iid_grade:integer;


  end;

var
  frmpedido: Tfrmpedido;
  valor_anterior : real;
  codigo_pedido : string;


  selecionado : boolean;
  FINALIZADO : BOOLEAN;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  continuar : boolean;
    cupom_fiscal : boolean;
      item_excluido, item : integer;
      excluidos : ARRAY [1..100] OF STRING;
      numero_terminal : string;


  finalizou : boolean;
  nome_condicao:string;






  {
  selecionado : boolean;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  CONTINUAR : BOOLEAN;
  cupom_fiscal : boolean;
  cod_apoio : integer;



  item : integer;
  numero_terminal : string;
  }




implementation

uses modulo, loc_cliente, principal, loc_funci, Math, pedido_impressao,
  pedido_localizar, xloc_cliente, Pedido_Abrir, pedido_fechar,
  ped_fechamento, pedido_serial, pedido_grade, xloc_produtos;

{$R *.dfm}

procedure Tfrmpedido.qrpedido_produtoBeforePost(DataSet: TDataSet);
var
  nomecli:string;
begin


  frmmodulo.qrpedido.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  qrpedido_produto.fieldbyname('total').asfloat -
  valor_anterior;

  frmmodulo.qrPedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('desconto').asfloat ;



  qrpedido_produto.FieldByName('codpedido').asstring :=
  frmmodulo.qrPedido.fieldbyname('codigo').asstring;

  if qrpedido_produto.State = dsinsert then
     begin

     loc_produto( qrpedido_produto.fieldbyname('codproduto').AsString  );

     qrpedido_produto.FieldByName('serial').AsString := Copy(nr_serial,1,25);

      //vincular serial

      if nr_serial <> '' then
      begin

        qrconsulta.Close;
        qrconsulta.sql.clear;
        qrconsulta.SQL.Add('select * from C000007 where codigo = '+quotedstr( frmmodulo.qrPedido.fieldbyname('codcliente').AsString )  );
        qrconsulta.Open;

        nomecli := qrconsulta.fieldbyname('nome').asstring;

        //trans.active := true;
        qrquery.close;
        qrquery.sql.clear;
        qrquery.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        qrquery.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        qrquery.sql.add('where serial = '''+nr_serial+'''');
        qrquery.sql.add('and codproduto = '''+ qrpedido_produto.fieldbyname('codproduto').AsString +'''');
        qrquery.params.Parambyname('situacao').AsInteger  := 2;

        qrquery.params.Parambyname('cliente').asstring    := nomecli; 

        qrquery.params.Parambyname('codcliente').asstring := frmmodulo.qrPedido.fieldbyname('codcliente').AsString ;
        qrquery.params.Parambyname('DATAVENDA').ASdatetime:= StrToDate(  DBDateEdit1.Text  );
        qrquery.params.Parambyname('codvenda').asstring   := frmmodulo.qrPedido.fieldbyname('codigo').AsString;
        qrquery.params.Parambyname('precovenda').asfloat  := qrpedido_produto.fieldbyname('unitario').AsFloat;

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

           qrpedido_produto.FieldByName('codgrade').AsString :=  qrquery.fieldbyname('codigo').AsString;
           qrpedido_produto.FieldByName('idgrade').Asinteger :=  qrquery.fieldbyname('id').Asinteger;

           qrquery.Close;
           qrquery.SQL.Clear;
           qrquery.SQL.Add('update c000021 set estoque = estoque - '+ floattostr( qrpedido_produto.fieldbyname('qtde').asfloat )+' where id = '+inttostr(iid_grade) );
           qrquery.ExecSQL;  

         end;




     end;




end;

procedure Tfrmpedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
  frmpedido := nil;
end;

procedure Tfrmpedido.FormShow(Sender: TObject);
begin
  pgravar.Align := alClient;

  //PageSheet2.Visible := False;


  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrformapgto.Open;

  qrproduto.open;

  frmmodulo.qrPedido.close;
  frmmodulo.qrPedido.SQL.Clear;
  frmmodulo.qrPedido.SQL.Add('select * from c000056PEDIDO order by codigo');
  frmmodulo.qrPedido.open;
  frmmodulo.qrPedido.indexfieldnames := 'codigo';

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

  qrpedido_produto.close;
  qrpedido_contasreceber.Close;
  if frmmodulo.qrPedido.FieldByName('codigo').AsString <> '' then
  begin
    qrpedido_produto.sql.clear;
    qrpedido_produto.sql.Add('select * from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
    qrpedido_produto.Open;

    qrpedido_contasreceber.sql.clear;
    qrpedido_contasreceber.sql.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+''' order by prestacao');
    qrpedido_contasreceber.Open;


  end;

  


end;

procedure Tfrmpedido.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmpedido.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
  if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;

end;

procedure Tfrmpedido.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrPedido.insert;
  scodPedido := frmprincipal.codifica('000056PEDIDO');
  frmmodulo.qrPedido.fieldbyname('codigo').asstring := scodPedido;

  pficha.Enabled := true;
  frmpedido.PopupMenu := popedicao;
  pgravar.visible := true;
  if pficha.enabled then ecliente.setfocus;


end;

procedure Tfrmpedido.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmpedido.evendedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPedido.state = dsinsert) or (frmmodulo.qrPedido.State = dsedit) then
  begin
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

    frmmodulo.qrPedido.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(evendedor.text,6);
    if evendedor.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,evendedor.text,'codigo') then
      BEGIN
        evendedorbuttonclick(frmpedido);
      END
      else
      begin
        if pficha.enabled then  wwdbgrid1.SetFocus;
      end;
    END
    else
    BEGIN
        evendedorbuttonclick(frmpedido);
    END;
  end;
end;

procedure Tfrmpedido.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    if pficha.enabled then wwdbgrid1.setfocus;
  end;
end;

procedure Tfrmpedido.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido.bgravarClick(Sender: TObject);
begin

  if frmmodulo.qrpedido.FieldByName('SITUACAO').asstring = 'LANÇADO' then
  begin
    showmessage('Este pedido já foi lançado'+chr(13)+chr(10)+'Para modifica-lo Primeiro deve-se estorna-lo!');
    exit;
  end;

  if frmmodulo.qrpedido.FieldByName('CODVENDEDOR').asstring = '' then
  begin
    showmessage('Não foi informado o vendedor!');
    evendedor.setfocus;
    exit;
  end;

  if frmmodulo.qrpedido.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('Não foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end
  else
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrPedido.fieldbyname('codcliente').asstring,[locaseinsensitive]);
  end;

  qrpedido_produto.FIRST;

  //if Application.MessageBox('Deseja realmente lançar este pedido?','Fechamento',MB_YESNO)= 6 then
  //begin

    if frmPrincipal.autentica_caixa('Fechamento pedido',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

        frmpedido_fechar := Tfrmpedido_fechar.CREATE(SELF);
        frmpedido_fechar.SHOWMODAL;
      END
      ELSE
      BEGIN
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
        EXIT;
      END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
      EXIT;
    end;

  //end;

  //if finalizou then
  if frmmodulo.qrPedido.FieldByName('SITUACAO').AsString <> 'LANÇADO' then
     begin
       APPLICATION.MESSAGEBOX('Operação cancelada pelo usuário!','Atenção',mb_ok+MB_ICONWARNING);
       exit;
     end;


  PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmpedido.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrPedido.Post;

  frmmodulo.Conexao.Commit;
  if application.messagebox('Deseja imprimir este pedido?','Aviso',mb_yesno+MB_ICONQUESTION) = idyes then
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrPedido.fieldbyname('codcliente').asstring,[loCaseInsensitive]);
    frmpedido_impressao := tfrmpedido_impressao.create(self);
    frmpedido_impressao.showmodal;
  end;


end;

procedure Tfrmpedido.bcancelarClick(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmpedido.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrPedido.cancel;
  frmmodulo.Conexao.Rollback;
end;

procedure Tfrmpedido.balterarClick(Sender: TObject);
begin
  if frmmodulo.qrpedido.FieldByName('SITUACAO').asstring = 'LANÇADO' then
  begin
    showmessage('Este pedido já foi lançado'+chr(13)+chr(10)+'Para modifica-lo Primeiro deve-se estorna-lo!');
    exit;
  end;
  
  frmmodulo.qrPedido.edit;
  pficha.Enabled := true;
  frmpedido.PopupMenu := popedicao;
  pgravar.Visible := true;
  if pficha.enabled then
  ecliente.setfocus;

end;

procedure Tfrmpedido.bexcluirClick(Sender: TObject);
begin


  if frmprincipal.autentica('Excluir Pedido',4) then
  begin


   // Estorno de pedido --------------------------------------------------------

      qrquery2.close;
      qrquery2.sql.clear;
      qrquery2.sql.add('select * from c000049 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
      qrquery2.sql.add('and valor_pago > 0');
      qrquery2.Open;
      if qrquery2.RecordCount > 0 then
      begin
          application.messagebox('Este pedido possue prestações que já foram feito pagamentos! Favor verificar!',
                                 'Aviso',mb_ok+mb_iconerror);
          EXIT;

      end; 

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000049 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000044 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;  

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000123 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000048 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000124 where cod_venda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000115 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000032 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrpedido_produto.Close;
       qrpedido_produto.sql.clear;
       qrpedido_produto.sql.add('select * from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrpedido_produto.open;


        qrpedido_produto.FIRST;
        while NOT  qrpedido_produto.eof do
        begin


              //estorno grade
              if qrpedido_produto.FieldByName('codgrade').asstring <> '' then
              begin
                  frmmodulo.qrgrade_produto.close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrpedido_produto.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
                  frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrpedido_produto.fieldbyname('codgrade').asstring+'''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecordCount > 0 then
                  BEGIN
                      frmmodulo.qrgrade_produto.edit;
                      frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat +
                                                                                  qrpedido_produto.fieldbyname('qtde').asfloat;
                      frmmodulo.qrgrade_produto.post;
                  END;



              end;





              if trim(qrpedido_produto.fieldbyname('serial').asstring) <> '' then
              begin

                qrquery.close;
                qrquery.sql.clear;
                qrquery.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda = :datavenda,');
                qrquery.sql.add('codvenda = :codvenda, precovenda = :precovenda');
                qrquery.sql.add('where serial = '''+qrpedido_produto.fieldbyname('serial').asstring+'''');
                qrquery.sql.add('and codproduto = '''+qrpedido_produto.fieldbyname('codproduto').asstring+'''');
                qrquery.params.Parambyname('situacao').AsInteger  := 1;
                qrquery.params.Parambyname('cliente').AsString    := '';
                qrquery.params.Parambyname('codcliente').AsString := '';
                qrquery.params.Parambyname('DATAVENDA').Clear;
                qrquery.params.Parambyname('codvenda').AsString   := '';
                qrquery.params.Parambyname('precovenda').asfloat  := 0;
                qrquery.execsql;

              end;


          qrpedido_produto.next;
        end;



        //frmmodulo.qrPedido.Edit;
        //frmmodulo.qrPedido.FieldByName('situacao').asstring := '';
        //frmmodulo.qrPedido.post;


   //---------------------------------------------------------------------------





    // Exclusão de pedido ------------------------------------------------------

    //if frmmodulo.qrPedido.FieldByName('situacao').asstring = 'LANÇADO' then
    //   begin
    //     Application.MessageBox('Antes de executar este procedimento deve-se estornar o lançamento!','OPeração abortada',MB_OK);
    //     Exit;
    //   end;



    qrpedido_produto.close;
    qrpedido_produto.sql.clear;
    qrpedido_produto.sql.Add('delete from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
    qrpedido_produto.execsql;

    qrpedido_contasreceber.close;
    qrpedido_contasreceber.sql.clear;
    qrpedido_contasreceber.sql.Add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
    qrpedido_contasreceber.execsql;


    frmmodulo.qrPedido.Delete;


    frmmodulo.Conexao.Commit;


    qrpedido_produto.close;
    qrpedido_produto.sql.clear;
    qrpedido_produto.sql.Add('select * from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
    qrpedido_produto.Open;

    qrpedido_contasreceber.close;
    qrpedido_contasreceber.sql.clear;
    qrpedido_contasreceber.sql.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+''' order by prestacao');
    qrpedido_contasreceber.Open;


    Application.ProcessMessages;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmpedido.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrPedido.prior;
end;

procedure Tfrmpedido.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrPedido.first;
end;

procedure Tfrmpedido.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrPedido.next;
end;

procedure Tfrmpedido.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrPedido.Last;
end;

procedure Tfrmpedido.BitBtn7Click(Sender: TObject);
begin
   frmpedido_impressao := Tfrmpedido_impressao.create(self);
   frmmodulo.qrcliente.open;
   frmmodulo.qrcliente.locate('codigo',frmmodulo.qrPedido.fieldbyname('codcliente').asstring,[loCaseInsensitive]);
   frmpedido_impressao.showmodal;
end;

procedure Tfrmpedido.DBEdit1Change(Sender: TObject);
begin
  try
    qrpedido_produto.close;
    qrpedido_contasreceber.Close;
    if frmmodulo.qrPedido.FieldByName('codigo').AsString <> '' then
    begin
      qrpedido_produto.sql.clear;
      qrpedido_produto.sql.Add('select * from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
      qrpedido_produto.Open;

      qrpedido_contasreceber.sql.clear;
      qrpedido_contasreceber.sql.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+''' order by prestacao');
      qrpedido_contasreceber.Open;

      //rqtde.value := qrpedido_contasreceber.recordcount;

    end;

  except
  end;
end;

procedure Tfrmpedido.blocalizarClick(Sender: TObject);
begin
  codigo_pedido := '';

  frmPedido_localizar := TfrmPedido_localizar.create(self);
  frmPedido_localizar.showmodal;

  if codigo_pedido <> '' then
  frmmodulo.qrPedido.Locate('codigo',codigo_pedido,[loCaseInsensitive]);

end;

procedure Tfrmpedido.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := true;
  ExcluirProduto1.Enabled := true;
end;

procedure Tfrmpedido.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := false;
  ExcluirProduto1.Enabled := false;
end;

procedure Tfrmpedido.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmpedido.rdescontoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrPedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('desconto').asfloat ;

  

  rdesconto1.value := 0;

end;

procedure Tfrmpedido.rdescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then if pficha.enabled then  racrescimo1.setfocus;
end;

procedure Tfrmpedido.racrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    //if pficha.enabled then  combocondpgto.SetFocus;
  end;
end;

procedure Tfrmpedido.DBEDIT2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmpedido.DBEDIT2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmpedido.DBEDIT2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido.DBEDIT6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmpedido.combocondpgtoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmpedido.combocondpgtoExit(Sender: TObject);
var prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;


try
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
        qrpedido_contasreceber.close;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
        qrpedido_contasreceber.ExecSQL;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+''' order by prestacao ');
        qrpedido_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          qrpedido_contasreceber.Insert;
          qrpedido_contasreceber.fieldbyname('codpedido').asstring := frmmodulo.qrPedido.fieldbyname('codigo').asstring;
          qrpedido_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrpedido_contasreceber.FieldByName('vencimento').asdatetime := dbdateedit1.date+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := rtotal.value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);
          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          qrpedido_contasreceber.fieldbyname('valor').asfloat := valor;
          qrpedido_contasreceber.FieldByName('TIPO').asstring := '';
          qrpedido_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        qrpedido_contasreceber.Refresh;

        if pficha.enabled then wwdbgrid2.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
        if pficha.enabled then combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!','Aviso',mb_ok+MB_ICONERROR);
      if pficha.enabled then combocondpgto.setfocus;
    end;
  end
  else
  begin
    edtrqtde.setfocus;
  end;
except

end;



end;

procedure Tfrmpedido.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin

  tedit(sender).color := clwindow;
{

try
  if rqtde.value > 0 then
  begin
        prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := rtotal.value / qtde;

        qrpedido_contasreceber.close;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('delete from c000060P where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
        qrpedido_contasreceber.ExecSQL;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('select * from c000060P where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+''' order by prestacao ');
        qrpedido_contasreceber.open;
        while QTDE <> 0 do
        begin
          qrpedido_contasreceber.Insert;
          qrpedido_contasreceber.fieldbyname('codpedido').asstring := frmmodulo.qrPedido.fieldbyname('codigo').asstring;
          qrpedido_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrpedido_contasreceber.FieldByName('vencimento').asdatetime := incmonth(DBDateEdit1.date,prestacao);
          qrpedido_contasreceber.fieldbyname('valor').asfloat := valor;
          qrpedido_contasreceber.FieldByName('TIPO').asstring := '';
          qrpedido_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;

        qrpedido_contasreceber.Refresh;
      //  wwdbgrid2.SetFocus;
  end;
except
end;
}


end;

procedure Tfrmpedido.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    IF KEY = #13 THEN
    begin
      PageView1.ActivePageIndex := 1;
      if pficha.enabled then dbedit2.setfocus;
    end;
end;

procedure Tfrmpedido.eclienteEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A8FFFF;
  if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;
end;

procedure Tfrmpedido.evendedorEnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A8FFFF;
end;

procedure Tfrmpedido.comboprodutoExit(Sender: TObject);
begin
  Application.ProcessMessages;
  if comboproduto.Text <> '' then
  begin
    if qrproduto.Locate('produto',comboproduto.Text,[loPartialKey]) then
    begin
      qrpedido_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
      qrpedido_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
      qrpedido_produto.fieldbyname('qtde').asfloat := 1;
      qrpedido_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      qrpedido_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
    end
    else
    begin


      frmxloc_produtos := tfrmxloc_produtos.Create(self);
      frmxloc_produtos.ShowModal;

      if RESULTADO_PESQUISA1 <> '' then
         begin
            qrconsulta.Close;
            qrconsulta.SQL.Clear;
            qrconsulta.SQL.Add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codigo = :codigo');
            qrconsulta.Params.ParamByName('codigo').AsString := RESULTADO_PESQUISA1;
            qrconsulta.Open;

            qrpedido_produto.fieldbyname('produto').asstring := qrconsulta.fieldbyname('produto').asstring;
            qrpedido_produto.fieldbyname('codproduto').asstring := qrconsulta.fieldbyname('codigo').asstring;
            qrpedido_produto.fieldbyname('UNIDADE').asstring := qrconsulta.fieldbyname('UNIDADE').asstring;
            qrpedido_produto.fieldbyname('qtde').asfloat := 1;
            qrpedido_produto.fieldbyname('unitario').asfloat := qrconsulta.fieldbyname('precovenda').asfloat;
            qrpedido_produto.fieldbyname('total').asfloat := qrconsulta.fieldbyname('precovenda').asfloat;


         end
      else
         begin
           qrpedido_produto.fieldbyname('codproduto').asstring := '999999';
           qrpedido_produto.fieldbyname('UNIDADE').asstring := 'UN';
           qrpedido_produto.fieldbyname('qtde').asfloat := 1;
           qrpedido_produto.fieldbyname('unitario').asfloat := 0;
           qrpedido_produto.fieldbyname('total').asfloat := 0;
         end;



    end;
  end;
end;

procedure Tfrmpedido.eprodutoExit(Sender: TObject);
begin
  if Eproduto.Text <> '' then
  begin
    qrpedido_produto.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
    if qrproduto.Locate('codigo',eproduto.Text,[loCaseInsensitive]) then
    begin
      qrpedido_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
        qrpedido_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
        qrpedido_produto.fieldbyname('qtde').asfloat := 1;
        qrpedido_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrpedido_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      
    end
    else
    begin
      if qrproduto.Locate('codbarra',eproduto.Text,[loCaseInsensitive]) then
      begin
        qrpedido_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
        qrpedido_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
        qrpedido_produto.fieldbyname('qtde').asfloat := 1;
        qrpedido_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrpedido_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      end
      else
      begin
        application.MessageBox('Produto não cadastrado!','Atenção',mb_ok+MB_ICONWARNING );
        eproduto.Text := '';
      end;
    end;
  end;
end;

procedure Tfrmpedido.qrpedido_produtoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure Tfrmpedido.qrpedido_produtoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qrpedido_produto.fieldbyname('total').asfloat;
end;

procedure Tfrmpedido.BitBtn2Click(Sender: TObject);
begin

  if frmmodulo.qrpedido.FieldByName('SITUACAO').asstring = 'LANÇADO' then
  begin
    showmessage('Pedido já foi lançado!');
    exit;
  end;


  if application.messagebox('Tem certeza que deseja excluir este item?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrpedido_produto.Delete;
  end;

end;

procedure Tfrmpedido.BitBtn1Click(Sender: TObject);
begin
  //if pficha.enabled then rdesconto1.setfocus;

  //IF NOT BGRAVAR.Visible THEN EXIT;

  if frmmodulo.qrPedido.FieldByName('CODVENDEDOR').asstring = '' then
  begin
    showmessage('Não foi informado o vendedor!');
    evendedor.setfocus;
    exit;
  end;


  if frmmodulo.qrPedido.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('Não foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end
  else
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrPedido.fieldbyname('codcliente').asstring,[locaseinsensitive]);
  end;


  qrpedido_produto.FIRST;


  if Application.MessageBox('Deseja realmente lançar este pedido?','Fechamento',MB_YESNO)= 6 then
  begin

    if frmPrincipal.autentica_caixa('Fechamento pedido',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

        //frmped_fechamento := Tfrmped_fechamento.CREATE(SELF);
        //frmped_fechamento.SHOWMODAL;
      END
      ELSE
      BEGIN
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
        EXIT;
      END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
      EXIT;
    end;

  end;


end;

procedure Tfrmpedido.qrpedido_produtoBeforeDelete(DataSet: TDataSet);
begin
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat -
  qrpedido_produto.fieldbyname('total').asfloat;

  frmmodulo.qrPedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('desconto').asfloat ;

end;

procedure Tfrmpedido.eqtdeExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin
    qrpedido_produto.fieldbyname('desconto').asfloat :=
    qrpedido_produto.fieldbyname('pdesconto').asfloat / 100 *
    (qrpedido_produto.fieldbyname('unitario').asfloat  *
    qrpedido_produto.fieldbyname('qtde').asfloat )
    ;

    qrpedido_produto.fieldbyname('acrescimo').asfloat :=
    qrpedido_produto.fieldbyname('pacrescimo').asfloat / 100 *
    (qrpedido_produto.fieldbyname('unitario').asfloat *
    qrpedido_produto.fieldbyname('qtde').asfloat);


    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmpedido.eunitarioExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin


    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmpedido.edescontoExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin

    qrpedido_produto.fieldbyname('pdesconto').asfloat :=
    qrpedido_produto.fieldbyname('desconto').asfloat /
    (qrpedido_produto.fieldbyname('unitario').asfloat *
    qrpedido_produto.fieldbyname('qtde').asfloat)* 100;


    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmpedido.eacrescimoExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin

    qrpedido_produto.fieldbyname('pacrescimo').asfloat :=
    qrpedido_produto.fieldbyname('acrescimo').asfloat /
    (qrpedido_produto.fieldbyname('unitario').asfloat *
    qrpedido_produto.fieldbyname('qtde').asfloat) * 100;


    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmpedido.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if rdesconto1.value > 0 then
  begin
    frmmodulo.qrPedido.fieldbyname('desconto').asfloat :=
    rsubtotal.value *
    (rdesconto1.value / 100);


  frmmodulo.qrpedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('desconto').asfloat ;
  if pficha.enabled then racrescimo1.setfocus;
  end;
end;

procedure Tfrmpedido.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrPedido.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;

  if pficha.enabled then evendedor.setfocus;
end;

procedure Tfrmpedido.evendedorButtonClick(Sender: TObject);
begin
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrPedido.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  if pficha.enabled then wwdbgrid1.SetFocus;
end;

procedure Tfrmpedido.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrPedido.State <> dsedit then if frmmodulo.qrPedido.State <> dsinsert then exit;

    frmmodulo.qrPedido.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.Text,6);

    if ecliente.text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+eCliente.text+'''');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.recordcount = 0 then
      begin
        application.messagebox('Cliente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        eCliente.Text := '';
        if pficha.enabled then eCliente.setfocus;
        exit;
      end
      else
         Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      eClienteButtonClick(frmPedido);
    end;
  end;
end;

procedure Tfrmpedido.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmpedido.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if racrescimo1.value > 0 then
  begin
    frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat :=
    rsubtotal.value *
    (racrescimo1.value / 100);


  frmmodulo.qrPedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat ;
  if pficha.enabled then racrescimo.setfocus;
  end;
end;

procedure Tfrmpedido.racrescimoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrPedido.fieldbyname('total').asfloat :=
  frmmodulo.qrPedido.fieldbyname('subtotal').asfloat +
  frmmodulo.qrPedido.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrPedido.fieldbyname('desconto').asfloat ;

  if pficha.enabled then racrescimo1.value := 0;
end;

procedure Tfrmpedido.babrirClick(Sender: TObject);
begin
  frmPedido_Abrir := tfrmpedido_abrir.create(self);
  frmPedido_Abrir.showmodal;
end;

procedure Tfrmpedido.qrpedido_produtoCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrpedido_produto.fieldbyname('CODPRODUTO').asstring+'''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrpedido_produto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrpedido_produto.fieldbyname('estoque').asfloat := 0;
end;

procedure Tfrmpedido.QRPRODUTOCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('CODIGO').asstring+'''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrproduto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrproduto.fieldbyname('estoque').asfloat := 0;
end;

procedure Tfrmpedido.edtrqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin

  tedit(sender).color := clwindow;
try
  if edtrqtde.value > 0 then
  begin
        prestacao := 1;
        qtde := trunc(edtrqtde.value);

        VALOR := rtotal.value / qtde;

        qrpedido_contasreceber.close;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+'''');
        qrpedido_contasreceber.ExecSQL;
        qrpedido_contasreceber.sql.clear;
        qrpedido_contasreceber.SQL.Add('select * from c000060PEDIDO where codpedido = '''+frmmodulo.qrpedido.fieldbyname('codigo').asstring+''' order by prestacao ');
        qrpedido_contasreceber.open;
        while QTDE <> 0 do
        begin
          qrpedido_contasreceber.Insert;
          qrpedido_contasreceber.fieldbyname('codpedido').asstring := frmmodulo.qrpedido.fieldbyname('codigo').asstring;
          qrpedido_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrpedido_contasreceber.FieldByName('vencimento').asdatetime := incmonth(DBDateEdit1.date,prestacao);
          qrpedido_contasreceber.fieldbyname('valor').asfloat := valor;
          qrpedido_contasreceber.FieldByName('TIPO').asstring := '';
          qrpedido_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;

        qrpedido_contasreceber.Refresh;
      //  wwdbgrid2.SetFocus;
  end;
except
end;
end;

procedure Tfrmpedido.edtrqtdeEnter(Sender: TObject);
begin
tedit(sender).color := $00A8FFFF;
end;


function Tfrmpedido.loc_produto(parametro:string):boolean;
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




procedure Tfrmpedido.btn3Click(Sender: TObject);
begin


 if frmmodulo.qrPedido.RecordCount = 0 then exit;

 if frmprincipal.autentica('Cancelar NF',4) then
  begin

    if Application.MessageBox('Deseja realmente estornar lançamentos?','',MB_YESNO) = 6 then
    begin

      //cancela := false;

      //frmnotafiscal_cancelar := tfrmnotafiscal_cancelar.create(self);
      //frmnotafiscal_cancelar.showmodal;

      //if not cancela then exit;



      qrquery2.close;
      qrquery2.sql.clear;
      qrquery2.sql.add('select * from c000049 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
      qrquery2.sql.add('and valor_pago > 0');
      qrquery2.Open;
      if qrquery2.RecordCount > 0 then
      begin
          application.messagebox('Este pedido possue prestações que já foram feito pagamentos! Favor verificar!',
                                 'Aviso',mb_ok+mb_iconerror);
          EXIT;

      end;



       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000060PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;


       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000049 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000044 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;


       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000123 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000048 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000124 where cod_venda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000115 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrquery2.close;
       qrquery2.sql.clear;
       qrquery2.sql.add('delete from c000032 where codvenda = ''P'+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrquery2.execsql;

       qrpedido_produto.Close;
       qrpedido_produto.sql.clear;
       qrpedido_produto.sql.add('select * from c000057PEDIDO where codpedido = '''+frmmodulo.qrPedido.fieldbyname('codigo').asstring+'''');
       qrpedido_produto.open;


        qrpedido_produto.FIRST;
        while NOT  qrpedido_produto.eof do
        begin



              if qrpedido_produto.FieldByName('codgrade').asstring <> '' then
              begin
                  frmmodulo.qrgrade_produto.close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrpedido_produto.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
                  frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrpedido_produto.fieldbyname('codgrade').asstring+'''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecordCount > 0 then
                  BEGIN
                      frmmodulo.qrgrade_produto.edit;
                      frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                                  qrpedido_produto.fieldbyname('qtde').asfloat;
                      frmmodulo.qrgrade_produto.post;
                  END;



              end;





              if trim(qrpedido_produto.fieldbyname('serial').asstring) <> '' then
              begin

                qrquery.close;
                qrquery.sql.clear;
                qrquery.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda = :datavenda,');
                qrquery.sql.add('codvenda = :codvenda, precovenda = :precovenda');
                qrquery.sql.add('where serial = '''+qrpedido_produto.fieldbyname('serial').asstring+'''');
                qrquery.sql.add('and codproduto = '''+qrpedido_produto.fieldbyname('codproduto').asstring+'''');
                qrquery.params.Parambyname('situacao').AsInteger  := 1;
                qrquery.params.Parambyname('cliente').AsString    := '';
                qrquery.params.Parambyname('codcliente').AsString := '';
                qrquery.params.Parambyname('DATAVENDA').Clear;
                qrquery.params.Parambyname('codvenda').AsString   := '';
                qrquery.params.Parambyname('precovenda').asfloat  := 0;
                qrquery.execsql;

              end;


          qrpedido_produto.next;
        end;

        frmmodulo.qrPedido.Edit;
        frmmodulo.qrPedido.FieldByName('situacao').asstring := '';
        frmmodulo.qrPedido.post;

        frmmodulo.Conexao.Commit;
        Application.ProcessMessages;
    end;
  end
 else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;







procedure Tfrmpedido.pacrescimoExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin
    //qrpedido_produto.fieldbyname('desconto').asfloat :=
    //qrpedido_produto.fieldbyname('pdesconto').asfloat / 100 *
    //(qrpedido_produto.fieldbyname('unitario').asfloat *
    //qrpedido_produto.fieldbyname('qtde').asfloat );

    qrpedido_produto.fieldbyname('acrescimo').asfloat :=
    qrpedido_produto.fieldbyname('pacrescimo').asfloat / 100 *
    qrpedido_produto.fieldbyname('unitario').asfloat *
    qrpedido_produto.fieldbyname('qtde').asfloat;

    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;

end;

procedure Tfrmpedido.pdescontoExit(Sender: TObject);
begin
  if (qrpedido_produto.State = dsedit) or (qrpedido_produto.State = dsinsert) then
  begin
    qrpedido_produto.fieldbyname('desconto').asfloat :=
    qrpedido_produto.fieldbyname('pdesconto').asfloat / 100 *
    (qrpedido_produto.fieldbyname('unitario').asfloat *
    qrpedido_produto.fieldbyname('qtde').asfloat);

    //qrpedido_produto.fieldbyname('acrescimo').asfloat :=
    //qrpedido_produto.fieldbyname('pacrescimo').asfloat / 100 *
    //qrpedido_produto.fieldbyname('unitario').asfloat;


    qrpedido_produto.fieldbyname('total').asfloat :=
    (qrpedido_produto.fieldbyname('qtde').asfloat *
    qrpedido_produto.fieldbyname('unitario').asfloat) -
    qrpedido_produto.fieldbyname('desconto').asfloat +
    qrpedido_produto.fieldbyname('acrescimo').asfloat ;
  end;

end;

end.

unit venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Collection, StdCtrls, ScrollView,
  CustomGridViewControl, CustomGridView, GridView, Grids, Wwdbigrd,
  Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Mask,
  ToolEdit, CurrEdit, Buttons, Menus, AdvGlowButton, AdvShapeButton,
  IBDatabase, IBCustomDataSet, IBQuery, IBUpdateSQL, MemDS, DBAccess, IBC;

type
  Tfrmvenda = class(TForm)
    dsvenda_produto: TDataSource;
    PopupMenu1: TPopupMenu;
    IncluirItem1: TMenuItem;
    ExcluirItem1: TMenuItem;
    N1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    CancelarVenda1: TMenuItem;
    qrproduto_serial: TZQuery;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    Oramentos1: TMenuItem;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioCF: TStringField;
    qrapoioSTR: TStringField;
    qrapoioUN: TStringField;
    qrapoioQTDE: TStringField;
    qrapoioUNITARIO: TStringField;
    qrapoioTOTAL: TStringField;
    qrapoioICMS: TStringField;
    qrapoioIPI: TStringField;
    qrapoioIPI_ALIQUOTA: TStringField;
    qrapoioTEXTO1: TStringField;
    qrapoioTEXTO2: TStringField;
    qrapoioTEXTO3: TStringField;
    qrapoioTEXTO4: TStringField;
    qrapoioTEXTO6: TStringField;
    qrapoioTEXTO7: TStringField;
    qrapoioTEXTO8: TStringField;
    qrapoioTEXTO9: TStringField;
    qrapoioTEXTO10: TStringField;
    EfetuarTroca1: TMenuItem;
    pficha: TPanel;
    Bevel10: TBevel;
    FlatPanel57: TFlatPanel;
    Bevel2: TBevel;
    Panel3: TPanel;
    bfinalizar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    bincluir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Panel4: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Bevel3: TBevel;
    ritem: TRxCalcEdit;
    rqtde: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    wwDBGrid1: TwwDBGrid;
    Bevel4: TBevel;
    Panel5: TPanel;
    Bevel6: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel5: TBevel;
    Label4: TLabel;
    lvenda_codigo: TLabel;
    Label1: TLabel;
    Bevel7: TBevel;
    lvenda_data: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel8: TBevel;
    lcaixa_codigo: TLabel;
    Bevel9: TBevel;
    lvendedor_codigo: TLabel;
    lvendedor_nome: TLabel;
    Bevel11: TBevel;
    AdvShapeButton2: TAdvShapeButton;
    Label2: TLabel;
    Bevel12: TBevel;
    lcliente_codigo: TLabel;
    lcliente_nome: TLabel;
    Label3: TLabel;
    Bevel13: TBevel;
    Label7: TLabel;
    Bevel14: TBevel;
    Label8: TLabel;
    Bevel15: TBevel;
    lcliente_limite: TLabel;
    lcliente_cpf: TLabel;
    LRETIRADO: TLabel;
    FlatPanel6: TFlatPanel;
    Label15: TLabel;
    FlatPanel9: TFlatPanel;
    FlatPanel10: TFlatPanel;
    pveiculo: TFlatPanel;
    FlatPanel2: TFlatPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Label9: TLabel;
    qrcliente: tzquery;
    qrvenda_produto1: tzquery;
    qrvenda_contasreceber: tzquery;
    qrvenda_produto1ITEM: TStringField;
    qrvenda_produto1CODPRODUTO: TStringField;
    qrvenda_produto1PRODUTO: TStringField;
    qrvenda_produto1CST: TStringField;
    qrvenda_produto1NUMERACAO: TStringField;
    qrvenda_produto1SERIAL: TStringField;
    qrvenda_produto1QTDE: TFloatField;
    qrvenda_produto1UNITARIO: TFloatField;
    qrvenda_produto1TOTAL: TFloatField;
    qrvenda_produto1ALIQUOTA: TFloatField;
    qrvenda_produto1MIX: TFloatField;
    qrvenda_produto1CODGRADE: TStringField;
    qrvenda_produto1CODBARRAS: TStringField;
    qrvenda_produto1DESCONTO: TFloatField;
    qrvenda_produto1ACRESCIMO: TFloatField;
    qrvenda_produto1TIPO: TIntegerField;
    qrvenda_produto1TERMINAL: TStringField;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrvenda_contasreceberTERMINAL: TStringField;
    Label10: TLabel;
    Bevel16: TBevel;
    lvenda_cupom: TLabel;
    PTEF: TFlatPanel;
    qrvenda_produto: TZQuery;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoTIPO: TIntegerField;
    qrvenda_produtoALIQUOTA: TFloatField;
    qrvenda_produtoCST: TStringField;
    qrvenda_produtoTERMINAL: TStringField;
    qrvenda_produtomix: TFloatField;
    qrvenda_produtoPISCOFINS: TStringField;
    qrvenda_produtoCODSUBGRUPO: TStringField;
    procedure bincluirClick(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bexcluirEnter(Sender: TObject);
    procedure bexcluirExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrvenda_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrapoioBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrvenda_produto1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda: Tfrmvenda;
  selecionado : boolean;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  CONTINUAR : BOOLEAN;
  cupom_fiscal : boolean;
  nome_condicao:string;
  cod_apoio : integer;

  observ : string;

  finalizou : boolean;

  item : integer;
  numero_terminal : string;



implementation

uses modulo, venda_fechamento, venda_contasreceber,
  venda_troca, venda_fechamento_especial, venda_item_2, ecf, principal,
  venda_devolucao;

{$R *.dfm}

procedure Tfrmvenda.bincluirClick(Sender: TObject);
var item, qtde, total : real;
begin

   frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
     IF VENDA_VEICULO THEN
     BEGIN
       application.messagebox('Venda de veículo não pode conter outros produtos!','Atenção',mb_ok+mb_iconerror);
       exit;
     END;
  END;


        frmvenda_item_2 := tfrmvenda_item_2.create(self);
        frmvenda_item_2.showmodal;


  qtde := 0; total := 0; item := 0;
  qrvenda_produto.First;
  while not qrvenda_produto.eof do
  begin
    qtde := qtde + qrvenda_produto.fieldbyname('qtde').asfloat;
    total := total + qrvenda_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qrvenda_produto.next;
  end;
  ritem.Value := item;
  rqtde.Value := qtde;
  rtotal.Value := total;

  qrvenda_produto.Refresh;

end;

procedure Tfrmvenda.bfinalizarClick(Sender: TObject);
begin

  jafinalizado := FALSE;
  finalizou := false;

  IF ECF_MODELO = 'URANO' THEN
  numero_cupomx := ecf_numero_cupom(ecf_modelo);

  if rtotal.value <= 0 then
  begin
    frmvenda_fechamento_especial := tfrmvenda_fechamento_especial.create(self);
    frmvenda_fechamento_especial.rcredito.value := (rtotal.value)*(-1);
    frmvenda_fechamento_especial.showmodal;
  end
  else
  begin
    frmvenda_fechamento := tfrmvenda_fechamento.create(self);
    frmVENDA_fechamento.showmodal;
  end;
  
  if finalizou then close;
end;

procedure Tfrmvenda.bcancelarClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a cancelamento desta venda?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    if ecf_impressao = 1 then ecf_cancela_cupom(ecf_modelo,'V');
      qrvenda_produto.first;
      while not qrvenda_produto.eof do
      begin
        if qrvenda_produto.fieldbyname('tipo').asinteger = 1 then // serial
        begin
          frmmodulo.qrserial_produto.Close;
          frmmodulo.qrserial_produto.sql.Clear;
          frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''+qrvenda_produto.fieldbyname('codproduto').asstring+''' and serial = '''+qrvenda_produto.fieldbyname('serial').asstring+'''');
          frmmodulo.qrserial_produto.ExecSQL;
        end;
        if qrvenda_produto.fieldbyname('tipo').asinteger = 2 then // grade
        begin
          frmmodulo.qrgrade_produto.close;
          frmmodulo.qrgrade_produto.sql.clear;
          frmmodulo.qrgrade_produto.sql.add('update c000021 set estoque = estoque+'+qrvenda_produto.fieldbyname('qtde').asstring+' where codigo = '''+qrvenda_produto.fieldbyname('codgrade').asstring+'''');
          frmmodulo.qrgrade_produto.execsql;
        end;
        qrvenda_produto.next;
      end;
    frmmodulo.Conexao.commit;
    frmmodulo.ConexaoLocal.Rollback;
    close;
  end;
end;

procedure Tfrmvenda.bexcluirEnter(Sender: TObject);
begin
wwdbgrid1.options :=  [dgColumnResize,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgWordWrap];



end;

procedure Tfrmvenda.bexcluirExit(Sender: TObject);
begin
wwdbgrid1.Options := [dgColumnResize,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
end;

procedure Tfrmvenda.FormShow(Sender: TObject);
begin


  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('ALTERAR_UNITARIO').ASINTEGER = 1 THEN ALTERA_UNITARIO := FALSE
  ELSE ALTERA_UNITARIO := TRUE;


   if USA_TEF then
   begin
    ptef.Enabled := true;
    ptef.Color := $0000F900;
   end
   else
   begin
     ptef.Enabled := false;
   end;


  VENDA_VEICULO := FALSE;


  item := 1;

  cupom_fiscal := false;


  if movimento_venda = 1 then  // inclusao;
  begin
    lancando_contasreceber := false;

    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;

    Sleep(100);

    qrvenda_produto.sql.clear;
    qrvenda_produto.SQL.add('select * from cl00001 where terminal = '''+numero_terminal+''' ORDER BY ITEM');
    qrvenda_produto.open;

    if qrvenda_produto.RecordCount > 0 then
      begin
        //ShowMessage('A');

        Sleep(100);
        qrvenda_produto.close;
        qrvenda_produto.sql.clear;
        qrvenda_produto.sql.add('delete from cl00001 where terminal = '''+numero_terminal+'''');
        qrvenda_produto.ExecSQL;
      end;

    Sleep(100);
    qrvenda_produto.sql.clear;
    qrvenda_produto.SQL.add('select * from cl00001 where terminal = '''+numero_terminal+''' ORDER BY ITEM');
    qrvenda_produto.open;

    qrvenda_contasreceber.close;
    qrvenda_contasreceber.sql.clear;
    qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
    qrvenda_contasreceber.ExecSQL;

    rtotal.value := 0;
    ritem.Value := 0;
    rqtde.Value := 0;

    Application.ProcessMessages;


  end;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from c000007 where codigo = '''+lcliente_codigo.Caption+'''');
  qrcliente.open;

  bincluir.setfocus;

end;

procedure Tfrmvenda.bexcluirClick(Sender: TObject);
var
  vitem : integer;
begin

      if qrvenda_produto.fieldbyname('tipo').asinteger = 21 then // troca saida serial
      begin
        showmessage('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
        exit;
      end;
      if qrvenda_produto.fieldbyname('tipo').asinteger = 22 then // troca saida grade
      begin
        showmessage('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
        exit;
     end;
     if qrvenda_produto.fieldbyname('tipo').asinteger = 11 then // troca entrada serial
     begin
       showmessage('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
       exit;
     end;
     if qrvenda_produto.fieldbyname('tipo').asinteger = 12 then // troca entrada grade
     begin
       showmessage('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
       exit;
     end;





  if application.messagebox('Confirma a exclusão do registro?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin

    if ecf_impressao = 1 then
    begin

      if ecf_cancela_item(ecf_modelo,qrvenda_produto.fieldbyname('item').asstring) = 'ERRO' then
      begin
       application.messagebox('Houve erro ao cancelar o item!','Atenção',mb_ok+mb_iconerror);
      end
      else
      begin
        if qrvenda_produto.fieldbyname('tipo').asinteger = 1 then // serial
        begin
          frmmodulo.qrserial_produto.Close;
          frmmodulo.qrserial_produto.sql.Clear;
          frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''+qrvenda_produto.fieldbyname('codproduto').asstring+''' and serial = '''+qrvenda_produto.fieldbyname('serial').asstring+'''');
          frmmodulo.qrserial_produto.ExecSQL;
        end;
        if qrvenda_produto.fieldbyname('tipo').asinteger = 2 then // grade
        begin
          frmmodulo.qrgrade_produto.close;
          frmmodulo.qrgrade_produto.sql.clear;
          frmmodulo.qrgrade_produto.sql.add('update c000021 set estoque = estoque+'+qrvenda_produto.fieldbyname('qtde').asstring+' where codigo = '''+qrvenda_produto.fieldbyname('codgrade').asstring+'''');
          frmmodulo.qrgrade_produto.execsql;
        end;
      end;


      rtotal.value := rtotal.value - qrvenda_produto.fieldbyname('total').asfloat;
      ritem.Value  := ritem.Value - 1;
      rqtde.Value  := rqtde.value - qrvenda_produto.fieldbyname('qtde').asfloat;


      

      qrvenda_produto.Delete;
      qrvenda_produto.open;



    end
    else
    begin




      if qrvenda_produto.fieldbyname('tipo').asinteger = 1 then // serial
      begin
        frmmodulo.qrserial_produto.Close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''+qrvenda_produto.fieldbyname('codproduto').asstring+''' and serial = '''+qrvenda_produto.fieldbyname('serial').asstring+'''');
        frmmodulo.qrserial_produto.ExecSQL;
      end;
      if qrvenda_produto.fieldbyname('tipo').asinteger = 2 then // grade
      begin
        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.clear;
        frmmodulo.qrgrade_produto.sql.add('update c000021 set estoque = estoque+'+qrvenda_produto.fieldbyname('qtde').asstring+' where codigo = '''+qrvenda_produto.fieldbyname('codgrade').asstring+'''');
        frmmodulo.qrgrade_produto.execsql;
      end;



      rtotal.value := rtotal.value - qrvenda_produto.fieldbyname('total').asfloat;
      ritem.Value  := ritem.Value - 1;
      rqtde.Value  := rqtde.value - qrvenda_produto.fieldbyname('qtde').asfloat;

      qrvenda_produto.Delete;
      qrvenda_produto.open;




      vitem := 0;
      qrvenda_produto.First;
      while not qrvenda_produto.Eof do
      begin
        vitem := vitem + 1;
        qrvenda_produto.Edit;
        qrvenda_produto.FieldByName('item').Asstring := frmprincipal.zerarcodigo(inttostr(vitem),3);
        qrvenda_produto.Post;
        qrvenda_produto.Next;
      end;
      qrvenda_produto.open;
      end;
  end;

     frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
    if qrvenda_produto.RecordCount = 0 then
    begin
      venda_veiculo := false;
      pveiculo.visible := false;
    end;
  END;


end;

procedure Tfrmvenda.FormCreate(Sender: TObject);
begin
  qrvenda_produtoQTDE.DisplayFormat := mascara_qtde;
  rqtde.DisplayFormat := mascara_qtde;
  rqtde.DecimalPlaces := decimal_qtde;

  qrvenda_produtoUNITARIO.DisplayFormat := mascara_valor;
end;

procedure Tfrmvenda.qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
begin
   valor_prestacao := 0;
end;

procedure Tfrmvenda.qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrvenda_contasreceber.fieldbyname('valor').asfloat;
end;

procedure Tfrmvenda.qrvenda_contasreceberAfterPost(DataSet: TDataSet);
begin

  if lancando_contasreceber then
  begin

   frmvenda_contasreceber.rsoma.value :=
   frmvenda_contasreceber.rsoma.value +
   qrvenda_contasreceber.fieldbyname('valor').asfloat -
   valor_prestacao;

   frmvenda_contasreceber.rdiferenca.Value :=
   (frmvenda_fechamento.rCREDIARIO.value +frmvenda_fechamento.rCONVENIO.value ) - frmvenda_contasreceber.rsoma.value;

   if (frmvenda_contasreceber.rdiferenca.value < (0.009)) and (frmvenda_contasreceber.rdiferenca.value > (-0.009)) then
     frmvenda_contasreceber.rdiferenca.Value := 0;
  end;

end;

procedure Tfrmvenda.qrapoioBeforePost(DataSet: TDataSet);
begin
  qrapoio.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(cod_apoio),6);
  cod_apoio := cod_apoio + 1;
end;

procedure Tfrmvenda.BitBtn1Click(Sender: TObject);
var item, qtde, total : real;
begin



//  frmvenda_troca := tfrmvenda_troca.create(self);
//  frmvenda_troca.showmodal;

//  qtde := 0; total := 0; item := 0;

//  qrvenda_produto.First;
//  while not qrvenda_produto.eof do
//  begin
//    qtde := qtde + qrvenda_produto.fieldbyname('qtde').asfloat;
//    total := total + qrvenda_produto.fieldbyname('total').asfloat;
//    item := item + 1;
//    qrvenda_produto.next;
//  end;
//  ritem.Value := item;
//  rqtde.Value := qtde;
//  rtotal.Value := total;

//  qrvenda_produto.Refresh;



        frmvenda_devolucao := tfrmvenda_devolucao.create(application);
        try
          frmvenda_devolucao.showmodal;
        finally
          frmvenda_devolucao.Release;
          frmvenda_devolucao := nil;
        end;





  qtde := 0; total := 0; item := 0;
  qrvenda_produto.First;
  while not qrvenda_produto.eof do
  begin
    qtde := qtde + qrvenda_produto.fieldbyname('qtde').asfloat;
    total := total + qrvenda_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qrvenda_produto.next;
  end;
  ritem.Value := item;
  rqtde.Value := qtde;
  rtotal.Value := total;

  qrvenda_produto.Refresh;

  bincluir.setfocus;



end;

procedure Tfrmvenda.qrvenda_contasreceberBeforePost(DataSet: TDataSet);
begin
  QRVENDA_CONTASRECEBER.FIELDBYNAME('TERMINAL').ASSTRING := NUMERO_TERMINAL;
end;

procedure Tfrmvenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
   qrvenda_produto.afterPost := nil;
   qrvenda_produto.BeforePost := nil;
   qrvenda_produto.OnCalcFields := nil;
   qrvenda_contasreceber.AfterPost := nil;
   qrvenda_contasreceber.BeforeEdit := nil;
   qrvenda_contasreceber.BeforeInsert := nil;
   qrvenda_contasreceber.BeforePost := nil;
   qrapoio.BeforePost := nil;
 except
 end;
 action := cafree;
end;

procedure Tfrmvenda.qrvenda_produto1CalcFields(DataSet: TDataSet);
begin
  IF rQTDE.VALUE <> 0 THEN
  BEGIN
    IF qrvenda_produtoQTDE.Value <> 0 THEN qrvenda_produtoMIX.Value := qrvenda_produtoQTDE.Value * 100 / RQTDE.VALUE;
  END;
end;

end.





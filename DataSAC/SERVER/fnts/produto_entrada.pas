unit produto_entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, ImgList, frxDesgn, frxClass, frxDBSet,
  AdvGlowButton;

type
  Tfrmproduto_entrada = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dsentrada_produto2: TDataSource;
    qrentrada_produto: TZQuery;
    Relatrios1: TMenuItem;
    dsentrada_produto: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    ecfop: TDBEdit;
    bloccfop: TBitBtn;
    DBEdit21: TDBEdit;
    Label6: TLabel;
    efornecedor: TDBEdit;
    blocfornecedor: TBitBtn;
    DBEdit23: TDBEdit;
    panel22: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    qrentrada_item: TZQuery;
    qrentrada_itemCODIGO: TStringField;
    qrentrada_itemCODNOTA: TStringField;
    qrentrada_itemCODPRODUTO: TStringField;
    qrentrada_itemQTDE: TFloatField;
    qrentrada_itemUNITARIO: TFloatField;
    qrentrada_itemTOTAL: TFloatField;
    qrentrada_itemICMS: TFloatField;
    qrentrada_itemIPI: TFloatField;
    qrentrada_itemCFOP: TStringField;
    qrentrada_itemDATA: TDateTimeField;
    qrentrada_itemNUMERONOTA: TStringField;
    dsentrada_item: TDataSource;
    qrentrada_itemproduto: TStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    FlatPanel3: TFlatPanel;
    Label17: TLabel;
    DBText1: TDBText;
    grid1: TwwDBGrid;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    qrentrada_itemCODCLIENTE: TStringField;
    qrentrada_itemDESCONTO: TFloatField;
    qrentrada_itemACRESCIMO: TFloatField;
    qrentrada_itemMOVIMENTO: TIntegerField;
    qrentrada_itemCODVENDEDOR: TStringField;
    panel_item: TFlatPanel;
    qrnf: TZQuery;
    qrentrada_produtoCODIGO: TStringField;
    qrentrada_produtoNUMERO: TStringField;
    qrentrada_produtoCODFORNECEDOR: TStringField;
    qrfornecedor: TZQuery;
    qrentrada_produtoCODIGO2: TStringField;
    qrentrada_produtoNUMERO2: TStringField;
    qrentrada_produtoCFOP: TStringField;
    qrentrada_produtoDATA: TDateTimeField;
    qrentrada_produtoCODFORNECEDOR2: TStringField;
    qrentrada_produtoVALOR_PRODUTOS: TFloatField;
    qrentrada_produtoTOTAL_NOTA: TFloatField;
    qrentrada_produtoBASE_CALCULO: TFloatField;
    qrentrada_produtoVALOR_ICMS: TFloatField;
    qrentrada_produtoBASE_SUB: TFloatField;
    qrentrada_produtoICMS_SUB: TFloatField;
    qrentrada_produtoFRETE: TFloatField;
    qrentrada_produtoSEGURO: TFloatField;
    qrentrada_produtoOUTRAS_DESPESAS: TFloatField;
    qrentrada_produtoVALOR_TOTAL_IPI: TFloatField;
    qrentrada_produtoITENS: TIntegerField;
    qrentrada_produtoDESCONTO: TFloatField;
    qrentrada_produtofornecedor: TStringField;
    qrentrada_itemunidade: TStringField;
    Finalizar1: TMenuItem;
    Panel3: TPanel;
    qrgrade_entrada: TZQuery;
    qrserial_produto: TZQuery;
    qrcontaspagar: TZQuery;
    ImageList1: TImageList;
    dscontaspagar: TDataSource;
    wwDBGrid1: TwwDBGrid;
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
    qrcontaspagarESPECIE: TStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TStringField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TStringField;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    qrentrada_itemCODGRADE: TStringField;
    qrentrada_itemSERIAL: TStringField;
    qrentrada_itemVALOR_ICMS: TFloatField;
    qrentrada_itemICMS_REDUZIDO: TFloatField;
    qrentrada_itemBASE_CALCULO: TFloatField;
    qrentrada_itemVALOR_IPI: TFloatField;
    HeaderView1: THeaderView;
    bfechar: TAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    blocalizar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    FlatPanel1: TFlatPanel;
    rnome: TRadioButton;
    rcodigo: TRadioButton;
    rapelido: TRadioButton;
    bloc: TAdvGlowButton;
    bincluir_item: TAdvGlowButton;
    balterar_item: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    Bevel1: TBevel;
    qrentrada_itemMOVIMENTO_ESTOQUE: TFloatField;
    bimportar: TAdvGlowButton;
    ImportarNF1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rnomeKeyPress(Sender: TObject; var Key: Char);
    procedure rcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure bloccfopClick(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure balterar_itemClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure rapelidoClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrentrada_itemBeforePost(DataSet: TDataSet);
    procedure bimportarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_entrada: Tfrmproduto_entrada;
  comando : string;
  procura_produtos : boolean;
  valor_nota : real;


  conf_valor_produtos : real;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_cfop,
  loc_fornecedor, produto_entrada_item, Math, contaspagar_ficha_entrada,
  xloc_fornecedor, produto_importanf;

{$R *.dfm}


procedure Tfrmproduto_entrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin



  if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
      bcancelarclick(frmproduto_entrada);
  qrentrada_item.close;
  procura_produtos := false;
  frmmodulo.qrentrada_produto.Close;
  action := cafree;
end;

procedure Tfrmproduto_entrada.FormShow(Sender: TObject);
begin


  panel_item.top := 194;
  panel_item.left := 4;


  pgravar.visible := false;
  pgravar.Align := alClient;
  plocalizar2.Align := alclient;
  plocalizar1.Align := alclient;
//  plocalizar1.Align := alnone;



  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 where tipo = 1 order by NATUREZA');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';

  frmmodulo.qrentrada_produto.close;
  frmmodulo.qrentrada_produto.SQL.clear;
  frmmodulo.qrentrada_produto.SQL.add('select * from c000031 order by codigo');
  frmmodulo.qrentrada_produto.open;

  if frmmodulo.qrentrada_produto.RecordCount > 0 then
      begin
        qrentrada_item.close;
        qrentrada_item.sql.clear;
        qrentrada_item.SQL.add('select * from c000032 where codnota = '''+frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring+''' and movimento = 1 order by codigo');
        qrentrada_item.open;
      end
  else
      begin
        qrentrada_item.close;
        qrentrada_item.sql.clear;
        qrentrada_item.SQL.add('select * from c000032 where codnota = '''+'''');
        qrentrada_item.open;
      end;



  pficha.Enabled := false;
  bincluir.SetFocus;

  procura_produtos := true;
end;

procedure Tfrmproduto_entrada.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_entrada.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_entrada.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';

  

  frmmodulo.qrentrada_produto.insert;
  frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000031');

        qrentrada_item.close;
        qrentrada_item.sql.clear;
        qrentrada_item.SQL.add('select * from c000032 where codnota = '''+frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring+''' and movimento = 1 order by codigo');
        qrentrada_item.open;

  pficha.Enabled := true;

  dbedit2.setfocus;
  pgravar.Visible := true;

     panel1.Enabled := true;
     panel2.Enabled := true;
     panel_item.visible := false;

  PopupMenu := pop2;
end;

procedure Tfrmproduto_entrada.balterarClick(Sender: TObject);
begin

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';

  IF dbedit2.Text <> '' THEN
  BEGIN
     panel2.Enabled := true;
     panel1.Enabled := true;
     panel_item.visible := false;


    frmmodulo.qrentrada_produto.Edit;
    pficha.Enabled := true;
    dbedit2.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmproduto_entrada.bexcluirClick(Sender: TObject);
begin
   if frmprincipal.autentica('Excluir Entrada',4) then
  begin
    qrserial_produto.Close;
    qrserial_produto.SQL.clear;
    qrserial_produto.SQL.add('select * from c000022 where codnota = '''+frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring+''' and situacao > 1');
    qrserial_produto.open;
    if qrserial_produto.RecordCount = 0 then
    begin
      while qrentrada_item.RecordCount <> 0 do
      begin
        if frmmodulo.qrproduto.Locate('codigo',qrentrada_item.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
        begin
          frmmodulo.qrproduto.edit;
          frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring;
          frmmodulo.qrproduto.FieldByName('notafiscal').asstring        := frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring;
          frmmodulo.qrproduto.FieldByName('codfornecedor').asstring     := frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring;
          frmmodulo.qrproduto.Post;
        end;
        qrgrade_entrada.Close;
        qrgrade_entrada.SQL.clear;
        qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
        qrgrade_entrada.Open;

        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.clear;
        frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+dsentrada_item.dataset.fieldbyname('codproduto').asstring+'''');
        frmmodulo.qrgrade_produto.open;

        while qrgrade_entrada.RecordCount <> 0 do
        BEGIN
          if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
          begin
            frmmodulo.qrgrade_produto.edit;
            frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                      qrgrade_entrada.FieldByName('qtde').asfloat;
            frmmodulo.qrgrade_produto.post;
          end;
          qrgrade_entrada.delete;
        END;
        qrserial_produto.Close;
        qrserial_produto.SQL.clear;
        qrserial_produto.SQL.add('delete from c000022 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
        qrserial_produto.ExecSQL;
        qrentrada_item.delete;
      end;
      frmmodulo.qrentrada_produto.Delete;
      frmmodulo.Conexao.commit;
    end
    else
    begin
       Application.messagebox('Esta nota possue produtos com seriais já feito venda/baixa! Impossível prosseguir com exclusão!','Erro!',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_entrada.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  PopupMenu := POP3;


  rnome.setfocus;
end;

procedure Tfrmproduto_entrada.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_entrada.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  IF qrentrada_item.RecordCount <> 0 then
  begin
    if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
    begin
        frmmodulo.qrentrada_produto.post;
    end;

    IF APPLICATION.MESSAGEBOX('Deseja lançar esta nota no financeiro?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      frmcontaspagar_ficha_entrada := tfrmcontaspagar_ficha_entrada.create(self);
      with frmcontaspagar_ficha_entrada do
      begin
        dateedit1.Date :=  frmmodulo.qrentrada_produto.fieldbyname('data').asdatetime;
        efornecedor.text := frmmodulo.qrentrada_produto.fieldbyname('codfornecedor').asstring;
        enomefornecedor.text := frmmodulo.qrentrada_produto.fieldbyname('fornecedor').asstring;
        edit5.text := frmmodulo.qrentrada_produto.fieldbyname('numero').asstring;
        rvalor.Value := frmmodulo.qrentrada_produto.fieldbyname('TOTAL_NOTA').asfloat;
        edit7.Text := '1';
      end;
      frmcontaspagar_ficha_entrada.showmodal;

    end;


    frmmodulo.Conexao.Commit;


    pficha.Enabled := false;
    pgravar.Visible := false;
    PopupMenu := pop1;
    bincluir.setfocus;

     panel2.Enabled := false;
     panel1.Enabled := false;
     panel_item.visible := true;



     PageView1.ActivePageIndex := 0;

  end
  else
  begin
    application.messagebox('Não há nenhum produto lançado para esta nota! Impossível GRAVAR!','Atenção',mb_ok+mb_iconwarning);
    grid1.setfocus;

  end;


end;

procedure Tfrmproduto_entrada.bcancelarClick(Sender: TObject);
begin

  if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
      frmmodulo.qrentrada_produto.cancel;


  frmmodulo.Conexao.Rollback;

  FRMMODULO.qrentrada_produto.Refresh;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

     panel2.Enabled := false;
     panel1.Enabled := false;
     panel_item.visible := true;

   PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto_entrada.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_entrada.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrentrada_produto.first;
end;

procedure Tfrmproduto_entrada.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrentrada_produto.last;

end;

procedure Tfrmproduto_entrada.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrentrada_produto.prior;

end;

procedure Tfrmproduto_entrada.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrentrada_produto.next;

end;

procedure Tfrmproduto_entrada.rnomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SetFocus
end;

procedure Tfrmproduto_entrada.rcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SETFOCUS;
end;

procedure Tfrmproduto_entrada.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BLOC.SETFOCUS;
End;

procedure Tfrmproduto_entrada.BLOCClick(Sender: TObject);
begin
  qrentrada_produto.close;
  qrentrada_produto.sql.clear;
  if rnome.Checked then
  begin
    qrentrada_produto.sql.add('select * from c000031 where upper(numero) = '''+ansiuppercase(frmprincipal.zerarcodigo(LOC.text,6))+''' order by numero');
  end;
  if rcodigo.Checked then
  begin
   qrentrada_produto.sql.add('select * from c000031 where data = :datai order by data');
   qrentrada_produto.Params.ParamByName('datai').value := strtodate(loc.text);
  end;
  if rapelido.Checked then
  begin
    qrentrada_produto.sql.add('select * from c000031 where codfornecedor = '''+copy(loc.text,1,6)+''' order by numero');
  end;

  qrentrada_produto.open;
  dbgrid1.setfocus;

end;

procedure Tfrmproduto_entrada.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  TRY
    frmmodulo.qrentrada_produto.Locate('codigo',qrentrada_produto.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    qrentrada_produto.close;
  EXCEPT
  END;

    PopupMenu := POP1;

    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure Tfrmproduto_entrada.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_entrada.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrentrada_produto.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmproduto_entrada.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_entrada.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_entrada.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_entrada.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_entrada.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_entrada.FecharLocalizao1Click(Sender: TObject);
begin
    PopupMenu := POP1;
    qrentrada_produto.close;
    plocalizar1.Visible := false;
    plocalizar2.visible := false;
end;

procedure Tfrmproduto_entrada.edata_cadastroExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    tdbdateedit(sender).SetFocus;
  END;
 end;


end;

procedure Tfrmproduto_entrada.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmproduto_entrada.bexcluir_itemClick(Sender: TObject);
begin

   if frmprincipal.autentica('Excluir NF Compra',4) then
  begin
    

      if frmmodulo.qrproduto.Locate('codigo',qrentrada_item.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
      begin
        frmmodulo.qrproduto.edit;
        frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring;
        frmmodulo.qrproduto.FieldByName('notafiscal').asstring        := frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring;
        frmmodulo.qrproduto.FieldByName('codfornecedor').asstring     := frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring;
        frmmodulo.qrproduto.Post;





      end;


    qrgrade_entrada.Close;
    qrgrade_entrada.SQL.clear;
    qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
    qrgrade_entrada.Open;

    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+dsentrada_item.dataset.fieldbyname('codproduto').asstring+'''');
    frmmodulo.qrgrade_produto.open;

    while qrgrade_entrada.RecordCount <> 0 do
    BEGIN
      if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
      begin
        frmmodulo.qrgrade_produto.edit;
        frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                    qrgrade_entrada.FieldByName('qtde').asfloat;
        frmmodulo.qrgrade_produto.post;
      end;
      qrgrade_entrada.delete;
    END;

    qrserial_produto.Close;
    qrserial_produto.SQL.clear;
    qrserial_produto.SQL.add('delete from c000022 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
    qrserial_produto.ExecSQL;


  if dsentrada_item.dataset.fieldbyname('ipi').asfloat > 0 then
  begin
    frmmodulo.qrentrada_produto.fieldbyname('BASE_CALCULO').asfloat :=
    frmmodulo.qrentrada_produto.fieldbyname('BASE_CALCULO').asfloat +
    dsentrada_item.dataset.fieldbyname('total').asfloat;

    frmmodulo.qrentrada_produto.fieldbyname('VALOR_ICMS').asfloat :=
    frmmodulo.qrentrada_produto.fieldbyname('VALOR_ICMS').asfloat +
    (dsentrada_item.dataset.fieldbyname('total').asfloat * (dsentrada_item.dataset.fieldbyname('icms').asfloat / 100));
  end;




  if dsentrada_item.dataset.fieldbyname('ipi').asfloat > 0 then
  begin
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat -
    (dsentrada_item.dataset.fieldbyname('total').asfloat*(dsentrada_item.dataset.fieldbyname('ipi').asfloat/100));
  end;



  frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat := frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat -
                                                                       dsentrada_item.DataSet.fieldbyname('TOTAL').asfloat;

  frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').asfloat := frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('frete').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('seguro').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('outras_despesas').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('valor_total_ipi').asfloat -
                                                                   frmmodulo.qrentrada_produto.FieldByName('desconto').asfloat;

    frmmodulo.qrentrada_produto.FieldByName('itens').asinteger :=
    frmmodulo.qrentrada_produto.FieldByName('itens').asinteger - 1;


  DSENTRADA_ITEM.DataSet.Delete;
  grid1.setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;




end;

procedure Tfrmproduto_entrada.DBEdit2Exit(Sender: TObject);
begin
 if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  frmmodulo.qrentrada_produto.FieldByName('numero').asstring := frmprincipal.zerarcodigo(dbedit2.text,6);
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_entrada.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrentrada_produto.state = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  begin
    if ecfop.text <> '' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then bloccfopclick(frmproduto_entrada) else edata_cadastro.setfocus
    else
      bloccfop.SetFocus;
  end;

end;

procedure Tfrmproduto_entrada.bloccfopClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  frmmodulo.qrentrada_produto.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;
  edata_cadastro.setfocus;
end;

procedure Tfrmproduto_entrada.blocfornecedorClick(Sender: TObject);
begin
  frmxloc_FORNECEDOR := tfrmxloc_FORNECEDOR.create(self);
  frmxloc_FORNECEDOR.showmodal;


  frmmodulo.qrentrada_produto.fieldbyname('CODFORNECEDOR').asstring := resultado_pesquisa1;
  
       IF (frmmodulo.qrentrada_produto.state = dsinsert) then
       begin
        qrnf.Close;
        qrnf.SQL.clear;
        qrnf.SQL.add('select * from c000031 where codfornecedor = '''+efornecedor.text+''' and numero = '''+dbedit2.text+'''');
        qrnf.open;
        if qrnf.Recordcount > 0 then
        begin
          if application.MessageBox('Já existe um número de nota fiscal deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?','Atenção',mb_yesno+mb_iconwarning) = idno then
          begin
            showmessage('Esta nota será cancelada!');
            bcancelarclick(frmproduto_entrada);
          end
          else
          begin
            bcancelarclick(frmproduto_entrada);
            frmmodulo.qrentrada_produto.Locate('codigo',qrnf.fieldbyname('codigo').asstring,[loCaseInsensitive]);
          end;
        end
        else
        begin
          dbedit3.setfocus;
        end;
       end
       else
       begin
         dbedit3.setfocus;
       end;
end;

procedure Tfrmproduto_entrada.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrentrada_produto.state = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  begin
    frmmodulo.qrentrada_produto.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if eFORNECEDOR.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrFORNECEDOR,eFORNECEDOR.text,'codigo') then
      begin
        blocFORNECEDORclick(frmproduto_entrada)
      end
      else
      begin
       IF (frmmodulo.qrentrada_produto.state = dsinsert) then
       begin
        qrnf.Close;
        qrnf.SQL.clear;
        qrnf.SQL.add('select * from c000031 where codfornecedor = '''+efornecedor.text+''' and numero = '''+dbedit2.text+'''');
        qrnf.open;
        if qrnf.Recordcount > 0 then
        begin
          if application.MessageBox('Já existe um número de nota fiscal deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?','Atenção',mb_yesno+mb_iconwarning) = idno then
          begin
            showmessage('Esta nota será cancelada!');
            bcancelarclick(frmproduto_entrada);
          end
          else
          begin
            bcancelarclick(frmproduto_entrada);
            frmmodulo.qrentrada_produto.Locate('codigo',qrnf.fieldbyname('codigo').asstring,[loCaseInsensitive]);
          end;
        end
        else
        begin
        end;
       end
       else
       begin
          dbedit3.SetFocus;
       end;
      end;
    end
    else
      blocFORNECEDOR.SetFocus;
  end;

end;

procedure Tfrmproduto_entrada.DBEdit1Change(Sender: TObject);
begin
  try
    if procura_produtos then
    begin
      if frmmodulo.qrentrada_produto.RecordCount > 0 then
      begin
        qrentrada_item.close;
        qrentrada_item.sql.clear;
        qrentrada_item.SQL.add('select * from c000032 where codnota = '''+frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring+''' and movimento = 1 order by codigo');
        qrentrada_item.open;
      end;
    end;

    frmmodulo.qrCFOP.Locate('cfop',frmmodulo.qrentrada_produto.fieldbyname('cfop').asstring,[loCaseInsensitive]);

    IF PageView1.ActivePageIndex = 1 THEN
    BEGIN
      QRCONTASPAGAR.Close;
      QRCONTASPAGAR.SQL.CLEAR;
      QRCONTASPAGAR.SQL.Add('SELECT * FROM C000046 WHERE CODNOTA = '''+FRMMODULO.qrentrada_produto.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY DATA_VENCIMENTO');
      QRCONTASPAGAR.Open;
    END;

  except
  end;
end;

procedure Tfrmproduto_entrada.bincluir_itemClick(Sender: TObject);
begin
  qrentrada_item.Insert;
  qrentrada_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
  qrentrada_item.FieldByName('cfop').asstring := frmmodulo.qrentrada_produto.fieldbyname('cfop').asstring;
  frmproduto_entrada_item := tfrmproduto_entrada_item.create(self);
  frmproduto_entrada_item.showmodal;

  qrentrada_item.Refresh;
  grid1.SetFocus;


  
end;

procedure Tfrmproduto_entrada.balterar_itemClick(Sender: TObject);
begin
  qrentrada_item.edit;
  frmproduto_entrada_item := tfrmproduto_entrada_item.create(self);
  frmproduto_entrada_item.showmodal;
  grid1.setfocus;

end;

procedure Tfrmproduto_entrada.grid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbedit3.setfocus;
end;

procedure Tfrmproduto_entrada.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  begin
    frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').asfloat :=
    frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat -
    frmmodulo.qrentrada_produto.FieldByName('DESCONTO').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('FRETE').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('seguro').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('OUTRAS_DESPESAS').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;
end;

procedure Tfrmproduto_entrada.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
              PageView1.ActivePageIndex := 0;
          grid1.setfocus;

  end;
end;

procedure Tfrmproduto_entrada.rapelidoClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  loc.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring +'-'+frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  loc.setfocus;
end;

procedure Tfrmproduto_entrada.Panel1Click(Sender: TObject);
begin
  //VERIFICAR
end;

procedure Tfrmproduto_entrada.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  begin
    frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').asfloat :=
    frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat -
    frmmodulo.qrentrada_produto.FieldByName('DESCONTO').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('FRETE').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('seguro').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('OUTRAS_DESPESAS').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;

end;

procedure Tfrmproduto_entrada.BitBtn6Click(Sender: TObject);
begin
  dbedit3.setfocus;
end;

procedure Tfrmproduto_entrada.PageView1Change(Sender: TObject);
begin
    IF PageView1.ActivePageIndex = 1 THEN
    BEGIN
      QRCONTASPAGAR.Close;
      QRCONTASPAGAR.SQL.CLEAR;
      QRCONTASPAGAR.SQL.Add('SELECT * FROM C000046 WHERE CODNOTA = '''+FRMMODULO.qrentrada_produto.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY DATA_VENCIMENTO');
      QRCONTASPAGAR.Open;
    END;
end;

procedure Tfrmproduto_entrada.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrentrada_produto.State = dsinsert) or (frmmodulo.qrentrada_produto.State = dsedit) then
  begin
    frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').asfloat :=
    frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat -
    frmmodulo.qrentrada_produto.FieldByName('DESCONTO').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('FRETE').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('seguro').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('OUTRAS_DESPESAS').asfloat +
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;
  valor_nota := frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat;
end;

procedure Tfrmproduto_entrada.FormCreate(Sender: TObject);
begin
  procura_produtos := false;


  qrentrada_itemQTDE.DisplayFormat := mascara_qtde;
  qrentrada_itemunitario.DisplayFormat := mascara_valor;

end;

procedure Tfrmproduto_entrada.qrentrada_itemBeforePost(DataSet: TDataSet);
begin
    case qrentrada_item.fieldbyname('movimento').asinteger of
    0,10 : qrentrada_item.FieldByName('movimento_estoque').asfloat := qrentrada_item.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : qrentrada_item.FieldByName('movimento_estoque').asfloat := qrentrada_item.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : qrentrada_item.FieldByName('movimento_estoque').asfloat := qrentrada_item.FieldByName('qtde').asfloat * (-1);
    99 : qrentrada_item.FieldByName('movimento_estoque').asfloat := 0;
    end;
    qrentrada_item.fieldbyname('codcliente').asstring := frmmodulo.qrentrada_produto.fieldbyname('codfornecedor').asstring;
end;

procedure Tfrmproduto_entrada.bimportarClick(Sender: TObject);
begin
  pficha.Enabled := true;

  pgravar.Visible := true;

  panel1.Enabled := true;
  panel2.Enabled := true;
  panel_item.visible := false;

  PopupMenu := pop2;

  frmproduto_importanf := Tfrmproduto_importanf.CREATE(SELF);
  frmproduto_importanf.SHOWMODAL;

  if application.messagebox(Pchar ('Deseja Realmente Importar a Nota Fiscal N. ' +
     frmmodulo.qrentrada_produto.FieldByName('NUMERO').AsString +
     ' ?  ') ,'Importação de Nota Fiscal',mb_yesno+MB_ICONQUESTION) = idno then

    bcancelarClick(frmproduto_entrada)
  else
    bgravarClick(frmproduto_entrada);
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

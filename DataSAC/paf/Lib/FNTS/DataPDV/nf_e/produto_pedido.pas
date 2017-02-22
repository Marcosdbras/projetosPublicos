unit produto_pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, AdvGlowButton, frxClass, frxDBSet;

type
  Tfrmproduto_pedido = class(TForm)
    HeaderView1: THeaderView;
    pgravar: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dspedido_produto2: TDataSource;
    qrpedido_produto: TZQuery;
    FlatPanel1: TFlatPanel;
    rnome: TRadioButton;
    rcodigo: TRadioButton;
    Relatrios1: TMenuItem;
    rapelido: TRadioButton;
    dspedido_produto: TDataSource;
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
    Label6: TLabel;
    efornecedor: TDBEdit;
    blocfornecedor: TBitBtn;
    DBEdit23: TDBEdit;
    panel22: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    qrpedido_item: TZQuery;
    qrpedido_itemCODPRODUTO: TStringField;
    dspedido_item: TDataSource;
    qrpedido_itemproduto: TStringField;
    Panel2: TPanel;
    FlatPanel3: TFlatPanel;
    Label17: TLabel;
    DBText1: TDBText;
    grid1: TwwDBGrid;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    qrnf: TZQuery;
    qrentrada_produtoCODIGO: TStringField;
    qrentrada_produtoNUMERO: TStringField;
    qrentrada_produtoCODFORNECEDOR: TStringField;
    qrfornecedor: TZQuery;
    qrpedido_itemunidade: TStringField;
    Finalizar1: TMenuItem;
    Panel3: TPanel;
    qrgrade_pedido: TZQuery;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    PageSheet2: TPageSheet;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    qrpedido_produtoCODIGO: TStringField;
    qrpedido_produtoNUMERO: TStringField;
    qrpedido_produtoCFOP: TStringField;
    qrpedido_produtoDATA: TDateTimeField;
    qrpedido_produtoCODFORNECEDOR: TStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtofornecedor: TStringField;
    qrpedido_itemCODIGO: TStringField;
    qrpedido_itemCODNOTA: TStringField;
    qrpedido_itemQTDE: TFloatField;
    qrpedido_itemUNITARIO: TFloatField;
    qrpedido_itemTOTAL: TFloatField;
    qrpedido_itemRECEBIDO: TFloatField;
    qrpedido_itemFALTA: TFloatField;
    CancelarPedido1: TMenuItem;
    FecharPedido1: TMenuItem;
    otalizar1: TMenuItem;
    ptotal: THeaderView;
    HeaderView2: THeaderView;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    rpedido: TRxCalcEdit;
    rrecebido: TRxCalcEdit;
    rfalta: TRxCalcEdit;
    panel_item: TFlatPanel;
    Bevel1: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bitbtn8: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    bincluir_item: TAdvGlowButton;
    balterar_item: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    Bevel2: TBevel;
    bitbtn10: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bloc: TAdvGlowButton;
    qrpedido_itemCODBARRA: TStringField;
    fspedido_fornecedor: TfrxDBDataset;
    qrpedido_fornecedor: TZQuery;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    fxpedido: TfrxReport;
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
    procedure blocfornecedorClick(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure balterar_itemClick(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure rapelidoClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrpedido_itemCalcFields(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_pedido: Tfrmproduto_pedido;
  comando : string;

implementation

uses modulo_nfe, principal,
  loc_fornecedor, produto_pedido_item, Math;

{$R *.dfm}


procedure Tfrmproduto_pedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (frmmodulo.qrpedido_produto.State = dsinsert) or (frmmodulo.qrpedido_produto.State = dsedit) then
      bcancelarclick(frmproduto_pedido);
  qrpedido_item.close;
  action := cafree;
end;

procedure Tfrmproduto_pedido.FormShow(Sender: TObject);
begin
  panel_item.top := 375;
  panel_item.left := 2;


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


  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';


  frmmodulo.qrpedido_produto.close;
  frmmodulo.qrpedido_produto.SQL.clear;
  frmmodulo.qrpedido_produto.SQL.add('select * from c000037 order by codigo');
  frmmodulo.qrpedido_produto.open;
  frmmodulo.qrpedido_produto.last;


  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmproduto_pedido.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_pedido.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrpedido_produto.insert;
  frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000037');
  frmmodulo.qrpedido_produto.fieldbyname('numero').asstring := frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring;
  frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring :=  '1';
  label7.caption := 'Aberto';


  pficha.Enabled := true;

  dbedit2.setfocus;
  pgravar.Visible := true;


     panel2.Enabled     := true;
     panel_item.visible := false;

  PopupMenu := pop2;
end;

procedure Tfrmproduto_pedido.balterarClick(Sender: TObject);
begin

  IF dbedit2.Text <> '' THEN
  BEGIN
     panel2.Enabled := true;
     panel_item.visible := false;


    frmmodulo.qrpedido_produto.Edit;
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

procedure Tfrmproduto_pedido.bexcluirClick(Sender: TObject);
begin
   if frmprincipal.autentica('Excluir Pedido',4) then
  begin
        qrgrade_pedido.Close;
        qrgrade_pedido.SQL.clear;
        qrgrade_pedido.SQL.add('delete from c000039 where codnota = '''+frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring+'''');
        qrgrade_pedido.ExecSQL;
        frmmodulo.qrpedido_produto.Delete;
        frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_pedido.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  PopupMenu := POP3;


  rnome.setfocus;
end;

procedure Tfrmproduto_pedido.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_pedido.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  IF qrpedido_item.RecordCount <> 0 then
  begin
    if (frmmodulo.qrpedido_produto.State = dsinsert) or (frmmodulo.qrpedido_produto.State = dsedit) then
    begin
        frmmodulo.qrpedido_produto.post;
    end;
    frmmodulo.Conexao.Commit;
    pficha.Enabled := false;
    pgravar.Visible := false;
    PopupMenu := pop1;
    bincluir.setfocus;

     panel2.Enabled := false;
     panel_item.visible := true;



     PageView1.ActivePageIndex := 0;
  end
  else
  begin
    application.messagebox('Não há nenhum produto lançado para esta nota! Impossível GRAVAR!','Atenção',mb_ok+mb_iconwarning);
    grid1.setfocus;

  end;


end;

procedure Tfrmproduto_pedido.bcancelarClick(Sender: TObject);
begin
{ if (frmmodulo.qrpedido_produto.State = dsinsert) then
 begin
   while qrpedido_item.RecordCount <> 0 do
   begin
     if frmmodulo.qrproduto.Locate('codigo',qrpedido_item.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
     begin
       frmmodulo.qrproduto.edit;
       frmmodulo.qrproduto.FieldByName('estoque').asfloat := frmmodulo.qrproduto.FieldByName('estoque').asfloat +
                                                             qrpedido_item.FieldByName('qtde').asfloat;

       frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring;
       frmmodulo.qrproduto.FieldByName('notafiscal').asstring        := frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring;
       frmmodulo.qrproduto.FieldByName('codfornecedor').asstring     := frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring;
       frmmodulo.qrproduto.Post;
     end;
     qrpedido_item.delete;
   end;
 end;

}

  if (frmmodulo.qrpedido_produto.State = dsinsert) or (frmmodulo.qrpedido_produto.State = dsedit) then
      frmmodulo.qrpedido_produto.cancel;


  frmmodulo.Conexao.Rollback;

  FRMMODULO.qrpedido_produto.Refresh;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

     panel2.Enabled := false;
     panel_item.visible := true;

   PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto_pedido.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_pedido.rnomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SetFocus
end;

procedure Tfrmproduto_pedido.rcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SETFOCUS;
end;

procedure Tfrmproduto_pedido.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BLOC.SETFOCUS;
End;

procedure Tfrmproduto_pedido.BLOCClick(Sender: TObject);
begin
  qrpedido_produto.close;
  qrpedido_produto.sql.clear;
  if rnome.Checked then
  begin
    qrpedido_produto.sql.add('select * from c000037 where upper(numero) = '''+ansiuppercase(frmprincipal.zerarcodigo(LOC.text,6))+''' order by numero');
  end;
  if rcodigo.Checked then
  begin
   qrpedido_produto.sql.add('select * from c000037 where data = :datai order by data');
   qrpedido_produto.Params.ParamByName('datai').value := strtodate(loc.text);
  end;
  if rapelido.Checked then
  begin
    qrpedido_produto.sql.add('select * from c000037 where codfornecedor = '''+copy(loc.text,1,6)+''' order by numero');
  end;

  qrpedido_produto.open;
  dbgrid1.setfocus;

end;

procedure Tfrmproduto_pedido.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  TRY
    frmmodulo.qrpedido_produto.Locate('codigo',qrpedido_produto.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    qrpedido_produto.close;
  EXCEPT
  END;

    PopupMenu := POP1;

    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure Tfrmproduto_pedido.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrpedido_produto.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmproduto_pedido.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_pedido.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_pedido.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_pedido.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.FecharLocalizao1Click(Sender: TObject);
begin
    PopupMenu := POP1;
    qrpedido_produto.close;
    plocalizar1.Visible := false;
    plocalizar2.visible := false;
end;

procedure Tfrmproduto_pedido.edata_cadastroExit(Sender: TObject);
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

procedure Tfrmproduto_pedido.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.bexcluir_itemClick(Sender: TObject);
begin

   if frmprincipal.autentica('Excluir Item do Pedido',4) then
  begin
    qrgrade_pedido.Close;
    qrgrade_pedido.SQL.clear;
    qrgrade_pedido.SQL.add('delete from c000039 where coditem = '''+dspedido_item.dataset.fieldbyname('codigo').asstring+'''');
    qrgrade_pedido.ExecSQL;
    frmmodulo.qrpedido_produto.FieldByName('total_nota').asfloat := frmmodulo.qrpedido_produto.FieldByName('total_nota').asfloat -
                                                                    dspedido_item.DataSet.fieldbyname('TOTAL').asfloat;

    DSpedido_ITEM.DataSet.Delete;

    frmmodulo.qrpedido_produto.FieldByName('itens').asinteger :=
    frmmodulo.qrpedido_produto.FieldByName('itens').asinteger - 1;
    grid1.setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;



end;

procedure Tfrmproduto_pedido.DBEdit2Exit(Sender: TObject);
begin
 if (frmmodulo.qrpedido_produto.State = dsinsert) or (frmmodulo.qrpedido_produto.State = dsedit) then
  frmmodulo.qrpedido_produto.FieldByName('numero').asstring := frmprincipal.zerarcodigo(dbedit2.text,6);
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.blocfornecedorClick(Sender: TObject);
begin
  frmloc_FORNECEDOR := tfrmloc_FORNECEDOR.create(self);
  frmloc_FORNECEDOR.showmodal;
  frmmodulo.qrpedido_produto.fieldbyname('CODFORNECEDOR').asstring := frmmodulo.qrFORNECEDOR.fieldbyname('CODIGO').asstring;
       IF (frmmodulo.qrpedido_produto.state = dsinsert) then
       begin
        qrnf.Close;
        qrnf.SQL.clear;
        qrnf.SQL.add('select * from c000037 where codfornecedor = '''+efornecedor.text+''' and numero = '''+dbedit2.text+'''');
        qrnf.open;
        if qrnf.Recordcount > 0 then
        begin
          if application.MessageBox('Já existe um número de pedido deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?','Atenção',mb_yesno+mb_iconwarning) = idno then
          begin
            showmessage('Este pedido será cancelada!');
            bcancelarclick(frmproduto_pedido);
          end
          else
          begin
            bcancelarclick(frmproduto_pedido);
            frmmodulo.qrpedido_produto.Locate('codigo',qrnf.fieldbyname('codigo').asstring,[loCaseInsensitive]);
          end;
        end
        else
        begin
          dbedit14.setfocus;
        end;
       end
       else
       begin
         dbedit14.setfocus;
       end;
end;

procedure Tfrmproduto_pedido.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrpedido_produto.state = dsinsert) or (frmmodulo.qrpedido_produto.State = dsedit) then
  begin
    frmmodulo.qrpedido_produto.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if eFORNECEDOR.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrFORNECEDOR,eFORNECEDOR.text,'codigo') then
      begin
        blocFORNECEDORclick(frmproduto_pedido)
      end
      else
      begin
       IF (frmmodulo.qrpedido_produto.state = dsinsert) then
       begin
        qrnf.Close;
        qrnf.SQL.clear;
        qrnf.SQL.add('select * from c000037 where codfornecedor = '''+efornecedor.text+''' and numero = '''+dbedit2.text+'''');
        qrnf.open;
        if qrnf.Recordcount > 0 then
        begin
          if application.MessageBox('Já existe um número de pedido deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?','Atenção',mb_yesno+mb_iconwarning) = idno then
          begin
            showmessage('Este pedido será cancelada!');
            bcancelarclick(frmproduto_pedido);
          end
          else
          begin
            bcancelarclick(frmproduto_pedido);
            frmmodulo.qrpedido_produto.Locate('codigo',qrnf.fieldbyname('codigo').asstring,[loCaseInsensitive]);
          end;
        end
        else
        begin
          dbedit14.setfocus;
        end;
       end
       else
       begin
         dbedit14.setfocus;
       end;
      end;
    end
    else
      blocFORNECEDOR.SetFocus;
  end;

end;

procedure Tfrmproduto_pedido.DBEdit1Change(Sender: TObject);
begin
  try
    qrpedido_item.close;
    qrpedido_item.sql.clear;
    qrpedido_item.SQL.add('select * from c000038 where codnota = '''+frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring+''' order by codigo');
    qrpedido_item.open;


    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '1' THEN
    begin
      LABEL7.CAPTION := 'Aberto';
      label7.font.Color := clTeal;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '2' THEN
    begin
      LABEL7.CAPTION := 'Recebido';
      label7.font.Color := clblue;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '3' THEN
    begin
      LABEL7.CAPTION := 'Cancelado';
      label7.font.Color := clred;
    end;

  except
  end;
end;

procedure Tfrmproduto_pedido.bincluir_itemClick(Sender: TObject);
begin
  qrpedido_item.Insert;
  qrpedido_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000038');
  frmproduto_pedido_item := tfrmproduto_pedido_item.create(self);
  frmproduto_pedido_item.showmodal;





end;

procedure Tfrmproduto_pedido.balterar_itemClick(Sender: TObject);
begin
  qrpedido_item.edit;
  frmproduto_pedido_item := tfrmproduto_pedido_item.create(self);
  frmproduto_pedido_item.showmodal;
  grid1.setfocus;

end;

procedure Tfrmproduto_pedido.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    bgravar.setfocus;
  end;
end;

procedure Tfrmproduto_pedido.rapelidoClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  loc.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring +'-'+frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  loc.setfocus;
end;

procedure Tfrmproduto_pedido.Panel1Click(Sender: TObject);
begin
  //VERIFICAR
end;

procedure Tfrmproduto_pedido.DBEdit14Exit(Sender: TObject);
begin
   dbedit14.Color := clwindow;
   PageView1.ActivePageIndex := 0;
   grid1.setfocus;
end;

procedure Tfrmproduto_pedido.BitBtn6Click(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.FormCreate(Sender: TObject);
begin
      LABEL7.CAPTION := '---';
      label7.font.Color := clblack;


          qrpedido_itemQTDE.DisplayFormat := mascara_qtde;
          qrpedido_itemunitario.DisplayFormat := mascara_valor;


end;

procedure Tfrmproduto_pedido.qrpedido_itemCalcFields(DataSet: TDataSet);
begin
  TRY
    qrpedido_item.FieldByName('FALTA').ASFLOAT :=
    qrpedido_item.FieldByName('QTDE').ASFLOAT -
    qrpedido_item.FieldByName('RECEBIDO').ASFLOAT ;
  EXCEPT
  END;
end;

procedure Tfrmproduto_pedido.BitBtn7Click(Sender: TObject);
begin
  if frmprincipal.autentica('Cancelar Pedido',4) then
  begin
    if frmmodulo.qrpedido_produto.FieldByName('situacao').asstring = '1' then
    begin
      frmmodulo.qrpedido_produto.Edit;
      frmmodulo.qrpedido_produto.FieldByName('situacao').asstring := '3';
      frmmodulo.qrpedido_produto.post;
      frmmodulo.Conexao.Commit;
    end
    else
    begin
      if frmmodulo.qrpedido_produto.FieldByName('situacao').asstring = '3' then
      begin
        if Application.messagebox('Este pedido está cancelado! Deseja ativá-lo?','Atenção!',mb_yesno+MB_ICONWARNING) = idyes then
        begin
          frmmodulo.qrpedido_produto.Edit;
          frmmodulo.qrpedido_produto.FieldByName('situacao').asstring := '1';
          frmmodulo.qrpedido_produto.post;
          frmmodulo.Conexao.Commit;
        end;
      end
      else
      begin
        Application.messagebox('Este pedido não está aberto!','Erro!',mb_ok+mb_iconerror);
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '1' THEN
    begin
      LABEL7.CAPTION := 'Aberto';
      label7.font.Color := clTeal;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '2' THEN
    begin
      LABEL7.CAPTION := 'Recebido';
      label7.font.Color := clblue;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '3' THEN
    begin
      LABEL7.CAPTION := 'Cancelado';
      label7.font.Color := clred;
    end;  
end;

procedure Tfrmproduto_pedido.BitBtn8Click(Sender: TObject);
begin
  if frmprincipal.autentica('Fechar Pedido',4) then
  begin
    if frmmodulo.qrpedido_produto.FieldByName('situacao').asstring = '1' then
    begin
      frmmodulo.qrpedido_produto.Edit;
      frmmodulo.qrpedido_produto.FieldByName('situacao').asstring := '2';
      frmmodulo.qrpedido_produto.post;
      frmmodulo.Conexao.Commit;
    end
    else
    begin
      if frmmodulo.qrpedido_produto.FieldByName('situacao').asstring = '2' then
      begin
        if Application.messagebox('Este pedido está fechado! Deseja ativá-lo?','Atenção!',mb_yesno+mb_iconwarning) = idyes then
        begin
          frmmodulo.qrpedido_produto.Edit;
          frmmodulo.qrpedido_produto.FieldByName('situacao').asstring := '1';
          frmmodulo.qrpedido_produto.post;
          frmmodulo.Conexao.Commit;
        end;
      end
      else
      begin
        Application.messagebox('Este pedido não está aberto!','Erro!',mb_ok+mb_iconerror);
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '1' THEN
    begin
      LABEL7.CAPTION := 'Aberto';
      label7.font.Color := clTeal;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '2' THEN
    begin
      LABEL7.CAPTION := 'Recebido';
      label7.font.Color := clblue;
    end;
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '3' THEN
    begin
      LABEL7.CAPTION := 'Cancelado';
      label7.font.Color := clred;
    end;  
end;

procedure Tfrmproduto_pedido.BitBtn10Exit(Sender: TObject);
begin
  ptotal.visible := false;
end;

procedure Tfrmproduto_pedido.BitBtn10Click(Sender: TObject);
begin
  ptotal.visible := false;
end;

procedure Tfrmproduto_pedido.BitBtn9Click(Sender: TObject);
var ped, falta, rec : real;
begin
  qrpedido_item.first;
  falta := 0;
  rec := 0;
  ped := 0;
  while not qrpedido_item.eof do
  begin
    falta := qrpedido_item.fieldbyname('falta').asfloat + falta;
    rec := qrpedido_item.fieldbyname('recebido').asfloat + rec;
    ped := qrpedido_item.fieldbyname('qtde').asfloat + ped;

    qrpedido_item.next;
  end;

  rrecebido.value := rec;
  rfalta.Value := falta;
  rpedido.Value := ped;

  ptotal.visible := true;
  bitbtn10.setfocus;

end;

procedure Tfrmproduto_pedido.bitbtn5Click(Sender: TObject);
begin
  qrpedido_fornecedor.close;
  qrpedido_fornecedor.sql.clear;
  qrpedido_fornecedor.sql.add('select * from c000009 where codigo = '''+frmmodulo.qrpedido_produto.fieldbyname('codfornecedor').asstring+'''');
  qrpedido_fornecedor.open;
  fxpedido.LoadFromFile('\DATASAC\server\rel\f000132.fr3');
  fxpedido.ShowReport;
end;

procedure Tfrmproduto_pedido.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_pedido.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF PGRAVAR.Visible THEN BGRAVAR.SETFOCUS;
  END;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

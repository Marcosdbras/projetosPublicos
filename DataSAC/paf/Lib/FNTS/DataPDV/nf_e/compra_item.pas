unit compra_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPreviewMenu, AdvPreviewMenuStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit, RzDBBnEd, wwdblook, RzCmboBx,
  RzDBCmbo, Buttons, DB, AdvGlowButton, ImgList, Menus, AdvOfficeButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, ExtCtrls,
  RzDBNav, ZAbstractRODataset, ZAbstractDataset, ZDataset, TFlatPanelUnit,
  ToolEdit, RXDBCtrl, RzPanel;

type
  Tfrmcompra_item = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    dscompra_item: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    AlterarPrecodeVenda1: TMenuItem;
    Panel1: TPanel;
    Label21: TLabel;
    Label1: TLabel;
    ecodproduto: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    eun_compra: TDBEdit;
    efracao: TRzDBNumericEdit;
    Label28: TLabel;
    Label29: TLabel;
    Bevel1: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    ecfop: TRzDBButtonEdit;
    DBEdit6: TDBEdit;
    ecst: TRzDBButtonEdit;
    ECLASSIF: TDBEdit;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label15: TLabel;
    Label30: TLabel;
    eitem: TDBEdit;
    Label31: TLabel;
    eqtde: TRzDBNumericEdit;
    FlatPanel1: TFlatPanel;
    eunitario: TRzDBNumericEdit;
    esubtotal: TRzDBNumericEdit;
    FlatPanel2: TFlatPanel;
    FlatPanel3: TFlatPanel;
    edperc: TRzNumericEdit;
    edesconto: TRzDBNumericEdit;
    FlatPanel4: TFlatPanel;
    etotal: TRzDBNumericEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape9: TShape;
    Label37: TLabel;
    Shape1: TShape;
    Shape8: TShape;
    combo_retido: TRzDBComboBox;
    Label32: TLabel;
    Shape10: TShape;
    ealiquota: TRzDBNumericEdit;
    Shape11: TShape;
    Label38: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Label39: TLabel;
    Label40: TLabel;
    ereducao: TRzDBNumericEdit;
    ebase_icms: TRzDBNumericEdit;
    Shape14: TShape;
    Label33: TLabel;
    evalor_icms: TRzDBNumericEdit;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape20: TShape;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    emargem_sub: TRzDBNumericEdit;
    eprod_sub: TRzDBNumericEdit;
    ebase_sub: TRzDBNumericEdit;
    evalor_sub: TRzDBNumericEdit;
    Shape19: TShape;
    Label7: TLabel;
    Shape21: TShape;
    Label8: TLabel;
    Shape22: TShape;
    Label10: TLabel;
    eisento: TRzDBNumericEdit;
    enao_trib: TRzDBNumericEdit;
    Shape23: TShape;
    Label9: TLabel;
    Shape24: TShape;
    Label11: TLabel;
    Shape25: TShape;
    Label12: TLabel;
    combo_ipi: TRzDBComboBox;
    ealiquota_ipi: TRzDBNumericEdit;
    Shape26: TShape;
    Label26: TLabel;
    ebase_ipi: TRzDBNumericEdit;
    Shape27: TShape;
    evalor_ipi: TRzDBNumericEdit;
    Label43: TLabel;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Efrete: TRzDBNumericEdit;
    eseguro: TRzDBNumericEdit;
    eoutras: TRzDBNumericEdit;
    eespecial: TRzDBNumericEdit;
    rpreco: TCheckBox;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    bitbtn1: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    bitbtn4: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    qrproduto: TZQuery;
    check_atualiza: TCheckBox;
    AtualizarNota1: TMenuItem;
    eproduto: TRzEdit;
    DBEdit1: TDBEdit;
    ed_cod_fornecedor: TRzEdit;
    Label19: TLabel;
    bserial: TAdvGlowButton;
    codigofornecedor1: TMenuItem;
    limparcodigoproduto1: TMenuItem;
    Label20: TLabel;
    bfornecedor_codigo: TAdvGlowButton;
    Shape33: TShape;
    Label24: TLabel;
    Shape35: TShape;
    Label27: TLabel;
    evalor_outras: TRzDBNumericEdit;
    bvalor_outras: TBitBtn;
    rlote_fabricacao: TRzPanel;
    elote: TDBEdit;
    evalidade: TDBDateEdit;
    Label25: TLabel;
    Label44: TLabel;
    procedure ecodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodprodutoButtonClick(Sender: TObject);
    procedure eun_compraKeyPress(Sender: TObject; var Key: Char);
    procedure eun_compraEnter(Sender: TObject);
    procedure eun_compraExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ecstButtonClick(Sender: TObject);
    procedure eqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_retidoKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaExit(Sender: TObject);
    procedure combo_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure combo_ipiExit(Sender: TObject);
    procedure evalor_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquota_ipiExit(Sender: TObject);
    procedure AlterarPrecodeVenda1Click(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure ebase_icmsExit(Sender: TObject);
    procedure ebase_subExit(Sender: TObject);
    procedure edpercExit(Sender: TObject);
    procedure eitemEnter(Sender: TObject);
    procedure eitemExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ecodprodutoEnter(Sender: TObject);
    procedure ebase_ipiExit(Sender: TObject);
    procedure eprod_subExit(Sender: TObject);
    procedure ecstExit(Sender: TObject);
    procedure efracaoKeyPress(Sender: TObject; var Key: Char);
    procedure esubtotalExit(Sender: TObject);
    procedure etotalExit(Sender: TObject);
    procedure ecodprodutoExit(Sender: TObject);
    procedure AtualizarNota1Click(Sender: TObject);
    procedure ed_cod_fornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure bserialClick(Sender: TObject);
    procedure codigofornecedor1Click(Sender: TObject);
    procedure limparcodigoproduto1Click(Sender: TObject);
    procedure evalor_outrasKeyPress(Sender: TObject; var Key: Char);
    procedure bvalor_outrasClick(Sender: TObject);
    procedure evalidadeExit(Sender: TObject);
  private
    { Private declarations }
    procedure paint_edit;
  public
    vcusto_anterior : double;
    { Public declarations }
  end;

var
     frmcompra_item: Tfrmcompra_item;
     vfra_ant,vqde_ant: double;
     mostra : boolean;
     continua_paint : boolean;
     fechar_tela : boolean;
     
implementation

uses compra, principal, xloc_produto, modulo_nfe, xloc_cfop, xloc_cst,
  compra_menu, produto_preco, produto_gradeF, Math, produto_rentabilidade,
  produto_serial_entrada, produto_serial;

{$R *.dfm}

procedure tfrmcompra_item.paint_edit;
var
i : Integer;
begin
  continua_paint := true;
  for i := 0 to ComponentCount - 1 do
  if (Components[i] is TcustomEdit)  then
  begin
    if (tedit(Components[i]).Name = 'ecodproduto') or
       (tedit(Components[i]).Name = 'eun_compra')  or
       (tedit(Components[i]).Name = 'ecst')        or
       (tedit(Components[i]).Name = 'ecfop')       or
       (tedit(Components[i]).Name = 'eqtde')       or
       (tedit(Components[i]).Name = 'esubtotal')   or
       (tedit(Components[i]).Name = 'eunitario')   or
       (tedit(Components[i]).Name = 'etotal')      then
    begin
      if (tedit(Components[i]).Text = '') or (tedit(Components[i]).Text = '0,00') or (tedit(components[i]).text = '0,000000')
      or (tedit(components[i]).text = '0,000') then
      begin
        tedit(Components[i]).color := $00BBBBFF;
        continua_paint := false;
      end;
    end;
  end;

end;

procedure Tfrmcompra_item.ecodprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 THEN
  BEGIN
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    frmmodulo.qrproduto.Close;
    frmmodulo.qrproduto.sql.clear;
    frmmodulo.qrproduto.sql.add('select * from c000025 where codbarra = '''+ecodproduto.text+'''');
    frmmodulo.qrproduto.open;
    if frmmodulo.qrproduto.RecordCount > 0 then
    begin
      vcusto_anterior := frmmodulo.qrproduto.fieldbyname('precocusto').AsFloat;

      if ecodproduto.Text = '' then ecodprodutoButtonClick(frmcompra_item);
      eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;

      if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
      begin
        frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
        frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
        if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
           frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
        else
        begin
          frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
          frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
          frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
          frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
        end;
        eun_compra.setfocus;
     end;
   end
   else
   begin
     frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmprincipal.zerarcodigo(ecodproduto.Text,6);
     eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
     if  frmcompra.qrnota_item.FieldByName('codproduto').asstring <> '000000' then
     begin
       frmmodulo.qrproduto.Close;
       frmmodulo.qrproduto.sql.clear;
       frmmodulo.qrproduto.sql.add('select * from c000025 where codIGO = '''+frmcompra.qrnota_item.FieldByName('codproduto').asstring+'''');
       frmmodulo.qrproduto.open;
       if frmmodulo.qrproduto.RecordCount > 0 then
       begin
         vcusto_anterior := frmmodulo.qrproduto.fieldbyname('precocusto').AsFloat;

         if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
         begin
           frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
           frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
           eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
           if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
              frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
           else
           begin
             frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
             frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
             frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
             frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
             frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
           end;
         end;
         if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;
         eun_compra.setfocus;
       end
       else
       begin

           application.messagebox('Produto não cadastrado!','Aviso',mb_ok+mb_iconwarning);
           ecodproduto.Text := '';
           ecodproduto.setfocus;

       end;
     end
     else
     begin
       ecodprodutoButtonClick(frmcompra_item);
     end;
    end;
  end;

end;

procedure Tfrmcompra_item.ecodprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if atualiza_produto_novo then frmcompra_menu.qrproduto.Refresh;

  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrproduto.close;
     frmmodulo.qrproduto.sql.clear;
     frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
     frmmodulo.qrproduto.open;
        if frmmodulo.qrproduto.RecordCount > 0 then
        begin

          vcusto_anterior := frmmodulo.qrproduto.fieldbyname('precocusto').AsFloat;

          frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;

          if (frmcompra_menu.vopcao_nfe = 1) or (frmcompra_menu.vopcao_item = 1) then
               begin
                    if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                      begin
                         frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat;
                         frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                      end
                    else
                         begin
                              frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
                              frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                              frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                              frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                              frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
                              frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
                         end;
               end;
          if atualiza_produto_novo then frmcompra_menu.qrproduto.Refresh;
          eun_compra.setfocus;
        end
        else
        begin
          application.messagebox('Produto não cadastrado!','Aviso',mb_ok+mb_iconwarning);
          ecodproduto.setfocus;
        end;
  end;
  atualiza_produto_novo := false;

end;

procedure Tfrmcompra_item.eun_compraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra_item.eun_compraEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra_item.eun_compraExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;
       if eun_compra.Text = '' then
          begin
               Showmessage('Não Informado a Unidade de Compra, Verifique...');
               eun_compra.Color := $00A8FFFF;
               eun_compra.SetFocus;
               exit;
          end;

  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra_item.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vdesconto : double;
begin

  frmcompra.vbicms := 0;
  frmcompra.vvicms := 0;
  frmcompra.vbst := 0;
  frmcompra.vvst := 0;
  frmcompra.vfrete := 0;
  frmcompra.vseguro := 0;
  frmcompra.voutras := 0;
  frmcompra.vprodutos := 0;
  frmcompra.vtotal    := 0;

  //frmcompra.qrnota_item.First;
  frmcompra.qrnota_item_lista.First;

  while not frmcompra.qrnota_item_lista.Eof do

  begin

    frmcompra.vbicms    := frmcompra.vbicms+frmcompra.qrnota_item_lista.fieldbyname('ICMS_BASE').asfloat;
    frmcompra.vvicms    := frmcompra.vvicms+frmcompra.qrnota_item_lista.fieldbyname('ICMS_VALOR').asfloat;
    frmcompra.vipi      := frmcompra.vipi+frmcompra.qrnota_item_lista.fieldbyname('IPI_VALOR').asfloat;
    frmcompra.vbst      := frmcompra.vbst+frmcompra.qrnota_item_lista.fieldbyname('SUB_BASE').asfloat;
    frmcompra.vvst      := frmcompra.vvst+frmcompra.qrnota_item_lista.fieldbyname('SUB_VALOR').AsFloat;
    frmcompra.vfrete    := frmcompra.vfrete+efrete.Value;
    frmcompra.vseguro   := frmcompra.vseguro+eseguro.Value;
    frmcompra.voutras   := frmcompra.voutras+eoutras.Value;
    frmcompra.vespecial := frmcompra.vespecial+eespecial.Value;
    frmcompra.vprodutos := frmcompra.vprodutos+frmcompra.qrnota_item_lista.fieldbyname('SUBTOTAL').asfloat;

    if frmcompra.rdesconto.Value > 0 then
      begin
        if frmcompra.XDESCONTO.Checked = false then
          frmcompra.vtotal    := frmcompra.vtotal+(frmcompra.vprodutos+frmcompra.vvst+frmcompra.vfrete+frmcompra.vseguro+frmcompra.voutras+frmcompra.vespecial+frmcompra.vipi)-
                                 frmcompra.rdesconto.Value
        else
          frmcompra.vtotal    := frmcompra.vtotal+(frmcompra.vprodutos+frmcompra.vvst+frmcompra.vfrete+frmcompra.vseguro+frmcompra.voutras+frmcompra.vespecial+frmcompra.vipi);
      end
    else
      begin
        vdesconto := vdesconto + frmcompra.qrnota_item_lista.fieldbyname('desconto').AsFloat;

      end;

    frmcompra.qrnota_item_lista.next;

  end;


  if vdesconto > 0 then
    frmcompra.vtotal    := frmcompra.vtotal+(frmcompra.vprodutos+frmcompra.vvst+frmcompra.vfrete+frmcompra.vseguro+frmcompra.voutras+frmcompra.vespecial+frmcompra.vipi)-
                           vdesconto;

  frmcompra.edbicms.Value       := frmcompra.vbicms;
  frmcompra.edvicms.Value       := frmcompra.vvicms;
  frmcompra.edipi.Value         := frmcompra.vipi;
  frmcompra.edbst.Value         := frmcompra.vbst;
  frmcompra.edvst.Value         := frmcompra.vvst;
  frmcompra.edfrete.Value       := frmcompra.vfrete;
  frmcompra.edespecial.Value    := frmcompra.vespecial;
  frmcompra.edseguro.Value      := frmcompra.vseguro;
  frmcompra.edoutras.Value      := frmcompra.voutras;
  frmcompra.edprodutos.Value    := frmcompra.vprodutos;
  if frmcompra.rdesconto.Value > 0 then
    frmcompra.eddesconto.Value    := frmcompra.rdesconto.Value
  else
    frmcompra.eddesconto.Value    := vdesconto;

  frmcompra.edtotal.Value       := frmcompra.vtotal;

  frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat := frmcompra.vtotal;
  frmcompra_menu.qrnota.fieldbyname('DESCONTO').asfloat := vdesconto;

  action := cafree;

end;

procedure Tfrmcompra_item.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCONFIG.OPEN;
  if FRMMODULO.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').AsString = 'FARMA' then  // FARMACIA
    rlote_fabricacao.Visible := True;

  fechar_tela := true;

  if frmcompra.qrnota_itemICMS_REDUCAO.asfloat > 0 then
    ereducao.Value := frmcompra.qrnota_itemICMS_REDUCAO.asfloat // xreducao;
  ELSE
    ereducao.Value := 0;

   rpreco.Checked := altera_preco;
   if (frmcompra_menu.vopcao_nfe = 2) or (frmcompra_menu.vopcao_item = 2) then
   begin
     vqde_ant := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
     vfra_ant := frmcompra.qrnota_item.fieldbyname('fracao').asfloat;
   end;
   if frmcompra_menu.vopcao_nfe = 1 then
   begin
     BitBtn1.Enabled := false;
     BitBtn2.Enabled := false;
     BitBtn3.Enabled := false;
     BitBtn4.Enabled := false;
   end;
   if combo_ipi.ItemIndex > 0 then
   begin
     ealiquota_ipi.enabled := true;
     ebase_ipi.enabled := true;
     evalor_ipi.enabled := true;
   end
   else
   begin
     ealiquota_ipi.enabled := false;
     ebase_ipi.enabled := false;
     evalor_ipi.enabled := false;
   end;

   if frmcompra_menu.qrempresa.fieldbyname('OPTANTE_SIMPLES').asstring = 'N' then
      rpreco.Checked := true
   else
      rpreco.checked := false;

  if frmcompra.qrnota_item.state = dsedit then
    begin
      eun_compra.setfocus;
      ecodproduto.Enabled := false;
    end
  else
    ecodproduto.setfocus;

  eqtde.DisplayFormat := mascara_qtde;
  eunitario.DisplayFormat := mascara_valor;

end;

procedure Tfrmcompra_item.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    if tedit(sender).Text <> '' then
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrcfop.sql.clear;
      frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = '''+ecfop.text+''' and tipo = 1');
      frmmodulo.qrcfop.open;
      if frmmodulo.qrcfop.recordcount = 0 then
      begin
        application.messagebox('CFOP não cadastrado ou não é de entrada!','Aviso',mb_ok+mb_iconwarning);
        ecfop.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecfopButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra_item.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 ';
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrcfOP.close;
     frmmodulo.qrcfOP.sql.clear;
     frmmodulo.qrcfOP.sql.add('select * from c000030 where cfop = '''+resultado_pesquisa1+'''');
     frmmodulo.qrcfOP.open;
     frmcompra.qrnota_item.fieldbyname('cfOP').asstring := resultado_pesquisa1;
     eqtde.setfocus;
  end;
end;

procedure Tfrmcompra_item.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    if tedit(sender).Text <> '' then
    begin
      frmmodulo.qrfiscal_cst.close;
      frmmodulo.qrfiscal_cst.sql.clear;
      frmmodulo.qrfiscal_cst.sql.add('select * from c000083 where CODIGO = '''+ecst.text+'''');
      frmmodulo.qrfiscal_cst.open;
      if frmmodulo.qrfiscal_cst.recordcount = 0 then
      begin
        application.messagebox('CST não cadastrada!','Aviso',mb_ok+mb_iconwarning);
        ecst.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecstButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra_item.ecstButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cst := tfrmxloc_cst.create(self);
  frmxloc_cst.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrfiscal_cst.close;
     frmmodulo.qrfiscal_cst.sql.clear;
     frmmodulo.qrfiscal_cst.sql.add('select * from c000083 where CODIGO = '''+resultado_pesquisa1+'''');
     frmmodulo.qrfiscal_cst.open;
     frmcompra.qrnota_item.fieldbyname('cst').asstring := resultado_pesquisa1;
     ecLASSIF.setfocus;
  end;
end;

procedure Tfrmcompra_item.eqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcompra_item.eqtdeExit(Sender: TObject);
begin


  tedit(sender).color := clwindow;

    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

    frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('qtde').asfloat *
    eunitario.Value ;

    frmcompra.qrnota_item.FieldByName('total').asfloat :=
    frmcompra.qrnota_item.FieldByName('subtotal').asfloat -
    frmcompra.qrnota_item.FieldByName('desconto').asfloat ;

    IF frmcompra.qrnota_item.FieldByName('total').asfloat > 0 THEN
    BEGIN

      frmcompra.qrnota_item.FieldByName('FRETE').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      efrete.Value := frmcompra.qrnota_item.FieldByName('FRETE').asfloat;
      eseguro.Value := frmcompra.qrnota_item.FieldByName('SEGURO').asfloat;
      eoutras.Value := frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat;

      IF FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT > 0 THEN
        BEGIN
          if frmcompra.XDESCONTO.Checked =  false THEN
            BEGIN
              frmcompra.qrnota_item.FieldByName('DESCONTO').asfloat :=
              (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat  *
              FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT) /
              FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
            end;
        END;
      end;

end;

procedure Tfrmcompra_item.bgravarClick(Sender: TObject);
var
  vvalor_base_imposto, valiquota,vreducao,vipi,vsubbase,vsubmargem,vsubprodutos : double;
  registro : string;
begin
  paint_edit;
  if not continua_paint then
  begin
    application.messagebox('Os campos em vermelho são obrigatório o seu preenchimento!','Atenção',mb_ok+mb_iconerror);
    exit;
  end;

  if frmcompra.qrnota_item.FieldByName('total').asfloat = 0 then
  begin
    application.messagebox('Valor Total do Item Não Informado! Verifique...','Atenção',mb_ok+mb_iconerror);
    eunitario.SetFocus;
    exit;
  end;

  bvalor_outrasClick(frmcompra_item);

  vcredito_icms := 0;
  vpis := 0;
  vcofins := 0;

  valiquota := FRMCOMPRA.qrnota_item.FieldByName('ICMS_ALIQUOTA').AsFloat;
  vreducao  := FRMCOMPRA.qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat;
  vipi      := FRMCOMPRA.qrnota_item.FieldByName('IPI_ALIQUOTA').AsFloat;

  vsubmargem   := FRMCOMPRA.qrnota_item.FieldByName('SUB_MARGEM').AsFloat;
  vsubbase     := FRMCOMPRA.qrnota_item.FieldByName('SUB_BASE').AsFloat;
  vsubprodutos := FRMCOMPRA.qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat;

  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('update c000025 set');
  if altera_custo = 1 then qrproduto.sql.add('precocusto = :precocusto,');
  qrproduto.sql.add('DATA_ULTIMACOMPRA = :DATA_ULTIMACOMPRA,');
  qrproduto.sql.add('notafiscal = :notafiscal,');
  qrproduto.sql.add('codfornecedor = :codfornecedor');
  qrproduto.sql.add('where codigo = '''+ecodproduto.Text+'''');
  if altera_custo = 1 then
  begin
    if efracao.value > 0 then
      qrproduto.Params.ParamByName('precocusto').asfloat := frmcompra.qrnota_item.fieldbyname('unitario').asfloat / efracao.value
    else
      qrproduto.Params.ParamByName('precocusto').asfloat := frmcompra.qrnota_item.fieldbyname('unitario').asfloat;
  end;
  qrproduto.Params.ParamByName('DATA_ULTIMACOMPRA').asdatetime := frmcompra_menu.qrnota.fieldbyname('data_lancamento').asdatetime;
  qrproduto.Params.ParamByName('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
  qrproduto.Params.ParamByName('codfornecedor').asstring := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
  qrproduto.execsql;

  TRY
    if RPRECO.Checked then
    begin
      FRMMODULO.QRPRODUTO.Close;
      FRMMODULO.QRPRODUTO.SQL.CLEAR;
      FRMMODULO.QRPRODUTO.SQL.Add('SELECT * FROM C000025 WHERE CODIGO = '''+frmcompra.qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
      FRMMODULO.QRPRODUTO.OPEN;
      frmmodulo.qrproduto.Edit;

      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      frmmodulo.qrpreco.open;


      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
           // caso produto nao tenha Grade de preco, criar
           frmmodulo.qrpreco.insert;
           frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
           frmmodulo.qrpreco.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
           IF EFRACAO.VALUE > 0 THEN
           BEGIN
             frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := (etotal.value/eqtde.Value)/(efracao.VALUE);
             frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := ((etotal.value+efrete.Value + eseguro.value + eoutras.value) / eqtde.value)/efracao.value;
             FRMMODULO.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := ((efrete.Value + eseguro.value + eoutras.value) / eqtde.value)/efracao.value;
             if efrete.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('frete').asfloat         := efrete.Value/(eqtde.value/efracao.value);
             if eseguro.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('seguro').asfloat          := eseguro.Value/(eqtde.value/efracao.value);
             if eoutras.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value/(eqtde.value/efracao.value);

             if ealiquota_ipi.value > 0 then
               frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat           := ealiquota_ipi.value
             else
             begin
               if evalor_ipi.value > 0 then
               begin
                  frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
               end;
             end;


           END
           ELSE
           BEGIN
             frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := etotal.value/eqtde.Value;
             frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := (etotal.value+efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
             FRMMODULO.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := (efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
             if efrete.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('frete').asfloat         := efrete.Value/(eqtde.value);
             if eseguro.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('seguro').asfloat          := eseguro.Value/(eqtde.value);
             if eoutras.Value > 0 then
               frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value/(eqtde.value);

             if ealiquota_ipi.value > 0 then
               frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat           := ealiquota_ipi.value
             else
             begin
               if evalor_ipi.value > 0 then
               begin
                  frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
               end;
             end;


           END;

           if ereducao.value > 0 then
             frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ereducao.value
           else
             frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.value;

          frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.Value;
          frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat := ealiquota.Value;
          frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat := ealiquota_ipi.Value;
          frmmodulo.qrpreco.fieldbyname('FRETE').asfloat := Efrete.Value;
          frmmodulo.qrpreco.fieldbyname('SEGURO').asfloat := eseguro.Value;
          frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value;

          if frmmodulo.qrproduto.FieldByName('PISCOFINS').AsString = 'S' then
            begin
              frmmodulo.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat := frmmodulo.qrFilialPIS.AsFloat;
              frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat := frmmodulo.qrFilialPIS.AsFloat;
              frmmodulo.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat := frmmodulo.qrFilialCOFINS.AsFloat;
              frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat := frmmodulo.qrFilialCOFINS.AsFloat;
            end;

           FRMMODULO.QRPRODUTO.EDIT;
           frmproduto_preco := tfrmproduto_preco.create(self);
           frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Inclusão';
           frmproduto_preco.showmodal;
      end
      else
      begin
        frmmodulo.qrpreco.edit;
        if frmmodulo.qrproduto.FieldByName('PISCOFINS').AsString = 'S' then
          begin
            frmmodulo.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat := frmmodulo.qrFilialPIS.AsFloat;
            frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat := frmmodulo.qrFilialPIS.AsFloat;
            frmmodulo.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat := frmmodulo.qrFilialCOFINS.AsFloat;
            frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat := frmmodulo.qrFilialCOFINS.AsFloat;
          end;
           frmproduto_preco := tfrmproduto_preco.create(self);
           frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Alteração';
           IF EFRACAO.VALUE > 0 THEN
           BEGIN
             frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := (etotal.value/eqtde.Value)/(efracao.VALUE);
             frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := ((etotal.value+efrete.Value + eseguro.value + eoutras.value) / eqtde.value)/efracao.value;
             FRMMODULO.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := ((efrete.Value + eseguro.value + eoutras.value) / eqtde.value)/efracao.value;
           END
           ELSE
           BEGIN
             frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := etotal.value/eqtde.Value;
             frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := (etotal.value+efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
             FRMMODULO.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := (efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
           END;
           if efracao.value = 0 then efracao.value := 1;

           if efrete.Value > 0 then
             frmmodulo.qrpreco.fieldbyname('frete').asfloat         := efrete.Value/(eqtde.value/efracao.value);
           if eseguro.Value > 0 then
             frmmodulo.qrpreco.fieldbyname('seguro').asfloat          := eseguro.Value/(eqtde.value/efracao.value);
           if eoutras.Value > 0 then
             frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value/(eqtde.value/efracao.value);

           if ealiquota_ipi.value > 0 then
             frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat           := ealiquota_ipi.value
           else
           begin
             if evalor_ipi.value > 0 then
             begin
                frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
             end;
           end;

           if frmcompra_menu.qrempresa.fieldbyname('OPTANTE_SIMPLES').asstring = 'N' then
           begin
             // qdo a empresa nao for optante pelo simples
             if ereducao.value > 0 then
               frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ereducao.value
             else
               frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.value;
           end;
           frmproduto_preco.showmodal;

      end;

{
    frmcompra.qrnota_item.FieldByName('credito_icms').AsFloat := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('pis').AsFloat := frmmodulo.qrpreco.fieldbyname('PIS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('pis_base').AsFloat := frmmodulo.qrpreco.fieldbyname('PIS').asfloat;
    frmcompra.qrnota_item.FieldByName('cofins').AsFloat := frmmodulo.qrpreco.fieldbyname('COFINS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('cofins_base').AsFloat := frmmodulo.qrpreco.fieldbyname('COFINS').asfloat;
    if frmcompra.qrnota_item.FieldByName('lote_fabricacao').AsString = null then
      frmcompra.qrnota_item.FieldByName('lote_fabricacao').AsString := '';
}

  END;
  EXCEPT
  END;

  if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
  begin
     frmproduto_gradef := tfrmproduto_gradef.create(self);
     frmproduto_gradef.showmodal;
  end;

   xipi := combo_ipi.ItemIndex;
   xreducao := ereducao.Value ;
   altera_preco := rpreco.Checked;

  frmcompra.qrnota_item.FieldByName('ipi_tipo').AsString := combo_ipi.Value;

  vvalor_base_imposto := frmcompra.qrnota_item.FieldByName('total').Asfloat;
  vcredito_icms := frmmodulo.qrpreco.FieldByName('ICMS_ENTRADA_P').Asfloat;
  vpis := frmmodulo.qrpreco.FieldByName('PIS_ENTRADA_P').Asfloat;
  vcofins := frmmodulo.qrpreco.FieldByName('COFINS_ENTRADA_P').Asfloat;

  frmcompra.qrnota_item.FieldByName('CREDITO_ICMS').Asfloat := vvalor_base_imposto * vcredito_icms / 100;
  frmcompra.qrnota_item.FieldByName('PIS').Asfloat := vvalor_base_imposto * vpis / 100;
  frmcompra.qrnota_item.FieldByName('COFINS').Asfloat := vvalor_base_imposto * vcofins / 100;

  frmcompra.qrnota_item.post;

  // produto com rentabilidade animal

  if frmcompra_menu.vopcao_item = 1 then
  begin
    if frmmodulo.qrproduto.FieldByName('usa_rentabilidade').asinteger = 1 then
    begin
       frmproduto_rentabilidade := tfrmproduto_rentabilidade.create(self);
       frmproduto_rentabilidade.lproduto.Caption := eproduto.text;
       frmproduto_rentabilidade.showmodal;
     end;
  end;

  //  if frmcompra_menu.vopcao_nfe = 1 then itens := itens + 1;

  if frmcompra_menu.vopcao_item = 1 then itens := itens + 1;

  //// verifica se o codigo do fornecedor existe
  ///////////////////////////////////////////////

  if ed_cod_fornecedor.Text <> '' then
    begin
      frmmodulo.qrfornecedor_codigo.Close;
      frmmodulo.qrfornecedor_codigo.sql.clear;
      frmmodulo.qrfornecedor_codigo.sql.add('select * from fornecedor_codigo where codigo = '''+ed_cod_fornecedor.text+'''');
      frmmodulo.qrfornecedor_codigo.sql.add('and codfornecedor = '''+frmcompra.ECODFORNECEDOR.Text+'''');
      frmmodulo.qrfornecedor_codigo.open;
      if frmmodulo.qrfornecedor_codigo.RecordCount = 0 then
        begin
          if application.messagebox('Referência do Fornecedor Não Encontrado! Deseja Grava-lo?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
            begin
              frmmodulo.qrfornecedor_codigo.Insert;
              frmmodulo.qrfornecedor_codigoCODFORNECEDOR.AsString := frmcompra.ECODFORNECEDOR.Text;
              frmmodulo.qrfornecedor_codigoCODIGO.AsString := ed_cod_fornecedor.Text;
              frmmodulo.qrfornecedor_codigoCODPRODUTO.AsString := ecodproduto.Text;
              frmmodulo.qrfornecedor_codigoPRECO.AsFloat := frmcompra.qrnota_itemUNITARIO.AsFloat;
              frmmodulo.qrfornecedor_codigo.Post;
            end;
        end;
    end;


  ///////////////////////////////////////////////

  frmmodulo.Conexao.Commit;
  Application.ProcessMessages;

  registro := frmcompra.qrnota_item_lista.fieldbyname('codigo').asstring;
  frmcompra.qrnota_item_lista.Refresh;
  frmcompra.qrnota_item_lista.locate('codigo',registro,[loCaseInsensitive]);

  if fechar_tela then
  begin
    (****************** INCLUIR UM NOVO ITEM *********************)

     if frmcompra_menu.vopcao_item = 1 then
     begin

        if check_atualiza.checked then frmcompra.batualiza_itensClick(frmcompra);

               FRMCOMPRA.qrnota_item.Insert;
               FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
               FRMCOMPRA.qrnota_item.fieldbyname('codlancamento').asstring := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('data').asdatetime := frmcompra_menu.qrnota.fieldbyname('DATA_LANCAMENTO').asfloat;

               codigo_it := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('codfornecedor').asstring := frmcompra.ECODFORNECEDOR.Text;
               FRMCOMPRA.qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP').asstring;
               if frmcompra_menu.qrnota.FieldByName('CONF_ICMSRETIDO').asfloat > 0 then
                    FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'S' else FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'N';
               FRMCOMPRA.qrnota_item.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(itens),3);

               if frmcompra.rdesconto.Value = 0 then
                begin
                  FRMCOMPRA.qrnota_item.FieldByName('DESCONTO').AsFloat := 0;
                  FRMCOMPRA.qrnota_item.FieldByName('DESCONTO_P').AsFloat := 0;
                end;

               FRMCOMPRA.qrnota_item.FieldByName('ICMS_ISENTO').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('ICMS_NAOTRIBUTADO').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('ICMS_VALORRETIDO').AsFloat := 0;

               FRMCOMPRA.qrnota_item.FieldByName('ICMS_ALIQUOTA').AsFloat := valiquota;
               FRMCOMPRA.qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat := vreducao;
               FRMCOMPRA.qrnota_item.FieldByName('ICMS_BASE').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('ICMS_VALOR').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('SUB_VALOR').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('IPI_BASE').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('IPI_VALOR').AsFloat := 0;
               FRMCOMPRA.qrnota_item.FieldByName('IPI_ALIQUOTA').AsFloat := vipi;
               FRMCOMPRA.qrnota_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';

               FRMCOMPRA.qrnota_item.FieldByName('SUB_MARGEM').AsFloat := vsubmargem;
               FRMCOMPRA.qrnota_item.FieldByName('SUB_BASE').AsFloat := vsubbase;
               FRMCOMPRA.qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat := vsubprodutos;

     end;
     combo_ipi.ItemIndex := xipi;
     ereducao.Value := xreducao;
     rpreco.Checked := altera_preco;


     if (frmcompra_menu.vopcao_nfe = 1) or (frmcompra_menu.vopcao_item = 1) then
      begin
        if ecodproduto.Enabled = True then
        ECODPRODUTO.SETFOCUS;
      end;



     if (frmcompra_menu.vopcao_item = 2) then
       close;
  end;

end;

procedure Tfrmcompra_item.bcancelarClick(Sender: TObject);
begin
     frmcompra.qrnota_item.Cancel;
     close;
end;

procedure Tfrmcompra_item.combo_retidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then EALIQUOTA.SETFOCUS;
end;

procedure Tfrmcompra_item.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra_item.ealiquotaExit(Sender: TObject);
var
  vdesc_total_nota : double;

begin

  if ( ealiquota.value <> 0.00 )  and
     ( ealiquota.value <> 7.00 )  and
     ( ealiquota.value <> 12.00 ) and
     ( ealiquota.value <> 17.00 ) and
     ( ealiquota.value <> 25.00 ) and
     ( ealiquota.value <> 27.00 ) then
    begin
      application.messagebox('Aliquota fora da faixa!','Atenção',mb_ok+mb_iconwarning);
      ealiquota.Value := 0;
      ealiquota.SetFocus;
      exit;
    end;

     //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
     vdesc_total_nota := 0;
     if frmcompra.XDESCONTO.Checked = true then
      begin
        vdesc_total_nota := (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat  *
                             FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT) /
                             FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
      end;

     if frmcompra.etipo_baseicms.Checked = true then
       begin
         frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := etotal.Value+efrete.Value+eoutras.Value;
          frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (etotal.Value+efrete.Value+eoutras.Value)-vdesc_total_nota;
          frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat*ealiquota.Value/100;
       end
     else
       begin
         frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := etotal.Value-vdesc_total_nota;
         frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat*ealiquota.Value/100;
       end;

     if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
     if (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT = 0) then
          begin
               frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat := 0;
               frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := 0;
               frmcompra.qrnota_item.fieldbyname('sub_base').asfloat := 0;
               frmcompra.qrnota_item.fieldbyname('sub_valor').asfloat := 0;
               frmcompra.qrnota_item.fieldbyname('icms_valor').asfloat := 0;
               frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat := 0;
               exit;
     end;

  (********************* SUBSTITUICAO TRIBUTARIA ************************)
  if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

  begin

    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
       (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070')
    then // reducao na base de calculo
    begin
      if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 0 then
      begin
        // calcular substituicao tributaria sem informar icms retido


        if (frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat > 0) AND (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then
        begin

        if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat <> 0 then
          begin
          //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
          if frmcompra.etipo_baseicms.Checked = true then
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100)
          else
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;


          if eprod_sub.Value > 0 then
            begin

            {
              frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat := (etotal.Value*frmcompra.ebase_subst.Value)/
                                                                frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
              frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := (etotal.Value*frmcompra.evalor_subst.Value)/
              frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
            }
            end;


        end
        else
        begin
          if (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then
          begin

          if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat <> 0 then
               begin
                //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
                if frmcompra.etipo_baseicms.Checked = true then
                 frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100)
               else
                 frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
            end;

          end;
        end;


      end;

     if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 7 then
          begin
            if frmcompra.etipo_baseicms.Checked = true then
               frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) -((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) *
                                                                     frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)
          else
               frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat) -((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) *
                                                                     frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100);

               frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                      (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;
    end
    else
    begin
      if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
      begin
          if emargem_sub.Value = 0 then
            begin
              frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat :=
              (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value+frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat)+
              ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value+frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat)*
              (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat/100));
            end;
          if eprod_sub.Value > 0 then
            begin
            end;

      end
      else
      begin


        // calcular substituicao tributaria sem informar icms retido

        if (frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then

        begin
        if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
          begin

          if frmcompra.etipo_baseicms.Checked = true then
             frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value)
          else
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;


          if emargem_sub.Value = 0 then
            begin
              frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat :=
              frmcompra.qrnota_item.FieldByName('total').asfloat +
              (frmcompra.qrnota_item.FieldByName('total').asfloat*(frmcompra.qrnota_item.FieldByName('sub_margem').asfloat/100));

              frmcompra.qrnota_item.FieldByName('SUB_VALOR').asfloat :=
                (frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat * (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100)) -
                frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat;
            end;

        end
        else
        begin


          if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
          begin
          if frmcompra.etipo_baseicms.Checked = true then
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value)
          else
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;


        end;
      end;
    end;
  end
  else
  begin
    (*************** ISENTO DE ICMS *********************************)
    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '040') or
       (frmcompra.qrnota_item.fieldbyname('CST').asstring = '030') then
    begin
      frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').asfloat := frmcompra.qrnota_item.fieldbyname('total').asfloat;
    end
    else
    begin
      (************** NAO TRIBUTADO *********************************)
      if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '041') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '050') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '090')  THEN
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').asfloat := frmcompra.qrnota_item.fieldbyname('total').asfloat;
      end
      else
      (*************** TRIBUTADO INTEGRALMENTE **********************)
      begin
          if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 0 then
               IF frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0 THEN
                              BEGIN
                              //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
                              if frmcompra.etipo_baseicms.Checked = true then
                                   frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100)
                                 else
                                   frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat) *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

                                   frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                      (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
                              END
          else
                    IF frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0 THEN
                         BEGIN
                          if frmcompra.etipo_baseicms.Checked = true then
                              frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value)
                           else
                              frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat);

                              frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
                         END;

        end;
      end;
    end;


  if ( frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT = 0) then
    frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfLOAT := 0;
  bvalor_outrasClick(frmcompra_item);
end;

procedure Tfrmcompra_item.combo_ipiKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
 if combo_ipi.ItemIndex > 0 then
  begin

    ealiquota_ipi.enabled := true;
    ebase_ipi.enabled := true;
    evalor_ipi.enabled := true;

    ealiquota_ipi.setfocus;

  end
  else
  begin
    ealiquota_ipi.Value := 0;
    ebase_ipi.value := 0;
    evalor_ipi.value := 0;

    ealiquota_ipi.enabled := false;
    ebase_ipi.enabled := false;
    evalor_ipi.enabled := false;


    bgravar.setfocus;
  end;

  END;
end;

procedure Tfrmcompra_item.combo_ipiExit(Sender: TObject);
begin
  if combo_ipi.ItemIndex > 0 then
  begin

    ealiquota_ipi.enabled := true;
    ebase_ipi.enabled := true;
    evalor_ipi.enabled := true;

    ealiquota_ipi.setfocus;

  end
  else
  begin
    ealiquota_ipi.Value := 0;
    ebase_ipi.value := 0;
    evalor_ipi.value := 0;

    ealiquota_ipi.enabled := false;
    ebase_ipi.enabled := false;
    evalor_ipi.enabled := false;


    bgravar.setfocus;
  end;
  bvalor_outrasClick(frmcompra_item);  
end;

procedure Tfrmcompra_item.evalor_ipiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra_item.ealiquota_ipiExit(Sender: TObject);
begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

    if frmcompra.qrnota_item.fieldbyname('ipi_aliquota').asfloat > 0 then
    begin
      frmcompra.qrnota_item.fieldbyname('ipi_base').asfloat := frmcompra.qrnota_item.fieldbyname('total').asfloat;
      frmcompra.qrnota_item.fieldbyname('ipi_valor').asfloat := frmcompra.qrnota_item.fieldbyname('ipi_base').asfloat *
                                                                (frmcompra.qrnota_item.fieldbyname('ipi_aliquota').asfloat / 100)
    end;


end;

procedure Tfrmcompra_item.AlterarPrecodeVenda1Click(Sender: TObject);
begin
  if rpreco.Checked then rpreco.Checked := false else rpreco.Checked := true;
end;

procedure Tfrmcompra_item.edescontoExit(Sender: TObject);
begin
  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('qtde').asfloat *
    eunitario.value ;

  if frmcompra.XDESCONTO.Checked = false then
    begin
      frmcompra.qrnota_item.FieldByName('total').asfloat :=
      frmcompra.qrnota_item.FieldByName('subtotal').asfloat -
      frmcompra.qrnota_item.FieldByName('desconto').asfloat ;
    end;

    IF frmcompra.qrnota_item.FieldByName('total').asfloat > 0 THEN
    BEGIN

      frmcompra.qrnota_item.FieldByName('FRETE').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT ) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

      efrete.Value := frmcompra.qrnota_item.FieldByName('FRETE').asfloat;
      eseguro.Value := frmcompra.qrnota_item.FieldByName('SEGURO').asfloat;
      eoutras.Value := frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat;

    END;
end;

procedure Tfrmcompra_item.ebase_icmsExit(Sender: TObject);
begin
  if ( frmcompra.qrnota_item.State = dsInsert ) or ( frmcompra.qrnota_item.State = dsedit ) then
    frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := ebase_icms.Value*ealiquota.Value/100;
end;

procedure Tfrmcompra_item.ebase_subExit(Sender: TObject);
begin
  if emargem_sub.Value = 0 then
    begin
      if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
        begin
          frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat :=
          (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value+frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat)+
          ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value)*(frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat/100));
        end
      else
        if eprod_sub.Value = 0 then
          begin
            if ebase_sub.Value > 0 then
              frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := (frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat*ealiquota.Value/100)-evalor_icms.Value;
          end;
    end;
end;

procedure Tfrmcompra_item.edpercExit(Sender: TObject);
begin
  if edperc.Value > 0 then
    frmcompra.qrnota_item.FieldByName('desconto').asfloat := frmcompra.qrnota_item.FieldByName('subtotal').asfloat*edperc.Value/100;

end;

procedure Tfrmcompra_item.eitemEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra_item.eitemExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmcompra_item.eunitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

     if eunitario.Value = 0 then
          begin
               Showmessage('Valor do Item Não Informado, Verifique...');
               eunitario.Color := $00A8FFFF;
               eunitario.SetFocus;
               exit;
          end;

    frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('qtde').asfloat *
    eunitario.value ;

    IF FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT > 0 THEN
      BEGIN
        //if frmcompra.XDESCONTO.Checked =  false THEN
        //BEGIN
         frmcompra.qrnota_item.FieldByName('DESCONTO').asfloat :=
         (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat  *
         FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT) /
         FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
       //END;
      END;

    if frmcompra.XDESCONTO.Checked = false then
      frmcompra.qrnota_item.FieldByName('TOTAL').asfloat := frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat-edesconto.Value
    else
      frmcompra.qrnota_item.FieldByName('TOTAL').asfloat := frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat;



end;

procedure Tfrmcompra_item.ecfopExit(Sender: TObject);
begin
     if (frmcompra.Edit1.Text = frmcompra.Edit2.Text) and (copy(ecfop.Text,1,1) = '2') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
               exit;
          end
     else if (frmcompra.Edit1.Text <> frmcompra.Edit2.Text) and (copy(ecfop.Text,1,1) = '1') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
               exit;
          end;

end;

procedure Tfrmcompra_item.BitBtn1Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.first;
  frmcompra.qrnota_item.first;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('produto').asstring;
  with frmcompra do
  begin
   qrnota_item.close;
   qrnota_item.sql.clear;
   qrnota_item.sql.add('select * from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
   qrnota_item.open;
   qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn3Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.Prior;
  frmcompra.qrnota_item.Prior;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('produto').asstring;
  with frmcompra do
  begin
   qrnota_item.close;
   qrnota_item.sql.clear;
   qrnota_item.sql.add('select * from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
   qrnota_item.open;
   qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn4Click(Sender: TObject);
begin

  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;

  bgravarclick(frmcompra_item);

  frmcompra.qrnota_item_lista.next;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('produto').asstring;

  with frmcompra do
  begin
   qrnota_item.close;
   qrnota_item.sql.clear;
   qrnota_item.sql.add('select * from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
   qrnota_item.open;
   qrnota_item.Edit;
  end;

  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn2Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.last;
  frmcompra.qrnota_item.last;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('produto').asstring;
  with frmcompra do
  begin
   qrnota_item.close;
   qrnota_item.sql.clear;
   qrnota_item.sql.add('select * from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
   qrnota_item.open;
   qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.ecodprodutoEnter(Sender: TObject);
var key: char;
begin

  ed_cod_fornecedor.Text := '';

  if frmcompra_menu.vopcao_item = 2 then
  begin
    key := #13;
    ecodprodutoKeyPress(frmcompra_item,key);
  end;
end;

procedure Tfrmcompra_item.ebase_ipiExit(Sender: TObject);
begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

    if frmcompra.qrnota_item.fieldbyname('ipi_aliquota').asfloat > 0 then
    begin
      frmcompra.qrnota_item.fieldbyname('ipi_valor').asfloat := frmcompra.qrnota_item.fieldbyname('ipi_base').asfloat *
                                                                (frmcompra.qrnota_item.fieldbyname('ipi_aliquota').asfloat / 100)
    end;
  bvalor_outrasClick(frmcompra_item);
end;

procedure Tfrmcompra_item.eprod_subExit(Sender: TObject);
begin
  if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
      begin
        if emargem_sub.Value = 0 then
          begin
            frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat :=
            (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value+frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat)+
            ((frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat+efrete.Value+eoutras.Value+frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat)*
            (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat/100));
          end;
      end
  else

  if eprod_sub.Value > 0 then
    begin
      frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat := (etotal.Value*frmcompra.ebase_subst.Value)/
                                                                frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
      frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := (etotal.Value*frmcompra.evalor_subst.Value)/
      frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
    end;



end;

procedure Tfrmcompra_item.ecstExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

  else
    frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat := 0;

end;

procedure Tfrmcompra_item.efracaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecst.setfocus;
end;

procedure Tfrmcompra_item.esubtotalExit(Sender: TObject);
begin
  tedit(sender).color := clbtnface;
end;

procedure Tfrmcompra_item.etotalExit(Sender: TObject);
begin
  tedit(sender).color := clbtnface;
end;

procedure Tfrmcompra_item.ecodprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra_item.AtualizarNota1Click(Sender: TObject);
begin
  if check_atualiza.Checked then check_atualiza.Checked := false else check_atualiza.Checked := true;
end;

procedure Tfrmcompra_item.ed_cod_fornecedorKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
    begin
      if ecodproduto.Text = '' then
        begin
          frmmodulo.qrfornecedor_codigo.Close;
          frmmodulo.qrfornecedor_codigo.sql.clear;
          frmmodulo.qrfornecedor_codigo.sql.add('select * from fornecedor_codigo where codigo = '''+ed_cod_fornecedor.text+'''');
          frmmodulo.qrfornecedor_codigo.sql.add('and codfornecedor = '''+frmcompra.ECODFORNECEDOR.Text+'''');
          frmmodulo.qrfornecedor_codigo.open;
          if frmmodulo.qrfornecedor_codigo.RecordCount > 0 then
            begin
              if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
                begin
                  ecodproduto.text := frmmodulo.qrfornecedor_codigoCODPRODUTO.asstring;
                  frmmodulo.qrproduto.Close;
                  frmmodulo.qrproduto.sql.clear;
                  frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+ecodproduto.text+'''');
                  frmmodulo.qrproduto.open;
                  if frmmodulo.qrproduto.RecordCount > 0 then
                    begin
                      frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                      frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                      eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
                      if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                        frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
                      else
                        begin
                          frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
                          frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                          frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                          frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
                          frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
                        end;
                      eun_compra.setfocus;
                    end;
                end;
            end
          else
            begin
              application.messagebox('Referência não Encontrado Para esse Produto!','Aviso',mb_ok+mb_iconwarning);
              ecodproduto.Text := '';
              ecodproduto.setfocus;
            end;

        end
      else
        begin
          eun_compra.SetFocus;
        end;

  {
         frmmodulo.qrproduto.Close;
         frmmodulo.qrproduto.sql.clear;
         frmmodulo.qrproduto.sql.add('select * from c000025 where REFERENCIA_FORNECEDOR = '''+ed_cod_fornecedor.text+'''');
         frmmodulo.qrproduto.open;
         if frmmodulo.qrproduto.RecordCount > 0 then
         begin
           if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
           begin
             ecodproduto.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
             frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
             frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
             eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
             if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
             else
             begin
               frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
               frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
               frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
               frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
               frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
             end;
           end;
           eun_compra.setfocus;
         end
         else
         begin
           application.messagebox('Produto não cadastrado!','Aviso',mb_ok+mb_iconwarning);
           ecodproduto.Text := '';
           ecodproduto.setfocus;
         end;

  }
    end;
end;

procedure Tfrmcompra_item.bserialClick(Sender: TObject);
begin
  serial_entrada := false;
  frmproduto_serial := Tfrmproduto_serial.create(self);
  frmproduto_serial.showmodal;
  bgravar.setfocus;
end;

procedure Tfrmcompra_item.codigofornecedor1Click(Sender: TObject);
begin
  ed_cod_fornecedor.SetFocus;
end;

procedure Tfrmcompra_item.limparcodigoproduto1Click(Sender: TObject);
begin
  ecodproduto.Text := '';
end;

procedure Tfrmcompra_item.evalor_outrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra_item.bvalor_outrasClick(Sender: TObject);
begin

  frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := 0;

  if (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1152') or
     (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1102') or
     (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2102') or
     (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1403') or
     (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2403') then

    begin

      if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

        begin

          if ( frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
             ( frmcompra.qrnota_item.fieldbyname('CST').asstring = '070')then
            begin
              frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').AsFloat := ((esubtotal.Value-edesconto.Value)+
                                                                           efrete.Value+eseguro.Value+eoutras.Value)-
                                                                           ebase_icms.Value; //+ evalor_ipi.Value;
            end
          else
            begin
              frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := ((esubtotal.Value-edesconto.Value)+
                                                                            efrete.Value+eseguro.Value+eoutras.Value); //+evalor_ipi.Value;
          end;
        end;
    end
  else
    begin
      if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '040') or
         (frmcompra.qrnota_item.fieldbyname('CST').asstring = '030') then
        begin
          frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').AsFloat := ((esubtotal.Value-edesconto.Value)+
                                                                       efrete.Value+eseguro.Value+eoutras.Value)-
                                                                       ebase_icms.Value; //+ evalor_ipi.Value;
        end
      else
        begin
          (************** NAO TRIBUTADO *********************************)
          if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '041') or
             (frmcompra.qrnota_item.fieldbyname('CST').asstring = '050') or
             (frmcompra.qrnota_item.fieldbyname('CST').asstring = '090')  THEN
            begin
              frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').AsFloat := ((esubtotal.Value-edesconto.Value)+
                                                                           efrete.Value+eseguro.Value+eoutras.Value)-
                                                                           ebase_icms.Value; //+ evalor_ipi.Value;
            end
        end;
    end;


    if ((frmcompra.qrnota_item.fieldbyname('CST').asstring = '000') and (frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').AsFloat = 0)) or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1553') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1653') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1556') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2352') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2556') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1407') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2407') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1303') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1253') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1551') or
        (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2551') then
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := ((esubtotal.Value-edesconto.Value)+
                                                                    efrete.Value+eseguro.Value+eoutras.Value); //+evalor_ipi.Value;
      end;

    if evalor_ipi.Value > 0 then
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat+
                                                                    evalor_ipi.Value;
      end;
      
end;

procedure Tfrmcompra_item.evalidadeExit(Sender: TObject);
begin
  eqtde.SetFocus;
end;

end.



unit compra_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPreviewMenu, AdvPreviewMenuStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit, RzDBBnEd, wwdblook, RzCmboBx,
  RzDBCmbo, Buttons, DB, AdvGlowButton, ImgList, Menus, AdvOfficeButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit;

type
  Tfrmcompra_item = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    ecodproduto: TRzDBButtonEdit;
    DBEdit4: TDBEdit;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label29: TLabel;
    Label1: TLabel;
    eun_compra: TDBEdit;
    Label2: TLabel;
    dscompra_item: TDataSource;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    Label22: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ecfop: TRzDBButtonEdit;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    eqtde: TRzDBNumericEdit;
    GroupBox2: TGroupBox;
    eunitario: TRzDBNumericEdit;
    GroupBox3: TGroupBox;
    esubtotal: TRzDBNumericEdit;
    GroupBox4: TGroupBox;
    edesconto: TRzDBNumericEdit;
    GroupBox5: TGroupBox;
    etotal: TRzDBNumericEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    combo_retido: TRzDBComboBox;
    ealiquota: TRzDBNumericEdit;
    ereducao: TRzDBNumericEdit;
    ebase_icms: TRzDBNumericEdit;
    evalor_icms: TRzDBNumericEdit;
    ebase_sub: TRzDBNumericEdit;
    evalor_sub: TRzDBNumericEdit;
    emargem_sub: TRzDBNumericEdit;
    eisento: TRzDBNumericEdit;
    enao_trib: TRzDBNumericEdit;
    GroupBox7: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    combo_ipi: TRzDBComboBox;
    ealiquota_ipi: TRzDBNumericEdit;
    ebase_ipi: TRzDBNumericEdit;
    evalor_ipi: TRzDBNumericEdit;
    ecst: TRzDBButtonEdit;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    GroupBox8: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Efrete: TRzDBNumericEdit;
    eseguro: TRzDBNumericEdit;
    eoutras: TRzDBNumericEdit;
    Label15: TLabel;
    ECLASSIF: TDBEdit;
    rpreco: TAdvOfficeCheckBox;
    AlterarPrecodeVenda1: TMenuItem;
    efracao: TRzDBNumericEdit;
    Label26: TLabel;
    eprod_sub: TRzNumericEdit;
    edperc: TRzNumericEdit;
    GroupBox9: TGroupBox;
    eitem: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
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
    procedure eprod_subExit(Sender: TObject);
    procedure edpercExit(Sender: TObject);
    procedure eitemEnter(Sender: TObject);
    procedure eitemExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcompra_item: Tfrmcompra_item;

implementation

uses compra, principal, xloc_produto, modulo, xloc_cfop, xloc_cst,
  compra_menu, produto_preco, produto_gradeF;

{$R *.dfm}

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
                    if frmcompra.vopcao = 1 then
                         begin
                              frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                              if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                                   frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
                              else
                                   frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
                                   frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                                   frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                                   frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
                                   frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
                                   eun_compra.setfocus;
                         end;
               end
          else
               begin
                    frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmprincipal.zerarcodigo(ecodproduto.Text,6);
                    if  frmcompra.qrnota_item.FieldByName('codproduto').asstring <> '000000' then
                         begin
                              frmmodulo.qrproduto.Close;
                              frmmodulo.qrproduto.sql.clear;
                              frmmodulo.qrproduto.sql.add('select * from c000025 where codIGO = '''+frmcompra.qrnota_item.FieldByName('codproduto').asstring+'''');
                              frmmodulo.qrproduto.open;
                              if frmmodulo.qrproduto.RecordCount > 0 then
                                   begin
                                        if frmcompra.vopcao = 1 then
                                             begin
                                                  frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                                                  if frmmodulo.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                                                       frmcompra.qrnota_item.FieldByName('fracao').asfloat := frmmodulo.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
                                                  else
                                                       begin
                                                            frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
                                                            frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                                                            frmcompra.qrnota_item.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                                                            frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
                                                       end;
                                             end;
                                             eun_compra.setfocus;
                                   end
                              else
                                   begin
                                        application.messagebox('Produto não cadastrado!','Aviso',mb_ok+mb_iconwarning);
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
          frmcompra.qrnota_item.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          if frmcompra.vopcao = 1 then
               begin
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
     if eun_compra.Text = '' then
          begin
               Showmessage('Não Informado a Unidade de Compra, Verifique...');
               eun_compra.Color := $00A8FFFF;
               eun_compra.SetFocus;
          end;

  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra_item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin



  frmcompra.qrnota_item.First;
  while not frmcompra.qrnota_item.Eof do
     begin
          frmcompra.vbicms := frmcompra.vbicms+frmcompra.qrnota_itemICMS_BASE.Value;
          frmcompra.vvicms := frmcompra.vvicms+frmcompra.qrnota_itemICMS_VALOR.Value;
          frmcompra.vipi := frmcompra.vipi+frmcompra.qrnota_itemIPI_VALOR.Value;

          frmcompra.vbst := frmcompra.vbst+frmcompra.qrnota_itemSUB_BASE.Value;
          frmcompra.vvst := frmcompra.vvst+frmcompra.qrnota_itemSUB_VALOR.Value;

          frmcompra.vfrete := frmcompra.vfrete+efrete.Value; //.qrnota_itemFRETE.Value;
          frmcompra.vseguro := frmcompra.vseguro+eseguro.Value; //.qrnota_itemSEGURO.Value;
          frmcompra.voutras := frmcompra.voutras+eoutras.Value; //.qrnota_itemOUTRAS.Value;

          frmcompra.vprodutos := frmcompra.vprodutos+frmcompra.qrnota_itemTOTAL.Value;
          frmcompra.vtotal    := frmcompra.vtotal+(frmcompra.vprodutos+frmcompra.vvst+frmcompra.vfrete+frmcompra.vseguro+frmcompra.voutras+frmcompra.vipi);
          frmcompra.qrnota_item.next;

     end;


     frmcompra.edbicms.Value       := frmcompra.vbicms;
     frmcompra.edvicms.Value       := frmcompra.vvicms    ;
     frmcompra.edipi.Value         := frmcompra.vipi      ;
     frmcompra.edbst.Value         := frmcompra.vbst      ;
     frmcompra.edvst.Value         := frmcompra.vvst      ;
     frmcompra.edfrete.Value       := frmcompra.vfrete    ;
     frmcompra.edseguro.Value      := frmcompra.vseguro   ;
     frmcompra.edoutras.Value      := frmcompra.voutras   ;
     frmcompra.edprodutos.Value    := frmcompra.vprodutos ;
     frmcompra.edtotal.Value       := frmcompra.vprodutos+frmcompra.vipi+frmcompra.vvst+frmcompra_menu.qrnotaITEM_ESPECIAL_TOTAL.Value;
    action := cafree;
end;

procedure Tfrmcompra_item.FormShow(Sender: TObject);
begin

     if frmcompra.qrnota_item.FieldByName('IPI_ALIQUOTA').asfloat > 0 then
          begin
               combo_ipi.ItemIndex := 1;
               xipi := combo_ipi.ItemIndex;
          end
     else
          combo_ipi.ItemIndex := xipi;

     ereducao.Value := xreducao;
     rpreco.Checked := altera_preco;

     ecodproduto.setfocus

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
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

      frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

      frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

      IF FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT > 0 THEN
      BEGIN
        if frmcompra.XDESCONTO.Checked =  false THEN
        BEGIN
         frmcompra.qrnota_item.FieldByName('DESCONTO').asfloat :=
         FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT *
         (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat  /
         (FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT+
         FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT));
       END;
      END;

    END;











end;

procedure Tfrmcompra_item.bgravarClick(Sender: TObject);
begin
  if frmcompra.qrnota_item.FieldByName('total').asfloat = 0 then
  begin
    application.messagebox('Favor informar o valor!','Atenção',mb_ok+mb_iconerror);
    exit;
  end;



  frmmodulo.qrproduto.edit;
  frmmodulo.qrproduto.fieldbyname('codfornecedor').asstring := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
  frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring;
  frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring :=        frmmodulo.qrproduto.FieldByName('notafiscal').asstring;
  frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring :=     frmmodulo.qrproduto.FieldByName('codfornecedor').asstring;


  IF EFRACAO.VALUE > 0 THEN
  frmmodulo.qrproduto.FieldByName('estoque').asfloat :=
  frmmodulo.qrproduto.FieldByName('estoque').asfloat + (frmcompra.qrnota_item.fieldbyname('qtde').asfloat*EFRACAO.VALUE)
    ELSE
  frmmodulo.qrproduto.FieldByName('estoque').asfloat :=
  frmmodulo.qrproduto.FieldByName('estoque').asfloat + frmcompra.qrnota_item.fieldbyname('qtde').asfloat;

  frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmcompra_menu.qrnota.fieldbyname('data_emissao').asstring;
  frmmodulo.qrproduto.FieldByName('notafiscal').asstring :=        frmcompra_menu.qrnota.fieldbyname('numero').asstring;
  frmmodulo.qrproduto.FieldByName('codfornecedor').asstring :=     frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;

 TRY
  if RPRECO.Checked then
  begin


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
       END
       ELSE
       BEGIN
         frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := etotal.value/eqtde.Value;
         frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := (etotal.value+efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
         FRMMODULO.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := (efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
       END;


       frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.value;
       frmproduto_preco := tfrmproduto_preco.create(self);
       frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Inclusão';
       frmproduto_preco.showmodal;
      end
      else
      begin
       frmmodulo.qrpreco.edit;
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


       frmproduto_preco.showmodal;
      end;

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

  frmmodulo.qrproduto.post;

  if frmcompra.vopcao = 1 then
     itens := itens + 1;

  frmcompra.qrnota_item.post;


  (****************** INCLUIR UM NOVO ITEM *********************)

     if frmcompra.vopcao = 1 then
          begin
               FRMCOMPRA.qrnota_item.Insert;
               FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
               FRMCOMPRA.qrnota_item.fieldbyname('codlancamento').asstring := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
               codigo_it := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
               FRMCOMPRA.qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP').asstring;
               if frmcompra_menu.qrnota.FieldByName('CONF_ICMSRETIDO').asfloat > 0 then
                    FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'S' else FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'N';
               FRMCOMPRA.qrnota_item.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(itens),3);
          end;

  combo_ipi.ItemIndex := xipi;
  ereducao.Value := xreducao;
  rpreco.Checked := altera_preco;

     if frmcompra.vopcao = 1 then
          ECODPRODUTO.SETFOCUS
     else
          close;

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
begin
     frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := etotal.Value;
     frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := etotal.Value*ealiquota.Value/100;

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
  if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
     (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') then
  begin

    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') then // reducao na base de calculo
    begin

      if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 0 then
      begin
        // calcular substituicao tributaria sem informar icms retido

        if (frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then
        begin

        if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
          begin
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;

          frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat :=
          frmcompra.qrnota_item.FieldByName('total').asfloat +
          (frmcompra.qrnota_item.FieldByName('total').asfloat*(frmcompra.qrnota_item.FieldByName('sub_margem').asfloat/100));


          frmcompra.qrnota_item.FieldByName('SUB_VALOR').asfloat :=
              (frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat * (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100)) -
              frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat;

        end
        else
        begin
          if (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then
          begin

          if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
               begin

            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
            end;

          end;
        end;


      end;
    end
    else
    begin
      if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
      begin
          frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat :=
          frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat +
          (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat*(frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat/100));
      end
      else
      begin


        // calcular substituicao tributaria sem informar icms retido

        //if (frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then

        if (frmcompra.qrnota_item.fieldbyname('sub_margem').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0) then

        begin
        if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
          begin


            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat;
            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          end;

          frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat :=
          frmcompra.qrnota_item.FieldByName('total').asfloat +
          (frmcompra.qrnota_item.FieldByName('total').asfloat*(frmcompra.qrnota_item.FieldByName('sub_margem').asfloat/100));

          frmcompra.qrnota_item.FieldByName('SUB_VALOR').asfloat :=
              (frmcompra.qrnota_item.FieldByName('SUB_BASE').asfloat * (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100)) -
              frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat;


        end
        else
        begin
          frmcompra.qrnota_item.fieldbyname('sub_base').asfloat := frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat;

          if frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat = 0 then
          begin

            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat;
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
        begin
          IF frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0 THEN
          BEGIN
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat *
                                                                     (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat/100)) /
                                                                     (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfloat/100);

            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          END;
        end
        else
        begin
          IF frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT > 0 THEN
          BEGIN
            frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := frmcompra.qrnota_item.fieldbyname('TOTAL').asfloat;
            frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat *
                                                                       (frmcompra.qrnota_item.fieldbyname('ICMS_ALIQUOTA').asfLOAT/100);
          END;
        end;
      end;
    end;
  end;









end;

procedure Tfrmcompra_item.combo_ipiKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
  if combo_ipi.ItemIndex > 0 then
  begin
    ealiquota_ipi.setfocus;
  end
  else
  begin
    bgravar.setfocus;
  end;

  END;
end;

procedure Tfrmcompra_item.combo_ipiExit(Sender: TObject);
begin
  if combo_ipi.ItemIndex > 0 then
  begin
    ealiquota_ipi.setfocus;
  end
  else
  begin
    bgravar.setfocus;
  end;
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

    frmcompra.qrnota_item.FieldByName('total').asfloat :=
    frmcompra.qrnota_item.FieldByName('subtotal').asfloat -
    frmcompra.qrnota_item.FieldByName('desconto').asfloat ;

    IF frmcompra.qrnota_item.FieldByName('total').asfloat > 0 THEN
    BEGIN
      frmcompra.qrnota_item.FieldByName('FRETE').asfloat :=
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

      frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

      frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT *
      (frmcompra.qrnota_item.FieldByName('total').asfloat  / FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT);

    END;
end;

procedure Tfrmcompra_item.ebase_icmsExit(Sender: TObject);
begin
     frmcompra.qrnota_item.fieldbyname('ICMS_VALOR').asfloat := ebase_icms.Value*ealiquota.Value/100;

end;

procedure Tfrmcompra_item.ebase_subExit(Sender: TObject);
begin
     if eprod_sub.Value = 0 then
          begin
               if ebase_sub.Value > 0 then
                    frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := (ebase_sub.Value*ealiquota.Value/100)-evalor_icms.Value;
          end;
end;

procedure Tfrmcompra_item.eprod_subExit(Sender: TObject);
begin
    if eprod_sub.Value > 0 then
          begin
          {
               showmessage('base subst : '+floattostr(frmcompra.ebase_subst.Value)+' valor subst : '+floattostr(frmcompra.evalor_subst.Value));
               vsub := etotal.Value*frmcompra.ebase_subst.Value/eprod_sub.Value;
               vval := etotal.Value*frmcompra.evalor_subst.Value/eprod_sub.Value;
               ebase_sub.Value  := vsub;
               evalor_sub.Value := vval;
               //showmessage('base subst : '+floattostr(ebase_sub.Value)+' valor subst : '+floattostr(evalor_sub.Value);

           }

               frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat := etotal.Value*frmcompra.ebase_subst.Value/eprod_sub.Value;
               frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := etotal.Value*frmcompra.evalor_subst.Value/eprod_sub.Value;

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
     if eunitario.Value = 0 then
          begin
               Showmessage('Não Informado o Valor do Item, Verifique...');
               eunitario.Color := $00A8FFFF;
               eunitario.SetFocus;
          end;

     frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('qtde').asfloat *
    eunitario.value ;

end;

procedure Tfrmcompra_item.ecfopExit(Sender: TObject);
begin
     if (frmcompra_menu.qrfornecedorUF.Value = frmcompra_menu.qrempresaUF.Value) and (copy(ecfop.Text,1,1) = '2') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
          end
     else if (frmcompra_menu.qrfornecedorUF.Value <> frmcompra_menu.qrempresaUF.Value) and (copy(ecfop.Text,1,1) = '1') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
          end;

end;

end.



unit fiscal_entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DB, Wwdatsrc, RxLookup,
  Buttons, DBCtrls, PageView, Menus, Grids, DBGrids, Wwdotdot, Wwdbcomb,
  wwdbedit, HpHint, RzBHints, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, TFlatListBoxUnit, RzButton,
  RzRadChk, RzEdit, RzDBEdit, TFlatSpeedButtonUnit, RzPanel, RzLabel,
  RzCmboBx, RzDBChk, RzDBCmbo, RxMemDS, CellEditors, CurrEdit, XPMenu,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdbigrd, Wwdbgrid,
  RzRadGrp, RzDBRGrp, TFlatPanelUnit, Collection, wwdblook, ZConnection;

type
  Tfrmfiscal_entrada = class(TForm)
    dsempresa: TwwDataSource;
    dsentrada: TwwDataSource;
    dspcontas: TwwDataSource;
    dsfornecedor: TwwDataSource;
    dsrxitem: TwwDataSource;
    dsprodutos: TwwDataSource;
    rxitem: TRxMemoryData;
    dsitem: TwwDataSource;
    dsadiciona_item: TDataSource;
    qradiciona_item: TZQuery;
    pprincipal: TFlatPanel;
    Panel2: TPanel;
    PageControl2: TPageView;
    PageSheet1: TPageSheet;
    RzGroupBox1: TRzGroupBox;
    Label23: TLabel;
    Label46: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label44: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label14: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label52: TLabel;
    locproduto: TFlatSpeedButton;
    Label53: TLabel;
    Label55: TLabel;
    Label35: TLabel;
    Label79: TLabel;
    Label17: TLabel;
    Label56: TLabel;
    edcodproduto: TRzEdit;
    edqde: TCurrencyEdit;
    edvalor: TCurrencyEdit;
    btincuir: TBitBtn;
    btcancela: TBitBtn;
    edaicms: TCurrencyEdit;
    edsubtotal: TCurrencyEdit;
    edproduto: TRzEdit;
    edst: TRzEdit;
    edaisentasicms: TCurrencyEdit;
    edaoutrasicms: TCurrencyEdit;
    ednotacancelada: TRzComboBox;
    edaisentasipi: TCurrencyEdit;
    edaoutrasipi: TCurrencyEdit;
    PageView5: TPageView;
    PageSheet19: TPageSheet;
    Label28: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2num_item: TcxGridDBColumn;
    cxGridDBTableView2cd_produto: TcxGridDBColumn;
    cxGridDBTableView2produto: TcxGridDBColumn;
    cxGridDBTableView2quantidade: TcxGridDBColumn;
    cxGridDBTableView2subtotal: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzGroupBox5: TRzGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edicmsbase: TRzDBEdit;
    edicms: TRzDBEdit;
    edicmsimposto: TRzDBEdit;
    edicmsisentas: TRzDBEdit;
    edicmsoutras: TRzDBEdit;
    RzGroupBox6: TRzGroupBox;
    Label15: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edipibase: TRzDBEdit;
    edipiisentas: TRzDBEdit;
    edipi: TRzDBEdit;
    edipioutras: TRzDBEdit;
    edipiimposto: TRzDBEdit;
    RzGroupBox7: TRzGroupBox;
    Label33: TLabel;
    Label37: TLabel;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    PageSheet24: TPageSheet;
    RzGroupBox9: TRzGroupBox;
    Label39: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    edaipi: TCurrencyEdit;
    edabaseicms: TCurrencyEdit;
    edabaseipi: TCurrencyEdit;
    edunidade: TRzEdit;
    edtipoipi: TRzComboBox;
    RzGroupBox8: TRzGroupBox;
    Label36: TLabel;
    Label54: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    tbasecalculo: TCurrencyEdit;
    tvaloricms: TCurrencyEdit;
    tbaseicmssubst: TCurrencyEdit;
    tvaloricmssubst: TCurrencyEdit;
    tvalorproduto: TCurrencyEdit;
    tfrete: TCurrencyEdit;
    tseguro: TCurrencyEdit;
    tdespesas: TCurrencyEdit;
    tipi: TCurrencyEdit;
    tnota: TCurrencyEdit;
    picms: TFlatPanel;
    Label30: TLabel;
    PageSheet3: TPageSheet;
    RzGroupBox10: TRzGroupBox;
    PageSheet4: TPageSheet;
    RzGroupBox11: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    Label57: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    edlomodelo: TFlatSpeedButton;
    Label6: TLabel;
    Label1: TLabel;
    locfornecedor: TFlatSpeedButton;
    Label49: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label68: TLabel;
    edmodelo: TRzComboBox;
    edcodcliente: TRzEdit;
    edcliente: TRzEdit;
    edclientecnpj: TRzEdit;
    edclienteuf: TRzEdit;
    edclienteie: TRzEdit;
    RzEdit2: TRzEdit;
    edespecie: TRzEdit;
    edserie: TRzEdit;
    ednfiscal: TRzEdit;
    eddtlancamento: TDateEdit;
    eddtdocumento: TDateEdit;
    edhistorico: TRzEdit;
    RzGroupBox2: TRzGroupBox;
    edlocempresa: TFlatSpeedButton;
    edcod: TRzEdit;
    RzPanel14: TRzPanel;
    edempresa: TRzLabel;
    ViewSplit1: TViewSplit;
    menu_gravar: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dbmemo1: TMemo;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    query: TZQuery;
    edcfop: TRzComboBox;
    Label34: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label83: TLabel;
    Label51: TLabel;
    edtnome: TRzEdit;
    edtplaca: TRzEdit;
    edtuf: TRzEdit;
    edtcnpj: TRzEdit;
    edtendereco: TRzEdit;
    edtespecie: TRzEdit;
    edtmarca: TRzEdit;
    edtmunicipio: TRzEdit;
    edtmunicipiouf: TRzEdit;
    edtie: TRzEdit;
    edtnumero: TRzEdit;
    edtbruto: TCurrencyEdit;
    edtliquido: TCurrencyEdit;
    edtqde: TCurrencyEdit;
    edtipofrete: TRzComboBox;
    Label31: TLabel;
    Label82: TLabel;
    Label50: TLabel;
    Label62: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    rxitemmodelo_nf: TStringField;
    rxitemdatahora_ini: TDateField;
    rxitemnotafiscal: TStringField;
    rxitemcd_produto: TStringField;
    rxitemquantidade: TFloatField;
    rxitemproduto: TStringField;
    rxitemsubtotal: TFloatField;
    rxitemvalor_venda_bruta: TFloatField;
    rxitemvalor_total_geral: TFloatField;
    rxitemDATA_EMISSAO: TStringField;
    rxitemtotal: TFloatField;
    rxitembase_calculo: TFloatField;
    rxitembase_icms: TFloatField;
    rxitemvalor_icms: TFloatField;
    rxitemmovimento: TIntegerField;
    rxitemcod_pedidos: TStringField;
    rxitemnum_item: TStringField;
    rxitemcl_fis: TStringField;
    rxitemapr_und: TStringField;
    rxitemaliquota_ipi: TFloatField;
    rxitemaliquota_icms: TFloatField;
    rxitemreducao_base_icms: TFloatField;
    rxitembase_icms_subst: TFloatField;
    rxitemdatahora: TDateTimeField;
    rxitemvalor_desconto: TFloatField;
    rxitemTIPO: TStringField;
    rxitembase_ipi: TFloatField;
    rxitemvalor_ipi: TFloatField;
    rxitemcfop: TStringField;
    rxitemoutras_ipi: TFloatField;
    rxitemisentas_ipi: TFloatField;
    rxitemoutras_icms: TFloatField;
    rxitemisentas_icms: TFloatField;
    rxitemipi_nao_creditado: TFloatField;
    rxitemfrete: TFloatField;
    rxitemseguro: TFloatField;
    rxitemoutras_despesas: TFloatField;
    rxitems_trib: TStringField;
    rxitemTIPO_FRETE: TStringField;
    rxitemnro_serie_eqp: TStringField;
    rxitemnro_ordem_eqp: TStringField;
    rxitemmodelo_doc: TStringField;
    rxitemnro_contador_inicio: TStringField;
    rxitemnro_contador_fim: TStringField;
    rxitemnro_contador_z: TStringField;
    rxitemcontador_reinicio: TStringField;
    rxitembrancos: TStringField;
    rxitemdatahora_recebimento: TDateField;
    rxitemdatahora_fim: TDateField;
    rxitemdatahora_emissao: TDateField;
    rxitemCODNOTA: TStringField;
    rxitemvalor_substituicao: TFloatField;
    qrproduto: TZQuery;
    edfracao: TCurrencyEdit;
    Label2: TLabel;
    rxitemfracao: TFloatField;
    Label32: TLabel;
    ecfop: TRzComboBox;
    RzGroupBox3: TRzGroupBox;
    RTOTAL: TRxCalcEdit;
    btexcluir: TBitBtn;
    Label29: TLabel;
    rdesconto: TCurrencyEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label58: TLabel;
    Shape3: TShape;
    Label59: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label63: TLabel;
    rxitemdesconto: TFloatField;
    rxitemreducao: TFloatField;
    rxitemcodigo: TStringField;
    RzGroupBox12: TRzGroupBox;
    locpcontas: TFlatSpeedButton;
    edcodpcontas: TRzEdit;
    edpcontas: TRzEdit;
    RDESCONTO_NOTA: TCurrencyEdit;
    comboreducao: TCurrencyEdit;
    rxitemUNITARIO: TFloatField;
    LICMS: TLabel;
    NDESCONTO: TCheckBox;
    comboretido: TRzComboBox;
    Label41: TLabel;
    Label42: TLabel;
    RICMS_RETIDO: TCurrencyEdit;
    RRETIDO: TCurrencyEdit;
    qrgrade_entrada: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ednfiscalExit(Sender: TObject);
    procedure edcodKeyPress(Sender: TObject; var Key: Char);
    procedure edlocempresaClick(Sender: TObject);
    procedure edmodeloExit(Sender: TObject);
    procedure edlomodeloClick(Sender: TObject);
    procedure dsentradaDataChange(Sender: TObject; Field: TField);
    procedure locprodutoClick(Sender: TObject);
    procedure btincuirClick(Sender: TObject);
    procedure btcancelaClick(Sender: TObject);
    procedure edaipiExit(Sender: TObject);
    procedure locfornecedorClick(Sender: TObject);
    procedure edcodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edcodclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edserieKeyPress(Sender: TObject; var Key: Char);
    procedure edaicmsExit(Sender: TObject);
    procedure edvalorExit(Sender: TObject);
    procedure edqdeExit(Sender: TObject);
    procedure tbasecalculoEnter(Sender: TObject);
    procedure tbasecalculoExit(Sender: TObject);
    procedure tvaloricmsEnter(Sender: TObject);
    procedure tvaloricmsExit(Sender: TObject);
    procedure tvalorprodutoEnter(Sender: TObject);
    procedure tvalorprodutoExit(Sender: TObject);
    procedure tnotaExit(Sender: TObject);
    procedure tnotaEnter(Sender: TObject);
    procedure cxGridDBTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure edqdeEnter(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
    procedure edaicmsEnter(Sender: TObject);
    procedure edaipiEnter(Sender: TObject);
    procedure tbaseicmssubstEnter(Sender: TObject);
    procedure tbaseicmssubstExit(Sender: TObject);
    procedure tvaloricmssubstExit(Sender: TObject);
    procedure tvaloricmssubstEnter(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure ediesubstitutoKeyPress(Sender: TObject; var Key: Char);
    procedure edcodpcontasKeyPress(Sender: TObject; var Key: Char);
    procedure locpcontasClick(Sender: TObject);
    procedure edcfopKeyPress(Sender: TObject; var Key: Char);
    procedure edtipoipiKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluirClick(Sender: TObject);
    procedure edtliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure edtnomeKeyPress(Sender: TObject; var Key: Char);
    procedure comboreducaoKeyPress(Sender: TObject; var Key: Char);
    procedure comboreducaoExit(Sender: TObject);
    procedure RDESCONTO_NOTAExit(Sender: TObject);
    procedure RDESCONTO_NOTAEnter(Sender: TObject);
    procedure comboreducaoEnter(Sender: TObject);
    procedure edstExit(Sender: TObject);
    procedure NDESCONTOClick(Sender: TObject);
    procedure comboretidoKeyPress(Sender: TObject; var Key: Char);
    procedure RICMS_RETIDOExit(Sender: TObject);
    procedure tnotaKeyPress(Sender: TObject; var Key: Char);

  private
     vlbaseicms,vlicms,vlbaseicmssubt,vlicmssubt,vlprodutos: double;
     vlfrete,vlseguro,vldespesas,vlipi,vlcontabil,vltcontabil,vltprodutos, vlisentasicms,
          vloutrasicms,  vlbaseipi, vlisentasipi, vloutrasipi : double;
     vespecie,vmodelo,vcfop,vcfopa,vnfiscal,vdesdobra,vnota,vcancela: string;
     vempresa,vterceiros: integer;

     procedure totaliza;



    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiscal_entrada: Tfrmfiscal_entrada;
  

implementation

uses modulo, principal, xloc_empresa, xloc_modelo, xloc_produto,
  xloc_fornecedor, xloc_conta, Math, produto_preco, produto_gradeF,
  produto_serialF;

{$R *.dfm}

procedure Tfrmfiscal_entrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmmodulo.qrcfop.Close;
     frmmodulo.qritem.Close;
     frmmodulo.qrfiscal_classe.Close;
     frmmodulo.qrfilial.Close;
     frmmodulo.qrfornecedor.Close;
     frmmodulo.qrproduto.Close;
     frmmodulo.qrplano.Close;
end;

procedure Tfrmfiscal_entrada.ednfiscalExit(Sender: TObject);
begin
     ednfiscal.text :=  frmprincipal.zerarcodigo(ednfiscal.text,6);
     if ednfiscal.Text = '000000' then
          begin
               showmessage('Atenção, Nota Fiscal Não Informada...');
               ednfiscal.SetFocus;
          end;


end;

procedure Tfrmfiscal_entrada.edcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin


     if edcod.Text = '' then
          edlocempresa.Click
     else
          begin
               //if frmmodulo.qrfilial.State in [dsedit,dsinsert] then
                    //begin
                         edcod.Text := FormatFloat('000000',StrToFloat(edcod.Text));
                         if frmmodulo.qrfilial.Locate('codigo',edcod.Text,[]) then
                              begin

                                   //frmmodulo.qrnotaCODIGO_EMPRESA.Value := frmmodulo.qrfilialCODIGO.Value;
                                   //frmmodulo.qrnotaCNPJ.Value := fsintegra.sonumeros(frmmodulo.qrfilialCNPJ.Value);
                                   //frmmodulo.qrnotaINSC_ESTADUAL.Value := fsintegra.sonumeros(frmmodulo.qrfilialIE.Value);
                                   //frmmodulo.qrnotaUF.Value := frmmodulo.qrfilialUF.Value;

                                   edempresa.Caption := frmmodulo.qrfilialfilial.Value;
//                                   edcnpj.Caption := frmmodulo.qrfilialCNPJ.Value;
//                                   edie.Caption := frmmodulo.qrfilialIE.Value;
//                                   eduf.Caption := frmmodulo.qrfilialUF.Value;

                                   if frmmodulo.qrfilialCONTRIBUINTE_IPI.Value = 'S' then
                                        begin
                                             //frmmodulo.qrnotaALIQUOTA_IPI.Value := frmmodulo.qrfilialIPI.Value;
                                             //edipinaocreditado.Enabled := true;
                                        end;


                                   panel2.Enabled := true;

                              end
                         else
                              begin
                                   showmessage('Empresa Não Encontrada, Verifique...');
                                   edcod.Text := '';
                                   edcod.SetFocus;
                         end;
          end;
               PERFORM(WM_NEXTDLGCTL,0,0);

          end;

end;

procedure Tfrmfiscal_entrada.edlocempresaClick(Sender: TObject);
begin
     parametro_pesquisa := '';
     frmxloc_empresa := tfrmxloc_empresa.create(self);
     try
          frmxloc_empresa.showmodal;
     finally
          if resultado_pesquisa1 <> '' then
          begin
            frmmodulo.qrfilial.close;
            frmmodulo.qrfilial.sql.clear;
            frmmodulo.qrfilial.sql.add('select * from c000004 where codigo = '''+resultado_pesquisa1+'''');
            frmmodulo.qrfilial.open;
          edcod.Text  := frmmodulo.qrfilialCODIGO.Value;
          edempresa.Caption := frmmodulo.qrfilialfilial.Value;
//          edcnpj.Caption := frmmodulo.qrfilialCNPJ.Value;
//          edie.Caption := frmmodulo.qrfilialIE.Value;
//          eduf.Caption := frmmodulo.qrfilialUF.Value;


          if frmmodulo.qrfilialCONTRIBUINTE_IPI.Value = 'S' then
               begin
                    //gbipi.Enabled := true;
                    //lbipi.Caption := 'S';
               end
          else
               begin
                    //gbipi.Enabled := false;
                    //lbipi.Caption := 'N';
               end;

          if frmmodulo.qrfilialSUBSTITUTO_TRIBUTARIO.Value = 'S' then
               begin
                    //gbst.Enabled := true;
                    //lbst.Caption := 'S';
               end
          else
               begin
                    //gbst.Enabled := false;
                    //lbst.Caption := 'N';
               end;

          panel2.Enabled := true;
        end;
     end;

end;

procedure Tfrmfiscal_entrada.edmodeloExit(Sender: TObject);
begin
     if frmmodulo.qrfiscal_modelo.Locate('sintegra',edmodelo.Text,[loPartialKey,loCaseInsensitive]) then
          begin
               edespecie.Text := frmmodulo.qrfiscal_modeloSIGLA.Value;
               vespecie       := frmmodulo.qrfiscal_modeloSIGLA.Value;
               vmodelo        := frmmodulo.qrfiscal_modeloSINTEGRA.Value;
          end;

end;

procedure Tfrmfiscal_entrada.edlomodeloClick(Sender: TObject);
begin

     frmxloc_modelo := tfrmxloc_modelo.create(self);
     try
          frmxloc_modelo.showmodal;
     finally
          edmodelo.Text := resultado_pesquisa4;
          edespecie.Text := resultado_pesquisa3;

          vespecie       := resultado_pesquisa4;
          vmodelo        := resultado_pesquisa4;
     end;

end;

procedure Tfrmfiscal_entrada.dsentradaDataChange(Sender: TObject;
  Field: TField);
begin
//
end;

procedure Tfrmfiscal_entrada.locprodutoClick(Sender: TObject);
begin
               frmxloc_produto := tfrmxloc_produto.create(self);
               try
                    frmxloc_produto.showmodal;
               finally
                    if resultado_pesquisa1 <> '' then
                    begin
                      frmmodulo.qrproduto.close;
                      frmmodulo.qrproduto.sql.clear;
                      frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
                      frmmodulo.qrproduto.open;
                      edcodproduto.Text   := frmmodulo.qrprodutoCODIGO.Value;
                      edproduto.Text      := frmmodulo.qrprodutoPRODUTO.Value;
                      edst.Text           := frmmodulo.qrprodutoCST.Value;
                      edunidade.Text      := frmmodulo.qrprodutoUNIDADE.Value;
                      edvalor.Value       := frmmodulo.qrprodutoprecocusto.Value;

                      if frmmodulo.qrprodutoQTDE_EMBALAGEM.value > 0 then
                      edfracao.value        := frmmodulo.qrprodutoQTDE_EMBALAGEM.value
                      else
                      edfracao.value := 1;

                      ecfop.Text := edcfop.Text;

                      ecfop.setfocus;
                    end;
               end;
end;

procedure Tfrmfiscal_entrada.btincuirClick(Sender: TObject);
begin

     if (edqde.Value = 0) or (edvalor.Value = 0) then
          begin
               showmessage('Informações de Lançamento de Itens Inconsistentes, Verifique!');
               edqde.SetFocus;
               exit;
          end
     else
          begin



 TRY


  if application.messagebox('Deseja alterar preço de venda deste produto?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
      FRMMODULO.QRPRODUTO.Edit;
      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+EDCODPRODUTO.TEXT+'''');
      frmmodulo.qrpreco.open;

      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
       // caso produto nao tenha Grade de preco, criar
       frmmodulo.qrpreco.insert;
       frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
       frmmodulo.qrpreco.fieldbyname('codproduto').asstring := EDCODPRODUTO.Text;
       IF EDFRACAO.VALUE > 0 THEN
       BEGIN
         frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := EDVALOR.VALUE/(edfracao.VALUE);
         frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := EDVALOR.VALUE/(edfracao.VALUE);
       END
       ELSE
       BEGIN
         frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := EDVALOR.VALUE;
         frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := EDVALOR.VALUE;
       END;
       frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := EDAICMS.VALUE;
       frmproduto_preco := tfrmproduto_preco.create(self);
       frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Inclusão';
       frmproduto_preco.showmodal;
      end
      else
      begin
       frmmodulo.qrpreco.edit;
       frmproduto_preco := tfrmproduto_preco.create(self);
       frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Alteração';
       frmproduto_preco.showmodal;
      end;

  END;
  EXCEPT
  END;


  codigo_it := frmprincipal.codifica('000032');

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmproduto_gradef := tfrmproduto_gradef.create(self);
          frmproduto_gradef.showmodal;
        end;

      /// verificar se produto utiliza controle de seriais
        if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
        begin
          frmproduto_serialf := tfrmproduto_serialf.create(self);
          frmproduto_serialf.showmodal;
        end;


















               rxitem.Insert;
               rxitemcodigo.Value       := codigo_it;
               rxitemunitario.value     := edvalor.value;
               rxitemfracao.VALUE       := edfracao.Value;
               rxitemNUM_ITEM.Value     := formatfloat('000',rxitem.RecordCount+1);
               rxitemCD_PRODUTO.Value   := frmmodulo.qrprodutoCODIGO.Value;
               rxitemPRODUTO.Value      := frmmodulo.qrprodutoPRODUTO.Value;
               rxitemAPR_UND.Value      := frmmodulo.qrprodutoUNIDADE.Value;
               rxitemTIPO.Value         := 'E';
               rxitemS_TRIB.Value       := edst.Text;
               rxitemTIPO_FRETE.Value   := edtipofrete.Value;
               rxitemQUANTIDADE.Value   := edqde.value;
               rxitemSUBTOTAL.Value     := edsubtotal.value;
               rxitemDesconto.value     := rdesconto.value;
               rxitemNOTAFISCAL.Value   := formatfloat('000000',strtoint(ednfiscal.Text));



             rxitemreducao.value := comboreducao.value;



               rxitemCFOP.Value         := ecfop.Text;




         IF (edst.TEXT = '060') OR (edst.TEXT = '010') OR (edst.TEXT = '070') THEN // substituicao tributaria
        begin
           if comboretido.itemindex = 1 then
           begin
              if edaicms.value > 0 then
              begin
                rxitemaliquota_icms.VALUE := EDAICMS.Value;
                rxitembase_icms.Value := edabaseicms.value;
                rxitemvalor_icms.VALUE :=  RXITEMBASE_ICMS.VALUE * (EDAICMS.VALUE / 100);

                rxitemoutras_icms.Value     := edaoutrasicms.value;
                rxitembase_icms_subst.VALUE := edaoutrasicms.value;
                if edaicms.value > 0 then rxitemvalor_substituicao.value := edaoutrasicms.value * (edaicms.Value/100);
              end;
           end
           else
           begin
             rxitemoutras_icms.Value     := edaoutrasicms.value;
             rxitembase_icms_subst.VALUE := edaoutrasicms.value;
             if edaicms.value > 0 then rxitemvalor_substituicao.value := edaoutrasicms.value * (edaicms.Value/100);
           end;




        end
        ELSE
          IF (edst.TEXT = '040') OR (edst.TEXT = '030') THEN // isenta
          begin
             rxitemisentas_icms.Value := edaoutrasicms.value;
          end
          ELSE
            IF (edst.TEXT = '041') OR (edst.TEXT = '050') OR (edst.TEXT = '051') OR (edst.TEXT = '090') THEN // nao tributada
            begin
              rxitemoutras_icms.Value := edaoutrasicms.value;
            end
            ELSE
            BEGIN
              IF comboreducao.value = 0 THEN
                 rxitembase_icms.Value := edabaseicms.value
              ELSE
              BEGIN
                rxitembase_icms.value := (edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100);
              end;
              rxitemaliquota_icms.VALUE := EDAICMS.Value;
              rxitemvalor_icms.VALUE :=  RXITEMBASE_ICMS.VALUE * (EDAICMS.VALUE / 100);
            END;













               if edaipi.Value > 2 then
                    begin
                         begin
                              rxitemALIQUOTA_IPI.Value := edaipi.Value;
                              rxitemBASE_IPI.Value     := edsubtotal.value;
                              rxitemVALOR_IPI.Value    := edsubtotal.value*(edaipi.Value/100);

                         end;
                         rxitemISENTAS_IPI.Value  := edaisentasipi.Value;
                         rxitemOUTRAS_IPI.Value   := edaoutrasipi.Value;
               end;


               rxitemVALOR_TOTAL_GERAL.Value := edsubtotal.Value+((strtofloat(edqde.Text)*strtofloat(edvalor.Text))*(edaipi.Value/100)+edaoutrasicms.Value);

               vlbaseicms     := vlbaseicms+ RXITEMBASE_ICMS.VALUE;
               vlicms         := vlicms+((strtofloat(edqde.Text)*strtofloat(edvalor.Text))*(edaicms.Value/100));

               vlbaseicmssubt := vlbaseicmssubt+rxitembase_icms_subst.value;
               vlicmssubt     := vlicmssubt+rxitemvalor_substituicao.Value;
               vlprodutos     := vlprodutos+edsubtotal.value;

               vlfrete        := 0;
               vlseguro       := 0;
               vldespesas     := 0;
               vlipi          := vlipi+(edsubtotal.value*(edaipi.Value/100));
               if comboretido.ItemIndex = 1 then
                vlcontabil     := vlcontabil+edsubtotal.value+(rxitemvalor_substituicao.Value - rxitemvalor_icms.value)
               else
               vlcontabil     := vlcontabil+edsubtotal.value+rxitemvalor_substituicao.Value;


               


               rxitem.Post;
               rxitem.SortOnFields('num_item');
               rxitem.Open;

               edcodproduto.Text   := '';
               edqde.Text          := '0,000';
               edvalor.Text        := '0,00';

               edsubtotal.Value := 0;
               edaicms.Value := 0;
               edabaseicms.Value := 0;
               edaisentasicms.Value := 0;
               edaoutrasicms.Value := 0;
               edaipi.Value := 0;
               edabaseipi.Value := 0;
               edaisentasipi.Value := 0;
               edaoutrasipi.Value := 0;

               edfracao.value := 0;
               edproduto.Text := '';
               rdesconto.Value := 0;


               //edcodproduto.SetFocus;
               cxgrid1.SetFocus;
          end;


          RTOTAL.VALUE := VLCONTABIL +tfrete.Value+tseguro.value+tdespesas.value - rdesconto_nota.value;

end;


procedure Tfrmfiscal_entrada.btcancelaClick(Sender: TObject);
begin
     rxitem.Cancel;
     rxitem.Open;
     edcodproduto.Text := '';
     edcodproduto.SetFocus;
end;

procedure Tfrmfiscal_entrada.edaipiExit(Sender: TObject);

begin
     if edaipi.value = 0 then
          begin
               showmessage('Atenção, deve informado o valor da alíquota...');
          end
     else if edaipi.value = 1 then
          begin
               edaisentasipi.SetFocus;
               edaisentasipi.Value := strtofloat(edqde.Text)*strtofloat(edvalor.Text);
          end
     else if edaipi.value = 2 then
          begin
               edaoutrasipi.SetFocus;
               edaoutrasipi.Value := strtofloat(edqde.Text)*strtofloat(edvalor.Text);
          end
     else if edaipi.value > 2 then
          edabaseipi.Value := strtofloat(edqde.Text)*strtofloat(edvalor.Text);

     edaipi.Color := clWindow;

end;

procedure Tfrmfiscal_entrada.locfornecedorClick(Sender: TObject);
begin
   frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
   frmxloc_fornecedor.showmodal;
   if resultado_pesquisa1 <> '' then
   begin
     frmmodulo.qrfornecedor.close;
     frmmodulo.qrfornecedor.sql.clear;
     frmmodulo.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmmodulo.qrfornecedor.open;
     edcodcliente.Text  := frmmodulo.qrfornecedorCODIGO.Value;
     edcliente.Text                := frmmodulo.qrfornecedornome.Value;
     edclientecnpj.Text            := frmmodulo.qrfornecedorCNPJ.Value;
     edclienteie.Text              := frmmodulo.qrfornecedorIE.Value;
     edclienteuf.Text              := frmmodulo.qrfornecedoruf.Value;
     eddtlancamento.setfocus;
   end;
end;

procedure Tfrmfiscal_entrada.edcodprodutoKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     begin
         frmmodulo.qrproduto.close;
         frmmodulo.qrproduto.sql.clear;
         frmmodulo.qrproduto.sql.add('select * from c000025 where codbarra = '''+edcodproduto.text+'''');
         frmmodulo.qrproduto.open;
         if frmmodulo.qrproduto.RecordCount > 0 then
         begin
           edcodproduto.Text   := frmmodulo.qrprodutoCODIGO.Value;
           edproduto.Text      := frmmodulo.qrprodutoPRODUTO.Value;
           edst.Text           := frmmodulo.qrprodutoCST.Value;
           edunidade.Text      := frmmodulo.qrprodutoUNIDADE.Value;
           edvalor.Value       := frmmodulo.qrprodutoprecocusto.Value;
                      if frmmodulo.qrprodutoQTDE_EMBALAGEM.value > 0 then
                      edfracao.value        := frmmodulo.qrprodutoQTDE_EMBALAGEM.value
                      else
                      edfracao.value := 1;
           ecfop.Text := edcfop.Text;
           ecfop.setfocus;

         end
         else
         begin
       edcodproduto.text := frmprincipal.zerarcodigo(edcodproduto.text,6);
       if edcodproduto.text <> '000000' then
       begin
         frmmodulo.qrproduto.close;
         frmmodulo.qrproduto.sql.clear;
         frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+edcodproduto.text+'''');
         frmmodulo.qrproduto.open;
         if frmmodulo.qrproduto.RecordCount = 0 then
         begin
           application.messagebox('Produto não encontrado!','Atenção!',mb_ok+mb_iconwarning);
           locprodutoclick(frmfiscal_entrada);
         end
         else
         begin
           edcodproduto.Text   := frmmodulo.qrprodutoCODIGO.Value;
           edproduto.Text      := frmmodulo.qrprodutoPRODUTO.Value;
           edst.Text           := frmmodulo.qrprodutoCST.Value;
           edunidade.Text      := frmmodulo.qrprodutoUNIDADE.Value;
           edvalor.Value       := frmmodulo.qrprodutoprecocusto.Value;
                      if frmmodulo.qrprodutoQTDE_EMBALAGEM.value > 0 then
                      edfracao.value        := frmmodulo.qrprodutoQTDE_EMBALAGEM.value
                      else
                      edfracao.value := 1;
           ecfop.Text := edcfop.Text;
           ecfop.setfocus;
         end;
       end
       else
       begin
         locprodutoclick(frmfiscal_entrada);
       end;
       end;
     end;

end;

procedure Tfrmfiscal_entrada.edcodclienteKeyPress(Sender: TObject; var Key: Char);
begin

     if key=#13 then
     begin
       edcodcliente.text := frmprincipal.zerarcodigo(edcodcliente.text,6);
       if edcodcliente.text <> '000000' then
       begin
         frmmodulo.qrfornecedor.close;
         frmmodulo.qrfornecedor.sql.clear;
         frmmodulo.qrfornecedor.sql.add('select * from c000009 where codigo = '''+edcodcliente.text+'''');
         frmmodulo.qrfornecedor.open;
         if frmmodulo.qrfornecedor.RecordCount = 0 then
         begin
           application.messagebox('cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
           locfornecedorclick(frmfiscal_entrada);
         end
         else
         begin
            edcodcliente.Text             := frmmodulo.qrfornecedorCODIGO.Value;
            edcliente.Text                := frmmodulo.qrfornecedornome.Value;
            edclientecnpj.Text            := frmmodulo.qrfornecedorCNPJ.Value;
            edclienteie.Text              := frmmodulo.qrfornecedorIE.Value;
            edclienteuf.Text              := frmmodulo.qrfornecedoruf.Value;
            eddtlancamento.setfocus;
         end;
       end
       else
       begin
         locfornecedorclick(frmfiscal_entrada);
       end;
     end;
end;

procedure Tfrmfiscal_entrada.edserieKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmfiscal_entrada.edaicmsExit(Sender: TObject);
begin

       TEDIT(SENDER).COLOR := CLWINDOW;

        IF (edst.TEXT = '060') OR (edst.TEXT = '010') OR (edst.TEXT = '070') THEN // substituicao tributaria
        begin
           IF edst.TEXT = '070' THEN
           BEGIN
             COMBOREDUCAO.SETFOCUS;
           END
           ELSE
           BEGIN
             if comboretido.ItemIndex = 1 then
             begin
               edaoutrasicms.Value := edsubtotal.value + (edsubtotal.value*(RRETIDO.VALUE/100));
               edabaseicms.Value := edsubtotal.value;
               edabaseicms.SetFocus;
             end
             ELSE
             BEGIN
               edaoutrasicms.Value := edsubtotal.value;
               edaoutrasicms.SetFocus;               
             END;
           END;
        end
        ELSE
          IF (edst.TEXT = '040') OR (edst.TEXT = '030') THEN // isenta
          begin
            edaisentasicms.SetFocus;
            edaisentasicms.Value := edsubtotal.value;
          end
          ELSE
            IF (edst.TEXT = '041') OR (edst.TEXT = '050') OR (edst.TEXT = '051') OR (edst.TEXT = '090') THEN // nao tributada
            begin
              edtipoipi.SetFocus;
            end
            ELSE
              IF EDST.TEXT = '020' THEN
              BEGIN
                COMBOREDUCAO.SETFOCUS;
              END
              ELSE
              BEGIN
                //
              END;









{     if edaicms.value = 0 then
     begin
               showmessage('Atenção, deve informado o valor da alíquota...');
               edaicms.SetFocus;
     end
     else
       edaicms.Color := clWindow;
       PICMS.Visible := FALSE;
       if edaicms.value = 1 then
       begin
          edaisentasicms.SetFocus;
          edaisentasicms.Value := edsubtotal.value;
       end
       else
         if edaicms.value = 2 then
         begin
               edaoutrasicms.SetFocus;
               edaoutrasicms.Value := edsubtotal.value;
          end
          else
           if edaicms.value > 2 then
           begin
              IF comboreducao.value = 0 THEN
                 edabaseicms.Value := edsubtotal.value
              ELSE
              BEGIN
                edabaseicms.Value := (edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100);
              end;
           end;
}


end;

procedure Tfrmfiscal_entrada.edvalorExit(Sender: TObject);
begin
     edsubtotal.Value := (edqde.value*edvalor.value) - rdesconto.value;
     edvalor.Color := clWindow;

end;

procedure Tfrmfiscal_entrada.edqdeExit(Sender: TObject);
begin
     if edqde.Value = 0 then
          begin
               showmessage('Atenção, nao foi informado a quantidade verifique...');
               edqde.SetFocus;
          end
          else
          begin
             edsubtotal.Value := (edqde.value*edvalor.value) - rdesconto.value;
             edvalor.Color := clWindow;
          end;
     edqde.Color := clWindow;

end;

procedure Tfrmfiscal_entrada.tbasecalculoEnter(Sender: TObject);
begin
     tbasecalculo.Color := clYellow;
end;

procedure Tfrmfiscal_entrada.tbasecalculoExit(Sender: TObject);
begin
     tbasecalculo.Color := clWindow;
end;

procedure Tfrmfiscal_entrada.tvaloricmsEnter(Sender: TObject);
begin
     tvaloricms.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.tvaloricmsExit(Sender: TObject);
begin
     tvaloricms.Color := clWindow;

end;

procedure Tfrmfiscal_entrada.tvalorprodutoEnter(Sender: TObject);
begin
     tvalorproduto.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.tvalorprodutoExit(Sender: TObject);
begin
     if tvalorproduto.Value = 0 then
          begin
               showmessage('Valor dos Produtos da Nota Fiscal Não Informada, Verifique...');
               tvalorproduto.SetFocus;
          end;

     vltprodutos := tvalorproduto.Value;

  tedit(sender).color := clwindow;

  IF RICMS_RETIDO.VALUE > 0 THEN
  BEGIN
    COMBORETIDO.ItemIndex := 1;
    IF NDESCONTO.Checked THEN
      tnota.value := RICMS_RETIDO.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;




  END
  ELSE
  BEGIN
    COMBORETIDO.ItemIndex := 0;
    IF NDESCONTO.Checked THEN
      tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;

  END;


  vltcontabil := tnota.Value;
end;

procedure Tfrmfiscal_entrada.tnotaEnter(Sender: TObject);
begin
     tnota.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.tnotaExit(Sender: TObject);
begin
     if tnota.Value = 0 then
          begin
               showmessage('Valor da Nota Fiscal Não Informada, Verifique...');
               tnota.SetFocus;
          end;
     tnota.Color := clWindow;
     vltcontabil := tnota.Value;

end;


procedure Tfrmfiscal_entrada.cxGridDBTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
          edcodproduto.SetFocus;

end;

procedure Tfrmfiscal_entrada.cxGridDBTableView2DblClick(Sender: TObject);
begin
     edcodproduto.SetFocus;

end;

procedure Tfrmfiscal_entrada.edqdeEnter(Sender: TObject);
begin
     edqde.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.edvalorEnter(Sender: TObject);
begin
     edvalor.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.edaicmsEnter(Sender: TObject);
begin

     edaicms.Color := clYellow;
//     picms.visible := true;

end;

procedure Tfrmfiscal_entrada.edaipiEnter(Sender: TObject);
begin
     edaipi.Color := clYellow;
//          picms.visible := false;




end;

procedure Tfrmfiscal_entrada.tbaseicmssubstEnter(Sender: TObject);
begin
     tbaseicmssubst.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.tbaseicmssubstExit(Sender: TObject);
begin
     tbaseicmssubst.Color := clWindow;

end;

procedure Tfrmfiscal_entrada.tvaloricmssubstExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;

  IF RICMS_RETIDO.VALUE > 0 THEN
  BEGIN
    COMBORETIDO.ItemIndex := 1;
    IF NDESCONTO.Checked THEN
      tnota.value := RICMS_RETIDO.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;




  END
  ELSE
  BEGIN
    COMBORETIDO.ItemIndex := 0;
    IF NDESCONTO.Checked THEN
      tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;

  END;


  vltcontabil := tnota.Value;
end;

procedure Tfrmfiscal_entrada.tvaloricmssubstEnter(Sender: TObject);
begin
     tvaloricmssubst.Color := clYellow;

end;

procedure Tfrmfiscal_entrada.bgravarClick(Sender: TObject);
var
     vtotcontabil,vtotmercadoria: double;
     vnfiscal: string;
     perc : real;


begin
    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    FRMMODULO.QRPRODUTO_MOV.OPEN;

 totaliza;

             if edcfop.Text = '' then
             begin
               showmessage('Atenção, CFOP Não Informada...');
               edcfop.SetFocus;
             end;

   VLCONTABIL := VLCONTABIL + tfrete.Value+tseguro.value+tdespesas.value - rdesconto_nota.value;
   query.close;
   query.sql.clear;
   query.sql.add('select * from c000086 where codigo = '''+edcodcliente.text+ednfiscal.text+'''');
   query.open;
   if query.RecordCount > 0 then
   begin
     application.messagebox('Já existe uma nota fiscal de entrada com este número para este fornecedor!','Atenção!',mb_ok+MB_ICONERROR);
     exit;
   end;

        {ITENS DA NOTA}

     if ((vltprodutos-vlprodutos) > (0.05)) or ((vltprodutos-vlprodutos) < (-0.05)) then
          if application.MessageBox('Houve inconsistência no valor dos Produtos! Deseja continuar?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;

     if ((vltcontabil-vlcontabil) > (0.05)) or ((vltcontabil-vlcontabil) < (-0.05)) then
         if application.MessageBox('Houve inconsistência no valor total da nota! Deseja continuar?','Atenção!',mb_yesno+mb_ICONWARNING+MB_DEFBUTTON2) = idno then exit;

     if ((tvaloricms.Value - vlicms) > (0.02)) and ((tvaloricms.Value - vlicms) < (-0.02)) then
         if application.MessageBox('Houve inconsistência no icms do IPI! Deseja continuar?','Atenção!',mb_yesno+mb_ICONWARNING+MB_DEFBUTTON2) = idno then exit;

     if ((tipi.Value - vlipi) > (0.02)) and ((tipi.Value - vlipi) < (-0.02)) then
         if application.MessageBox('Houve inconsistência no valor total do IPI! Deseja continuar?','Atenção!',mb_yesno+mb_ICONWARNING+MB_DEFBUTTON2) = idno then exit;



     rxitem.Open;
     rxitem.First;
     vtotcontabil := 0;
     vtotmercadoria := 0;

     frmmodulo.qritem.close;
     frmmodulo.qritem.sql.clear;
     frmmodulo.qritem.sql.add('select * from c000085 where codnota = '''+edcodcliente.text+ednfiscal.text+'''');
     frmmodulo.qritem.open;




     while not rxitem.EOF do
     begin



          frmmodulo.qritem.Insert;


          if RDESCONTO_NOTA.Value <> 0 then
          begin
            perc :=  (rxitemsubtotal.value * 100) / tvalorproduto.VALUE;
            frmmodulo.qritemvalor_desconto.Value     := RDESCONTO_NOTA.VALUE * (PERC/100);
          end
          else
            frmmodulo.qritemvalor_desconto.Value := rxitemvalor_desconto.value;



          if tfrete.Value <> 0 then
          begin
            perc :=  (rxitemsubtotal.value * 100) / tvalorproduto.VALUE;
            frmmodulo.qritemfrete.Value     := tfrete.VALUE * (PERC/100);
          end
          else
            frmmodulo.qritemfrete.Value := 0;


          if tseguro.Value <> 0 then
          begin
            perc :=  (rxitemsubtotal.value * 100) / tvalorproduto.VALUE;
            frmmodulo.qritemseguro.Value     := tseguro.VALUE * (PERC/100);
          end
          else
            frmmodulo.qritemseguro.Value := 0;

          if tdespesas.Value <> 0 then
          begin
            perc :=  (rxitemsubtotal.value * 100) / tvalorproduto.VALUE;
            frmmodulo.qritemoutras_despesas.Value     := tdespesas.VALUE * (PERC/100);
          end
          else
            frmmodulo.qritemoutras_despesas.Value := 0;

            

          frmmodulo.qritemDATA_EMISSAO.Value := copy(eddtdocumento.Text, 4,2)+copy(eddtdocumento.Text, 7,4);
          frmmodulo.qritemCODNOTA.value            := edcodcliente.text+ednfiscal.text;

          frmmodulo.qritemnum_item.Value           := rxitemNUM_ITEM.Value;
          frmmodulo.qritemcd_produto.Value         := rxitemCD_PRODUTO.Value;
          frmmodulo.qritemproduto.Value            := rxitemPRODUTO.Value;
          frmmodulo.qritemapr_und.Value            := rxitemAPR_UND.Value;
          frmmodulo.qritemTIPO.Value               := rxitemTIPO.Value;

          frmmodulo.qritemquantidade.Value         := rxitemQUANTIDADE.Value;
          frmmodulo.qritemsubtotal.Value           := (rxitemquantidade.VALUE * rxitemUNITARIO.Value) - frmmodulo.qritemvalor_desconto.Value;
          frmmodulo.qritemtotal.Value              := rxitemquantidade.VALUE * rxitemUNITARIO.Value;


          frmmodulo.qritemnotafiscal.Value         := rxitemNOTAFISCAL.Value;

          frmmodulo.qritemvalor_venda_bruta.Value  := rxitemquantidade.VALUE * rxitemUNITARIO.Value;;
          frmmodulo.qritemvalor_total_geral.Value  := rxitemTOTAL.Value;
          frmmodulo.qritemdatahora_recebimento.Value := eddtdocumento.Date;
          frmmodulo.qritemmodelo_nf.Value          := edmodelo.Value;
          frmmodulo.qritemmodelo_doc.Value         := edmodelo.Value;
          frmmodulo.qritemFRACAO.value             := edfracao.value;


          frmmodulo.qritemcfop.Value               := rxitemcfop.Value;
          frmmodulo.qritems_trib.Value             := rxitemS_TRIB.Value;
          frmmodulo.qritemTIPO_FRETE.Value         := rxitemTIPO_FRETE.Value;
          frmmodulo.qritemreducao_base_icms.value  := rxitemreducao.Value;


          if rxitemALIQUOTA_ICMS.Value > 2 then
               begin
                    frmmodulo.qritemaliquota_icms.Value      := rxitemALIQUOTA_ICMS.Value;
                    frmmodulo.qritembase_icms.Value          := rxitemBASE_ICMS.Value;
                    frmmodulo.qritemvalor_icms.Value         := rxitemVALOR_ICMS.Value;
               end;

          if rxitemALIQUOTA_IPI.Value > 2 then
               begin
                    frmmodulo.qritemaliquota_ipi.Value       := rxitemALIQUOTA_IPI.Value;
                    frmmodulo.qritembase_ipi.Value           := rxitemBASE_IPI.Value;
                    frmmodulo.qritemvalor_ipi.Value          := rxitemVALOR_IPI.Value;
                    frmmodulo.qritemisentas_ipi.Value        := rxitemISENTAS_IPI.Value;
                    frmmodulo.qritemoutras_ipi.Value         := rxitemOUTRAS_IPI.Value;
               end;


          if (rxitemISENTAS_ICMS.Value+rxitemOUTRAS_ICMS.Value) > 0 then
               begin
                    frmmodulo.qritemreducao_base_icms.Value  := rxitemVALOR_SUBSTITUICAO.Value;
                    frmmodulo.qritembase_icms_subst.Value    := rxitemBASE_ICMS_SUBST.Value;
                    frmmodulo.qritemisentas_icms.Value       := rxitemISENTAS_ICMS.Value;
                    frmmodulo.qritemoutras_icms.Value        := rxitemOUTRAS_ICMS.Value;
               end;

          frmmodulo.qritemdatahora.Value           := eddtlancamento.Date;

          frmmodulo.qritemmovimento.Value          := 1;
          frmmodulo.qritemcod_pedidos.Value        := rxitemNOTAFISCAL.Value;

          vtotcontabil   := vtotcontabil+rxitemSUBTOTAL.Value;
          vtotmercadoria := vtotmercadoria+rxitemSUBTOTAL.Value;

          vnfiscal := rxitemNOTAFISCAL.Value;

          // LANCAR NA MOVIMENTACAO DO PRODUTO
          frmmodulo.qrproduto_mov.Insert;
          frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := rxitemcodigo.value;
          frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := edcodcliente.text+ednfiscal.text;
          frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := rxitemNOTAFISCAL.Value;
          frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := rxitemCD_PRODUTO.Value;
          IF rxitemfracao.Value > 0 THEN
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := rxitemQUANTIDADE.Value * rxitemfracao.Value;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := rxitemSUBTOTAL.Value/(rxitemQUANTIDADE.Value * rxitemfracao.Value);
          end
          ELSE
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := rxitemquantidade.value;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := rxitemunitario.value;
          end;
          frmmodulo.qrproduto_mov.fieldbyname('total').asfloat :=  (rxitemunitario.value*rxitemquantidade.value) - frmmodulo.qritemvalor_desconto.value;
          frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := frmmodulo.qritem.fieldbyname('valor_desconto').asfloat;
          frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := 0;
          frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := rxitemAPR_UND.Value;
          frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := '';
          frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := '';
          frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
          frmmodulo.qrproduto_mov.FieldByName('data').asstring := eddtdocumento.Text;
          FRMMODULO.QRPRODUTO_MOV.POST;
          frmmodulo.qritem.Post;

          qrproduto.close;
          qrproduto.sql.Clear;
          qrproduto.sql.add('select * from c000025 where codigo = '''+rxitemCD_PRODUTO.Value+'''');
          qrproduto.open;

          qrproduto.edit;
          qrproduto.FieldByName('estoque').asfloat := qrproduto.FieldByName('estoque').asfloat + (rxitemQUANTIDADE.Value*rxitemfracao.Value);
          qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrentrada_produto.fieldbyname('data').asstring;
          qrproduto.FieldByName('notafiscal').asstring := rxitemNOTAFISCAL.Value;
          qrproduto.FieldByName('codfornecedor').asstring :=     edcodcliente.text;
          qrproduto.Post;


          //

          rxitem.Next;
     end;


          Qradiciona_item.DataSource := DsAdiciona_item;
          with Qradiciona_item do begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT cfop,s_trib,cl_fis,tipo_frete,aliquota_icms, aliquota_ipi, ');
               SQL.Add('sum(subtotal) subtotal, ');
               SQL.Add('sum(base_icms) base_icms, sum(valor_icms) valor_icms, ');
               SQL.Add('sum(isentas_icms) isentas_icms, sum(outras_icms) outras_icms, ');
               SQL.Add('sum(base_ipi) base_ipi, sum(valor_ipi) valor_ipi, ');
               SQL.Add('sum(isentas_ipi) isentas_ipi, sum(outras_ipi) outras_ipi, ');
               SQL.Add('sum(reducao_base_icms) reducao_base_icms, sum(base_icms_subst) base_icms_subst');
               SQL.Add('FROM c000085 WHERE ');
               SQL.Add('tipo = ''E'' and notafiscal = :vn');
               SQL.Add('GROUP BY aliquota_icms,');
               SQL.ADD('cfop,');
               SQL.ADD('s_trib,');
               SQL.ADD('cl_fis,');
               SQL.ADD('tipo_frete,');
               SQL.ADD('aliquota_ipi ');
               PARAMS.ParamByName('vn').AsString := vnfiscal;
               Open;
          end;


          FRMMODULO.QRNOTA.CLOSE;
          FRMMODULO.QRNOTA.SQL.CLEAR;
          FRMMODULO.QRNOTA.SQL.ADD('SELECT * FROM C000086 WHERE CODIGO = '''+edcodcliente.text+ednfiscal.text+'''');
          FRMMODULO.QRNOTA.OPEN;


     QRADICIONA_ITEM.FIRST;
     while not QrAdiciona_item.Eof do
     begin
          frmmodulo.qrnota.Insert;
          frmmodulo.qrnotaNOTA_CANCELADA.Value := 'N';
          frmmodulo.qrnotaCONDICAO_PAGAMENTO.Value := '0';
          frmmodulo.qrnotaDESDOBRAMENTO.Value := 'F';

          frmmodulo.qrnotaCODIGO_EMPRESA.Value := strtoint(edcod.Text);
          frmmodulo.qrnotaCNPJ.Value := frmprincipal.somenteNumero(frmmodulo.qrFilialCNPJ.Value);
          frmmodulo.qrnotaINSC_ESTADUAL.Value := frmprincipal.somenteNumero(frmmodulo.qrFilialIE.Value);
          frmmodulo.qrnotaUF.Value := frmmodulo.qrFilialUF.Value;
          frmmodulo.qrnotacodigo.value := edcodcliente.text+ednfiscal.text;
          frmmodulo.qrnotaCODIGO_CLIENTE.Value:= strtoint(edcodcliente.Text);
          frmmodulo.qrnotaCNPJ_CLIENTE.Value  := frmprincipal.somenteNumero(edclientecnpj.Text);
          frmmodulo.qrnotaIE_CLIENTE.Value    := frmprincipal.somenteNumero(edclienteie.Text);
          frmmodulo.qrnotaUF_IE_CLIENTE.Value := edclienteuf.Text;
          frmmodulo.qrnotaCPF_CLIENTE.Value   := '';
          frmmodulo.qrnotaNOTAFISCAL.Value := ednfiscal.Text;
          frmmodulo.qrnotaVALOR_CONTABIL.Value := tnota.Value;
          frmmodulo.qrnotaVALOR_MERCADORIAS.Value := tvalorproduto.Value;
          frmmodulo.qrnotaOBS1.Value := edempresa.Caption;
          frmmodulo.qrnotaOBS2.Value := edcliente.Text;
          frmmodulo.qrnotaOBS3.Value := edpcontas.Text;
          frmmodulo.qrnotaDATA.Value := eddtdocumento.Date;
          frmmodulo.qrnotaDATA_ESCRITURACAO.Value := eddtlancamento.Date;
          frmmodulo.qrnotaTIPO.Value := 'E';
          frmmodulo.qrnotaMODELO_NF.Value := edmodelo.Value;
          frmmodulo.qrnotaESPECIE.Value := edespecie.Text;
          frmmodulo.qrnotaSERIE.Value := edserie.Text;
          frmmodulo.qrnotaS_TRIB.Value := qrAdiciona_item.FieldByName('s_trib').AsString;
          frmmodulo.qrnotaCFOP.Value := vcfop; //qrAdiciona_item.FieldByName('cl_fis').AsString;
          frmmodulo.qrnotaNOTA_CANCELADA.Value := ednotacancelada.Text;
          frmmodulo.qrnotaTIPO_FRETE.Value := qrAdiciona_item.FieldByName('tipo_frete').AsString;
          frmmodulo.qrnotaVALOR_FRETE.Value := tfrete.Value;
          frmmodulo.qrnotaVALOR_SEGURO.Value := tseguro.Value;
          frmmodulo.qrnotaVALOR_DESPESAS.Value := tdespesas.Value;
         {ICMS}
          frmmodulo.qrnotaALIQUOTA_ICMS.Value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;
          frmmodulo.qrnotaBASE_ICMS.Value := qrAdiciona_item.FieldByName('base_icms').AsFloat;
          frmmodulo.qrnotaVALOR_ICMS_CREDITADO.Value := qrAdiciona_item.FieldByName('valor_icms').AsFloat;
          frmmodulo.qrnotaBASE_SUBSTITUICAO.Value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
          frmmodulo.qrnotaVALOR_SUBSTITUICAO.Value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
          frmmodulo.qrnotaVALOR_ICMS_ISENTAS.Value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;
          frmmodulo.qrnotaVALOR_ICMS_OUTRAS.Value := qrAdiciona_item.FieldByName('outras_icms').AsFloat;
         {IPI}
          frmmodulo.qrnotaALIQUOTA_IPI.Value := qrAdiciona_item.FieldByName('aliquota_ipi').AsFloat;
          frmmodulo.qrnotaBASE_IPI.Value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
          frmmodulo.qrnotaVALOR_IPI_CREDITADO.Value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
          frmmodulo.qrnotaVALOR_IPI_CREDITADO50.Value := 0;
          frmmodulo.qrnotaVALOR_IPI_ISENTAS.Value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
          frmmodulo.qrnotaVALOR_IPI_OUTRAS.Value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;
         {ISS}

          {TRANSPORTADORA}

          frmmodulo.qrnotaTRANSPORTE_NOME.Value         := edtnome.Text;
          frmmodulo.qrnotaTRANSPORTE_UF.Value           := edtuf.Text;
          frmmodulo.qrnotaTRANSPORTE_CNPJCPF.Value      := edtcnpj.Text;
          frmmodulo.qrnotaTRANSPORTE_ENDERECO.Value     := edtendereco.Text;
          frmmodulo.qrnotaTRANSPORTE_CIDADE.Value       := edtmunicipio.Text;
          frmmodulo.qrnotaTRANSPORTE_MUNICIPIO_UF.Value := edtmunicipiouf.Text;
          frmmodulo.qrnotaTRANSPORTE_IE.Value           := edtie.Text;
          frmmodulo.qrnotaTRANSPORTE_QUANTIDADE.Value   := edtqde.Value;
          frmmodulo.qrnotaTRANSPORTE_MARCA.Value        := edtmarca.Text;
          frmmodulo.qrnotaTRANSPORTE_ESPECIE.Value      := edtespecie.Text;
          frmmodulo.qrnotaTRANSPORTE_PLACA.Value        := edtplaca.Text;
          frmmodulo.qrnotaTRANSPORTE_NUMERO.Value       := edtnumero.Text;
          frmmodulo.qrnotaTRANSPORTE_PESO_BRUTO.Value   := edtbruto.Value;
          frmmodulo.qrnotaTRANSPORTE_PESO_LIQUIDO.Value := edtliquido.Value;

          frmmodulo.qrnota.Post;
          QrAdiciona_item.Next;
     end;

     rxitem.Close;
     rxitem.Open;
     FRMMODULO.CONEXAO.COMMIT;

     QrAdiciona_item.Close;
     CLOSE;







end;

procedure Tfrmfiscal_entrada.bcancelarClick(Sender: TObject);
begin
     frmmodulo.qrfilial.Cancel;
     frmmodulo.qrfilial.Edit;

     frmmodulo.qritem.Cancel;

     frmmodulo.qrnota.Cancel;
     frmmodulo.qrnota.Open;

     eddtlancamento.Date := date;
     eddtdocumento.Date := date;

     rxitem.Close;

     pagecontrol2.ActivePageIndex := 0;

     edcod.Text := '';
     edcodproduto.text := '';
     ednfiscal.Text := '';
     edcod.Text := '';
     edcodpcontas.Text := '';

     vlbaseicms     := 0;
     vlicms         := 0;
     vlbaseicmssubt := 0;
     vlicmssubt     := 0;
     vlprodutos     := 0;
     vlfrete        := 0;
     vlseguro       := 0;
     vldespesas     := 0;
     vlipi          := 0;
     vlcontabil     := 0;

     //edsitespecial.Enabled := false;
     //edipinaocreditado.Enabled := false;

     panel2.Enabled := false;

     edcod.SetFocus;

     frmmodulo.Conexao.Rollback;

     close;
end;

procedure Tfrmfiscal_entrada.FormShow(Sender: TObject);
begin

    frmmodulo.qrcfop.close;
    frmmodulo.qrCFOP.sql.clear;
    frmmodulo.qrcfop.sql.add('select * from c000030 order by cfop');
    frmmodulo.qrcfop.open;

     //vdesdobra := 'N';
     //eddesdobra.Text := vdesdobra;

     pagecontrol2.ActivePageIndex := 0;

     {abre o arquivo de empresas}
     frmmodulo.qrfilial.Close;
     frmmodulo.qrfilial.SQL.Clear;
     frmmodulo.qrfilial.SQL.Add('select * from c000004');
     frmmodulo.qrfilial.Open;
     frmmodulo.qrfilial.Edit;

     {abre o arquivo de clientes}
     frmmodulo.qrfornecedor.Close;
     frmmodulo.qrfornecedor.SQL.Clear;
     frmmodulo.qrfornecedor.SQL.Add('select * from c000009');
     frmmodulo.qrfornecedor.Open;

	//btformapaga.itemindex:=-1;

     {abre o arquivo de modelo}
     frmmodulo.qrfiscal_modelo.Close;
     frmmodulo.qrfiscal_modelo.open;
     edmodelo.Items.Clear;
     while not frmmodulo.qrfiscal_modelo.eof do
	     begin
               edmodelo.Items.add(frmmodulo.qrfiscal_modeloSINTEGRA.Value);
      		frmmodulo.qrfiscal_modelo.next;
	     end;

     {abre o arquivo de cfop}
     frmmodulo.qrcfop.Close;
     frmmodulo.qrcfop.open;
     edcfop.Items.Clear;
     while not frmmodulo.qrcfop.eof do
	     begin
               if StrToInt( Copy( frmmodulo.qrcfopCFOP.Value, 1, 1 ) ) < 5 then
                    edcfop.Items.add(frmmodulo.qrcfopCFOP.Text);
      		frmmodulo.qrcfop.next;
	     end;

     rxitem.Open;

     edaicms.Value := 0;
     edaipi.Value := 0;
     vltcontabil := 0;
     vltprodutos := 0;
     eddtlancamento.Date := date;
     eddtdocumento.Date := date;
     edcod.SetFocus;




end;

procedure Tfrmfiscal_entrada.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
               bgravar.SetFocus;

          end;
end;

procedure Tfrmfiscal_entrada.ediesubstitutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then edcodcliente.setfocus;
end;

procedure Tfrmfiscal_entrada.edcodpcontasKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
     begin
       edcodpcontas.text := frmprincipal.zerarcodigo(edcodpcontas.text,6);
       if edcodpcontas.text <> '000000' then
       begin
         frmmodulo.qrplano.close;
         frmmodulo.qrplano.sql.clear;
         frmmodulo.qrplano.sql.add('select * from c000035 where codigo = '''+edcodpcontas.text+'''');
         frmmodulo.qrplano.open;
         if frmmodulo.qrplano.RecordCount = 0 then
         begin
           application.messagebox('Conta não encontrada!','Atenção!',mb_ok+mb_iconwarning);
           locpcontasclick(frmfiscal_entrada);
         end
         else
         begin
            edcodpcontas.Text           := frmmodulo.qrplanoCODIGO.Value;
            edpcontas.Text                := frmmodulo.qrplanoconta.value;
         end;
       end
       else
       begin
         edcodcliente.setfocus;
       end;
     end;
end;

procedure Tfrmfiscal_entrada.locpcontasClick(Sender: TObject);
begin
     frmxloc_conta := tfrmxloc_conta.create(self);
     frmxloc_conta.showmodal;
     if resultado_pesquisa1 <> '' then
     begin
     frmmodulo.qrplano.close;
     frmmodulo.qrplano.sql.clear;
     frmmodulo.qrplano.sql.add('select * from c000035 where codigo = '''+resultado_pesquisa1+'''');
     frmmodulo.qrplano.open;


            edcodpcontas.Text           := frmmodulo.qrplanoCODIGO.Value;
            edpcontas.Text                := frmmodulo.qrplanoconta.value;
          edcodcliente.setfocus;

     end;
end;

procedure Tfrmfiscal_entrada.edcfopKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
     begin
            if edcfop.Text = '' then
             begin
               showmessage('Atenção, CFOP Não Informada...');
               edcfop.SetFocus;
             end
             else if frmmodulo.qrcfop.locate('cfop',edcfop.Text,[loPartialKey,loCaseInsensitive]) then
             begin
               vcfop := frmmodulo.qrcfopCFOP.Value;
               edhistorico.Text := frmmodulo.qrcfopnatureza.Value;
               //dtm.qrnotaCFOP.Value := dtm.qrcfopCFOP.Value;

               if StrToInt( Copy( frmmodulo.qrcfopCFOP.Value, 1, 1 ) ) > 4 then
                    begin
                         showmessage('CFOP Inválido pra operação de Entradas, Verifique...');
                         edcfop.SetFocus;
                         exit;
                    end;
                                   tbasecalculo.setfocus;
             end
             else
             begin
                         showmessage('CFOP não encontrado!, Verifique...');
                         edcfop.SetFocus;

             end;


     end;
end;

procedure Tfrmfiscal_entrada.edtipoipiKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
     if edtipoipi.Value = '0' then
          begin
               edaipi.Enabled := false;
               edabaseipi.Enabled := false;
               edaisentasipi.Enabled := false;
               edaoutrasipi.Enabled := false;

               ednotacancelada.SetFocus;
          end
     else
          begin
               edabaseipi.Enabled := true;
               edaipi.Enabled := true;
               edaisentasipi.Enabled := true;
               edaoutrasipi.Enabled := true;

               edaipi.SetFocus;
          end;
     end;
end;

procedure Tfrmfiscal_entrada.btexcluirClick(Sender: TObject);
begin
   rxitem.Delete;
   rxitem.Refresh;
   rxitem.Open;
   TOTALIZA;
   RTOTAL.VALUE := VLCONTABIL + tfrete.Value+tseguro.value+tdespesas.value - RDESCONTO_nota.VALUE;

    qrgrade_entrada.Close;
    qrgrade_entrada.SQL.clear;
    qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+RXITEMCODIGO.VALUE+'''');
    qrgrade_entrada.Open;

    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+rxitemcd_produto.VALUE+'''');
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


   edcodproduto.Text := '';
   edcodproduto.SetFocus;
end;
procedure Tfrmfiscal_entrada.totaliza;

begin
     vlprodutos     := 0;
     vlcontabil     := 0;
     vlbaseicms     := 0;
     vlicms         := 0;
     vlisentasicms  := 0;
     vloutrasicms   := 0;
     vlbaseicmssubt := 0;
     vlicmssubt     := 0;
     vlbaseipi      := 0;
     vlipi          := 0;
     vlisentasipi   := 0;
     vloutrasipi    := 0;
     vlfrete        := 0;
     vlseguro       := 0;
     vldespesas     := 0;

     rxitem.open;
     rxitem.First;
     while not rxitem.EOF do begin


          vlbaseicms     := vlbaseicms+rxitemBASE_ICMS.Value;
          vlicms         := vlicms+rxitemVALOR_ICMS.Value;
          vlisentasicms  := vlipi+rxitemISENTAS_ICMS.Value;
          vloutrasicms   := vlipi+rxitemOUTRAS_ICMS.Value;

          vlbaseicmssubt := vlbaseicmssubt+rxitemBASE_ICMS_SUBST.Value;
          vlicmssubt     := vlicmssubt+rxitemVALOR_SUBSTITUICAO.Value;

          vlbaseipi      := vlbaseipi+rxitemBASE_IPI.Value;
          vlipi          := vlipi+rxitemVALOR_IPI.Value;
          vlisentasipi   := vlisentasipi+rxitemISENTAS_IPI.Value;
          vloutrasipi    := vloutrasipi+rxitemOUTRAS_IPI.Value;

          vlprodutos     := vlprodutos+rxitemSUBTOTAL.Value;
          if comboretido.ItemIndex = 0 then
          vlcontabil     := vlprodutos+vlicmssubt+vlipi
          else
          vlcontabil     := vlprodutos+vlicmssubt+vlipi-vlicms;
          rxitem.Next;
     end;






end;



procedure Tfrmfiscal_entrada.edtliquidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmfiscal_entrada.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     begin
            if ecfop.Text = '' then
             begin
               showmessage('Atenção, CFOP Não Informada...');
               ecfop.SetFocus;
             end
             else if frmmodulo.qrcfop.locate('cfop',ecfop.Text,[loPartialKey,loCaseInsensitive]) then
             begin
               if StrToInt( Copy( frmmodulo.qrcfopCFOP.Value, 1, 1 ) ) > 4 then
                    begin
                         showmessage('CFOP Inválido pra operação de Entradas, Verifique...');
                         ecfop.SetFocus;
                         exit;
                    end;

                    edst.SetFocus;

             end
             else
             begin
                         showmessage('CFOP não encontrado!, Verifique...');
                         ecfop.SetFocus;

             end;


     end;
end;

procedure Tfrmfiscal_entrada.edtnomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfiscal_entrada.comboreducaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmfiscal_entrada.comboreducaoExit(Sender: TObject);
begin
       tedit(sender).color := clwindow;

       IF EDST.TEXT = '070' THEN
       BEGIN
              IF comboreducao.value = 0 THEN
                 edaoutrasicms.Value := edsubtotal.value
              ELSE
              BEGIN
                if comboretido.ItemIndex = 1 then
                begin
                  edaoutrasicms.Value := ((edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100)) + (((edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100))*(RRETIDO.VALUE/100));
                  edabaseicms.Value := (edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100);
                  edabaseicms.SetFocus;
                end
                ELSE
                BEGIN
                  edaoutrasicms.Value := (edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100);
                  edaoutrasicms.SetFocus;
                END;
                tedit(sender).color := $008AC5FF;
              end;
       END
       ELSE
            IF comboreducao.value = 0 THEN
               edabaseicms.Value := edsubtotal.value
            ELSE
            BEGIN
              edabaseicms.Value := (edsubtotal.Value * (comboreducao.value/100)) / (edaicms.value/100);
              tedit(sender).color := clred;
            end;


end;

procedure Tfrmfiscal_entrada.RDESCONTO_NOTAExit(Sender: TObject);
begin

     tedit(sender).Color := clWindow;
end;

procedure Tfrmfiscal_entrada.RDESCONTO_NOTAEnter(Sender: TObject);
begin
tedit(sender).Color := clYellow;
end;

procedure Tfrmfiscal_entrada.comboreducaoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmfiscal_entrada.edstExit(Sender: TObject);
begin
        IF (edst.TEXT = '060') OR (edst.TEXT = '010') OR (edst.TEXT = '070') THEN // substituicao tributaria
        begin
          LICMS.CAPTION := 'SUBSTITUIÇÃO TRIBUTÁRIA';
        end;

        IF (edst.TEXT = '070') THEN // substituicao tributaria
        begin
          LICMS.CAPTION := 'SUBST.TRIBUTÁRIA C/ REDUÇÃO';
        end;

        IF (edst.TEXT = '040') OR (edst.TEXT = '030') THEN // isenta
        begin
          LICMS.CAPTION := 'ISENTO';

        end;
        IF (edst.TEXT = '041') OR (edst.TEXT = '050') OR (edst.TEXT = '051') OR (edst.TEXT = '090') THEN // nao tributada
        begin
          LICMS.CAPTION := 'NÃO TRIBUTADO';
        end;
        IF (edst.TEXT = '000') then
        begin
          LICMS.CAPTION := 'TRIBUTADO INTEGRALMENTE';
        end;
        IF (edst.TEXT = '020') then
        begin
          LICMS.CAPTION := 'BASE CALC. REDUZIDA';
        end;


end;

procedure Tfrmfiscal_entrada.NDESCONTOClick(Sender: TObject);
begin
  IF NDESCONTO.Checked THEN
  tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
  ELSE
    tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;

     vltcontabil := tnota.Value;
end;

procedure Tfrmfiscal_entrada.comboretidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 THEN EDAICMS.SETFOCUS;
end;

procedure Tfrmfiscal_entrada.RICMS_RETIDOExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  IF RICMS_RETIDO.VALUE > 0 THEN
  BEGIN
    COMBORETIDO.ItemIndex := 1;
    IF NDESCONTO.Checked THEN
      tnota.value := RICMS_RETIDO.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;


       IF TVALORICMS.Value > 0 THEN
       BEGIN
         RRETIDO.VALUE := (RICMS_RETIDO.VALUE * 100) / tvaloricms.Value;
       END;


  END
  ELSE
  BEGIN
    COMBORETIDO.ItemIndex := 0;
    IF NDESCONTO.Checked THEN
      tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value - RDESCONTO_NOTA.value
     ELSE
       tnota.value := tvaloricmssubst.value + tvalorproduto.value + tfrete.value + tseguro.value + tdespesas.value + tipi.value;

  END;


  vltcontabil := tnota.Value;
end;

procedure Tfrmfiscal_entrada.tnotaKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN EDCODPRODUTO.SETFOCUS;
end;

end.



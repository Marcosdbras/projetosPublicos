unit notafiscal_importacupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatProgressBarUnit, StdCtrls, Buttons, Mask, RzEdit, ExtCtrls,
  RzPanel, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  AdvShapeButton, cxTextEdit, cxControls, cxContainer, cxEdit, cxMemo,
  Menus, cxGraphics, cxMaskEdit, cxDropDownEdit, AdvGlowButton, MemDS,
  DBAccess, IBC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, cxLookAndFeelPainters;

type
  Tfrmnotafiscal_importacupom = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    query: TZQuery;
    dsnotafiscal_item: TDataSource;
    ProgressBar1: TProgressBar;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    batualiza_versao: TAdvShapeButton;
    cxMemo1: TcxMemo;
    ecupom: TcxTextEdit;
    Label2: TLabel;
    pop1: TPopupMenu;
    ok1: TMenuItem;
    cancela1: TMenuItem;
    Label3: TLabel;
    combo_ecf: TcxComboBox;
    qrprodutoPESO: TFloatField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoPISCOFINS: TStringField;
    bconfirma: TAdvGlowButton;
    bcancela: TAdvGlowButton;
    Bevel5: TBevel;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemCOMPLEMENTO: TBlobField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TStringField;
    qrnotafiscal_itemGRADE: TStringField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoCST: TStringField;
    procedure bcancelaClick(Sender: TObject);
    procedure ecupomKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure ecupomExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok1Click(Sender: TObject);
    procedure cancela1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscal_importacupom: Tfrmnotafiscal_importacupom;
  peso_bruto,peso_liquido,desconto_anterior,qtde_anterior, valor_anterior, ipi_anterior, icms_anterior, base_anterior, icms_sub_anterior, base_sub_anterior : real;
  vqde_ant: double;
  vestoque : double;

implementation

uses principal, modulo, notafiscal, notafiscal_menu, rxtooledit, RzDBEdit;

{$R *.dfm}

procedure Tfrmnotafiscal_importacupom.bcancelaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_importacupom.ecupomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_importacupom.bconfirmaClick(Sender: TObject);
var
  vtotal,vsubtotal,vdesconto,vbaseicms,vvaloricms : double;
  vitem : integer;
  vcodvendedor, vnumero_nota, vcfop, vcodcliente, vcodfilial ,vmodelo,vserie : string;
  vemissao , vsaida : TDateTime;
begin
  if ecupom.Text <> '' then
    begin
      vitem:=0;
      vtotal := 0;
      vsubtotal := 0;
      vdesconto := 0;
      vbaseicms := 0;
      vvaloricms := 0;

      ProgressBar1.Position := 0;
      cxMemo1.Text := '';
      cxMemo1.Lines.Add('Aguarde, Verificando a Existência da Nota Fiscal!');

      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select CUPOM_NUMERO,CUPOM_MODELO from c000032 where cupom_numero = '''+ecupom.Text+'''');
      query.SQL.Add('and cupom_modelo = ''01''');
      query.Open;
      if query.RecordCount > 0 then
        begin
          Application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Cupom!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
          ecupom.Text := '';
          ecupom.SetFocus;
          cxMemo1.Text := '';
          exit;
        end;

      {
      qrnotafiscal_item.Close;
      qrnotafiscal_item.SQL.Clear;
      qrnotafiscal_item.SQL.Add('select * from c000062');
      qrnotafiscal_item.Open;
      }

      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from c000032 where cupom_numero = '''+ecupom.Text+'''');
      query.SQL.Add('and ecf_serie = '''+ copy(combo_ecf.Text,7,20) +'''');
      query.SQL.Add('and cupom_modelo = ''2D''');
      query.SQL.Add('order by cupom_item descending');
      query.Open;

      if query.RecordCount > 0 then
        begin

          ProgressBar1.Max := query.RecordCount;
          cxMemo1.Text := '';

          vnumero_nota          := frmnotafiscal.ENUMERO.Text;
          vnumero_inclui_cupom  := query.fieldbyname('cupom_numero').AsString;
          vnumero_inclui_nota   := frmprincipal.codifica('000061'); //frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring;
          vcfop                 := frmnotafiscal.ecfop.Text;
          vcodcliente           := frmnotafiscal.ecliente.Text;
          vcodfilial            := frmnotafiscal.efilial.Text;
          vmodelo               := frmnotafiscal.ecodmodelo.Text;
          vserie                := frmnotafiscal.eserie.Text;
          vemissao              := frmnotafiscal.edata_cadastro.Date;
          vsaida                := frmnotafiscal.EDATA_SAIDA.Date;
          vcodvendedor          := query.fieldbyname('codvendedor').AsString;

          while not query.Eof do begin
            cxMemo1.Lines.Add(query.fieldbyname('codproduto').AsString+ ' ' +frmmodulo.qrnotafiscal.fieldbyname('numero').asstring+' '+formatfloat('#,###,##0.00',query.fieldbyname('total').AsFloat));


            if qrproduto.Locate('codigo',query.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
              begin
               try
                qrnotafiscal_item.Insert;

                qrnotafiscal_item.FieldByName('CODIGO').ASSTRING := frmprincipal.codifica('000032');
                qrnotafiscal_item.FieldByName('CODPRODUTO').ASSTRING := query.fieldbyname('codproduto').AsString;
                qrnotafiscal_item.FieldByName('codnota').asstring := vnumero_inclui_nota;
                qrnotafiscal_item.FieldByName('CODLANCAMENTO').ASSTRING := frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING;
                qrnotafiscal_item.FieldByName('PESO_BRUTO').AsFloat := qrproduto.fieldbyname('PESO').AsFloat;
                qrnotafiscal_item.FieldByName('PESO_LIQUIDO').AsFloat := qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;
                qrnotafiscal_item.FieldByName('qtde').AsFloat := query.fieldbyname('qtde').AsFloat;
                qrnotafiscal_item.FieldByName('UNITARIO').AsFloat := query.fieldbyname('unitario').AsFloat;
                qrnotafiscal_item.FieldByName('TOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                qrnotafiscal_item.FieldByName('IPI').AsFloat := query.fieldbyname('ipi').AsFloat;
                qrnotafiscal_item.FieldByName('ICMS').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                qrnotafiscal_item.FieldByName('CFOP').AsString := frmnotafiscal.ecfop.Text;
                qrnotafiscal_item.FieldByName('CODGRADE').AsString := query.fieldbyname('codgrade').AsString;
                qrnotafiscal_item.FieldByName('SERIAL').AsString := query.fieldbyname('serial').AsString;
                qrnotafiscal_item.FieldByName('VALOR_IPI').AsFloat := query.fieldbyname('valor_ipi').AsFloat;
                qrnotafiscal_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';
                qrnotafiscal_item.FieldByName('CST').AsString := qrproduto.fieldbyname('cst').AsString;

                if query.fieldbyname('aliquota').AsFloat > 0 then
                  begin
                    qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := query.fieldbyname('total').AsFloat*query.fieldbyname('aliquota').AsFloat/100;
                    qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := query.fieldbyname('total').AsFloat;
                  end
                else
                  begin
                    qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := 0;
                  end;

                qrnotafiscal_item.FieldByName('ICMS_REDUZIDO').AsFloat := query.fieldbyname('icms_reduzido').AsFloat;
                qrnotafiscal_item.FieldByName('MARGEM_AGREGADA').AsFloat := 0;
                qrnotafiscal_item.FieldByName('BASE_SUB').AsFloat := 0;
                qrnotafiscal_item.FieldByName('ICMS_SUB').AsFloat := 0;
                qrnotafiscal_item.FieldByName('ISENTO').AsFloat := 0;
                qrnotafiscal_item.FieldByName('DESCONTO').AsFloat := 0; //query.fieldbyname('desconto').AsFloat;
                qrnotafiscal_item.FieldByName('SUBTOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                qrnotafiscal_item.FieldByName('ITEM').asinteger := query.fieldbyname('cupom_item').asinteger;
                qrnotafiscal_item.FieldByName('GRADE').AsString := '';

                if qrproduto.FieldByName('piscofins').AsString = 'S' then
                  begin
                    qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := frmmodulo.qrFilialPIS.AsFloat;
                    qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialPIS.AsFloat/100);
                    qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := frmmodulo.qrFilialCOFINS.AsFloat;
                    qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialCOFINS.AsFloat/100);
                  end
                else
                  begin
                    qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := 0;
                    qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := 0;
                  end;

                //frmnotafiscal.qrnotafiscal_item.FieldByName('CREDITO_ICMS').AsFloat := query.fieldbyname('credito_icms').AsFloat;

{

                frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING := frmprincipal.codifica('000032');
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODPRODUTO').ASSTRING := query.fieldbyname('codproduto').AsString;
//              frmnotafiscal.qrnotafiscal_item.FieldByName('PRODUTO').ASSTRING := qrproduto.fieldbyname('PRODUTO').AsString;
//              frmnotafiscal.qrnotafiscal_item.FieldByName('UNIDADE').ASSTRING := qrproduto.fieldbyname('UNIDADE').AsString;
             // frmnotafiscal.qrnotafiscal_item.FieldByName('CODBARRA').Value := ''; //query.fieldbyname('CODBARRA').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('codnota').asstring := vnumero_inclui_nota;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODLANCAMENTO').ASSTRING := frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING;
                frmnotafiscal.qrnotafiscal_item.FieldByName('PESO_BRUTO').AsFloat := qrproduto.fieldbyname('PESO').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('PESO_LIQUIDO').AsFloat := qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('qtde').AsFloat := query.fieldbyname('qtde').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('UNITARIO').AsFloat := query.fieldbyname('unitario').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('TOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('IPI').AsFloat := query.fieldbyname('ipi').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CFOP').AsString := frmnotafiscal.ecfop.Text;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODGRADE').AsString := query.fieldbyname('codgrade').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('SERIAL').AsString := query.fieldbyname('serial').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_IPI').AsFloat := query.fieldbyname('valor_ipi').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';
                frmnotafiscal.qrnotafiscal_item.FieldByName('CST').AsString := qrproduto.fieldbyname('cst').AsString;

                if query.fieldbyname('aliquota').AsFloat > 0 then
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := query.fieldbyname('total').AsFloat*query.fieldbyname('aliquota').AsFloat/100;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := query.fieldbyname('total').AsFloat;
                  end
                else
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := 0;
                  end;

                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS_REDUZIDO').AsFloat := query.fieldbyname('icms_reduzido').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('MARGEM_AGREGADA').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_SUB').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS_SUB').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ISENTO').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('DESCONTO').AsFloat := 0; //query.fieldbyname('desconto').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('SUBTOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ITEM').asinteger := query.fieldbyname('cupom_item').asinteger;
                frmnotafiscal.qrnotafiscal_item.FieldByName('GRADE').AsString := '';

                if qrproduto.FieldByName('piscofins').AsString = 'S' then
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := frmmodulo.qrFilialPIS.AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialPIS.AsFloat/100);
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := frmmodulo.qrFilialCOFINS.AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialCOFINS.AsFloat/100);
                  end
                else
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := 0;
                  end;

                //frmnotafiscal.qrnotafiscal_item.FieldByName('CREDITO_ICMS').AsFloat := query.fieldbyname('credito_icms').AsFloat;

}
                qrnotafiscal_item.Post;  //outro aqui
                Application.ProcessMessages;
               except
                showmessage('a coisa ta feia');
               end;
              end;

            vtotal    := vtotal+(query.fieldbyname('total').AsFloat);

            vsubtotal := vsubtotal+(query.fieldbyname('TOTAL').AsFloat-query.fieldbyname('desconto').AsFloat);
            vdesconto := vdesconto+(query.fieldbyname('desconto').AsFloat);

            if query.fieldbyname('aliquota').AsFloat > 0 then
              begin
                vbaseicms := vbaseicms+(query.fieldbyname('total').AsFloat-query.fieldbyname('desconto').AsFloat);
                vvaloricms := vvaloricms+(vbaseicms*query.fieldbyname('aliquota').AsFloat/100);
              end;

            query.Next;
            vitem := vitem + 1;

            ProgressBar1.Position := ProgressBar1.Position + 1;
            Application.ProcessMessages;
          end;

          frmnotafiscal_menu.qrnota.Close;
          frmnotafiscal_menu.qrnota.SQL.Clear;
          frmnotafiscal_menu.qrnota.SQL.Add('select * from c000061');
          frmnotafiscal_menu.qrnota.Open;

          frmnotafiscal_menu.qrnota.Insert;
          frmnotafiscal_menu.qrnota.FieldByName('codigo').asstring := vnumero_inclui_nota;
          frmnotafiscal_menu.qrnota.FieldByName('codfilial').asstring := vcodfilial;
          frmnotafiscal_menu.qrnota.FieldByName('numero').asstring := vnumero_nota;
          frmnotafiscal_menu.qrnota.FieldByName('cfop').asstring := vcfop;
          frmnotafiscal_menu.qrnota.FieldByName('data').AsDateTime := vemissao;
          frmnotafiscal_menu.qrnota.FieldByName('data_saida').AsDateTime := vsaida;
          frmnotafiscal_menu.qrnota.FieldByName('codcliente').AsString := vcodcliente;
          frmnotafiscal_menu.qrnota.FieldByName('hora').AsString := TimeToStr(time);
          frmnotafiscal_menu.qrnota.FieldByName('modelo_nf').AsString := vmodelo;
          frmnotafiscal_menu.qrnota.FieldByName('serie_nf').AsString := vserie;
          frmnotafiscal_menu.qrnota.FieldByName('tipo').AsString := 'S';
          frmnotafiscal_menu.qrnota.FieldByName('codvendedor').asstring := vcodvendedor;

          frmnotafiscal_menu.qrnota.fieldbyname('situacao').asinteger := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('baixa_estoque').asstring := 'S';
          frmnotafiscal_menu.qrnota.fieldbyname('sit').asstring := 'N';
          frmnotafiscal_menu.qrnota.fieldbyname('movimento').asstring := 'S';
          frmnotafiscal_menu.qrnota.FieldByName('INF1').AsString := 'REF. AO CUPOM NÚMERO ' + ecupom.Text;
          frmnotafiscal_menu.qrnota.FieldByName('BAIXA_ESTOQUE').AsString := 'N';
          frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger := vitem;
          frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := vbaseicms;
          frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := vvaloricms;
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat := query.fieldbyname('valor_ipi').asfloat;
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := vtotal;
          frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto;
          frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := vtotal-vdesconto;
//          frmnotafiscal_menu.qrnota.Post;      //aqui
          ProgressBar1.Position := 0;
          close;
        end
      else
        begin
          Application.messagebox('Cupom Não Encontrado!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
          ecupom.Text := '';
          ecupom.SetFocus;
        end;

  end;
end;

procedure Tfrmnotafiscal_importacupom.ecupomExit(Sender: TObject);
begin
  ecupom.Text := frmprincipal.zerarcodigo(ecupom.Text,6);
  bconfirma.SetFocus;
end;

procedure Tfrmnotafiscal_importacupom.FormShow(Sender: TObject);
begin

  frmmodulo.qrFilial.Open;

  qrproduto.sql.clear;
  qrproduto.SQL.add('select codigo,codbarra,produto,unidade,peso,peso_liquido,piscofins,aliquota,cst from c000025');
  qrproduto.open;

  qrnotafiscal_item.open;
  
  frmmodulo.qrfiscal_ecf.Close;
  frmmodulo.qrfiscal_ecf.sql.clear;
  frmmodulo.qrfiscal_ecf.SQL.add('select * from c000081 order by serie_empresa ');
  frmmodulo.qrfiscal_ecf.open;
  frmmodulo.qrfiscal_ecf.first;

  combo_ecf.Properties.Items.Clear;

  WHILE NOT FRMMODULO.QRFISCAL_ECF.Eof DO
  BEGIN
    combo_ecf.Properties.Items.Add(frmmodulo.qrfiscal_ecf.fieldbyname('serie_empresa').asstring+' - '+ frmmodulo.qrfiscal_ecf.fieldbyname('SERIE_EQUIPAMENTO').asstring);
    FRMMODULO.QRFISCAL_ECF.NEXT;
  END;

  combo_ECF.ItemIndex := 0;

  ecupom.SetFocus;
end;

procedure Tfrmnotafiscal_importacupom.ok1Click(Sender: TObject);
begin
  bconfirmaClick(frmnotafiscal_importacupom);
end;

procedure Tfrmnotafiscal_importacupom.cancela1Click(Sender: TObject);
begin
  bcancelaClick(frmnotafiscal_importacupom);
end;

end.

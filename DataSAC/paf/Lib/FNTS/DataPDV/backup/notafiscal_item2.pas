unit notafiscal_item2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IBC, DB, DBAccess, MemDS, Menus, RzBtnEdt, StdCtrls,
  RzEdit, Mask, AdvGlowButton, TFlatPanelUnit;
type
  TfrmNotaFiscal_Item2 = class(TForm)
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    bgravar: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    Panel1: TPanel;
    Bevel2: TBevel;
    Label2: TLabel;
    ed_produto: TRzEdit;
    Label3: TLabel;
    ed_serial: TRzEdit;
    Label4: TLabel;
    ed_grade: TRzEdit;
    Label5: TLabel;
    ed_unidade: TRzEdit;
    Label6: TLabel;
    ed_classific: TRzEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    qrproduto: TIBCQuery;
    qrserial: TIBCQuery;
    Label23: TLabel;
    ed_codigo: TRzEdit;
    Label24: TLabel;
    ed_estoque: TRzNumericEdit;
    ed_grade_codigo: TRzEdit;
    dsserial: TIBCDataSource;
    qrgrade: TIBCQuery;
    dsgrade: TIBCDataSource;
    Panel2: TPanel;
    Bevel3: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Bevel5: TBevel;
    Label18: TLabel;
    Label19: TLabel;
    Bevel6: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ed_cst: TRzButtonEdit;
    ed_nome_cst: TRzEdit;
    ed_cfop: TRzButtonEdit;
    ed_nome_cfop: TRzEdit;
    FlatPanel2: TFlatPanel;
    ed_icms_aliquota: TRzNumericEdit;
    ed_icms_reducao: TRzNumericEdit;
    ed_icms_base: TRzNumericEdit;
    ed_icms_valor: TRzNumericEdit;
    FlatPanel3: TFlatPanel;
    ed_sub_base: TRzNumericEdit;
    ed_sub_valor: TRzNumericEdit;
    FlatPanel4: TFlatPanel;
    ed_isenta: TRzNumericEdit;
    ed_ipi_aliquota: TRzNumericEdit;
    ed_ipi_valor: TRzNumericEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ed_qtde: TRzNumericEdit;
    ed_unitario: TRzNumericEdit;
    ed_subtotal: TRzNumericEdit;
    ed_descontop: TRzNumericEdit;
    ed_desconto: TRzNumericEdit;
    ed_total: TRzNumericEdit;
    query1: TIBCQuery;
    pState: TFlatPanel;
    Bevel7: TBevel;
    pcodigo: TFlatPanel;
    Label11: TLabel;
    Label25: TLabel;
    ed_peso_bruto: TRzNumericEdit;
    Label26: TLabel;
    ed_peso_liquido: TRzNumericEdit;
    Bevel8: TBevel;
    FlatPanel5: TFlatPanel;
    Bevel9: TBevel;
    FlatPanel6: TFlatPanel;
    Label27: TLabel;
    ed_pis_aliquota: TRzNumericEdit;
    Label28: TLabel;
    ed_Pis_Base: TRzNumericEdit;
    Label29: TLabel;
    ed_pis_valor: TRzNumericEdit;
    Bevel10: TBevel;
    Label30: TLabel;
    ed_cofins_aliquota: TRzNumericEdit;
    Label31: TLabel;
    ed_cofins_base: TRzNumericEdit;
    Label32: TLabel;
    ed_cofins_valor: TRzNumericEdit;
    FlatPanel7: TFlatPanel;
    Label33: TLabel;
    ed_complemento: TMemo;
    qrestoque: TIBCQuery;
    procedure bretornaClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_descontopExit(Sender: TObject);
    procedure ed_descontoExit(Sender: TObject);
    procedure ed_cstKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cstButtonClick(Sender: TObject);
    procedure ed_cfopExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_cfopButtonClick(Sender: TObject);
    procedure ed_cfopKeyPress(Sender: TObject; var Key: Char);
    procedure ed_icms_aliquotaExit(Sender: TObject);
    procedure ed_ipi_aliquotaExit(Sender: TObject);
    procedure ed_Pis_BaseExit(Sender: TObject);
    procedure ed_pis_aliquotaExit(Sender: TObject);
    procedure ed_cofins_baseExit(Sender: TObject);
    procedure ed_cofins_aliquotaExit(Sender: TObject);
    procedure ed_cofins_valorKeyPress(Sender: TObject; var Key: Char);
    procedure ed_Pis_BaseEnter(Sender: TObject);
    procedure ed_cofins_baseEnter(Sender: TObject);
  private
    { Private declarations }
    function loc_produto(parametro:string):boolean;
  public
    { Public declarations }
  end;

var
  frmNotaFiscal_Item2: TfrmNotaFiscal_Item2;
  nr_serial, nr_grade, cd_grade : string;
  tipo_nf : string;
  margem_agregada : real;
  confirmado : boolean;

  {PESO_NOVO}
  PESO_LIQUIDO, PESO_BRUTO : REAL;

implementation

uses modulo, principal,  NotaFiscal_Item_Serial, xloc_produto,
  NotaFiscal_Item_grade, xloc_cst, xloc_cfop, notafiscal_menu, notafiscal;

{$R *.dfm}
function tfrmnotafiscal_item2.loc_produto(parametro:string):boolean;
begin


        nr_serial := '';
        nr_grade  := '';
        cd_grade  := '';


        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and codigo = '''+parametro+'''');
        qrproduto.open;
        if qrproduto.RecordCount = 0 then
        begin
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codbarra = '''+parametro+'''');
          qrproduto.open;
          if qrproduto.recordcount = 0 then
          begin
            qrproduto.close;
            qrproduto.sql.clear;
            qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  upper(produto) like '''+ansiuppercase(parametro)+'%''');
            qrproduto.open;
            if qrproduto.recordcount = 0 then
            begin
              QrSerial.close;
              QrSerial.sql.clear;
              QrSerial.sql.Add('select * from c000022 where serial = '''+parametro+''' and situacao = 1 ');
              QrSerial.open;
              if qrserial.recordcount > 0 then
              begin
                qrproduto.close;
                qrproduto.sql.clear;
                qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codigo = '''+qrserial.fieldbyname('codproduto').asstring+'''');
                qrproduto.open;
                nr_serial := qrserial.fieldbyname('serial').asstring;
              end;
            end;
          end;
        end;





        if qrproduto.RecordCount > 0 then
        begin
           if qrproduto.recordcount = 1 then
           begin
              if nr_serial = '' then
              begin
                QrSerial.close;
                QrSerial.sql.clear;
                QrSerial.sql.Add('select * from c000022 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 ');
                QrSerial.open;
                if qrserial.recordcount > 0 then
                begin
                  resultado_pesquisa1 := '';
                  frmnotafiscal_item_serial := tfrmnotafiscal_item_serial.create(self);
                  frmnotafiscal_item_serial.ShowModal;
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
                  if qrproduto.fieldbyname('usa_grade').asstring = '1' then
                  begin
                    qrgrade.close;
                    qrgrade.sql.clear;
                    qrgrade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                    qrgrade.open;
                    if qrgrade.recordcount > 0 then
                    begin
                      resultado_pesquisa1 := '';
                      frmnotafiscal_item_grade := tfrmnotafiscal_item_grade.create(self);
                      frmnotafiscal_item_grade.ShowModal;

                      if resultado_pesquisa1 <> '' then
                      begin
                        Qrgrade.close;
                        Qrgrade.sql.clear;
                        Qrgrade.sql.Add('select * from c000021 where codigo = '''+resultado_pesquisa1+'''');
                        Qrgrade.open;
                        nr_grade := qrgrade.fieldbyname('numeracao').asstring;
                        cd_grade := qrgrade.fieldbyname('codigo').asstring;
                      end;
                    end;
                  end;
                end;
              end;


              ed_produto.text    := qrproduto.fieldbyname('produto').asstring;
              ed_codigo.text     := qrproduto.fieldbyname('codigo').asstring;
              ed_estoque.Value   := qrproduto.fieldbyname('estoque_atual').asfloat;
              ed_unidade.text    := qrproduto.fieldbyname('unidade').asstring;
              ed_classific.text  := qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
              ed_icms_aliquota.value  := qrproduto.fieldbyname('aliquota').asfloat;
              ed_cst.Text        := qrproduto.fieldbyname('cst').asstring;
              ed_qtde.value      := 1;
              ed_unitario.value  := qrproduto.fieldbyname('precovenda').asfloat;
              ed_total.value     := qrproduto.fieldbyname('precovenda').asfloat;
              ed_subtotal.value  := qrproduto.fieldbyname('precovenda').asfloat;

{              qrestoque.close;
              qrestoque.sql.clear;
              qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
              qrestoque.open;

              {
              if qrestoque.recordcount > 0 then
                restoque.Value := (qrestoque.fieldbyname('estoque_atual').asfloat)
              else
                restoque.Value := qrvendido.fieldbyname('quant').asfloat * (-1);

                  IF ed_estoque.Value < 0.01 THEN
                    BEGIN
                      APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
                      ed_produto.text := '';
                      ed_qtde.Value := 0;
                      ed_unitario.Value := 0;
                      ed_produto.setfocus;
                      exit;
                    END;  }


              frmmodulo.qrconfig.open;
              IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
              begin
                ed_complemento.lines.text := qrproduto.fieldbyname('aplicacao').asstring;
              end
              else
                ed_complemento.lines.text := '';

              

              if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'N' then
              begin
                query1.close;
                query1.sql.clear;
                query1.SQL.add('select * from c000026 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                query1.Open;
                if query1.RecordCount > 0 then
                begin
                  if query1.fieldbyname('pis_p').asfloat > 0 then
                  begin
                    ed_pis_aliquota.Value := query1.fieldbyname('pis_p').asfloat;
                  end;
                  if query1.fieldbyname('cofins_p').asfloat > 0 then
                  begin
                    ed_cofins_aliquota.Value := query1.fieldbyname('cofins_p').asfloat;
                  end;
                end;
              end;

              


              {peso_novo}
              ed_peso_bruto.value:= qrproduto.fieldbyname('peso').asfloat;
              ed_peso_liquido.value:= qrproduto.fieldbyname('peso_liquido').asfloat;


              ed_descontop.Value := 0;
              ed_desconto.value  := 0;
              if nr_serial <> '' then
              begin
                ed_serial.text := nr_serial;
                ed_grade.text := '';
                ed_grade_codigo.TEXT := '';
              end
              else
              begin
                ed_serial.text := '';
                if nr_grade <> '' then
                begin
                  ed_grade.text := nr_grade;
                  ed_grade_codigo.Text := cd_grade;
                end
                else
                begin
                  ed_grade.text := '';
                  ed_grade_codigo.Text := '';
                end;
              end;
              result := true;
           end
           else
           begin
             frmxloc_produto := tfrmxloc_produto.create(self);
             frmxloc_produto.loc.text := ed_produto.text;
             frmxloc_produto.showmodal;
             if resultado_pesquisa1 <> '' then
             begin
               loc_produto(resultado_pesquisa1);
             end
             else
             begin
               ed_produto.SelectAll;
               result := false;
             end;
           end;
        end
        else
        begin
          application.messagebox('Produto não localizado!','Erro',mb_ok+mb_iconerror);
          ed_produto.SelectAll;
          result := false;
        end;
end;

procedure TfrmNotaFiscal_Item2.bretornaClick(Sender: TObject);
begin
  confirmado := false;
  close;
end;

procedure TfrmNotaFiscal_Item2.bgravarClick(Sender: TObject);
begin
  confirmado := true;


  if ed_cfop.text = '' then
  begin
    application.messagebox('Favor informar o CFOP!','Erro',mb_ok+mb_iconerror);
    ed_cfop.setfocus;
    exit;
  end;
  if ed_cst.text = '' then
  begin
    application.messagebox('Favor informar a CST!','Erro',mb_ok+mb_iconerror);
    ed_cst.setfocus;
    exit;
  end;
  if ed_codigo.text = '' then
  begin
    application.messagebox('Favor informar o Produto!','Erro',mb_ok+mb_iconerror);
    ed_produto.setfocus;
    exit;
  end;


  if pState.caption = 'Inclusão' then
  begin
    FrmNotaFiscal.qrnotafiscal_item.close;
    FrmNotaFiscal.qrnotafiscal_item.sql.clear;
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('insert into c000062');
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('(CODNOTA,CODPRODUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('QTDE,UNITARIO,TOTAL,IPI,ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CFOP,CODGRADE,SERIAL,VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CLASSIFICACAO_FISCAL,CST,VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_REDUZIDO,BASE_CALCULO,MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_SUB,ICMS_SUB,ISENTO,CODLANCAMENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('DESCONTO,SUBTOTAL,PESO_BRUTO,PESO_LIQUIDO,Item,codigo,grade,complemento,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('pis_base,pis_valor,pis_aliquota,cofins_base,cofins_valor,cofins_aliquota)');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALUES');
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('(:CODNOTA,:CODPRODUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':QTDE,:UNITARIO,:TOTAL,:IPI,:ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':CFOP,:CODGRADE,:SERIAL,:VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':CLASSIFICACAO_FISCAL,:CST,:VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':ICMS_REDUZIDO,:BASE_CALCULO,:MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':BASE_SUB,:ICMS_SUB,:ISENTO,:CODLANCAMENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':DESCONTO,:SUBTOTAL,:PESO_BRUTO,:PESO_LIQUIDO,:ITEM,:codigo,:grade,:complemento,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add(':pis_base,:pis_valor,:pis_aliquota,:cofins_base,:cofins_valor,:cofins_aliquota)');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODNOTA'             ).asstring := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODPRODUTO'          ).asstring := ed_codigo.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE'                ).asfloat  := ed_qtde.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO'            ).asfloat  := ed_unitario.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL'               ).asfloat  := ed_total.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI'                 ).asfloat  := ed_ipi_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS'                ).asfloat  := ed_icms_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP'                ).asstring := ed_cfop.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODGRADE'            ).asstring := ed_grade_codigo.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SERIAL'              ).asstring := copy(ed_serial.Text,1,25);
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI'           ).asfloat  := ed_ipi_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := ed_classific.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST'                 ).asstring := ed_cst.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS'          ).asfloat  := ed_icms_valor.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO'       ).asfloat  := ed_icms_reducao.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO'        ).asfloat  := ed_icms_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA'     ).asfloat  := margem_agregada;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB'            ).asfloat  := ed_sub_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB'            ).asfloat  := ed_sub_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO'              ).asfloat  := ed_isenta.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODLANCAMENTO'       ).asstring := frmprincipal.codifica('000032',10);
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO'            ).asfloat  := ed_desconto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL'            ).asfloat  := ed_subtotal.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO'          ).asfloat  := ed_peso_bruto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO'        ).asfloat  := ed_peso_liquido.value;
    frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('Item'                ).asinteger:= nf_item;
    frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('codigo'              ).asstring := frmprincipal.codifica('000062',6);
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('GRADE'               ).asstring := ED_grade.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('COMPLEMENTO'         ).AsBlob := ED_COMPLEMENTO.Lines.Text;


    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base'            ).asfloat  := ed_Pis_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor'           ).asfloat  := ed_Pis_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota'        ).asfloat  := ed_Pis_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base'         ).asfloat  := ed_cofins_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor'        ).asfloat  := ed_cofins_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota'     ).asfloat  := ed_cofins_aliquota.value;


    FrmNotaFiscal.qrnotafiscal_item.ExecSQL;


    if tipo_nf = '2' then
    begin
      if ed_serial.text <> '' then
      begin

        query1.close;
        query1.sql.clear;
        query1.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        query1.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        query1.sql.add('where serial = '''+ed_serial.text+'''');
        query1.sql.add('and codproduto = '''+ed_codigo.text+'''');
        query1.params.Parambyname('situacao').AsInteger  := 2;
        query1.params.Parambyname('cliente').asstring    := frmnotafiscal_menu.qrnota.fieldbyname('cliente').asstring;
        query1.params.Parambyname('codcliente').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring;
        query1.params.Parambyname('DATAVENDA').ASdatetime:= frmnotafiscal_menu.qrnota.fieldbyname('data').asdatetime;
        query1.params.Parambyname('codvenda').asstring   := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
        query1.params.Parambyname('precovenda').asfloat  := ed_unitario.value;
        query1.execsql;
      end;
    end;
    nf_item := nf_item + 1;
  end
  else
  begin
    FrmNotaFiscal.qrnotafiscal_item.close;
    FrmNotaFiscal.qrnotafiscal_item.sql.clear;
    FrmNotaFiscal.qrnotafiscal_item.SQL.add('update c000062 set');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('QTDE                 = :QTDE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('UNITARIO             = :UNITARIO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('TOTAL                = :TOTAL,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('IPI                  = :IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS                 = :ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CFOP                 = :CFOP,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALOR_IPI            = :VALOR_IPI,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CLASSIFICACAO_FISCAL = :CLASSIFICACAO_FISCAL,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('CST                  = :CST,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('VALOR_ICMS           = :VALOR_ICMS,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_REDUZIDO        = :ICMS_REDUZIDO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_CALCULO         = :BASE_CALCULO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('MARGEM_AGREGADA      = :MARGEM_AGREGADA,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_SUB             = :BASE_SUB,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_SUB             = :ICMS_SUB,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('ISENTO               = :ISENTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('DESCONTO             = :DESCONTO,');
    {PESO_NOVO}
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PESO_BRUTO           = :PESO_BRUTO,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PESO_LIQUIDO         = :PESO_LIQUIDO,');

    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_BASE             = :PIS_BASE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_VALOR            = :PIS_VALOR,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('PIS_ALIQUOTA         = :PIS_ALIQUOTA,');

    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_BASE             = :cofins_BASE,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_VALOR            = :cofins_VALOR,');
    FrmNotaFiscal.qrnotafiscal_item.sql.add('cofins_ALIQUOTA         = :cofins_ALIQUOTA,');


    FrmNotaFiscal.qrnotafiscal_item.sql.add('SUBTOTAL             = :SUBTOTAL');

    FrmNotaFiscal.qrnotafiscal_item.sql.add(' WHERE CODIGO = '''+PCODIGO.CAPTION+'''');
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE'                ).asfloat  := ed_qtde.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO'            ).asfloat  := ed_unitario.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL'               ).asfloat  := ed_total.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI'                 ).asfloat  := ed_ipi_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS'                ).asfloat  := ed_icms_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP'                ).asstring := ed_cfop.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI'           ).asfloat  := ed_ipi_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := ed_classific.text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST'                 ).asstring := ed_cst.Text;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS'          ).asfloat  := ed_icms_valor.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO'       ).asfloat  := ed_icms_reducao.Value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO'        ).asfloat  := ed_icms_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA'     ).asfloat  := margem_agregada;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB'            ).asfloat  := ed_sub_base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB'            ).asfloat  := ed_sub_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO'              ).asfloat  := ed_isenta.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO'            ).asfloat  := ed_desconto.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL'            ).asfloat  := ed_subtotal.value;

    {PESO_NOVO}
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO'          ).asfloat  := ed_PESO_BRUTO.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO'        ).asfloat  := ed_PESO_LIQUIDO.value;


    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base'            ).asfloat  := ed_Pis_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor'           ).asfloat  := ed_Pis_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota'        ).asfloat  := ed_Pis_aliquota.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base'         ).asfloat  := ed_cofins_Base.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor'        ).asfloat  := ed_cofins_valor.value;
    FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota'     ).asfloat  := ed_cofins_aliquota.value;


    FrmNotaFiscal.qrnotafiscal_item.ExecSQL;

  end;



  if ed_grade_codigo.Text <> '' then
  begin
    query1.close;
    query1.sql.clear;
    if tipo_nf = '2' then
      query1.sql.add('update c000021 set estoque = estoque - :xqtde')
    else
      query1.sql.add('update c000021 set estoque = estoque + :xqtde');
    query1.sql.add('where codigo = '''+ed_grade_codigo.text+'''');
    query1.params.parambyname('xqtde').asfloat := ed_qtde.value - qtde_anterior;
    query1.execsql;
  end;

    frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat + ed_PIS_VALOR.value -  PIS_anterior;
    frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat + ed_cofins_VALOR.value -  cofins_anterior;


    frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat + ed_icms_base.value -  base_anterior;


    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat + ed_icms_valor.value - icms_anterior;

    frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat +  ed_sub_base.value -  base_sub_anterior;

    frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat + ed_sub_valor.value - icms_sub_anterior;

    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat +  ed_ipi_valor.value - ipi_anterior;

    if frmnotafiscal.check_desconto.Checked = false then
       frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat :=
       (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
       ed_subtotal.value)-valor_anterior
    else
       frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat :=
       (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
       (ed_total.value+ed_desconto.value))-
       valor_anterior;


    if ed_desconto.Value <> vdesconto_anterior then
       frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := (frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat+
                                                                    ed_desconto.Value)-vdesconto_anterior;

      frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                                                                   (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('icms_sub').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('frete').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('outras_despesas').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('valor_total_ipi').asfloat) -
                                                                    frmnotafiscal_menu.qrnota.FieldByName('desconto').asfloat;

      {PESO_NOVO}
     IF (ED_PESO_LIQUIDO.VALUE > 0) or (ED_PESO_BRUTO.VALUE > 0 ) THEN
     BEGIN
          frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat :=
          (frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat +
          (ED_PESO_BRUTO.VALUE* ED_QTDE.VALUE)) -  peso_bruto;

          frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat :=
          (frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat +
          (ED_PESO_LIQUIDO.VALUE* ED_QTDE.VALUE)) -  peso_liquido;
      end;


  

  close;
end;

procedure TfrmNotaFiscal_Item2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNotaFiscal_Item2.ed_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin


    
    if ed_produto.text <> '' then
    begin
      if loc_produto(ed_produto.text) then
      begin
        if ed_produto.Text = '' then
          begin
            ed_produto.SetFocus;
            exit;
          end
        else
          ed_qtde.setfocus;
      end
      else
        ed_produto.setfocus;
    end
    else
    begin
      resultado_pesquisa1 := '';
      frmxloc_produto := tfrmxloc_produto.create(self);
      frmxloc_produto.showmodal;
      if resultado_pesquisa1 <> '' then
      begin
        ed_produto.text := resultado_pesquisa1;
        if loc_produto(resultado_pesquisa1) then
        begin
          if ed_produto.Text <> '' then
            ed_qtde.setfocus
          else
            ed_produto.SetFocus;
          end
        else
          ed_produto.setfocus;
      end;
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_qtdeExit(Sender: TObject);
begin
  if ed_unitario.Value = 0 then
    begin
      application.messagebox('Produdo Sem Preço de Venda!, Verifique','Atenção',mb_ok+MB_ICONEXCLAMATION);
      ed_unitario.SetFocus;
      exit;
    end;

  ed_subtotal.value := ed_qtde.Value * ed_unitario.Value;
  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmNotaFiscal_Item2.ed_descontopExit(Sender: TObject);
begin
  if ED_descontoP.value <> 0 then  ED_desconto.Value := ED_subtotal.value * (ed_descontop.Value / 100);

   ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmNotaFiscal_Item2.ed_descontoExit(Sender: TObject);
begin
  if ed_subtotal.value <> 0 then ed_descontop.Value := (ed_desconto.Value * 100)/ed_subtotal.value;

  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmNotaFiscal_Item2.ed_cstKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if tedit(sender).Text <> '' then
    begin
      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from c000083 where CODIGO = '''+ed_cst.text+'''');
      query1.open;
      if query1.recordcount > 0 then
      begin
        ed_nome_cst.text := query1.fieldbyname('situacao').asstring;
        ed_cfop.setfocus;
      end
      else
      begin
        application.messagebox('CST não cadastrada!','Aviso',mb_ok+mb_iconwarning);
        ed_cst.setfocus;
      end;
    end
    else
    begin
      ed_cstButtonClick(frmnotafiscal_item2);
    end;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_cstButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cst := tfrmxloc_cst.create(self);
  frmxloc_cst.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from c000083 where CODIGO = '''+resultado_pesquisa1+'''');
      query1.open;

      ed_cst.text := query1.fieldbyname('codigo').asstring;
      ed_nome_cst.text := query1.fieldbyname('situacao').asstring;
      ed_cfop.setfocus;
  end;

end;

procedure TfrmNotaFiscal_Item2.ed_cfopExit(Sender: TObject);
begin
  if ed_cfop.text <> '' then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from c000030');
    query1.sql.add('where cfop = '''+ed_cfop.text+'''');
    query1.sql.add('and tipo = '''+tipo_nf+'''');
    query1.open;
    if query1.recordcount > 0 then
    begin
      ed_nome_cfop.text := query1.fieldbyname('natureza').asstring;


      if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'S' THEN
      begin
        ed_sub_base.value  := 0;
        ed_sub_valor.value := 0;
        ed_icms_base.value := 0;
        ed_icms_valor.value:= 0;
      end
      else
      begin
        if ed_icms_aliquota.Value <> 0 then
        begin
          if ed_icms_reducao.value <> 0 then
          begin
            IF (ed_cst.text = '060') or (ed_cst.text = '010') or (ed_cst.text = '070') then
            BEGIN
               margem_agregada := query1.fieldbyname('margem_agregada').Asfloat;
               if margem_agregada <> 0 then
               begin
                 ed_sub_base.value  := (ed_total.value * (Margem_agregada/100))* (ed_icms_reducao.value/100);
                 ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value/100);
               end
               else
               begin
                 ed_sub_base.value  := 0;
                 ed_sub_valor.value := 0;
               end;
               ed_icms_base.value := 0;
               ed_icms_valor.value:= 0;
            END
            ELSE
            BEGIN
               ed_sub_base.value  := 0;
               ed_sub_valor.value := 0;
            END;
          end
          else
          begin
            ed_icms_base.value := ed_total.value;
            ed_icms_valor.value:= ed_icms_base.value * (ed_icms_aliquota.value/100);
            ed_sub_base.value  := 0;
            ed_sub_valor.value := 0;
          end;
        end
        else
        begin
          // aliquota de icms = 0
          if ed_cfop.Text = '6114' then  // opção para a ouro preto  nota de consignação
          begin
             ed_icms_base.value := ed_total.value;
             ed_icms_valor.value:= 0;
          end
          else
          begin
             ed_icms_base.value := 0;
             ed_icms_valor.value:= 0;
          end;
        end;
      end;
      if  ed_ipi_aliquota.value <> 0 then
      begin
        ed_ipi_valor.value :=  ed_total.value * (ed_ipi_aliquota.value / 100)
      end;
    end
    else
    begin
      application.messagebox('CFOP não encontrado!','Erro',mb_ok+mb_iconerror);
      ed_cfop.setfocus;
      exit;
    end;
  end
  else
  begin
    ed_cfopbuttonclick(frmnotafiscal_item2);
    ed_cfop.setfocus;
  end;










end;

procedure TfrmNotaFiscal_Item2.FormShow(Sender: TObject);
begin


     vdesconto_anterior := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('DESCONTO').asfloat;
     qtde_anterior      := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('qtde').asfloat;
     valor_anterior     := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('subtotal').asfloat;
     icms_anterior      := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('valor_icms').asfloat;
     ipi_anterior       := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('valor_ipi').asfloat;
     base_anterior      := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('base_calculo').asfloat;
     base_sub_anterior  := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('base_sub').asfloat;
     icms_sub_anterior  := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('icms_sub').asfloat;
     PIS_anterior       := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('PIS_VALOR').asfloat;
     COFINS_anterior    := frmnotaFiscal.qrNotaFiscal_Item.fieldbyname('COFINS_VALOR').asfloat;




     {PESO_NOVO}
     peso_liquido := ed_peso_liquido.value * ED_QTDE.VALUE;
     peso_bruto   := ed_peso_bruto.value * ED_QTDE.VALUE;





     


 
  if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'S' then
    tipo_nf := '2' else tipo_nf := '1';
  if ed_produto.enabled then ed_produto.setfocus else ed_qtde.setfocus;

  confirmado := false;
end;

procedure TfrmNotaFiscal_Item2.ed_cfopButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' = '+tipo_nf;
  frmxloc_cfop := tfrmxloc_cfop.create(self);
  frmxloc_cfop.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
    ed_cfop.text := resultado_pesquisa1;
    ed_nome_cfop.text := resultado_pesquisa2;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_cfopKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmNotaFiscal_Item2.ed_icms_aliquotaExit(Sender: TObject);
var
  vindice : double;
begin
  if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'N' THEN
  begin
    if ed_icms_aliquota.value <> 0 then
    begin
      if ed_icms_reducao.value <> 0 then
      begin
        IF (ed_cst.text = '060') OR (ed_cst.text = '010') or (ed_cst.text = '070') THEN
        BEGIN
          if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' THEN
          begin
              ed_sub_base.value :=  (ed_total.value * (margem_agregada/100))* (ed_icms_reducao.value/100);
              ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value/100);
              ed_icms_base.value := 0;
              ed_icms_valor.value := 0;
          end
          else
          begin
              ed_sub_base.value := 0;
              ed_sub_valor.value := 0;
              ed_icms_base.value := 0;
              ed_icms_valor.value := 0;
          end;
        END
        ELSE
        BEGIN
          vindice := 0;
          if ed_icms_aliquota.value = 12                   then vindice := 0.5833
             else if ed_icms_aliquota.value = 17           then vindice := 0.4118
                  else if ed_icms_aliquota.value = 25      then vindice := 0.2800
                       else if ed_icms_aliquota.value = 27 then vindice := 0.2593;

          if ed_icms_reducao.value > 7 then vindice := (100-ed_icms_reducao.value)*0.01;
          ed_icms_base.value := ed_total.value * vindice;
          ed_icms_valor.value := ed_icms_base.value * (ed_icms_aliquota.value/100);
          ed_sub_base.value :=  0;
          ed_sub_valor.value := 0;
        END;
      end
      else
      begin
          // substituição tributária
          IF (ed_cst.text = '060') OR (ed_cst.text = '010') or (ed_cst.text = '070') THEN
          BEGIN
            if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' then
            begin
                ed_sub_base.value :=  ed_total.value ;
                ed_sub_valor.value := ed_sub_base.value * (ed_icms_aliquota.value/100);
                ed_icms_base.value := 0;
                ed_icms_valor.value := 0;
            end
            else
            begin
                ed_sub_base.value := 0;
                ed_sub_valor.value := 0;
                ed_icms_base.value := 0;
                ed_icms_valor.value := 0;
            end;
          END
          ELSE
          begin
            ed_icms_base.value := ed_total.value;
            ed_icms_valor.value := ed_icms_base.value *(ed_icms_aliquota.value/100);
          end;
      end;
    end
    else
    begin
      if ed_cfop.Text = '6114' then  // opção para a ouro preto nota de consignação
      begin
          ed_icms_base.value  := ed_total.value;
          ed_icms_valor.value := 0;
      end
      else
      begin
          ed_icms_base.value  := 0;
          ed_icms_valor.value := 0;
      end;
    end;
  end
  else
  begin
    // optante pelo simples
    ed_sub_base.value     := 0;
    ed_sub_valor.value    := 0;
    ed_icms_base.value    := 0;
    ed_icms_valor.value   := 0;
    ed_icms_reducao.value := 0;
    bgravar.setfocus;
  end;

end;

procedure TfrmNotaFiscal_Item2.ed_ipi_aliquotaExit(Sender: TObject);
begin

    if  ed_ipi_aliquota.value <> 0 then
    begin
      ed_ipi_valor.value :=
      ed_total.value *
      (ed_ipi_aliquota.value / 100)
    end;

end;

procedure TfrmNotaFiscal_Item2.ed_Pis_BaseExit(Sender: TObject);
begin
  if ed_pis_aliquota.value > 0 then
  ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value/100);
end;

procedure TfrmNotaFiscal_Item2.ed_pis_aliquotaExit(Sender: TObject);
begin
  if ed_pis_aliquota.value > 0 then
  ed_pis_valor.value := ed_pis_base.Value * (ed_pis_aliquota.value/100);

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_baseExit(Sender: TObject);
begin
  if ed_cofins_aliquota.value > 0 then
  ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value/100);

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_aliquotaExit(Sender: TObject);
begin
  if ed_cofins_aliquota.value > 0 then
  ed_cofins_valor.value := ed_cofins_base.Value * (ed_cofins_aliquota.value/100);
end;

procedure TfrmNotaFiscal_Item2.ed_cofins_valorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    bgravar.setfocus;
  end;
end;

procedure TfrmNotaFiscal_Item2.ed_Pis_BaseEnter(Sender: TObject);
begin
  IF ed_pis_aliquota.VALUE > 0 then
     ed_pis_base.value := ed_TOTAL.VALUE;

end;

procedure TfrmNotaFiscal_Item2.ed_cofins_baseEnter(Sender: TObject);
begin
  IF ed_COFINS_aliquota.VALUE > 0 then
     ed_COFINS_base.value := ed_TOTAL.VALUE;

end;

end.

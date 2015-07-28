unit os_item_2_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus, ZAbstractDataset, AdvGlowButton,
  RzEdit;

type
  TfrmOS_item_2_auto = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutofornecedor: TStringField;
    QUERY: TZQuery;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    FlatPanel5: TFlatPanel;
    Label1: TLabel;
    eproduto: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    lserial: TLabel;
    lfornecedor: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rqtde: TRxCalcEdit;
    runitario: TRxCalcEdit;
    rdesconto2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    FlatPanel4: TFlatPanel;
    rtotal: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    rsubtotal: TRxCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    Bevel6: TBevel;
    Label5: TLabel;
    ecst: TRzEdit;
    Label13: TLabel;
    ealiquota: TRzNumericEdit;
    restoque: TRxCalcEdit;
    qrestoque: TZQuery;
    qrvendido: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto2Enter(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS_item_2_auto: TfrmOS_item_2_auto;
  VER_PRODUTO : BOOLEAN;
  serial_grade : integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade : string;

  

implementation

uses modulo, principal, venda, venda_grade, venda_serial,
  loc_produto_venda_auto, xloc_produto, ecf, os_auto,
  os_serial;

{$R *.dfm}

procedure TfrmOS_item_2_auto.bcancelarClick(Sender: TObject);
begin
    lserial.caption := '';
    lfornecedor.Caption := '';
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;
  close;
end;

procedure TfrmOS_item_2_auto.rqtdeEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOS_item_2_auto.rqtdeExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;




          IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF restoque.value < rqtde.value THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue esta quantidade em estoque!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
            END;
          END;



  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2_auto.runitarioEnter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2_auto.rdesconto1Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2_auto.rdesconto2Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2_auto.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2_auto.rdesconto1Exit(Sender: TObject);
begin


  tedit(sender).color := clwindow;



  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2_auto.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;


  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;


  rtotal.value    := rsubtotal.value - rdesconto2.value;
end;

procedure TfrmOS_item_2_auto.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin

  if rqtde.value = 0 then
  begin
              APPLICATION.MESSAGEBOX('Favor informar uma quantidade válida!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
  end;
     perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TfrmOS_item_2_auto.rdesconto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_item_2_auto.FormCreate(Sender: TObject);
begin
{   if (Screen.Width = 1024) and (screen.Height = 768) then
   begin
     TOP := frmos_auto.Top + 260;
     LEFT := frmos_auto.Left + 490;
   end
   else
   begin
     TOP := frmos_auto.Top + 140;
     LEFT := frmos_auto.Left + 350;
   end;

}
        RQTDE.DisplayFormat := mascara_qtde;
        RQTDE.DecimalPlaces := decimal_qtde;

        RUNITARIO.DisplayFormat := mascara_valor;
        RUNITARIO.DecimalPlaces := decimal_valor;
end;

procedure TfrmOS_item_2_auto.eprodutoEnter(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := $00A8FFFF;
end;

procedure TfrmOS_item_2_auto.eprodutoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmOS_item_2_auto.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a, cod_serial, TIPO, codigo : string;
achou : boolean;
i : integer;
begin
  if key = #13 then
  begin
    IF EPRODUTO.TEXT <> '' THEN
    BEGIN
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      CODIGO := EPRODUTO.TEXT;

      qrproduto.Close;
      qrproduto.sql.clear;
      qrproduto.SQL.Add('select * from c000025 where codbarra ='''+CODIGO+'''');
      qrproduto.Open;

      CODIGO := '';
      if qrproduto.RecordCount > 0 then achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        CODIGO := FRMPRINCIPAL.zerarcodigo(CODIGO,6);
        qrproduto.Close;
        qrproduto.sql.clear;
        qrproduto.SQL.Add('select * from c000025 where codigo ='''+eproduto.text+'''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then achou := true;
      end;
      if not achou then
      begin
        // procurar pelo serial
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000022 where serial ='''+eproduto.text+''' and situacao = 1');
        QUERY.Open;
        if QUERY.RecordCount > 0 then achou := true;
        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('serial').asstring;
          TIPO := 'SERIAL';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
     // procurar pelo codigo de barras da grade
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000021 where codbarra ='''+eproduto.text+'''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
        begin
          if ESTOQUE_NEGATIVO then
            achou := true
          else
          begin
            if QUERY.FieldByName('estoque').asfloat > 0 then
              achou := true
            else
            begin
              application.messagebox('Este produto não possue estoque para esta grade!','Atenção!',mb_ok+MB_ICONERROR);
              eproduto.text := '';
              eproduto.SetFocus;
              exit;
            end;
          end;
        end;
        if achou then
        begin
          a := qrproduto.fieldbyname('codproduto').asstring;
          cod_serial := qrproduto.fieldbyname('codigo').asstring;
          TIPO := 'GRADE';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a :=  copy(codigo,1,1);
        for I := 1 To Length(A) Do
        begin
          if (A[I] in ['A'..'Z']) then
          begin
            produto_loc := '';
            qrproduto.Close;
            qrproduto.sql.clear;
            qrproduto.SQL.Add('select * from c000025 where produto like ''%'+eproduto.text+'%''');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
              exit;
            end
            else
            begin
              if qrproduto.RecordCount = 1 then
              begin
                achou := true;
              end
              else
              begin

               frmmodulo.qrconfig.Open;
               IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
               begin
                frmloc_venda_produto_auto := tfrmloc_venda_produto_auto.create(self);
                frmloc_venda_produto_auto.eproduto.text := eproduto.Text;
                frmloc_venda_produto_auto.ShowModal;
                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end
               else
               begin

                frmxloc_produto := tfrmxloc_produto.create(self);
                frmxloc_produto.loc.Text := eproduto.text;
                frmxloc_produto.showmodal;
                produto_loc := resultado_pesquisa1;


                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end;
              end;
            end;
          end;
        END;
      end;









       qrproduto.Open;
       if qrproduto.RecordCount > 0 then
       begin

          eproduto.text  := qrproduto.fieldbyname('codigo').asstring + ' '+qrproduto.fieldbyname('produto').asstring;
          runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          eproduto.Text := qrproduto.fieldbyname('produto').asstring;

          qrestoque.close;
          qrestoque.sql.clear;
          qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
          qrestoque.open;


          restoque.Value := qrestoque.fieldbyname('estoque_atual').asfloat;


         IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF restoque.Value < 0.01 THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
              eproduto.setfocus;
              exit;
            END;
          END;


          lfornecedor.Caption := qrproduto.fieldbyname('fornecedor').asstring;
          ecst.Text := qrproduto.fieldbyname('cst').asstring;
          ealiquota.value := qrproduto.fieldbyname('aliquota').asfloat;
          lserial.Caption := '---';

          rsubtotal.value := qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := qrproduto.fieldbyname('precovenda').asfloat;

          serial_grade := 0;
          codigo_serial_grade := '';

          RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

          if qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            IF (cod_serial <> '') AND (TIPO = 'GRADE') THEN
            BEGIN
              frmos_auto.qrproduto_grade.close;
              frmos_auto.qrproduto_grade.sql.clear;
              frmos_auto.qrproduto_grade.sql.Add('select * from c000021 where codigo = '''+cod_serial+'''');
              frmos_auto.qrproduto_grade.open;
              if frmos_auto.qrproduto_grade.RecordCount > 0 then
              begin
                lserial.Caption := frmos_auto.qrproduto_grade.fieldbyname('numeracao').asstring;
                serial_grade := 2;
                codigo_serial_grade := frmos_auto.qrproduto_grade.fieldbyname('codigo').asstring;
                RQTDE.SETFOCUS;
              end
              else
              begin
                              APPLICATION.MESSAGEBOX('Grade não encontrada!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.setfocus;
                              exit;
              end;


            END
            ELSE
            BEGIN
              frmos_auto.qrproduto_grade.close;
              frmos_auto.qrproduto_grade.sql.clear;
              if estoque_negativo then
                frmos_auto.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo')
              else
                frmos_auto.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and estoque > 0 order by codigo');
              frmos_auto.qrproduto_grade.open;

              frmvenda_grade := tfrmvenda_grade.create(self);
              frmvenda_grade.showmodal;

              if selecionado then
              begin
                 lserial.Caption := frmos_auto.qrproduto_grade.fieldbyname('numeracao').asstring;
                 serial_grade := 2;
                 codigo_serial_grade := frmos_auto.qrproduto_grade.fieldbyname('codigo').asstring;
                 RQTDE.SETFOCUS;
              end
              else
              begin
                  eproduto.setfocus;
              end;
            END;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              IF (cod_serial <> '') AND (TIPO = 'SERIAL') THEN
              BEGIN
                frmos_auto.qrproduto_serial.close;
                frmos_auto.qrproduto_serial.sql.clear;
                frmos_auto.qrproduto_serial.sql.Add('select * from c000022 where codigo = '''+COD_serial+''' and situacao = 1 ');
                frmos_auto.qrproduto_serial.open;
                if frmos_auto.qrproduto_serial.Recordcount > 0 then
                begin
                  lserial.Caption := frmos_auto.qrproduto_serial.fieldbyname('serial').asstring;
                  serial_grade := 1;
                  codigo_serial_grade := frmos_auto.qrproduto_serial.fieldbyname('codigo').asstring;
                  RQTDE.Enabled := FALSE;
                  RUNITARIO.SETFOCUS;
                end
                else
                begin
                              APPLICATION.MESSAGEBOX('Serial não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.setfocus;
                              exit;
                end;
              end
              else
              begin
                frmos_auto.qrproduto_serial.close;
                frmos_auto.qrproduto_serial.sql.clear;
                frmos_auto.qrproduto_serial.sql.Add('select * from c000022 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 order by codigo');
                frmos_auto.qrproduto_serial.open;

                frmos_serial := tfrmos_serial.create(self);
                frmos_serial.showmodal;

                if selecionado then
                begin
                  lserial.Caption := frmos_auto.qrproduto_serial.fieldbyname('serial').asstring;
                  serial_grade := 1;
                  codigo_serial_grade := frmos_auto.qrproduto_serial.fieldbyname('codigo').asstring;
                  RQTDE.Enabled := FALSE;
                  RUNITARIO.SETFOCUS;
                end
                else
                begin
                  eproduto.setfocus;
                end;
              end;
            end
            else
            begin
              rqtde.setfocus;
            end;
          end;

        end
        else
        begin
          application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          eproduto.text := '';
          eproduto.SetFocus;
        end;
    END
    ELSE
    BEGIN
      Eproduto.SetFocus;
    END;

  end;
end;

procedure TfrmOS_item_2_auto.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmOS_item_2_auto.bgravarClick(Sender: TObject);
var aliquota : string;
unidade : string;
begin
  if eproduto.text <> '' then
  begin
    frmos_auto.qros_produto.Insert;
    frmos_auto.qros_produto.FieldByName('codigo').asstring := frmprincipal.codifica('000032');
    frmos_auto.qros_produto.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
    frmos_auto.qros_produto.FieldByName('unidade').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
    frmos_auto.qros_produto.FieldByName('ALIQUOTA').asFLOAT := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
    frmos_auto.qros_produto.FieldByName('CST').asSTRING := qrproduto.fieldbyname('CST').asSTRING;


    frmos_auto.qros_produto.FieldByName('qtde').asfloat := rqtde.value;
    frmos_auto.qros_produto.FieldByName('unitario').asfloat := runitario.value;
    frmos_auto.qros_produto.FieldByName('total').asfloat := rtotal.value;
    frmos_auto.qros_produto.FieldByName('desconto').asfloat := rdesconto2.value;
    frmos_auto.qros_produto.FieldByName('movimento').asinteger := 9;
    frmos_auto.qros_produto.fieldbyname('codnota').asstring := frmmodulo.qros.fieldbyname('codigo').asstring;
    frmos_auto.qros_produto.fieldbyname('data').asstring := frmmodulo.qros.fieldbyname('data').asstring;
    frmos_auto.qros_produto.fieldbyname('codcliente').asstring := frmmodulo.qros.fieldbyname('codcliente').asstring;
    frmos_auto.qros_produto.fieldbyname('codvendedor').asstring := frmmodulo.qros.fieldbyname('codatendente').asstring;

    if serial_grade = 1 then // serial
    begin
      frmos_auto.qros_produto.fieldbyname('serial').asstring := lserial.CAPTION;
      frmos_auto.qros_produto.fieldbyname('codgrade').asstring := frmos_auto.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;

      frmos_auto.QRPRODUTO_SERIAL.Edit;
      frmos_auto.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 2;
      frmos_auto.QRPRODUTO_SERIAL.fieldbyname('cliente').asstring := frmmodulo.qros.fieldbyname('cliente').asstring;
      frmos_auto.QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmmodulo.qros.fieldbyname('codcliente').asstring;

      frmos_auto.QRPRODUTO_SERIAL.FieldByName('DATAvenda').ASSTRING := frmmodulo.qros.fieldbyname('data').asstring;
      frmos_auto.qrproduto_serial.fieldbyname('codvenda').asstring := frmmodulo.qros.fieldbyname('codigo').asstring;
      frmos_auto.qrproduto_serial.fieldbyname('precovenda').asfloat := runitario.value;
      frmos_auto.QRPRODUTO_SERIAL.post;
    end;
    frmos_auto.qrOS_produto.post;

    eproduto.text := '';

    lserial.caption := '';
    lfornecedor.Caption := '';
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;

    eproduto.setfocus;
  end
  else
  begin
    application.messagebox('Favor informar o produto!','Atenção!',mb_ok+MB_ICONWARNING);
    eproduto.setfocus;
  end;




end;

procedure TfrmOS_item_2_auto.FormShow(Sender: TObject);
begin


  EPRODUTO.SETFOCUS;
end;

procedure TfrmOS_item_2_auto.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOS_item_2_auto.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.

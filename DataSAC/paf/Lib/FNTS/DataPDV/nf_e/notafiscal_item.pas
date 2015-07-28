unit notafiscal_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  RzEdit, RzDBEdit, RzDBBnEd, AdvGlowButton, MemDS, DBAccess, IBC,
  ToolEdit, CurrEdit;

type

  Tfrmnotafiscal_item = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnotafiscal_item: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit30: TDBEdit;
    DBEdit1: TDBEdit;
    FlatPanel1: TFlatPanel;
    bgravar: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label11: TLabel;
    Label31: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    FlatPanel2: TFlatPanel;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    eqtde: TRzDBNumericEdit;
    eunitario: TRzDBNumericEdit;
    esubtotal: TRzDBNumericEdit;
    edperc: TRzNumericEdit;
    edesconto: TRzDBNumericEdit;
    etotal: TRzDBNumericEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ecfop: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ecst: TRzDBButtonEdit;
    ECLASSIF: TDBEdit;
    LUF: TLabel;
    Shape2: TShape;
    Shape8: TShape;
    DBEdit5: TDBEdit;
    Shape9: TShape;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Shape10: TShape;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Shape11: TShape;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Shape12: TShape;
    Label14: TLabel;
    Shape13: TShape;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Shape14: TShape;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Shape15: TShape;
    Label18: TLabel;
    Shape16: TShape;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    Shape17: TShape;
    Label15: TLabel;
    Shape18: TShape;
    Label17: TLabel;
    Shape19: TShape;
    Label25: TLabel;
    eproduto: TRzDBButtonEdit;
    Label7: TLabel;
    restoque: TRxCalcEdit;
    qrestoque: TzQuery;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bretornaClick(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure ecfopEnter(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edpercExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit13Exit(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoExit(Sender: TObject);
    procedure ecfopButtonClick(Sender: TObject);
    procedure eprodutoButtonClick(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ecstButtonClick(Sender: TObject);
    procedure ecstExit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure ECLASSIFKeyPress(Sender: TObject; var Key: Char);
    procedure ECLASSIFEnter(Sender: TObject);
    procedure ECLASSIFExit(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edescontoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
     frmnotafiscal_item: Tfrmnotafiscal_item;
     peso_bruto,peso_liquido,desconto_anterior,qtde_anterior, valor_anterior, ipi_anterior, icms_anterior, base_anterior, icms_sub_anterior, base_sub_anterior : real;
     vqde_ant: double;
     
implementation

uses loc_cfop, modulo_nfe, principal,
  produto_preco, produto_grade, produto_serial, notafiscal,
  produto_gradeFS, compra, notafiscal_menu, xloc_cst, xloc_produto;

{$R *.dfm}

procedure Tfrmnotafiscal_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (dsnotafiscal_item.State = dsinsert) or (dsnotafiscal_item.State = dsedit) then
   begin
      bretornaclick(frmnotafiscal_item);
   end;
end;

procedure Tfrmnotafiscal_item.bretornaClick(Sender: TObject);
begin
  frmnotafiscal.qrnotafiscal_item.cancel;
  close;
end;

procedure Tfrmnotafiscal_item.DBEdit5Enter(Sender: TObject);
begin
   TEdit(sender).Color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit5Exit(Sender: TObject);
var
  vindice : double;
begin

  TEdit(sender).Color := clwindow;

  if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'N' THEN
  begin
    if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
      begin

        if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
          begin
            IF (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '060') OR
               (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '010') or
               (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '020') or
               (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '070') THEN
              BEGIN
                if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' THEN
                  begin
                    dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  (dsnotafiscal_item.DataSet.fieldbyname('total').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('MARGEM_AGREGADA').asfloat/100))* (dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat/100);
                    dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
                    dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
                    dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
                    LUF.Caption := ' | Subst.Tributária';
                  end
                else
                  begin
                    dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat := 0;
                    dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
                    dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
                    dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
                  end;
              END
            ELSE
              BEGIN
                vindice := 0;
                if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat = 12 then
                  vindice := 0.5833
                else if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat = 17 then
                  vindice := 0.4118
                else if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat = 25 then
                  vindice := 0.2800
                else if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat = 27 then
                  vindice := 0.2593;

                if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat > 7 then
                  begin
                    vindice := (100-frmnotafiscal.qrnotafiscal_item.fieldbyname('ICMS_REDUZIDO').AsFloat)*0.01;
                  end;

                dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat * vindice;
                dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
                dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  0;
                dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
              END;
          end
        else

          // substituição tributária
          IF (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '060') OR
          (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '020') or

          (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '010') or
          (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '070') THEN
            BEGIN

              if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'S' then
                begin
                  dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  dsnotafiscal_item.DataSet.fieldbyname('total').asfloat ;
                  dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
                  dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
                  dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
                  LUF.Caption := ' | Subst.Tributária';
                end
              else
                begin
                  dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat := 0;
                  dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
                  dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
                  dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
                end;
            END

        ELSE
        begin


          dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat;
          dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                    (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
        end;
    end


  else
    begin

    ShowMessage('a');
      if ecfop.Text = '6114' then  // opção para a ouro preto nota de consignação
        begin
          dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat;
          dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
          dsnotafiscal_item.DataSet.fieldbyname('ICMS_OUTRAS').AsFloat := (esubtotal.Value-edesconto.Value); // + efrete.Value+eseguro.Value+eoutras.Value); //+evalor_ipi.Value;
        end
      else
        begin
          dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
          dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
          dsnotafiscal_item.DataSet.fieldbyname('ICMS_OUTRAS').AsFloat := 0;
        end;
    end;

  end
else
  begin

    dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat := 0;
    dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
    dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
    dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
  end;

  if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'S' THEN
    bgravar.SetFocus;

end;

procedure Tfrmnotafiscal_item.DBEdit2Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    dsnotafiscal_item.DataSet.fieldbyname('total').asfloat :=
    dsnotafiscal_item.DataSet.fieldbyname('qtde').asfloat *
    dsnotafiscal_item.DataSet.fieldbyname('UNITARIO').asfloat;
  end;
end;

procedure Tfrmnotafiscal_item.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    if ecfop.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then
         ecfopbuttonclick(frmnotafiscal_item)
      else
      begin
        if dsnotafiscal_item.dataset.fieldbyname('icms').asfloat = 0 then
        dsnotafiscal_item.dataset.fieldbyname('margem_agregada').asfloat := frmmodulo.qrcfop.fieldbyname('margem_agregada').Asfloat;




 if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
 begin
   if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
   begin
        IF (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '060') OR
         (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '010') or
         (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '020') or

         (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '070') THEN
        BEGIN
           dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  (dsnotafiscal_item.DataSet.fieldbyname('total').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('MARGEM_AGREGADA').asfloat/100))* (dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
           LUF.Caption := luf.caption + ' | Subst.Tributária';

        END
        ELSE
        BEGIN
           dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  0;
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
        END;
   end
   else
   begin
     dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat;
     dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                    (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
   end;
 end
 else
 begin
       ShowMessage('b');

       if ecfop.Text = '6114' then  // opção para a ouro preto  nota de consignação
       begin
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat;
           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_OUTRAS').AsFloat := (esubtotal.Value-edesconto.Value); // + efrete.Value+eseguro.Value+eoutras.Value); //+evalor_ipi.Value;
         end
       else
         begin
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_OUTRAS').AsFloat := 0;
         end;
 end;


          if  dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat <> 0 then
          begin
            dsnotafiscal_item.DataSet.fieldbyname('valor_ipi').asfloat :=
            dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
            (dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat / 100)
          end;


          if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'S' THEN
      begin
        dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat := 0;
        dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
        dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
        dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
      end;


        dbedit5.setfocus;
      end;
    end
    else
      ecfopbuttonclick(frmnotafiscal_item);
  end;
end;

procedure Tfrmnotafiscal_item.FormShow(Sender: TObject);
begin

     if dsnotafiscal_item.state = dsedit then
          begin

               frmmodulo.qrproduto.Locate('codigo',dsnotafiscal_item.DataSet.fieldbyname('codproduto').asstring,[loCaseInsensitive]);
               panel1.enabled := false;
          end
     else
          begin
               eqtde.Enabled := true;
               panel1.enabled := true;
               EPRODUTO.SETFOCUS;

          end;


    vdesconto_anterior := dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat;

     eproduto.Text  := dsnotafiscal_item.dataset.fieldbyname('CODPRODUTO').AsString;
     peso_bruto     := dsnotafiscal_item.dataset.fieldbyname('PESO_BRUTO').asfloat;
     peso_liquido   := dsnotafiscal_item.dataset.fieldbyname('PESO_LIQUIDO').asfloat;
     qtde_anterior  := dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat;
     valor_anterior := dsnotafiscal_item.dataset.fieldbyname('subtotal').asfloat;
     icms_anterior  := dsnotafiscal_item.dataset.fieldbyname('valor_icms').asfloat;
     ipi_anterior   := dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat;
     base_anterior  := dsnotafiscal_item.dataset.fieldbyname('base_calculo').asfloat;

     base_sub_anterior  := dsnotafiscal_item.dataset.fieldbyname('base_sub').asfloat;
     icms_sub_anterior  := dsnotafiscal_item.dataset.fieldbyname('icms_sub').asfloat;


     if frmnotafiscal.vopcao = 2 then
          vqde_ant := dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat;

  eunitario.DisplayFormat := mascara_valor;

end;

procedure Tfrmnotafiscal_item.bgravarClick(Sender: TObject);
var inclui_novo : boolean;
begin

  if eproduto.Text = '' then
    begin
      Application.messagebox('Não Foi Informado o Produto! Verifique...','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      eproduto.SetFocus;
      exit;
    end;
  if altera_item = 0 then
    begin
   if (dsnotafiscal_item.state = dsedit) or (dsnotafiscal_item.state = dsinsert) then
   begin
    frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger :=
    frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger + 1;
   end;
   end;

  if dsnotafiscal_item.state = dsinsert then  codigo_it := frmprincipal.codifica('000032');

  if frmnotafiscal.COMBOMOVIMENTO.ItemIndex = 1 then
  begin
        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmproduto_gradefS := tfrmproduto_gradefS.create(self);
          frmproduto_gradefS.showmodal;
        end;
  end;

    if dsnotafiscal_item.state = dsinsert then  frmnotafiscal.QRNOTAFISCAL_ITEM.FIELDBYNAME('CODLANCAMENTO').ASSTRING := codigo_it;

    // peso da mercadoria
    FRMNOTAFISCAL.qrnotafiscal_itemPESO_BRUTO.AsFloat := frmmodulo.qrproduto.fieldbyname('PESO').AsFloat;
    FRMNOTAFISCAL.qrnotafiscal_itemPESO_LIQUIDO.AsFloat := frmmodulo.qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;

  if dsnotafiscal_item.State = dsinsert then inclui_novo := true else inclui_novo := false;

  dsnotafiscal_item.dataset.FieldByName('codnota').asstring := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;

  if (frmnotafiscal.QRNOTAFISCAL_ITEM.FIELDBYNAME('CODLANCAMENTO').ASSTRING = '6114') then
    begin
      frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := (esubtotal.Value-edesconto.Value); // + efrete.Value+eseguro.Value+eoutras.Value); //+evalor_ipi.Value;
      frmcompra.qrnota_item.fieldbyname('BASE_CALCULO').value  := 0;
      frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').value    := 0;
    end;

  dsnotafiscal_item.dataset.post;

  //  if inclui_novo = true then
  //  begin

     IF (frmnotafiscal.qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat > 0) or
        (frmnotafiscal.qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat > 0 ) then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat :=
          (frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat +
          (frmnotafiscal.qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat*
          frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat)) -  peso_bruto;

          frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat :=
          (frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat +
         (frmnotafiscal.qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat*
         frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat)) -  peso_liquido;

        //showmessage('peso ' + floattostr(frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat)+' peso liq ' + floattostr(frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat));

      end;

    frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat :=
    (frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat +
    dsnotafiscal_item.dataset.fieldbyname('BASE_CALCULO').asfloat) -  base_anterior;

     //showmessage('base ' + floattostr(dsnotafiscal_item.dataset.fieldbyname('BASE_CALCULO').asfloat)+' base ant ' + floattostr(base_anterior));

    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat :=
    (frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat +
    dsnotafiscal_item.dataset.fieldbyname('VALOR_ICMS').asfloat) - icms_anterior;

    frmnotafiscal_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat :=
    (frmnotafiscal_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat +
    dsnotafiscal_item.dataset.fieldbyname('ICMS_OUTRAS').asfloat);

    frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat :=
    (frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat +
    dsnotafiscal_item.dataset.fieldbyname('BASE_sub').asfloat) -  base_sub_anterior;

    frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat :=
    (frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat +
    dsnotafiscal_item.dataset.fieldbyname('icms_sub').asfloat) - icms_sub_anterior;

    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    (frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat +

    dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat) - ipi_anterior;

    if frmnotafiscal.vopcao = 1 then
      frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat :=
               frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
               (dsnotafiscal_item.DataSet.fieldbyname('TOTAL').asfloat+dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat)-valor_anterior
    else
      begin

        if frmnotafiscal.check_desconto.Checked = false then
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat :=
               (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
                dsnotafiscal_item.DataSet.fieldbyname('subTOTAL').asfloat)-valor_anterior
        else
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat :=
               (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
               (dsnotafiscal_item.DataSet.fieldbyname('TOTAL').asfloat+dsnotafiscal_item.DataSet.fieldbyname('desconto').asfloat))-
               valor_anterior;
      end;

      if edesconto.Value <> vdesconto_anterior then
        frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := (frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat+
                                                                    edesconto.Value)-vdesconto_anterior;

    frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                                                                   (frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('icms_sub').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('frete').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('outras_despesas').asfloat +
                                                                    frmnotafiscal_menu.qrnota.FieldByName('valor_total_ipi').asfloat) -
                                                                    frmnotafiscal_menu.qrnota.FieldByName('desconto').asfloat;

   frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
    IF FRMMODULO.QRPRODUTO.FieldByName('CODRECEITA').ASSTRING = 'SIM' THEN
    BEGIN
      VENDA_VEICULO := TRUE;
      frmNOTAFISCAL.pveiculo.visible := true;
      frmNOTAFISCAL.memo1.Text := FRMMODULO.qrproduto.fieldbyname('APLICACAO').value;
      CLOSE;
      EXIT;
    END;
  END;



     if inclui_novo then
     begin
       with frmnotafiscal do
       begin
         qrnotafiscal_item.Insert;
         qrnotafiscal_item.FieldByName('cfop').asstring := frmnotafiscal_menu.qrnota.fieldbyname('cfop').asstring;
         eproduto.Text := '';
         eproduto.SetFocus;
         frmnotafiscal.vinclui_item := 1;
       end;
     end
     else
     begin
     with frmnotafiscal do
     begin
       qrnotafiscal_item.Edit;
       qrnotafiscal_item.Post;
     end;
     close;
   end;



end;

procedure Tfrmnotafiscal_item.DBEdit3Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    dsnotafiscal_item.DataSet.fieldbyname('total').asfloat :=
    dsnotafiscal_item.DataSet.fieldbyname('qtde').asfloat *
    dsnotafiscal_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmnotafiscal_item.DBEdit7Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
end;

procedure Tfrmnotafiscal_item.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmnotafiscal_item.DBEdit6Exit(Sender: TObject);
begin
    tedit(sender).color := clwindow;
    if  dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat <> 0 then
    begin
      dsnotafiscal_item.DataSet.fieldbyname('valor_ipi').asfloat :=
      dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
      (dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat / 100)
    end;
  bgravar.SetFocus;
end;

procedure Tfrmnotafiscal_item.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit3Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit4Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit12Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  bgravar.SetFocus;
end;

procedure Tfrmnotafiscal_item.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0); //bgravar.setfocus;
end;

procedure Tfrmnotafiscal_item.ecfopEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.eunitarioExit(Sender: TObject);
begin
  if eunitario.Value = 0 then
    begin
      Showmessage('Não Informado o Valor do Item, Verifique...');
      eunitario.Color := $00A8FFFF;
      eunitario.SetFocus;
      exit;
    end;

    dsnotafiscal_item.DataSet.fieldbyname('subtotal').AsFloat :=
    dsnotafiscal_item.DataSet.fieldbyname('QTDE').asfloat *
    eunitario.value ;

    dsnotafiscal_item.DataSet.fieldbyname('total').AsFloat :=
    (dsnotafiscal_item.DataSet.fieldbyname('QTDE').asfloat *
    eunitario.value)-dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat ;

    if frmnotafiscal.check_desconto.Checked =  true THEN
      BEGIN
      {
        if dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat = 0 then

          if frmnotafiscal_menu.qrnota.FIELDBYNAME('VALOR_PRODUTOS').ASFLOAT > 0 then
            dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat :=
            (dsnotafiscal_item.DataSet.fieldbyname('SUBTOTAL').asfloat  *
            frmnotafiscal_menu.qrnota.FIELDBYNAME('DESCONTO').ASFLOAT) /
            frmnotafiscal_menu.qrnota.FIELDBYNAME('VALOR_PRODUTOS').ASFLOAT;
       }
      END;


end;

procedure Tfrmnotafiscal_item.edpercExit(Sender: TObject);
begin
     if edperc.Value > 0 then
          dsnotafiscal_item.DataSet.fieldbyname('desconto').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat*edperc.Value/100;

end;

procedure Tfrmnotafiscal_item.edescontoExit(Sender: TObject);
begin
    //if dsnotafiscal_item.DataSet.State <> dsedit then if dsnotafiscal_item.DataSet.State <> dsinsert then exit;

    dsnotafiscal_item.DataSet.FieldByName('total').asfloat :=
    dsnotafiscal_item.DataSet.FieldByName('subtotal').asfloat - dsnotafiscal_item.DataSet.FieldByName('DESCONTO').asfloat;
end;

procedure Tfrmnotafiscal_item.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if key=vk_escape then
               bretorna.Click
          else if key=vk_F2 then
               bgravar.Click
end;

procedure Tfrmnotafiscal_item.DBEdit13Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  bgravar.SetFocus;
end;

procedure Tfrmnotafiscal_item.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;

end;

procedure Tfrmnotafiscal_item.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmnotafiscal_item.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    if eproduto.text <> '' then
    begin
       IF FRMMODULO.qrproduto.LOCATE('CODBARRA',EPRODUTO.TEXT,[loCaseInsensitive]) THEN
       begin
                 dsnotafiscal_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                 dsnotafiscal_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
                 dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat := 1;
                 dsnotafiscal_item.dataset.fieldbyname('DESCONTO').asfloat := 0;
                 dsnotafiscal_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

                 dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrproduto.fieldbyname('ALIQUOTA').asfloat;
                 dsnotafiscal_item.dataset.fieldbyname('ipi').asfloat := frmmodulo.qrproduto.fieldbyname('IPI').asfloat;
                 dsnotafiscal_item.dataset.fieldbyname('cst').AsString := frmmodulo.qrproduto.fieldbyname('CST').AsString;
                 dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').AsString := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                 dsnotafiscal_item.dataset.fieldbyname('codgrade').AsString := frmmodulo.qrproduto.fieldbyname('validade').AsString;
                 eqtde.setfocus;

       end
       else
       begin
         dsnotafiscal_item.dataset.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
         if eproduto.text <> '000000' then
         begin
           if not FrmPrincipal.Locregistro(frmmodulo.qrproduto,eproduto.text,'codigo') then
           begin
                     eprodutoButtonClick(frmnotafiscal_item);
           end
           else
           begin
             dsnotafiscal_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
             dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat := 1;
             dsnotafiscal_item.dataset.fieldbyname('DESCONTO').asfloat := 0;
             dsnotafiscal_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
             dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrproduto.fieldbyname('ALIQUOTA').asfloat;
             dsnotafiscal_item.dataset.fieldbyname('ipi').asfloat := frmmodulo.qrproduto.fieldbyname('IPI').asfloat;
             dsnotafiscal_item.dataset.fieldbyname('cst').AsString := frmmodulo.qrproduto.fieldbyname('CST').AsString;
             dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').AsString := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
             dsnotafiscal_item.dataset.fieldbyname('codgrade').AsString := frmmodulo.qrproduto.fieldbyname('validade').AsString;
             eqtde.setfocus;
           end;
         end
         else
            eprodutoButtonClick(frmnotafiscal_item);
         end;
     end
     else
       eprodutoButtonClick(frmnotafiscal_item);
 end;

end;

procedure Tfrmnotafiscal_item.ecfopButtonClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  dsnotafiscal_item.dataset.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;

  dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').asstring := frmmodulo.qrcfop.fieldbyname('classificacao_fiscal').AsString;
  if frmmodulo.qrcfop.fieldbyname('st').AsString <> '' then
     dsnotafiscal_item.dataset.fieldbyname('cst').asstring := frmmodulo.qrcfop.fieldbyname('st').AsString;

  if dsnotafiscal_item.dataset.fieldbyname('icms').asfloat = 0 then
    dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrcfop.fieldbyname('ICMS').Asfloat;

  //dsnotafiscal_item.dataset.fieldbyname('ICMS_REDUZIDO').asfloat := frmmodulo.qrcfop.fieldbyname('REDUCAO_ICMS').Asfloat;
  dsnotafiscal_item.dataset.fieldbyname('margem_agregada').asfloat := frmmodulo.qrcfop.fieldbyname('margem_agregada').Asfloat;

 if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
 begin
   if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
   begin
        IF (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '060') OR
        (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '010') or
        (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '020') or

        (frmmodulo.qrproduto.FieldByName('cst').ASSTRING = '070') THEN
        BEGIN
           dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  (dsnotafiscal_item.DataSet.fieldbyname('total').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('MARGEM_AGREGADA').asfloat/100))* (dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
           LUF.Caption := luf.caption + ' | Subst.Tributária';

        END
        ELSE
        BEGIN
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat * (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
           dsnotafiscal_item.DataSet.fieldbyname('BASE_SUB').asfloat :=  0;
           dsnotafiscal_item.DataSet.fieldbyname('ICMS_SUB').asfloat := 0;
        END;
   end
   else
   begin
     dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := dsnotafiscal_item.DataSet.fieldbyname('total').asfloat;
     dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                    (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
   end;
 end
 else
 begin
   dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat := 0;
   dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := 0;
 end;


    if  dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat <> 0 then
    begin
      dsnotafiscal_item.DataSet.fieldbyname('valor_ipi').asfloat :=
      dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
      (dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat / 100)
    end;











  eclassif.setfocus;

end;

procedure Tfrmnotafiscal_item.eprodutoButtonClick(Sender: TObject);
begin

  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if resultado_pesquisa1 = '' then exit
  else
  begin
    frmmodulo.qrproduto.locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);

    qrestoque.close;
    qrestoque.sql.clear;
    qrestoque.sql.add('select * from c000100 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
    qrestoque.open;

    if qrestoque.recordcount > 0 then
      restoque.Value := (qrestoque.fieldbyname('estoque_atual').asfloat)
    else
      restoque.Value := 0;

    IF NOT ESTOQUE_NEGATIVO THEN
      BEGIN
        IF restoque.Value < 0.01 THEN
          BEGIN
            APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
            eproduto.text := '';
            eproduto.setfocus;
            exit;
          END;
      END;

  end;

  eproduto.Text := frmmodulo.qrproduto.fieldbyname('codbarra').asstring;

  dsnotafiscal_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  dsnotafiscal_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
  dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat := 1;

  dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrproduto.fieldbyname('ALIQUOTA').asfloat;
  dsnotafiscal_item.dataset.fieldbyname('ipi').asfloat := frmmodulo.qrproduto.fieldbyname('IPI').asfloat;
  dsnotafiscal_item.dataset.fieldbyname('cst').AsString := frmmodulo.qrproduto.fieldbyname('CST').AsString;
  dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').AsString := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').AsString;

  dsnotafiscal_item.dataset.fieldbyname('codgrade').AsString := frmmodulo.qrproduto.fieldbyname('validade').AsString;

  dsnotafiscal_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;


  FRMMODULO.qraliquota.CLOSE;
  FRMMODULO.QRALIQUOTA.SQL.CLEAR;
  FRMMODULO.QRALIQUOTA.SQL.ADD('SELECT * FROM C000023 WHERE CODIGO = '''+FRMMODULO.QRproduto.FIELDBYNAME('CODALIQUOTA').ASSTRING+'''');
  FRMMODULO.QRALIQUOTA.OPEN;

  IF FRMMODULO.qraliquota.RecNo = 1 THEN
  begin
    try
      if frmmodulo.qrCLIENTE.fieldbyname('uf').asstring = 'TO' then
         dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := FRMMODULO.QRALIQUOTA.FIELDBYNAME('TOC').ASFLOAT
      ELSE
         dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := FRMMODULO.QRALIQUOTA.FIELDBYNAME(FRMMODULO.QRCLIENTE.FIELDBYNAME('UF').ASSTRING).ASFLOAT;

         LUF.CAPTION := FRMMODULO.QRCLIENTE.FIELDBYNAME('UF').ASSTRING;
    except
       TRY
        FRMMODULO.QREMITENTE.OPEN;
        if frmmodulo.qrEMITENTE.fieldbyname('uf').asstring = 'TO' then
           dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := FRMMODULO.QRALIQUOTA.FIELDBYNAME('TOC').ASFLOAT
         ELSE
            dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := FRMMODULO.QRALIQUOTA.FIELDBYNAME(FRMMODULO.QREMITENTE.FIELDBYNAME('UF').ASSTRING).ASFLOAT;
         LUF.Caption := FRMMODULO.QREMITENTE.FIELDBYNAME('UF').ASSTRING;
       EXCEPT
       END;
    end;
  end;
  eqtde.setfocus;
end;

procedure Tfrmnotafiscal_item.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmnotafiscal.qrnotafiscal_item.State <> dsedit then if frmnotafiscal.qrnotafiscal_item.State <> dsinsert then exit;
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
      ecstButtonClick(frmnotafiscal_item);
    end;
  end;
end;

procedure Tfrmnotafiscal_item.ecstButtonClick(Sender: TObject);
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
     frmnotafiscal.qrnotafiscal_item.fieldbyname('cst').asstring := resultado_pesquisa1;
     ecLASSIF.setfocus;
  end;
end;

procedure Tfrmnotafiscal_item.ecstExit(Sender: TObject);
begin

   TEdit(sender).Color := clwindow;
   if ecst.Text = '' then
     begin
          showmessage('Situação Tributária Inválida, verifique...');
          ecst.SetFocus;
          exit;
     end;
     if ecfop.Text = '6114' then  // opção para a ouro preto nota de consignação
          dbedit10.Enabled := true;

    if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'N' THEN
      begin
        DBEdit14.Enabled := false;
        DBEdit15.Enabled := false;
      end;
    if frmmodulo.qrFilial.FieldByName('OPTANTE_SIMPLES').AsString = 'S' THEN
      begin
        //frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS').AsFloat := 0;
        DBEdit6.Enabled := false;
        DBEdit9.Enabled := false;
        DBEdit10.Enabled := false;
        DBEdit11.Enabled := false;
        DBEdit12.Enabled := false;
      end;


end;

procedure Tfrmnotafiscal_item.DBEdit10Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmnotafiscal_item.DBEdit14Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmnotafiscal_item.ECLASSIFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_item.ECLASSIFEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmnotafiscal_item.ECLASSIFExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmnotafiscal_item.ecfopKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_item.eqtdeExit(Sender: TObject);
begin

    if frmnotafiscal.check_desconto.Checked =  true THEN
      BEGIN
        {
        if dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat = 0 then
          if frmnotafiscal_menu.qrnota.FIELDBYNAME('VALOR_PRODUTOS').ASFLOAT > 0 then
            dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat :=
            (dsnotafiscal_item.DataSet.fieldbyname('SUBTOTAL').asfloat  *
            frmnotafiscal_menu.qrnota.FIELDBYNAME('DESCONTO').ASFLOAT) /
            frmnotafiscal_menu.qrnota.FIELDBYNAME('VALOR_PRODUTOS').ASFLOAT;
        }
        
      END;


end;

procedure Tfrmnotafiscal_item.eunitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then edperc.setfocus;
end;

procedure Tfrmnotafiscal_item.edescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then ecst.setfocus;
end;

end.

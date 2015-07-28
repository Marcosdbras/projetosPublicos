unit produto_entrada_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  AdvGlowButton;

type
  Tfrmproduto_entrada_item = class(TForm)
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    ecfop: TDBEdit;
    bloccfop: TBitBtn;
    pgravar: TFlatPanel;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsentrada_item: TDataSource;
    encfop: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    blocproduto: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit1: TDBEdit;
    qrgrade_entrada: TZQuery;
    qrserial_produto: TZQuery;
    EPRODUTO: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lponto: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bserial: TAdvGlowButton;
    bgrade: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure bloccfopClick(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure blocprodutoClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure bgradeClick(Sender: TObject);
    procedure bserialClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_entrada_item: Tfrmproduto_entrada_item;
  qtde_anterior, valor_anterior : real;

implementation

uses produto_entrada, loc_cfop, modulo_nfe, principal, 
  produto_preco, produto_grade, produto_serial, xloc_produto;

{$R *.dfm}

procedure Tfrmproduto_entrada_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (dsentrada_item.State = dsinsert) or (dsentrada_item.State = dsedit) then
   begin
      bcancelarclick(frmproduto_entrada_item);
   end;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';

  action := cafree;
end;

procedure Tfrmproduto_entrada_item.bcancelarClick(Sender: TObject);
begin
  if dsentrada_item.State = dsinsert then
  begin
    qrgrade_entrada.Close;
    qrgrade_entrada.SQL.clear;
    qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
    qrgrade_entrada.Open;

    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+dsentrada_item.dataset.fieldbyname('codproduto').asstring+'''');
    frmmodulo.qrgrade_produto.open;

    while qrgrade_entrada.RecordCount <> 0 do
    begin
     if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
     begin
       frmmodulo.qrgrade_produto.edit;
       frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                frmmodulo.qrgrade_produto.FieldByName('qtde').asfloat;
       frmmodulo.qrgrade_produto.post;
     end;
     qrgrade_entrada.delete;
    end;

    qrserial_produto.Close;
    qrserial_produto.SQL.clear;
    qrserial_produto.SQL.add('delete from c000022 where coditem = '''+dsentrada_item.dataset.fieldbyname('codigo').asstring+'''');
    qrserial_produto.EXECSQL;
  end;
  dsentrada_item.dataset.cancel;
  close;
end;

procedure Tfrmproduto_entrada_item.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_entrada_item.DBEdit5Enter(Sender: TObject);
begin
   TEdit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_entrada_item.DBEdit5Exit(Sender: TObject);
begin
 TEdit(sender).Color := clwindow;
 if frmproduto_entrada.qrentrada_item.fieldbyname('icms').asfloat <> 0 then
 begin
   frmproduto_entrada.qrentrada_item.fieldbyname('VALOR_ICMS').asfloat :=
   frmproduto_entrada.qrentrada_item.fieldbyname('TOTAL').asfloat *
   (frmproduto_entrada.qrentrada_item.fieldbyname('icms').asfloat / 100);
 end;
end;

procedure Tfrmproduto_entrada_item.DBEdit2Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsentrada_item.state = dsinsert) or (dsentrada_item.State = dsedit) then
  begin
    dsentrada_item.DataSet.fieldbyname('total').asfloat :=
    dsentrada_item.DataSet.fieldbyname('qtde').asfloat *
    dsentrada_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmproduto_entrada_item.bloccfopClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  dsentrada_item.dataset.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;
  encfop.text := frmmodulo.qrcfop.fieldbyname('natureza').asstring;
  bgravar.setfocus;
end;

procedure Tfrmproduto_entrada_item.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsentrada_item.state = dsinsert) or (dsentrada_item.State = dsedit) then
  begin
    if ecfop.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then
         bloccfopclick(frmproduto_entrada_item)
      else
      begin
        encfop.text := frmmodulo.qrcfop.fieldbyname('natureza').asstring;
        bgravar.setfocus;
      end;
    end
    else
      bloccfop.SetFocus;
  end;
end;

procedure Tfrmproduto_entrada_item.FormShow(Sender: TObject);
begin
  caption := 'Nota Fiscal de Compra - Edição do Item n.: '+dsentrada_item.dataset.fieldbyname('codigo').asstring;

  if dsentrada_item.state = dsedit then
  begin
    frmmodulo.qrproduto.Locate('codigo',dsentrada_item.DataSet.fieldbyname('codproduto').asstring,[loCaseInsensitive]);
    //// verificar se produto usa grade

    if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
    begin
      bgrade.visible := true;
      dbedit2.Enabled := false;
      lponto.Visible := true;
    end
    else
    begin
     lponto.visible := false;
     bgrade.visible := false;
     dbedit2.Enabled := true;
    end;

    /// verificar se produto utiliza controle de seriais
    if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
    begin
     bserial.visible := true;
     dbedit2.Enabled := false;
     lponto.visible := true;
    end
    else
    begin
     lponto.visible := false;
     bserial.visible := false;
     dbedit2.Enabled := true;
    end;


    panel1.enabled := false;

  end
  else
  begin
    dbedit2.Enabled := true;
    panel1.enabled := true;
    lponto.visible := false;
  end;


  encfop.text := '';
  qtde_anterior := dsentrada_item.dataset.fieldbyname('qtde').asfloat;
  valor_anterior := dsentrada_item.dataset.fieldbyname('total').asfloat;
end;

procedure Tfrmproduto_entrada_item.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsentrada_item.state = dsinsert) or (dsentrada_item.State = dsedit) then
  begin
    eproduto.text := frmPrincipal.zerarcodigo(eproduto.text,6);
    if eproduto.text <> '000000' then
    begin
      IF NOT FRMMODULO.QRPRODUTO.Locate('CODIGO',EPRODUTO.TEXT,[loCaseInsensitive]) THEN
      BEGIN
        IF NOT FRMMODULO.QRPRODUTO.Locate('CODBARRA',EPRODUTO.TEXT,[loCaseInsensitive]) THEN
        begin
          APPLICATION.MESSAGEBOX('Produto não econtrado!','Atenção',mb_ok+MB_ICONWARNING);
          blocprodutoclick(frmproduto_entrada_item);
        end
        else
        begin
         dsentrada_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
         dsentrada_item.dataset.fieldbyname('qtde').asfloat := 1;
         dsentrada_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
           dsentrada_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
      //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;

      /// verificar se produto utiliza controle de seriais
        if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;
         dbedit2.setfocus;
        end;
      END
      else
      begin
         dsentrada_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
         dsentrada_item.dataset.fieldbyname('qtde').asfloat := 1;
         dsentrada_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
           dsentrada_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
      //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;

      /// verificar se produto utiliza controle de seriais
        if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;
         dbedit2.setfocus;

      end;
    end
    else
      blocproduto.SetFocus;
  end;
end;

procedure Tfrmproduto_entrada_item.blocprodutoClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';

  frmXloc_produto := tfrmxloc_produto.create(self);
  frmXloc_produto.showmodal;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  frmmodulo.qrproduto.open;

  if resultado_pesquisa1 = '' then exit;

  dsentrada_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  eproduto.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  dsentrada_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
  dsentrada_item.dataset.fieldbyname('qtde').asfloat := 1;
  dsentrada_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;


    //// verificar se produto usa grade

    if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;

    /// verificar se produto utiliza controle de seriais
    if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;


  dbedit2.setfocus;
end;

procedure Tfrmproduto_entrada_item.bgravarClick(Sender: TObject);
var inclui_novo : boolean;
despesas : real;
begin
  if dsentrada_item.State = dsinsert then inclui_novo := true else inclui_novo := false;
  frmmodulo.qrproduto.edit;
  if application.messagebox('Deseja alterar preço de venda deste produto?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
      produto_remarca := false;
      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+dsentrada_item.dataset.fieldbyname('codproduto').asstring+'''');
      frmmodulo.qrpreco.open;


      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
       // caso produto nao tenha Grade de preco, criar
       frmmodulo.qrpreco.insert;
       frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
       frmmodulo.qrpreco.fieldbyname('codproduto').asstring := dsentrada_item.dataset.fieldbyname('codproduto').asstring;
       frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := dsentrada_item.dataset.fieldbyname('unitario').asfloat;
       frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := dsentrada_item.dataset.fieldbyname('unitario').asfloat;
       frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := dsentrada_item.dataset.fieldbyname('icms').asfloat;


       despesas := frmmodulo.qrentrada_produto.fieldbyname('FRETE').asfloat +
                   frmmodulo.qrentrada_produto.fieldbyname('SEGURO').asfloat +
                   frmmodulo.qrentrada_produto.fieldbyname('OUTRAS_DESPESAS').asfloat;


       if despesas <> 0 then
       begin
         despesas := despesas / frmmodulo.qrentrada_produto.fieldbyname('VALOR_PRODUTOS').asfloat;
       end;

       if dsentrada_item.dataset.fieldbyname('ipi').asfloat > 0 then
       begin
          frmmodulo.qrpreco.fieldbyname('FRETE_IPI_OUTRAS').asfloat := ((despesas * frmproduto_entrada.qrentrada_item.fieldbyname('unitario').asfloat)) +
          (dsentrada_item.dataset.fieldbyname('unitario').asfloat*(dsentrada_item.dataset.fieldbyname('ipi').asfloat/100));
       end
       else
       begin
          frmmodulo.qrpreco.fieldbyname('FRETE_IPI_OUTRAS').asfloat := ((despesas * frmproduto_entrada.qrentrada_item.fieldbyname('unitario').asfloat));
       end;
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

      produto_remarca := true;
  end;




  frmmodulo.qrproduto.Edit;


  ///////// LANÇAR DADOS DA ULTIMA COMPRA PARA CAMPO ANTERIORES /////////

  frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring;
  frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring :=        frmmodulo.qrproduto.FieldByName('notafiscal').asstring;
  frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring :=     frmmodulo.qrproduto.FieldByName('codfornecedor').asstring;

  ///////////////////////////////
  frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrentrada_produto.fieldbyname('data').asstring;
  frmmodulo.qrproduto.FieldByName('notafiscal').asstring :=        frmmodulo.qrentrada_produto.fieldbyname('numero').asstring;
  frmmodulo.qrproduto.FieldByName('codfornecedor').asstring :=     frmmodulo.qrentrada_produto.fieldbyname('codfornecedor').asstring;


  frmmodulo.qrproduto.Post;
                                                       



  dsentrada_item.dataset.FieldByName('codnota').asstring := frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring;
  dsentrada_item.dataset.FieldByName('numeronota').asstring := frmmodulo.qrentrada_produto.fieldbyname('numero').asstring;
  dsentrada_item.dataset.FieldByName('data').asstring := frmmodulo.qrentrada_produto.fieldbyname('data').asstring;


  dsentrada_item.dataset.fieldbyname('movimento').asinteger := 1;
   if dsentrada_item.dataset.State = dsinsert then
   begin
    frmmodulo.qrentrada_produto.FieldByName('itens').asinteger :=
    frmmodulo.qrentrada_produto.FieldByName('itens').asinteger + 1;
   end;


  dsentrada_item.dataset.post;


  if valor_nota = 0 then
  begin

  if dsentrada_item.dataset.fieldbyname('ICMS').asfloat > 0 then
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
    frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').asfloat +
    (dsentrada_item.dataset.fieldbyname('total').asfloat*(dsentrada_item.dataset.fieldbyname('ipi').asfloat/100));
  end;



  frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat := frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                       dsentrada_item.DataSet.fieldbyname('TOTAL').asfloat-valor_anterior;

  frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').asfloat := frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('frete').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('seguro').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('outras_despesas').asfloat +
                                                                   frmmodulo.qrentrada_produto.FieldByName('valor_total_ipi').asfloat -
                                                                   frmmodulo.qrentrada_produto.FieldByName('desconto').asfloat;
  end;







  if inclui_novo then
  begin
    with frmproduto_entrada do
    begin
      qrentrada_item.Insert;
      qrentrada_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
      qrentrada_item.FieldByName('cfop').asstring := frmmodulo.qrentrada_produto.fieldbyname('cfop').asstring;
      EPRODUTO.TEXT := '';
      eproduto.SetFocus;
    end;
  end
  else
  begin
    close;
  end;
end;

procedure Tfrmproduto_entrada_item.DBEdit3Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsentrada_item.state = dsinsert) or (dsentrada_item.State = dsedit) then
  begin
    dsentrada_item.DataSet.fieldbyname('total').asfloat :=
    dsentrada_item.DataSet.fieldbyname('qtde').asfloat *
    dsentrada_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmproduto_entrada_item.bgradeClick(Sender: TObject);
begin


      frmproduto_grade := tfrmproduto_grade.create(self);
      frmproduto_grade.showmodal;

      dbedit5.setfocus;


end;

procedure Tfrmproduto_entrada_item.bserialClick(Sender: TObject);
begin
      frmproduto_SERIAL := tfrmproduto_SERIAL.create(self);
      frmproduto_SERIAL.showmodal;

      dbedit5.setfocus;

end;

procedure Tfrmproduto_entrada_item.DBEdit6Exit(Sender: TObject);
begin
 TEdit(sender).Color := clwindow;
 if frmproduto_entrada.qrentrada_item.fieldbyname('IPI').asfloat <> 0 then
 begin
   frmproduto_entrada.qrentrada_item.fieldbyname('VALOR_IPI').asfloat :=
   frmproduto_entrada.qrentrada_item.fieldbyname('TOTAL').asfloat *
   (frmproduto_entrada.qrentrada_item.fieldbyname('IPI').asfloat / 100);
 end;
end;

end.

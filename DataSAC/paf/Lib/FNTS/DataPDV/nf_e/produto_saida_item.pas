unit produto_saida_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmproduto_saida_item = class(TForm)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    ecfop: TDBEdit;
    bloccfop: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    ViewSplit1: TViewSplit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dssaida_item: TDataSource;
    encfop: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    eproduto: TDBEdit;
    blocproduto: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit1: TDBEdit;
    bgrade: TBitBtn;
    bserial: TBitBtn;
    qrgrade_saida: TZQuery;
    qrserial_produto: TZQuery;
    lponto: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_saida_item: Tfrmproduto_saida_item;
  qtde_anterior, valor_anterior : real;

implementation

uses produto_saida, loc_cfop, modulo_nfe, principal, 
  produto_preco, produto_grade_saida, produto_serial_saida, xloc_produto;

{$R *.dfm}

procedure Tfrmproduto_saida_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (dssaida_item.State = dsinsert) or (dssaida_item.State = dsedit) then
   begin
      bcancelarclick(frmproduto_saida_item);
   end;

  action := cafree;
end;

procedure Tfrmproduto_saida_item.bcancelarClick(Sender: TObject);
begin
  if dssaida_item.State = dsinsert then
  begin
    qrgrade_saida.Close;
    qrgrade_saida.SQL.clear;
    qrgrade_saida.SQL.add('select * from c000033 where coditem = '''+dssaida_item.dataset.fieldbyname('codigo').asstring+'''');
    qrgrade_saida.Open;

    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+dssaida_item.dataset.fieldbyname('codproduto').asstring+'''');
    frmmodulo.qrgrade_produto.open;

    while qrgrade_saida.RecordCount <> 0 do
    begin
     if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_saida.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
     begin
       frmmodulo.qrgrade_produto.edit;
       frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat +
                                                                frmmodulo.qrgrade_produto.FieldByName('qtde').asfloat;
       frmmodulo.qrgrade_produto.post;
     end;
     qrgrade_saida.delete;
    end;

    qrserial_produto.Close;
    qrserial_produto.SQL.clear;
    qrserial_produto.SQL.add('update c000022 set situacao = 1, coditem_saida = '''''' where coditem_saida = '''+dssaida_item.dataset.fieldbyname('codigo').asstring+'''');
    qrserial_produto.EXECSQL;
  end;
  dssaida_item.dataset.cancel;
  close;
end;

procedure Tfrmproduto_saida_item.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_saida_item.DBEdit5Enter(Sender: TObject);
begin
   tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_saida_item.DBEdit5Exit(Sender: TObject);
begin
 TEdit(sender).Color := clwindow;
end;

procedure Tfrmproduto_saida_item.DBEdit2Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dssaida_item.state = dsinsert) or (dssaida_item.State = dsedit) then
  begin
    dssaida_item.DataSet.fieldbyname('total').asfloat :=
    dssaida_item.DataSet.fieldbyname('qtde').asfloat *
    dssaida_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmproduto_saida_item.bloccfopClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  dssaida_item.dataset.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;
  encfop.text := frmmodulo.qrcfop.fieldbyname('natureza').asstring;
  bgravar.setfocus;
end;

procedure Tfrmproduto_saida_item.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dssaida_item.state = dsinsert) or (dssaida_item.State = dsedit) then
  begin
    if ecfop.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then
         bloccfopclick(frmproduto_saida_item)
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

procedure Tfrmproduto_saida_item.FormShow(Sender: TObject);
begin
  caption := 'Nota Fiscal de Saída - Edição do Item n.: '+dssaida_item.dataset.fieldbyname('codigo').asstring;

  if dssaida_item.state = dsedit then
  begin
    frmmodulo.qrproduto.Locate('codigo',dssaida_item.DataSet.fieldbyname('codproduto').asstring,[loCaseInsensitive]);
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
  qtde_anterior := dssaida_item.dataset.fieldbyname('qtde').asfloat;
  valor_anterior := dssaida_item.dataset.fieldbyname('total').asfloat;
end;

procedure Tfrmproduto_saida_item.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dssaida_item.state = dsinsert) or (dssaida_item.State = dsedit) then
  begin
    if eproduto.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrproduto,eproduto.text,'produto') then
      begin
        blocprodutoclick(frmproduto_saida_item);
      end
      else
      begin
       dssaida_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
       dssaida_item.dataset.fieldbyname('qtde').asfloat := 1;
       dssaida_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;

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

procedure Tfrmproduto_saida_item.blocprodutoClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmXloc_produto := tfrmxloc_produto.create(self);
  frmXloc_produto.showmodal;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  frmmodulo.qrproduto.open;
  if resultado_pesquisa1 = '' then exit;


  dssaida_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  dssaida_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.
  qrproduto.fieldbyname('precocusto').asfloat;
  dssaida_item.dataset.fieldbyname('qtde').asfloat := 1;
  dssaida_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;


    //// verificar se produto usa grade

    if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;

    /// verificar se produto utiliza controle de seriais
    if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;


  dbedit2.setfocus;
end;

procedure Tfrmproduto_saida_item.bgravarClick(Sender: TObject);
begin
  frmmodulo.qrproduto.edit;
  frmmodulo.qrproduto.FieldByName('estoque').asfloat := frmmodulo.qrproduto.FieldByName('estoque').asfloat -
                                                        dssaida_item.dataset.FieldByName('qtde').asfloat +
                                                        qtde_anterior;

  frmmodulo.qrproduto.Post;




  dssaida_item.dataset.FieldByName('codnota').asstring := frmmodulo.qrsaida_produto.fieldbyname('codigo').asstring;
  dssaida_item.dataset.FieldByName('numeronota').asstring := frmmodulo.qrsaida_produto.fieldbyname('numero').asstring;
  dssaida_item.dataset.FieldByName('data').asstring := frmmodulo.qrsaida_produto.fieldbyname('data').asstring;
  dssaida_item.dataset.fieldbyname('movimento').asinteger := 3;
  dssaida_item.dataset.post;

  if dssaida_item.dataset.fieldbyname('ipi').asfloat > 0 then
  begin
    frmmodulo.qrsaida_produto.fieldbyname('BASE_CALCULO').asfloat :=
    frmmodulo.qrsaida_produto.fieldbyname('BASE_CALCULO').asfloat +
    dssaida_item.dataset.fieldbyname('total').asfloat;

    frmmodulo.qrsaida_produto.fieldbyname('VALOR_ICMS').asfloat :=
    frmmodulo.qrsaida_produto.fieldbyname('VALOR_ICMS').asfloat +
    (dssaida_item.dataset.fieldbyname('total').asfloat * (dssaida_item.dataset.fieldbyname('icms').asfloat / 100));
  end;




  if dssaida_item.dataset.fieldbyname('ipi').asfloat > 0 then
  begin
    frmmodulo.qrsaida_produto.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    frmmodulo.qrsaida_produto.FieldByName('VALOR_TOTAL_IPI').asfloat +
    (dssaida_item.dataset.fieldbyname('total').asfloat*(dssaida_item.dataset.fieldbyname('ipi').asfloat/100));
  end;



  frmmodulo.qrsaida_produto.FieldByName('VALOR_PRODUTOS').asfloat := frmmodulo.qrsaida_produto.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                       dssaida_item.DataSet.fieldbyname('TOTAL').asfloat - valor_anterior;

  frmmodulo.qrsaida_produto.FieldByName('TOTAL_NOTA').asfloat := frmmodulo.qrsaida_produto.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                   frmmodulo.qrsaida_produto.FieldByName('frete').asfloat +
                                                                   frmmodulo.qrsaida_produto.FieldByName('seguro').asfloat +
                                                                   frmmodulo.qrsaida_produto.FieldByName('outras_despesas').asfloat +
                                                                   frmmodulo.qrsaida_produto.FieldByName('valor_total_ipi').asfloat -
                                                                   frmmodulo.qrsaida_produto.FieldByName('desconto').asfloat;

   if frmmodulo.qrsaida_produto.State = dsinsert then
   begin
    frmmodulo.qrsaida_produto.FieldByName('itens').asinteger :=
    frmmodulo.qrsaida_produto.FieldByName('itens').asinteger + 1;
   end;



  close;
end;

procedure Tfrmproduto_saida_item.DBEdit3Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dssaida_item.state = dsinsert) or (dssaida_item.State = dsedit) then
  begin
    dssaida_item.DataSet.fieldbyname('total').asfloat :=
    dssaida_item.DataSet.fieldbyname('qtde').asfloat *
    dssaida_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmproduto_saida_item.bgradeClick(Sender: TObject);
begin


      frmproduto_grade_saida := tfrmproduto_grade_saida.create(self);
      frmproduto_grade_saida.showmodal;

      dbedit5.setfocus;


end;

procedure Tfrmproduto_saida_item.bserialClick(Sender: TObject);
begin
      frmproduto_SERIAL_saida := tfrmproduto_SERIAL_saida.create(self);
      frmproduto_SERIAL_saida.showmodal;

      dbedit5.setfocus;

end;

end.

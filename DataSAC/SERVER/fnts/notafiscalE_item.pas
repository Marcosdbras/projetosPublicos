unit notafiscalE_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmnotafiscalE_item = class(TForm)
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    ViewSplit1: TViewSplit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnotafiscal_item: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    eproduto: TDBEdit;
    blocproduto: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    bloccfop: TBitBtn;
    ecfop: TDBEdit;
    encfop: TEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
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
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure ecfopEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscalE_item: TfrmnotafiscalE_item;
  qtde_anterior, valor_anterior, ipi_anterior, icms_anterior, base_anterior : real;

implementation

uses loc_cfop, modulo, principal, 
  produto_preco, produto_grade, produto_serial, notafiscalE, xloc_produto;

{$R *.dfm}

procedure TfrmnotafiscalE_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (dsnotafiscal_item.State = dsinsert) or (dsnotafiscal_item.State = dsedit) then
   begin
      bcancelarclick(frmnotafiscalE_item);
   end;

  action := cafree;
end;

procedure TfrmnotafiscalE_item.bcancelarClick(Sender: TObject);
begin
  dsnotafiscal_item.dataset.cancel;
  close;
end;

procedure TfrmnotafiscalE_item.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmnotafiscalE_item.DBEdit5Enter(Sender: TObject);
begin
   tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit5Exit(Sender: TObject);
begin
 TEdit(sender).Color := clwindow;
 if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
 begin
   if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
   begin
     dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat :=
     dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
     (((dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat*100)/dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat)/100);

     dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                    (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);
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



end;

procedure TfrmnotafiscalE_item.DBEdit2Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    dsnotafiscal_item.DataSet.fieldbyname('total').asfloat :=
    dsnotafiscal_item.DataSet.fieldbyname('qtde').asfloat *
    dsnotafiscal_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure TfrmnotafiscalE_item.bloccfopClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  dsnotafiscal_item.dataset.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;
  encfop.text := frmmodulo.qrcfop.fieldbyname('natureza').asstring;

  dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').asstring := frmmodulo.qrcfop.fieldbyname('classificacao_fiscal').AsString;
  dsnotafiscal_item.dataset.fieldbyname('cst').asstring := frmmodulo.qrcfop.fieldbyname('st').AsString;
  dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrcfop.fieldbyname('ICMS').Asfloat;
  dsnotafiscal_item.dataset.fieldbyname('ICMS_REDUZIDO').asfloat := frmmodulo.qrcfop.fieldbyname('REDUCAO_ICMS').Asfloat;

 if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
 begin
   if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
   begin
     dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat :=
     dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
     (((dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat*100)/dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat)/100);

     dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                    (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);

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


  








  dbedit7.setfocus;
end;

procedure TfrmnotafiscalE_item.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    if ecfop.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then
         bloccfopclick(frmnotafiscalE_item)
      else
      begin
        encfop.text := frmmodulo.qrcfop.fieldbyname('natureza').asstring;
        dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').asstring := frmmodulo.qrcfop.fieldbyname('classificacao_fiscal').AsString;
        dsnotafiscal_item.dataset.fieldbyname('cst').asstring := frmmodulo.qrcfop.fieldbyname('st').AsString;
        dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrcfop.fieldbyname('ICMS').Asfloat;
        dsnotafiscal_item.dataset.fieldbyname('ICMS_REDUZIDO').asfloat := frmmodulo.qrcfop.fieldbyname('REDUCAO_ICMS').Asfloat;

       if dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat <> 0 then
       begin
         if dsnotafiscal_item.DataSet.fieldbyname('ICMS_REDUZIDO').asfloat <> 0 then
         begin
           dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat :=
           dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
           (((dsnotafiscal_item.DataSet.fieldbyname('icms_reduzido').asfloat*100)/dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat)/100);

           dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').asfloat := dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').asfloat *
                                                                          (dsnotafiscal_item.DataSet.fieldbyname('icms').asfloat/100);

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




        dbedit7.setfocus;
      end;
    end
    else
      bloccfop.SetFocus;
  end;
end;

procedure TfrmnotafiscalE_item.FormShow(Sender: TObject);
begin

  if dsnotafiscal_item.state = dsedit then
  begin
    frmmodulo.qrproduto.Locate('codigo',dsnotafiscal_item.DataSet.fieldbyname('codproduto').asstring,[loCaseInsensitive]);
    panel1.enabled := false;
  end
  else
  begin
    dbedit2.Enabled := true;
    panel1.enabled := true;
  end;


  encfop.text    := '';
  qtde_anterior  := dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat;
  valor_anterior := dsnotafiscal_item.dataset.fieldbyname('total').asfloat;
  icms_anterior  := dsnotafiscal_item.dataset.fieldbyname('valor_icms').asfloat;
  ipi_anterior   := dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat;
  base_anterior  := dsnotafiscal_item.dataset.fieldbyname('base_calculo').asfloat;


end;

procedure TfrmnotafiscalE_item.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    dsnotafiscal_item.dataset.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
    if eproduto.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrproduto,eproduto.text,'codigo') then
      begin
        blocprodutoclick(frmnotafiscalE_item);
      end
      else
      begin
       dsnotafiscal_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
       dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat := 1;
       dsnotafiscal_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

       dsnotafiscal_item.dataset.fieldbyname('classificacao_fiscal').asstring := frmmodulo.qrcfop.fieldbyname('classificacao_fiscal').AsString;
       dsnotafiscal_item.dataset.fieldbyname('cst').asstring := frmmodulo.qrcfop.fieldbyname('st').AsString;
       dsnotafiscal_item.dataset.fieldbyname('icms').asfloat := frmmodulo.qrcfop.fieldbyname('ICMS').Asfloat;


       dbedit2.setfocus;
      end;
    end
    else
      blocproduto.SetFocus;
  end;
end;

procedure TfrmnotafiscalE_item.blocprodutoClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if resultado_pesquisa1 = '' then exit
  else
  begin
    frmmodulo.qrproduto.locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
  dsnotafiscal_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  dsnotafiscal_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
  dsnotafiscal_item.dataset.fieldbyname('qtde').asfloat := 1;
  dsnotafiscal_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;



  dbedit2.setfocus;
end;

procedure TfrmnotafiscalE_item.bgravarClick(Sender: TObject);
var inclui_novo : boolean;
begin

   if dsnotafiscal_item.state = dsinsert then
   begin
    frmmodulo.qrnotafiscal.FieldByName('itens').asinteger :=
    frmmodulo.qrnotafiscal.FieldByName('itens').asinteger + 1;
   end;



  if dsnotafiscal_item.State = dsinsert then inclui_novo := true else inclui_novo := false;

  dsnotafiscal_item.dataset.FieldByName('codnota').asstring := frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring;
  dsnotafiscal_item.dataset.post;

      frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat :=
      frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat +
      dsnotafiscal_item.dataset.fieldbyname('BASE_CALCULO').asfloat -  base_anterior;

      frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat :=
      frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat +
      dsnotafiscal_item.dataset.fieldbyname('VALOR_ICMS').asfloat - icms_anterior;





    frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat + dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat - ipi_anterior;




  frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat := frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                       dsnotafiscal_item.DataSet.fieldbyname('TOTAL').asfloat-valor_anterior;

  frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat := frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                   frmmodulo.qrnotafiscal.FieldByName('frete').asfloat +
                                                                   frmmodulo.qrnotafiscal.FieldByName('seguro').asfloat +
                                                                   frmmodulo.qrnotafiscal.FieldByName('outras_despesas').asfloat +
                                                                   frmmodulo.qrnotafiscal.FieldByName('valor_total_ipi').asfloat -
                                                                   frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat;



  if inclui_novo then
  begin
    with frmnotafiscalE do
    begin
      qrnotafiscal_item.Insert;
      qrnotafiscal_item.FieldByName('cfop').asstring := frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring;
      eproduto.SetFocus;
    end;
  end
  else
  begin
    close;
  end;





end;

procedure TfrmnotafiscalE_item.DBEdit3Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dsnotafiscal_item.state = dsinsert) or (dsnotafiscal_item.State = dsedit) then
  begin
    dsnotafiscal_item.DataSet.fieldbyname('total').asfloat :=
    dsnotafiscal_item.DataSet.fieldbyname('qtde').asfloat *
    dsnotafiscal_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure TfrmnotafiscalE_item.DBEdit7Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
end;

procedure TfrmnotafiscalE_item.DBEdit8Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
end;

procedure TfrmnotafiscalE_item.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmnotafiscalE_item.DBEdit6Exit(Sender: TObject);
begin
    tedit(sender).color := clwindow;
    if  dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat <> 0 then
    begin
      dsnotafiscal_item.DataSet.fieldbyname('valor_ipi').asfloat :=
      dsnotafiscal_item.DataSet.fieldbyname('total').asfloat *
      (dsnotafiscal_item.DataSet.fieldbyname('ipi').asfloat / 100)
    end;

end;

procedure TfrmnotafiscalE_item.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit12Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmnotafiscalE_item.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE_item.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmnotafiscalE_item.ecfopEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

end.

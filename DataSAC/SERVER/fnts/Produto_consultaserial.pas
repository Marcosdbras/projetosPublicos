unit Produto_consultaserial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvGlowButton, ExtCtrls, StdCtrls, Mask, RzEdit,
  TFlatPanelUnit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmProduto_consultaserial = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    Bevel2: TBevel;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Label2: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    lcodigo: TLabel;
    lproduto: TLabel;
    Label5: TLabel;
    Bevel5: TBevel;
    lun: TLabel;
    Label7: TLabel;
    Bevel6: TBevel;
    lmarca: TLabel;
    Label9: TLabel;
    Bevel7: TBevel;
    lcompra: TLabel;
    Label11: TLabel;
    Bevel8: TBevel;
    lnf: TLabel;
    Label13: TLabel;
    Bevel9: TBevel;
    lcusto: TLabel;
    Label15: TLabel;
    Bevel10: TBevel;
    lfornecedor: TLabel;
    Label17: TLabel;
    Bevel11: TBevel;
    lestoque: TLabel;
    Label19: TLabel;
    Bevel12: TBevel;
    lvenda: TLabel;
    Label21: TLabel;
    Bevel13: TBevel;
    lnumero: TLabel;
    Label23: TLabel;
    Bevel14: TBevel;
    lvalor: TLabel;
    Label25: TLabel;
    Bevel15: TBevel;
    lcliente: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    eloc: TRzEdit;
    ptampa: TFlatPanel;
    qrserial_produto: TZQuery;
    qrserial_produtoCODMARCA: TStringField;
    qrserial_produtomarca: TStringField;
    qrserial_produtoCODIGO: TStringField;
    qrserial_produtoCODPRODUTO: TStringField;
    qrserial_produtoSERIAL: TStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODCLIENTE: TStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateTimeField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TStringField;
    qrserial_produtoCODNOTA: TStringField;
    qrserial_produtoCODITEM: TStringField;
    qrserial_produtoDATACOMPRA: TDateTimeField;
    qrserial_produtoNUMERONOTA: TStringField;
    qrserial_produtoCODFORNECEDOR: TStringField;
    qrserial_produtoCODVENDA_ITEM: TStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TStringField;
    qrserial_produtoPRODUTO: TStringField;
    qrserial_produtoUNIDADE: TStringField;
    qrserial_produtoPRV: TFloatField;
    procedure Sair1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure elocKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto_consultaserial: TfrmProduto_consultaserial;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmProduto_consultaserial.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmProduto_consultaserial.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProduto_consultaserial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmProduto_consultaserial.FormShow(Sender: TObject);
begin
  ptampa.Align := alClient;
  ptampa.Visible := true;
end;

procedure TfrmProduto_consultaserial.elocKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     qrserial_produto.close;
     qrserial_produto.sql.Clear;
     qrserial_produto.sql.add('select seria.*, produt.produto, produt.codmarca, produt.unidade, produt.precovenda prv from c000022 seria, c000025 produt');
     qrserial_produto.sql.add('where seria.codproduto = produt.codigo and serial like '''+eloc.text+'%''');
     qrserial_produto.open;

     if qrserial_produto.RecordCount > 0 then
     begin
       ptampa.visible := false;
       lcodigo.caption := qrserial_produto.fieldbyname('codproduto').asstring;
       lproduto.caption := qrserial_produto.fieldbyname('produto').asstring;
       lun.caption := qrserial_produto.fieldbyname('unidade').asstring;
       lmarca.caption := qrserial_produto.fieldbyname('marca').asstring;

       lcompra.Caption := qrserial_produto.fieldbyname('datacompra').asstring;
       lnf.Caption := qrserial_produto.fieldbyname('numeronota').asstring;
       lcusto.caption := formatfloat('###,###,##0.00',qrserial_produto.fieldbyname('precocusto').asfloat);

       if qrserial_produto.FieldByName('situacao').asinteger = 1 then
       begin
         lestoque.caption := 'EM ESTOQUE';
         lestoque.Font.color := clblue;
         lvalor.caption := formatfloat('###,###,##0.00',qrserial_produto.fieldbyname('prv').asfloat);
         lvenda.Caption := '---';
         lnumero.caption := '---';
         lcliente.caption := '---';
       end
       else
       begin
         lestoque.caption := 'VENDIDO';
         lestoque.Font.color := clRED;
         lvalor.caption := formatfloat('###,###,##0.00',qrserial_produto.fieldbyname('prECOVENDA').asfloat);
         lvenda.Caption := qrserial_produto.fieldbyname('dataVENDA').asstring;
         lnumero.caption := qrserial_produto.fieldbyname('CODVENDA').asstring;
         lcliente.caption := qrserial_produto.fieldbyname('CLIENTE').asstring;
       end;

     end
     else
     begin
       application.messagebox('Serial não encontrado!','Atenção',mb_ok+mb_iconerror);
     end;


  end;
end;

end.

unit item_cancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, CurrEdit, StdCtrls, ExtCtrls, Collection,
  Buttons, TFlatPanelUnit, DB, Menus, TFlatGroupBoxUnit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmitem_cancelar = class(TForm)
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Canclear1: TMenuItem;
    Edit1: TEdit;
    Shape1: TShape;
    Label5: TLabel;
    pcampos: TFlatGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rqtde: TRxCalcEdit;
    runitario: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    lproduto: TLabel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    qritem2: TZQuery;
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Canclear1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmitem_cancelar: Tfrmitem_cancelar;

implementation

uses principal, modulo, ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano,
  ecf_yanco;

{$R *.dfm}

procedure Tfrmitem_cancelar.bgravarClick(Sender: TObject);
VAR TEXTO, RESULTADO : STRING;
begin

  if senha_item = '1' then IF NOT FRMPRINCIPAL.autentica_cancelamento('CANCELAR ITEM',4) THEN EXIT;

  IF ECF_MODELO = 'DARUMA'   THEN FRMECF_DARUMA.ecf_cancela_item(ecf_modelo,edit1.text);
  IF ECF_MODELO = 'BEMATECH' THEN FRMECF_BEMATECH.ecf_cancela_item(ecf_modelo,edit1.text);
  IF ECF_MODELO = 'SWEDA'    THEN FRMECF_SWEDA.ecf_cancela_item(ecf_modelo,edit1.text);
  IF ECF_MODELO = 'URANO'    THEN FRMECF_URANO.ecf_cancela_item(ecf_modelo,edit1.text);
  IF ECF_MODELO = 'YANCO'    THEN FRMECF_YANCO.ecf_cancela_item(ecf_modelo,edit1.text);


  if RESULTADO = 'ERRO' then
  begin
    frmprincipal.estatus.text := 'Item não encontrado!';
  end
  else
  begin
   FRMMODULO.QRPRODUTO.CLOSE;
   FRMMODULO.QRPRODUTO.SQL.CLEAR;
   FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+FRMMODULO.QRITEM.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
   FRMMODULO.QRPRODUTO.OPEN;

   IF FRMMODULO.QRPRODUTO.RECORDCOUNT > 0 THEN
   BEGIN
     TEXTO := EDIT1.TEXT; WHILE LENGTH(TEXTO) < 3 DO texto := '0'+texto;
     with frmprincipal do
     begin
       frmmodulo.qrItem.insert;
       frmmodulo.qritem.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
       frmmodulo.qritem.fieldbyname('cupom').asstring := numero_cupom;
       frmmodulo.qritem.fieldbyname('ECF_SERIAL').asstring := frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').AsString;
       frmmodulo.qritem.fieldbyname('produto').asstring := '**CANCEL** '+frmmodulo.qrproduto.fieldbyname('produto').asstring;
       frmmodulo.qritem.fieldbyname('QTDE').asFLOAT := (FRMITEM_CANCELAR.RQTDE.VALUE)*(-1);
       frmmodulo.qritem.fieldbyname('UNITARIO').asFLOAT := FRMITEM_CANCELAR.RUNITARIO.VALUE;
       frmmodulo.qritem.fieldbyname('TOTAL').asFLOAT := (FRMITEM_CANCELAR.RTOTAL.VALUE)*(-1);
       FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING := TEXTO;
       FRMMODULO.QRITEM.FIELDBYNAME('sequencia').ASinteger := sequencia;
       frmmodulo.qritem.FieldByName('aliquota').asFLOAT := frmmodulo.qrproduto.fieldbyname('aliquota').asFLOAT;
       frmmodulo.qritem.FieldByName('CST').asSTRING := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;
       sequencia := sequencia + 1;

       frmmodulo.qritem.post;
       frmmodulo.ConexaoLocal.Commit;
       frmmodulo.qritem.refresh;
       frmmodulo.qritem.last;
       rtotalgeral.value := rtotalgeral.value - frmitem_cancelar.rtotal.value;

       with frmprincipal do
       begin
         Beep;
         estatus.text := 'Item cancelado!';
         estatus2.text := '';
         i := 0;
         timer1.Enabled := true;
         icerto.Visible := false;
         iexclamacao.Visible := false;
         iinformacao.Visible := true;
         ierro.Visible := false;
       end;
     end;
   end;
  END;
  close;
end;

procedure Tfrmitem_cancelar.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmitem_cancelar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action :=cafree
end;

procedure Tfrmitem_cancelar.Edit1Enter(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure Tfrmitem_cancelar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     edit1.text := frmprincipal.zerarcodigo(edit1.text,3);
     qritem2.close;
     qritem2.sql.clear;
     qritem2.sql.add('select * from sc00001 where item like '''+edit1.text+'%''');
     qritem2.open;
     if qritem2.RecordCount > 1 then
     begin
      application.messagebox('Item já cancelado!','Atenção',mb_ok+MB_ICONERROR);
      edit1.setfocus;
      exit;
     end;



    if frmmodulo.qrItem.Locate('item',edit1.text,[loCaseInsensitive]) then
    begin

        LPRODUTO.CAPTION := frmmodulo.qritem.fieldbyname('produto').asstring;
        rqtde.value := frmmodulo.qritem.fieldbyname('qtde').asfloat;
        runitario.value := frmmodulo.qritem.fieldbyname('unitario').asfloat;
        rtotal.value := frmmodulo.qritem.fieldbyname('total').asfloat;
        bgravar.setfocus;

    end
    else
    begin
      application.messagebox('Item não encontrado!','Atenção',mb_ok+MB_ICONERROR);
      edit1.setfocus;
    end;
  end;
end;

procedure Tfrmitem_cancelar.Canclear1Click(Sender: TObject);
begin
  close;
end;

end.

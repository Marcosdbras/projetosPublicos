unit pedido_localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid,
  Buttons, Menus, wwdblook, AdvGlowButton;

type
  TfrmPedido_localizar = class(TForm)
    qrpedido: TZQuery;
    sCODIGO: TStringField;
    sCODCLIENTE: TStringField;
    sqrpedidocliente: TStringField;
    wwDBGrid1: TwwDBGrid;
    dspedido: TDataSource;
    fTOTAL: TFloatField;
    dtmfldDATA: TDateTimeField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    LocalizarporNmero1: TMenuItem;
    LocalizarporCliente1: TMenuItem;
    Panel1: TPanel;
    Bevel1: TBevel;
    bfechar: TAdvGlowButton;
    Panel2: TPanel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    combocliente: TwwDBLookupCombo;
    BITBTN1: TAdvGlowButton;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure LocalizarporNmero1Click(Sender: TObject);
    procedure LocalizarporCliente1Click(Sender: TObject);
    procedure comboclienteEnter(Sender: TObject);
    procedure comboclienteExit(Sender: TObject);
    procedure comboclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido_localizar: TfrmPedido_localizar;

implementation

uses modulo, pedido, principal, Math;

{$R *.dfm}

procedure TfrmPedido_localizar.Edit1Enter(Sender: TObject);
begin
  edit1.Color := clyellow;
end;

procedure TfrmPedido_localizar.Edit1Exit(Sender: TObject);
begin
  edit1.Color := clwindow;
end;

procedure TfrmPedido_localizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    BitBtn1Click(frmPedido_localizar);
  end;
end;

procedure TfrmPedido_localizar.BitBtn1Click(Sender: TObject);
begin
   if radiobutton1.checked then
   begin
     edit1.text := frmprincipal.zerarcodigo(edit1.text,6);
     qrpedido.close;
     qrpedido.sql.clear;
     qrpedido.sql.add('select * from c000056PEDIDO where upper(codigo) = '''+ansiuppercase(edit1.Text)+''' order by codigo');
     qrpedido.open;

   end
   else
   begin
     qrpedido.close;
     qrpedido.sql.clear;
     qrpedido.sql.add('select * from c000056PEDIDO where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' order by codigo');
     qrpedido.open;
   end;

   if qrpedido.RecordCount > 0 then
      wwdbgrid1.setfocus
   else
   begin
     showmessage('Não foi encontrado nenhum registro!');
     if radiobutton1.Checked then
     edit1.SetFocus else combocliente.setfocus;
   end;
end;

procedure TfrmPedido_localizar.Fechar1Click(Sender: TObject);
begin
    codigo_pedido := '';
  close;
end;

procedure TfrmPedido_localizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPedido_localizar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin

      codigo_pedido := qrpedido.fieldbyname('codigo').asstring;
      close;
  end;
end;

procedure TfrmPedido_localizar.wwDBGrid1DblClick(Sender: TObject);
begin
      codigo_pedido := qrpedido.fieldbyname('codigo').asstring;
      close;
end;

procedure TfrmPedido_localizar.FormShow(Sender: TObject);
begin
  qrpedido.close;
  qrpedido.sql.clear;
  qrpedido.sql.add('select * from c000056PEDIDO');
  qrpedido.open;



  edit1.setfocus;
end;

procedure TfrmPedido_localizar.RadioButton1Click(Sender: TObject);
begin
  edit1.Visible := true;
  combocliente.visible := false;
  edit1.SetFocus;
  groupbox2.caption := 'Informe o número do orçamento';
end;

procedure TfrmPedido_localizar.RadioButton2Click(Sender: TObject);
begin
  edit1.Visible := false;
  combocliente.visible := true;
  combocliente.setfocus;
  groupbox2.caption := 'Informe o nome do cliente';
end;

procedure TfrmPedido_localizar.LocalizarporNmero1Click(Sender: TObject);
begin
  radiobutton1.Checked := true;
end;

procedure TfrmPedido_localizar.LocalizarporCliente1Click(
  Sender: TObject);
begin
  radiobutton2.Checked := true;
end;

procedure TfrmPedido_localizar.comboclienteEnter(Sender: TObject);
begin
  combocliente.color := clyellow;
end;

procedure TfrmPedido_localizar.comboclienteExit(Sender: TObject);
begin
  combocliente.color := clwindow;
end;

procedure TfrmPedido_localizar.comboclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then BitBtn1Click(frmPedido_localizar);
end;

procedure TfrmPedido_localizar.bfecharClick(Sender: TObject);
begin
  codigo_pedido := '';
  close;
end;

end.

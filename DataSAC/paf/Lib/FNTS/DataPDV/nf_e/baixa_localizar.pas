unit baixa_localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid,
  Buttons, Menus, wwdblook, AdvGlowButton;

type
  Tfrmbaixa_localizar = class(TForm)
    qrorcamento: TZQuery;
    qrorcamentoCODIGO: TStringField;
    qrorcamentoCODCLIENTE: TStringField;
    qrorcamentocliente: TStringField;
    wwDBGrid1: TwwDBGrid;
    dsorcamento: TDataSource;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoDATA: TDateTimeField;
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
  frmbaixa_localizar: Tfrmbaixa_localizar;

implementation

uses modulo_nfe, orcamento, principal, Math;

{$R *.dfm}

procedure Tfrmbaixa_localizar.Edit1Enter(Sender: TObject);
begin
  edit1.Color := $00A0FAF8;
end;

procedure Tfrmbaixa_localizar.Edit1Exit(Sender: TObject);
begin
  edit1.Color := clwindow;
end;

procedure Tfrmbaixa_localizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    BitBtn1Click(frmbaixa_localizar);
  end;
end;

procedure Tfrmbaixa_localizar.BitBtn1Click(Sender: TObject);
begin
   if radiobutton1.checked then
   begin
     edit1.text := frmprincipal.zerarcodigo(edit1.text,6);
     qrorcamento.close;
     qrorcamento.sql.clear;
     qrorcamento.sql.add('select * from c000096 where upper(codigo) = '''+ansiuppercase(edit1.Text)+''' order by codigo');
     qrorcamento.open;

   end
   else
   begin
     qrorcamento.close;
     qrorcamento.sql.clear;
     qrorcamento.sql.add('select * from c000096 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' order by codigo');
     qrorcamento.open;
   end;

   if qrorcamento.RecordCount > 0 then
      wwdbgrid1.setfocus
   else
   begin
     showmessage('Não foi encontrado nenhum registro!');
     if radiobutton1.Checked then
     edit1.SetFocus else combocliente.setfocus;
   end;
end;

procedure Tfrmbaixa_localizar.Fechar1Click(Sender: TObject);
begin
    codigo_orcamento := '';
  close;
end;

procedure Tfrmbaixa_localizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmbaixa_localizar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin

      codigo_orcamento := qrorcamento.fieldbyname('codigo').asstring;
      close;
  end;
end;

procedure Tfrmbaixa_localizar.wwDBGrid1DblClick(Sender: TObject);
begin
      codigo_orcamento := qrorcamento.fieldbyname('codigo').asstring;
      close;
end;

procedure Tfrmbaixa_localizar.FormShow(Sender: TObject);
begin
  qrorcamento.open;
  edit1.setfocus;

end;

procedure Tfrmbaixa_localizar.RadioButton1Click(Sender: TObject);
begin
  edit1.Visible := true;
  combocliente.visible := false;
  edit1.SetFocus;
  groupbox2.caption := 'Informe o número do orçamento';
end;

procedure Tfrmbaixa_localizar.RadioButton2Click(Sender: TObject);
begin
  edit1.Visible := false;
  combocliente.visible := true;
  combocliente.setfocus;
  groupbox2.caption := 'Informe o nome do cliente';
end;

procedure Tfrmbaixa_localizar.LocalizarporNmero1Click(Sender: TObject);
begin
  radiobutton1.Checked := true;
end;

procedure Tfrmbaixa_localizar.LocalizarporCliente1Click(
  Sender: TObject);
begin
  radiobutton2.Checked := true;
end;

procedure Tfrmbaixa_localizar.comboclienteEnter(Sender: TObject);
begin
  combocliente.color := $00A0FAF8;
end;

procedure Tfrmbaixa_localizar.comboclienteExit(Sender: TObject);
begin
  combocliente.color := clwindow;
end;

procedure Tfrmbaixa_localizar.comboclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then BitBtn1Click(frmbaixa_localizar); 
end;

procedure Tfrmbaixa_localizar.bfecharClick(Sender: TObject);
begin
  codigo_orcamento := '';
  close;
end;

end.

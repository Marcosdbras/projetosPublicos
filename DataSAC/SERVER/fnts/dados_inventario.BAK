unit dados_inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Menus, Buttons, ExtCtrls,
  AdvGlowButton;

type
  Tfrmdados_inventario = class(TForm)
    Label1: TLabel;
    enumero: TEdit;
    Label2: TLabel;
    econtador: TEdit;
    Label3: TLabel;
    ecrc: TEdit;
    Label4: TLabel;
    eregistro: TEdit;
    Label5: TLabel;
    eregdata: TDateEdit;
    Label6: TLabel;
    ejunta: TEdit;
    Label7: TLabel;
    edata: TDateEdit;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel2: TPanel;
    bimprimir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    bitbtn1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enumeroKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroExit(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroEnter(Sender: TObject);
    procedure econtadorExit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdados_inventario: Tfrmdados_inventario;

implementation

uses modulo, principal, inventario;

{$R *.dfm}

procedure Tfrmdados_inventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmdados_inventario.FormShow(Sender: TObject);
var txt : textfile;
entrada : string;
begin

  cont_inventario := false;

  if FileExists('\DATASAC\server\bd\eDI.inf') then
  begin
    assignfile(txt,'\DATASAC\server\bd\eDI.inf');
    reset(txt);
    while not eof(txt) do
    begin
      readln(txt,entrada);
      if copy(entrada,1,1) = '1' then enumero.Text   := copy(entrada,2,99);
      if copy(entrada,1,1) = '2' then econtador.Text := copy(entrada,2,99);
      if copy(entrada,1,1) = '3' then ecrc.Text      := copy(entrada,2,99);
      if copy(entrada,1,1) = '4' then eregistro.Text := copy(entrada,2,99);
      if copy(entrada,1,1) = '5' then eregdata.Text  := copy(entrada,2,99);
      if copy(entrada,1,1) = '6' then ejunta.Text    := copy(entrada,2,99);
      if copy(entrada,1,1) = '7' then edata.Text     := copy(entrada,2,99);
    end;
    closefile(txt);
  end;

  enumero.setfocus;




end;

procedure Tfrmdados_inventario.enumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmdados_inventario.enumeroExit(Sender: TObject);
begin
  enumero.text :=  frmPrincipal.zerarcodigo(enumero.text,6);
  tedit(sender).color := clwindow;
end;

procedure Tfrmdados_inventario.bimprimirClick(Sender: TObject);
var txt : textfile;
entrada : string;
begin
    assignfile(txt,'\DATASAC\server\bd\eDI.inf');
    Rewrite(txt);
    writeln(txt,'1'+enumero.Text);
    writeln(txt,'2'+econtador.Text);
    writeln(txt,'3'+ecrc.Text);
    writeln(txt,'4'+eregistro.Text);
    writeln(txt,'5'+eregdata.Text);
    writeln(txt,'6'+ejunta.Text);
    writeln(txt,'7'+edata.Text);
    closefile(txt);

    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := enumero.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := eregistro.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := eregdata.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := econtador.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := ecrc.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := edata.text;
    frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring := ejunta.text;
    frmmodulo.qrrelatorio.fieldbyname('linha9').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',EDATA.Date);
    frmmodulo.qrrelatorio.post;

    cont_inventario := true;

  close;



end;

procedure Tfrmdados_inventario.bcancelarClick(Sender: TObject);
begin
  cont_inventario := false;
  close;
end;

procedure Tfrmdados_inventario.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmdados_inventario);
end;

procedure Tfrmdados_inventario.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmdados_inventario);
end;

procedure Tfrmdados_inventario.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;
end;

procedure Tfrmdados_inventario.enumeroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmdados_inventario.econtadorExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmdados_inventario.bitbtn1Click(Sender: TObject);
begin

    frminventario.fXproduto.LoadFromFile('\DATASAC\server\rel\f000126.fr3');
    frminventario.fxproduto.designreport;

end;

end.

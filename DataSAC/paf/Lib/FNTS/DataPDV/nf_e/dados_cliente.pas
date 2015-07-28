unit dados_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, StdCtrls, Mask, DBCtrls, Buttons, Menus, ExtCtrls;

type
  Tfrmdados_cliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    bcancelar: TBitBtn;
    bimprimir: TBitBtn;
    ecodigo: TDBEdit;
    enome: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dscliente: TwwDataSource;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdados_cliente: Tfrmdados_cliente;

implementation

uses prevenda, prevenda_impressao;

{$R *.dfm}

procedure Tfrmdados_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;

end;

procedure Tfrmdados_cliente.FormShow(Sender: TObject);
begin
  enome.SetFocus;
end;

procedure Tfrmdados_cliente.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmdados_cliente.bimprimirClick(Sender: TObject);
begin
  frmprevenda_impressao := tfrmprevenda_impressao.create(self);
  frmprevenda_impressao.showmodal;

end;

procedure Tfrmdados_cliente.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmdados_cliente);
end;

procedure Tfrmdados_cliente.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmdados_cliente);
end;

procedure Tfrmdados_cliente.ecodigoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmdados_cliente.ecodigoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmdados_cliente.ecodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

end.

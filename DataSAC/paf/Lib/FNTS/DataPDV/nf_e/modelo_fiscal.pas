unit modelo_fiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Collection, Grids, Wwdbigrd,
  Wwdbgrid, Menus, AdvGlowButton;

type
  Tfrmmodelo_fiscal = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsfiscal_modelo: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Panel2: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmodelo_fiscal: Tfrmmodelo_fiscal;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmmodelo_fiscal.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmmodelo_fiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmmodelo_fiscal.FormShow(Sender: TObject);
begin
  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.SQL.clear;
  frmmodulo.qrfiscal_modelo.SQL.add('select * from c000082 order by codigo');
  frmmodulo.qrfiscal_modelo.open;
end;

procedure Tfrmmodelo_fiscal.BitBtn1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Modelo',4) then
  begin
    frmmodulo.qrfiscal_modelo.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

end.

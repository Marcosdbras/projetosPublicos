unit cst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Collection, Grids, Wwdbigrd,
  Wwdbgrid, Menus, AdvGlowButton;

type
  Tfrmcst = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsfiscal_cst: TDataSource;
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
  frmcst: Tfrmcst;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmcst.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcst.FormShow(Sender: TObject);
begin
  frmmodulo.qrfiscal_cst.close;
  frmmodulo.qrfiscal_cst.SQL.clear;
  frmmodulo.qrfiscal_cst.SQL.add('select * from c000083 order by codigo');
  frmmodulo.qrfiscal_cst.open;
end;

procedure Tfrmcst.BitBtn1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir CST',4) then
  begin
    frmmodulo.qrfiscal_cst.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

end.

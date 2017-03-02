unit ecfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Collection, Grids, Wwdbigrd,
  Wwdbgrid, Menus, AdvGlowButton;

type
  Tfrmecf = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsfiscal_ecf: TDataSource;
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
  frmecf: Tfrmecf;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmecf.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmecf.FormShow(Sender: TObject);
begin
  frmmodulo.qrfiscal_ECF.close;
  frmmodulo.qrfiscal_ECF.SQL.clear;
  frmmodulo.qrfiscal_ECF.SQL.add('select * from c000081 order by codigo');
  frmmodulo.qrfiscal_ECF.open;
end;

procedure Tfrmecf.BitBtn1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir ECF',4) then
  begin
    frmmodulo.qrfiscal_ECF.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

end.

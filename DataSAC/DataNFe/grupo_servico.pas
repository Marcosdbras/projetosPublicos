unit grupo_servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmgrupo_servico = class(TForm)
    qrgrupo_servico: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsgrupo_servico: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    procedure bfecharClick(Sender: TObject);
    procedure qrgrupo_servicoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrgrupo_servicoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupo_servico: Tfrmgrupo_servico;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmgrupo_servico.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoBeforePost(DataSet: TDataSet);
begin
  qrgrupo_servico.fieldbyname('grupo').asstring:=
  ansiuppercase(qrgrupo_servico.fieldbyname('grupo').asstring);

  if qrgrupo_servico.state = dsinsert then qrgrupo_servico.fieldbyname('codigo').asstring := frmPrincipal.codifica('000012');
end;

procedure Tfrmgrupo_servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmgrupo_servico.FormShow(Sender: TObject);
begin
  qrgrupo_servico.close;
  qrgrupo_servico.sql.clear;
  qrgrupo_servico.sql.add('select * from c000012');
  qrgrupo_servico.Open;
end;

procedure Tfrmgrupo_servico.qrgrupo_servicoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmgrupo_servico.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão deste registro?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrgrupo_servico.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

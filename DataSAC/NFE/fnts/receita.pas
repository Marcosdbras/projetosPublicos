unit receita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmreceita = class(TForm)
    qrreceita: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsreceita: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    procedure bfecharClick(Sender: TObject);
    procedure qrreceitaBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrreceitaAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreceita: Tfrmreceita;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmreceita.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmreceita.qrreceitaBeforePost(DataSet: TDataSet);
begin
  if qrreceita.state = dsinsert then qrreceita.fieldbyname('codigo').asstring := frmPrincipal.codifica('000024');
end;

procedure Tfrmreceita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmreceita.FormShow(Sender: TObject);
begin
  qrreceita.close;
  qrreceita.sql.clear;
  qrreceita.sql.add('select * from c000024');
  qrreceita.Open;
end;

procedure Tfrmreceita.qrreceitaAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmreceita.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta receita?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrreceita.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

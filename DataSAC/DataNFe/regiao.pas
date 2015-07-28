unit regiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmregiao = class(TForm)
    qrregiao: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsregiao: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    procedure bfecharClick(Sender: TObject);
    procedure qrregiaoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrregiaoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmregiao: Tfrmregiao;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmregiao.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmregiao.qrregiaoBeforePost(DataSet: TDataSet);
begin
  qrregiao.fieldbyname('regiao').asstring := ansiuppercase(qrregiao.fieldbyname('regiao').asstring);

  if qrregiao.state = dsinsert then qrregiao.fieldbyname('codigo').asstring := frmPrincipal.codifica('000005');
end;

procedure Tfrmregiao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmregiao.FormShow(Sender: TObject);
begin
  qrregiao.close;
  qrregiao.sql.clear;
  qrregiao.sql.add('select * from c000005');
  qrregiao.Open;
end;

procedure Tfrmregiao.qrregiaoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmregiao.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta região?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrregiao.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

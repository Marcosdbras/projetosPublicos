unit cor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmcor = class(TForm)
    qrcor: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dscor: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    qrcorCODIGO: TStringField;
    qrcorCOR: TStringField;
    procedure bfecharClick(Sender: TObject);
    procedure qrcorBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcorAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcor: Tfrmcor;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmcor.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcor.qrcorBeforePost(DataSet: TDataSet);
begin
  if qrcor.state = dsinsert then qrcor.fieldbyname('codigo').asstring := frmPrincipal.codifica('000129');
  qrcor.FieldByName('cor').asstring := ansiuppercase(qrcor.fieldbyname('cor').asstring);
end;

procedure Tfrmcor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcor.FormShow(Sender: TObject);
begin
  qrcor.close;
  qrcor.sql.clear;
  qrcor.sql.add('select * from c000129');
  qrcor.Open;
end;

procedure Tfrmcor.qrcorAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmcor.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta cor?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrcor.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

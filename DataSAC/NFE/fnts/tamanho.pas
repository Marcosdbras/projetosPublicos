unit tamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmtamanho = class(TForm)
    qrtamanho: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dstamanho: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    qrtamanhoCODIGO: TStringField;
    qrtamanhoTAMANHO: TStringField;
    procedure bfecharClick(Sender: TObject);
    procedure qrtamanhoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrtamanhoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtamanho: Tfrmtamanho;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmtamanho.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtamanho.qrtamanhoBeforePost(DataSet: TDataSet);
begin
  if qrtamanho.state = dsinsert then qrtamanho.fieldbyname('codigo').asstring := frmPrincipal.codifica('000128');
  qrtamanho.FieldByName('tamanho').asstring := ansiuppercase(qrtamanho.fieldbyname('tamanho').asstring);
end;

procedure Tfrmtamanho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtamanho.FormShow(Sender: TObject);
begin
  qrtamanho.close;
  qrtamanho.sql.clear;
  qrtamanho.sql.add('select * from c000128');
  qrtamanho.Open;
end;

procedure Tfrmtamanho.qrtamanhoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmtamanho.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão deste tamanho?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrtamanho.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

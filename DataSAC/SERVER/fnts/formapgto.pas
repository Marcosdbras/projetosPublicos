unit formapgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmFormaPgto = class(TForm)
    qrformapgto: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsformapgto: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    procedure bfecharClick(Sender: TObject);
    procedure qrformapgtoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrformapgtoAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPgto: TfrmFormaPgto;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmFormaPgto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFormaPgto.qrformapgtoBeforePost(DataSet: TDataSet);
begin
  if qrformapgto.state = dsinsert then qrformapgto.fieldbyname('codigo').asstring := frmPrincipal.codifica('000014');
  qrformapgto.FieldByName('formapgto').asstring :=
  ansiuppercase(qrformapgto.fieldbyname('formapgto').asstring);

end;

procedure TfrmFormaPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFormaPgto.FormShow(Sender: TObject);
begin
  qrformapgto.close;
  qrformapgto.sql.clear;
  qrformapgto.sql.add('select * from c000014');
  qrformapgto.Open;
end;

procedure TfrmFormaPgto.qrformapgtoAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure TfrmFormaPgto.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta forma de pagamento?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrformapgto.Delete;
    frmmodulo.conexao.commit;
  end;
end;

end.

unit setor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, Wwdbigrd, Wwdbgrid;

type
  TfrmSetor = class(TForm)
    Pop1: TPopupMenu;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    dssetor: TDataSource;
    qrsetor: TZQuery;
    Panel2: TPanel;
    bexcluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure qrsetorBeforePost(DataSet: TDataSet);
    procedure qrsetorAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetor: TfrmSetor;
  comando : string;

implementation

uses modulo, principal, principal2;

{$R *.dfm}


procedure TfrmSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSetor.FormShow(Sender: TObject);
begin
  qrsetor.close;
  qrsetor.SQL.clear;
  qrsetor.SQL.add('select * from c000052 order by codigo');
  qrsetor.open;
  qrsetor.first;
end;

procedure TfrmSetor.bexcluirClick(Sender: TObject);
begin
  if frmprincipal2.autentica('Excluir setor',4) then
  begin
    qrsetor.delete;
    frmmodulo.conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmSetor.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSetor.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure TfrmSetor.qrsetorBeforePost(DataSet: TDataSet);
begin

  if trim(qrsetor.fieldbyname('setor').asstring) = '' then
    begin
      Application.messagebox('Setor Não Pode Ficar em Branco, Verifique!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      qrsetor.cancel;
      qrsetor.Prior;
      exit;
    end;

  qrsetor.fieldbyname('setor').asstring:=
  ansiuppercase(qrsetor.fieldbyname('setor').asstring);

  if qrsetor.State = dsinsert then qrsetor.fieldbyname('codigo').asstring := frmPrincipal2.codifica('000052')

end;

procedure TfrmSetor.qrsetorAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

end.

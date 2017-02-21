unit conexao_ibpt;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  Tfrmconexao_ibpt = class(TDataModule)
    banco: TZConnection;
    qrProdutoIBPT: TZQuery;
    qrFilial: TZQuery;
    qrIBPT: TZQuery;
    sqlconsultaDetalhe: TZQuery;
    sqlexec: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconexao_ibpt: Tfrmconexao_ibpt;

implementation

{$R *.dfm}

end.

unit aliquota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, Grids, DBGrids, Menus, StdCtrls, Buttons;

type
  TfrmAliquota = class(TForm)
    DBGrid1: TDBGrid;
    dsaliquota: TwwDataSource;
    bcancelar: TBitBtn;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAliquota: TfrmAliquota;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmAliquota.FormShow(Sender: TObject);
begin
  dsaliquota.dataset.open;
  frmmodulo.qrEmitente.Open;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'AC' then dbgrid1.Columns[2].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'AL' then dbgrid1.Columns[3].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'AM' then dbgrid1.Columns[4].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'AP' then dbgrid1.Columns[5].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'BA' then dbgrid1.Columns[6].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'CE' then dbgrid1.Columns[7].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'DF' then dbgrid1.Columns[8].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'ES' then dbgrid1.Columns[9].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'GO' then dbgrid1.Columns[10].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'MA' then dbgrid1.Columns[11].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'MG' then dbgrid1.Columns[12].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'MS' then dbgrid1.Columns[13].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'MT' then dbgrid1.Columns[14].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'PA' then dbgrid1.Columns[15].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'PB' then dbgrid1.Columns[16].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'PE' then dbgrid1.Columns[17].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'PI' then dbgrid1.Columns[18].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'PR' then dbgrid1.Columns[19].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'RJ' then dbgrid1.Columns[20].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'RN' then dbgrid1.Columns[21].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'RO' then dbgrid1.Columns[22].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'RR' then dbgrid1.Columns[23].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'RS' then dbgrid1.Columns[24].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'SC' then dbgrid1.Columns[25].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'SE' then dbgrid1.Columns[26].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'SP' then dbgrid1.Columns[27].Color := $0081E4FE;
  if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'TO' then dbgrid1.Columns[28].Color := $0081E4FE;




  dbgrid1.setfocus;
end;

procedure TfrmAliquota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FRMMODULO.Conexao.Commit;
  action := cafree;
end;

procedure TfrmAliquota.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAliquota.BitBtn1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir aliquota',4) then
  begin
    frmmodulo.qraliquota.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

end.

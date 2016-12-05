unit UPesqMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, DB;

type
  TFrmPesqMat = class(TForm)
    DBGrid1: TDBGrid;
    BtnInserir: TBitBtn;
    BtnMenu: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBENome: TDBEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBEdit1: TDBEdit;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBENomeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBENomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqMat: TFrmPesqMat;

implementation

uses UDados, UCadMateria, UFiltroMaterias, uGeral;

{$R *.dfm}

procedure TFrmPesqMat.BtnInserirClick(Sender: TObject);
begin
  if bMateriasI then
    FrmDados.CDS_CadMateria.Append
  else
    showmessage('Este usuário não tem privilégios para inserir uma matéria!');
end;

procedure TFrmPesqMat.BtnEditarClick(Sender: TObject);
begin
  FrmDados.CDS_CadMateria.Edit;
  FrmCadMateria:=TFrmCadMateria.Create(self);
  FrmCadMateria.ShowModal;
  FrmCadMateria.Free;
end;

procedure TFrmPesqMat.BtnExcluirClick(Sender: TObject);
begin
  if not bMateriasE then
    showmessage('Este usuário não tem privilégios para excluir uma matéria!')
  else
  begin
    if MessageDlg('Deseja realmente excluir esta matéria dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_CadMateria.Delete;
  end;
  //endi
end;

procedure TFrmPesqMat.BtnMenuClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqMat.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroMaterias:=TFrmFiltroMaterias.Create(self);
  FrmFiltroMaterias.ShowModal;
  FrmFiltroMaterias.Free;
end;

procedure TFrmPesqMat.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_CadMateria.Active:=False;
    DBX_CadMateria.SQL.Clear;
    DBX_CadMateria.SQL.Add('SELECT * FROM CADMATERIAS');
    DBX_CadMateria.Active:=True;
    CDS_CadMateria.Refresh;
  end;
end;

procedure TFrmPesqMat.BtnConfirmarClick(Sender: TObject);
begin
  if FrmDados.CDS_CadMateria.State in [dsinsert,dsedit] then
    FrmDados.CDS_CadMateria.Post;
end;

procedure TFrmPesqMat.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_CadMateria.Cancel;
end;

procedure TFrmPesqMat.DBENomeChange(Sender: TObject);
begin
  if not (FrmDados.CDS_CadMateria.State in [dsinsert,dsedit]) then
  begin
    //if FrmDados.CDS_CadMateria.RecordCount = 0 then
    //  FrmDados.CDS_CadMateria.Append
    //else
    //  FrmDados.CDS_CadMateria.Edit;
  end;
  //endi
end;

procedure TFrmPesqMat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmPesqMat := nil;
end;

procedure TFrmPesqMat.DBENomeClick(Sender: TObject);
begin
  //if not bMateriasA then
  //  FrmDados.CDS_CadMateria.Edit
  //else
  //  showmessage('Este usuário não tem privilégios para editar esta matéria!');
end;

end.

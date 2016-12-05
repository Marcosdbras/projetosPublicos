unit UPesqCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, DB;

type
  TFrmPesqCurso = class(TForm)
    Panel1: TPanel;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqCurso: TFrmPesqCurso;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmPesqCurso.BtnInserirClick(Sender: TObject);
begin
  FrmDados.CDS_Curso.Append;
end;

procedure TFrmPesqCurso.BtnExcluirClick(Sender: TObject);
begin
  FrmDados.CDS_Curso.Delete;
end;

procedure TFrmPesqCurso.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_Curso.Post;
end;

procedure TFrmPesqCurso.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Curso.Cancel;
end;

procedure TFrmPesqCurso.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqCurso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqCurso := nil;
end;

procedure TFrmPesqCurso.DBEdit1Enter(Sender: TObject);
begin
  if not (FrmDados.CDS_Curso.State in [dsedit,dsinsert]) then
  begin
    FrmDados.CDS_Curso.Edit;
  end;
  //endi
end;

procedure TFrmPesqCurso.DBEdit1Exit(Sender: TObject);
begin
  if (DBEdit1.Text <> 'Ensino Médio') and (DBEdit1.Text <> 'Ensino Fundamental') and (DBEdit1.Text <> 'Ensino Infantil') then
  begin
    showmessage('Por favor coloque um destes valores no nome: Ensino Médio, Ensino Fundamental, Ensino Infantil.');
    DBEdit1.SetFocus;
  end;
end;

end.

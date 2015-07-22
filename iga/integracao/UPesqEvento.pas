unit UPesqEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB;

type
  TFrmPesqEvento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BtnFiltrar: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqEvento: TFrmPesqEvento;

implementation

uses UDados, UFiltroEvento, uGeral;

{$R *.dfm}

procedure TFrmPesqEvento.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroEvento := TFrmFiltroEvento.Create(self);
  FrmFiltroEvento.ShowModal;
  FrmFiltroEvento.Free;
end;

procedure TFrmPesqEvento.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_Evento.Active := False;
    DBX_Evento.Active := False;
    DBX_Evento.SQL.Clear;
    DBX_Evento.SQL.Add('SELECT * FROM EVENTOS');
    DBX_Evento.Active := True;
    CDS_Evento.Active := True;
  end;
  //endth
end;

procedure TFrmPesqEvento.BtnInserirClick(Sender: TObject);
begin
  if not bEventoI then
  begin
    showmessage('Este usuário não possui privilégios para inserir um evento!');
    Exit;
  end;
  //endi

  FrmDados.CDS_Evento.Append;
end;

procedure TFrmPesqEvento.BtnExcluirClick(Sender: TObject);
begin
  if not bEventoE then
  begin
    showmessage('Este usuário não possui privilégios para excluir um evento!');
    Exit;
  end;
  //endi

  if MessageDlg('Deseja realmente excluir este evento?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_Evento.Delete;
  //endi
end;

procedure TFrmPesqEvento.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_Evento.State in [dsedit,dsinsert]) then
    FrmDados.CDS_Evento.Post;
  //endi
end;

procedure TFrmPesqEvento.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Evento.Cancel;
end;

procedure TFrmPesqEvento.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqEvento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqEvento := nil;
end;

procedure TFrmPesqEvento.DBEdit1Enter(Sender: TObject);
begin
  if not (FrmDados.CDS_Evento.State in [dsedit,dsinsert]) then
  begin
    if FrmDados.CDS_Evento.RecordCount = 0 then
    begin
      FrmDados.CDS_Evento.Append;
    end
    else
    begin
      FrmDados.CDS_Evento.Edit;
    end;
    //endi
  end;
  //endi
end;

end.

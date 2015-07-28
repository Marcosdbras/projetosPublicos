unit UPesqHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, DB, Mask,
  IdBaseComponent, IdComponent, IdIPWatch, Menus;

type
  TFrmPesqHistorico = class(TForm)
    DBGrid1: TDBGrid;
    BtnInserir: TBitBtn;
    BtnMenu: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFiltro: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    Panel1: TPanel;
    PnlSerie: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    PnlMaterias: TPanel;
    DBGrid3: TDBGrid;
    BtnConfirmarNota: TBitBtn;
    BtnExcluirNota: TBitBtn;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    BtnPesqAlu: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    BtnCancelarNota: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnFiltroClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
    procedure BtnExcluirProvaClick(Sender: TObject);
    procedure BtnExcluirTrabalhoClick(Sender: TObject);
    procedure BtnExcluirFaltaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirNotaClick(Sender: TObject);
    procedure CBXBimInicioClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Boletimdoaluno1Click(Sender: TObject);
    procedure Notasdaturmanamateriaselecionada1Click(Sender: TObject);
    procedure BtnPesqAluClick(Sender: TObject);
    procedure BtnConfirmarNotaClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure BtnCancelarNotaClick(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FrmPesqHistorico: TFrmPesqHistorico;

implementation

uses UDados, UCadSerie, URelAluTurma, USerieMat, UFiltroSerie, URelNotas,
  uGeral, URelAlunosAbaixoMedia, UMenuPrincipal, UProcAluno, UPesqSerie;

{$R *.dfm}

procedure TFrmPesqHistorico.BtnInserirClick(Sender: TObject);
begin
  FrmDados.CDS_Historico.Append;
  if not bHistoricoI then
  begin
    showmessage('Este usuário não tem privilégios para inserir uma nova série!');
    Exit;
  end;
  //endi
end;

procedure TFrmPesqHistorico.BtnExcluirClick(Sender: TObject);
begin
  if not bHistoricoE then
  begin
    showmessage('Este usuário não tem privilégios para exluir um histórico!');
    Exit;
  end;
  //endi

  if FrmDados.CDS_Historico.RecordCount <> 0 then
  begin
    if MessageDlg('Deseja realmente excluir este histórico?',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_Historico.Delete;
    //endi
  end;
  //endi
end;

procedure TFrmPesqHistorico.BtnMenuClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqHistorico.BtnFiltroClick(Sender: TObject);
begin
{  FrmFiltroSerie := TFrmFiltroSerie.Create(self);
  FrmFiltroSerie.ShowModal;
  FrmFiltroSerie.Free;}  
end;

procedure TFrmPesqHistorico.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Historico.Active:=False;
    DBX_Historico.SQL.Clear;
    DBX_Historico.SQL.Add('SELECT * FROM Historico ORDER BY CODIGO');
    DBX_Historico.Active:=True;
    CDS_Historico.Refresh;
  end;
end;

procedure TFrmPesqHistorico.BtnExcluirProvaClick(Sender: TObject);
begin
  if(FrmDados.CDS_Avaliacoes.RecordCount <> 0) then
  begin
    if not bNotasE then
      showmessage('Este usuário não tem privilégios para excluir uma notas e faltas!')
    else
    begin
      if MessageDlg('Deseja realmente excluir esta nota dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
        FrmDados.CDS_Avaliacoes.Delete;
    end;
    //endi
    FrmDados.CDS_Avaliacoes.Refresh;
  end;
end;

procedure TFrmPesqHistorico.BtnExcluirTrabalhoClick(Sender: TObject);
begin
  if(FrmDados.CDS_Trabalhos.RecordCount <> 0)then
  begin
    if not bNotasE then
      showmessage('Este usuário não tem privilégios para excluir uma notas e faltas!')
    else
    begin
      if MessageDlg('Deseja realmente excluir esta nota dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
        FrmDados.CDS_Trabalhos.Delete;
    end;
    //endi
    FrmDados.CDS_Trabalhos.Refresh;
  end;
end;

procedure TFrmPesqHistorico.BtnExcluirFaltaClick(Sender: TObject);
begin
  if(FrmDados.CDS_Assiduidade.RecordCount <> 0)then
  begin
    if not bNotasE then
      showmessage('Este usuário não tem privilégios para excluir uma notas e faltas!')
    else
    begin
      if MessageDlg('Deseja realmente excluir esta(s) falta(s) dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
        FrmDados.CDS_Assiduidade.Delete;
    end;
    //endi
    FrmDados.CDS_Assiduidade.Refresh;
  end;
end;

procedure TFrmPesqHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqHistorico := nil;

end;

procedure TFrmPesqHistorico.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_Historico.State in [dsinsert,dsedit])then
    FrmDados.CDS_Historico.Post;
  //endi
end;

procedure TFrmPesqHistorico.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Historico.Cancel;
end;

procedure TFrmPesqHistorico.BtnExcluirNotaClick(Sender: TObject);
begin
  if not bHistoricoE then
  begin
    showmessage('Você não possui privilégios para excluir esta nota!');
    Exit;
  end;
  //endi

  if FrmDados.CDS_NotasAnteriores.RecordCount <> 0 then
  begin
    if MessageDlg('Deseja realmente excluir esta nota do registro do histórico?',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_NotasAnteriores.Delete;
    //endi
  end;
  //endi
end;

procedure TFrmPesqHistorico.CBXBimInicioClick(Sender: TObject);
begin
  atualizaBim;
end;

procedure TFrmPesqHistorico.BitBtn3Click(Sender: TObject);
begin
  FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
  FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
  FrmRelAlunosAbaixoMedia.Free;
end;

procedure TFrmPesqHistorico.Boletimdoaluno1Click(Sender: TObject);
begin
with FrmDados do
begin
  codSerie:=CDS_SerieMat.FieldByName('CODIGO').AsInteger;
  DBX_SerieMaster.Active:=True;
  CDS_SerieMaster.Active:=True;
end;
//endth
  FrmRelNotas:=TFrmRelNotas.Create(self);
  FrmRelNotas.QuickRep1.PreviewModal;
  FrmRelNotas.Free;
end;

procedure TFrmPesqHistorico.Notasdaturmanamateriaselecionada1Click(
  Sender: TObject);
begin
  FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
  FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
  FrmRelAlunosAbaixoMedia.Free;
end;

procedure TFrmPesqHistorico.BtnPesqAluClick(Sender: TObject);
begin
  if not (FrmDados.CDS_Historico.State in [dsedit,dsinsert]) then
    FrmDados.CDS_Historico.Edit;
  //endi

  FrmProcAluno := TFrmProcALuno.Create(self);
  FrmProcAluno.ShowModal;
  FrmProcAluno.Free;
end;

procedure TFrmPesqHistorico.BtnConfirmarNotaClick(Sender: TObject);
begin
  if (FrmDados.CDS_NotasAnteriores.State in [dsedit,dsinsert]) then
    FrmDados.CDS_NotasAnteriores.Post;
  //endi
end;

procedure TFrmPesqHistorico.DBEdit1Enter(Sender: TObject);
begin
  if not bHistoricoA then
  begin
    showmessage('Este usuário não possui privilégios para editar este registro');
    Exit;
  end;
  //endi
  
  if not (FrmDados.CDS_Historico.State in [dsedit,dsinsert]) then
    FrmDados.CDS_Historico.Edit;
  //endi
end;

procedure TFrmPesqHistorico.BtnCancelarNotaClick(Sender: TObject);
begin
  FrmDados.CDS_NotasAnteriores.Cancel;
end;

procedure TFrmPesqHistorico.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not bHistoricoI then
  begin
    showmessage('Este usuário não possui privilégios para inserir notas no histórico');
    Exit;
  end;
end;

end.

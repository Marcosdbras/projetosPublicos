unit UPesqSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, DB, Mask,
  IdBaseComponent, IdComponent, IdIPWatch, Menus;

type
  TFrmPesqSerie = class(TForm)
    DBGrid1: TDBGrid;
    BtnInserir: TBitBtn;
    BtnMenu: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFiltro: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    BtnAlunos: TBitBtn;
    BtnMaterias: TBitBtn;
    Panel1: TPanel;
    PnlAlunos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    LblProvas: TLabel;
    LblTrabalhos: TLabel;
    LblFinal: TLabel;
    Label8: TLabel;
    LblFaltas: TLabel;
    Label9: TLabel;
    LblAssiduidade: TLabel;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    GridTrabalho: TDBGrid;
    GridProvas: TDBGrid;
    GridFaltas: TDBGrid;
    CBXBimInicio: TComboBox;
    CBXBimFinal: TComboBox;
    BtnExcluirProva: TBitBtn;
    BtnExcluirTrabalho: TBitBtn;
    BtnExcluirFalta: TBitBtn;
    BtnImprimir: TBitBtn;
    PnlSerie: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    PnlMaterias: TPanel;
    DBGrid3: TDBGrid;
    BtnConfMat: TBitBtn;
    BtnExcluirMat: TBitBtn;
    Panel2: TPanel;
    BtnHistorico: TBitBtn;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    EdGeralAno: TEdit;
    EdNumero: TEdit;
    Label6: TLabel;
    BtnAlterar: TBitBtn;
    BtnImprimeTodos: TBitBtn;
    BtnExcluiAlunoTurma: TBitBtn;
    CBXAluCancel: TCheckBox;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    btnreorgn: TButton;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnAlunosClick(Sender: TObject);
    procedure BtnMateriasClick(Sender: TObject);
    procedure BtnFiltroClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirProvaClick(Sender: TObject);
    procedure BtnExcluirTrabalhoClick(Sender: TObject);
    procedure BtnExcluirFaltaClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure GridProvasKeyPress(Sender: TObject; var Key: Char);
    procedure GridTrabalhoKeyPress(Sender: TObject; var Key: Char);
    procedure GridFaltasKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure BtnExcluirMatClick(Sender: TObject);
    procedure CBXBimInicioClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Boletimdoaluno1Click(Sender: TObject);
    procedure Notasdaturmanamateriaselecionada1Click(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure EdGeralAnoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfMatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure GridProvasExit(Sender: TObject);
    procedure GridTrabalhoExit(Sender: TObject);
    procedure GridFaltasExit(Sender: TObject);
    procedure BtnImprimeTodosClick(Sender: TObject);
    procedure BtnExcluiAlunoTurmaClick(Sender: TObject);
    procedure CBXAluCancelClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnreorgnClick(Sender: TObject);
    procedure GridProvasEnter(Sender: TObject);
    procedure GridTrabalhoEnter(Sender: TObject);
    procedure GridFaltasEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FrmPesqSerie: TFrmPesqSerie;

implementation

uses UDados, UCadSerie, URelAluTurma, USerieMat, UFiltroSerie, URelNotas,
  uGeral, URelAlunosAbaixoMedia, UMenuPrincipal;

{$R *.dfm}

procedure TFrmPesqSerie.BtnInserirClick(Sender: TObject);
begin
  if not bSeriesI then
  begin
    showmessage('Este usuário não tem privilégios para inserir uma nova série!');
    Exit;
  end;
  //endi
  
  PnlSerie.Visible := True;
  PnlMaterias.Visible := True;
  PnlAlunos.Visible := False;
  FrmDados.CDS_Serie.Append;
end;

procedure TFrmPesqSerie.BtnEditarClick(Sender: TObject);
begin
  FrmDados.CDS_Serie.Edit;
  FrmCadSerie:=TFrmCadSerie.Create(self);
  FrmCadSerie.ShowModal;
  FrmCadSerie.Free;
end;

procedure TFrmPesqSerie.BtnExcluirClick(Sender: TObject);
begin
  if not bSeriesE then
  begin
    showmessage('Este usuário não tem privilégios para exluir uma série!');
    Exit;
  end;
  //endi
  
  if MessageDlg('Deseja realmente excluir esta série dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_Serie.Delete;
end;

procedure TFrmPesqSerie.BtnMenuClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqSerie.BtnAlunosClick(Sender: TObject);
var
  iAno,
  iMes,
  iDia:word;
begin
  FrmDados.DBX_CadAluno.Active:=True;
  FrmDados.CDS_CadAluno.Active:=True;
  FrmDados.DBX_SerieMat.Active:=True;
  FrmDados.CDS_SerieMat.Active:=True;
  FrmDados.DBX_Indices.Active:=True;
  FrmDados.CDS_Indices.Active:=True;
  FrmDados.DBX_Trabalhos.Active:=True;
  FrmDados.CDS_Trabalhos.Active:=True;
  FrmDados.DBX_Avaliacoes.Active:=True;
  FrmDados.CDS_Avaliacoes.Active:=True;
  FrmDados.DBX_Assiduidade.Active := True;
  FrmDados.CDS_Assiduidade.Active := True;
  decodedate(date,iAno,iMes,iDia);
//  EDAno.Text := inttostr(iAno);

  if Localiza_DetItens_Usuario(9,Icusu,'V') > 0 then
    bNotasV := True
  else
    bNotasV := False;

  if Localiza_DetItens_Usuario(9,Icusu,'A') > 0 then
    bNotasA := True
  else
    bNotasA := False;

  if Localiza_DetItens_Usuario(9,Icusu,'E') > 0 then
    bNotasE := True
  else
    bNotasE := False;

  if Localiza_DetItens_Usuario(9,Icusu,'I') > 0 then
    bNotasI := True
  else
    bNotasI := False;

  if not bNotasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  PnlAlunos.Visible := True;
  PnlSerie.Visible := False;
  PnlMaterias.Visible := False;
  DbGrid1.TabStop := False;
  with FrmDados do
  begin
    DBX_Indices.active:=True;
    CDS_Indices.active:=True;

    CDS_RELTURMASERIEALU.Active := False;
    DBX_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    if CBXAluCancel.Checked = False then
       begin
         DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = 0'+CDS_Serie.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = ' + EdGeralAno.Text + ' AND R.CANCEL_MATRICULA <> '+ QUOTEDSTR('V') +' ORDER BY R.NUMERO')
       end
    else
       begin
         DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = 0'+CDS_Serie.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = ' + EdGeralAno.Text + ' ORDER BY R.NUMERO');
       end;
    //endi
    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;

    CDS_SerieMat.Active := False;
    DBX_SerieMat.Active := False;
    DBX_SerieMat.SQL.Clear;
    DBX_SerieMat.SQL.Add('SELECT * FROM SERIEMAT WHERE CODSERIE = 0'+ FrmDados.CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_SerieMat.Active := True;
    CDS_SerieMat.Active := True;

    DBLookupComboBox1.ListFieldIndex := CDS_SerieMat.fieldByName('CODIGO').AsInteger;
    DBLookupComboBox1.Refresh;

    if DBLookupComboBox1.Text = '' then
    begin
      GridProvas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridTrabalho.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridFaltas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end
    else
    begin
      GridProvas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridTrabalho.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridFaltas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end;
    //endi
  end;
  //endth
  PnlAlunos.Visible := True;

end;

procedure TFrmPesqSerie.BtnMateriasClick(Sender: TObject);
begin
  FrmDados.CDS_SerieMat.Active:=False;
  FrmDados.DBX_SerieMat.Active:=False;
  FrmDados.DBX_SerieMat.SQL.Clear;
  FrmDados.DBX_SerieMat.SQL.Add('SELECT * FROM SERIEMAT WHERE CODSERIE = '+ FrmDados.CDS_Serie.FieldByName('CODIGO').AsString);
  FrmDados.DBX_SerieMat.Active:=True;
  FrmDados.CDS_SerieMat.Active:=True;

  if Localiza_DetItens_Usuario(8,Icusu,'V') > 0 then
    bRelMatV := True
  else
    bRelMatV := False;

  if Localiza_DetItens_Usuario(8,Icusu,'A') > 0 then
    bRelMatA := True
  else
    bRelMatA := False;

  if Localiza_DetItens_Usuario(8,Icusu,'E') > 0 then
    bRelMatE := True
  else
    bRelMatE := False;

  if Localiza_DetItens_Usuario(8,Icusu,'I') > 0 then
    bRelMatI := True
  else
    bRelMatI := False;



  if not bRelMatV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  PnlMaterias.Visible := True;
  PnlSerie.Visible := True;
  PnlAlunos.Visible := False;
end;

procedure TFrmPesqSerie.BtnFiltroClick(Sender: TObject);
begin
  FrmFiltroSerie := TFrmFiltroSerie.Create(self);
  FrmFiltroSerie.ShowModal;
  FrmFiltroSerie.Free;  
end;

procedure TFrmPesqSerie.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Serie.Active:=False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('SELECT * FROM SERIE where ano = ' + EdGeralAno.Text + ' ORDER BY ordem');
    DBX_Serie.Active:=True;
    CDS_Serie.Refresh;
  end;
end;

procedure TFrmPesqSerie.FormShow(Sender: TObject);
begin
 with FrmDados do
 begin
  CDS_AvaliacoesCODMAT.DefaultExpression:='';
  CDS_TrabalhosCODMAT.DefaultExpression:='';
  CDS_AssiduidadeCODMAT.DefaultExpression:='';
 end;
  PnlAlunos.Visible := False;
  PnlMaterias.Visible := True;
  PnlSerie.Visible := True;
 if Localiza_DetItens_Usuario(8,Icusu,'V') > 0 then
    bRelMatV := True
  else
    bRelMatV := False;

  if Localiza_DetItens_Usuario(8,Icusu,'A') > 0 then
    bRelMatA := True
  else
    bRelMatA := False;

  if Localiza_DetItens_Usuario(8,Icusu,'E') > 0 then
    bRelMatE := True
  else
    bRelMatE := False;

  if Localiza_DetItens_Usuario(8,Icusu,'I') > 0 then
    bRelMatI := True
  else
    bRelMatI := False;

  if not bRelMatV then
    PnlMaterias.Visible := False
  else
    PnlMaterias.visible := True;  
end;

procedure TFrmPesqSerie.BtnExcluirProvaClick(Sender: TObject);
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

procedure TFrmPesqSerie.BtnExcluirTrabalhoClick(Sender: TObject);
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

procedure TFrmPesqSerie.BtnExcluirFaltaClick(Sender: TObject);
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

procedure TFrmPesqSerie.BtnImprimirClick(Sender: TObject);
begin
with FrmDados do
begin
  codSerie := CDS_SerieMat.FieldByName('CODIGO').AsInteger;
  DBX_SerieMaster.Active:=True;
  CDS_SerieMaster.Active:=True;
end;
//endth
  FrmRelNotas:=TFrmRelNotas.Create(self);
  FrmRelNotas.QuickRep1.PreviewModal;
  FrmRelNotas.Free;
end;

procedure TFrmPesqSerie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqSerie :=  nil;

end;

procedure TFrmPesqSerie.DBLookupComboBox1Click(Sender: TObject);
begin
  atualizaNotasEFaltas;
  calculaMediaEAssiduidade;
end;

procedure TFrmPesqSerie.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TFrmPesqSerie.GridProvasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Avaliacoes.State = dsedit) or  (FrmDados.CDS_Avaliacoes.State = dsinsert) then
    begin
      verificaAvaliacoes;
      FrmDados.CDS_Avaliacoes.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Avaliacoes.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Avaliacoes.Post;
    end
    else
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TFrmPesqSerie.GridTrabalhoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Trabalhos.State = dsedit) or  (FrmDados.CDS_Trabalhos.State = dsinsert) then
    begin
      verificaTrabalhos;
      FrmDados.CDS_Trabalhos.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Trabalhos.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Trabalhos.Post;
    end
    else
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TFrmPesqSerie.GridFaltasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Assiduidade.State = dsedit) or  (FrmDados.CDS_Assiduidade.State = dsinsert) then
    begin
      verificaAssiduidade;
      FrmDados.CDS_Assiduidade.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Assiduidade.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Assiduidade.Post;
    end
    else
    begin
      //SelectNext(ActiveControl,True,True);

      FrmDados.CDS_RelTurmaSerieAlu.Next;
      dbgrid2.SetFocus;
    end;
  end;
end;

procedure TFrmPesqSerie.BtnConfirmarClick(Sender: TObject);
begin
if (FrmDados.CDS_Serie.State in [dsinsert,dsedit])then
  FrmDados.CDS_Serie.Post;
end;

procedure TFrmPesqSerie.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Serie.Cancel;
end;

procedure TFrmPesqSerie.DBEdit2Click(Sender: TObject);
begin
if FrmDados.CDS_Serie.RecordCount = 0 then
begin
  if not bSeriesI then
  begin
    showmessage('Você não possui privilégios para inserir dados nesta tela!');
 {   if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_Serie.Cancel;}
    Exit;
  end;
end
else
begin
  if not bSeriesA then
  begin
    showmessage('Você não possui privilégios para editar os dados desta tela!');
{    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_Serie.Cancel;}
    Exit;
  end;
  //endi
end;
//endi  }
end;

procedure TFrmPesqSerie.BtnExcluirMatClick(Sender: TObject);
begin
  if not bRelMatE then
  begin
    showmessage('Você não possui privilégios para excluir esta materia!');
    Exit;
  end;
  //endi
  if MessageDlg('Deseja realmente excluir esta materia do registro da série?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_SerieMat.Delete;
end;

procedure TFrmPesqSerie.CBXBimInicioClick(Sender: TObject);
begin
  atualizaBim;
end;

procedure TFrmPesqSerie.BitBtn3Click(Sender: TObject);
begin
  FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
  FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
  FrmRelAlunosAbaixoMedia.Free;
end;

procedure TFrmPesqSerie.Boletimdoaluno1Click(Sender: TObject);
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

procedure TFrmPesqSerie.Notasdaturmanamateriaselecionada1Click(
  Sender: TObject);
begin
  FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
  FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
  FrmRelAlunosAbaixoMedia.Free;
end;

procedure TFrmPesqSerie.BtnFiltrarClick(Sender: TObject);
begin
{  if(EDAno.Text <> '') then
  begin
  with FrmDados do
  begin
    CDS_RELTURMASERIEALU.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = '+CDS_Serie.fieldByName('CODIGO').AsString+' AND ANOLETIVO = '+EDAno.Text + ' AND CANCEL_MATRICULA <> '+ QUOTEDSTR('S') + ' ORDER BY NUMERO');
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;
  end;
  //endth
  end;
  //endi}
end;

procedure TFrmPesqSerie.DBEdit2Enter(Sender: TObject);
begin
if FrmDados.CDS_Serie.RecordCount = 0 then
begin
  if not bSeriesI then
  begin
    showmessage('Você não possui privilégios para inserir dados nesta tela!');
 {   if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_Serie.Cancel;}
    Exit;
  end;
end
else
begin
  if not bSeriesA then
  begin
    showmessage('Você não possui privilégios para editar os dados desta tela!');
{    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_Serie.Cancel;}
    Exit;
  end;
  //endi
end;
//endi
end;

procedure TFrmPesqSerie.BtnHistoricoClick(Sender: TObject);
var
  i,
  iQntd : integer;
  NotasRec,
  Nota1,
  Nota2,
  Nota3,
  Nota4,
  NotaFinal : double;
  sBim,
  sCodAlu,
  sCodMat,
  sAno,
  sSerie,
  sCodCurso,
  sCodSerieAlu,
  sCodHist : String;
  rec1,
  rec2,
  rec3,
  rec4 : boolean;
begin
iQntd := 0;
Nota1 := 0;
Nota2 := 0;
Nota3 := 0;
Nota4 := 0;
NotaFinal := 0;
with FrmDados do
begin
  CDS_RelTurmaSerieAlu.First;
  sSerie := CDS_Serie.FieldByName('SERIE').AsString;

  with FrmPrincipal do
  begin
    if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'V') > 0 then
      bHistoricoV := True
    else
      bHistoricoV := False;
    //endi

    if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'A') > 0 then
      bHistoricoA := True
    else
      bHistoricoA := False;
    //endi

    if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'E') > 0 then
      bHistoricoE := True
    else
      bHistoricoE := False;
    //endi

    if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'I') > 0 then
      bHistoricoI := True
    else
      bHistoricoI := False;
    //endi
  end;
  //endth

  while not CDS_RelTurmaSerieAlu.Eof do
  begin
    sCodAlu := CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString;
    sAno := CDS_RelTurmaSerieAlu.FieldByName('ANOLETIVO').AsString;
    CDS_Historico.Active := False;
    DBX_Historico.Active := False;
    DBX_Historico.SQL.Clear;
    DBX_Historico.SQL.Add('SELECT * FROM HISTORICO WHERE CODALU = ' + sCodAlu + ' and ano = ' + sAno);
    DBX_Historico.Active := True;
    CDS_Historico.Active := True;

    if CDS_Historico.RecordCount = 0 then
    begin
      if not bHistoricoI then
      begin
        showmessage('Este usuário não possui privilégios para inserir no histórico!');
        Exit;
      end;
      //endi
      CDS_Historico.Append;
      CDS_Historico.FieldByName('CodALU').AsString := scODaLU;
      CDS_Historico.FieldByName('ANO').AsString := sAno;
      CDS_Historico.FieldByName('MUNICIPIO').AsString := 'São Paulo';
      CDS_Historico.FieldByName('ESTADO').AsString := 'SP';
      CDS_Historico.FieldByName('SERIE').AsString := sSERIE;
      CDS_Historico.FieldByName('ESTABELECIMENTO').AsString := 'Colégio Integração';

      if CDS_Serie.FieldByName('Grau').AsString = 'EDUCAÇÃO INFANTIL' then
        sCodCurso := '1'
      else if CDS_Serie.FieldByName('Grau').AsString = 'FUNDAMENTAL' then
        sCodCurso := '2'
      else if CDS_Serie.FieldByName('Grau').AsString = 'ENSINO MÉDIO' then
        sCodCurso := '3';
      //endi
      CDS_Historico.FieldByName('CODCURSO').AsString := sCodCurso;
      CDS_Historico.Post;
    end;
    //endi

    sCodHist := CDS_Historico.FieldByName('CODIGO').AsString;
    sCodSerieAlu := CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
    sCodMat := CDS_SerieMat.FieldByName('CODMAT').AsString;
    
    {NotasRec := 0;
    for i:=1 to 4 do
    begin
      sBim := 'R' + inttostr(i);
      NotasRec := 0;

      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELeCT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = ' + sCodSerieAlu + ' and CODMAT = ' + sCodMat + ' and BIM = ' + quotedstr(sBIM));
      DBX_Teste.Active := True;

      DBX_Exec.Active := False;
      DBX_Exec.SQL.Clear;
      DBX_Exec.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = ' + sCodSerieAlu + ' and CODMAT = ' + sCodMat + ' and BIM = ' + quotedstr(sBIM));
      DBX_Exec.Active := True;

      if DBX_Teste.RecordCount <> 0 then
      begin
        NotasRec := NotasRec + DBX_Teste.FieldByName('SOMA').AsFloat;
        if i = 1 then
          Rec1 := True
        else if i = 2 then
          Rec2 := True
        else if i = 3 then
          Rec3 := True
        else
          Rec4 := True;
        //endi
      end;
      //endi

      if DBX_Exec.RecordCount <> 0 then
      begin
        NotasRec := NotasRec + DBX_Exec.FieldByName('SOMA').AsFloat;
        if i =1 then
          Rec1 := True
        else if i = 2 then
          Rec2 := True
        else if i = 3 then
          Rec3 := True
        else
          Rec4 := True;
        //endi
      end;
      //endi

      iQntd := 0;
      if (i = 1) and (Rec1) then
        sBim := 'R' + inttostr(i)
      else if(i = 2) and (Rec2) then
        sBim := 'R' + inttostr(i)
      else if(i = 3) and (Rec3) then
        sBim := 'R' + inttostr(i)
      else if(i = 4) and (Rec4) then
        sBim := 'R' + inttostr(i)
      else
        sBim := inttostr(i);

      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodSerieAlu+' and CODMAT = '+sCodMat+' and  BIM = ' + quotedstr(inttostr(i)) + ' and BIM <> ' + quotedstr('R' + inttostr(i)));
      DBX_Teste.Active := True;
      iQntd := iQntd + DBX_Teste.RecordCount;

      DBX_Exec.Active := False;
      DBX_Exec.SQL.Clear;
      DBX_Exec.SQL.Add('SELECT * FROM TRABALHOS  WHERE CODRELALUSER = '+sCodSerieAlu+' and CODMAT = '+sCodMat+' and  BIM = ' + quotedstr(inttostr(i)) + ' and BIM <> ' + quotedstr('R' + inttostr(i)));
      DBX_Exec.Active := True;
      iQntd := iQntd + DBX_Exec.RecordCount;

      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES  WHERE CODRELALUSER = '+sCodSerieAlu+' and CODMAT = '+sCodMat+' and  BIM = ' + quotedstr(inttostr(i)) + ' and BIM <> ' + quotedstr('R' + inttostr(i)));
      DBX_Teste.Active := True;

      DBX_Exec.Active := False;
      DBX_Exec.SQL.Clear;
      DBX_Exec.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS  WHERE CODRELALUSER = '+sCodSerieAlu+' and CODMAT = '+sCodMat+' and  BIM = ' + quotedstr(inttostr(i)) + ' and BIM <> ' + quotedstr('R' + inttostr(i)));
      DBX_Exec.Active := True;

      if i = 1 then
      begin
        Nota1 := DBX_Teste.FieldByName('SOMA').AsFloat + DBX_Exec.FieldByName('SOMA').AsFloat;
        if Iqntd > 0 then
        begin
          Nota1 := Nota1 / iQntd;
          if Nota1 < NotasRec then
            Nota1 := NotasRec;
        end
        else
        begin
          Nota1 := NotasRec;
        end;
        //endi
      end
      else if i = 2 then
      begin
        Nota2 := DBX_Teste.FieldByName('SOMA').AsFloat + DBX_Exec.FieldByName('SOMA').AsFloat;
        if iQntd > 0 then
        begin
          Nota2 := Nota2 / iQntd;
          if Nota2 < NotasRec then
            Nota2 := NotasRec;
        end
        else
        begin
          Nota2 := NotasRec;
        end;
        //endi
      end
      else if i = 3 then
      begin
        Nota3 := DBX_Teste.FieldByName('SOMA').AsFloat + DBX_Exec.FieldByName('SOMA').AsFloat;
        if iQntd > 0 then
        begin
          Nota3 := Nota3 / iQntd;
          if Nota3 < NotasRec then
            Nota3 := NotasRec;
        end
        else
        begin
          Nota3 := NotasRec;
        end;
        //endi
      end
      else
      begin
        Nota4 := DBX_Teste.FieldByName('SOMA').AsFloat + DBX_Exec.FieldByName('SOMA').AsFloat;
        if iQntd > 0 then
        begin
          Nota4 := Nota4 / iQntd;
          if Nota4 < NotasRec then
            Nota4 := NotasRec;
        end
        else
        begin
          Nota4 := NotasRec;
        end;
        //endi
      end;
    end;
    //endfor  }
    {NotaFinal := LblFinal
    NotaFinal := strtofloat(calculaMediaIntegracao2(NotaFinal, 4));}


    CalculaMediaeAssiduidade;

    CDS_NotasAnteriores.Active := False;
    CDS_NotasAnterioresCODMAT.DefaultExpression := sCodMat;
    CDS_NotasAnterioresCODHIST.DefaultExpression := sCodHist;
    DBX_NotasAnteriores.Active := False;
    DBX_NotasAnteriores.SQL.Clear;
    DBX_NotasAnteriores.SQL.Add('SELECT * FROM NOTASANTERIRORES WHERE CODHIST = ' + sCodHist + ' and CODMAT = ' + sCodmAt);
    DBX_NotasAnteriores.Active := True;
    CDS_NotasAnteriores.Active := True;

    if CDS_NotasAnteriores.RecordCount <> 0 then
      CDS_NotasAnteriores.Edit
    else
      CDS_NotasAnteriores.Append;

    CDS_NotasAnteriores.FieldByName('CODHIST').AsString := CDS_Historico.FieldByName('CODIGO').AsString;
    CDS_NotasAnteriores.FieldByName('CODMAT').AsString := sCodMat;
    CDS_NOtasAnteriores.FieldByName('NOTA').AsString := LblFinal.Caption;

    CDS_NotasAnteRiores.Post;

    CDS_RelTurmaSerieAlu.Next;
  end;
  //endwh
end;
//endth
end;

procedure TFrmPesqSerie.EdGeralAnoKeyPress(Sender: TObject; var Key: Char);
var
  sAno:String;
begin
  if key = #13 then
  begin
    if EdGeralAno.GetTextLen = 4 then
    begin
      sAno := ' where ANO = ' + EdGeralAno.Text
    end
    else if EdGeralAno.GetTextLen = 0 then
    begin
      sAno := '';
    end
    else
    begin
      Exit;
    end;
    //endi

    with FrmDados do
    begin
      CDS_Serie.Active := False;
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE' + sAno + ' ORDER BY ordem');
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;
    end;
    //endth
  end;
  //endi
end;

procedure TFrmPesqSerie.BtnConfMatClick(Sender: TObject);
begin
  if (FrmDados.CDS_SerieMat.State in [dsinsert,dsedit])then
    FrmDados.CDS_SerieMat.Post;
  //endi
end;

procedure TFrmPesqSerie.FormCreate(Sender: TObject);
var
  sAno:String;
  iAno,
  iMes,
  iDia:word;
begin
  with FrmDados do
  begin
    decodedate(date,iAno,iMes,iDia);
    sAno := inttostr(iAno);
    DBX_Serie.Active:=False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('SELECT * FROM SERIE where ano = ' + sAno + ' ORDER BY ordem');
    DBX_Serie.Active:=True;
    CDS_Serie.Refresh;
  end;
end;

procedure TFrmPesqSerie.BtnAlterarClick(Sender: TObject);
var
  iNumero:integer;
begin
  try
    iNumero := strtoint(EdNumero.Text);
  except
    showmessage('Insere apenas valores numéricos.');
    Exit;
  end;
  //endtry

  if not bSeriesA then
  begin
    showmessage('Este usuário não possui privilégios para excluir este registro!');
    Exit;
  end;

  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.Edit;
    CDS_RelTurmaSerieALu.FieldByName('NUMERO').AsInteger := iNumero;
    CDS_RelTurmaSerieAlu.Post;
    showmessage('Número alterado com sucesso!');
    EdNumero.Clear;
  end;
  //endth
end;

procedure TFrmPesqSerie.GridProvasExit(Sender: TObject);
begin
  if (FrmDados.CDS_Avaliacoes.State = dsedit) or  (FrmDados.CDS_Avaliacoes.State = dsinsert) then
  begin
    if MessageDlg('Deseja salvar estas alterações nas notas?',mtWarning, [mbYes,mbNo], 0) = 6 then
    begin
      verificaAvaliacoes;
      FrmDados.CDS_Avaliacoes.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Avaliacoes.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Avaliacoes.Post;
    end;
    //endi
  end
end;

procedure TFrmPesqSerie.GridTrabalhoExit(Sender: TObject);
begin
  if (FrmDados.CDS_Trabalhos.State in [dsedit,dsinsert]) then
  begin
    if MessageDlg('Deseja salvar estas alterações nas notas?',mtWarning, [mbYes,mbNo], 0) = 6 then
    begin
      verificaTrabalhos;
      FrmDados.CDS_Trabalhos.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Trabalhos.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Trabalhos.Post;
    end;
    //endi
  end;
  //endi
end;

procedure TFrmPesqSerie.GridFaltasExit(Sender: TObject);
begin
  if FrmDados.CDS_Assiduidade.State in [dsedit,dsinsert] then
    if MessageDlg('Deseja salvar estas alterações nas notas?',mtWarning, [mbYes,mbNo], 0) = 6 then
    begin
      verificaAssiduidade;
      FrmDados.CDS_Assiduidade.FieldByName('CODRELALUSER').AsString := FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString;
      FrmDados.CDS_Assiduidade.FieldByName('codmat').AsString := FrmDados.CDS_SerieMat.FieldByName('CODmat').AsString;
      FrmDados.CDS_Assiduidade.Post;
    end;
    //endi
  //endi
end;

procedure TFrmPesqSerie.BtnImprimeTodosClick(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.First;
    codSerie := CDS_SerieMat.FieldByName('CODIGO').AsInteger;
    DBX_SerieMaster.Active:=True;
    CDS_SerieMaster.Active:=True;

    while (not CDS_RelTurmaSerieAlu.Eof) do
    begin
      FrmRelNotas:=TFrmRelNotas.Create(self);
      FrmRelNotas.QuickRep1.Print;
      FrmRelNotas.Free;

      CDS_RelTurmaSerieAlu.Next;
    end;
    //endwh
  end;
  //endth
end;

procedure TFrmPesqSerie.BtnExcluiAlunoTurmaClick(Sender: TObject);
begin
  if not bSeriesE then
  begin
    showmessage('Este usuário não possui privilégios para excluir este registro!');
    Exit;
  end
  else
  begin
    if MessageDlg('Deseja realmente excluir o(a) aluno(a) ' + FrmDados.CDS_RelTurmaSerieAlu.FieldByName('nomealuno').AsString + ' da série? Suas notas serão excluidas ao mesmo tempo!',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_RelTurmaSerieAlu.Delete;
  end;
end;

procedure TFrmPesqSerie.CBXAluCancelClick(Sender: TObject);
begin
  if PnlAlunos.Visible = True then
  begin
    BtnAlunos.Click;
  end;
  //endi
end;

procedure TFrmPesqSerie.DBGrid1TitleClick(Column: TColumn);
begin
  Grid_Ordena_e_PintaTitulo(DBGrid1,column,FrmDados.CDS_Serie);
end;

procedure TFrmPesqSerie.btnreorgnClick(Sender: TObject);
var
  inum:integer;
begin


  if not bReorganizaAlu then
  begin
    showmessage('Este usuário não possui privilégios para reorganizar números das listas!');
    Exit;
  end
  else
  begin
    if application.MessageBox('Deseja Realmente reorganizar números das listas?','Atenção',mb_YesNo + mb_DefButton1) = idNo then
      exit;
  end;


  with FrmDados do
  begin
    inum := 1;

    CDS_RelTurmaSerieAlu.First;

    while not CDS_RelTurmaSerieAlu.Eof  do
      begin

        CDS_RelTurmaSerieAlu.Edit;
        CDS_RelTurmaSerieALu.FieldByName('NUMERO').AsInteger := iNum;
        CDS_RelTurmaSerieAlu.Post;

        inum := inum + 1;

        CDS_RelTurmaSerieAlu.Next;

      end;
    //endw



    showmessage('Números alterados com sucesso!');



  end;
  //endth



end;

procedure TFrmPesqSerie.GridProvasEnter(Sender: TObject);
begin
gridprovas.SelectedIndex := 0;
end;

procedure TFrmPesqSerie.GridTrabalhoEnter(Sender: TObject);
begin
gridtrabalho.SelectedIndex := 0;
end;

procedure TFrmPesqSerie.GridFaltasEnter(Sender: TObject);
begin
gridfaltas.SelectedIndex := 0;
end;

end.

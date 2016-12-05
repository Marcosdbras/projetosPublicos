unit URelAluTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB;

type
  TFrmRelAluTurma = class(TForm)
    BtnMenu: TBitBtn;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    GridTrabalho: TDBGrid;
    Label1: TLabel;
    GridProvas: TDBGrid;
    GridFaltas: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EDAno: TEdit;
    BtnFiltrar: TBitBtn;
    CBXBimInicio: TComboBox;
    Label4: TLabel;
    Label7: TLabel;
    CBXBimFinal: TComboBox;
    LblProvas: TLabel;
    LblTrabalhos: TLabel;
    LblFinal: TLabel;
    Label8: TLabel;
    LblFaltas: TLabel;
    Label9: TLabel;
    LblAssiduidade: TLabel;
    BtnExcluirProva: TBitBtn;
    BtnExcluirTrabalho: TBitBtn;
    BtnExcluirFalta: TBitBtn;
    BtnImprimir: TBitBtn;
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnAssiduidadeClick(Sender: TObject);
    procedure BtnTrabalhosClick(Sender: TObject);
    procedure GridTrabalhoKeyPress(Sender: TObject; var Key: Char);
    procedure GridProvasKeyPress(Sender: TObject; var Key: Char);
    procedure GridFaltasKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure CBXBimInicioChange(Sender: TObject);
    procedure BtnExcluirProvaClick(Sender: TObject);
    procedure BtnExcluirTrabalhoClick(Sender: TObject);
    procedure BtnExcluirFaltaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnTransferenciaClick(Sender: TObject);
  private
    { Private declarations }
  public
    
  end;

var
  FrmRelAluTurma: TFrmRelAluTurma;
  iFaltas:integer;
  dAssiduidade:double;

implementation

uses UDados, uGeral, URelNotas;

{$R *.dfm}


procedure TFrmRelAluTurma.BtnMenuClick(Sender: TObject);
begin
//  showmessage(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsString);
  FrmRelAluTurma := nil;
  close;
end;

procedure TFrmRelAluTurma.BtnImprimirClick(Sender: TObject);
begin
with FrmDados do
begin
//  codSerie:=CDS_SerieMat.FieldByName('CODIGO').AsInteger;
{ CDS_SerieMaster.Active:=False;
  DBX_SerieMaster.Active:=False;
  DBX_SerieMaster.SQL.Clear;
  DBX_SerieMaster.SQL.Add('SELECT * FROM SERIEMASTER ');}
  DBX_SerieMaster.Active:=True;
  CDS_SerieMaster.Active:=True;
end;
//endth
  FrmRelNotas:=TFrmRelNotas.Create(self);
  FrmRelNotas.QuickRep1.Preview;
  FrmRelNotas.Free;
end;

procedure TFrmRelAluTurma.BtnAssiduidadeClick(Sender: TObject);
begin
{  with FrmDados do
  begin
    DBX_Assiduidade.Active:=False;
    DBX_Assiduidade.SQL.Clear;
    DBX_Assiduidade.SQL.Add('SELECT A.* FROM Assiduidade A WHERE A.CODALU = '+FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString);
    DBX_Assiduidade.Active:=True;
    CDS_Assiduidade.Active:=True;
    CDS_Assiduidade.Refresh;
  end;
  FrmAssiduidade:=TFrmAssiduidade.Create(self);
  FrmAssiduidade.ShowModal;
  FrmAssiduidade.Free; }
end;

procedure TFrmRelAluTurma.BtnTrabalhosClick(Sender: TObject);
begin
 { with FrmDados do
  begin
    DBX_Trabalhos.Active:=False;
    DBX_Trabalhos.SQL.Clear;
    DBX_Trabalhos.SQL.Add('SELECT T.* FROM TRABALHOS T WHERE T.CODALU = '+FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString);
    DBX_Trabalhos.Active:=True;
    CDS_Trabalhos.Active:=True;
    CDS_Trabalhos.Refresh;
  end;
  FrmTrabalhos:=TFrmTrabalhos.Create(self);
  FrmTrabalhos.ShowModal;
  FrmTrabalhos.Free;}
end;

procedure TFrmRelAluTurma.GridTrabalhoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Trabalhos.State = dsedit) or  (FrmDados.CDS_Trabalhos.State = dsinsert) then
    begin
      FrmDados.CDS_Trabalhos.Post;
    end
    else
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TFrmRelAluTurma.GridProvasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Avaliacoes.State = dsedit) or  (FrmDados.CDS_Avaliacoes.State = dsinsert) then
    begin
      FrmDados.CDS_Avaliacoes.Post;
    end
    else
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TFrmRelAluTurma.GridFaltasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if (FrmDados.CDS_Assiduidade.State = dsedit) or  (FrmDados.CDS_Assiduidade.State = dsinsert) then
    begin
      FrmDados.CDS_Assiduidade.Post;
    end
    else
    begin
      SelectNext(ActiveControl,True,True);
      FrmDados.CDS_RelTurmaSerieAlu.Next;
    end;
  end;
end;

procedure TFrmRelAluTurma.BtnFiltrarClick(Sender: TObject);
begin
  if(EDAno.Text <> '') then
  begin
  with FrmDados do
  begin
    CDS_RELTURMASERIEALU.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = '+CDS_Serie.fieldByName('CODIGO').AsString+' AND ANOLETIVO = '+EDAno.Text+' ORDER BY NUMERO');
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;
  end;
  end;
  //endi
end;

procedure TFrmRelAluTurma.CBXBimInicioChange(Sender: TObject);
var
  dtrabalhos,
  dprovas,
  dfinal:double;

  iDBIM,
  iFaltas:integer;

  sBim,
  sCodigoSerieAlu,
  sCodigoMat:string;
begin
  with FrmDados do
  begin
    if (FrmRelAluTurma.CBXBimInicio.Text = '1º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '1º Bimestre')then
    begin
      sBIM:=' AND BIM = 1';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '1º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '2º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 1 AND 2';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '1º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 1 AND 3';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '1º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 1 AND 4';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '2º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '2º Bimestre')then
    begin
      sBIM:=' AND BIM = 2';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '2º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 2 AND 3';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '2º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 2 AND 4';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '3º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM = 3';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '3º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM BETWEEN 3 AND 4';
    end
    else if (FrmRelAluTurma.CBXBimInicio.Text = '4º Bimestre')and (FrmRelAluTurma.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM = 4';
    end
    else
    begin
      sBIM:=' AND BIM = 0';
    end;


      CDS_Avaliacoes.Active:=False;
      CDS_AvaliacoesCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_AvaliacoesCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Avaliacoes.Active:=False;
      sCodigoSerieAlu := inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat := inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
      if (FrmRelAluTurma.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Avaliacoes.SQL.Clear;
        DBX_Avaliacoes.SQL.Add('SELECT A.* FROM AVALIACOES A WHERE A.CODRELALUSER = 0'+sCodigoSerieAlu+' and A.CODMAT = 0'+sCodigoMat+sBIM+' order by BIM');
      end
      else
      begin
        DBX_Avaliacoes.SQL.Clear;
        DBX_Avaliacoes.SQL.Add('SELECT A.* FROM AVALIACOES A WHERE A.CODRELALUSER = '+sCodigoSerieAlu+' and A.CODMAT = 0 '+sBIM+' order by BIM');
        //showmessage(DBX_Avaliacoes.SQL.Text);
      end;
      DBX_Avaliacoes.Active:=True;
      CDS_Avaliacoes.Active:=True;

      CDS_Assiduidade.Active:=False;
      CDS_AssiduidadeCODRELALUSER.DefaultExpression:=CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_AssiduidadeCODMAT.DefaultExpression:=CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Assiduidade.Active:=False;
      sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
      if (FrmRelAluTurma.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Assiduidade.SQL.Clear;
        DBX_Assiduidade.SQL.Add('SELECT A.* FROM Assiduidade A WHERE A.CODRELALUSER = 0'+sCodigoSerieAlu+' and A.CODMAT = 0'+sCodigoMat+sBIM+'order by BIM');
      end
      else
      begin
        DBX_Assiduidade.SQL.Clear;
        DBX_Assiduidade.SQL.Add('SELECT A.* FROM Assiduidade A WHERE A.CODRELALUSER = 0'+sCodigoSerieAlu+' and A.CODMAT = 0'+sBIM+'order by BIM');
      end;
      DBX_Assiduidade.Active:=True;
      CDS_Assiduidade.Active:=True;

      CDS_Trabalhos.Active:=False;
      CDS_TrabalhosCODRELALUSER.DefaultExpression:=CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_TrabalhosCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Trabalhos.Active:=False;
      sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
      if (FrmRelAluTurma.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Trabalhos.SQL.Clear;
        DBX_Trabalhos.SQL.Add('SELECT T.* FROM TRABALHOS T WHERE T.CODRELALUSER = 0'+sCodigoSerieAlu+' and T.CODMAT = 0'+sCodigoMat+ sBIM+' order by BIM')
        //showmessage(DBX_Trabalhos.SQL.Text);
      end
      else
      begin
        DBX_Trabalhos.SQL.Clear;
        DBX_Trabalhos.SQL.Add('SELECT T.* FROM TRABALHOS T WHERE T.CODRELALUSER = 0'+sCodigoSerieAlu+' and T.CODMAT = 0'+sBIM+' order by BIM');
      end;
      //SHOWMESSAGE(DBX_Trabalhos.SQl.text);
      DBX_Trabalhos.Active:=True;
      CDS_Trabalhos.Active:=True;


    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
    sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
    DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+ sBIM);
    //showmessage(DBX_teste.SQL.Text);
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0) AND (FrmRelAluTurma.DBLookupComboBox1.Text <> '')then
    begin
      dtrabalhos:= DBX_Teste.fieldByName('SOMA').AsFloat;
      //showmessage('Soma de trabalhos = ' + floattostr(dtrabalhos));
      LblTrabalhos.Caption:=formatfloat('###,###,##0.0',dtrabalhos/CDS_Trabalhos.RecordCount);
    end
    else
    begin
      LblTrabalhos.Caption:='';
    end;

    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
    sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
    DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES  WHERE CODRELALUSER = 0'+sCodigoSerieAlu+' and CODMAT = 0'+sCodigoMat+sBIM);
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0) and (DBLookupComboBox1.Text <> '')then
    begin
      dPROVAS:=DBX_Teste.fieldByName('SOMA').AsFloat;
      //showmessage('Soma de provas = ' + floattostr(dPROVAS));
      LblProvas.Caption:=formatfloat('###,###,##0.0',dprovas/CDS_Avaliacoes.RecordCount);
    end
    else
    begin
      LblProvas.Caption:='';
    end;

    LblFinal.Caption := calculaMediaIntegracao(dprovas+dtrabalhos);

    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
    sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);
    DBX_Teste.SQL.Add('SELECT SUM(FALTAS) AS SOMA FROM ASSIDUIDADE WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBIM);
    DBX_Teste.Active:=True;
    if (DBX_Teste.fieldByName('SOMA').AsString <> '') and (DBLookupComboBox1.Text <> '')then
    begin
      iFaltas:=DBX_Teste.fieldByName('SOMA').AsInteger;
      LblFaltas.Caption:=inttostr(iFaltas);
    end
    else
    begin
      LblFaltas.Caption:='';
    end;

    if (CDS_SerieMat.fieldByName('QNTD_AULAS').AsString <> '') and (DBLookupComboBox1.Text <> '')then
    begin
      dassiduidade:=100-((iFaltas / CDS_SerieMat.fieldByName('QNTD_AULAS').AsInteger)*100);
      LblAssiduidade.Caption:=formatfloat('###,###,##0',dAssiduidade)+'%';
    end
    else
    begin
      LblAssiduidade.Caption:='';
    end;
    //endi

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
end;

procedure TFrmRelAluTurma.BtnExcluirProvaClick(Sender: TObject);
begin
  if(FrmDados.CDS_Avaliacoes.RecordCount <> 0) then
  begin
    FrmDados.CDS_Avaliacoes.Delete;
    FrmDados.CDS_Avaliacoes.Refresh;
  end;
end;

procedure TFrmRelAluTurma.BtnExcluirTrabalhoClick(Sender: TObject);
begin
  if(FrmDados.CDS_Trabalhos.RecordCount <> 0)then
  begin
    FrmDados.CDS_Trabalhos.Delete;
    FrmDados.CDS_Trabalhos.Refresh;
  end;
end;

procedure TFrmRelAluTurma.BtnExcluirFaltaClick(Sender: TObject);
begin
  if(FrmDados.CDS_Assiduidade.RecordCount <> 0)then
  begin
    FrmDados.CDS_Assiduidade.Delete;
    FrmDados.CDS_Assiduidade.Refresh;
  end;
end;

procedure TFrmRelAluTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;

    CDS_Avaliacoes.Active:=False;
    DBX_Avaliacoes.Active:=False;

    CDS_Assiduidade.Active:=False;
    DBX_Assiduidade.Active:=False;

    CDS_Trabalhos.Active:=False;
    DBX_Trabalhos.Active:=False;
  end;
end;

procedure TFrmRelAluTurma.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TFrmRelAluTurma.FormShow(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Indices.active:=True;
    CDS_Indices.active:=True;

    CDS_RELTURMASERIEALU.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = 0'+CDS_Serie.fieldByName('CODIGO').AsString+' AND ANOLETIVO = '+CDS_Indices.fieldByName('ANO').AsString+' ORDER BY NUMERO');
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;

    CDS_SerieMat.Active:=False;
    DBX_SerieMat.Active:=False;
    DBX_SerieMat.SQL.Clear;
    DBX_SerieMat.SQL.Add('SELECT * FROM SERIEMAT WHERE CODSERIE = 0'+ FrmDados.CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_SerieMat.Active:=True;
    CDS_SerieMat.Active:=True;

    DBLookupComboBox1.ListFieldIndex:=CDS_SerieMat.fieldByName('CODIGO').AsInteger;
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

end;

procedure TFrmRelAluTurma.BtnTransferenciaClick(Sender: TObject);
var
  itamanho,
  ivezes:integer;
begin
  itamanho:=0;
  ivezes:=0;
with FrmDados do
begin
  CDS_RELTURMASERIEALU.Active:=False;
  DBX_RelTurmaSerieAlu.Active:=False;
  DBX_RelTurmaSerieAlu.SQL.Clear;
  DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = '+CDS_Serie.fieldByName('CODIGO').AsString+' AND ANOLETIVO = '+EDAno.Text+' ORDER BY NUMERO');
  DBX_RelTurmaSerieAlu.Active:=True;
  CDS_RelTurmaSerieAlu.Active:=True;

  ivezes:=CDS_RelTurmaSerieAlu.RecordCount;

  while ivezes > 0 do
  begin
    CDS_Trabalhos.Active:=False;
    DBX_Trabalhos.Active:=False;
    DBX_Trabalhos.SQL.Clear;
    DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = 0'+CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString);
    DBX_Trabalhos.Active:=True;
    CDS_Trabalhos.Active:=True;

    //showmessage(inttostr(CDS_CadMateria.FieldByName('CODIGO').AsInteger));
    //showmessage(inttostr(CDS_SerieMat.FieldByName('CODIGO').AsInteger));

    itamanho := CDS_Trabalhos.RecordCount;
    //showmessage(inttostr(itamanho));

    WHILE  itamanho > 0 do
    begin
      CDS_Trabalhos.Edit;
      CDS_Trabalhos.FieldByName('CODMAT').AsInteger := CDS_SerieMat.FieldByName('CODIGO').AsInteger;
      CDS_Trabalhos.Post;
      CDS_Trabalhos.Next;
      itamanho:=itamanho-1;
    end;
    //endwh

    CDS_Avaliacoes.Active:=False;
    DBX_Avaliacoes.Active:=False;
    DBX_Avaliacoes.SQL.Clear;
    DBX_Avaliacoes.SQL.Add('SELECT * FROM Avaliacoes WHERE CODRELALUSER = '+CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString);
    DBX_Avaliacoes.Active:=True;
    CDS_Avaliacoes.Active:=True;

    itamanho := CDS_Avaliacoes.RecordCount;
    //showmessage(inttostr(itamanho));

    WHILE  itamanho > 0 do
    begin
      CDS_Avaliacoes.Edit;
      CDS_Avaliacoes.FieldByName('CODMAT').AsInteger := CDS_SerieMat.FieldByName('CODIGO').AsInteger;
      CDS_Avaliacoes.Post;
      CDS_Avaliacoes.Next;
      itamanho:=itamanho-1;
    end;
    //endwh

    CDS_Assiduidade.Active:=False;
    DBX_Assiduidade.Active:=False;
    DBX_Assiduidade.SQL.Clear;
    DBX_Assiduidade.SQL.Add('SELECT * FROM Assiduidade WHERE CODRELALUSER = '+CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString);
    DBX_Assiduidade.Active:=True;
    CDS_Assiduidade.Active:=True;

    itamanho := CDS_Assiduidade.RecordCount;

    WHILE  itamanho > 0 do
    begin
      CDS_Assiduidade.Edit;
      CDS_Assiduidade.FieldByName('CODMAT').AsInteger := CDS_SerieMat.FieldByName('CODIGO').AsInteger;
      CDS_Assiduidade.Post;
      CDS_Assiduidade.Next;
      itamanho:=itamanho-1;
    end;
    //endwh
    CDS_RelTurmaSerieAlu.Next;
    ivezes:=ivezes-1;
  end;
  //endwh
end;
//endth
end;

end.

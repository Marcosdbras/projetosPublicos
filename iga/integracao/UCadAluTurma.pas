unit UCadAluTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ImgList;

type
  TFrmCadAluTurma = class(TForm)
    DBGrid1: TDBGrid;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Lista_IMg: TImageList;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadAluTurma: TFrmCadAluTurma;

implementation

uses UDados, UPesqAluno;

{$R *.dfm}

procedure TFrmCadAluTurma.BtnSalvarClick(Sender: TObject);
var
  laco:boolean;
  numero,
  nummaxalu :integer;
  dataf:tdatetime;
begin
Try
  with FrmDados do
  begin
    //verifica se a sala ja esta cheia
    nummaxalu := CDS_Serie.FieldByName('NUMMAXALU').AsInteger;

    CDS_RELTURMASERIEALU.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = ' + CDS_Serie.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = ' + CDS_CadAluAnual.FieldByName('ANO').AsString + ' AND R.CANCEL_MATRICULA <> '+ QUOTEDSTR('V') + ' ORDER BY R.NUMERO');
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;

    if CDS_RelTurmaSerieAlu.RecordCount = nummaxalu then
    begin
      showmessage('Esta sala já possui o número máximo de alunos permitido!');
      Exit;
    end;
    //endi

    CDS_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString + ' AND R.ANOLETIVO = ' + CDS_CadAluAnual.fieldByName('ANO').AsString);
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;

    //insere ou muda o aluno de série
    if (cds_relturmaseriealu.RecordCount <> 0) then//AND (CDS_CadAluAnual.FieldByName('ANO').AsInteger = CDS_RelTurmaSerieAlu.FieldByName('ANOLETIVO').AsInteger) then
    begin
      CDS_RelturmaSerieAlu.Edit;
      //showmessage('edita');
    end
    else
    begin
      CDS_RELTURMASERIEALU.Append;
      //showmessage('insere');
    end;
    //endi

    CDS_RELTURMASERIEALU.FieldByName('CODSERIE').AsInteger := CDS_Serie.fieldByName('CODIGO').AsInteger;
    CDS_RELTURMASERIEALU.FieldByName('CODALUNO').AsInteger := CDS_CADALUNO.fieldByName('CODIGO').AsInteger;
    CDS_RelTurmaSerieAlu.FieldByName('ANOLETIVO').AsInteger := CDS_CadAluAnual.FieldByName('ANO').AsInteger;
    CDS_RelTurmaSerieAlu.Post;

    //ordena os numeros dos alunos da sala em ordem alfabetica

    dataf :=  strtodate('01/02/'+CDS_CadAluAnual.FieldByName('ANO').AsString);


    if(date < dataf )then
    begin
      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT NOME,R.codigo, CODALUNO,CODSERIE,ANOLETIVO,NUMERO FROM relturmaseriealu R INNER join CADALUNO A ON codALUNO = A.CODIGO AND CODSERIE = '+CDS_Serie.fieldByName('CODIGO').AsString+' AND anoletivo = '+CDS_CadAluAnual.fieldByName('ANO').AsString + ' AND R.CANCEL_MATRICULA <> ' + QUOTEDSTR('V') + ' ORDER by nome');
      DBX_Teste.Active:=True;

      DBX_Teste.First;
      //laco:=;
      numero:=1;
      while not DBX_Teste.Eof do
      begin

        CDS_RelTurmaSerieAlu.Active:=False;
        DBX_RelTurmaSerieAlu.Active:=False;
        DBX_RelTurmaSerieAlu.SQL.Clear;
        DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = ' + CDS_Serie.fieldByName('CODIGO').AsString + ' AND R.anoletivo = ' + CDS_CadAluAnual.fieldByName('ANO').AsString + ' AND R.CODALUNO = ' + DBX_Teste.fieldByName('CODALUNO').AsString);
        DBX_RelTurmaSerieAlu.Active:=True;
        CDS_RelTurmaSerieAlu.Active:=True;

        CDS_RelTurmaSerieAlu.Edit;
        CDS_RelTurmaSerieAlu.FieldByName('NUMERO').AsInteger := numero;
        CDS_RelTurmaSerieAlu.Post;
        DBX_Teste.Next;

        //laco:=DBX_Teste.Eof;

        numero:=numero+1;
      end;
      //endwh
    end
    //atribui ao aluno atual o proximo numero
    else if(CDS_Serie.FieldByName('CODIGO').AsInteger <> cod)then
    begin
      if CDS_RelTurmaSerieAlu.FieldByName('numero').AsString <> null then
      begin
        CDS_RelTurmaSerieAlu.Edit;
        CDS_RelTurmaSerieAlu.FieldByName('numero').AsInteger := 0;
        CDS_RelTurmaSerieAlu.Post;
      end;

      CDS_RelTurmaSerieAlu.Active:=False;
      DBX_RelTurmaSerieAlu.Active:=False;
      DBX_RelTurmaSerieAlu.SQL.Clear;
      DBX_RelTurmaSerieAlu.SQL.Add('SELECT A.NOME,R.codigo, R.CODALUNO,R.CODSERIE,R.ANOLETIVO,R.NUMERO,R.Cancel_Matricula FROM relturmaseriealu R INNER join CADALUNO A ON R.codALUNO = A.CODIGO AND R.CODSERIE = ' + CDS_Serie.fieldByName('CODIGO').AsString + ' AND R.anoletivo = ' + CDS_CadAluAnual.FieldByName('ANO').AsString + ' AND R.CANCEL_MATRICULA <> '+ QUOTEDSTR('V') + ' ORDER by R.numero');
      //showmessage(DBX_RelTurmaSerieAlu.Sql.TExt);
      DBX_RelTurmaSerieAlu.Active:=True;
      CDS_RelTurmaSerieAlu.Active:=True;


      CDS_RelTurmaSerieAlu.Last;
      //CDS_RelTurmaSerieAlu.Prior;
      //showmessage('codigo é '+CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString+'E O NUMERO '+CDS_RelTurmaSerieAlu.FieldByName('NUMERO').AsString);
      if (CDS_RelTurmaSerieAlu.RecordCount <> 1) then
      begin
        numero := CDS_RelTurmaSerieAlu.fieldByName('numero').AsInteger;
      end
      else
      begin
        numero := 0;
      end;
      numero := numero + 1;

      CDS_RelTurmaSerieAlu.Active:=False;
      DBX_RelTurmaSerieAlu.Active:=False;
      DBX_RelTurmaSerieAlu.SQL.Clear;
      DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = ' + CDS_Serie.fieldByName('CODIGO').AsString+' AND R.anoletivo = '+CDS_CadAluAnual.fieldByName('ANO').AsString+' AND R.CODALUNO = '+CDS_CadAluno.fieldByName('CODigO').AsString);
      DBX_RelTurmaSerieAlu.Active:=True;
      CDS_RelTurmaSerieAlu.Active:=True;

      CDS_RelTurmaSerieAlu.Edit;
      CDS_RelTurmaSerieAlu.FieldByName('NUMERO').AsInteger:=numero;
      CDS_RelTurmaSerieAlu.Post;
    end
    else
    begin
      showmessage('Aluno já está matriculado nesta turma!');
      Exit;
    end;
    //endi

    CDS_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo');
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;
  end;
  //endth
  showmessage('Operação realizada com sucesso!');
  Close;
except
  showmessage('Operação falhou!');
end;
end;

procedure TFrmCadAluTurma.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadAluTurma.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Serie.Active:=True;
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_Serie.Active:=True;
    CDS_RELTURMASERIEALU.Active:=True;
  end;
end;

procedure TFrmCadAluTurma.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{if FrmDados.Cds_RelTurmaSerieAlu.RecordCount = 0 then
     exit;
  //endi
//  Icon := TBitmap.Create;
  if (Column.FieldName = 'INS') then
  begin
    with dbgrid1.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_RelTurmaSerieAlu.FieldByName('').asString = 'F') then
        Lista_Img.GetBitmap(1, TBitmap);
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;}
end;

end.

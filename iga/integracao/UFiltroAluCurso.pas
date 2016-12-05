unit UFiltroAluCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroAluCurso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EDInformacao: TEdit;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    CBXCampo: TComboBox;
    CBXOrdPor: TComboBox;
    CBXOperacao: TComboBox;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroAluCurso: TFrmFiltroAluCurso;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmFiltroAluCurso.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFiltroAluCurso.BtnOKClick(Sender: TObject);
var
  CONDICAO:INTEGER;
  CAMPO:STRING;
  OPERACAO:STRING;
  ORDEM:STRING;
  SQL:STRING;
begin

  if(EDInformacao.Text='')then
    Exit;
  CONDICAO:=CBXCampo.ItemIndex;
  CASE CONDICAO OF
    0:CAMPO:='CODIGO ';
    1:CAMPO:='A.COD_ALUNO = C.CODIGO AND C.NOME ';
    2:CAMPO:='COD_ALUNO ';
    3:CAMPO:='A.COD_CURSO = S.CODIGO AND S.NOME ';
    4:CAMPO:='COD_CURSO ';
    5:CAMPO:='VALOR ';
  ELSE
    EXIT;
  END;

  CONDICAO:=CBXOrdPor.ItemIndex;
  CASE CONDICAO OF
    0:ORDEM:=' ORDER BY CODIGO';
    1:ORDEM:=' ORDER BY COD_ALUNO';
    2:ORDEM:=' ORDER BY COD_CURSO';
    3:ORDEM:=' ORDER BY VALOR';
  ELSE
    ORDEM:='';
  END;

  CONDICAO:=CBXOperacao.ItemIndex;
  CASE CONDICAO OF
    0:OPERACAO:='= ';
    1:OPERACAO:='<> ';
    2:OPERACAO:='<= ';
    3:OPERACAO:='>= ';
    4:OPERACAO:='< ';
    5:OPERACAO:='> ';
    6:OPERACAO:='LIKE '+QUOTEDSTR('%'+EDInformacao.Text+'%');
  ELSE
    EXIT;
  END;

  if (CBXOperacao.ItemIndex<=5)then
  begin
    SQL:=CAMPO + OPERACAO + QUOTEDSTR(EDInformacao.Text) + ORDEM;
  end
  else
  begin
    SQL:= CAMPO + OPERACAO + ORDEM;
  end;

  if(CBXCampo.ItemIndex=1)then
  begin
    WITH FrmDados do
    begin
      {DBX_AluCurso.Active:=False;
      DBX_AluCurso.SQL.Clear;
      DBX_AluCurso.SQL.Add('SELECT A.* FROM ALUNOCURSO A,CADALUNO C WHERE '+SQL);
      //showmessage(dbx_alucurso.SQL.Text);
      DBX_AluCurso.Active:=True;
      CDS_AluCurso.Refresh;}
    END;
    //endth
  end
  else if(CBXCampo.ItemIndex=3)then
  begin
    WITH FrmDados do
    begin
      {DBX_AluCurso.Active:=False;
      DBX_AluCurso.SQL.Clear;
      DBX_AluCurso.SQL.Add('SELECT A.* FROM ALUNOCURSO A,CADCURSO S WHERE '+SQL);
      //showmessage(dbx_alucurso.SQL.Text);
      DBX_AluCurso.Active:=True;
      CDS_AluCurso.Refresh;}
    END;
  end
  else
  begin
    WITH FrmDados do
    begin
      {DBX_AluCurso.Active:=False;
      DBX_AluCurso.SQL.Clear;
      DBX_AluCurso.SQL.Add('SELECT A.* FROM ALUNOCURSO A WHERE '+SQL);
      //showmessage(dbx_alucurso.SQL.Text);
      DBX_AluCurso.Active:=True;
      CDS_AluCurso.Refresh;}
    END;
  end;
  //endif
  CLOSE;
end;

procedure TFrmFiltroAluCurso.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.

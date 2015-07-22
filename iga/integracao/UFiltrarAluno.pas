unit UFiltrarAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroAluno = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    EDInformacao: TEdit;
    CBXCampo: TComboBox;
    CBXOrdPor: TComboBox;
    CBXOperacao: TComboBox;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroAluno: TFrmFiltroAluno;

implementation

uses UDados, UPesqAluno;

{$R *.dfm}

procedure TFrmFiltroAluno.BtnOKClick(Sender: TObject);
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
    1:CAMPO:='NOME_PAI ';
    2:CAMPO:='NOME_MAE ';
    3:CAMPO:='NOME ';
    4:CAMPO:='ENDERECO ';
    5:CAMPO:='CEP ';
    6:CAMPO:='BAIRRO ';
    7:CAMPO:='TELEFONE ';
    8:CAMPO:='EMAIL ';
    9:CAMPO:='DATA_NASC ';
    10:CAMPO:='LOC_NASC ';
    11:CAMPO:='PERIODO ';
    12:CAMPO:='DOC_PENDENTES ';
    13:CAMPO:='DATA_MATRICULA ';
    14:CAMPO:='DATA_CANCEL ';
    15:CAMPO:='VALOR ';
    16:CAMPO:='DESCONTO ';
    17:CAMPO:='DATA_PGMTO ';
    18:CAMPO:='RESP_FINANCEIRO ';
  ELSE
    EXIT;
  END;

  CONDICAO:=CBXOrdPor.ItemIndex;
  CASE CONDICAO OF
    0:ORDEM:='CODIGO ';
    1:ORDEM:='NOME_PAI ';
    2:ORDEM:='NOME_MAE ';
    3:ORDEM:='NOME ';
    4:ORDEM:='ENDERECO ';
    5:ORDEM:='CEP ';
    6:ORDEM:='BAIRRO ';
    7:ORDEM:='TELEFONE ';
    8:ORDEM:='EMAIL ';
    9:ORDEM:='DATA_NASC ';
    10:ORDEM:='LOC_NASC ';
    11:ORDEM:='PERIODO ';
    12:ORDEM:='DOC_PENDENTES ';
    13:ORDEM:='DATA_MATRICULA ';
    14:ORDEM:='DATA_CANCEL ';
    15:ORDEM:='VALOR ';
    16:ORDEM:='DESCONTO ';
    17:ORDEM:='DATA_PGMTO ';
    18:ORDEM:='RESP_FINANCEIRO ';
  ELSE
    ORDEM:='';
  END;

  CONDICAO:=CBXOperacao.ItemIndex;
  CASE CONDICAO OF
    0:OPERACAO:='=';
    1:OPERACAO:='<>';
    2:OPERACAO:='<=';
    3:OPERACAO:='>=';
    4:OPERACAO:='<';
    5:OPERACAO:='>';
    6:OPERACAO:='LIKE '+QUOTEDSTR('%'+EDInformacao.Text+'%');
  ELSE
    EXIT;
  END;

  if (CBXOperacao.ItemIndex<=5) then
  begin
    SQL:=CAMPO + OPERACAO + QUOTEDSTR(EDInformacao.Text) + ORDEM;
  end
  else
  begin
    SQL:= CAMPO + OPERACAO + ORDEM;
  end;

  WITH FrmDados do
  begin
    DBX_CadALUNO.Active:=False;
    DBX_CadALUNO.SQL.Clear;
    DBX_CadALUNO.SQL.Add('SELECT * FROM CADALUNO WHERE '+SQL);
    DBX_CadALUNO.Active:=True;
    CDS_CADALUNO.Refresh;

    CDS_CadAluAnual.Active := False;
    CDS_CadAluAnualCODALU.DefaultExpression := CDS_CadAluno.FieldByName('codigo').AsString;
    DBX_CadAluAnual.Active := False;
    DBX_CadAluAnual.SQL.Clear;
    DBX_CadAluAnual.SQL.Add('SELECT * FROM CADALUNOANUAL WHERE CODALU = 0' + CDS_CadAluno.FieldByName('codigo').AsString + ' order by ANO');
    DBX_CadAluAnual.Active := True;
    CDS_CadAluAnual.Active := True;

    if FrmPesqAluno <> nil then
    begin
      FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
      FrmPEsqAluno.verificaBtn;
    end;
    //endi
  END;
  //endth
  CLOSE;
end;

procedure TFrmFiltroAluno.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmFiltroAluno.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.

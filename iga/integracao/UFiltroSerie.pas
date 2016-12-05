unit UFiltroSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroSerie = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroSerie: TFrmFiltroSerie;

implementation

uses UDados, UPesqSerie;

{$R *.dfm}

procedure TFrmFiltroSerie.BtnOKClick(Sender: TObject);
var
  CONDICAO:INTEGER;
  CAMPO:STRING;
  OPERACAO:STRING;
  ORDEM:STRING;
  SQL:STRING;
  sAno:String;
begin
  if FrmPesqSerie.EdGeralAno.GetTextLen = 4 then
  begin
    sAno := ' and ANO = ' + FrmPesqSerie.EdGeralAno.Text
  end
  else
  begin
    sAno := '';
  end;
  //endi

  if(EDInformacao.Text='')then
    Exit;
  CONDICAO:=CBXCampo.ItemIndex;
  CASE CONDICAO OF
    0:CAMPO:='CODIGO ';
    1:CAMPO:='SERIE ';
    2:CAMPO:='GRAU ';
    3:CAMPO:='TURMA ';
    4:CAMPO:='PERIODO ';
  ELSE
    EXIT;
  END;

  CONDICAO:=CBXOrdPor.ItemIndex;
  CASE CONDICAO OF
    0:ORDEM:='CODIGO ';
    1:ORDEM:='SERIE ';
    2:ORDEM:='GRAU ';
    3:ORDEM:='TURMA ';
    4:ORDEM:='PERIODO ';
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
    SQL:=CAMPO + OPERACAO + QUOTEDSTR(EDInformacao.Text) + sAno + ORDEM;
  end
  else
  begin
    SQL:= CAMPO + OPERACAO +sAno+ ORDEM;
  end;

  WITH FrmDados do
  begin
    DBX_Serie.Active:=False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE '+SQL);
    DBX_Serie.Active:=True;
    CDS_Serie.Refresh;
  END;
  //endth
  CLOSE;
end;

procedure TFrmFiltroSerie.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;

end.

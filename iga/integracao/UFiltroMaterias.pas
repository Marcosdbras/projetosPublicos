unit UFiltroMaterias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroMaterias = class(TForm)
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
  FrmFiltroMaterias: TFrmFiltroMaterias;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmFiltroMaterias.BtnOKClick(Sender: TObject);
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
    1:CAMPO:='NOME ';
    2:CAMPO:='DESCRICAO ';
    3:CAMPO:='QNTD_AULAS ';
  ELSE
    EXIT;
  END;

  CONDICAO:=CBXOrdPor.ItemIndex;
  CASE CONDICAO OF
    0:ORDEM:='CODIGO ';
    1:ORDEM:='NOME ';
    2:ORDEM:='DESCRICAO ';
    3:ORDEM:='QNTD_AULAS ';
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
    DBX_CadMateria.Active:=False;
    DBX_CadMateria.SQL.Clear;
    DBX_CadMateria.SQL.Add('SELECT * FROM CADMATERIAS WHERE '+SQL);
    DBX_CadMateria.Active:=True;
    CDS_CADMateria.Refresh;
  END;
  //endth
  CLOSE;
end;

procedure TFrmFiltroMaterias.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmFiltroMaterias.FormShow(Sender: TObject);
begin
  EdInformacao.setFocus;
end;

end.

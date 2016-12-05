unit UFiltroEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroEvento = class(TForm)
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
  FrmFiltroEvento: TFrmFiltroEvento;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmFiltroEvento.BtnOKClick(Sender: TObject);
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
    2:CAMPO:='DATA ';
    3:CAMPO:='VALOR ';
  ELSE
    EXIT;
  END;

  CONDICAO := CBXOrdPor.ItemIndex;
  CASE CONDICAO OF
    0:ORDEM := 'CODIGO ';
    1:ORDEM := 'NOME ';
    2:ORDEM := 'DATA ';
    3:ORDEM := 'VALOR ';
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
    DBX_Evento.Active:=False;
    DBX_Evento.SQL.Clear;
    DBX_Evento.SQL.Add('SELECT * FROM EVENTOS WHERE '+SQL);
    DBX_Evento.Active := True;
    CDS_Evento.Refresh;
  END;
  //endth
  CLOSE;
end;

procedure TFrmFiltroEvento.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmFiltroEvento.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.

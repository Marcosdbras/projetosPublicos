unit ufiltrosangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroSangria = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    EDInformacao: TEdit;
    CBXCampo: TComboBox;
    CBXOperacao: TComboBox;
    Label4: TLabel;
    cbxordem: TComboBox;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SQL: String;
  end;

var
  FrmFiltroSangria: TFrmFiltroSangria;

implementation

uses UDados, UPesqsangria, UGERAL;

{$R *.dfm}

procedure TFrmFiltroSangria.BtnOKClick(Sender: TObject);
var
  CONDICAO:INTEGER;
  CAMPO:STRING;
  OPERACAO:STRING;
  ORDEM:STRING;
  SDESCRICAO:STRING;
begin

  if(EDInformacao.Text='')then
    Exit;
  CONDICAO := CBXCampo.ItemIndex;
  CASE CONDICAO OF
    0:CAMPO:='where MOTIVO ';
    1:CAMPO:='where DATA ';
    2:CAMPO:='where VALOR ';
  ELSE
    EXIT;
  END;

  ordem:=' ORDER BY '+quotedstr(CBXOrdem.Text);

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

  SDESCRICAO := EDInformacao.Text;

  IF CBXCampo.ItemIndex = 1 THEN
     SDESCRICAO := BAR_IS_POINT(SDESCRICAO);
  //ENDI

  

  SQL := CAMPO + OPERACAO + QUOTEDSTR(SDESCRICAO) + ORDEM;

  WITH FrmDados do
  begin
    DBX_Sangria.Active:=False;
    DBX_Sangria.SQL.Clear;
    DBX_Sangria.SQL.Add('SELECT S.* FROM SANGRIA S '+SQL);
    DBX_Sangria.Active:=True;
    CDS_Sangria.Refresh;
  END;
  //endth


  CLOSE;
end;

procedure TFrmFiltroSangria.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;



procedure TFrmFiltroSangria.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.

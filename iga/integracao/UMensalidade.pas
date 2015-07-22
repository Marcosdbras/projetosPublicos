unit UMensalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons,DB, Mask;

type
  TFrmMensalidade = class(TForm)
    Label1: TLabel;
    CBJan: TDBCheckBox;
    CBFev: TDBCheckBox;
    CBMar: TDBCheckBox;
    CBAbr: TDBCheckBox;
    CBMai: TDBCheckBox;
    CBJun: TDBCheckBox;
    CBJul: TDBCheckBox;
    CBAgo: TDBCheckBox;
    CBSet: TDBCheckBox;
    CBOut: TDBCheckBox;
    CBNov: TDBCheckBox;
    CBDez: TDBCheckBox;
    BtnOK: TBitBtn;
    EdAno: TMaskEdit;
    BtnGeraContas: TBitBtn;
    BtnEstContas: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure EDAnoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGeraContasClick(Sender: TObject);
    procedure BtnEstContasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensalidade: TFrmMensalidade;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmMensalidade.BtnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMensalidade.EDAnoKeyPress(Sender: TObject; var Key: Char);
begin
  with FrmDados do
  begin
    if Key = #13 then
    begin
      CDS_Mensalidade.Active:=False;
      CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      CDS_MensalidadeANOLETIVO.DefaultExpression:=EdAno.Text;
      DBX_Mensalidade.Active:=False;
      DBX_Mensalidade.SQL.Clear;
      DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = '+CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = '+quotedstr(EDAno.Text));
      DBX_Mensalidade.Active:=True;
      CDS_Mensalidade.Active:=True;

      if FrmDados.CDS_Mensalidade.RecordCount <> 0 then
      begin
        CDS_Mensalidade.Edit;
      end
      else
      begin
        CDS_Mensalidade.Append;
        CDS_Mensalidade.FieldByName('JAN').AsString:='N';
        CDS_Mensalidade.FieldByName('FEV').AsString:='N';
        CDS_Mensalidade.FieldByName('MAR').AsString:='N';
        CDS_Mensalidade.FieldByName('ABR').AsString:='N';
        CDS_Mensalidade.FieldByName('MAI').AsString:='N';
        CDS_Mensalidade.FieldByName('JUN').AsString:='N';
        CDS_Mensalidade.FieldByName('JUL').AsString:='N';
        CDS_Mensalidade.FieldByName('AGO').AsString:='N';
        CDS_Mensalidade.FieldByName('SETE').AsString:='N';
        CDS_Mensalidade.FieldByName('OUT').AsString:='N';
        CDS_Mensalidade.FieldByName('NOV').AsString:='N';
        CDS_Mensalidade.FieldByName('DEZ').AsString:='N';
      end;
      //endi
    end;
    //endi
  end;
  //endth
end;

procedure TFrmMensalidade.BtnGeraContasClick(Sender: TObject);
begin
  if not bContasRecI then
  begin
    showmessage('Este usuário não possui privilégios para realizar esta operação!');
    Exit;
  end;
  //endi
  if FrmDados.CDS_Mensalidade.FieldByName('ContasRec').AsString = 'S' then
  begin
    showmessage('Esta mensalidade ja foi gerada!');
  end;
  //endi
  geraContas;
end;

procedure TFrmMensalidade.BtnEstContasClick(Sender: TObject);
begin
  if not bContasRecE then
  begin
    showmessage('Este usuário não possui privilégios para realizar esta operação!');
    Exit;
  end;
  //endi
  if FrmDados.CDS_Mensalidade.FieldByName('ContasRec').AsString <> 'S' then
  begin
    showmessage('Esta mensalidade não foi gerada!');
    exit;
  end;
  //endi
  estornaConta;
end;

end.

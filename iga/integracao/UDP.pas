unit UDP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, DB;

type
  TFrmDP = class(TForm)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    BtnSair: TBitBtn;
    LblNomeAlu: TLabel;
    Label3: TLabel;
    EDValor: TDBEdit;
    CBXDP: TDBLookupComboBox;
    BtnMensalidade: TBitBtn;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBXDPClick(Sender: TObject);
    procedure EDValorChange(Sender: TObject);
    procedure EDValorClick(Sender: TObject);
    procedure CBXDPExit(Sender: TObject);
    procedure BtnMensalidadeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDP: TFrmDP;

implementation

uses UDados, UMensalidade, uGeral;

{$R *.dfm}

procedure TFrmDP.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDP.BtnInserirClick(Sender: TObject);
begin
  if not bAlunosI then
  begin
    showmessage('Este usuário não possui privilégios para inserir neste cadastro!');
    Exit;
  end
  else
  begin
    FrmDados.CDS_DP.Append;

    BtnInserir.Enabled:=False;
    BtnEditar.Enabled:=False;
    BtnExcluir.Enabled:=False;
    BtnConfirmar.Enabled:=True;
    BtnCancelar.Enabled:=True;
    BtnSair.Enabled:=False;
    DBNavigator1.Enabled:=False;
  end;
  //endi
end;

procedure TFrmDP.BtnEditarClick(Sender: TObject);
begin
  if not bAlunosA then
  begin
    showmessage('Este usuário não possui privilégios para editar este cadastro!');
    Exit;
  end;
  //endi
  FrmDados.CDS_DP.Edit;

  BtnInserir.Enabled:=False;
  BtnEditar.Enabled:=False;
  BtnExcluir.Enabled:=False;
  BtnConfirmar.Enabled:=True;
  BtnCancelar.Enabled:=True;
  BtnSair.Enabled:=False;
  DBNavigator1.Enabled:=False;
end;

procedure TFrmDP.BtnExcluirClick(Sender: TObject);
begin
  if not bAlunosE then
    showmessage('Este usuário não possui privilégios para excluir este cadastro!')
  else
    FrmDados.CDS_DP.Delete;
  if(FrmDados.CDS_DP.RecordCount = 0) then
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=False;
    BtnExcluir.Enabled:=False;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
  end
  else
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=True;
    BtnExcluir.Enabled:=True;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
  end;
end;

procedure TFrmDP.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_DP.Post;

  BtnInserir.Enabled:=True;
  BtnEditar.Enabled:=True;
  BtnExcluir.Enabled:=True;
  BtnConfirmar.Enabled:=False;
  BtnCancelar.Enabled:=False;
  BtnSair.Enabled:=True;
  DBNavigator1.Enabled:=True;
end;

procedure TFrmDP.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_DP.Cancel;
  if(FrmDados.CDS_DP.RecordCount = 0) then
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=False;
    BtnExcluir.Enabled:=False;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
    BtnSair.Enabled:=True;
    DBNavigator1.Enabled:=True;
  end
  else
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=True;
    BtnExcluir.Enabled:=True;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
    BtnSair.Enabled:=True;
    DBNavigator1.Enabled:=True;
  end;
end;

procedure TFrmDP.FormCreate(Sender: TObject);
begin
  LblNomeAlu.Caption:=FrmDados.CDS_CadAluno.fieldByName('NOME').AsString;
  if(FrmDados.CDS_DP.RecordCount = 0) then
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=False;
    BtnExcluir.Enabled:=False;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
  end
  else
  begin
    BtnInserir.Enabled:=True;
    BtnEditar.Enabled:=True;
    BtnExcluir.Enabled:=True;
    BtnConfirmar.Enabled:=False;
    BtnCancelar.Enabled:=False;
  end;
  FrmDados.DBX_CadMateria.Active:=True;
  FrmDados.CDS_CadMateria.Active:=True;
end;

procedure TFrmDP.CBXDPClick(Sender: TObject);
begin
  if FrmDados.CDS_DP.RecordCount = 0 then
  begin
    if not bAlunosI then
      Exit;
  end
  else
  begin
    if not bAlunosA then
      Exit;
    //endi
  end;
  //endi
    if(FrmDados.CDS_DP.RecordCount = 0) then
    begin
      BtnInserir.Enabled:=False;
      BtnEditar.Enabled:=False;
      BtnExcluir.Enabled:=False;
      BtnConfirmar.Enabled:=True;
      BtnCancelar.Enabled:=True;
      BtnSair.Enabled:=False;
      DBNavigator1.Enabled:=False;
    end
    else
    begin
      BtnInserir.Enabled:=False;
      BtnEditar.Enabled:=False;
      BtnExcluir.Enabled:=False;
      BtnConfirmar.Enabled:=True;
      BtnCancelar.Enabled:=True;
      BtnSair.Enabled:=False;
      DBNavigator1.Enabled:=False;
    end;
end;

procedure TFrmDP.EDValorChange(Sender: TObject);
begin
 { if (FrmDados.CDS_DP.State <> dsedit) and (FrmDados.CDS_DP.State <> dsinsert) then
  begin
    if(FrmDados.CDS_DP.RecordCount = 0) then
    begin
      BtnInserir.Enabled:=True;
      FrmDP.BtnInserir.Click;
    end
    else
    begin
      BtnEditar.Enabled:=True;
      FrmDP.BtnEditar.Click;
    end;
  end;  }
end;

procedure TFrmDP.EDValorClick(Sender: TObject);
begin
  if (FrmDados.CDS_DP.State <> dsedit) and (FrmDados.CDS_DP.State <> dsinsert) then
  begin
    if(FrmDados.CDS_DP.RecordCount = 0) then
    begin
      BtnInserir.Enabled:=True;
      FrmDP.BtnInserir.Click;
    end
    else
    begin
      BtnEditar.Enabled:=True;
      FrmDP.BtnEditar.Click;
    end;
  end;
end;

procedure TFrmDP.CBXDPExit(Sender: TObject);
begin
//  FrmDados.CDS_DP.Post;
end;

procedure TFrmDP.BtnMensalidadeClick(Sender: TObject);
var
  zerar:boolean;
begin
with FrmDados do
begin
  CDS_Mensalidade.Active:=False;
  CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
  CDS_MensalidadeANOLETIVO.DefaultExpression:=CDS_Indices.FieldByName('ANO').AsString;
  CDS_MensalidadeCOdDP.DefaultExpression:=CDS_DP.FieldByName('CODIGO').AsString;
  DBX_Mensalidade.Active:=False;
  DBX_Mensalidade.SQL.Clear;
  DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = ' + CDS_Indices.FieldByName('ANO').AsString + ' and coddp = ' + CDS_DP.FieldByName('CODIGO').AsString);
  DBX_Mensalidade.Active := True;
  CDS_Mensalidade.Active := True;

  if FrmDados.CDS_Mensalidade.RecordCount <> 0 then
  begin
    CDS_Mensalidade.Edit;
    zerar:=false;
  end
  else
  begin
    CDS_Mensalidade.Append;
    zerar:=true;
  end;

  FrmMensalidade:=TFrmMensalidade.Create(self);
  FrmMensalidade.EDAno.Text:=FrmDados.CDS_Indices.fieldByName('ANO').AsString;
  if zerar then
  begin
    with FrmMensalidade do
    begin
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
  end;
  FrmMensalidade.ShowModal;
  FrmMensalidade.Free;
end;
//endth
end;

procedure TFrmDP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmDP := nil;
end;

end.

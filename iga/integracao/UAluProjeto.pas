unit UAluProjeto;
                           
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB;

type
  TFrmAluProjeto = class(TForm)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    BtnSair: TBitBtn;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    LblAluno: TLabel;
    BtnMensalidade: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnMensalidadeClick(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAluProjeto: TFrmAluProjeto;

implementation

uses UDados, UMensalidade, uGeral;

{$R *.dfm}

procedure TFrmAluProjeto.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_AluProjeto.Cancel;
  if FrmDados.CDS_Projeto.RecordCount = 0 then
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

procedure TFrmAluProjeto.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_AluProjeto.Post;
  if FrmDados.CDS_Projeto.RecordCount = 0 then
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

procedure TFrmAluProjeto.FormCreate(Sender: TObject);
begin
  LblAluno.Caption:=FrmDados.CDS_CadAluno.fieldByName('NOME').AsString;
    if FrmDados.CDS_Projeto.RecordCount = 0 then
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
    BtnSair.Enabled:=True;
end;

procedure TFrmAluProjeto.BtnInserirClick(Sender: TObject);
begin
  if not bAlunosI then
  begin
    showmessage('Este usuário não possui privilégios para inserir neste cadastro!');
    Exit;
  end;
  //endi

  FrmDados.CDS_AluProjeto.Append;
  BtnInserir.Enabled:=False;
  BtnEditar.Enabled:=False;
  BtnExcluir.Enabled:=False;
  BtnConfirmar.Enabled:=True;
  BtnCancelar.Enabled:=True;
  BtnSair.Enabled:=False;
  DBNavigator1.Enabled:=False;
end;

procedure TFrmAluProjeto.BtnEditarClick(Sender: TObject);
begin
  if not bAlunosA then
  begin
    showmessage('Este usuário não possui privilégios para editar este cadastro!');
    Exit;
  end;
  //endi

  FrmDados.CDS_AluProjeto.Edit;
  BtnInserir.Enabled:=False;
  BtnEditar.Enabled:=False;
  BtnExcluir.Enabled:=False;
  BtnConfirmar.Enabled:=True;
  BtnCancelar.Enabled:=True;
  BtnSair.Enabled:=False;
  DBNavigator1.Enabled:=False;
end;

procedure TFrmAluProjeto.BtnExcluirClick(Sender: TObject);
begin
  if not bAlunosE then
  begin
    showmessage('Este usuário não possui privilégios para excluir este cadastro!');
    Exit;
  end;
  //endi

  if FrmDados.CDS_AluProjeto.RecordCount = 0 then
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
    //endi
end;

procedure TFrmAluProjeto.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAluProjeto.BtnMensalidadeClick(Sender: TObject);
var
  zerar:boolean;
begin
with FrmDados do
begin
  CDS_Mensalidade.Active:=False;
  CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
  CDS_MensalidadeANOLETIVO.DefaultExpression:=CDS_Indices.FieldByName('ANO').AsString;
  CDS_MensalidadeCOdprojeto.DefaultExpression:=CDS_Projeto.FieldByName('CODIGO').AsString;
  CDS_MensalidadeCODDP.DefaultExpression := '';
  DBX_Mensalidade.Active:=False;
  DBX_Mensalidade.SQL.Clear;
  DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = ' + CDS_Indices.FieldByName('ANO').AsString + ' and codpROJETO = ' + CDS_Projeto.FieldByName('CODIGO').AsString);
  DBX_Mensalidade.Active:=True;
  CDS_Mensalidade.Active:=True;

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

procedure TFrmAluProjeto.DBEdit4Click(Sender: TObject);
begin
  if not (FrmDados.CDS_AluProjeto.State in [dsedit,dsinsert]) then
  begin
    if(FrmDados.CDS_AluProjeto.RecordCount = 0) then
    begin
      BtnInserir.Enabled := True;
      BtnInserir.Click;
    end
    else
    begin
      BtnEditar.Enabled := True;
      BtnEditar.Click;
    end;
    //endi
  end;
  //endi
end;

procedure TFrmAluProjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmAluProjeto := nil;
end;

end.

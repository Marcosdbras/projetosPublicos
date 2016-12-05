unit UProjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  TFrmProjeto = class(TForm)
    Panel1: TPanel;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BtnImprimir: TButton;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure BtnMensalidadeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProjeto: TFrmProjeto;

implementation

uses UDados, UMensalidade, uGeral, UMenuPrincipal;

{$R *.dfm}

procedure TFrmProjeto.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Projeto.Cancel;
  if FrmDados.CDS_Projeto.RecordCount = 0 then
    begin
      BtnInserir.Enabled:=True;
      BtnExcluir.Enabled:=False;
      BtnConfirmar.Enabled:=False;
      BtnCancelar.Enabled:=False;
      BtnSair.Enabled:=True;
    end
    else
    begin
      BtnInserir.Enabled:=True;
      BtnExcluir.Enabled:=True;
      BtnConfirmar.Enabled:=False;
      BtnCancelar.Enabled:=False;
      BtnSair.Enabled:=True;
    end;
end;

procedure TFrmProjeto.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_Projeto.State in [dsedit,dsinsert]) then
    FrmDados.CDS_Projeto.Post;
  //endi
end;

procedure TFrmProjeto.BtnInserirClick(Sender: TObject);
begin
  if not bProjetoI then
  begin
    showmessage('Este usuário não possui privilégios para inserir neste cadastro!');
    Exit;
  end;

  FrmDados.CDS_Projeto.Append;
  DBEdit7.SetFocus;
end;

procedure TFrmProjeto.BtnEditarClick(Sender: TObject);
begin
  if not bProjetoA then
  begin
    showmessage('Este usuário não possui privilégios para editar este cadastro!');
    Exit;
  end;
  FrmDados.CDS_Projeto.Edit;
end;

procedure TFrmProjeto.BtnExcluirClick(Sender: TObject);
begin
  if not bProjetoE then
  begin
    showmessage('Este usuário não possui privilégios para excluir este cadastro!');
    Exit;
  end;
  if  MessageDlg('Deseja realmente excluir este projeto dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_Projeto.Delete;
  //endi
end;

procedure TFrmProjeto.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmProjeto.DBEdit3Click(Sender: TObject);
begin
  if not bProjetoA then
  begin
    showmessage('Este usuário não possui privilégios para editar este cadastro!');
    Exit;
  end;

  if not(FrmDados.CDS_Projeto.State in [dsedit,dsinsert]) then
  begin
    FrmDados.CDS_Projeto.edit;
  end;
  //endi
end;

procedure TFrmProjeto.BtnMensalidadeClick(Sender: TObject);
var
  zerar:boolean;
begin
with FrmDados do
begin
  CDS_Mensalidade.Active:=False;
  CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
  CDS_MensalidadeANOLETIVO.DefaultExpression:=CDS_Indices.FieldByName('ANO').AsString;
  CDS_MensalidadeCOdprojeto.DefaultExpression:=CDS_Projeto.FieldByName('CODIGO').AsString;
  DBX_Mensalidade.Active:=False;
  DBX_Mensalidade.SQL.Clear;
  DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = ' + CDS_Indices.FieldByName('ANO').AsString + ' and codpROJETO = ' + CDS_Projeto.FieldByName('CODIGO').AsString);
  DBX_Mensalidade.Active := True;
  CDS_Mensalidade.Active := True;

  if FrmDados.CDS_Mensalidade.RecordCount <> 0 then
  begin
    CDS_Mensalidade.Edit;
    zerar := false;
  end
  else
  begin
    CDS_Mensalidade.Append;
    zerar := true;
  end;

  FrmMensalidade := TFrmMensalidade.Create(self);
  FrmMensalidade.EDAno.Text := FrmDados.CDS_Indices.fieldByName('ANO').AsString;
  if zerar then
  begin
    with FrmMensalidade do
    begin
      CDS_Mensalidade.FieldByName('JAN').AsString := 'N';
      CDS_Mensalidade.FieldByName('FEV').AsString := 'N';
      CDS_Mensalidade.FieldByName('MAR').AsString := 'N';
      CDS_Mensalidade.FieldByName('ABR').AsString := 'N';
      CDS_Mensalidade.FieldByName('MAI').AsString := 'N';
      CDS_Mensalidade.FieldByName('JUN').AsString := 'N';
      CDS_Mensalidade.FieldByName('JUL').AsString := 'N';
      CDS_Mensalidade.FieldByName('AGO').AsString := 'N';
      CDS_Mensalidade.FieldByName('SETE').AsString := 'N';
      CDS_Mensalidade.FieldByName('OUT').AsString := 'N';
      CDS_Mensalidade.FieldByName('NOV').AsString := 'N';
      CDS_Mensalidade.FieldByName('DEZ').AsString := 'N';
    end;
  end;
  FrmMensalidade.ShowModal;
  FrmMensalidade.Free;
end;
//endth
end;

procedure TFrmProjeto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmProjeto := nil;
end;

procedure TFrmProjeto.BtnImprimirClick(Sender: TObject);
begin
  FrmPrincipal.Impressao5.Click;
end;

end.

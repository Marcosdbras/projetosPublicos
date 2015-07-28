unit UAluPedInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, Buttons, DB;

type
  TFrmAluPedInf = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    PnlCadastro: TPanel;
    RGFolheto: TDBRadioGroup;
    RGNet: TDBRadioGroup;
    RGFaixaRua: TDBRadioGroup;
    RGFachada: TDBRadioGroup;
    RGRevista: TDBRadioGroup;
    RGJornal: TDBRadioGroup;
    RGPlaca: TDBRadioGroup;
    RGIndicado: TDBRadioGroup;
    EdRevista: TDBEdit;
    EdJornal: TDBEdit;
    EdIndicado: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RGInscricao: TDBRadioGroup;
    LblData: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Panel3: TPanel;
    PnlPosAtend: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    BtnSair: TBitBtn;
    BtnPosAtend: TBitBtn;
    BtnCadastro: TBitBtn;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPosAtendClick(Sender: TObject);
    procedure BtnCadastroClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure RGFolhetoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAluPedInf: TFrmAluPedInf;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmAluPedInf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FrmAluPedInf := nil;
end;

procedure TFrmAluPedInf.BtnPosAtendClick(Sender: TObject);
begin
   PnlPosAtend.Visible := True;
   PnlCadastro.Visible := False;
end;

procedure TFrmAluPedInf.BtnCadastroClick(Sender: TObject);
begin
  PnlCadastro.Visible := True;
  PnlPosAtend.Visible := False;
end;

procedure TFrmAluPedInf.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAluPedInf.BtnInserirClick(Sender: TObject);
begin
  if not bAluPedInfI then
  begin
    showmessage('Este usuário não possui privilégios para inserir nesta tela!');
    Exit;
  end;
  //endi

  FrmDados.CDS_AluPedInf.Append;
end;

procedure TFrmAluPedInf.BtnExcluirClick(Sender: TObject);
begin
  if not bAluPedInfI then
  begin
    showmessage('Este usuário não possui privilégios para deletar nesta tela!');
    Exit;
  end;
  //endi

  if MessageDlg('Deseja realmente excluir este aluno dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_AluPedInf.Delete;
  //endi
end;

procedure TFrmAluPedInf.RGFolhetoEnter(Sender: TObject);
begin
  if not(FrmDados.CDS_AluPedInf.State in [dsinsert,dsedit])then
    FrmDados.CDS_AluPedInf.Edit;
  //endi
end;

procedure TFrmAluPedInf.FormCreate(Sender: TObject);
begin
  PnlCadastro.Visible := True;
  PnlPosAtend.Visible := False;
end;

procedure TFrmAluPedInf.BtnConfirmarClick(Sender: TObject);
begin
  if Frmdados.CDS_AluPedInf.State in [dsedit,dsinsert] then
    FrmDados.CDS_AluPedInf.Post;
  //endi
end;

procedure TFrmAluPedInf.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_AluPedInf.Cancel;
end;

end.

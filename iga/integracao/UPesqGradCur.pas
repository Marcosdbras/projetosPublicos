unit UPesqGradCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls, Buttons, DB;

type
  TFrmPesqGradCur = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    CBXCurso: TDBLookupComboBox;
    DBText1: TDBText;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    BtnImprimir: TBitBtn;
    Label8: TLabel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqGradCur: TFrmPesqGradCur;

implementation

uses UDados, URelGradCurEF, URelGradCurEI, URelGradCurEM;

{$R *.dfm}

procedure TFrmPesqGradCur.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqGradCur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqGradCur := nil;
end;

procedure TFrmPesqGradCur.BtnInserirClick(Sender: TObject);
begin
  FrmDados.CDS_GradCur.Append;
end;

procedure TFrmPesqGradCur.BtnExcluirClick(Sender: TObject);
begin
  FrmDados.CDS_GradCur.Delete;
end;

procedure TFrmPesqGradCur.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_GradCur.Post;
end;

procedure TFrmPesqGradCur.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_GradCur.Cancel;
end;

procedure TFrmPesqGradCur.BtnImprimirClick(Sender: TObject);
var
  Nome : String;
begin
  Nome := FrmDados.CDS_GradCur.FieldByName('NomeCurso').AsString;
  if (Nome = 'Ensino M�dio')then
  begin
    FrmRelGradCurEM := TFrmRelGradCurEM.create(self);
    FrmRelGradCurEM.QuickRep1.previewmodal;
    FrmRelGradCurEM.free;
  end
  else
  if (Nome = 'Ensino Fundamental') then
  begin
    FrmRelGradCurEF := TFrmRelGradCurEF.create(self);
    FrmRelGradCurEF.QuickRep1.previewmodal;
    FrmRelGradCurEF.free;
  end
  else
  begin
    FrmRelGradCurEI := TFrmRelGradCurEI.create(self);
    FrmRelGradCurEI.QuickRep1.previewmodal;
    FrmRelGradCurEI.free;
  end;
end;

procedure TFrmPesqGradCur.DBEdit7Exit(Sender: TObject);
begin
  if (DBEdit7.Text <> 'Maternal') and (DBEdit7.Text <> 'Jardim I') and (DBEdit7.Text <>'Jardim II') and (DBEdit7.Text <> '1� Ano') and (DBEdit7.Text <>  '2� Ano') and (DBEdit7.Text <> '3� Ano') and (DBEdit7.Text <> '4� Ano') and (DBEdit7.Text <> '5� Ano') and (DBEdit7.Text <> '6� Ano') and (DBEdit7.Text <> '7� Ano') and (DBEdit7.Text <> '8� Ano') and (DBEdit7.Text <> '9� Ano') then
  begin
    Showmessage('� necess�rio que s�rie esteja com algum destes valores: Maternal, Jardim I, Jardim II, 1� Ano, 2� Ano, 3� Ano, 4� Ano, 5� Ano, 6� Ano, 7� Ano, 8� Ano ou 9� Ano');
    DBEdit7.SetFocus;
  end;
  //endi
end;

procedure TFrmPesqGradCur.DBEdit7Enter(Sender: TObject);
begin
  if not(FrmDados.CDS_GradCur.State in [dsedit,dsinsert]) then
  begin
    FrmDados.CDS_GradCur.Edit;
  end;
end;

end.

unit uPesqRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,DB;

type
  TFrmPesqRecibo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LblValor: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BtnPesqAlu: TBitBtn;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    BtnImprimir: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPesqAluClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqRecibo: TFrmPesqRecibo;

implementation

uses UDados, uGeral, UPesqContasRec, UProcAluno, URelRecibo, UBaixaConta,
  UFrmPesqContasRecNubia;

{$R *.dfm}

procedure TFrmPesqRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPesqRecibo := nil;
  Action := CaFree;
end;

procedure TFrmPesqRecibo.DBEdit1Exit(Sender: TObject);
begin
  LblValor.Caption := extenso(FrmDados.CDS_Recibo.FieldByName('VALOR').AsCurrency);
end;

procedure TFrmPesqRecibo.BtnInserirClick(Sender: TObject);
var
  num:integer;
begin
  if not bReciboI then
  begin
    showmessage('Este usuário não possui privilégios para inserir um novo recibo!');
    Exit;
  end;
  //endi
  
  with FrmDados do
  begin
    CDS_Recibo.Active := False;
    DBX_Recibo.Active := False;
    DBX_Recibo.SQL.Clear;
    DBX_Recibo.SQL.Add('select * from recibo order by num');
    DBX_Recibo.Active := True;
    CDS_Recibo.Active := True;

    CDS_Recibo.Last;
    num := CDS_Recibo.FieldByName('Num').AsInteger;

    CDS_Recibo.Append;
    CDS_Recibo.FieldByName('NUM').AsInteger := num + 1;
    CDS_Recibo.FieldByName('DATA').AsDateTime := date;
  end;
  //endth
end;

procedure TFrmPesqRecibo.BtnExcluirClick(Sender: TObject);
begin
  if bReciboE then
  begin
    if MessageDlg('Deseja realmente excluir este recibo dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_Recibo.Delete;
    //endi
  end
  else
  begin
    showmessage('Este usuário não possui privilégios para excluir este registro!');
  end;
  //endi
end;

procedure TFrmPesqRecibo.BtnConfirmarClick(Sender: TObject);
begin
  if FrmDados.CDS_Recibo.State in [dsedit,dsinsert] then
  begin
    Frmdados.CDS_Recibo.Post;
  end;
  //endi
end;

procedure TFrmPesqRecibo.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Recibo.Cancel;
end;

procedure TFrmPesqRecibo.DBEdit1Click(Sender: TObject);
begin
  with FrmDados do
  begin
    if not (CDS_Recibo.State in [dsedit,dsinsert]) then
    begin
      if CDS_Recibo.RecordCount = 0 then
      begin
        if bReciboI then
          CDS_Recibo.Append
        else
          showmessage('Este usuário não possui privilégios para inserir um novo recibo!');
      end
      else
      begin
        if bReciboA then
          CDS_Recibo.Edit
        else
          showmessage('Este usuário não possui privilégios para alterar este registro!');
      end;
    end;
    //endi
  end;
  //endth
end;

procedure TFrmPesqRecibo.BtnSairClick(Sender: TObject);
begin
  if FrmPesqContasRec <> nil then
  begin
    FrmPesqContasRec.WindowState := wsMaximized;
  end;
  //endi

  if FrmPesqContasRecNubia <> nil then
  begin
    FrmPesqContasRecNubia.WindowState := wsMaximized;
  end;
  //endi

  if FrmBaixaConta <> nil then
  begin
    FrmBaixaConta.WindowState := wsMaximized;
  end;
  //endi

  Close;
end;

procedure TFrmPesqRecibo.FormShow(Sender: TObject);
begin
  LblValor.Caption := extenso(FrmDados.CDS_Recibo.FieldByName('VALOR').AsCurrency);
end;

procedure TFrmPesqRecibo.BtnPesqAluClick(Sender: TObject);
begin
  if not bReciboA then
  begin
    showmessage('Este usuário não possui privilégios para alterar este recibo!');
    Exit;
  end;
  //endi

  if not (FrmDados.CDS_Recibo.State in [dsedit,dsinsert]) then
    FrmDados.CDS_Recibo.Edit;
  //endi

  FrmProcAluno := TFrmProcALuno.Create(self);
  FrmProcAluno.ShowModal;
  FrmProcAluno.Free;
end;

procedure TFrmPesqRecibo.DBEdit1Enter(Sender: TObject);
begin
  with FrmDados do
  begin
    if CDS_Recibo.RecordCount = 0 then
    begin
      if bReciboI then
        CDS_Recibo.Append;
      //endi
    end
    else
    begin
      if bReciboA then
        CDS_Recibo.Edit;
      //endi
    end;
    //endi
  end;
  //endth
end;

procedure TFrmPesqRecibo.BtnImprimirClick(Sender: TObject);
begin
  FrmRelRecibo := TFrmRelRecibo.Create(self);
  FrmRelRecibo.QuickRep1.PreviewModal;
  FrmRelRecibo.Free;
end;

end.

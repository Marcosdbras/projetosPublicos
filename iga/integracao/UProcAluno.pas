unit UProcAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmProcAluno = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcAluno: TFrmProcAluno;

implementation

uses UDados, UFiltrarAluno, UFichaIndAlu, UGeraContas, UPesqHistorico,
  uPesqRecibo;

{$R *.dfm}

procedure TFrmProcAluno.DBGrid1DblClick(Sender: TObject);
begin
  with FrmDados do
  begin
    if FrmFichaIndAlu <> nil then
    begin
      FrmFichaIndAlu.codalu := FrmDados.CDS_CadAluno.FieldByName('CODIGO').asInteger;
      CDS_FichaIndAlu.FieldByName('CODALU').AsInteger := FrmFichaIndALu.codalu;
    end;
    //endi

    if FrmGeraContas <> nil then
    begin
      FrmGeraContas.CBXNome.KeyValue := FrmDados.CDS_CadAluno.FieldByName('CODIGO').asString;
    end;
    //endi

    if FrmPesqHistorico <> nil then
    begin
      CDS_Historico.FieldByName('CODALU').AsInteger := CDS_CadAluno.FieldByName('CODIGO').AsInteger;
    end;
    //endi

    if FrmPesqRecibo <> nil then
    begin
      CDS_Recibo.FieldByName('CODALU').AsInteger := CDS_CadAluno.FieldByName('CODIGO').AsInteger;
    end;
    //endi
  end;
  //endth
  Close;
end;

procedure TFrmProcAluno.BtnConfirmarClick(Sender: TObject);
begin
  with FrmDados do
  begin
    if FrmFichaIndAlu <> nil then
    begin
      FrmFichaIndAlu.codalu := FrmDados.CDS_CadAluno.FieldByName('CODIGO').asInteger;
      CDS_FichaIndAlu.FieldByName('CODALU').AsInteger := FrmFichaIndALu.codalu;
    end;
    //endi

    if FrmGeraContas <> nil then
    begin
      FrmGeraContas.CBXNome.KeyValue := FrmDados.CDS_CadAluno.FieldByName('CODIGO').asString;
    end;
    //endi

    if FrmPesqHistorico <> nil then
    begin
      CDS_Historico.FieldByName('CODALU').AsInteger := CDS_CadAluno.FieldByName('CODIGO').AsInteger;
    end;
    //endi

    if FrmPesqRecibo <> nil then
    begin
      CDS_Recibo.FieldByName('CODALU').AsInteger := CDS_CadAluno.FieldByName('CODIGO').AsInteger;
    end;
    //endi
  end;
  //endth
  Close;
end;

procedure TFrmProcAluno.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmProcAluno.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroAluno:=TFrmFiltroAluno.Create(Self);
  FrmFiltroAluno.ShowModal;
  FrmFiltroAluno.Free;
end;

procedure TFrmProcAluno.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_CadAluno.Active:=False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO');
    DBX_CadAluno.Active:=True;
    CDS_CadAluno.Refresh;
  end;
  //endth
end;

end.

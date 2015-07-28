unit UPesqAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFrmPesqAlu = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqAlu: TFrmPesqAlu;

implementation

uses UDados, UFichaIndAlu, UGeraContas;

{$R *.dfm}

procedure TFrmPesqAlu.BtnConfirmarClick(Sender: TObject);
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
  end;
  //endth
  Close;

end;

procedure TFrmPesqAlu.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;
end.

unit USerieMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons;

type
  TFrmSerieMat = class(TForm)
    DBGrid1: TDBGrid;
    BtnConfirmar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSerieMat: TFrmSerieMat;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmSerieMat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  
  //'showmessage(FrmDados.CDS_SerieMatCODSERIE.DefaultExpression);
  if Key = #13 then
  begin
    if (FrmDados.CDS_SerieMat.State = dsedit) or  (FrmDados.CDS_SerieMat.State = dsinsert) then
    begin
      //FrmDados.CDS_SerieMat.FieldByName('CODSERIE').AsInteger:=FrmDados.CDS_Serie.fieldByName('CODIGO').AsInteger;
      FrmDados.CDS_SerieMat.Post;
    end;
  end;
end;

procedure TFrmSerieMat.BtnExcluirClick(Sender: TObject);
begin
  FrmDados.CDS_SerieMat.Delete;
end;

procedure TFrmSerieMat.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_SerieMat.State = dsedit) or  (FrmDados.CDS_SerieMat.State = dsinsert) then
  begin
    FrmDados.CDS_SerieMat.Post;
  end;
  Close;
end;

procedure TFrmSerieMat.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (FrmDados.CDS_SerieMat.State = dsedit) or  (FrmDados.CDS_SerieMat.State = dsinsert) then
//    FrmDados.CDS_SerieMat.FieldByName('CODSERIE').AsInteger:=FrmDados.CDS_Serie.fieldByName('CODIGO').AsInteger;
end;

procedure TFrmSerieMat.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSerieMat.FormCreate(Sender: TObject);
begin
  FrmDados.CDS_SerieMat.Active:=False;
  FrmDados.CDS_SerieMatCODSERIE.DefaultExpression:=FrmDados.CDS_Serie.fieldByName('CODIGO').AsString;
  FrmDados.CDS_SerieMat.Active:=True;
end;

end.

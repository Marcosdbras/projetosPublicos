unit UIndices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls,DB;

type
  TFrmIndices = class(TForm)
    LblAno: TLabel;
    EDAno: TDBEdit;
    BtnAlterar: TBitBtn;
    BtnSair: TBitBtn;
    LblData: TLabel;
    EDData: TDBEdit;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndices: TFrmIndices;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmIndices.BtnSairClick(Sender: TObject);
begin
  FrmDados.CDS_Indices.Cancel;
  Close;
end;

procedure TFrmIndices.BtnAlterarClick(Sender: TObject);
begin
if FrmDados.CDS_Indices.State in [dsinsert,dsedit] then
  FrmDados.CDS_Indices.Post;
  Close;
end;

end.

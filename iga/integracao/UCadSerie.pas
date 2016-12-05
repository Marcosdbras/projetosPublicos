unit UCadSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFrmCadSerie = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSerie: TFrmCadSerie;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmCadSerie.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_Serie.Post;
  Close;
end;

procedure TFrmCadSerie.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Serie.Cancel;
  Close;
end;

procedure TFrmCadSerie.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;

end;

end.

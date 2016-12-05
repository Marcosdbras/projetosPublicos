unit uconfcaixaind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmconfcaixaind = class(TForm)
    btnsalvar: TButton;
    btncancelar: TButton;
    Label1: TLabel;
    edi_id: TEdit;
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edi_idKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfcaixaind: Tfrmconfcaixaind;

implementation
      uses ugeral, udados;
{$R *.dfm}

procedure Tfrmconfcaixaind.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmconfcaixaind.btnsalvarClick(Sender: TObject);
begin
with frmdados do
  begin

    cds_id.Active := true;
    cds_id.edit;
    cds_id.FieldByName('id').Asinteger :=  strtoint(edi_id.Text);
    cds_id.Post;
    cds_id.Active := false;


  end;


close;
end;

procedure Tfrmconfcaixaind.FormShow(Sender: TObject);
begin

with frmdados do
  begin

    cds_id.Active := true;
    edi_id.Text := inttostr(cds_id.FieldByName('id').Asinteger);
    cds_id.Active := false;


  end;

end;

procedure Tfrmconfcaixaind.edi_idKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

end.

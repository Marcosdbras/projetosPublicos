unit upedprazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, ExtCtrls;

type
  Tfrmpedprazo = class(TForm)
    dbgvencto: TDBGrid;
    spdcancelar2310: TSpeedButton;
    Bevel1: TBevel;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgvenctoColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedprazo: Tfrmpedprazo;

implementation
  uses ugeral, udados, ufrenteecf;
{$R *.dfm}

procedure Tfrmpedprazo.spdcancelar2310Click(Sender: TObject);
begin
close;
end;

procedure Tfrmpedprazo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmpedprazo:=nil;
  form_ativo := '';

end;

procedure Tfrmpedprazo.FormShow(Sender: TObject);
begin
form_ativo := 'frmpedprazo';

dbgvencto.SelectedIndex := 0;

tabela := 'Vencimentos';


end;

procedure Tfrmpedprazo.dbgvenctoColEnter(Sender: TObject);
begin
frmfrenteecf.sColuna := dbgvencto.SelectedField.FieldName;
end;

end.

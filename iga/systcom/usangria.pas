unit usangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  Tfrmsangria = class(TForm)
    btnbaixa: TButton;
    btncancelar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnbaixaClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsangria: Tfrmsangria;

implementation

uses uGeral, uDados, ufrente;

{$R *.dfm}

procedure Tfrmsangria.FormShow(Sender: TObject);
Var
  sData:String;
  sHora:String;
begin

tabela :=  'Sangria';

with frmdados do
  begin
    sData := datetostr(  date  );
    sHora := timetostr( time );

    Cds_Sangria.Active := false;
    Cds_Sangriadata.DefaultExpression := QuotedStr(  sData  );
    Cds_SangriaOrigem.DefaultExpression := '1';
    Cds_SangriaHora.DefaultExpression := QuotedStr( sHora );

    Dbx_Sangria.Active := false;
    Dbx_Sangria.SQL.Clear;
    Dbx_Sangria.SQL.Add('Select * from Sangria where (codigo = 0) and (origem = 1)');
    Dbx_Sangria.Active := true;
    Cds_Sangria.Active := true;

    Cds_Sangria.Append;
  end;
//endith

try

  if (frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 3) then
     begin

       frmfrente.sayprint.BeginPrn;
       frmfrente.sayprint.Say(0,0,chr(27)+chr(118)+chr(76));
       frmfrente.sayprint.EndPrn;

     end;

  //endi

except
  sMsg := 'Erro ao abrir gaveta para sangria';
end;



end;

procedure Tfrmsangria.btnbaixaClick(Sender: TObject);
begin
frmdados.Cds_Sangria.Post;
close;
end;

procedure Tfrmsangria.btncancelarClick(Sender: TObject);
begin
frmdados.Cds_Sangria.cancel;
close;
end;

procedure Tfrmsangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

procedure Tfrmsangria.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.

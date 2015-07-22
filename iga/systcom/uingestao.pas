unit uingestao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  Tfrmingestao = class(TForm)
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
  frmingestao: Tfrmingestao;

implementation

uses uGeral, uDados, ufrente;

{$R *.dfm}

procedure Tfrmingestao.FormShow(Sender: TObject);
Var
  sData:String;
  sHora:String;
begin

tabela :=  'Ingestao';

with frmdados do
  begin
    sData := datetostr(  date  );
    sHora := timetostr( time );

    Cds_Ingestao.Active := false;
    Cds_Ingestaodata.DefaultExpression := QuotedStr(  sData  );
    Cds_IngestaoOrigem.DefaultExpression := '1';
    Cds_IngestaoHora.DefaultExpression := QuotedStr( sHora );

    Dbx_Ingestao.Active := false;
    Dbx_Ingestao.SQL.Clear;
    Dbx_Ingestao.SQL.Add('Select * from Ingestao where origem = 1');
    Dbx_Ingestao.Active := true;
    Cds_Ingestao.Active := true;

    if cds_Ingestao.RecordCount = 0 then
       Cds_Ingestao.Append
    else
       Cds_Ingestao.Edit;
    //endi
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
  sMsg := 'Erro ao abrir gaveta para ingestão';
end;



end;

procedure Tfrmingestao.btnbaixaClick(Sender: TObject);
begin
frmdados.Cds_Ingestao.Post;
close;
end;

procedure Tfrmingestao.btncancelarClick(Sender: TObject);
begin
frmdados.Cds_Ingestao.cancel;
close;
end;

procedure Tfrmingestao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

procedure Tfrmingestao.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.

unit uingesp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  Tfrmingestaop = class(TForm)
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
  frmingestaop: Tfrmingestaop;

implementation

uses uGeral, uDados, uCaixaapa;

{$R *.dfm}

procedure Tfrmingestaop.FormShow(Sender: TObject);
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
    Cds_IngestaoOrigem.DefaultExpression := '2';
    Cds_IngestaoHora.DefaultExpression := QuotedStr( sHora );

    Dbx_Ingestao.Active := false;
    Dbx_Ingestao.SQL.Clear;
    Dbx_Ingestao.SQL.Add('Select * from Ingestao Where origem = 2');
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

       frmCaixaapa.sayprint1.BeginPrn;
       frmCaixaapa.sayprint1.Say(0,0,chr(27)+chr(118)+chr(76));
       frmCaixaapa.sayprint1.EndPrn;

     end;

  //endi

except
  sMsg := 'Erro ao abrir gaveta para ingestão';
end;



end;

procedure Tfrmingestaop.btnbaixaClick(Sender: TObject);
begin
frmdados.Cds_Ingestao.Post;
close;
end;

procedure Tfrmingestaop.btncancelarClick(Sender: TObject);
begin
frmdados.Cds_Ingestao.cancel;
close;
end;

procedure Tfrmingestaop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

procedure Tfrmingestaop.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.

unit baixarncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, FMTBcd, DB, SqlExpr,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmbaixarncm = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sql_exec: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixarncm: Tfrmbaixarncm;

implementation
      uses ugeral, udados, funcoes_ibpt;
{$R *.dfm}

procedure Tfrmbaixarncm.BitBtn1Click(Sender: TObject);
var
  sncm:string;
begin
  label2.Visible := true;
  bitbtn1.Enabled := false;
  update;

  sql_exec.Active := false;
  sql_exec.SQL.Clear;
  sql_exec.SQL.Add('select * from produtos order by descricao');
  sql_exec.Active := true;

  while not sql_exec.Eof do
     begin

       sncm := sql_exec.fieldbyname('ncm').AsString;

       frmdados.sql_consulta.Close;
       frmdados.sql_consulta.SQL.Clear;
       frmdados.sql_consulta.SQL.Add('select * from ibpt where codigo = '+quotedstr(sncm)    );
       frmdados.sql_consulta.Open;

       if frmdados.sql_consulta.RecordCount = 0 then
          begin

            frmdados.atualizancm(sncm);



          end;


       sql_exec.Next;
     end;
  //endi

  label2.Caption :='Fim da sincronização';
 bitbtn1.Caption := 'Sincronizado com sucesso';
  update;

end;

procedure Tfrmbaixarncm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmbaixarncm:=nil;
  form_ativo := '';
end;

end.

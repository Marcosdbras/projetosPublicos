unit baixarncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, FMTBcd, DB, SqlExpr;

type
  Tfrmbaixarncm = class(TForm)
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    dbx_exec: TSQLQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
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
  animate1.Active := true;
  animate1.Visible := true;
  label2.Visible := true;
bitbtn1.Enabled := false;
  update;

  dbx_exec.Active := false;
  dbx_exec.SQL.Clear;
  dbx_exec.SQL.Add('select * from vprodutos order by descricao');
  dbx_exec.Active := true;

  while not dbx_exec.Eof do
     begin

       sncm := dbx_exec.fieldbyname('ncm').AsString;

       frmdados.dbx_consulta.Close;
       frmdados.dbx_consulta.SQL.Clear;
       frmdados.dbx_consulta.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncm)    );
       frmdados.dbx_consulta.Open;

       if frmdados.dbx_consulta.RecordCount = 0 then
          begin

            frmdados.atualizancm(sncm);



          end;


       dbx_exec.Next;
     end;
  //endi



  animate1.Active := false;
    animate1.Visible := false;
  label2.Visible := false;
 bitbtn1.Caption := 'Sincronizado com sucesso';
  update;             

end;

end.

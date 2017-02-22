unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScrollView, CustomGridViewControl, CustomGridView,
  GridView;

type
  TForm1 = class(TForm)
    grid: TGridView;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function tiraponto(texto:string):string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.TiraPonto(texto:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := texto;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] <> '.' then
               s2 := s2 + s1[i];
     result:=s2;
end;


procedure TForm1.Button1Click(Sender: TObject);
var txt : textfile;
entrada : string;
i : integer;
descricao, valor : string;
linha, tlinhas : integer;
begin
  grid.ClearRows;
  grid.AddRow(40);

  tlinhas := 0;
  linha := 0;

  if FileExists('\retorno.txt') then
  begin
    assignfile(txt,'\retorno.txt');
    reset(txt);
    while not eof(txt) do
    begin
      readln(txt,entrada);
      i := pos(':',entrada);
      if i > 0 then
      begin
        descricao := copy(entrada,0,i-1);
        valor     := TrimLeft(TrimRight(copy(entrada,i+1,99)));
        descricao := trimleft(trimright(tiraponto(descricao)));

        if copy(ansiuppercase(descricao),1,5) = 'COO I' then grid.Cell[0,linha].AsString := 'COO INICIAL';
        if copy(ansiuppercase(descricao),1,5) = 'COO F' then grid.Cell[0,linha].AsString := 'COO FINAL';
        if copy(ansiuppercase(descricao),1,5) = 'CONTA' then grid.Cell[0,linha].AsString := 'CONTADOR';
        if copy(ansiuppercase(descricao),1,5) = 'REINI' then grid.Cell[0,linha].AsString := 'REINICIO';
        if copy(ansiuppercase(descricao),1,5) = 'VENDA' then grid.Cell[0,linha].AsString := 'VENDA';
        if copy(ansiuppercase(descricao),1,5) = 'TOTAL' then grid.Cell[0,linha].AsString := 'TOTALIZADOR';
        grid.Cell[1,linha].AsString := descricao;
        grid.Cell[2,linha].asstring := valor;
        tlinhas := tlinhas + 1;
        linha := linha + 1;
      end;
    end;
  end
  else
  begin
    showmessage('Arquivo não encontrado');
  end;







end;

procedure TForm1.Button2Click(Sender: TObject);
var txt : textfile;
entrada : string;
i : integer;
descricao, valor : string;
linha, tlinhas : integer;
begin
  grid.ClearRows;
  grid.AddRow(50);

  tlinhas := 0;
  linha := 0;

  if FileExists('\retorno.txt') then
  begin
    assignfile(txt,'\retorno.txt');
    reset(txt);
    while not eof(txt) do
    begin
      readln(txt,entrada);
      i := pos(':',entrada);
      if i > 0 then
      begin
        descricao := copy(entrada,0,i-1);
        valor     := TrimLeft(TrimRight(copy(entrada,i+1,99)));
        descricao := trimleft(trimright(tiraponto(descricao)));

        if (descricao = 'F') or
           (descricao = 'I') or
           (descricao = 'N') or
           (descricao = 'N') or
           (descricao = '0700') or
           (descricao = '1200') or
           (descricao = '1700') or
           (descricao = '2500') or
           (descricao = '2700') or
           (descricao = '0200') or
           (descricao = '0400') or
           (descricao = '0500') or
           (descricao = '0600') or
           (descricao = '0800') or
           (descricao = 'ISS')  then grid.Cell[0,linha].AsString := 'ALIQUOTA';

        if copy(ansiuppercase(descricao),1,4) = 'CANC' then grid.Cell[0,linha].AsString := 'CANCELAMENTO';
        if copy(ansiuppercase(descricao),1,4) = 'DESC' then grid.Cell[0,linha].AsString := 'DESCONTO';




        grid.Cell[1,linha].AsString := descricao;
        grid.Cell[2,linha].asstring := valor;
        tlinhas := tlinhas + 1;
        linha := linha + 1;
      end;
    end;
  end
  else
  begin
    showmessage('Arquivo não encontrado');
  end;


end;

end.

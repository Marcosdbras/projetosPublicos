unit atualizabd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmatualizabd = class(TForm)
    Label1: TLabel;
    lblretorno: TLabel;
    mmoEstruturaDados: TMemo;
    mmoscriptgeral: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure roda_script_banco;
    procedure atualiza_bd;
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmatualizabd: Tfrmatualizabd;

implementation
    uses modulo, funcoes;
{$R *.dfm}

procedure Tfrmatualizabd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := caFree;
  frmatualizabd :=nil;


end;


procedure Tfrmatualizabd.atualiza_bd;
var
  ErrorCode: Integer;

begin
  try
     lblretorno.Caption := '';

     {Faz a Conexão com a Base de Dados}
     //frmmodulo.SQLConnection.Connected  := True;
     //frmmodulo.SQLConnection.Open;

     {Tenta Rodar o Script}
     ErrorCode := frmmodulo.SQLConnection.ExecuteDirect( mmoEstruturaDados.Text );

     {Se o SqlConnection retornar "0" é porque tudo correu bem}
     if ErrorCode = 0 then
     begin
        lblretorno.Caption :=  'Banco de dados atualizado com sucesso!';
     end;

     {Se retornar diferente de "0" é porque algo de errado aconteceu}
     if ErrorCode <> 0 then // only 0 should be correct
       raise Exception.Create( 'Error: code = ' + IntToStr( ErrorCode ) );

     //frmmodulo.SQLConnection.Connected  := false;
     //frmmodulo.SQLConnection.close;

  except
     on E: Exception do
     begin
       //ShowMessage( E.Message );
       //lblretorno.Caption :=  'Não houve sucesso na atualização de uma ou mais tabelas!';
       //frmmodulo.SQLConnection.Connected  := false;
       //frmmodulo.SQLConnection.close;

     end;
  end

end;

procedure Tfrmatualizabd.roda_script_banco;
var
   vardir, arquivo:string;
   x:integer;
begin


  vardir := extractfilepath(application.ExeName);
  //versaoAtualBaixada :=  strtoint(  tirapontos(   GetBuildInfo  )  );
  //arquivo :=  vardir+'script_atualiza_banco'+ inttostr( versaoAtualBaixada )  +'.sql';

  arquivo :=  vardir+'script_atualiza_banco.sql';


  if fileexists(arquivo) then
     begin


      try


       {Faz a Conexão com a Base de Dados}
       frmmodulo.SQLConnection.Connected  := True;
       frmmodulo.SQLConnection.Open;

       mmoscriptgeral.Clear;
       mmoscriptgeral.Lines.LoadFromFile(arquivo);
       mmoestruturadados.Clear;
       for x := 0 to mmoscriptgeral.Lines.Count - 1 do
         begin
           mmoestruturadados.Lines.Add( mmoscriptgeral.Lines[x] );
           if pos(';',mmoscriptgeral.Lines[x]) > 0  then
              begin
                lblretorno.Caption :=  mmoestruturadados.Lines[x];
                atualiza_bd;
                mmoestruturadados.Clear;
              end;


         end;
       mmoscriptgeral.Clear;
       deletefile(pchar(arquivo));

       frmmodulo.SQLConnection.Connected  := false;
       frmmodulo.SQLConnection.close;



      except
         on E: Exception do
         begin
           ShowMessage( E.Message );
           lblretorno.Caption :=  'Não houve sucesso na atualização de uma ou mais tabelas!';
           frmmodulo.SQLConnection.Connected  := false;
           frmmodulo.SQLConnection.close;

         end;


     end;

end;

close;


end;

procedure Tfrmatualizabd.FormCreate(Sender: TObject);
begin
roda_script_banco;
end;

end.



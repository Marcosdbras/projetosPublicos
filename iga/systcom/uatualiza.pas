unit uatualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnconfirma: TButton;
    procedure btnconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure atuabase(sArquivo:string);


var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnconfirmaClick(Sender: TObject);
var
  vardir, pArq, pOrcaAnt, data : String;
  ano, mes, dia, idia, imes, iano:word;
  pValorTotal, totcustopecas, totcustopecase : Real;
  pCont, x : Integer;
begin
  vardir := extractfilepath(application.exename);

  atuabase(  vardir + 'inst 1703\14101.txt' );
  atuabase(  vardir + 'inst 1703\14102.txt' );
  atuabase(  vardir + 'inst 1703\26101.txt' );
  atuabase(  vardir + 'inst 1703\26102.txt' );
  atuabase(  vardir + 'inst 1703\26103.txt' );
  atuabase(  vardir + 'inst 1703\06111.txt' );
  atuabase(  vardir + 'inst 1703\10111.txt' );
  atuabase(  vardir + 'inst 1703\23111.txt' );
  atuabase(  vardir + 'inst 1703\24111.txt' );
  atuabase(  vardir + 'inst 1703\24112.txt' );
  atuabase(  vardir + 'inst 1703\25111.txt' );
  atuabase(  vardir + 'inst 1703\25112.txt' );
  atuabase(  vardir + 'inst 1703\25113.txt' );
  atuabase(  vardir + 'inst 1703\26114.txt' );
  atuabase(  vardir + 'inst 1703\26115.txt' );
  atuabase(  vardir + 'inst 1703\30111.txt' );
  atuabase(  vardir + 'inst 1703\02121.txt' );
  atuabase(  vardir + 'inst 1703\09121.txt' );
  atuabase(  vardir + 'inst 1703\09122.txt' );
  atuabase(  vardir + 'inst 1703\09123.txt' );
  atuabase(  vardir + 'inst 1703\11111.txt' );
  atuabase(  vardir + 'inst 1703\14121.txt' );
  atuabase(  vardir + 'inst 1703\17121.txt' );
  atuabase(  vardir + 'inst 1703\22121.txt' );
  atuabase(  vardir + 'inst 1703\22122.txt' );
  atuabase(  vardir + 'inst 1703\22123.txt' );
  atuabase(  vardir + 'inst 1703\22124.txt' );
  atuabase(  vardir + 'inst 1703\22125.txt' );
  atuabase(  vardir + 'inst 1703\22126.txt' );
  atuabase(  vardir + 'inst 1703\05011.txt' );
  atuabase(  vardir + 'inst 1703\06011.txt' );
  atuabase(  vardir + 'inst 1703\15011.txt' );
  atuabase(  vardir + 'inst 1703\15012.txt' );
  atuabase(  vardir + 'inst 1703\15013.txt' );
  atuabase(  vardir + 'inst 1703\15014.txt' );
  atuabase(  vardir + 'inst 1703\15015.txt' );
  atuabase(  vardir + 'inst 1703\15016.txt' );
  atuabase(  vardir + 'inst 1703\15017.txt' );
  atuabase(  vardir + 'inst 1703\15018.txt' );
  atuabase(  vardir + 'inst 1703\15019.txt' );
  atuabase(  vardir + 'inst 1703\150110.txt' );
  atuabase(  vardir + 'inst 1703\21011.txt' );
  atuabase(  vardir + 'inst 1703\26011.txt' );
  atuabase(  vardir + 'inst 1703\26012.txt' );
  atuabase(  vardir + 'inst 1703\03021.txt' );

  atuabase(  vardir + 'inst 1703\04021.txt' );
  atuabase(  vardir + 'inst 1703\04022.txt' );
  atuabase(  vardir + 'inst 1703\04023.txt' );
  atuabase(  vardir + 'inst 1703\04024.txt' );
  atuabase(  vardir + 'inst 1703\04025.txt' );

  atuabase(  vardir + 'inst 1703\07021.txt' );
  atuabase(  vardir + 'inst 1703\07022.txt' );
  atuabase(  vardir + 'inst 1703\07023.txt' );
  atuabase(  vardir + 'inst 1703\07024.txt' );
  atuabase(  vardir + 'inst 1703\07025.txt' );

  atuabase(  vardir + 'inst 1703\09021.txt' );

  atuabase(  vardir + 'inst 1703\10021.txt' );
  atuabase(  vardir + 'inst 1703\10022.txt' );
  atuabase(  vardir + 'inst 1703\10023.txt' );
  atuabase(  vardir + 'inst 1703\10024.txt' );
  atuabase(  vardir + 'inst 1703\10025.txt' );
  atuabase(  vardir + 'inst 1703\10026.txt' );

  atuabase(  vardir + 'inst 1703\11021.txt' );

  atuabase(  vardir + 'inst 1703\22021.txt' );
  atuabase(  vardir + 'inst 1703\22022.txt' );
  atuabase(  vardir + 'inst 1703\22023.txt' );
  atuabase(  vardir + 'inst 1703\22024.txt' );

  atuabase(  vardir + 'inst 1703\23021.txt' );
  atuabase(  vardir + 'inst 1703\23022.txt' );
  atuabase(  vardir + 'inst 1703\23023.txt' );
  atuabase(  vardir + 'inst 1703\23024.txt' );

  atuabase(  vardir + 'inst 1703\24021.txt' );
  atuabase(  vardir + 'inst 1703\24022.txt' );
  atuabase(  vardir + 'inst 1703\24023.txt' );
  atuabase(  vardir + 'inst 1703\24024.txt' );
  atuabase(  vardir + 'inst 1703\24025.txt' );

  atuabase(  vardir + 'inst 1703\26021.txt' );
  atuabase(  vardir + 'inst 1703\26022.txt' );
  atuabase(  vardir + 'inst 1703\26023.txt' );
  atuabase(  vardir + 'inst 1703\26024.txt' );
  atuabase(  vardir + 'inst 1703\26025.txt' );
  atuabase(  vardir + 'inst 1703\26026.txt' );
  atuabase(  vardir + 'inst 1703\26027.txt' );
  atuabase(  vardir + 'inst 1703\26028.txt' );

  atuabase(  vardir + 'inst 1703\01031.txt' );
  atuabase(  vardir + 'inst 1703\01032.txt' );
  atuabase(  vardir + 'inst 1703\01033.txt' );
  atuabase(  vardir + 'inst 1703\01034.txt' );
  atuabase(  vardir + 'inst 1703\01035.txt' );
  atuabase(  vardir + 'inst 1703\01036.txt' );
  atuabase(  vardir + 'inst 1703\01037.txt' );
  atuabase(  vardir + 'inst 1703\01038.txt' );

  atuabase(  vardir + 'inst 1703\02031.txt' );
  atuabase(  vardir + 'inst 1703\11031.txt' );
  atuabase(  vardir + 'inst 1703\11032.txt' );
  atuabase(  vardir + 'inst 1703\11033.txt' );
  atuabase(  vardir + 'inst 1703\11034.txt' );
  atuabase(  vardir + 'inst 1703\11035.txt' );
  atuabase(  vardir + 'inst 1703\11036.txt' );
  atuabase(  vardir + 'inst 1703\11037.txt' );
  atuabase(  vardir + 'inst 1703\11038.txt' );
  atuabase(  vardir + 'inst 1703\11039.txt' );

  atuabase(  vardir + 'inst 1703\15031.txt' );

  atuabase(  vardir + 'inst 1703\17031.txt' );
  atuabase(  vardir + 'inst 1703\17032.txt' );
  atuabase(  vardir + 'inst 1703\17033.txt' );
  atuabase(  vardir + 'inst 1703\17034.txt' );
  atuabase(  vardir + 'inst 1703\17035.txt' );

  atuabase(  vardir + 'inst 1703\17038.txt' );
  atuabase(  vardir + 'inst 1703\17039.txt' );
  atuabase(  vardir + 'inst 1703\170310.txt' );
  atuabase(  vardir + 'inst 1703\170311.txt' );
  atuabase(  vardir + 'inst 1703\170320.txt' );
  atuabase(  vardir + 'inst 1703\170321.txt' );
  atuabase(  vardir + 'inst 1703\170322.txt' );
  atuabase(  vardir + 'inst 1703\170330.txt' );

  atuabase(  vardir + 'inst 1803\a1.txt' );
  atuabase(  vardir + 'inst 1803\a2.txt' );
  atuabase(  vardir + 'inst 1803\a3.txt' );
  atuabase(  vardir + 'inst 1803\a4.txt' );
  atuabase(  vardir + 'inst 1803\a5.txt' );
  atuabase(  vardir + 'inst 1803\a6.txt' );
  atuabase(  vardir + 'inst 1803\a7.txt' );
  atuabase(  vardir + 'inst 1803\a8.txt' );

  atuabase(  vardir + 'inst 2203\a1.txt' );
  atuabase(  vardir + 'inst 2203\a2.txt' );

end;


procedure atuabase(sArquivo:string);
begin
  if fileexists( sArquivo ) then
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.LoadFromFile( pchar(sArquivo) );
       try
         dbx_exec.ExecSQL;
         deletefile(pchar(sArquivo));
       except
         showmessage('Erro ao atualizar base de dados '+sArquivo);
         deletefile(pchar(sArquivo));
       end;
    end;
  //endi
end;



end.

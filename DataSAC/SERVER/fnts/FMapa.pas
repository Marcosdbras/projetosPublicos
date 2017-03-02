unit FMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, OleCtrls, SHDocVw, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormMapa = class(TForm)
    Panel1: TPanel;
    edtOrigem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDestino: TEdit;
    Button1: TButton;
    WebBrowser1: TWebBrowser;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure MontarMapa(AOrigem,ADestino :String);
  end;

var
  FormMapa: TFormMapa;

implementation

{$R *.dfm}

{ TFormMapa }

{exemplo criado por Marcos Venicios Ganz  marcosvenicios@hotmail.com }

procedure TFormMapa.MontarMapa(AOrigem, ADestino: String);
  var
    slXSL: TStringList;
    key : String;
begin
  {verifica se existe o arquivo mapa.html no diretorio, caso exista deleta o mesmo}
  if FileExists(ExtractFilePath(Application.ExeName) + 'Mapa.html') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'Mapa.html');

   {key é a chave que você vai gerar no site do google maps   http://code.google.com/apis/maps/signup.html }
  key := 'ABQIAAAALi1YYAioizP-JR6n3o7OMRQiyMoscvuT0eTAWvcsKO5wYPZiExQMPxbJlvsjqSvYBXk1Ep2PSR-xQg';

 {cria a StringList, e atribui a mesma as informações para gerar o arquivo Mapa.Html}
  try
     slXSL := TStringList.Create;
     slXSL.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
     slXSL.Add('<html xmlns="http://www.w3.org/1999/xhtml">');
     slXSL.Add('<head>');
     slXSL.Add('<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />');
     slXSL.Add('<title>Marcos Ganz - Traçar rota</title>');
     slXSL.Add('<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=' + QuotedStr(Key) + '"type="text/javascript"></script>');
     slXSL.Add('<script src="http://maps.google.com/maps?file=api&amp;v=2" type="text/javascript"></script>');
     slXSL.Add('<script type="text/javascript">');
     slXSL.Add('	//cria variáveis globais a serem usadas');
     slXSL.Add('	var map;');
     slXSL.Add('	var directionsPanel;');
     slXSL.Add('	var directions;');
     slXSL.Add('  var origem;');
     slXSL.Add('	var destino;');
     slXSL.Add('	//cria mapa quando página carregar');
     slXSL.Add(' window.onload = function() {');
     slXSL.Add('             //define que o mapa será desenhado dentro do elemento  ''mapa''');
     slXSL.Add('     map = new GMap2(document.getElementById("map"), { size: new GSize(710,480) })');
     slXSL.Add('            //insere o controle que possibilita usuário aumentar/diminuir zoom');
     slXSL.Add('     map.addControl(new GLargeMapControl());');
     slXSL.Add('            //usando as coordenadas de latitude e longitude para São Paulo/SP');
     slXSL.Add('   map.setCenter(new GLatLng(-23.547779, -46.639366), 12);');
     slXSL.Add('   directionsPanel = document.getElementById("route");');
     slXSL.Add('   origem  = ' + QuotedStr(AOrigem)+  ';	');
     slXSL.Add('   destino = ' + QuotedStr(ADestino)+ ';	');
     slXSL.Add('   directions = new GDirections(map, directionsPanel);');
     slXSL.Add('              //efetua a busca, quando usuário clicar no botão');
     slXSL.Add('         var fromAddress = origem;');
     slXSL.Add('         var toAddress = destino;');
     slXSL.Add('         directions.load(fromAddress + " to " + toAddress, {"locale":"pt_BR"});');
     slXSL.Add('   }');
     slXSL.Add('</script>');
     slXSL.Add('<style type="text/css">');
     slXSL.Add('	* {');
     slXSL.Add('      margin:0;');
     slXSL.Add('      padding:0;');
     slXSL.Add('      border:0;');
     slXSL.Add('      font-family:Verdana, Arial, Helvetica, sans-serif;');
     slXSL.Add('      font-size:12px;');
     slXSL.Add('  }');
     slXSL.Add('body {');
     slXSL.Add('    width:780px;');
     slXSL.Add('    position:absolute;');
     slXSL.Add('    left:50%;');
     slXSL.Add('    margin-left:-390px;');
     slXSL.Add('    margin-top:20px;');
     slXSL.Add('}');
     slXSL.Add('input {');
     slXSL.Add('    border:1px solid #666666;');
     slXSL.Add('    width:300px;');
     slXSL.Add('}');
     slXSL.Add('form {');
     slXSL.Add('    margin-top:20px;');
     slXSL.Add('}');
     slXSL.Add('form fieldset {');
     slXSL.Add('    padding:10px;');
     slXSL.Add('}');
     slXSL.Add('</style>');
     slXSL.Add('</head>');
     slXSL.Add('<body>');
     slXSL.Add('<div id="map"></div>');
     slXSL.Add('<form action="#" method="POST">');
     slXSL.Add('</form>	');
     slXSL.Add('<div id="route"></div>');
     slXSL.Add('</body>');
     slXSL.Add('</html>');

     {salva o arquivo Mapa.html no diretorio da Aplicação.}
     slXSL.SaveToFile(ExtractFilePath(Application.ExeName) + 'Mapa.html');
  finally
    FreeAndNil(slXSL);
  end;

end;


procedure TFormMapa.Button1Click(Sender: TObject);
begin
  MontarMapa(edtOrigem.Text, edtDestino.Text);
  WebBrowser1.Navigate('file://' + ExtractFilePath(Application.ExeName) + 'Mapa.html');  
end;

end.

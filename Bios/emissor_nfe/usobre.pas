unit usobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  Tfrmsobre = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsobre: Tfrmsobre;

implementation
    uses uprincipal;
{$R *.dfm}

procedure Tfrmsobre.Button1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmsobre.Button3Click(Sender: TObject);
begin
ShellExecute(handle,'open','http://aplicacao.esy.es','','',SW_SHOWNORMAL);
end;

procedure Tfrmsobre.FormShow(Sender: TObject);
var
   vardir:string;

begin
   vardir := extractfilepath(application.ExeName);

   memo1.Lines.Clear;

   memo1.Lines.Add('Prezado cliente, ');
   memo1.Lines.Add('');


   memo1.Lines.Add('Com este sistema voc� poder� emitir nota fiscal eletr�nica de forma r�pida, f�cil e descomplicada,');
   memo1.Lines.Add('clique no bot�o contratar abaixo e conhe�a outros servi�os que poderemos prestar a voc� e sua empresa.');
   memo1.Lines.Add('');

   memo1.Lines.Add('Assim como o certificado digital  este programa tamb�m tem data de expira��o');
   memo1.Lines.Add('isto ocorre pelo fato da necessidade de  manter manuten��o peri�dica desta');
   memo1.Lines.Add('aplica��o, gerando custo para os desenvolvedores, parceiros e clientes.');
   memo1.Lines.Add('Por gentileza entre em contato com suporte t�cnico nos telefones:');
   memo1.Lines.Add('DDD (11) 97043-3730 /  96393-0108  /   3042-3730');
   memo1.Lines.Add('ou acesse o site http://aplicacao.esy.es/');
   memo1.Lines.Add('');
   memo1.Lines.Add('');
   memo1.Lines.Add('Obrigado pela compreens�o');
   memo1.Lines.Add('Marcos Br�s');
   memo1.Lines.Add('Respons�vel T�cnico');
   memo1.Lines.Add('');
   memo1.Lines.Add('=================================================================================');

   memo1.Lines.Add('   ID DA INSTALA��O '+ IntToStr(frmprincipal.bloqueio.IDInstalacao));
   memo1.Lines.Add('Em caso de d�vida envie mensagem para marcosbras@hotmail.com');
   memo1.Lines.Add( 'Dias Restantes : ' + IntToStr(frmprincipal.bloqueio.Dias_RestantesU) );
   memo1.Lines.Add( 'Data Vencimento : ' + frmprincipal.bloqueio.Data_VencimentoU );
   memo1.Lines.Add('Chave : ' + frmprincipal.bloqueio.Chave_RegistradaU);
   memo1.Lines.Add('E-mail : ' + frmprincipal.bloqueio.Email_ClienteU);
   memo1.Lines.Add( 'Vers�o : ' + IntToStr(frmprincipal.bloqueio.Versao_Sistema) );
   memo1.Lines.Add(  'ID da instala��o : '+ IntToStr(frmprincipal.bloqueio.IDInstalacao) );
   memo1.Lines.Add('');
   memo1.Lines.Add('=================================================================================');

   if frmprincipal.bloqueio.Sistema_DemoU then
      memo1.Lines.Add(  'DEMO')
   else
      memo1.Lines.Add( 'REGISTRADO');

end;

procedure Tfrmsobre.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.

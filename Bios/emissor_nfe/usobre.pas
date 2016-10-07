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


   memo1.Lines.Add('Com este sistema você poderá emitir nota fiscal eletrônica de forma rápida, fácil e descomplicada,');
   memo1.Lines.Add('clique no botão contratar abaixo e conheça outros serviços que poderemos prestar a você e sua empresa.');
   memo1.Lines.Add('');

   memo1.Lines.Add('Assim como o certificado digital  este programa também tem data de expiração');
   memo1.Lines.Add('isto ocorre pelo fato da necessidade de  manter manutenção periódica desta');
   memo1.Lines.Add('aplicação, gerando custo para os desenvolvedores, parceiros e clientes.');
   memo1.Lines.Add('Por gentileza entre em contato com suporte técnico nos telefones:');
   memo1.Lines.Add('DDD (11) 97043-3730 /  96393-0108  /   3042-3730');
   memo1.Lines.Add('ou acesse o site http://aplicacao.esy.es/');
   memo1.Lines.Add('');
   memo1.Lines.Add('');
   memo1.Lines.Add('Obrigado pela compreensão');
   memo1.Lines.Add('Marcos Brás');
   memo1.Lines.Add('Responsável Técnico');
   memo1.Lines.Add('');
   memo1.Lines.Add('=================================================================================');

   memo1.Lines.Add('   ID DA INSTALAÇÃO '+ IntToStr(frmprincipal.bloqueio.IDInstalacao));
   memo1.Lines.Add('Em caso de dúvida envie mensagem para marcosbras@hotmail.com');
   memo1.Lines.Add( 'Dias Restantes : ' + IntToStr(frmprincipal.bloqueio.Dias_RestantesU) );
   memo1.Lines.Add( 'Data Vencimento : ' + frmprincipal.bloqueio.Data_VencimentoU );
   memo1.Lines.Add('Chave : ' + frmprincipal.bloqueio.Chave_RegistradaU);
   memo1.Lines.Add('E-mail : ' + frmprincipal.bloqueio.Email_ClienteU);
   memo1.Lines.Add( 'Versão : ' + IntToStr(frmprincipal.bloqueio.Versao_Sistema) );
   memo1.Lines.Add(  'ID da instalação : '+ IntToStr(frmprincipal.bloqueio.IDInstalacao) );
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

unit filizola;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Collection, AdvGlowButton;

type
  Tfrmfilizola = class(TForm)
    Label7: TLabel;
    Timer1: TTimer;
    HeaderView1: THeaderView;
    btnPara: TBitBtn;
    btnConfigura: TBitBtn;
    Button1: TButton;
    btnSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblModelo: TLabel;
    lblSerial: TLabel;
    lblBaudRate: TLabel;
    HeaderView2: THeaderView;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblStatus: TLabel;
    pnlBruto: TPanel;
    pnlCodigo: TPanel;
    pnlValUnit: TPanel;
    pnlTara: TPanel;
    pnlCont: TPanel;
    pnlValTot: TPanel;
    pnlLiquido: TPanel;
    ViewSplit1: TViewSplit;
    bfechar: TAdvGlowButton;
    procedure btnParaClick(Sender: TObject);
    procedure btnConfiguraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MudaPanelsCaption(Valor: String); //Função complementar que muda
                                                //todos os captions dos objetos Panels
                                                //com o valor desejado.

    procedure ObtemConfiguracoes; //Função complementar que chama a função
                                  //ObtemParametrosBalanca da Dll.
  public
    { Public declarations }
  end;

//Declaração de um novo tipo de variável(PInteger) referente à um ponteiro Integer,
//para uso na função ObtemParametrosBalanca.

//Isto é necessário pois a função ObtemParametrosBalança não retorna valor, e sim
//preenche a variável ponteiro com o valor requisitado.
type
  PInteger = ^Integer;

var
  frmfilizola: Tfrmfilizola;

  //Variaveis que armazenarão os retornos da função ObtemParametrosBalanca
  Modelo, Porta, BaudRate: Integer;

  //Mascara para formatacao do peso com casas decimais
  mascara : String;

  //Variável que armazenará o modelo da balança, função ObtemNomeBalanca
  CModelo: array[0..50] of char;

Const
  PcScale = 'PcScale.dll'; //Contante para não ficar repetindo
                           //o nome do arquivo da Dll

implementation

{$R *.DFM}

//----------------------------------------------------------------//
{                   INICIO FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//
{Declara a função ConfiguraBalanca existente na DLL "PcScale.dll"}
function ConfiguraBalanca(Balanca: Integer; Aplicativo: THandle): Boolean;
             stdcall; external PcScale;

{Declara a função InicializaLeitura existente na DLL "PcScale.dll"}
function InicializaLeitura(Balanca: Integer): Boolean;
             stdcall; external PcScale;

{Declara a função ObtemInformacao existente na DLL "PcScale.dll"}
function ObtemInformacao(Balanca: Integer; Campo: Integer): double;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL "PcScale.dll"}
function FinalizaLeitura(Balanca: Integer) : Boolean;
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL "PcScale.dll"}
function EnviaPrecoCS(Balanca : integer; Preco : double) : Boolean;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL "PcScale.dll"}
function ObtemParametrosBalanca(Balanca: Integer; Modelo: PInteger;
                             Porta: PInteger; BaudRate: PInteger
                             ): Boolean
             stdcall; external PcScale;

{Declara a função ObtemNomeBalanca existente na DLL "PcScale.dll"}
Procedure ObtemNomeBalanca(Modelo: Integer; Ret: PChar);
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL "PcScale.dll"}
Procedure ExibeMsgErro(Aplicativo : THandle);
             stdcall; external PcScale;



//----------------------------------------------------------------//
{                     FIM FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//

//----------------------------LEMBRETES---------------------------//
{
  - Lembre-se que neste exemplo foi usado um objeto Timer para
    que o mesmo repeta as chamadas da Dll. Como opção pederiamos
    ter usado uma Thread.

  - A Dll PcScale.dll deve sempre estar no diretório Windows\System,
    ou no mesmo caminho onde do executável que a usa estiver rodando.

}
//----------------------------LEMBRETES---------------------------//
procedure Tfrmfilizola.ObtemConfiguracoes;
begin
  if ObtemParametrosBalanca(0, @Modelo, @Porta, @BaudRate) then
    begin
      ObtemNomeBalanca(Modelo, CModelo);
      lblModelo.Caption   := CModelo;
      lblSerial.Caption   := 'COM' + IntToStr(Porta);
      lblBaudRate.Caption := IntToStr(BaudRate);
    end;
end;

procedure Tfrmfilizola.MudaPanelsCaption(Valor: String);
var
  i: Integer;
begin
  for i := 0 to frmfilizola.ComponentCount - 1 do
    begin
      if (frmfilizola.Components[i] is TPanel) then
        (frmfilizola.Components[i] as TPanel).Caption := Valor
    end;
end;

procedure Tfrmfilizola.btnParaClick(Sender: TObject);
begin
  if (Sender as TBitBtn).Caption = '&Testar' then
    begin
      if InicializaLeitura(0) then
        begin
            Timer1.Enabled := True;
            btnConfigura.Enabled := false;
            btnSair.Enabled := false;
            (Sender as TBitBtn).Caption := '&Parar';
            (Sender as TBitBtn).Hint := 'Para o teste de leitura da balança.';
        end
      else
        ExibeMsgErro(Self.Handle);
    end
  else
    begin
      Timer1.Enabled := false;
      if not FinalizaLeitura(0) then ExibeMsgErro(Self.Handle);
      MudaPanelsCaption('---------');
      btnConfigura.Enabled := true;
      btnSair.Enabled := true;
      lblStatus.Caption := 'Parado...';
      (Sender as TBitBtn).Caption := '&Testar';
      (Sender as TBitBtn).Hint := 'Inicia o teste de leitura da balança.'
    end;
end;

procedure Tfrmfilizola.btnConfiguraClick(Sender: TObject);
begin
  if Not ConfiguraBalanca(0, Self.Handle)  then
    ExibeMsgErro(Self.Handle)
  else
    ObtemConfiguracoes;
end;

procedure Tfrmfilizola.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfilizola.Timer1Timer(Sender: TObject);
var
status, aux: integer;
begin
  status := StrToInt(FloatToStr(ObtemInformacao(0,0)));
  case status of
    0:  lblStatus.Caption := 'Falha comunicando-se com a balança.';
    1:  lblStatus.Caption := 'Peso Oscilando.';
    2:  lblStatus.Caption := 'Peso Estável.';
    3:  lblStatus.Caption := 'Sobrecarga de Peso ou Alivio de Plataforma.';
    4:  lblStatus.Caption := 'Erro lendo licensa do Software.';
  end;

  if ( status = 1 ) or ( status = 2 ) then
  begin
      // vamos construir uma mascara para formatar o peso com as casas
      // decimais da balança

      if mascara = '' then
      begin
          mascara := '0.';
          for aux := 1 to StrToInt(FloatToStr(ObtemInformacao(0,8))) do
          begin
              mascara := mascara + '0';
          end;
      end;

      pnlBruto.Caption   := FormatFloat(mascara,ObtemInformacao(0,1));
      pnlTara.Caption    := FormatFloat(mascara,ObtemInformacao(0,2));
      pnlLiquido.Caption := FormatFloat(mascara,ObtemInformacao(0,3));
      pnlCont.Caption    := FloatToStr(ObtemInformacao(0,4));
      pnlCodigo.Caption  := FloatToStr(ObtemInformacao(0,5));
      pnlValUnit.Caption := FloatToStr(ObtemInformacao(0,6));
      pnlValTot.Caption  := FloatToStr(ObtemInformacao(0,7));
  end
  else
      MudaPanelsCaption('---------');

end;

procedure Tfrmfilizola.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

    Timer1.Enabled := false;
    if Not FinalizaLeitura(0) then ExibeMsgErro(Self.Handle);
    CanClose := true

end;

procedure Tfrmfilizola.FormShow(Sender: TObject);
begin
  ObtemConfiguracoes;
end;

procedure Tfrmfilizola.Button1Click(Sender: TObject);
var
  Preco : String;
  aux : boolean;
begin
    Preco := '';
    aux := true;
    while aux do
    begin
        if InputQuery('Preço/kg', 'Digite o preço/kg a ser enviado: (xxxx,xx)', Preco) then
        begin
            if Trim(Preco) <> '' then
            begin
                try
                    StrToFloat(Preco);
                    aux:=false;
                except on exception do
                    ShowMessage('Digite um valor númerico.');
                end;
            end;
        end
        else exit;
    end;
    if EnviaPrecoCS(0,StrToFloat(Preco)) then
        ShowMessage('Preço/kg enviado com sucesso.')
    else
        ExibeMsgErro(Self.Handle);
end;

end.

unit uloginutradental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Menus, WinSkinData;

type
  Tfrmloginutradental = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbxlogin: TEdit;
    spdlogin: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edisenha: TEdit;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    N1: TMenuItem;
    Produtos1: TMenuItem;
    Uusrios1: TMenuItem;
    Movimento1: TMenuItem;
    EntradadeMercadoria1: TMenuItem;
    InformaesdoSYSTCOM1: TMenuItem;
    VendasPeridicas1: TMenuItem;
    ArquivoLiquidado1: TMenuItem;
    Financeiro1: TMenuItem;
    Contas1: TMenuItem;
    Principal1: TMenuItem;
    Secundria1: TMenuItem;
    Pagas1: TMenuItem;
    Recebidas1: TMenuItem;
    Utilitrios1: TMenuItem;
    ApagaDados1: TMenuItem;
    DeSYSTCOMparaAuxiliar1: TMenuItem;
    DeAuxiliarparaAplicativos1: TMenuItem;
    CopiaEstoque1: TMenuItem;
    Configurar1: TMenuItem;
    BancoAuxiliarSYSTCOM1: TMenuItem;
    Indice1: TMenuItem;
    InfdaEmpresa1: TMenuItem;
    Outros1: TMenuItem;
    Help1: TMenuItem;
    Sair1: TMenuItem;
    Tratamento1: TMenuItem;
    ResumodeCaixa1: TMenuItem;
    Agenda1: TMenuItem;
    Outros2: TMenuItem;
    InformacaoClientes1: TMenuItem;
    InformacaoServico1: TMenuItem;
    procedure spdloginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxloginKeyPress(Sender: TObject; var Key: Char);
    procedure edisenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

var
  frmloginutradental: Tfrmloginutradental;

implementation
  uses uGeral, uDados, utradental, uMp20i, upesqtra;
{$R *.dfm}

procedure Tfrmloginutradental.spdloginClick(Sender: TObject);
var
  x,y:integer;
  menuItem : TMenuItem;
begin

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'login';
       sqp_dados.ParamByName('VARNOME').AsString := cbxlogin.Text;
       sqp_dados.ParamByName('VARSENHA').AsString := Edisenha.Text;
       sqp_dados.ExecProc;
       if sqp_dados.ParamByName('NOME').AsString <>'' then
          begin
            icusu := sqp_dados.ParamByName('codigo').Asinteger;
            //Módulo Venda Balcão
            if Locaiza_ItensUsuS(17,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bVenda := true;
               end;
            //endi
            if Locaiza_ItensUsuS(18,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bAltVend := true;
               end;
            //endi
            if Locaiza_ItensUsuS(19,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bAltP := true;
               end;
            //endi
            if Locaiza_ItensUsuS(20,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bLanDesc := true;
               end;
            //endi
            if Locaiza_ItensUsuS(21,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bAltDesc := true;
               end;
            //endi
            if Locaiza_ItensUsuS(22,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bLimiteDesc := true;
               end;
            //endi
            if Locaiza_ItensUsuS(23,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bVSEstq := true;
               end;
            //endi
            if Locaiza_ItensUsuS(24,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bVSAtend := true;
               end;
            //endi
            if Locaiza_ItensUsuS(25,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bfechavendab := true;
               end;
            //endi
            if Locaiza_ItensUsuS(26,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bPgtoOrc := true;
               end;
            //endi
            if Locaiza_ItensUsuS(27,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bFvb := true;
               end;
            //endi

            if Localiza_Itens_Usuario(informacaoclientes1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin

                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'I') > 0 then
                    begin
                      boutinfcliI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'A') > 0 then
                    begin
                      boutinfcliA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'E') > 0 then
                    begin
                      boutinfcliE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'N') > 0 then
                    begin
                      boutinfcliN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'V') > 0 then
                    begin
                      boutinfcliV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'R') > 0 then
                    begin
                      boutinfcliR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoclientes1.Tag,icUsu,'CF') > 0 then
                    begin
                      boutinfcliCF := true;
                    end;
                 //endi

               end;
            //endi

            if Localiza_Itens_Usuario(informacaoservico1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin

                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'I') > 0 then
                    begin
                      btabdescI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'A') > 0 then
                    begin
                      btabdescA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'E') > 0 then
                    begin
                      btabdescE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'N') > 0 then
                    begin
                      btabdescN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'V') > 0 then
                    begin
                      btabdescV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'R') > 0 then
                    begin
                      btabdescR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(informacaoservico1.Tag,icUsu,'CF') > 0 then
                    begin
                      btabdescCF := true;
                    end;
                 //endi

               end;
            //endi

            if Localiza_Itens_Usuario(Clientes1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin

                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'I') > 0 then
                    begin
                      bClientesI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'A') > 0 then
                    begin
                      bClientesA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'E') > 0 then
                    begin
                      bClientesE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'N') > 0 then
                    begin
                      bClientesN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'V') > 0 then
                    begin
                      bClientesV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'R') > 0 then
                    begin
                      bClientesR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Clientes1.Tag,icUsu,'CF') > 0 then
                    begin
                      bClientesCF := true;
                    end;
                 //endi

               end;
            //endi


            if Localiza_Itens_Usuario(Tratamento1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin



                 if localiza_DetItens_Usuario(77,icUsu,'I') > 0 then
                    begin
                      bOSTI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'A') > 0 then
                    begin
                      bOSTA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'E') > 0 then
                    begin
                      bOSTE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'N') > 0 then
                    begin
                      bOSTN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'V') > 0 then
                    begin
                      bOSTV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'R') > 0 then
                    begin
                      bOSTR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(77,icUsu,'CF') > 0 then
                    begin
                      bOSTCF := true;
                    end;
                 //endi

               end;
            //endi

            if Localiza_Itens_Usuario(Resumodecaixa1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin



                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'I') > 0 then
                    begin
                      blivrocaixaI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'A') > 0 then
                    begin
                      blivrocaixaA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'E') > 0 then
                    begin
                      blivrocaixaE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'N') > 0 then
                    begin
                      blivrocaixaN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'V') > 0 then
                    begin
                      blivrocaixaV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'R') > 0 then
                    begin
                      blivrocaixaR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Resumodecaixa1.Tag,icUsu,'CF') > 0 then
                    begin
                      blivrocaixaCF := true;
                    end;
                 //endi

               end;
            //endi


            if Localiza_Itens_Usuario(Agenda1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin



                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'I') > 0 then
                    begin
                      //showmessage('passei');
                      bAgendaI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'A') > 0 then
                    begin
                      bAgendaA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'E') > 0 then
                    begin
                      bAgendaE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'N') > 0 then
                    begin
                      bAgendaN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'V') > 0 then
                    begin
                      bAgendaV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'R') > 0 then
                    begin
                      bAgendaR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(Agenda1.Tag,icUsu,'CF') > 0 then
                    begin
                      bAgendaCF := true;
                    end;
                 //endi

               end;
            //endi





            Dbx_InvSysfcon.Active := false;
            Dbx_InvSysfcon.SQL.Clear;
            Dbx_InvSysfcon.SQL.Add('Select * from invsysf where cusu = '+sqp_dados.ParamByName('codigo').AsString);
            Dbx_Invsysfcon.Active := true;


            edisenha.Text := '';
            cbxlogin.SetFocus;
          end;
       //endi
     end;
   //endi
   close;
end;

procedure Tfrmloginutradental.FormShow(Sender: TObject);
var
  vardir:string;
begin

vardir := extractfilepath(application.ExeName);

bAltDesc  := false;
bAltVend  := false;
bAltP     := false;
bLanDesc  := false;
bVenda    := false;
bLimiteDesc := false;
bVSEstq := false;
bVSAtend := false;
bFechaVendaB := false;
bPgtoOrc := false;
bFvb := false;
cbxlogin.Text := '';
edisenha.Text := '';


sImpF := lerarqtexto(vardir+'ImpF.inf');

if sImpf = 'Nenhuma' then
   itipoimpf := 0;
//endi
if sImpf = '' then
   itipoimpf := 0;
//endi
if sImpf = 'SWEDA' then
   itipoimpf := 1;
//endi
if sImpf = 'BEMA' then
   itipoimpf := 2;
//endi




end;

procedure Tfrmloginutradental.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure Tfrmloginutradental.FormClose(Sender: TObject; var Action: TCloseAction);
var
  x, iStatus, iConta:integer;
  indic, sNumeroSerie:string;

begin
if (not bOSTI) and
   (not bOSTA) and
   (not bOSTE) and
   (not bOSTN) and
   (not bOSTV) and
   (not bOSTR) and
   (not bOSTCf)
then
   begin
     frmpesqtra.close;
   end
else
   begin


     case itipoimpf of
       0:begin
           // Nenhuma


         end;

       1:begin
           //SWEDA

           iresposta := ECF_AbrePortaSerial;
           Analisa_Resposta_sweda();
           Retorno_Impressora_sweda();
           if iaborta = 1 then
              begin
                frmtradental.Close;
                exit;
              end;
           // endi

           for iConta := 1 to 15 do
               sNumeroSerie := sNumeroSerie + ' ';
           //endf
           iResposta := ECF_NumeroSerie( sNumeroSerie );

           SetLength (Indic,2);
           iStatus := ECF_StatusCupomFiscal(indic);
           indic := trim(indic);
           if indic = '1' then
              begin
                iresposta := ECF_CancelaCupom;
              end;
           //endi

         end;


       2:begin
           //BEMATECH

           iresposta := Bematech_FI_AbrePortaSerial;
           Analisa_Resposta_bema();
           Retorno_Impressora_bema();
           if iaborta = 1 then
              begin
                frmpesqtra.Close;
              end;
           // endi

           for iConta := 1 to 15 do
               sNumeroSerie := sNumeroSerie + ' ';
           //endf
           iResposta := Bematech_FI_NumeroSerie( sNumeroSerie );


           // verificar se há cupom aberto e caso positivo cancele-o

         end;


       else exit;

     end;


   end;
//endi





end;

procedure Tfrmloginutradental.cbxloginKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
     //spdlogin.Click;
   end;
//endi
end;

procedure Tfrmloginutradental.edisenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     //SelectNext(ActiveControl,True,True);
     spdlogin.Click;
   end;
//endi
end;

end.

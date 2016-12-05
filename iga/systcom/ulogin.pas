unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Menus;

type
  Tfrmlogin = class(TForm)
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
  frmlogin: Tfrmlogin;

implementation
  uses uGeral, uDados, ufrente;
{$R *.dfm}

procedure Tfrmlogin.spdloginClick(Sender: TObject);
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


            if Localiza_Itens_Usuario(Clientes1,frmdados.sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin



                 if localiza_DetItens_Usuario(11,icUsu,'I') > 0 then
                    begin
                      bClientesI := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'A') > 0 then
                    begin
                      bClientesA := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'E') > 0 then
                    begin
                      bClientesE := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'N') > 0 then
                    begin
                      bClientesN := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'V') > 0 then
                    begin
                      bClientesV := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'R') > 0 then
                    begin
                      bClientesR := true;
                    end;
                 //endi
                 if localiza_DetItens_Usuario(11,icUsu,'CF') > 0 then
                    begin
                      bClientesCF := true;
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

procedure Tfrmlogin.FormShow(Sender: TObject);
begin

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
end;

procedure Tfrmlogin.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure Tfrmlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if not bvenda then
   begin
     frmfrente.close; 
   end;
//endi

end;

procedure Tfrmlogin.cbxloginKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
     //spdlogin.Click;
   end;
//endi
end;

procedure Tfrmlogin.edisenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     //SelectNext(ActiveControl,True,True);
     spdlogin.Click;
   end;
//endi
end;

end.

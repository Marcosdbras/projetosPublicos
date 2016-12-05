unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, Buttons, ToolWin, ComCtrls, Grids,
  DBGrids, DB, DBClient, Mask, AppEvnts, SqlExpr, SOAPHTTPTrans,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  WinSkinStore, WinSkinData, abarra, xmldom, XMLIntf, msxmldom, XMLDoc,
  LockApplication;

type
  Tfrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimento1: TMenuItem;
    ArquivoLiquidado1: TMenuItem;
    pnlesq: TPanel;
    pnlsuperior: TPanel;
    ToolBar1: TToolBar;
    Label1: TLabel;
    edilogin: TEdit;
    Label2: TLabel;
    edisenha: TEdit;
    spdlogin: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    sbxeaq: TScrollBox;
    Stb: TStatusBar;
    spdrecebidas: TSpeedButton;
    Configurar1: TMenuItem;
    Indice1: TMenuItem;
    InfdaEmpresa1: TMenuItem;
    pnlcentral: TPanel;
    Utilitrios1: TMenuItem;
    ApagaDados1: TMenuItem;
    SYSTCOM1: TMenuItem;
    VendasPeridicas1: TMenuItem;
    BancoAuxiliarSYSTCOM1: TMenuItem;
    Produtos1: TMenuItem;
    Uusrios1: TMenuItem;
    Outros1: TMenuItem;
    Help1: TMenuItem;
    Sair1: TMenuItem;
    pnllogin: TPanel;
    spdprodutos: TSpeedButton;
    EntradadeMercadoria1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Financeiro1: TMenuItem;
    Pagas1: TMenuItem;
    Recebidas1: TMenuItem;
    Contas1: TMenuItem;
    Principal1: TMenuItem;
    Secundria1: TMenuItem;
    DeSYSTCOMparaAuxiliar1: TMenuItem;
    DeAuxiliarparaAplicativos1: TMenuItem;
    AplEvento: TApplicationEvents;
    CopiaEstoque1: TMenuItem;
    Pedido1: TMenuItem;
    CopiaEstoque3: TMenuItem;
    AjusteEstoque1: TMenuItem;
    Marca1: TMenuItem;
    Grupo1: TMenuItem;
    Funcionrio1: TMenuItem;
    N2: TMenuItem;
    SadadeProdutos1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    lbltexto: TEdit;
    Button1: TButton;
    BaixarPagamentos1: TMenuItem;
    CopiaProdutosSYSTCOM2008paraSYSTCOM2009restringindoporcdiogdebarras1: TMenuItem;
    Apagatodososdados1: TMenuItem;
    Unidade1: TMenuItem;
    TabelaICMS1: TMenuItem;
    TabelaIPI1: TMenuItem;
    TabelaSitTribA1: TMenuItem;
    TabelaSitTribB1: TMenuItem;
    ClassificaoFiscal1: TMenuItem;
    Natureza1: TMenuItem;
    Transportador1: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    UnidadeFederal1: TMenuItem;
    N7: TMenuItem;
    TipoPagamentoVenda1: TMenuItem;
    N8: TMenuItem;
    Representantes1: TMenuItem;
    Tipo1: TMenuItem;
    NotasFiscaisEmitidas1: TMenuItem;
    Comisses1: TMenuItem;
    cFunc1: TMenuItem;
    Representantes2: TMenuItem;
    Contas2: TMenuItem;
    NotasFiscais1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Button2: TButton;
    MaodeObra1: TMenuItem;
    ModulodeServico1: TMenuItem;
    N11: TMenuItem;
    OrdemdeServico1: TMenuItem;
    imgprincipal: TImage;
    imglaterale: TImage;
    imgsuperior: TImage;
    imglogin: TImage;
    lbllogin: TLabel;
    spdclientes: TSpeedButton;
    CopiadeOrdemdeServioAntigoparaNovo1: TMenuItem;
    TipoCadCli1: TMenuItem;
    N12: TMenuItem;
    TipoCli1: TMenuItem;
    Button3: TButton;
    Button4: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Caixa1: TMenuItem;
    Button5: TButton;
    Senha1: TMenuItem;
    Municipios1: TMenuItem;
    Paises1: TMenuItem;
    NaturezaOp1: TMenuItem;
    N13: TMenuItem;
    tributacao1: TMenuItem;
    modbc1: TMenuItem;
    modbcst1: TMenuItem;
    pis1: TMenuItem;
    cofins1: TMenuItem;
    vii1: TMenuItem;
    ir_ii1: TMenuItem;
    oimp1: TMenuItem;
    Marketing1: TMenuItem;
    N14: TMenuItem;
    Button6: TButton;
    TipoTabP1: TMenuItem;
    Reparar1: TMenuItem;
    reparo1: TMenuItem;
    SkinData1: TSkinData;
    Button7: TButton;
    spdordem: TSpeedButton;
    ResumodeCaixa1: TMenuItem;
    Agenda1: TMenuItem;
    DetalhedeRecebimento1: TMenuItem;
    Button8: TButton;
    ABarraPrinter1: TABarraPrinter;
    SadaEfetivadeProdutosBalco1: TMenuItem;
    spdpedido: TSpeedButton;
    entmercforn1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Mltiplospagtospagar1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    cpm1: TMenuItem;
    mmoscriptgeral: TMemo;
    mmoestruturadados: TMemo;
    lHTTP: TIdHTTP;
    XMLEnvio: TXMLDocument;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    reResp: TMemo;
    bloquear: TLockApplication;
    pnlcentralaviso: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnfechar: TButton;
    Memo1: TMemo;
    lbldatacriaexe: TLabel;
    lbldatamodexe: TLabel;
    lblmensagem: TLabel;
    Orc1: TMenuItem;
    spdorcamento: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Indice1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure ArquivoLiquidado1Click(Sender: TObject);
    procedure spdrecebidasClick(Sender: TObject);
    procedure VendasPeridicas1Click(Sender: TObject);
    procedure BancoAuxiliarSYSTCOM1Click(Sender: TObject);
    procedure spdloginClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Uusrios1Click(Sender: TObject);
    procedure bloqueio;
    procedure edisenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Sair1Click(Sender: TObject);
    procedure ediloginKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdprodutosClick(Sender: TObject);
    procedure EntradadeMercadoria1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Pagas1Click(Sender: TObject);
    procedure Principal1Click(Sender: TObject);
    procedure Secundria1Click(Sender: TObject);
    procedure DeSYSTCOMparaAuxiliar1Click(Sender: TObject);
    procedure DeAuxiliarparaAplicativos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AplEventoException(Sender: TObject; E: Exception);
    procedure InfdaEmpresa1Click(Sender: TObject);
    procedure CopiaEstoque1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure CopiaEstoque3Click(Sender: TObject);
    procedure AjusteEstoque1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure SadadeProdutos1Click(Sender: TObject);
    procedure EntradadeProdutos1Click(Sender: TObject);
    procedure Recebidas1Click(Sender: TObject);
    procedure BaixarPagamentos1Click(Sender: TObject);
    procedure CopiaProdutosSYSTCOM2008paraSYSTCOM2009restringindoporcdiogdebarras1Click(
      Sender: TObject);
    procedure Apagatodososdados1Click(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure TabelaICMS1Click(Sender: TObject);
    procedure UnidadeFederal1Click(Sender: TObject);
    procedure Natureza1Click(Sender: TObject);
    procedure Representantes1Click(Sender: TObject);
    procedure Transportador1Click(Sender: TObject);
    procedure TabelaIPI1Click(Sender: TObject);
    procedure TabelaSitTribA1Click(Sender: TObject);
    procedure TabelaSitTribB1Click(Sender: TObject);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure Tipo1Click(Sender: TObject);
    procedure TipoPagamentoVenda1Click(Sender: TObject);
    procedure NotasFiscaisEmitidas1Click(Sender: TObject);
    procedure cFunc1Click(Sender: TObject);
    procedure Representantes2Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ModulodeServico1Click(Sender: TObject);
    procedure MaodeObra1Click(Sender: TObject);
    procedure OrdemdeServico1Click(Sender: TObject);
    procedure spdclientesClick(Sender: TObject);
    procedure CopiadeOrdemdeServioAntigoparaNovo1Click(Sender: TObject);
    procedure TipoCli1Click(Sender: TObject);
    procedure TipoCadCli1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Senha1Click(Sender: TObject);
    procedure Municipios1Click(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
    procedure NaturezaOp1Click(Sender: TObject);
    procedure Marketing1Click(Sender: TObject);
    procedure modbc1Click(Sender: TObject);
    procedure modbcst1Click(Sender: TObject);
    procedure oimp1Click(Sender: TObject);
    procedure vii1Click(Sender: TObject);
    procedure ir_ii1Click(Sender: TObject);
    procedure cofins1Click(Sender: TObject);
    procedure pis1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TipoTabP1Click(Sender: TObject);
    procedure Reparar1Click(Sender: TObject);
    procedure reparo1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure spdordemClick(Sender: TObject);
    procedure spdtratamentoClick(Sender: TObject);
    procedure DetalhedeRecebimento1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SadaEfetivadeProdutosBalco1Click(Sender: TObject);
    procedure spdpedidoClick(Sender: TObject);
    procedure entmercforn1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure Mltiplospagtospagar1Click(Sender: TObject);
    procedure cpm1Click(Sender: TObject);
    procedure SkinData1SkinChanged(Sender: TObject);
    procedure atualizacaoBaseRemota;
    procedure atualizaEmitente;
    procedure btnfecharClick(Sender: TObject);
    procedure Orc1Click(Sender: TObject);
    procedure spdorcamentoClick(Sender: TObject);





  private
    { Private declarations }
    OLD_WIDTH,OLD_HEIGHT :Integer;
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

uses ugeral, uIndice, udados, uApDados, uPesqVf, uPesqVfey, uconfbcofb,
  uPesqPro, upnivelace, upesqforn, uPesqCli, upesqpag, uAtu, upesqclap,
  upesqcla, ucopiaapl, uconfig, ucopiaapl1,uPesqVprod, uPesqVd, ucopiaapl3,
  upesqfun, upesqmar, upesqgru, upesqSprod, upesqEprod, upesqrec, upesqund,
  uPesqAIFIS, upesqest, uPesqNatOp, upesqrep, uPesqFunc, uPesqForc,
  upesqtrans, uPesqIPI, upesqsita, uPesqSitb, upesqcf, upesqtipo_prod,
  upesqtipopgtov, upesqnfe, upesqcfun, upesqcrep, upesqnf, upesqmod,
  upesqcmobra, upesqos, ucopiaapl4, upesqtpcli, upesqtcc, uCaixaapa, upesqrecbto,
  uasenha, upesqMunic, upesqpais, uPesqNatOpNF, uemailmark, upesqmodbc,
  upesqmodbcst, upesqoimp, upesqvii, upesqir_ii, upesqcofins, upesqpis,
  uPesqTipoTab, upesqmat_rest, upesqost, ucaixadet, uPesqSProdb,
  upesqprodpfor, upesqcondpgto, umultpagto, upesqmatprima, uPesqOrcam;

{$R *.dfm}

procedure Tfrmprincipal.FormShow(Sender: TObject);
var vardir:string;
begin
{Não funcionou, talvés tenha q desativar a tabela.
frmdados.Cds_Dados.Active := false;
with  frmdados.Cds_Dados.FieldDefs do
begin
clear;
Add('os'       , ftInteger,  0, False);
end;
dbgrid1.Columns[1].FieldName := 'os';
frmdados.Cds_Dados.Active := true; }

   bEofBaixa := false;

   vardir := ExtractFilePath(Application.ExeName);

   memo1.Lines.Clear;

   memo1.Lines.Add('1) Acesse o site www.marcosbras.com ');
   memo1.Lines.Add('2) Clique nos links contate-nos / Chaves & Desbloqueio');
   memo1.Lines.Add('3) No final da página localize a frase');
   memo1.Lines.Add('   Você precisa fazer o login para publicar um comentário.');
   memo1.Lines.Add('4) Clique em LOGIN');
   memo1.Lines.Add('5) Se você já está cadastrado utilize seu nome de usuário e senha / FAZER LOGIN para se autenticar');
   memo1.Lines.Add('   ou clique em PERDEU A SENHA se este for o motivo');
   memo1.Lines.Add('6) Caso não tenha cadastro clique em REGISTRA-SE');
   memo1.Lines.Add('7) Após se autenticar localize a frase DEIXE UMA RESPOSTA ou COMENTÁRIO e');
   memo1.Lines.Add('   informe ID DA INSTALAÇÃO '+ IntToStr(bloquear.IDInstalacao));
   memo1.Lines.Add('   identificação do pagamento / CNPJ da empresa / Nome do contato / email e telefone');
   memo1.Lines.Add('8) Depois clique em PUBLICAR COMENTÁRIO ');
   memo1.Lines.Add('9) Aguarde contato via email');
   memo1.Lines.Add('Em caso de dúvida envie mensagem para contato@marcosbras.com');

    memo1.Lines.Add( 'Dias Restantes : ' + IntToStr(frmprincipal.bloquear.Dias_RestantesU) );
   memo1.Lines.Add( 'Data Vencimento : ' + frmprincipal.bloquear.Data_VencimentoU );
   memo1.Lines.Add('Chave : ' + frmprincipal.bloquear.Chave_RegistradaU);
   memo1.Lines.Add('E-mail : ' + frmprincipal.bloquear.Email_ClienteU);
   memo1.Lines.Add( 'Versão : ' + IntToStr(frmprincipal.bloquear.Versao_Sistema) );
   memo1.Lines.Add(  'ID da instalação : '+ IntToStr(bloquear.IDInstalacao) );

   if bloquear.Sistema_DemoU then
         memo1.Lines.Add(  'DEMO')
   else
         memo1.Lines.Add( 'REGISTRADO');

   lblmensagem.Caption := '';

   pnlcentralaviso.Align := alclient;


   lbldatacriaexe.caption := datacriexe;
   lbldatamodexe.caption := datamodexe;


    if bbloqueado then
       begin
          if bloquear.Dias_RestantesU > 30 then
             begin
               pnlcentralaviso.Visible := false;
             end
          //endi
       end
    else
       begin
          pnlcentralaviso.Visible := false;
       end;
    //endi


    if pnlcentralaviso.Visible then
       pnlcentral.Visible := false;
    //endi   





skindata1.SkinFile := vardir+'SKIN.SKN';
skindata1.Active := true;
//frmprincipal.Update;

//if fileExists(vardir+'Servidor.txt') then
//   thAtualiza.Create(false);
//endi

iNivelUsuario := 0;
lbllogin.Caption := '';
pnllogin.Caption := '';
pnllogin.Visible := false;
edilogin.Text := '';
edisenha.Text := '';

bloqueio;
if not frmdados.Sql_Dados.Connected then  
  begin
    Configurar1.Visible := true;
    Indice1.Visible := false;
    InfdaEmpresa1.Visible := false;
    BancoAuxiliarSYSTCOM1.Click;
  end;
//endi

spdrecebidas.Caption := 'Receber';
spdprodutos.Caption := 'Produtos';

try
  if frmdados.Cds_Indice.FieldByName('pct1').asString <> '' then
     begin
       imgprincipal.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct1').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct2').asString <> '' then
     begin
       imglaterale.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct2').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct3').asString <> '' then
     begin
       imgsuperior.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct3').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct3').asString <> '' then
     begin
       imglogin.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct3').asString);
     end;
  //endi

except
  smsg := 'erro durante tentativa de carregar uma das figuras';
end;


if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString = 'T' then
   begin
     OrdemdeServico1.Caption := 'Ordem de Produção';
     spdordem.Caption := 'O.P.';
   end;

edilogin.SetFocus;
end;

procedure Tfrmprincipal.Indice1Click(Sender: TObject);
begin
if frmindice=nil then
   begin
     fechatodos;
     frmindice:=Tfrmindice.Create(Self);
     frmindice.Show;
     form_ativo:= frmindice.name;
     pnlcentral.Visible := false;
     itag := indice1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if (frmdados.Cds_Indice.State in [dsInsert, dsEdit]) then
      frmdados.Cds_Indice.Post;
   //endi   
//endi

end;

procedure Tfrmprincipal.Button1Click(Sender: TObject);
var
  texto, enc, subs:string;
  fvalor:real;
  fvalor2:real;
begin
  fvalor := strtofloat(lbltexto.Text);

  fvalor2 := arredondar(fvalor,2);

  showmessage(floattostr(fvalor2));

end;

procedure Tfrmprincipal.ArquivoLiquidado1Click(Sender: TObject);
begin
if frmPesqvf=nil then
   begin
     fechatodos;
     frmPesqvf:=TfrmPesqvf.Create(Self);
     frmPesqvf.Show;
     form_ativo:= frmPesqvf.name;
     pnlcentral.Visible := false;
     itag := ArquivoLiquidado1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.spdrecebidasClick(Sender: TObject);
begin
if recebidas1.visible then
   recebidas1.Click
//endi
end;

procedure Tfrmprincipal.VendasPeridicas1Click(Sender: TObject);
begin
  try
    with frmdados.ADO_Conexao do
       begin
         Connected := false;
         ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                             'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                             'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
         Connected := true;
       end;
    //endwith
  except
     showmessage('Conexão com banco de dados SYSTCOM falhou!!!'+#13+'Favor verificar configuração no menu Indice dentro de Configurar');
     exit;
  end;

  if frmpesqvefy=nil then
     begin
       fechatodos;
       frmpesqvefy:=Tfrmpesqvefy.Create(Self);
       frmpesqvefy.Show;
       form_ativo:= frmpesqvefy.name;
       pnlcentral.Visible := false;
       itag := VendasPeridicas1.Tag; 
     end;
  //endi
end;

procedure Tfrmprincipal.BancoAuxiliarSYSTCOM1Click(Sender: TObject);
begin
if frmconfbcofb=nil then
   begin
     fechatodos;
     frmconfbcofb:=Tfrmconfbcofb.Create(Self);
     frmconfbcofb.Show;
     form_ativo:= frmconfbcofb.name;
     pnlcentral.Visible := false;
     itag := BancoAuxiliarSYSTCOM1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.spdloginClick(Sender: TObject);
var
  x,y:integer;
  menuItem : TMenuItem;
begin
  iniciavarglobal;

  if blogin then
    begin
      edilogin.SetFocus;
      pnllogin.Visible := false;
      pnllogin.Caption := '';
      fechatodos;
      bloqueio;
      exit;
    end;
  //endi

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'login';
       sqp_dados.ParamByName('VARNOME').AsString := Edilogin.Text;
       sqp_dados.ParamByName('VARSENHA').AsString := Edisenha.Text;
       sqp_dados.ExecProc;
       if sqp_dados.ParamByName('NOME').AsString <> '' then
          begin
            blogin := true;
            icusu := sqp_dados.ParamByName('codigo').Asinteger;

            pnllogin.Visible := true;
            //pnllogin.Caption := 'Acesso Liberado: '+sqp_dados.ParamByName('NOME').AsString;
            lbllogin.Caption := 'Acesso Liberado: '+sqp_dados.ParamByName('NOME').AsString;
            iNivelUsuario :=  sqp_dados.ParamByName('nivel').AsInteger;


            senha1.Visible := true;

            //Módulo cadastro
            if Localiza_Itens_Usuario(Produtos1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Produtos1.Visible := true;
                 spdprodutos.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(uusrios1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 uusrios1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Fornecedores1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Fornecedores1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Clientes1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Clientes1.Visible := true;
                 spdclientes.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(funcionrio1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 funcionrio1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Marca1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Marca1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(cpm1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 cpm1.Visible := true;
               end;
            //endi


            if Localiza_Itens_Usuario(Grupo1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Grupo1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Unidade1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Unidade1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tabelaicms1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 TabelaIcms1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tabelaIPI1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 TabelaIPI1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tabelaSitTribA1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 TabelaSitTribA1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tabelaSitTribB1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 TabelaSitTribB1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Classificaofiscal1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Classificaofiscal1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Natureza1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 Natureza1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(NaturezaOp1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 NaturezaOp1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(modbc1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 modbc1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(modbcst1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 modbcst1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(oimp1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 oimp1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(vii1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 vii1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(ir_ii1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 ir_ii1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(cofins1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 cofins1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(pis1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tributacao1.Visible := true;
                 pis1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Transportador1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Transportador1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(CondiesdePagamento1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 CondiesdePagamento1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(TipoPagamentoVenda1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 TipoPagamentoVenda1.Visible := true;
               end;
            //endi

            if Localiza_Itens_Usuario(Representantes1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Representantes1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(UnidadeFederal1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 UnidadeFederal1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Municipios1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Municipios1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Paises1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 Paises1.Visible := true;
               end;
            //endi

            //if Localiza_Itens_Usuario(UnidadeFederal1,sqp_dados.ParamByName('codigo').AsString) > 0 then
            //   begin
            //     Cadastro1.Visible := true;
            //     UnidadeFederal1.Visible := true;
            //   end;
            //endi
            if Localiza_Itens_Usuario(tipo1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tipo1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tipotabp1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tipotabp1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(reparar1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 reparar1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(modulodeservico1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 modulodeservico1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(maodeobra1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 maodeobra1.Visible := true;
               end;
            //endi

            if Localiza_Itens_Usuario(tipocli1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tipocli1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(tipocadcli1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Cadastro1.Visible := true;
                 tipocadcli1.Visible := true;
               end;
            //endi

            //modulodeservico1
            //maodeobra1
            //ordemdeservico1

            //Módulo movimento
            if Localiza_Itens_Usuario(VendasPeridicas1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 VendasPeridicas1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(ArquivoLiquidado1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 ArquivoLiquidado1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(EntradadeMercadoria1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 EntradadeMercadoria1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(EntMercForn1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 EntMercForn1.Visible := true;
               end;
            //endi


            if Localiza_Itens_Usuario(Pedido1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 Pedido1.Visible := true;
                 spdpedido.Visible := true;
                 spdorcamento.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(EntradadeProdutos1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 EntradadeProdutos1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(SadadeProdutos1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 SadadeProdutos1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(SadaEfetivadeProdutosBalco1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 SadaEfetivadeProdutosBalco1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(NotasFiscais1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 NotasFiscais1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(ordemdeservico1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 ordemdeservico1.Visible := true;
                 spdordem.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Marketing1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 Marketing1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(reparar1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Movimento1.Visible := true;
                 Reparo1.Visible := true;
               end;
            //endi

            //Financeiro
            if Localiza_Itens_Usuario(Principal1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 contas1.Visible := true;
                 Principal1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Secundria1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 contas1.Visible := true;
                 Secundria1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(pagas1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 pagas1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(recebidas1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 recebidas1.Visible := true;
                 spdrecebidas.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(NotasFiscaisEmitidas1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 NotasFiscaisEmitidas1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(ResumodeCaixa1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 ResumodeCaixa1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Detalhederecebimento1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 Detalhederecebimento1.Visible := true;
               end;
            //endi



            if Localiza_Itens_Usuario(cfunc1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 cfunc1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(representantes2,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 representantes2.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Caixa1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Financeiro1.Visible := true;
                 Caixa1.Visible := true;
               end;
            //endi



            //Módulo Utilitários
            if Localiza_Itens_Usuario(Agenda1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 utilitrios1.Visible := true;
                 Agenda1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(DeSYSTCOMparaAuxiliar1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 utilitrios1.Visible := true;
                 apagadados1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(DeAuxiliarparaAplicativos1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 utilitrios1.Visible := true;
                 DeAuxiliarparaAplicativos1.Visible := true;
               end;
            //endi



            //Módulo Configurar
            if Localiza_Itens_Usuario(bancoauxiliarsystcom1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Configurar1.Visible := true;
                 bancoauxiliarsystcom1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(indice1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Configurar1.Visible := true;
                 indice1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(infdaempresa1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Configurar1.Visible := true;
                 infdaempresa1.Visible := true;
               end;
            //endi


            if Locaiza_ItensUsuS(72,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 bConfInt := true;
               end;
            //endi




            Dbx_InvSysfcon.Active := false;
            Dbx_InvSysfcon.SQL.Clear;
            Dbx_InvSysfcon.SQL.Add('Select * from invsysf where cusu = '+sqp_dados.ParamByName('codigo').AsString);
            Dbx_Invsysfcon.Active := true;


            edisenha.Text := '';
            edilogin.SetFocus;
          end
       else
          begin
            if sqp_dados.ParamByName('NOME').AsString ='' then
               begin
                 showmessage('Senha ou Usuário Incorreto');
                 edilogin.SetFocus;
               end;
            //endi
          end;
       //endi
     end;
   //endi

end;

procedure Tfrmprincipal.Produtos1Click(Sender: TObject);
begin

if frmpesqvprod=nil then
   begin
     fechatodos;
     frmpesqvprod:=Tfrmpesqvprod.Create(Self);
     frmpesqvprod.Show;
     form_ativo:= frmpesqvprod.name;
     pnlcentral.Visible := false;
     itag := produtos1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bvProdutosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bvProdutosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bvProdutosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bvProdutosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bvProdutosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bvProdutosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bvProdutosCF := true;
        end;
     //endi





     if Locaiza_ItensUsuS(80,inttostr(icusu)) > 0 then
        begin

          if localiza_DetItens_Usuario(80,icUsu,'I') > 0 then
             begin
               bTabPrPI := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'A') > 0 then
             begin
               bTabPrPA := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'E') > 0 then
             begin
               bTabPrPE := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'N') > 0 then
             begin
               bTabPrPN := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'V') > 0 then
             begin
               bTabPrPV := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'R') > 0 then
             begin
               bTabPrPR := true;
             end;
          //endi
          if localiza_DetItens_Usuario(80,icUsu,'CF') > 0 then
             begin
               bTabPrPCF := true;
             end;
          //endi



       end;
     //endi










   end;
//endi

end;

procedure Tfrmprincipal.Uusrios1Click(Sender: TObject);
begin
if frmpnivelace=nil then
   begin
     fechatodos;
     frmpnivelace:=Tfrmpnivelace.Create(Self);
     frmpnivelace.Show;
     form_ativo:= frmpnivelace.name;
     pnlcentral.Visible := false;
     itag := Uusrios1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bUsuariosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bUsuariosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bUsuariosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bUsuariosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bUsuariosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bUsuariosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bUsuariosCF := true;
        end;
     //endi


   end;
//endi

end;

Procedure tfrmPrincipal.bloqueio;
begin
  blogin := false;
  Cadastro1.Visible := false;
  tributacao1.Visible := false;
  modbc1.Visible := false;
  modbcst1.Visible := false;
  oimp1.Visible := false;
  vii1.Visible := false;
  ir_ii1.Visible := false;
  cofins1.Visible := false;
  pis1.Visible := false;
  Movimento1.Visible := false;
  Financeiro1.Visible := false;
  Utilitrios1.Visible := false;
  Configurar1.Visible := false;
  Produtos1.Visible := false;
  Uusrios1.Visible := false;
  Fornecedores1.Visible := false;
  clientes1.Visible := false;
  tipocli1.Visible := false;
  tipocadcli1.Visible := false;
  VendasPeridicas1.Visible := false;
  ArquivoLiquidado1.Visible := false;
  ApagaDados1.Visible := false;
  BancoAuxiliarSYSTCOM1.Visible := false;
  Indice1.Visible := false;
  InfdaEmpresa1.Visible := false;
  Entradademercadoria1.Visible := false;
  EntMercForn1.Visible := false;
  contas1.Visible := false;
  principal1.Visible := false;
  secundria1.Visible := false;
  pagas1.Visible := false;
  recebidas1.Visible := false;
  cfunc1.Visible := false;
  representantes2.Visible := false;
  DeAuxiliarparaAplicativos1.Visible := false;
  Pedido1.Visible := false;
  spdpedido.Visible := false;
  spdorcamento.Visible := false;

  Funcionrio1.Visible := false;
  Marketing1.Visible := false;
  Marca1.Visible := false;
  Grupo1.Visible := false;
  Entradadeprodutos1.Visible := false;
  sadadeprodutos1.Visible := false;
  SadaEfetivadeProdutosBalco1.Visible := false;
  Unidade1.Visible := false;
  TabelaIcms1.Visible := false;
  TabelaIPI1.Visible := false;
  TabelaSitTribA1.Visible := false;
  TabelaSitTribB1.Visible := false;
  Classificaofiscal1.Visible := false;
  Natureza1.Visible := false;
  NaturezaOP1.Visible := false;
  Transportador1.Visible := false;
  TipoPagamentoVenda1.Visible := false;
  CondiesdePagamento1.Visible := false;
  Representantes1.Visible := false;
  UnidadeFederal1.Visible := false;
  Municipios1.Visible := false;
  Paises1.Visible := false;
  tipo1.Visible := false;
  tipotabp1.Visible := false;
  reparo1.Visible := false;
  reparar1.Visible := false;

  NotasFiscaisEmitidas1.Visible := false;
  NotasFiscais1.Visible := false;
  modulodeservico1.Visible  := false;
  maodeobra1.Visible  := false;
  ordemdeservico1.Visible  := false;
  Caixa1.Visible := false;
  detalhederecebimento1.Visible := false;
  senha1.Visible := false;
  systcom1.Visible := false;

  resumodecaixa1.Visible := false;
  agenda1.Visible := false;

  spdclientes.Visible := false;
  spdprodutos.Visible := false;
  spdrecebidas.Visible := false;
  spdordem.Visible := false;

end;

procedure Tfrmprincipal.edisenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     //SelectNext(ActiveControl,True,True);
     spdlogin.Click;
   end;
//endi
end;

procedure Tfrmprincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmprincipal.ediloginKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   begin
     spdlogin.Click;
   end;
//endi
end;

procedure Tfrmprincipal.spdprodutosClick(Sender: TObject);
begin
if produtos1.visible then
   produtos1.Click
//endi

end;

procedure Tfrmprincipal.EntradadeMercadoria1Click(Sender: TObject);
begin
//if frmPesqEnt=nil then
//   begin
//     fechatodos;
//     frmPesqEnt:=TfrmPesqEnt.Create(Self);
//     frmPesqEnt.Show;
//     form_ativo:= frmPesqEnt.name;
//     pnlcentral.Visible := false;
//     itag := Entradademercadoria1.Tag;
//   end;
//endi




end;

procedure Tfrmprincipal.Fornecedores1Click(Sender: TObject);
begin
if frmPesqForn=nil then
   begin
     fechatodos;
     frmPesqForc:=TfrmPesqForc.Create(Self);
     frmPesqForc.Show;
     form_ativo:= frmPesqForc.name;
     pnlcentral.Visible := false;
     itag := Fornecedores1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bFornecedoresI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bFornecedoresA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bFornecedoresE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bFornecedoresN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bFornecedoresV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bFornecedoresR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bFornecedoresCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Clientes1Click(Sender: TObject);
begin
if frmPesqCli=nil then
   begin
     fechatodos;
     frmPesqCli:=TfrmPesqCli.Create(Self);
     frmPesqCli.Show;
     form_ativo:= frmPesqCli.name;
     pnlcentral.Visible := false;
     itag := Clientes1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bClientesI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bClientesA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bClientesE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bClientesN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bClientesV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bClientesR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bClientesCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Pagas1Click(Sender: TObject);
begin
if frmPesqPag=nil then
   begin
     fechatodos;
     frmPesqPag:=TfrmPesqPag.Create(Self);
     frmPesqPag.Show;
     form_ativo:= frmPesqPag.name;
     pnlcentral.Visible := false;
     itag := Pagas1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bPagarI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bPagarA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bPagarE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bPagarN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bPagarV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bPagarR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bPagarCF := true;
        end;
     //endi


   end;
//endi

end;

procedure Tfrmprincipal.Principal1Click(Sender: TObject);
begin
if frmPesqclap=nil then
   begin
     fechatodos;
     frmPesqclap:=TfrmPesqclap.Create(Self);
     frmPesqclap.Show;
     form_ativo:= frmPesqclap.name;
     pnlcentral.Visible := false;
     itag := principal1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bclassepI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bclassepA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bclassepE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bclassepN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bclassepV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bclassepR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bclassepCF := true;
        end;
     //endi

   end;
//endi
end;

procedure Tfrmprincipal.Secundria1Click(Sender: TObject);
begin
if frmPesqcla=nil then
   begin
     fechatodos;
     frmPesqcla:=TfrmPesqcla.Create(Self);
     frmPesqcla.Show;
     form_ativo:= frmPesqcla.name;
     pnlcentral.Visible := false;
     itag := secundria1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bclasseI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bclasseA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bclasseE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bclasseN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bclasseV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bclasseR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bclasseCF := true;
        end;
     //endi

   end;
//endi
end;

procedure Tfrmprincipal.DeSYSTCOMparaAuxiliar1Click(Sender: TObject);
begin
  try
    with frmdados.ADO_Conexao do
       begin
         Connected := false;
         ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                             'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                             'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
         Connected := true;
       end;
    //endwith
  except
     showmessage('Conexão com banco de dados SYSTCOM falhou!!!'+#13+'Favor verificar configuração no menu Indice dentro de Configurar');
     exit;
  end;

if frmApDados=nil then
   begin
     fechatodos;
     frmApDados:=TfrmApDados.Create(Self);
     frmApDados.Show;
     form_ativo:= frmApDados.name;
     pnlcentral.Visible := false;
     itag := ApagaDados1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.DeAuxiliarparaAplicativos1Click(Sender: TObject);
begin
if frmcopiaapl=nil then
   begin
     fechatodos;
     frmcopiaapl:=Tfrmcopiaapl.Create(Self);
     frmcopiaapl.Show;
     form_ativo:= frmcopiaapl.name;
     pnlcentral.Visible := false;
     itag := DeAuxiliarparaAplicativos1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  SetScreenResolution(OLD_WIDTH , OLD_HEIGHT);

  fechatodos;

  try
    if fileexists(frmdados.vardir+'rankprod.cds') then
       begin
         frmdados.cdsRanking.Active := false;
         deletefile(frmdados.vardir+'rankprod.cds');
       end;
    //endi
  except
    sMsg := 'não consegui apagar rankprod.cds';
  end;

  try
    if fileexists(frmdados.vardir+'relatorio.cds') then
       begin
         frmdados.cdsrelatorio.Active := false;
         deletefile(frmdados.vardir+'relatorio.cds');
       end;
    //endi
  except
    sMsg := 'não consegui apagar relatorio.cds';
  end;


  //while stb.Panels[0].Text <> '' do
  //  begin
  //    abort;
  //  end;
  //endi
end;

procedure Tfrmprincipal.AplEventoException(Sender: TObject; E: Exception);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);
  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ' : ' + E.Message + ' : '+sMsg);
    WriteLn(arquivo, '----------------------------------------------------------------------');
    Application.ShowException(E);
  finally
    CloseFile(arquivo);
    //application.Terminate;
  end;
end;

procedure Tfrmprincipal.InfdaEmpresa1Click(Sender: TObject);
begin
if frmConfig=nil then
   begin
     fechatodos;
     frmconfig:=TfrmConfig.Create(Self);
     frmConfig.Show;
     form_ativo:= frmConfig.name;
     pnlcentral.Visible := false;
     itag := InfdaEmpresa1.Tag;
   end;
//endi
end;

procedure Tfrmprincipal.CopiaEstoque1Click(Sender: TObject);
begin
if frmcopiaapl1=nil then
   begin
     fechatodos;
     frmcopiaapl1:=Tfrmcopiaapl1.Create(Self);
     frmcopiaapl1.Show;
     form_ativo:= frmcopiaapl1.name;
     pnlcentral.Visible := false;
     itag := CopiaEstoque1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.Pedido1Click(Sender: TObject);
begin
if frmPesqVd=nil then
   begin
     fechatodos;
     frmPesqVd:=TfrmPesqVd.Create(Self);
     frmPesqVd.Show;
     form_ativo:= frmPesqVd.name;
     pnlcentral.Visible := false;
     itag := pedido1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bpedidoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bpedidoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bpedidoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bpedidoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bpedidoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bpedidoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bpedidoCF := true;
        end;
     //endi


     if Localiza_Itens_Usuario(Clientes1,inttostr(icusu)) > 0 then
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

     if Locaiza_ItensUsuS(23,inttostr(icusu)) > 0 then
        begin
          bVSEstq := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.CopiaEstoque3Click(
  Sender: TObject);
begin
if frmcopiaapl3=nil then
   begin
     fechatodos;
     frmcopiaapl3:=Tfrmcopiaapl3.Create(Self);
     frmcopiaapl3.Show;
     form_ativo:= frmcopiaapl3.name;
     pnlcentral.Visible := false;
     itag := CopiaEstoque3.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.AjusteEstoque1Click(Sender: TObject);
var cmar:string;
begin
  if application.MessageBox('Deseja Continuar?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin



       with frmdados do
         begin

           Dbx_Dbf.active := false;
           Dbx_Dbf.Sql.Clear;
           Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'material.dbf'));
           Dbx_Dbf.active := true;

         end;
       //endi


       try
         frmdados.Dbx_Dbf.First;
         while not  frmdados.Dbx_Dbf.Eof do
           begin
             
             frmdados.Dbx_Exec.Active := false;
             frmdados.Dbx_Exec.SQL.Clear;
             frmdados.Dbx_Exec.SQL.Add('Select * from vProdutos where codigo = '+frmdados.Dbx_Dbf.FieldByName('codmat').asString);
             frmdados.Dbx_Exec.Active := true;

             if frmdados.Dbx_Exec.RecordCount > 0 then
                begin

                  frmdados.dbx_Exec.Active := false;
                  frmdados.dbx_Exec.SQL.Clear;
                  frmdados.Dbx_Exec.SQL.Add('select * from marca where codigo = '+frmdados.Dbx_Dbf.FieldByName('codfor').asString);
                  frmdados.Dbx_Exec.Active := true;
                  cmar := frmdados.Dbx_Exec.fieldbyname('codigo').asString;

                  if cmar <> '' then
                     begin

                       frmdados.dbx_Exec.Active := false;
                       frmdados.dbx_Exec.SQL.Clear;
                       frmdados.Dbx_Exec.SQL.Add('Update vProdutos set cmar = '+cmar+' where codigo = '+frmdados.Dbx_Dbf.FieldByName('codmat').asString);
                       frmdados.Dbx_Exec.ExecSQL;

                     end;
                  //endi

                end;
             //endi

             frmdados.Dbx_Dbf.Next;

           end;

         except
           showmessage('Erro!!!');
         end;
     end;
  //endi

end;

procedure Tfrmprincipal.Funcionrio1Click(Sender: TObject);
begin
if frmPesqfunc=nil then
   begin
     fechatodos;
     frmPesqfunc:=TfrmPesqfunc.Create(Self);
     frmPesqfunc.Show;
     form_ativo:= frmPesqfunc.name;
     pnlcentral.Visible := false;
     itag := funcionrio1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bfuncionariosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bfuncionariosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bfuncionariosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bfuncionariosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bfuncionariosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bfuncionariosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bfuncionariosCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Marca1Click(Sender: TObject);
begin

if frmPesqMar=nil then
   begin
     fechatodos;
     frmPesqMar:=TfrmPesqMar.Create(Self);
     frmPesqMar.Show;
     form_ativo:= frmPesqMar.name;
     pnlcentral.Visible := false;
     itag := Marca1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bMarcaI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bMarcaA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bMarcaE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bMarcaN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bMarcaV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bMarcaR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bMarcaCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Grupo1Click(Sender: TObject);
begin

if frmPesqGru=nil then
   begin
     fechatodos;
     frmPesqGru:=TfrmPesqGru.Create(Self);
     frmPesqGru.Show;
     form_ativo:= frmPesqGru.name;
     pnlcentral.Visible := false;
     itag := Grupo1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bGrupoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bGrupoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bGrupoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bGrupoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bGrupoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bGrupoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bGrupoCF := true;
        end;
     //endi
     
   end;
//endi


end;

procedure Tfrmprincipal.SadadeProdutos1Click(Sender: TObject);
begin
if frmPesqSprod=nil then
   begin
     fechatodos;
     frmPesqSProd:=TfrmPesqSprod.Create(Self);
     frmPesqSprod.Show;
     form_ativo:= frmPesqSProd.name;
     pnlcentral.Visible := false;
     itag := SadadeProdutos1.Tag;
   end;
//endi
end;

procedure Tfrmprincipal.EntradadeProdutos1Click(Sender: TObject);
begin
if frmPesqEprod=nil then
   begin
     fechatodos;
     frmPesqEProd:=TfrmPesqEprod.Create(Self);
     frmPesqEprod.Show;
     form_ativo:= frmPesqEProd.name;
     pnlcentral.Visible := false;
     itag := EntradadeProdutos1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.Recebidas1Click(Sender: TObject);
begin

//if frmPesqrec=nil then
if frmPesqrecbto=nil then
   begin
     fechatodos;
     //frmPesqrec:=TfrmPesqrec.Create(Self);
     frmPesqrecbto:=TfrmPesqrecbto.Create(Self);
     //frmPesqrec.Show;
     frmPesqrecbto.Show;
     //form_ativo:= frmPesqrec.name;
     form_ativo:= frmPesqrecbto.name;
     pnlcentral.Visible := false;
     itag := Recebidas1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bVencimentosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bVencimentosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bVencimentosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bVencimentosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bVencimentosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bVencimentosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bVencimentosCF := true;
        end;
     //endi


   end;
//endi

end;

procedure Tfrmprincipal.BaixarPagamentos1Click(Sender: TObject);
var x:integer;
begin
  if application.MessageBox('Deseja Realmente Ajustar Contas?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     exit;
  //endi
  tabela := 'Vencimentos';
  stb.panels[0].text := 'Ajuste Iniciado...';
  with frmdados do
    begin
      dbx_svenda.Active := false;
      dbx_svenda.SQL.Clear;
      dbx_svenda.SQL.Add('Select * from sVenda where lancado = '+quotedstr('F'));
      dbx_svenda.active := true;

      cds_vencto.Active := false;
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos');
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

      while not dbx_svenda.Eof do
        begin
         for x := 1 to dbx_svenda.fieldbyname('parc').asInteger do
           begin

              if x = 1 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo1').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup1').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup1').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup1').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi

              if x = 2 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo2').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup2').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup2').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup2').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi

              if x = 3 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo3').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup3').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup3').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup3').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi

              if x = 4 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo3').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup3').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup3').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup3').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi
              
              if x = 5 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo3').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup3').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup3').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup3').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi

              if x = 6 then
                begin
                  Cds_Vencto.Append;
                  Cds_Vencto.FieldByName('prazo').asInteger := dbx_svenda.FieldByName('prazo3').asInteger;
                  Cds_Vencto.FieldByName('dtv').asString := dbx_svenda.FieldByName('vctdup3').asString;
                  Cds_Vencto.FieldByName('valor').asfloat := dbx_svenda.FieldByName('vlrdup3').asfloat;
                  Cds_Vencto.FieldByName('originado').asString := '2'+dbx_sVenda.fieldbyname('tipoop').asString;
                  Cds_Vencto.FieldByName('ccli').asInteger := dbx_sVenda.fieldbyname('ccli').asInteger;
                  Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := Cds_Indice.fieldbyname('parcpadrao').asInteger;
                  Cds_Vencto.FieldByName('csit').asInteger := 1;
                  Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',dbx_svenda.fieldbyname('parc').asfloat);
                  Cds_Vencto.FieldByName('doc').asstring := dbx_sVenda.fieldbyname('numdup3').asString;
                  Cds_Vencto.FieldByName('ehvenda').asstring := 'T';
                  Cds_Vencto.FieldByName('c_svenda').asInteger := dbx_svenda.FieldByName('codigo').asInteger;
                  Cds_Vencto.FieldByName('dte').asString := dbx_svenda.FieldByName('datacad').asString;
                  Cds_Vencto.Post;
                end;
              //endi

           end;

           dbx_svenda.Next;
        end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('update svenda set lancado = '+quotedstr('T')+' where lancado = '+quotedstr('F'));
      dbx_exec.ExecSQL;
      stb.panels[0].text := '';

    end;
  //endth



end;

procedure Tfrmprincipal.CopiaProdutosSYSTCOM2008paraSYSTCOM2009restringindoporcdiogdebarras1Click(
  Sender: TObject);
  var

      x:integer;
      sEnc, sSubs, sNovaInf, sInfAnt, sDataI, sDataF:string;
      ResultSet : tCustomSqlDataSet;
      icrep, iped, itipo_pgto, icpro, imaxcpro, idescprod, icontregdesc, icontregprod, idescod, icuni, iccli,
      imaxccli, icclap, imaxcclap, iccla, imaxccla, icfor, imaxcfor, icpag, imaxcpag:integer;
      pgtotvalor, fValor:real;
      sValor:String;
      aTipo:array of string;

begin
  if application.MessageBox('Deseja Realmente Prosseguir com essa operação?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     exit;
  //endi



        try
        with frmdados.ADO_Conexao do
           begin
             Connected := false;
             ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                                 'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                                 'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
             Connected := true;
           end;
        //endwith
        except
        end;


        with frmdados.ADO_Mestre do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabestoque');
             active := true;
           end;
        //endi
        //fim do filtro

        //inicia gravação do Mestre
        while not frmdados.ADO_Mestre.Eof do
          begin

            try


            if frmDados.ADO_Mestre.FieldByName('esreferencia').asString <> '' then
               begin



            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao unidade cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from unidade Where descricao = '+QuotedStr(frmDados.ADO_Mestre.FieldByName('esmed').asString));
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into unidade (');

                          sql.Add('descricao');
                          //sql.Add('codigo,');

                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmDados.ADO_Mestre.FieldByName('esmed').asString));
                          //sql.Add(frmDados.ADO_Mestre.FieldByName('esmed').asString+',');
                          //sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from unidade order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi


              end;
            //endth


            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao produto cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre.FieldByName('escodigo').asString);
                active := true;
                icontregprod := recordcount;

                active := false;
                sql.Clear;
                sql.Add('select * from produtos');
                active := true;

                if icontregprod = 0 then
                   begin
                     if frmdados.ADO_Mestre.FieldByName('esdescricao').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into produtos (');

                          sql.Add('descricao');
                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('esdescricao').asString));
                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                // Fim da Verificação do produto
              end;
            //endth

            with FrmDados.Dbx_Exec do
              begin

                //Verifica se há produto cadastrado no cadastro de produtos
                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre.FieldByName('escodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre.FieldByName('escodigo').asInteger > 0 then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into dprodutos (');

                          //1
                          sql.Add('codigo,');

                          //2
                          if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                             sql.Add('cuni,');
                          //endi

                          //3
                          if frmDados.ADO_Mestre.FieldByName('esPreco').asfloat > 0 then
                             sql.Add('prve,');
                          //endi

                          //4
                          if frmDados.ADO_Mestre.FieldByName('esPrecop').asfloat > 0 then
                             sql.Add('prcubs,');
                          //endi

                          //5
                          if frmDados.ADO_Mestre.FieldByName('esMargem').asfloat > 0 then
                             sql.Add('per,');
                          //endi

                          //6
                          if frmDados.ADO_Mestre.FieldByName('esPrecop').asfloat > 0 then
                             sql.Add('prcu,');
                          //endi


                          //...
                          sql.Add('CBAR,');
                          sql.Add('cdescprod,');
                          sql.Add('ULTCONT');

                          sql.Add(')');
                          sql.Add('values (');

                          //1
                          sql.Add(frmDados.ADO_Mestre.FieldByName('escodigo').asString+',');

                          //2
                          if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                             sql.Add(inttostr(icuni)+',');
                          //endi

                          //3
                          if frmDados.ADO_Mestre.FieldByName('esPreco').asfloat > 0 then
                             begin
                               sValor := frmDados.ADO_Mestre.FieldByName('espreco').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //4
                          if frmDados.ADO_Mestre.FieldByName('esPrecop').asfloat > 0 then
                             begin
                               sValor := frmDados.ADO_Mestre.FieldByName('esprecop').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //5
                          if frmDados.ADO_Mestre.FieldByName('esMargem').asfloat > 0 then
                             begin
                               sValor := frmDados.ADO_Mestre.FieldByName('esMargem').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //6
                          if frmDados.ADO_Mestre.FieldByName('esPrecop').asfloat > 0 then
                             begin
                               sValor :=  frmDados.ADO_Mestre.FieldByName('esprecop').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi


                          //...
                          sql.Add(Quotedstr( frmDados.ADO_Mestre.FieldByName('esreferencia').asString )+',');
                          sql.Add(inttostr(idescprod)+',');
                          svalor := datetostr(date);
                          svalor := bar_is_point(svalor);
                          sql.Add(Quotedstr(svalor));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from dprodutos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                     with frmdados.dbx_Exec do
                        begin
                          try
                          //active := false;
                          //sql.Clear;
                          //sql.Add('update Produtos p set p.descricao = '+Quotedstr(frmDados.ADO_Mestre.FieldByName('esdescricao').asString)+' Where p.codigo =  '+inttostr(idescprod)+';' );
                          //ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := frmDados.ADO_Mestre.FieldByName('esPreco').asstring;
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prve = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+') and ( d.prve = 0 );');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := frmDados.ADO_Mestre.FieldByName('escustobruto').asstring;
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prcubs = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+') and ( d.prcubs = 0 );');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := frmDados.ADO_Mestre.FieldByName('escustobruto').asstring;
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prcu = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+') and ( d.prcu = 0 );');
                          ExecSQL;

                          except
                             showmessage(sql.Text);

                          end;
                        end;
                     //endw
                   end;
                //endi
                //Fim da Verificação do produto
              end;
            //endth
            

            end;
            //endi


            except
            end;

            frmdados.ADO_Mestre.Next;


          end;
        //endw

end;

procedure Tfrmprincipal.Apagatodososdados1Click(Sender: TObject);
  var

      x:integer;
      sEnc, sSubs, sNovaInf, sInfAnt, sDataI, sDataF:string;
      ResultSet : tCustomSqlDataSet;
      icrep, iped, itipo_pgto, icpro, imaxcpro, idescprod, icontregdesc, icontregprod, idescod, icuni, iccli,
      imaxccli, icclap, imaxcclap, iccla, imaxccla, icfor, imaxcfor, icpag, imaxcpag:integer;
      pgtotvalor, fValor:real;
      sValor:String;
      aTipo:array of string;

begin
  if application.MessageBox('CUIDADO!!!!!! CUIDADO!!!!!! CUIDADOS!!!! ESSE USO É RECOMENDÁVEL SOMENTE NA PRIMEIRA INSTALAÇÃO, SE NÃO ESTÁ COM CERTEZA, NÃO FAÇA ISSO OU COPIE O ARQUIVO ANTES DE PROSSEGUIR, DESEJA REALMENTE APAGAR TODOS OS DADOS?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     exit;
  //endi


       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from dvenda');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_dvenda_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from svenda');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_svenda_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from dprodutos');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_dprodutos_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from produtos');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_produtos_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from clientes');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_clientes_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Ent_Prod');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Ent_Prod_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Fornecedores');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Fornecedores_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from representantes');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_representantes_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from pagar');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_pagar_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from classep');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classep_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from classe');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classe_ID TO 0',nil,@ResultSet);
       except
       end;


       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Vencimentos');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Vencimentos_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Grupo');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Grupo_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Marca');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Marca_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Funcionarios');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Funcionarios_ID TO 0',nil,@ResultSet);
       except
       end;


end;

procedure Tfrmprincipal.Unidade1Click(Sender: TObject);
begin
if frmPesqUnd=nil then
   begin
     fechatodos;
     frmPesqUnd:=TfrmPesqUnd.Create(Self);
     frmPesqUnd.Show;
     form_ativo:= frmPesqUnd.name;
     pnlcentral.Visible := false;
     itag := Unidade1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bUnidadeI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bUnidadeA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bUnidadeE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bUnidadeN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bUnidadeV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bUnidadeR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bUnidadeCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.TabelaICMS1Click(Sender: TObject);
begin
if frmPesqAliqImpFis=nil then
   begin
     fechatodos;
     frmPesqAliqImpFis:=TfrmPesqAliqImpFis.Create(Self);
     frmPesqAliqImpFis.Show;
     form_ativo:= frmPesqAliqImpFis.name;
     pnlcentral.Visible := false;
     itag := tabelaicms1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bAliqImpFisI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bAliqImpFisA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bAliqImpFisE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bAliqImpFisN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bAliqImpFisV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bAliqImpFisR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bAliqImpFisCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.UnidadeFederal1Click(Sender: TObject);
begin
if frmPesqEst=nil then
   begin
     fechatodos;
     frmPesqEst:=TfrmPesqEst.Create(Self);
     frmPesqEst.Show;
     form_ativo:= frmPesqEst.name;
     pnlcentral.Visible := false;
     itag := UnidadeFederal1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bEstadosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bEstadosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bEstadosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bEstadosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bEstadosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bEstadosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bEstadosCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Natureza1Click(Sender: TObject);
begin

if frmPesqNatOp=nil then
   begin
     fechatodos;
     frmPesqNatOp:=TfrmPesqNatOp.Create(Self);
     frmPesqNatOp.Show;
     form_ativo:= frmPesqNatOp.name;
     pnlcentral.Visible := false;
     itag := Natureza1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bNatOpI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bNatOpA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bNatOpE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bNatOpN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bNatOpV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bNatOpR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bNatOpCF := true;
        end;
     //endi
   end;
//endi



end;

procedure Tfrmprincipal.Representantes1Click(Sender: TObject);
begin
if frmPesqRep=nil then
   begin
     fechatodos;
     frmPesqRep :=TfrmPesqRep.Create(Self);
     frmPesqRep.Show;
     form_ativo:= frmPesqRep.name;
     pnlcentral.Visible := false;
     itag := Representantes1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bRepresentantesI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bRepresentantesA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bRepresentantesE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bRepresentantesN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bRepresentantesV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bRepresentantesR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bRepresentantesCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Transportador1Click(Sender: TObject);
begin
if frmPesqTrans=nil then
   begin
     fechatodos;
     frmPesqTrans:=TfrmPesqTrans.Create(Self);
     frmPesqTrans.Show;
     form_ativo:= frmPesqTrans.name;
     pnlcentral.Visible := false;
     itag := Transportador1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bTransportadoresI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bTransportadoresA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bTransportadoresE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bTransportadoresN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bTransportadoresV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bTransportadoresR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bTransportadoresCF := true;
        end;
     //endi




   end;
//endi

end;

procedure Tfrmprincipal.TabelaIPI1Click(Sender: TObject);
begin
if frmPesqIPI=nil then
   begin
     fechatodos;
     frmPesqIPI:=TfrmPesqIPI.Create(Self);
     frmPesqIPI.Show;
     form_ativo:= frmPesqIPI.name;
     pnlcentral.Visible := false;
     itag := tabelaipi1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bIPII := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bIPIA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bIPIE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bIPIN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bIPIV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bIPIR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bIPICF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.TabelaSitTribA1Click(Sender: TObject);
begin
if frmPesqSITA=nil then
   begin
     fechatodos;
     frmPesqSITA:=TfrmPesqSITA.Create(Self);
     frmPesqSITA.Show;
     form_ativo:= frmPesqSITA.name;
     pnlcentral.Visible := false;
     itag := TabelaSitTribA1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bSITAI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bSITAA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bSITAE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bSITAN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bSITAV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bSITAR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bSITACF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.TabelaSitTribB1Click(Sender: TObject);
begin
if frmPesqSITB=nil then
   begin
     fechatodos;
     frmPesqSITB:=TfrmPesqSITB.Create(Self);
     frmPesqSITB.Show;
     form_ativo:= frmPesqSITB.name;
     pnlcentral.Visible := false;
     itag := TabelaSitTribA1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bSITBI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bSITBA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bSITBE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bSITBN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bSITBV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bSITBR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bSITBCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.ClassificaoFiscal1Click(Sender: TObject);
begin
if frmPesqcf=nil then
   begin
     fechatodos;
     frmPesqcf:=TfrmPesqcf.Create(Self);
     frmPesqcf.Show;
     form_ativo:= frmPesqcf.name;
     pnlcentral.Visible := false;
     itag := ClassificaoFiscal1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bCFI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bCFA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bCFE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bCFN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bCFV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bCFR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bCFCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Tipo1Click(Sender: TObject);
begin
if frmPesqTipo_prod=nil then
   begin
     fechatodos;
     frmPesqTipo_prod:=TfrmPesqTipo_prod.Create(Self);
     frmPesqTipo_prod.Show;
     form_ativo:= frmPesqTipo_prod.name;
     pnlcentral.Visible := false;
     itag := Tipo1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bTipo_ProdI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bTipo_ProdA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bTipo_ProdE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bTipo_ProdN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bTipo_ProdV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bTipo_ProdR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bTipo_ProdCF := true;
        end;
     //endi
   end;
//endi


end;

procedure Tfrmprincipal.TipoPagamentoVenda1Click(Sender: TObject);
begin
if frmPesqtipopgtov=nil then
   begin
     fechatodos;
     frmPesqtipopgtov:=TfrmPesqtipopgtov.Create(Self);
     frmPesqtipopgtov.Show;
     form_ativo:= frmPesqtipopgtov.name;
     pnlcentral.Visible := false;
     itag := TipoPagamentoVenda1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          btipo_pgtoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          btipo_pgtoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          btipo_pgtoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          btipo_pgtoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          btipo_pgtoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          btipo_pgtoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          btipo_pgtoCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.NotasFiscaisEmitidas1Click(Sender: TObject);
begin
if frmPesqNFE=nil then
   begin
     fechatodos;
     frmPesqNFE:=TfrmPesqNFE.Create(Self);
     frmPesqNFE.Show;
     form_ativo:= frmPesqNFE.name;
     pnlcentral.Visible := false;
     itag := NotasFiscaisEmitidas1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bNFEI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bNFEA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bNFEE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bNFEN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bNFEV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bNFER := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bNFECF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.cFunc1Click(Sender: TObject);
begin
if frmPesqcfun=nil then
   begin
     fechatodos;
     frmPesqcfun:=TfrmPesqcfun.Create(Self);
     frmPesqcfun.Show;
     form_ativo:= frmPesqcfun.name;
     pnlcentral.Visible := false;
     itag := cfunc1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bComissaoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bComissaoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bComissaoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bComissaoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bComissaoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bComissaoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bComissaoCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Representantes2Click(Sender: TObject);
begin
if frmPesqcRep=nil then
   begin
     fechatodos;
     frmPesqcRep:=TfrmPesqcRep.Create(Self);
     frmPesqcRep.Show;
     form_ativo:= frmPesqcRep.name;
     pnlcentral.Visible := false;
     itag := Representantes2.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bComissaorI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bComissaorA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bComissaorE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bComissaorN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bComissaorV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bComissaorR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bComissaorCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.NotasFiscais1Click(Sender: TObject);
begin
if frmPesqnf=nil then
   begin
     fechatodos;
     frmPesqnf:=TfrmPesqnf.Create(Self);
     frmPesqnf.Show;
     form_ativo:= frmPesqnf.name;
     pnlcentral.Visible := false;
     itag := NotasFiscais1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bNFI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bNFA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bNFE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bNFN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bNFV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bNFR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bNFCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Button2Click(Sender: TObject);
begin
Atualiza_Versao_Aplicacao;
end;

procedure Tfrmprincipal.ModulodeServico1Click(Sender: TObject);
begin
if frmPesqMod=nil then
   begin
     fechatodos;
     frmPesqMod:=TfrmPesqMod.Create(Self);
     frmPesqMod.Show;
     form_ativo:= frmPesqMod.name;
     pnlcentral.Visible := false;
     itag := Modulodeservico1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bModuloI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bModuloA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bModuloE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bModuloN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bModuloV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bModuloR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bModuloCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.MaodeObra1Click(Sender: TObject);
begin
if frmPesqcmobra=nil then
   begin
     fechatodos;
     frmPesqcmobra:=TfrmPesqcmobra.Create(Self);
     frmPesqcmobra.Show;
     form_ativo:= frmPesqcmobra.name;
     pnlcentral.Visible := false;
     itag := maodeobra1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bcmobraI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bcmobraA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bcmobraE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bcmobraN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bcmobraV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bcmobraR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bcmobraCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.OrdemdeServico1Click(Sender: TObject);
begin
if frmPesqOS=nil then
   begin
     fechatodos;
     frmPesqOS:=TfrmPesqOS.Create(Self);

     if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString = 'T' then
     begin
        frmPesqOS.Caption := 'Ordem de Produção'
     end
     else
     begin
        frmPesqOS.Caption := 'Ordem de Serviço'
     end;

     frmPesqOS.Show;
     form_ativo:= frmPesqOS.name;
     pnlcentral.Visible := false;
     itag := ordemdeservico1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bOSI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bOSA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bOSE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bOSN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bOSV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bOSR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bOSCF := true;
        end;
     //endi

     if Localiza_Itens_Usuario(Clientes1,inttostr(icusu)) > 0 then
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

     if Locaiza_ItensUsuS(23,inttostr(icusu)) > 0 then
        begin
          bVSEstq := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.spdclientesClick(Sender: TObject);
begin
if clientes1.visible then
   clientes1.Click
//endi

end;

procedure Tfrmprincipal.CopiadeOrdemdeServioAntigoparaNovo1Click(
  Sender: TObject);
begin
if frmcopiaapl4=nil then
   begin
     fechatodos;
     frmcopiaapl4:=Tfrmcopiaapl4.Create(Self);
     frmcopiaapl4.Show;
     form_ativo:= frmcopiaapl4.name;
     pnlcentral.Visible := false;
     itag := CopiadeOrdemdeServioAntigoparaNovo1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.TipoCli1Click(Sender: TObject);
begin
if frmPesqtpcli=nil then
   begin
     fechatodos;
     frmPesqtpcli:=TfrmPesqtpcli.Create(Self);
     frmPesqtpcli.Show;
     form_ativo:= frmPesqtpcli.name;
     pnlcentral.Visible := false;
     itag := tipocli1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bTipoCliI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bTipocliA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bTipoCliE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bTipoCliN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bTipoCliV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bTipoCliR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bTipoCliCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.TipoCadCli1Click(Sender: TObject);
begin
if frmPesqtcc=nil then
   begin
     fechatodos;
     frmPesqtcc:=TfrmPesqtcc.Create(Self);
     frmPesqtcc.Show;
     form_ativo:= frmPesqtcc.name;
     pnlcentral.Visible := false;
     itag := tipocadcli1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bSituCadCliI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bSituCadCliA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bSituCadCliE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bSituCadCliN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bSituCadCliV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bSituCadCliR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bSituCadCliCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Button3Click(Sender: TObject);
var
  ip:string;
begin
  {
  ip := ipexterno(idhttp1);
  showmessage(ip);

  }
end;

procedure Tfrmprincipal.Button4Click(Sender: TObject);
begin
backup(savedialog1);
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
OLD_WIDTH := Monitor.Width;
OLD_HEIGHT := Monitor.Height;

if (OLD_WIDTH<=800)and(OLD_HEIGHT<=600)then
begin
  SetScreenResolution(1024, 768);
end;

atualizacaoBaseRemota;

if bbloqueado then
   begin

     bloquear.executar;

   end;
//endi






end;

procedure Tfrmprincipal.Caixa1Click(Sender: TObject);
begin
if frmCaixaApa=nil then
   begin
     fechatodos;
     frmCaixaApa:=TfrmCaixaApa.Create(Self);
     frmCaixaApa.Show;
     form_ativo:= frmCaixaApa.name;
     pnlcentral.Visible := false;
     itag := Caixa1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bCaixaApaI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bCaixaApaA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bCaixaApaE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bCaixaApaN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bCaixaApaV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bCaixaApaR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bCaixaApaCF := true;
        end;
     //endi
     if Locaiza_ItensUsuS(60,inttostr(icusu)) > 0 then
        begin
          bPerA := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Button5Click(Sender: TObject);
begin

if testacpf(lbltexto.text) = false then
showmessage('Errado')
else
showmessage('OK')

end;

procedure Tfrmprincipal.Senha1Click(Sender: TObject);
begin
frmasenha := tfrmasenha.Create(self);
frmasenha.ShowModal;
frmasenha.Free;
end;

procedure Tfrmprincipal.Municipios1Click(Sender: TObject);
begin
if frmPesqMunic=nil then
   begin
     fechatodos;
     frmPesqMunic:=TfrmPesqMunic.Create(Self);
     frmPesqMunic.Show;
     form_ativo:= frmPesqMunic.name;
     pnlcentral.Visible := false;
     itag := Municipios1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bMunicI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bMunicA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bMunicE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bMunicN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bMunicV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bMunicR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bMunicCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Paises1Click(Sender: TObject);
begin
if frmPesqPais=nil then
   begin
     fechatodos;
     frmPesqPais:=TfrmPesqPais.Create(Self);
     frmPesqPais.Show;
     form_ativo:= frmPesqPais.name;
     pnlcentral.Visible := false;
     itag := Paises1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bPaisI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bPaisA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bPaisE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bPaisN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bPaisV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bPaisR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bPaisCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.NaturezaOp1Click(Sender: TObject);
begin
if frmPesqNatOpNF=nil then
   begin
     fechatodos;
     frmPesqNatOpNF:=TfrmPesqNatOpNF.Create(Self);
     frmPesqNatOpNF.Show;
     form_ativo:= frmPesqNatOpNF.name;
     pnlcentral.Visible := false;
     itag := NaturezaOp1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bNatOpNFI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bNatOpNFA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bNatOpNFE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bNatOpNFN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bNatOpNFV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bNatOpNFR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bNatOpNFCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Marketing1Click(Sender: TObject);
begin
if frmemailmark=nil then
   begin
     fechatodos;
     frmemailmark:=Tfrmemailmark.Create(Self);
     frmemailmark.Show;
     form_ativo:= frmemailmark.name;
     pnlcentral.Visible := false;
     itag := Marketing1.Tag;

     {


     if Localiza_Itens_Usuario(Clientes1,inttostr(icusu)) > 0 then
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






     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bmarketingI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bmarketingA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bmarketingE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bmarketingN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bmarketingV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bmarketingR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bmarketingCF := true;
        end;
     //endi
     }



   end;
//endi

end;

procedure Tfrmprincipal.modbc1Click(Sender: TObject);
begin
if frmPesqmodbc=nil then
   begin
     fechatodos;
     frmPesqmodbc:=TfrmPesqmodbc.Create(Self);
     frmPesqmodbc.Show;
     form_ativo:= frmPesqmodbc.name;
     pnlcentral.Visible := false;
     itag := modbc1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bmodbcI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bmodbcA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bmodbcE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bmodbcN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bmodbcV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bmodbcR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bmodbcCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.modbcst1Click(Sender: TObject);
begin
if frmPesqmodbcst=nil then
   begin
     fechatodos;
     frmPesqmodbcst:=TfrmPesqmodbcst.Create(Self);
     frmPesqmodbcst.Show;
     form_ativo:= frmPesqmodbcst.name;
     pnlcentral.Visible := false;
     itag := modbcst1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bmodbcstI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bmodbcstA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bmodbcstE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bmodbcstN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bmodbcstV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bmodbcstR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bmodbcstCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.oimp1Click(Sender: TObject);
begin
if frmPesqoimp=nil then
   begin
     fechatodos;
     frmPesqoimp:=TfrmPesqoimp.Create(Self);
     frmPesqoimp.Show;
     form_ativo:= frmPesqoimp.name;
     pnlcentral.Visible := false;
     itag := oimp1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          boimpI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          boimpA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          boimpE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          boimpN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          boimpV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          boimpR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          boimpCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.vii1Click(Sender: TObject);
begin
if frmPesqvii=nil then
   begin
     fechatodos;
     frmPesqvii:=TfrmPesqvii.Create(Self);
     frmPesqvii.Show;
     form_ativo:= frmPesqvii.name;
     pnlcentral.Visible := false;
     itag := vii1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bviiI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bviiA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bviiE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bviiN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bviiV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bviiR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bviiCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.ir_ii1Click(Sender: TObject);
begin
if frmPesqir_ii=nil then
   begin
     fechatodos;
     frmPesqir_ii:=TfrmPesqir_ii.Create(Self);
     frmPesqir_ii.Show;
     form_ativo:= frmPesqir_ii.name;
     pnlcentral.Visible := false;
     itag := ir_ii1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bir_iiI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bir_iiA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bir_iiE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bir_iiN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bir_iiV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bir_iiR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bir_iiCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.cofins1Click(Sender: TObject);
begin
if frmPesqcofins=nil then
   begin
     fechatodos;
     frmPesqcofins:=TfrmPesqcofins.Create(Self);
     frmPesqcofins.Show;
     form_ativo:= frmPesqcofins.name;
     pnlcentral.Visible := false;
     itag := cofins1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bcofinsI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bcofinsA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bcofinsE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bcofinsN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bcofinsV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bcofinsR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bcofinsCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.pis1Click(Sender: TObject);
begin
if frmPesqpis=nil then
   begin
     fechatodos;
     frmPesqpis:=TfrmPesqpis.Create(Self);
     frmPesqpis.Show;
     form_ativo:= frmPesqpis.name;
     pnlcentral.Visible := false;
     itag := pis1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bpisI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bpisA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bpisE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bpisN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bpisV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bpisR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bpisCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Button6Click(Sender: TObject);
var scampo:string;
begin
scampo := 'descricao';
showmessage(frmdados.Cds_invsys.FieldByName(scampo).AsString);
end;

procedure Tfrmprincipal.TipoTabP1Click(Sender: TObject);
begin
if frmPesqTipoTab=nil then
   begin
     fechatodos;
     frmPesqTipoTab:=TfrmPesqTipoTab.Create(Self);
     frmPesqTipoTab.Show;
     form_ativo:= frmPesqTipoTab.name;
     pnlcentral.Visible := false;
     itag := tipotabp1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          btipotabI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          btipotabA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          btipotabE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          btipotabN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          btipotabV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          btipotabR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          btipotabCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Reparar1Click(Sender: TObject);
begin
if frmPesqmat_rest=nil then
   begin
     fechatodos;
     frmPesqmat_rest:=TfrmPesqmat_rest.Create(Self);
     frmPesqmat_rest.Show;
     form_ativo:= frmPesqmat_rest.name;
     pnlcentral.Visible := false;
     itag := reparar1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bmat_RestaurarI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bmat_RestaurarA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bmat_RestaurarE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bmat_RestaurarN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bmat_RestaurarV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bmat_RestaurarR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bmat_RestaurarCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.reparo1Click(Sender: TObject);
begin
if frmPesqOST=nil then
   begin
     fechatodos;
     frmPesqOST:=TfrmPesqOST.Create(Self);
     frmPesqOST.Show;
     form_ativo:= frmPesqOST.name;
     pnlcentral.Visible := false;
     itag := reparo1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bOSTI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bOSTA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bOSTE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bOSTN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bOSTV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bOSTR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bOSTCF := true;
        end;
     //endi

     if Localiza_Itens_Usuario(Clientes1,inttostr(icusu)) > 0 then
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

     if Locaiza_ItensUsuS(23,inttostr(icusu)) > 0 then
        begin
          bVSEstq := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Button7Click(Sender: TObject);
begin

if opendialog1.Execute then
   begin

     skindata1.SkinFile := opendialog1.FileName;
     skindata1.Active := true;


   end;
//endi

end;

procedure Tfrmprincipal.spdordemClick(Sender: TObject);
begin
if OrdemdeServico1.visible then
   OrdemdeServico1.Click
//endi

end;

procedure Tfrmprincipal.spdtratamentoClick(Sender: TObject);
begin
if reparo1.visible then
   reparo1.Click
//endi

end;

procedure Tfrmprincipal.DetalhedeRecebimento1Click(Sender: TObject);
begin
if frmcaixadet=nil then
   begin
     fechatodos;
     frmcaixadet:=Tfrmcaixadet.Create(Self);
     frmcaixadet.Show;
     form_ativo:= frmcaixadet.name;
     pnlcentral.Visible := false;
     itag := Caixa1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bcaixadetI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bcaixadetA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bcaixadetE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bcaixadetN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bcaixadetV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bcaixadetR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bcaixadetCF := true;
        end;
     //endi
     if Locaiza_ItensUsuS(60,inttostr(icusu)) > 0 then
        begin
          bPerA := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.Button8Click(Sender: TObject);
begin


          ABarraPrinter1.Codigo           := '123456789012';
          ABarraPrinter1.Tipo            := cdEAN13;
          ABarraPrinter1.CorBarra         := clBlack;
          ABarraPrinter1.CorEspaco        := clWhite;
          ABarraPrinter1.Largura            := 4; //5     largura das barras
          ABarraPrinter1.Comprimento    := 20; //30   comprimento da barra
          ABarraPrinter1.LinhaPrinter    := 50;  //espacamento
          ABarraPrinter1.ColunaPrinter    := 45; //espacamento
          ABarraPrinter1.Execute;

end;

procedure Tfrmprincipal.SadaEfetivadeProdutosBalco1Click(Sender: TObject);
begin
if frmPesqSprodb=nil then
   begin
     fechatodos;
     frmPesqSProdb:=TfrmPesqSprodb.Create(Self);
     frmPesqSprodb.Show;
     form_ativo:= frmPesqSProdb.name;
     pnlcentral.Visible := false;
     itag := SadaEfetivadeProdutosBalco1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.spdpedidoClick(Sender: TObject);
begin
if pedido1.visible then
   pedido1.Click
//endi

end;

procedure Tfrmprincipal.entmercforn1Click(Sender: TObject);
begin
if frmPesqprodpfor=nil then
   begin
     fechatodos;
     frmPesqprodpfor:=TfrmPesqprodpfor.Create(Self);
     frmPesqprodpfor.Show;
     form_ativo:= frmPesqprodpfor.name;
     pnlcentral.Visible := false;
     itag := entmercforn1.Tag;
   end;
//endi

end;

procedure Tfrmprincipal.ToolButton1Click(Sender: TObject);
begin
  with frmdados do
    begin

      if sql_dados.Connected then
         begin

           Cds_Usuarios.Active := false;
           Cds_Usuarios.FileName :=vardir+'Usuarios.cds';
           //if not fileexists(vardir+'Usuarios.cds') then
           //   begin
           Cds_Usuarios.CreateDataSet;
           Cds_Usuarios.SaveToFile(vardir+'Usuarios.cds',dfbinary);
           //   end;
           //endi
           Cds_Usuarios.Active := true;


           Cds_Clientes.Active := false;
           Cds_Clientes.FileName :=vardir+'Clientes.cds';
           //if not fileexists(vardir+'Clientes.cds') then
           //   begin
           Cds_Clientes.CreateDataSet;
           Cds_Clientes.SaveToFile(vardir+'Clientes.cds',dfbinary);
           //   end;
           //endi
           Cds_Clientes.Active := true;


           Cds_Produtos.Active := false;
           Cds_Produtos.FileName :=vardir+'Produtos.cds';
           //if not fileexists(vardir+'Produtos.cds') then
           //   begin
           Cds_Produtos.CreateDataSet;
           Cds_Produtos.SaveToFile(vardir+'Produtos.cds',dfbinary);
           //   end;
           //endi
           Cds_Produtos.Active := true;


         end
      else
         begin
           showmessage('Não consegui salvar local... Banco de Dados Não está conectado...');
         end;
      //endi

    end;
  //endth

end;

procedure Tfrmprincipal.CondiesdePagamento1Click(Sender: TObject);
begin
if frmPesqcondpgto=nil then
   begin
     fechatodos;
     frmPesqcondpgto:=TfrmPesqcondpgto.Create(Self);
     frmPesqcondpgto.Show;
     form_ativo:= frmPesqcondpgto.name;
     pnlcentral.Visible := false;
     itag := CondiesdePagamento1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bcond_pgtoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bcond_pgtoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bcond_pgtoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bcond_pgtoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bcond_pgtoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bcond_pgtoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bcond_pgtoCF := true;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmprincipal.Mltiplospagtospagar1Click(Sender: TObject);
begin
if frmmultpgto=nil then
   begin
     fechatodos;
     frmmultpgto:=Tfrmmultpgto.Create(Self);
     frmmultpgto.Show;
     form_ativo:= frmmultpgto.name;
     pnlcentral.Visible := false;
     itag := Pagas1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bPagarI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bPagarA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bPagarE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bPagarN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bPagarV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bPagarR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bPagarCF := true;
        end;
     //endi


   end;
//endi

end;

procedure Tfrmprincipal.cpm1Click(Sender: TObject);
begin
if frmPesqMatprima=nil then
   begin
     fechatodos;
     frmPesqMatprima:=TfrmPesqMatprima.Create(Self);
     frmPesqMatprima.Show;
     form_ativo:= frmPesqMatprima.name;
     pnlcentral.Visible := false;
     itag := cpm1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bmatprimaI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bmatprimaA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bmatprimaE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bmatprimaN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bmatprimaV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bmatprimaR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bmatprimaCF := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.SkinData1SkinChanged(Sender: TObject);
begin
   showmessage('');
end;


procedure tfrmprincipal.atualizacaoBaseRemota;
begin
  try

      try
        atualizaEmitente;

      except
        reResp.Lines.Add('erro ao sincronizar dados');
      end;

  finally
     //tenviaxml.Terminate;
      reResp.Lines.Add('fim da sincronização');
  end;


end;


procedure tfrmprincipal.atualizaEmitente;

var

  lParamList: TStringList;
  lResponse : TStringStream;
  smostrar, chave, cnpj, nome, bloqueado:string;
  x:integer;

begin

  x:=0;

  with frmdados do
    begin

       cds_config.Active := false;
       dbx_config.Active := false;
       dbx_config.SQL.Clear;
       dbx_config.SQL.Add('select * from config');
       dbx_config.active  := true;
       cds_config.Active := true;

       cds_indice.Active := false;
       dbx_indice.Active := false;
       dbx_indice.SQL.Clear;
       dbx_indice.SQL.Add('select * from indice');
       dbx_indice.active  := true;
       cds_indice.Active := true;



       chave:=frmdados.cds_indice.fieldbyname('chaveconsultacep').asString;



    end;

  setlength(abloqueio, frmdados.cds_config.RecordCount);

  while not frmdados.cds_config.Eof do
    begin

       cnpj:=tirapontos(tirabarras(tiratracos(frmdados.cds_config.fieldbyname('campo3').AsString)));

        try
            lParamList := TStringList.Create;
            lResponse := TStringStream.Create('');

            lParamList.Add('modo=I');
            lParamList.Add('nome='+frmdados.cds_config.FieldByName('campo1').AsString);
            lParamList.Add('fantasia='+frmdados.cds_config.FieldByName('campo2').AsString);
            lParamList.Add('cnpj='+tirapontos(tirabarras(tiratracos(frmdados.cds_config.fieldbyname('campo3').AsString))));
            lParamList.Add('ie='+frmdados.cds_config.FieldByName('campo4').AsString);
            lParamList.Add('cidade='+frmdados.cds_config.FieldByName('campo5').AsString);
            lParamList.Add('Estado='+frmdados.cds_config.FieldByName('campo16').AsString);
            lParamList.Add('endereco='+frmdados.cds_config.FieldByName('campo6').AsString);
            lParamList.Add('nro='+frmdados.cds_config.FieldByName('nro').AsString);
            lParamList.Add('bairro='+frmdados.cds_config.FieldByName('bairro').AsString);
            lParamList.Add('compl='+frmdados.cds_config.FieldByName('campo17').AsString);
            lParamList.Add('cep='+frmdados.cds_config.FieldByName('cep').AsString);
            lParamList.Add('telefones='+frmdados.cds_config.FieldByName('fone').AsString);
            lParamList.Add('email='+frmdados.cds_config.FieldByName('campo8').AsString);
            lParamList.Add('obs='+frmdados.cds_config.FieldByName('campo7').AsString);
            lParamList.Add('site=');
            lParamList.Add('contato=');
            lParamList.Add('im=');
            lParamList.Add('regtrib=');
            lParamList.Add('prog=SYSTCOM');


            try
                lHTTP := TIdHTTP.Create(nil);
                try
                  lHTTP.Post('http://aplicativos-marcosbras.rhcloud.com/wsemitente.php', lParamList, lResponse);
                  lResponse.Position := 0;
                  reResp.Lines.LoadFromStream(lResponse);
                finally

                  lHTTP.Free;
                  lParamList.Free;
                  lResponse.Free();

                end;


            except
              reResp.Lines.Add( 'Conexão com servidor inativa');
            end;






         //--------------------


            try




               XMLDocument1.Active := False;
               XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsemitente.php?chave='+chave+cnpj+'&modo=C');
               XMLDocument1.Active := True;

               nome      := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['nome'].Text;
               cnpj      := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['cnpj'].Text;
               bloqueado := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['bloqueado'].Text;

               abloqueio[x] := bloqueado+cnpj;
               x := x + 1;

               XMLDocument1.Active := false;
            except

            end;



            frmdados.cds_config.Next;


        finally
           reResp.Lines.Add( 'Atuallizado com sucesso');


        end;

    end;
  //endw


  for x := 0 to length(abloqueio)-1 do
    begin
      if copy(abloqueio[x],1,1) = '0' then
         begin
           bbloqueado := false;
         end;
      //endif

    end;
  //endfor




  //--------------------------------------------------------------------



end;



procedure Tfrmprincipal.btnfecharClick(Sender: TObject);
begin
  pnlcentral.Visible := false;
end;

procedure Tfrmprincipal.Orc1Click(Sender: TObject);
begin
if frmPesqOrcam=nil then
   begin
     fechatodos;
     frmPesqOrcam:=TfrmPesqOrcam.Create(Self);
     frmPesqOrcam.Show;
     form_ativo:= frmPesqOrcam.name;
     pnlcentral.Visible := false;
     itag := orc1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bpedidoI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bpedidoA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bpedidoE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bpedidoN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bpedidoV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bpedidoR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bpedidoCF := true;
        end;
     //endi


     if Localiza_Itens_Usuario(Clientes1,inttostr(icusu)) > 0 then
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

     if Locaiza_ItensUsuS(23,inttostr(icusu)) > 0 then
        begin
          bVSEstq := true;
        end;
     //endi

   end;
//endi

end;

procedure Tfrmprincipal.spdorcamentoClick(Sender: TObject);
begin
if Orc1.visible then
   Orc1.Click
//endi
end;

end.

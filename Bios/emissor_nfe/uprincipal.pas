unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, DB, DBTables, WinSkinData,
  Buttons, ComCtrls, ExtCtrls, jpeg, LockApplication, xmldom, XMLIntf,
  msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ShellAPI;

type
  Tfrmprincipal = class(TForm)
    MMMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Emitentes1: TMenuItem;
    Destinatrios1: TMenuItem;
    ransportadoras1: TMenuItem;
    Produtos1: TMenuItem;
    ributaes1: TMenuItem;
    Emissor1: TMenuItem;
    NFE1: TMenuItem;
    Lanados1: TMenuItem;
    NotasEmitidas1: TMenuItem;
    IBGE1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Paises1: TMenuItem;
    skin: TSkinData;
    Estados1: TMenuItem;
    Municpios1: TMenuItem;
    ICMS1: TMenuItem;
    IPI1: TMenuItem;
    SitTributriaAOrigem1: TMenuItem;
    SitTributriaBContribuio1: TMenuItem;
    ClassificaoFiscalNCM1: TMenuItem;
    ModDetBaseClculo1: TMenuItem;
    N4: TMenuItem;
    ModDetBaseClculoSubsTrib1: TMenuItem;
    ImpostoI1: TMenuItem;
    ImpostoII1: TMenuItem;
    ImpostoIII1: TMenuItem;
    PIS1: TMenuItem;
    Cofins1: TMenuItem;
    CFOP1: TMenuItem;
    NaturezaOperaa1: TMenuItem;
    Unidade1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Servio1: TMenuItem;
    iposdeServios1: TMenuItem;
    N7: TMenuItem;
    RegimedeContribuio1: TMenuItem;
    ModeObra1: TMenuItem;
    Fornecedores1: TMenuItem;
    RegimedeTributao1: TMenuItem;
    CSOSN1: TMenuItem;
    N8: TMenuItem;
    Configurao1: TMenuItem;
    Indice1: TMenuItem;
    utilitario1: TMenuItem;
    ExportarDados1: TMenuItem;
    ConsultaCEPnaInternet1: TMenuItem;
    ImportarDadosTXT1: TMenuItem;
    ApagaTodososDados1: TMenuItem;
    N3: TMenuItem;
    N9: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    lblmensagem: TLabel;
    StatusBar1: TStatusBar;
    pnlcentral: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    btncadcli: TBitBtn;
    btnforn: TBitBtn;
    btnprodutos: TBitBtn;
    BitBtn1: TBitBtn;
    bloqueio: TLockApplication;
    Timer1: TTimer;
    Memo1: TMemo;
    Reparar1: TMenuItem;
    btnimportar: TBitBtn;
    odpExec: TOpenDialog;
    lHTTP: TIdHTTP;
    XMLEnvio: TXMLDocument;
    Button2: TButton;
    reResp: TMemo;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    N10: TMenuItem;
    BaixarNCM1: TMenuItem;
    Desbloqueiodeenvio1: TMenuItem;
    Sobre1: TMenuItem;
    Button3: TButton;

    //Response: TStringStream;
    //Arquivo: TIdMultipartFormDataStream;

    procedure FormShow(Sender: TObject);
    procedure dbg_paisesTitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Municpios1Click(Sender: TObject);
    procedure ICMS1Click(Sender: TObject);
    procedure IPI1Click(Sender: TObject);
    procedure SitTributriaAOrigem1Click(Sender: TObject);
    procedure SitTributriaBContribuio1Click(Sender: TObject);
    procedure ClassificaoFiscalNCM1Click(Sender: TObject);
    procedure ModDetBaseClculo1Click(Sender: TObject);
    procedure ModDetBaseClculoSubsTrib1Click(Sender: TObject);
    procedure ImpostoI1Click(Sender: TObject);
    procedure ImpostoII1Click(Sender: TObject);
    procedure ImpostoIII1Click(Sender: TObject);
    procedure PIS1Click(Sender: TObject);
    procedure Cofins1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure NaturezaOperaa1Click(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure iposdeServios1Click(Sender: TObject);
    procedure RegimedeContribuio1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ransportadoras1Click(Sender: TObject);
    procedure ModeObra1Click(Sender: TObject);
    procedure Destinatrios1Click(Sender: TObject);
    procedure RegimedeTributao1Click(Sender: TObject);
    procedure Emitentes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure NFE1Click(Sender: TObject);
    procedure btncadcliClick(Sender: TObject);
    procedure btnfornClick(Sender: TObject);
    procedure btnprodutosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CSOSN1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Indice1Click(Sender: TObject);
    procedure ExportarDados1Click(Sender: TObject);
    procedure ConsultaCEPnaInternet1Click(Sender: TObject);
    procedure ImportarDadosTXT1Click(Sender: TObject);
    procedure NotasEmitidas1Click(Sender: TObject);
    procedure ApagaTodososDados1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Reparar1Click(Sender: TObject);
    procedure btnimportarClick(Sender: TObject);
    procedure abretabelas();
    procedure fechatabelas();

    procedure consultavencidos;
    procedure atualizacaoBaseRemota;
    procedure atualizaEmitente;
    procedure atualizaCliente;
    procedure BaixarNCM1Click(Sender: TObject);
    procedure Desbloqueiodeenvio1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    

  private
    { Private declarations }
    //tenviaxml:threadenviaxml;
  public
    { Public declarations }
    scaminho:string;
  end;

var
  frmprincipal: Tfrmprincipal;

implementation
   uses uGeral, udados, upesqpaises, ufiltropaises, upesqest, uPesqMunic,
  upesqicms, upesqipi, upesqsita, upesqsitb, upesqcf, upesqmodbc,
  upesqmodbcst, upesqimpostoi, upesqimpostoII, upesqimpostoIII, upesqpis,
  upesqcofins, upesqcfop, upesqnatop, upesqunidade, upesqtiposerv,
  upesqrcserv, upesqprodutos, upesqtransportadora, upesqcmobra,
  upesqclientes, upesqregtrib, upesqemitente, upesqfornecedores, upesqnf,
  upesqcsosn, uindice, upcodibge, upesqnfemi, baixarncm, usobre, uaviso;
{$R *.dfm}

procedure Tfrmprincipal.FormShow(Sender: TObject);
var
  vardir:string;


begin
   vardir := extractfilepath(application.ExeName);  

   memo1.Lines.Clear;

   memo1.Lines.Add('Prezado cliente, ');
   memo1.Lines.Add('');
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

   memo1.Lines.Add('   ID DA INSTALAÇÃO '+ IntToStr(bloqueio.IDInstalacao));
   memo1.Lines.Add('Em caso de dúvida envie mensagem para marcosbras@hotmail.com');
   memo1.Lines.Add( 'Dias Restantes : ' + IntToStr(frmprincipal.bloqueio.Dias_RestantesU) );
   memo1.Lines.Add( 'Data Vencimento : ' + frmprincipal.bloqueio.Data_VencimentoU );
   memo1.Lines.Add('Chave : ' + frmprincipal.bloqueio.Chave_RegistradaU);
   memo1.Lines.Add('E-mail : ' + frmprincipal.bloqueio.Email_ClienteU);
   memo1.Lines.Add( 'Versão : ' + IntToStr(frmprincipal.bloqueio.Versao_Sistema) );
   memo1.Lines.Add(  'ID da instalação : '+ IntToStr(bloqueio.IDInstalacao) );
   memo1.Lines.Add('');
   memo1.Lines.Add('=================================================================================');

   if bloqueio.Sistema_DemoU then
      memo1.Lines.Add(  'DEMO')
   else
      memo1.Lines.Add( 'REGISTRADO');

   lblmensagem.Caption := '';
   skin.SkinFile := vardir+'SKIN.SKN';
   skin.Active := true;

   pnlcentral.Align := alclient;

   label1.caption := datacriexe;
   label2.caption := datamodexe;


   //quando o sistema expirar deve mudar para true
   //memo1.Lines.Add('1) Acesse o site www.marcosbras.com ');
   //memo1.Lines.Add('2) Clique nos links contate-nos / Chaves & Desbloqueio');
   //memo1.Lines.Add('3) No final da página localize a frase');
   //memo1.Lines.Add('   Você precisa fazer o login para publicar um comentário.');
   //memo1.Lines.Add('4) Clique em LOGIN');
   //memo1.Lines.Add('5) Se você já está cadastrado utilize seu nome de usuário e senha / FAZER LOGIN para se autenticar');
   //memo1.Lines.Add('   ou clique em PERDEU A SENHA se este for o motivo');
   //memo1.Lines.Add('6) Caso não tenha cadastro clique em REGISTRA-SE');
   //memo1.Lines.Add('7) Após se autenticar localize a frase DEIXE UMA RESPOSTA ou COMENTÁRIO e');
   //memo1.Lines.Add('8) Depois clique em PUBLICAR COMENTÁRIO ');
   //memo1.Lines.Add('   identificação do pagamento / CNPJ da empresa / Nome do contato / email e telefone');
    //memo1.Lines.Add('9) Aguarde contato via email');

    if bbloqueado then
       begin

          if bloqueio.Dias_RestantesU > 30 then
             pnlcentral.Visible := false;

       end
    else
       begin

          pnlcentral.Visible := false;

       end;
    //endi


    //tenviaxml := threadenviaxml.Create(true);
    //tenviaxml.FreeOnTerminate := true;
    //tenviaxml.Resume;

    if frmdados.cdstempvencido.RecordCount > 0 then
       begin
         frmaviso := tfrmaviso.create(self);
         frmaviso.Memo1.Clear;
         frmaviso.Memo1.Lines.Add('Prezado cliente, ');
         frmaviso.Memo1.Lines.Add('');
         frmaviso.Memo1.Lines.Add('Existe valor em aberto para ser liquidado, você pode clicar em contratar serviço');
         frmaviso.Memo1.Lines.Add('e regularizar a situação');
         frmaviso.Memo1.Lines.Add('');
         frmaviso.Memo1.Lines.Add('Att. Marcos Brás');
         frmaviso.Memo1.Lines.Add('email: marcosbras@hotmail.com');
         frmaviso.Memo1.Lines.Add('=================================================================================');

         frmdados.cdstempvencido.First;
         while not frmdados.cdstempvencido.Eof do
           begin
             frmaviso.Memo1.Lines.Add('Vencimento.: '+frmdados.cdstempvencido.fieldbyname('dtv').asString );
             frmaviso.Memo1.Lines.Add('Descrição..: '+frmdados.cdstempvencido.fieldbyname('descricao').asString );
             frmaviso.Memo1.Lines.Add('Valor........: '+formatfloat('###,###,##0.00',frmdados.cdstempvencido.fieldbyname('vlrorig').asfloat) );
             frmaviso.Memo1.Lines.Add('=================================================================================');

             frmdados.cdstempvencido.Next;

           end;


         frmaviso.showmodal;
         frmaviso.free;
       end;
    //endi


end;

procedure Tfrmprincipal.dbg_paisesTitleClick(Column: TColumn);
begin
//Grid_Ordena_e_PintaTitulo(dbg_paises, column, frmdados.Cds_Paises);
end;

procedure Tfrmprincipal.Edit1Change(Sender: TObject);
begin
//if dbg_paises.SelectedField = frmdados.cds_Paisescodigo then
//   frmdados.cds_Paises.Locate('codigo',edit1.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure Tfrmprincipal.Paises1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqpaises = nil then
     begin
       frmpesqpaises := tfrmpesqpaises.create(self);
       frmpesqpaises.show;
     end;
  //endi
end;

procedure Tfrmprincipal.Estados1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqest = nil then
     begin
       frmpesqest := tfrmpesqest.create(self);
       frmpesqest.show;
     end;
  //endi
end;

procedure Tfrmprincipal.Municpios1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqMunic = nil then
     begin
       frmpesqMunic := tfrmpesqMunic.create(self);
       frmpesqMunic.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ICMS1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqicms = nil then
     begin
       frmpesqicms := tfrmpesqicms.create(self);
       frmpesqicms.show;
     end;
  //endi

end;

procedure Tfrmprincipal.IPI1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqIPI = nil then
     begin
       frmpesqIPI := tfrmpesqIPI.create(self);
       frmpesqIPI.show;
     end;
  //endi

end;

procedure Tfrmprincipal.SitTributriaAOrigem1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqSita = nil then
     begin
       frmpesqSita := tfrmpesqSita.create(self);
       frmpesqSita.show;
     end;
  //endi

end;

procedure Tfrmprincipal.SitTributriaBContribuio1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqSitb = nil then
     begin
       frmpesqSitb := tfrmpesqSitb.create(self);
       frmpesqSitb.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ClassificaoFiscalNCM1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqcf = nil then
     begin
       frmpesqcf := tfrmpesqcf.create(self);
       frmpesqcf.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ModDetBaseClculo1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqmodbc = nil then
     begin
       frmpesqmodbc := tfrmpesqmodbc.create(self);
       frmpesqmodbc.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ModDetBaseClculoSubsTrib1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqmodbcst = nil then
     begin
       frmpesqmodbcst := tfrmpesqmodbcst.create(self);
       frmpesqmodbcst.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ImpostoI1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqimpostoI = nil then
     begin
       frmpesqimpostoI := tfrmpesqimpostoI.create(self);
       frmpesqimpostoI.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ImpostoII1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqimpostoII = nil then
     begin
       frmpesqimpostoII := tfrmpesqimpostoII.create(self);
       frmpesqimpostoII.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ImpostoIII1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqimpostoIII = nil then
     begin
       frmpesqimpostoIII := tfrmpesqimpostoIII.create(self);
       frmpesqimpostoIII.show;
     end;
  //endi

end;

procedure Tfrmprincipal.PIS1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqpis = nil then
     begin
       frmpesqpis := tfrmpesqpis.create(self);
       frmpesqpis.show;
     end;
  //endi

end;

procedure Tfrmprincipal.Cofins1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqcofins = nil then
     begin
       frmpesqcofins := tfrmpesqcofins.create(self);
       frmpesqcofins.show;
     end;
  //endi

end;

procedure Tfrmprincipal.CFOP1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqcfop = nil then
     begin
       frmpesqcfop := tfrmpesqcfop.create(self);
       frmpesqcfop.show;
     end;
  //endi

end;

procedure Tfrmprincipal.NaturezaOperaa1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqnatop = nil then
     begin
       frmpesqnatop := tfrmpesqnatop.create(self);
       frmpesqnatop.show;
     end;
  //endi

end;

procedure Tfrmprincipal.Unidade1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqunidade = nil then
     begin
       frmpesqunidade := tfrmpesqunidade.create(self);
       frmpesqunidade.show;
     end;
  //endi

end;

procedure Tfrmprincipal.iposdeServios1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqtiposerv = nil then
     begin
       frmpesqtiposerv := tfrmpesqtiposerv.create(self);
       frmpesqtiposerv.show;
     end;
  //endi

end;

procedure Tfrmprincipal.RegimedeContribuio1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqrcserv = nil then
     begin
       frmpesqrcserv := tfrmpesqrcserv.create(self);
       frmpesqrcserv.show;
     end;
  //endi

end;

procedure Tfrmprincipal.Produtos1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqprodutos = nil then
     begin
       frmpesqprodutos := tfrmpesqprodutos.create(self);
       frmpesqprodutos.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ransportadoras1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqtransportadora = nil then
     begin
       frmpesqtransportadora := tfrmpesqtransportadora.create(self);
       frmpesqtransportadora.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ModeObra1Click(Sender: TObject);
begin
  //fechatodos;
  //if frmpesqcmobra = nil then
  //   begin
  //     frmpesqcmobra := tfrmpesqcmobra.create(self);
  //     frmpesqcmobra.show;
  //   end;
  //endi

end;

procedure Tfrmprincipal.Destinatrios1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqclientes = nil then
     begin
       frmpesqclientes := tfrmpesqclientes.create(self);
       frmpesqclientes.show;
     end;
  //endi

end;

procedure Tfrmprincipal.RegimedeTributao1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqregtrib = nil then
     begin
       frmpesqregtrib := tfrmpesqregtrib.create(self);
       frmpesqregtrib.show;
     end;
  //endi

end;

procedure Tfrmprincipal.Emitentes1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqemitente = nil then
     begin
       frmpesqemitente := tfrmpesqemitente.create(self);
       frmpesqemitente.show;
     end;
  //endi

end;

procedure Tfrmprincipal.Fornecedores1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqfornecedores = nil then
     begin
       frmpesqfornecedores := tfrmpesqfornecedores.create(self);
       frmpesqfornecedores.show;
     end;
  //endi

end;

procedure Tfrmprincipal.NFE1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqnf = nil then
     begin
       frmdados.cds_fornecedores.Active := true;
       frmdados.cds_clientes.Active := true;

       frmpesqnf := tfrmpesqnf.create(self);
       frmpesqnf.show;
     end;
  //endi

end;

procedure Tfrmprincipal.btncadcliClick(Sender: TObject);
begin
Destinatrios1.Click;
end;

procedure Tfrmprincipal.btnfornClick(Sender: TObject);
begin
Fornecedores1.Click;
end;

procedure Tfrmprincipal.btnprodutosClick(Sender: TObject);
begin
Produtos1.Click;
end;

procedure Tfrmprincipal.BitBtn1Click(Sender: TObject);
begin
NFE1.Click;
end;

procedure Tfrmprincipal.CSOSN1Click(Sender: TObject);
begin
  fechatodos;
  if frmpesqcsosn = nil then
     begin
       frmpesqcsosn := tfrmpesqcsosn.create(self);
       frmpesqcsosn.show;
     end;
  //endi

end;

procedure Tfrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fechatodos;
if frmpesqnf <> nil then
   frmpesqnf.Close;
//endi
//showmessage('fechando...');

end;

procedure Tfrmprincipal.Indice1Click(Sender: TObject);
begin
  fechatodos;
  if frmindice = nil then
     begin
       frmindice := tfrmindice.create(self);
       frmindice.show;
     end;
  //endi

end;

procedure Tfrmprincipal.ExportarDados1Click(Sender: TObject);
var f: TextFile;
    vardir:string;
begin
  if application.MessageBox('Deseja Exportar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.exportarc;
       frmdados.exportarf;
       frmdados.exportarp;
     end;
  //endi
end;

procedure Tfrmprincipal.ConsultaCEPnaInternet1Click(Sender: TObject);
begin
  frmpcodibge := tfrmpcodibge.create(self);
  frmpcodibge.showmodal;
  frmpcodibge.free;
end;

procedure Tfrmprincipal.ImportarDadosTXT1Click(Sender: TObject);
begin

  if application.MessageBox('Deseja Importar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.importarc;
       frmdados.importarf;
       frmdados.importarp;
     end;
  //endi

end;

procedure Tfrmprincipal.NotasEmitidas1Click(Sender: TObject);
begin
fechatodos;
if frmpesqnfemi = nil then
   begin
     frmpesqnfemi := tfrmpesqnfemi.create(self);
     frmpesqnfemi.show;
   end;
//endi
end;

procedure Tfrmprincipal.ApagaTodososDados1Click(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Apagar Todos os Dados? Esta Operação não terá mais retorno!!!','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       

       lblmensagem.Caption := 'Apagando todos dados...';

       with frmdados do
         begin
           cds_nf.Active := true;
           while not cds_nf.Eof do
             begin
               cds_nfp.Active := false;
               cds_nfp.Filter := 'cnf = '+cds_nf.fieldbyname('codigo').asString;
               cds_nfp.Active := true;
               while not cds_nfp.Eof do
                 begin
                   cds_nfp.Delete;
                 end;
               //endi
               cds_nf.Delete;
             end;
           //endi

           cds_clientes.Active := true;
           while not cds_clientes.Eof do
             begin
               cds_clientes.Delete;
             end;
           //endi

           cds_fornecedores.Active := true;
           while not cds_fornecedores.Eof do
             begin
               cds_fornecedores.Delete;
             end;
           //endi

           cds_produtos.Active := true;
           while not cds_produtos.Eof do
             begin
               cds_produtos.Delete;
             end;
           //endi

           cds_clientes.Active := false;
           cds_fornecedores.Active := false;
           cds_produtos.Active := false;
           cds_nf.Active := false;
           cds_nfp.Active := false;
         end;
       //endi

       lblmensagem.Caption := '';

     end;
  //endi

end;

procedure Tfrmprincipal.Button1Click(Sender: TObject);
begin
  pnlcentral.Visible := false;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin

atualizacaoBaseRemota;

if bbloqueado then
   begin

     bloqueio.executar;

   end;
//endi


end;

procedure Tfrmprincipal.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmprincipal.Reparar1Click(Sender: TObject);
begin
{
if application.MessageBox('Este processo irá EXCLUIR CLIENTES e FORNECEDORES e pode demorar algumas horas, você quer continuar?','Importante',mb_yesno) <> 6 then
   exit;
//endi

lblmensagem.Caption := 'Aguarde, corrigindo dados...';
with frmdados do
 begin

 cds_corrigirNFP.ProviderName := 'dsp_nfp';
 cds_corrigirNFP.Active := false;
 sql_nfp.Active := false;
 sql_nfp.SQL.Clear;
 sql_nfp.SQL.Add('select * from nfp');
 sql_nfp.Active := true;
 cds_corrigirNFP.Active := true;

  while not cds_corrigirNFP.Eof do
     begin
       if cds_corrigirNFP.FieldByName('codigo').AsInteger <> cds_corrigirNFP.FieldByName('id').AsInteger then
          begin
             cds_corrigirNFP.Edit;
             cds_corrigirNFP.FieldByName('codigo').AsInteger := cds_corrigirNFP.fieldbyname('id').AsInteger;
             cds_corrigirNFP.Post;
          end;
       //endi
       cds_corrigirNFP.Next;
     end;


 cds_corrigirNFE.ProviderName := 'dsp_nfe';
 cds_corrigirNFE.Active := false;
 sql_nfe.Active := false;
 sql_nfe.SQL.Clear;
 sql_nfe.SQL.Add('select * from nfe');
 sql_nfe.Active := true;
 cds_corrigirNFE.Active := true;

  while not cds_corrigirNFE.Eof do
     begin
       if cds_corrigirNFE.FieldByName('codigo').AsInteger <> cds_corrigirNFE.FieldByName('id').AsInteger then
          begin
             cds_corrigirNFE.Edit;
             cds_corrigirNFE.FieldByName('codigo').AsInteger := cds_corrigirNFE.fieldbyname('id').AsInteger;
             cds_corrigirNFE.Post;
          end;
       //endi
       cds_corrigirNFE.Next;
     end;


  cds_corrigirnf.ProviderName := 'dsp_nf';
 cds_corrigirnf.Active := false;
 sql_nf.Active := false;
 sql_nf.SQL.Clear;
 sql_nf.SQL.Add('select * from nf');
 sql_nf.Active := true;
 cds_corrigirnf.Active := true;

  while not cds_corrigirnf.Eof do
     begin
       if cds_corrigirnf.FieldByName('codigo').AsInteger <> cds_corrigirnf.FieldByName('id').AsInteger then
          begin
             cds_corrigirnf.Edit;
             cds_corrigirnf.FieldByName('codigo').AsInteger := cds_corrigirnf.fieldbyname('id').AsInteger;
             cds_corrigirnf.Post;
          end;
       //endi
       cds_corrigirnf.Next;
     end;


    sql_exec.Active := false;
    sql_exec.SQL.Clear;
    sql_exec.SQL.Add('delete from fornecedores');
    sql_exec.ExecSQL;


    importarc;
    importarf;

     lblmensagem.Caption := '';

  cds_corrigirclientes.ProviderName := 'dsp_clientes';
 cds_corrigirclientes.Active := false;
 sql_clientes.Active := false;
 sql_clientes.SQL.Clear;
 sql_clientes.SQL.Add('select * from clientes');
 sql_clientes.Active := true;
 cds_corrigirclientes.Active := true;

  while not cds_corrigirclientes.Eof do
     begin
       if cds_corrigirclientes.FieldByName('codigo').AsInteger <> cds_corrigirclientes.FieldByName('id').AsInteger then
          begin
             cds_corrigirclientes.Edit;
             cds_corrigirclientes.FieldByName('codigo').AsInteger := cds_corrigirclientes.fieldbyname('id').AsInteger;
             cds_corrigirclientes.Post;
          end;
       //endi
       cds_corrigirclientes.Next;
     end;


  cds_corrigirfornecedores.ProviderName := 'dsp_fornecedores';
 cds_corrigirfornecedores.Active := false;
 sql_fornecedores.Active := false;
 sql_fornecedores.SQL.Clear;
 sql_fornecedores.SQL.Add('select * from fornecedores');
 sql_fornecedores.Active := true;
 cds_corrigirfornecedores.Active := true;

  while not cds_corrigirfornecedores.Eof do
     begin
       if cds_corrigirfornecedores.FieldByName('codigo').AsInteger <> cds_corrigirfornecedores.FieldByName('id').AsInteger then
          begin
             cds_corrigirfornecedores.Edit;
             cds_corrigirfornecedores.FieldByName('codigo').AsInteger := cds_corrigirfornecedores.fieldbyname('id').AsInteger;
             cds_corrigirfornecedores.Post;
          end;
       //endi
       cds_corrigirfornecedores.Next;
     end;






 end;
}

end;

procedure Tfrmprincipal.btnimportarClick(Sender: TObject);
var
  vardir:string;

begin

 try
    abretabelas;
    fechatodos;
    vardir := extractfilepath(application.ExeName);
    //carregadadosprincipais;
    //frmprincipal.skin.Active := false;
    frmprincipal.skin.SkinFile := '';

    odpExec.InitialDir := frmdados.cds_indice.fieldbyname('importarpara').AsString;
    odpExec.FileName := '*.txt';
    odpExec.Filter := '*.txt';
    if odpExec.Execute then
       begin

         scaminho := odpExec.FileName;
         frmdados.importarnfc;
         deletefile(scaminho);
         skin.SkinFile := vardir+'skin.skn';
         application.MessageBox('Pedido importado com sucesso','Aviso',mb_ok);
         skin.SkinFile := '';
       end;
    //endi


 finally


    skin.SkinFile := vardir+'skin.skn';

    if frmpesqnf <> nil then
       begin
         frmpesqnf.pctdados.ActivePageIndex := 0;
       end;

    //endi


    fechatabelas;


 end;



end;

procedure tfrmprincipal.abretabelas();
begin
  frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;


frmdados.cds_fornecedores.Active := false;
frmdados.sql_fornecedores.Active := false;
frmdados.sql_fornecedores.SQL.Clear;
frmdados.sql_fornecedores.SQL.Add('select * from fornecedores');
frmdados.sql_fornecedores.Active := true;
frmdados.cds_fornecedores.Active := true;

frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;


frmdados.sql_nf.Active := true;
frmdados.cds_nf.Active := true;

frmdados.sql_nfp.Active := true;
frmdados.cds_nfp.Active := true;

frmdados.sql_nfs.Active := true;
frmdados.cds_nfs.Active := true;

frmdados.sql_emitente.Active := true;
frmdados.cds_emitente.Active := true;

frmdados.sql_icms.Active := true;
frmdados.cds_icms.Active := true;
frmdados.cds_icms.Filtered := false;

frmdados.sql_ipi.Active := true;
frmdados.cds_ipi.Active := true;

frmdados.sql_cf.Active := true;
frmdados.cds_cf.Active := true;

frmdados.sql_sita.Active := true;
frmdados.cds_sita.Active := true;

frmdados.sql_sitb.Active := true;
frmdados.cds_sitb.Active := true;

frmdados.sql_modbc.Active := true;
frmdados.cds_modbc.Active := true;

frmdados.sql_modbcst.Active := true;
frmdados.cds_modbcst.Active := true;

frmdados.sql_impostoII.Active := true;
frmdados.cds_impostoII.Active := true;

frmdados.sql_pis.Active := true;
frmdados.cds_pis.Active := true;

frmdados.sql_cofins.Active := true;
frmdados.cds_cofins.Active := true;


frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;


frmdados.sql_impostoIII.Active := true;
frmdados.cds_impostoIII.Active := true;


frmdados.sql_csosn.Active := true;
frmdados.cds_csosn.Active := true;


frmdados.cds_produtos.Active := false;
frmdados.sql_produtos.Active := false;
frmdados.sql_produtos.SQL.Clear;
frmdados.sql_produtos.SQL.Add('select * from produtos');
frmdados.sql_produtos.Active := true;
frmdados.cds_produtos.Active := true;


frmdados.sql_tiposerv.Active := true;
frmdados.cds_tiposerv.Active := true;


frmdados.sql_rcserv.Active := true;
frmdados.cds_rcserv.Active := true;


frmdados.sql_impostoI.Active := true;
frmdados.cds_impostoI.Active := true;


frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;


frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;


frmdados.sql_Paises.Active := true;
frmdados.cds_Paises.Active := true;


frmdados.sql_natop.Active := true;
frmdados.cds_natop.Active := true;

frmdados.sql_unidade.Active := true;
frmdados.cds_unidade.Active := true;



frmdados.cds_Temp.Active := true;

end;

procedure tfrmprincipal.fechatabelas();
begin
 frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := false;
frmdados.cds_clientes.Active := false;


frmdados.cds_fornecedores.Active := false;
frmdados.sql_fornecedores.Active := false;
frmdados.sql_fornecedores.SQL.Clear;
frmdados.sql_fornecedores.SQL.Add('select * from fornecedores');
frmdados.sql_fornecedores.Active := false;
frmdados.cds_fornecedores.Active := false;

frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := false;
frmdados.cds_clientes.Active := false;

frmdados.sql_nf.Active := false;
frmdados.cds_nf.Active := false;

frmdados.sql_nfp.Active := false;
frmdados.cds_nfp.Active := false;

frmdados.sql_nfs.Active := false;
frmdados.cds_nfs.Active := false;

frmdados.sql_emitente.Active := false;
frmdados.cds_emitente.Active := false;

frmdados.sql_icms.Active := false;
frmdados.cds_icms.Active := false;
frmdados.cds_icms.Filtered := false;

frmdados.sql_ipi.Active := false;
frmdados.cds_ipi.Active := false;

frmdados.sql_cf.Active := false;
frmdados.cds_cf.Active := false;

frmdados.sql_sita.Active := false;
frmdados.cds_sita.Active := false;

frmdados.sql_sitb.Active := false;
frmdados.cds_sitb.Active := false;

frmdados.sql_modbc.Active := false;
frmdados.cds_modbc.Active := false;

frmdados.sql_modbcst.Active := false;
frmdados.cds_modbcst.Active := false;

frmdados.sql_impostoII.Active := false;
frmdados.cds_impostoII.Active := false;

frmdados.sql_pis.Active := false;
frmdados.cds_pis.Active := false;

frmdados.sql_cofins.Active := false;
frmdados.cds_cofins.Active := false;


frmdados.sql_cfop.Active := false;
frmdados.cds_cfop.Active := false;


frmdados.sql_impostoIII.Active := false;
frmdados.cds_impostoIII.Active := false;


frmdados.sql_csosn.Active := false;
frmdados.cds_csosn.Active := false;


frmdados.cds_produtos.Active := false;
frmdados.sql_produtos.Active := false;
frmdados.sql_produtos.SQL.Clear;
frmdados.sql_produtos.SQL.Add('select * from produtos');
frmdados.sql_produtos.Active := false;
frmdados.cds_produtos.Active := false;


frmdados.sql_tiposerv.Active := false;
frmdados.cds_tiposerv.Active := false;


frmdados.sql_rcserv.Active := false;
frmdados.cds_rcserv.Active := false;


frmdados.sql_impostoI.Active := false;
frmdados.cds_impostoI.Active := false;


frmdados.sql_Munic.Active := false;
frmdados.cds_Munic.Active := false;


frmdados.sql_Estados.Active := false;
frmdados.cds_Estados.Active := false;


frmdados.sql_Paises.Active := false;
frmdados.cds_Paises.Active := false;


frmdados.sql_natop.Active := false;
frmdados.cds_natop.Active := false;

frmdados.sql_unidade.Active := false;
frmdados.cds_unidade.Active := false;





end;

procedure tfrmprincipal.atualizacaoBaseRemota;
begin
  try

      try
        atualizaEmitente;
        //atualizaCliente;
        consultavencidos;

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

       cds_emitente.Active := false;
       sql_emitente.Active := false;
       sql_emitente.SQL.Clear;
       sql_emitente.SQL.Add('select * from emitente where coalesce(id,0) > 0 ');
       sql_emitente.active  := true;
       cds_emitente.Active := true;

       sql_indice.Active := false;
       sql_indice.SQL.Clear;
       sql_indice.SQL.Add('select * from indice');
       sql_indice.Active := true;


    end;

  setlength(abloqueio, frmdados.cds_emitente.RecordCount);

  while not frmdados.cds_emitente.Eof do
    begin

       cnpjemitente := tirapontos(tirabarras(tiratracos(frmdados.cds_emitente.fieldbyname('cnpj').AsString)));

       chave:=frmdados.sql_indice.fieldbyname('chaveconsultacep').AsString+cnpjemitente;

        try
            lParamList := TStringList.Create;
            lResponse := TStringStream.Create('');

            lParamList.Add('modo=I');
            lParamList.Add('cnpj='+tirapontos(tirabarras(tiratracos(frmdados.cds_emitente.fieldbyname('cnpj').AsString))));
            lParamList.Add('nome='+frmdados.cds_emitente.FieldByName('nome').AsString);
            lParamList.Add('email='+frmdados.cds_emitente.FieldByName('email').AsString);
            lParamList.Add('fantasia='+frmdados.cds_emitente.FieldByName('fantasia').AsString);
            lParamList.Add('telefones='+frmdados.cds_emitente.FieldByName('telefones').AsString);
            lParamList.Add('ie='+frmdados.cds_emitente.FieldByName('ie').AsString);
            lParamList.Add('site='+frmdados.cds_emitente.FieldByName('site').AsString);
            lParamList.Add('contato='+frmdados.cds_emitente.FieldByName('contato').AsString);
            lParamList.Add('endereco='+frmdados.cds_emitente.FieldByName('endereco').AsString);
            lParamList.Add('nro='+frmdados.cds_emitente.FieldByName('nro').AsString);
            lParamList.Add('compl='+frmdados.cds_emitente.FieldByName('compl').AsString);
            lParamList.Add('bairro='+frmdados.cds_emitente.FieldByName('bairro').AsString);
            lParamList.Add('cep='+frmdados.cds_emitente.FieldByName('cep').AsString);
            lParamList.Add('im='+frmdados.cds_emitente.FieldByName('im').AsString);
            lParamList.Add('obs='+frmdados.cds_emitente.FieldByName('obs').AsString);


            frmdados.cds_Estados.Active := false;
            frmdados.sql_Estados.Active := false;
            frmdados.sql_Estados.SQL.Clear;
            frmdados.sql_Estados.SQL.Add('select * from estados');
            frmdados.sql_Estados.Active := true;
            frmdados.cds_Estados.Active := true;

            if frmdados.cds_Estados.Locate('codigo',frmdados.cds_emitente.fieldbyname('cest').AsString,[]) then
               begin
                 lParamList.Add('Estado='+frmdados.cds_estados.FieldByName('sigla').AsString);
               end;
            //endi


            frmdados.cds_Munic.Active := false;
            frmdados.sql_Munic.Active := false;
            frmdados.sql_Munic.SQL.Clear;
            frmdados.sql_Munic.SQL.Add('select * from munic');
            frmdados.sql_Munic.Active := true;
            frmdados.cds_Munic.Active := true;

            if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').AsInteger,[]) then
               begin
                 lParamList.Add('cidade='+frmdados.cds_munic.FieldByName('nome').AsString);
               end;
            //endi


            frmdados.cds_regtrib.Active := false;
            frmdados.sql_regtrib.Active := false;
            frmdados.sql_regtrib.SQL.Clear;
            frmdados.sql_regtrib.SQL.Add('select * from regtrib');
            frmdados.sql_regtrib.Active := true;
            frmdados.cds_regtrib.Active := true;

            if frmdados.cds_regtrib.Locate('codigo',frmdados.cds_emitente.fieldbyname('cregtrib').AsInteger,[]) then
               begin
                 lParamList.Add('regtrib='+frmdados.cds_regtrib.FieldByName('sigla').AsString);
               end;
            //endi

            lParamList.Add('prog=NFE');


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


               cnpj:=tirapontos(tirabarras(tiratracos(frmdados.cds_emitente.fieldbyname('cnpj').AsString)));

               XMLDocument1.Active := False;
               XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsemitente.php?chave='+chave+'&campo=cnpj&valor='+cnpj+'&modo=C');
               XMLDocument1.Active := True;

               nome      := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['nome'].Text;
               cnpj      := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['cnpj'].Text;
               bloqueado := XMLDocument1.ChildNodes['wsemitente'].ChildNodes['response'].ChildNodes['bloqueado'].Text;

               abloqueio[x] := bloqueado+cnpj;
               x := x + 1;

               XMLDocument1.Active := false;
            except

            end;







            //exemplo de requisição utilizando post e retorno para memo
            {



            lParamList := TStringList.Create;
            lResponse := TStringStream.Create('');

            lParamList.Add('modo=C');
            lParamList.Add('valor='+tirapontos(tirabarras(tiratracos(frmdados.cds_emitente.fieldbyname('cnpj').AsString))));
            lParamList.Add('campo=cnpj');
            lParamList.Add('chave='+frmdados.sql_indice.fieldbyname('chaveconsultacep').AsString);


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
            }

            //exemplo de requisição utilizando get e retorno para componente xml


            //----------------------


            frmdados.cds_emitente.Next;


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



  frmdados.sql_emitente.Active := false;
  frmdados.cds_emitente.Active := false;

  //--------------------------------------------------------------------



end;



procedure tfrmprincipal.atualizaCliente;
var

  lParamList: TStringList;
  lResponse : TStringStream;
  smostrar, chave, cnpj, nome, bloqueado:string;
  x:integer;
  resp:boolean;

begin

  x:=0;

  with frmdados do
    begin

       cds_clientes.Active := false;
       sql_clientes.Active := false;
       sql_clientes.SQL.Clear;
       sql_clientes.SQL.Add('select * from clientes where (coalesce(id,0) > 0) and (  coalesce(sinc,''N'') <> '+ quotedstr('S')+')');
       //sql_clientes.SQL.Add('select * from clientes where (coalesce(id,0) > 0) and (sinc is null )');

       sql_clientes.active  := true;
       cds_clientes.Active := true;

       sql_indice.Active := false;
       sql_indice.SQL.Clear;
       sql_indice.SQL.Add('select * from indice');
       sql_indice.Active := true;

       chave:=sql_indice.fieldbyname('chaveconsultacep').AsString+cnpjemitente;

    end;

  while not frmdados.cds_clientes.Eof do
    begin
        resp := false;

        try
            lParamList := TStringList.Create;
            lResponse := TStringStream.Create('');

            lParamList.Add('modo=I');
            lParamList.Add('chave='+chave);
            lParamList.Add('valor='+tirapontos(tirabarras(tiratracos(frmdados.cds_clientes.fieldbyname('cnpj').AsString))));
            lParamList.Add('campo=cnpj');

            lParamList.Add('cnpj='+tirapontos(tirabarras(tiratracos(frmdados.cds_clientes.fieldbyname('cnpj').AsString))));
            lParamList.Add('nome='+frmdados.cds_clientes.FieldByName('nome').AsString);
            lParamList.Add('email='+frmdados.cds_clientes.FieldByName('email').AsString);
            lParamList.Add('fantasia='+frmdados.cds_clientes.FieldByName('fantasia').AsString);
            lParamList.Add('telefones='+frmdados.cds_clientes.FieldByName('telefones').AsString);
            lParamList.Add('ie='+frmdados.cds_clientes.FieldByName('ie').AsString);
            lParamList.Add('site='+frmdados.cds_clientes.FieldByName('site').AsString);
            lParamList.Add('contato='+frmdados.cds_clientes.FieldByName('contato').AsString);
            lParamList.Add('endereco='+frmdados.cds_clientes.FieldByName('endereco').AsString);
            lParamList.Add('nro='+frmdados.cds_clientes.FieldByName('nro').AsString);
            lParamList.Add('compl='+frmdados.cds_clientes.FieldByName('compl').AsString);
            lParamList.Add('bairro='+frmdados.cds_clientes.FieldByName('bairro').AsString);
            lParamList.Add('cep='+frmdados.cds_clientes.FieldByName('cep').AsString);
            lParamList.Add('im='+frmdados.cds_clientes.FieldByName('im').AsString);
            lParamList.Add('obs='+frmdados.cds_clientes.FieldByName('obs').AsString);
            lParamList.Add('ctransp='+frmdados.cds_clientes.FieldByName('ctransp').AsString);


            frmdados.cds_Estados.Active := false;
            frmdados.sql_Estados.Active := false;
            frmdados.sql_Estados.SQL.Clear;
            frmdados.sql_Estados.SQL.Add('select * from estados');
            frmdados.sql_Estados.Active := true;
            frmdados.cds_Estados.Active := true;

            if (frmdados.cds_Estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').AsInteger,[])) then
               begin
                 lParamList.Add('cest='+frmdados.cds_estados.FieldByName('codibge').AsString);
               end;
            //endi


            frmdados.cds_Munic.Active := false;
            frmdados.sql_Munic.Active := false;
            frmdados.sql_Munic.SQL.Clear;
            frmdados.sql_Munic.SQL.Add('select * from munic');
            frmdados.sql_Munic.Active := true;
            frmdados.cds_Munic.Active := true;

            if (frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').AsInteger,[])) then
               begin
                 lParamList.Add('codigomunicipio='+frmdados.cds_munic.FieldByName('codibge').AsString);
               end;
            //endi



            lParamList.Add('prog=NFE');




            try
                lHTTP := TIdHTTP.Create(nil);
                try
                  lHTTP.Post('http://aplicativos-marcosbras.rhcloud.com/wsclientes.php', lParamList, lResponse);
                  lResponse.Position := 0;
                  reResp.Lines.LoadFromStream(lResponse);
                finally

                  lHTTP.Free;
                  lParamList.Free;
                  lResponse.Free();
                  resp := true;

                end;


            except
              reResp.Lines.Add( 'Conexão com servidor inativa');
              resp := false;
            end;


            if resp then
               begin
                frmdados.cds_clientes.Edit;
                frmdados.cds_clientes.FieldByName('sinc').AsString  := 'S';
                frmdados.cds_clientes.Post;
               end;

            frmdados.cds_clientes.Next;


        finally
           reResp.Lines.Add( 'Atuallizado com sucesso');


        end;

    end;
  //endw




  frmdados.sql_clientes.Active := false;
  frmdados.cds_clientes.Active := false;

  //--------------------------------------------------------------------



end;


procedure tfrmprincipal.consultavencidos;

var

  lParamList: TStringList;
  lResponse : TStringStream;
  smostrar, chave, cnpj, nome, bloqueado:string;
  x:integer;
  dtv, descricao, vlrorig, dtl, vlrliq:string;

begin

  x:=0;

  with frmdados do
    begin

       cds_emitente.Active := false;
       sql_emitente.Active := false;
       sql_emitente.SQL.Clear;
       sql_emitente.SQL.Add('select * from emitente where coalesce(id,0) > 0 ');
       sql_emitente.active  := true;
       cds_emitente.Active := true;

       sql_indice.Active := false;
       sql_indice.SQL.Clear;
       sql_indice.SQL.Add('select * from indice');
       sql_indice.Active := true;

       cdstempvencido.CreateDataSet;
       cdstempvencido.Open;

    end;
  //endth

  while not frmdados.cds_emitente.Eof do
    begin

        cnpjemitente := tirapontos(tirabarras(tiratracos(frmdados.cds_emitente.fieldbyname('cnpj').AsString)));

        chave:=  frmdados.sql_indice.fieldbyname('chaveconsultacep').AsString+cnpjemitente;

        try

            try

               XMLDocument1.Active := False;
               XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsvencidos.php?chave='+chave+'&campo=cnpj&valor='+cnpj+'&modo=C');
               XMLDocument1.Active := True;

               for x := 0 to XMLDocument1.ChildNodes['wsvencidos'].ChildNodes['response'].ChildNodes.Count - 1  do
                  begin

                    with XMLDocument1.ChildNodes['wsvencidos'].ChildNodes['response'].ChildNodes[x] do
                      begin
                        dtv     :=  ChildNodes['dtv'].Text;
                        descricao      := ChildNodes['descricao'].Text;
                        vlrorig := ChildNodes['vlrorig'].Text;
                        dtl     :=  ChildNodes['dtl'].Text;
                        vlrliq     :=  ChildNodes['vlrliq'].Text;

                        with frmdados do
                          begin
                            cdstempvencido.Append;
                            cdstempvencido.fieldbyname('dtv').asstring := formatdatetime('dd/mm/yyyy',strtodate(convertedata(dtv)));
                            cdstempvencido.fieldbyname('descricao').asstring := descricao;
                            cdstempvencido.fieldbyname('vlrorig').asfloat := strtofloat(Decimal_Is_Coma(vlrorig));
                            if dtl  <> '0000-00-00' then
                               cdstempvencido.fieldbyname('dtl').asstring := formatdatetime('dd/mm/yyyy',strtodate(convertedata(dtl)));
                            //endi
                            cdstempvencido.fieldbyname('vlrliq').asfloat := strtofloat(Decimal_Is_Coma(vlrliq));
                            cdstempvencido.Post;  
                          end;



                      end;
                    //endth


                  end;



               x := x + 1;

               XMLDocument1.Active := false;
            except

            end;


            frmdados.cds_emitente.Next;


        finally
           reResp.Lines.Add( 'Consulta vencidos');


        end;

    end;
  //endw

  frmdados.sql_emitente.Active := false;
  frmdados.cds_emitente.Active := false;

  //--------------------------------------------------------------------

end;

procedure Tfrmprincipal.BaixarNCM1Click(Sender: TObject);
var
  sncm:string;
begin

  if application.MessageBox('Este procedimento vai tornar o sistema insdisponível por alguns minutos'+#13+
                            'Deseja realmente sincronizar NCM agora?','Atenção',mb_yesno)=mryes
  then
    begin
      lblmensagem.Caption  := 'Sincronizando ncm...';

      with frmdados do
         begin

            sql_indice.Active := false;
            sql_indice.SQL.Clear;
            sql_indice.SQL.Add('select * from indice');
            sql_indice.Active := true;

            sql_estados.Active := false;
            sql_estados.SQL.Clear;
            sql_estados.SQL.Add('select * from estados where codigo = '+inttostr(sql_indice.fieldbyname('ufpadrao').AsInteger));
            sql_estados.Active := true;

            sufpadrao := sql_estados.fieldbyname('sigla').AsString;

            sql_exec2.Active := false;
            sql_exec2.SQL.Clear;
            sql_exec2.SQL.Add('select * from produtos order by descricao');
            sql_exec2.Active := true;

            while not sql_exec2.Eof do
               begin

                 sncm := sql_exec2.fieldbyname('simplesncm').AsString;

                 sql_consulta.Close;
                 sql_consulta.SQL.Clear;
                 sql_consulta.SQL.Add('select * from ibpt where codigo = '+quotedstr(sncm)    );
                 sql_consulta.Open;

                 if frmdados.sql_consulta.RecordCount = 0 then
                    begin

                      atualizancm(sncm);



                    end;


                 sql_exec2.Next;
               end;
            //endi


         end;
      //endth

      lblmensagem.Caption  := '';
    end;
  //endi

  {
  fechatodos;
  if frmbaixarncm = nil then
     begin

       frmbaixarncm := tfrmbaixarncm(self);
       frmbaixarncm.Showmodal;
       frmbaixarncm.Free;

     end; }
  //endi




end;

procedure Tfrmprincipal.Desbloqueiodeenvio1Click(Sender: TObject);
begin
 with frmdados do
 begin


   sql_consulta.active := false;
   sql_consulta.sql.clear;
   sql_consulta.SQL.Add('select * from nf');
   sql_consulta.active := true;

   //if frmdados.sql_consulta.FieldByName('processandonfe').AsString = 'S' then
   //   begin

  if application.MessageBox(pchar('Houve um erro inesperado ao emitir nota, deseja corrigir?'),pchar('Atenção'),mb_yesno) = 6 then
     begin
       sql_exec.Active := false;
       sql_exec.SQL.Clear;
       sql_exec.SQL.Add('update nf set status = '+quotedstr('I')+' where status = '+quotedstr('E'));
       sql_exec.ExecSQL;

     end;
   //end;
 end;

end;

procedure Tfrmprincipal.Sobre1Click(Sender: TObject);
begin
  frmsobre := tfrmsobre.create(self);
  frmsobre.showmodal;
  frmsobre.free; 
end;

procedure Tfrmprincipal.Button3Click(Sender: TObject);
begin
ShellExecute(handle,'open','http://aplicacao.esy.es','','',SW_SHOWNORMAL);
end;

end.

unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, DB, DBTables, WinSkinData,
  Buttons, ComCtrls, ExtCtrls, jpeg, LockApplication;

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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
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
  upesqcsosn, uindice, upcodibge, upesqnfemi;
{$R *.dfm}

procedure Tfrmprincipal.FormShow(Sender: TObject);
var
  vardir:string;


begin
vardir := extractfilepath(application.ExeName);


   memo1.Lines.Clear;
   memo1.Lines.Add(  'ID da instalação : '+ IntToStr(bloqueio.IDInstalacao) );
    memo1.Lines.Add( 'Dias Restantes : ' + IntToStr(frmprincipal.bloqueio.Dias_RestantesU) );
   memo1.Lines.Add( 'Data Vencimento : ' + frmprincipal.bloqueio.Data_VencimentoU );
   memo1.Lines.Add('Chave : ' + frmprincipal.bloqueio.Chave_RegistradaU);
   memo1.Lines.Add('E-mail : ' + frmprincipal.bloqueio.Email_ClienteU);
   memo1.Lines.Add( 'Versão : ' + IntToStr(frmprincipal.bloqueio.Versao_Sistema) );
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

if bloqueio.Dias_RestantesU > 30 then
   pnlcentral.Visible := false;


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
bloqueio.executar;
end;

procedure Tfrmprincipal.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmprincipal.Reparar1Click(Sender: TObject);
begin

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
  {
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




 }

 end;


end;

end.

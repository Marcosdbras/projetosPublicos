unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls, RzLaunch, DB, MemDS,
  DBAccess, IBC;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cb_ecf: TComboBox;
    GroupBox3: TGroupBox;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    Inicializao1: TMenuItem;
    CupomFiscal1: TMenuItem;
    NoFiscal1: TMenuItem;
    Relatrios1: TMenuItem;
    Programao1: TMenuItem;
    otalizadores1: TMenuItem;
    AbreSerial1: TMenuItem;
    FechaSerial1: TMenuItem;
    Abrir1: TMenuItem;
    Vender1: TMenuItem;
    N1: TMenuItem;
    IniciarFechamento1: TMenuItem;
    FormadePagametn1: TMenuItem;
    erminarFechamento1: TMenuItem;
    N2: TMenuItem;
    CancelarItem1: TMenuItem;
    CancelarCupom1: TMenuItem;
    AbreGerencial1: TMenuItem;
    UsaGerencial1: TMenuItem;
    FechaGerencial1: TMenuItem;
    N3: TMenuItem;
    AbreCNFV1: TMenuItem;
    UsaCNFV1: TMenuItem;
    FechaCNFV1: TMenuItem;
    N4: TMenuItem;
    Sangria1: TMenuItem;
    Suprimento1: TMenuItem;
    OutrosRecebimentos1: TMenuItem;
    LeituraX1: TMenuItem;
    ReduoZ1: TMenuItem;
    N5: TMenuItem;
    MemriaFiscalSinttica1: TMenuItem;
    MemriaFiscalAnaltica1: TMenuItem;
    HorriodeVero1: TMenuItem;
    Alquota1: TMenuItem;
    otalizadorParcial1: TMenuItem;
    FormadePagamento1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Informaes1: TMenuItem;
    ECFLigado1: TMenuItem;
    SerialdoECF1: TMenuItem;
    NmerodoCaixa1: TMenuItem;
    NmerodoCupom1: TMenuItem;
    DataeHora1: TMenuItem;
    DownloadMFD1: TMenuItem;
    N6: TMenuItem;
    Registro60Mestre1: TMenuItem;
    Registro60Analtico1: TMenuItem;
    N7: TMenuItem;
    F1: TMenuItem;
    Outros1: TMenuItem;
    AbreGaveta1: TMenuItem;
    StatusdaGaveta1: TMenuItem;
    N8: TMenuItem;
    MENUFISCAL1: TMenuItem;
    LX1: TMenuItem;
    LMFC1: TMenuItem;
    LMFS1: TMenuItem;
    EspelhoMFD1: TMenuItem;
    esteassinaturadigital1: TMenuItem;
    ArqMFD1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    abProd1: TMenuItem;
    Estoque1: TMenuItem;
    conexao: TIBCConnection;
    query: TIBCQuery;
    N9: TMenuItem;
    Marca1: TMenuItem;
    ModeloECF1: TMenuItem;
    MFAdicional1: TMenuItem;
    VersaoSoftwareBasico1: TMenuItem;
    VersaoSoftwareBasico2: TMenuItem;
    DataeHora2: TMenuItem;
    ipoECF1: TMenuItem;
    N10: TMenuItem;
    ReduoZ2: TMenuItem;
    ContadorCRZ1: TMenuItem;
    ContadorCOO1: TMenuItem;
    ContadorCRO1: TMenuItem;
    DataMovimento1: TMenuItem;
    DatadeEmisso1: TMenuItem;
    VendaBrutaDiria1: TMenuItem;
    N11: TMenuItem;
    otalizadoresParciais1: TMenuItem;
    EF1: TMenuItem;
    ModoAdministrativo1: TMenuItem;
    VisanetRedecardTecban1: TMenuItem;
    ecban1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbreSerial1Click(Sender: TObject);
    procedure FechaSerial1Click(Sender: TObject);
    procedure ECFLigado1Click(Sender: TObject);
    procedure SerialdoECF1Click(Sender: TObject);
    procedure NmerodoCaixa1Click(Sender: TObject);
    procedure NmerodoCupom1Click(Sender: TObject);
    procedure DataeHora1Click(Sender: TObject);
    procedure DownloadMFD1Click(Sender: TObject);
    procedure Registro60Mestre1Click(Sender: TObject);
    procedure Registro60Analtico1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure IniciarFechamento1Click(Sender: TObject);
    procedure FormadePagametn1Click(Sender: TObject);
    procedure erminarFechamento1Click(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure AbreGaveta1Click(Sender: TObject);
    procedure StatusdaGaveta1Click(Sender: TObject);
    procedure AbreGerencial1Click(Sender: TObject);
    procedure UsaGerencial1Click(Sender: TObject);
    procedure FechaGerencial1Click(Sender: TObject);
    procedure AbreCNFV1Click(Sender: TObject);
    procedure UsaCNFV1Click(Sender: TObject);
    procedure FechaCNFV1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure OutrosRecebimentos1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure ReduoZ1Click(Sender: TObject);
    procedure MemriaFiscalSinttica1Click(Sender: TObject);
    procedure MemriaFiscalAnaltica1Click(Sender: TObject);
    procedure HorriodeVero1Click(Sender: TObject);
    procedure Alquota1Click(Sender: TObject);
    procedure otalizadorParcial1Click(Sender: TObject);
    procedure FormadePagamento1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LX1Click(Sender: TObject);
    procedure LMFC1Click(Sender: TObject);
    procedure LMFS1Click(Sender: TObject);
    procedure esteassinaturadigital1Click(Sender: TObject);
    procedure EspelhoMFD1Click(Sender: TObject);
    procedure ArqMFD1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure abProd1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure ipoECF1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure ModeloECF1Click(Sender: TObject);
    procedure MFAdicional1Click(Sender: TObject);
    procedure VersaoSoftwareBasico2Click(Sender: TObject);
    procedure DataeHora2Click(Sender: TObject);
    procedure ContadorCRZ1Click(Sender: TObject);
    procedure ContadorCOO1Click(Sender: TObject);
    procedure ContadorCRO1Click(Sender: TObject);
    procedure DatadeEmisso1Click(Sender: TObject);
    procedure DataMovimento1Click(Sender: TObject);
    procedure VendaBrutaDiria1Click(Sender: TObject);
    procedure otalizadoresParciais1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  sEmpresa_CNPJ, sEmpresa_Nome, sEmpresa_IE, sEmpresa_IM : string;


implementation

uses unECF, Leitura_Memoria_Fiscal, Download_MFD, funcoes;

{$R *.dfm}


procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPrincipal.AbreSerial1Click(Sender: TObject);
begin
  memo1.Text := cECF_Abre(cb_ecf.ItemIndex,'COM1');
end;

procedure TfrmPrincipal.FechaSerial1Click(Sender: TObject);
begin
memo1.Text := cECF_fECHA(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.ECFLigado1Click(Sender: TObject);
begin
    Memo1.Text := cECF_Ligada(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.SerialdoECF1Click(Sender: TObject);
begin
   memo1.text := cecf_numero_serie(cb_ecf.itemindex);
end;

procedure TfrmPrincipal.NmerodoCaixa1Click(Sender: TObject);
begin
   memo1.text := cecf_numero_caixa(cb_ecf.itemindex);
end;

procedure TfrmPrincipal.NmerodoCupom1Click(Sender: TObject);
begin
    memo1.text := cecf_numero_cupom(cb_ecf.itemindex);
end;

procedure TfrmPrincipal.DataeHora1Click(Sender: TObject);
begin
    memo1.text := cECF_Data_Hora(cb_ecf.itemindex);
end;

procedure TfrmPrincipal.DownloadMFD1Click(Sender: TObject);
var inicio, fim : string;
begin
  if cb_ecf.itemindex = 1 then
  begin
    if FileExists('retorno.txt') then DeleteFile('retorno.txt');

    inicio := inputbox('','COO INICIAL','');
    FIM := inputbox('','COO FINAL','');
    if  cECF_Download(cb_ecf.ItemIndex,'COO',INICIO,FIM) = 'OK' then
        memo1.Lines.LoadFromFile('retorno.txt')
    else
       memo1.lines.add('ERRO');
  end;
  if cb_ecf.itemindex = 2 then
  begin
    if FileExists('c:\retorno.txt') then DeleteFile('c:\retorno.txt');

    inicio := inputbox('','COO INICIAL','');
    FIM := inputbox('','COO FINAL','');
    if  cECF_Download(cb_ecf.ItemIndex,'COO',INICIO,FIM) = 'OK' then
        memo1.Lines.LoadFromFile('c:\retorno.txt')
    else
       memo1.lines.add('ERRO');
  end;

  if cb_ecf.itemindex = 3 then
  begin
    if FileExists('C:\retorno.txt') then DeleteFile('C:\retorno.txt');

    inicio := inputbox('','COO INICIAL','');
    FIM := inputbox('','COO FINAL','');
    if  cECF_Download(cb_ecf.ItemIndex,'COO',INICIO,FIM) = 'OK' then
        memo1.Lines.LoadFromFile('C:\retorno.txt')
    else
       memo1.lines.add('ERRO');
  end;

  if cb_ecf.itemindex = 4 then
  begin
    if FileExists('retorno.txt') then DeleteFile('retorno.txt');

    inicio := inputbox('','COO INICIAL','');
    FIM := inputbox('','COO FINAL','');
    if  cECF_Download(cb_ecf.ItemIndex,'COO',INICIO,FIM) = 'OK' then
        memo1.Lines.LoadFromFile('retorno.txt')
    else
       memo1.lines.add('ERRO');
  end;


end;

procedure TfrmPrincipal.Registro60Mestre1Click(Sender: TObject);
begin
  if  cECF_Registro60M(cb_ecf.itemindex) = 'OK' then
      memo1.Lines.LoadFromFile('c:\retorno.txt')
  else
     memo1.lines.add('ERRO');
end;

procedure TfrmPrincipal.Registro60Analtico1Click(Sender: TObject);
begin
  if  cECF_Registro60A(cb_ecf.itemindex) = 'OK' then
      memo1.Lines.LoadFromFile('c:\retorno.txt')
  else
     memo1.lines.add('ERRO');

end;

procedure TfrmPrincipal.F1Click(Sender: TObject);
var
i : integer;
begin
  if cECF_Le_Formas_Pgto(cb_ecf.ItemIndex) = 'OK' thEN
  begin
    memo1.Clear;
    for i := 0 to 30 do
    begin
      if Trim(tbforma[i].nome) <> '' then
        memo1.Lines.add(tbforma[i].Nome);
    end;
  end;
end;

procedure TfrmPrincipal.Abrir1Click(Sender: TObject);
begin
   Memo1.Text := cECF_Abre_Cupom(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.Vender1Click(Sender: TObject);
begin
       Memo1.Text := cECF_Vende_item(cb_ecf.ItemIndex,
                                    '123',
                                    'PRODUTO',
                                    'un',
                                    '1700',
                                    1,
                                    2,
                                    0,
                                    '$',
                                    0);

end;

procedure TfrmPrincipal.IniciarFechamento1Click(Sender: TObject);
begin
  memo1.text := cECF_Inicia_Fechamento(cb_ecf.ItemIndex,'D','%',10)
end;

procedure TfrmPrincipal.FormadePagametn1Click(Sender: TObject);
begin
   memo1.text := cECF_Forma_Pgto(cb_ecf.itemindex,'Dinheiro',2);
end;

procedure TfrmPrincipal.erminarFechamento1Click(Sender: TObject);
begin
  memo1.text :=  cECF_Termina_Fechamento(cb_ecf.ItemIndex,

                                                         'Cliente..:'+chr(10)+
                                                         'CPF/CNPJ.:'+chr(10)+
                                                         'Endereco.:'+chr(10)+
                                                         'Bairro...:'+chr(10)+
                                                         'Cidade/UF:');
end;

procedure TfrmPrincipal.CancelarItem1Click(Sender: TObject);
begin
    memo1.Text := cECF_Cancela_Item(cb_ecf.ItemIndex,'001');
end;

procedure TfrmPrincipal.CancelarCupom1Click(Sender: TObject);
begin
  Memo1.Text := cECF_Cancela_Cupom(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.AbreGaveta1Click(Sender: TObject);
begin
       memo1.text := cECF_Abre_Gaveta(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.StatusdaGaveta1Click(Sender: TObject);
begin
   memo1.text := cECF_Status_Gaveta(cb_ecf.ItemIndex);
   // verificar se 0 = aberto, 1 = fechado

end;

procedure TfrmPrincipal.AbreGerencial1Click(Sender: TObject);
begin
  memo1.Text := cECF_Abre_Gerencial(cb_ecf.ItemIndex,' ');
end;

procedure TfrmPrincipal.UsaGerencial1Click(Sender: TObject);
begin
  memo1.Text := cECF_Usa_Gerencial(cb_ecf.ItemIndex,'TEXTO TESTE TEXTO TEXTE TEXTO TESTE');
end;

procedure TfrmPrincipal.FechaGerencial1Click(Sender: TObject);
begin
   memo1.Text := cECF_Fecha_Gerencial(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.AbreCNFV1Click(Sender: TObject);
VAR FORMA, CUPOM : STRING;
valor : real;
begin
  FORMA := inputbox('','Forma Pagamento','');
  CUPOM := inputbox('','numero cupom','');
  VALOR := STRTOFLOAT(inputbox('','valor','0'));

  memo1.text := cECF_Abre_CNFV(cb_ecf.ItemIndex,FORMA,valor,CUPOM);

end;

procedure TfrmPrincipal.UsaCNFV1Click(Sender: TObject);
begin
  memo1.text := cECF_Usa_CNFV(cb_ecf.ItemIndex,'texto teste');
end;

procedure TfrmPrincipal.FechaCNFV1Click(Sender: TObject);
begin
    memo1.text := cECF_fecha_CNFV(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.Sangria1Click(Sender: TObject);
begin
  memo1.Text := cECF_Sangria(cb_ecf.itemindex,10);
end;

procedure TfrmPrincipal.Suprimento1Click(Sender: TObject);
begin
  memo1.Text := cECF_suprimento(cb_ecf.itemindex,10,'DINHEIRO');
end;

procedure TfrmPrincipal.OutrosRecebimentos1Click(Sender: TObject);
begin
    memo1.Text := cECF_Recebimento(cb_ecf.itemindex,'03',10,'DINHEIRO');
end;

procedure TfrmPrincipal.LeituraX1Click(Sender: TObject);
begin  Memo1.Text := cECF_LeituraX(cb_ecf.ItemIndex);
end;

procedure TfrmPrincipal.ReduoZ1Click(Sender: TObject);
begin
  if application.messagebox('Confirma a redução Z?','ECF',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
     MEMO1.Text := cECF_ReducaoZ(cb_ecf.ItemIndex);

end;

procedure TfrmPrincipal.MemriaFiscalSinttica1Click(Sender: TObject);
begin
    memo1.Text := cECF_Leitura_Memoria_Fiscal(cb_ecf.ItemIndex,'DATA','S','ECF','13/12/2008','13/12/2008');
end;

procedure TfrmPrincipal.MemriaFiscalAnaltica1Click(Sender: TObject);
begin
    memo1.Text := cECF_Leitura_Memoria_Fiscal(cb_ecf.ItemIndex,'DATA','A','ECF','13/12/2008','13/12/2008');
end;

procedure TfrmPrincipal.HorriodeVero1Click(Sender: TObject);
begin
     memo1.text := cECF_Programa_Horario_Verao(cb_ecf.itemindex);
end;

procedure TfrmPrincipal.Alquota1Click(Sender: TObject);
begin
  memo1.Text :=  cECF_Programa_Aliquota(cb_ecf.ItemIndex,22,'ICMS');
end;

procedure TfrmPrincipal.otalizadorParcial1Click(Sender: TObject);
begin
   memo1.text := cECF_Programa_Totalizador(cb_ecf.ItemIndex,15,'TESTE...');
end;

procedure TfrmPrincipal.FormadePagamento1Click(Sender: TObject);
begin
    memo1.text := cECF_Programa_Forma_Pgto(cb_ecf.ItemIndex,INPUTBOX('Programação',
                                                                    'Forma de Pagamento:',''),'SIM');
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
//  StatusBar1.Panels[0].Text := 'Versão: '+ExeInfo1.FileVersion;

    sEmpresa_CNPJ := '12.439.637/0001-68';
    sEmpresa_Nome := 'Rodrigo Santana Machado 01295327465';
    sEmpresa_IE   := '082.265.05-4';
    sEmpresa_IM   := '6505';
end;

procedure TfrmPrincipal.LX1Click(Sender: TObject);
begin
  memo1.lines.Add(cECF_LeituraX(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.LMFC1Click(Sender: TObject);
begin
  frmLeitura_Memoria_Fiscal := tfrmLeitura_Memoria_Fiscal.create(self);
  frmLeitura_Memoria_Fiscal.rb_simplificada.Enabled := false;
  frmLeitura_Memoria_Fiscal.rb_completa.Enabled := true;
  frmLeitura_Memoria_Fiscal.rb_completa.Checked := true;
  frmLeitura_Memoria_Fiscal.showmodal;
end;

procedure TfrmPrincipal.LMFS1Click(Sender: TObject);
begin
  frmLeitura_Memoria_Fiscal := tfrmLeitura_Memoria_Fiscal.create(self);
  frmLeitura_Memoria_Fiscal.rb_simplificada.Enabled := true;
  frmLeitura_Memoria_Fiscal.rb_completa.Enabled := false;
  frmLeitura_Memoria_Fiscal.rb_simplificada.Checked := true;
  frmLeitura_Memoria_Fiscal.showmodal;

end;



function Daruma_RSA_RetornaChavePublica(N: String; E: String): Integer; StdCall; External 'Daruma32.dll';
procedure TfrmPrincipal.esteassinaturadigital1Click(Sender: TObject);
var xml : TextFile;
schave_publica, sexpoente : string;
begin
  SetLength(schave_publica,257);
  SetLength(sexpoente,257);

  Daruma_RSA_RetornaChavePublica(schave_publica,sexpoente);

  sexpoente := copy(sexpoente,1,2);
  while length(sexpoente) < 256 do sexpoente := '0'+sexpoente;

  assignfile(xml,'c:\Techsoft.xml');
  rewrite(xml);
  writeln(xml,'<?xml version="1.0"?>');
  writeln(xml,'<empresa_desenvolvedora>');
  writeln(xml,'  <nome>Rodrigo Santana Machado 01295327465</nome>');
  writeln(xml,'  <chave>');
  writeln(xml,'    <modulo>'+schave_publica+'</modulo>');
  writeln(xml,'    <expoente_publico>'+sexpoente+'</expoente_publico>');
  writeln(xml,'  </chave>');
  writeln(xml,'</empresa_desenvolvedora>');
  closefile(xml);
end;

procedure TfrmPrincipal.EspelhoMFD1Click(Sender: TObject);
begin

    frmDownload_MFD := tfrmDownload_MFD.Create(self);
    frmDownload_MFD.rb_arquivo.Enabled := false;
    frmDownload_MFD.rb_espelho.Enabled := true;
    frmDownload_MFD.rb_espelho.Checked := true;
    frmDownload_MFD.ShowModal;
end;

procedure TfrmPrincipal.ArqMFD1Click(Sender: TObject);
begin
  case cb_ecf.ItemIndex of
  1 : begin
        frmDownload_MFD := tfrmDownload_MFD.Create(self);
        frmDownload_MFD.rb_arquivo.Enabled := true;
        frmDownload_MFD.rb_espelho.Enabled := false;
        frmDownload_MFD.rb_arquivo.Checked := true;
        frmDownload_MFD.ShowModal;
      end;
  2,3 : memo1.lines.add( cECF_Arquivo_Fiscal_CAT52(frmprincipal.cb_ecf.ItemIndex,'','',''));
  end;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
    cECF_Daruma_Libera_Porta('NAO');
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
    cECF_Daruma_Libera_Porta('SIM');
end;

procedure TfrmPrincipal.abProd1Click(Sender: TObject);
var txt : textfile;
iCont : integer;
begin

  assignfile(txt,'c:\TabProd.txt');
  rewrite(txt);
  // identificacao da empresa
  writeln(txt,'P1'+
              texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IE)  ,14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IM)  ,14,' ',taEsquerda)+
              texto_justifica(sEmpresa_Nome               ,50,' ',taEsquerda));

  query.close;
  query.sql.clear;
  query.sql.add('select * from estoque order by codigo');
  query.open;
  query.first;
  icont := 0;
  while not query.eof do
  begin
    // Relação de Mercadorias e Serviços
    writeln(txt,'P2'+
                 texto_justifica(somenteNumero(sEmpresa_CNPJ),14,'0',taEsquerda)+
                 texto_justifica(query.fieldbyname('codigo').asstring,14,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('nome').asstring,50,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('unidade').asstring,6,' ',taEsquerda)+
                 'T'+
                 'T'+
                 texto_justifica(query.fieldbyname('ST').asstring,1,' ',taEsquerda)+
                 texto_justifica(somenteNumero(formatfloat('##0.00',
                                 query.fieldbyname('aliquota').asfloat)),4,'0',taDireita)+
                 texto_justifica(somenteNumero(formatfloat('########0.00',
                                 query.fieldbyname('preco_venda').asfloat)),12,'0',taDireita));
    query.next;
    inc(icont);
  end;
  writeln(txt,'P9'+
              texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IE)  ,14,' ',taEsquerda)+
              texto_justifica(inttostr(icont)             ,6 ,'0',taDireita));


  // ASSINATURA DIGITAL - EAD - CRIAR

  closefile(txt);

  // retornar o nome do arquivo
  memo1.Lines.add('c:\TabProd.txt');

end;

procedure TfrmPrincipal.Estoque1Click(Sender: TObject);
var txt : textfile;
iCont : integer;
rEstoque : real;
begin

  assignfile(txt,'c:\Estoque.txt');
  rewrite(txt);
  // identificacao da empresa
  writeln(txt,'P1'+
              texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IE)  ,14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IM)  ,14,' ',taEsquerda)+
              texto_justifica(sEmpresa_Nome               ,50,' ',taEsquerda));

  query.close;
  query.sql.clear;
  query.sql.add('select * from estoque order by codigo');
  query.open;
  query.first;
  icont := 0;
  while not query.eof do
  begin
     if query.fieldbyname('estoque').asfloat < 0 then rEstoque := 0 else
     rEstoque := query.fieldbyname('estoque').asfloat;
    // Relação de Mercadorias e Serviços
    writeln(txt,'P2'+
                 texto_justifica(somenteNumero(sEmpresa_CNPJ),14,'0',taEsquerda)+
                 texto_justifica(query.fieldbyname('codigo').asstring,14,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('nome').asstring,50,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('unidade').asstring,6,' ',taEsquerda)+
                 texto_justifica(somenteNumero(formatfloat('########0.00',rEstoque)),
                                 9,'0',taDireita));
    query.next;
    inc(icont);
  end;
  writeln(txt,'P9'+
              texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IE)  ,14,' ',taEsquerda)+
              texto_justifica(inttostr(icont)             ,6 ,'0',taDireita));


  // ASSINATURA DIGITAL - EAD - CRIAR
  closefile(txt);

  // retornar o nome do arquivo
  memo1.Lines.add('c:\Estoque.txt');

end;

procedure TfrmPrincipal.ipoECF1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_Tipo_ECF(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.Marca1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_Marca_ECF(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.ModeloECF1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_Modelo_ECF(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.MFAdicional1Click(Sender: TObject);
begin
   memo1.Lines.add(cECF_MF_Adicional(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.VersaoSoftwareBasico2Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_Versao_SB(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.DataeHora2Click(Sender: TObject);
var stexto : string;
begin
  sTexto := cECF_Data_Hora_SB(cb_ecf.ItemIndex);

//24042009093013
  memo1.Lines.add('Data/Hora: '+stexto);


end;

procedure TfrmPrincipal.ContadorCRZ1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_Contador_CRZ(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.ContadorCOO1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_Contador_COO(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.ContadorCRO1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_Contador_CRO(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.DatadeEmisso1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_DataHora(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.DataMovimento1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_Data_Movimento(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.VendaBrutaDiria1Click(Sender: TObject);
begin
  memo1.Lines.add(cECF_ReducaoZ_Venda_Bruta(cb_ecf.ItemIndex));
end;

procedure TfrmPrincipal.otalizadoresParciais1Click(Sender: TObject);
var
i : integer;
begin
// memo1.lines.add(cECF_ReducaoZ_Totalizador_Parcial(cb_ecf.ItemIndex));


  if cECF_ReducaoZ_Totalizador_Parcial(cb_ecf.ItemIndex) = 'OK' thEN
  begin
    memo1.Clear;
    for i := 1 to 49 do
    begin
      if (Trim(tbtotalizador[i].nome) = '') or
         (Trim(tbtotalizador[i].nome) = '00000') or
         (Trim(tbtotalizador[i].nome) = '0000') 
          then
         // nao registra
      else
        memo1.Lines.add(tbtotalizador[i].Nome+' -> '+formatfloat('###,###,##0.00',
          tbtotalizador[i].valor));
    end;
  end;
end;

end.



07001200170025000500030000000000000000000000000000000000000000001





00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
00000000000000
000000000000000


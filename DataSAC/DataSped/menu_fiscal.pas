unit menu_fiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, AdvMenus, DB, MemDS, DBAccess, IBC,
  AdvToolBar, AdvToolBarStylers, AdvGlowButton;

type
  TfrmMenu_Fiscal = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    MENU_FISCAL: TAdvPopupMenu;
    Fechar1: TMenuItem;
    query: TIBCQuery;
    BitBtn17: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu_Fiscal: TfrmMenu_Fiscal;

implementation

uses Leitura_Memoria_Fiscal, Download_MFD, Arquivo_Fiscal,
  Lista_DAV, modulo, funcoes, principal, unECF, Meios_pagamento,
  msg_Operador, Lista_Vendas_Periodo, tabela_indice, Constantes;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn1Click(Sender: TObject);
begin
   frmMsg_operador.lb_msg.Caption := 'Aguarde! Emitindo Leitura X...';
   frmMsg_Operador.Show;
   frmmsg_operador.Refresh;

  sMsg :=  cECF_LeituraX(iECF_Modelo);

  frmmsg_operador.Hide;
  if sMsg <> OK then
  begin

    application.messagebox(pansichar('Erro na emissão da Leitura X'+
                                     'Mensagem: '+sMsg),'Erro',mb_ok+mb_iconerror);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn2Click(Sender: TObject);
begin
  frmLeitura_Memoria_Fiscal := tfrmLeitura_Memoria_Fiscal.create(self);
  frmLeitura_Memoria_Fiscal.rb_simplificada.Enabled := false;
  frmLeitura_Memoria_Fiscal.rb_completa.Enabled := true;
  frmLeitura_Memoria_Fiscal.rb_completa.Checked := true;
  frmLeitura_Memoria_Fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn3Click(Sender: TObject);
begin
  frmLeitura_Memoria_Fiscal := tfrmLeitura_Memoria_Fiscal.create(self);
  frmLeitura_Memoria_Fiscal.rb_simplificada.Enabled := true;
  frmLeitura_Memoria_Fiscal.rb_completa.Enabled := false;
  frmLeitura_Memoria_Fiscal.rb_simplificada.Checked := true;
  frmLeitura_Memoria_Fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn4Click(Sender: TObject);
begin
    frmDownload_MFD := tfrmDownload_MFD.Create(self);
    frmDownload_MFD.rb_arquivo.Enabled := false;
    frmDownload_MFD.rb_espelho.Enabled := true;
    frmDownload_MFD.rb_espelho.Checked := true;
    frmDownload_MFD.ShowModal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn5Click(Sender: TObject);
begin
  case iECF_Modelo of
  BEMATECH,
  SWEDA,
  EPSON:
    begin
      frmDownload_MFD := tfrmDownload_MFD.Create(self);
      frmDownload_MFD.rb_arquivo.Enabled := true;
      frmDownload_MFD.rb_espelho.Enabled := false;
      frmDownload_MFD.rb_arquivo.Checked := true;
      frmDownload_MFD.ShowModal;
    end;
  DARUMA:
    begin
      if FileExists('c:\retorno.txt') then DeleteFile('c:\retorno.txt');
      sMsg := cECF_Arquivo_Fiscal_CAT52(iECF_Modelo,'','','');
      if copy(smsg,1,2) = OK then
      begin
        application.MessageBox(pansichar(sMsg),'Aviso',mb_ok+MB_ICONINFORMATION);

      end
      else
      begin
        application.MessageBox(pansichar(sMsg),'Erro',mb_ok+mb_iconerror);

      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn6Click(Sender: TObject);
var txt : textfile;
iCont : integer;
sNome_arquivo : string;
begin
  sNome_Arquivo := 'c:\DATASAC\paf\txt\TabProd.txt';

  if FileExists('c:\TabProd.txt') then DeleteFile('c:\TabProd.txt');


   frmMsg_operador.lb_msg.Caption := 'Aguarde! Criando arquivo de Produtos...';
   frmMsg_Operador.Show;
   frmmsg_operador.Refresh;

  assignfile(txt,sNome_arquivo);
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

  closefile(txt);

  // assinatura digital
  assinatura_digital(sNome_arquivo);
  frmmsg_operador.Hide;

  // retornar o nome do arquivo
   application.messagebox(pansichar('Arquivo criado com sucesso!'+#13+
                                    'Local: '+sNome_arquivo),'Aviso',mb_ok+MB_ICONINFORMATION);


end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn7Click(Sender: TObject);
var txt : textfile;
iCont : integer;
rEstoque : real;
sNome_arquivo : string;

begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Criando arquivo de Estoque...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  snome_arquivo := 'c:\DATASAC\paf\txt\Estoque.txt';


  assignfile(txt,sNome_arquivo);
  rewrite(txt);
  // identificacao da empresa
  writeln(txt,'E1'+
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
    writeln(txt,'E2'+
                 texto_justifica(somenteNumero(sEmpresa_CNPJ),14,'0',taEsquerda)+
                 texto_justifica(query.fieldbyname('codigo').asstring,14,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('nome').asstring,50,' ',taEsquerda)+
                 texto_justifica(query.fieldbyname('unidade').asstring,6,' ',taEsquerda)+
                 texto_justifica(somenteNumero(formatfloat('########0.00',rEstoque)),
                                 9,'0',taDireita)+
                 texto_justifica(somenteNumero(troca_data(datetostr(dData_Sistema))),
                                 8,'0',taDireita));


    query.next;
    inc(icont);
  end;

  writeln(txt,'E9'+
              texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda)+
              texto_justifica(somenteNumero(sEmpresa_IE)  ,14,' ',taEsquerda)+
              texto_justifica(inttostr(icont)             ,6 ,'0',taDireita));


  closefile(txt);
  // assinatura digital

  TirarEAD(sNome_arquivo);

  assinatura_digital(sNome_arquivo);

  frmmsg_operador.Hide;

  // retornar o nome do arquivo
   application.messagebox(pansichar('Arquivo criado com sucesso!'+#13+
                                    'Local: '+sNome_arquivo),'Aviso',mb_ok+MB_ICONINFORMATION);
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn8Click(Sender: TObject);
begin
  frmArquivo_Fiscal := tfrmArquivo_Fiscal.create(self);
  frmArquivo_Fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn9Click(Sender: TObject);
begin
  frmLista_DAV := tfrmLista_DAV.create(self);
  frmLista_DAV.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn15Click(Sender: TObject);
var
  I: integer;

begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Identificação do PAF-ECF...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  try
    repeat
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'IDENTIFICAÇÃO DO PAF-ECF');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);

      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;


    if sMsg = OK then
    begin
      for i := 1 to 14 do
      begin
        repeat
          case i of
          1 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'a)No.do Laudo......: '+sPAF_Laudo);
          2 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'b)Identificação da empresa desenvolvedora');
          3 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  b1)CNPJ..........: '+sPAF_CNPJ);
          4 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  b2)Razão Social..: '+sPAF_Empresa);
          5 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  b3)Endereço......: '+sPAF_Endereco);
          6 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  b4)Telefone......: '+sPAF_Telefone);
          7 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  b6)Contato.......: '+sPAF_Contato);
          8 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'c)Identificação do PAF-ECF');
          9 : sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  c1)Nome Comercial: '+sPAF_Nome);
          10: sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  c2)Versão........: '+sPAF_Versao);
          11: sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  c3)Principal EXE.: '+sPAF_Executavel);
          12: sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  c4)Cód. MD5 EXE..: '+sPAF_MD5);
          13: sMsg := cECF_Usa_Gerencial(iECF_Modelo,'  c5)Outros Arq/MD5: ');
          14: sMsg := cECF_Usa_Gerencial(iECF_Modelo,'d)'+sECF_Serial);
          end;
          if sMsg <> OK then
          begin
            frmMsg_Operador.Hide;

            if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
            begin
              break;
            end;

            frmMsg_Operador.Show;
          end;
        until sMsg = OK;
      end;
    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;

        end;
      until sMsg = OK;
    end;

  finally
    frmMsg_Operador.Hide;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn16Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.Fechar1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn17Click(Sender: TObject);
begin
  frmMeios_pagamento := tfrmMeios_pagamento.create(self);
  frmMeios_pagamento.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn10Click(Sender: TObject);
begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Controle de Encerrantes...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  try
    repeat
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'CONTROLE DE ENCERRANTES');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);

      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;


    if sMsg = OK then
    begin
      repeat
        query.close;
        query.sql.clear;
        query.sql.add('select posto_bico_movimento.*, posto_bico.*, estoque.nome as produto');
        query.sql.add('from posto_bico_movimento, posto_bico, estoque ');

        query.sql.add('where data = :data');
        QUERY.SQL.ADD('and posto_bico_movimento.cod_bico = posto_bico.codigo');
        query.sql.add('and posto_bico.cod_produto = estoque.codigo');
        query.sql.add('order by posto_bico.bomba, posto_bico.bico');
        query.parambyname('data').asdatetime := dData_Sistema;
        query.open;
        query.First;

        while not query.eof do
        begin
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,//'Tanque '+query.fieldbyname('Tanque').asstring+' '+
                                                'Bomba '+query.fieldbyname('Bomba').asstring+' '+
                                                'Bico '+query.fieldbyname('bico').asstring+' '+query.fieldbyname('produto').asstring+', '+
                                                'EI='+zerar(somenteNumero(formatfloat('######0.00',query.fieldbyname('EI').asfloat)),6)+', '+
                                                'EF='+zerar(somenteNumero(formatfloat('######0.00',query.fieldbyname('EF').asfloat)),6)+', '+
                                                'Volume='+formatfloat('#########0.000',query.fieldbyname('volume').asfloat));
         QUERY.NEXT;
        end;
        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;
      until sMsg = OK;

    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;

        end;
      until sMsg = OK;
    end;

  finally
    frmMsg_Operador.Hide;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn11Click(Sender: TObject);
begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Transferência entre Mesas...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  try
    repeat

      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'TRANSFERÊNCIA ENTRE MESAS');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;

    if sMsg = OK then
    begin
      repeat
        frmModulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('select r000002.*, c000025.produto from r000002, c000025');
        frmmodulo.query_servidor.sql.add('where r000002.cod_produto = c000025.codigo and');
        frmmodulo.query_servidor.sql.add('r000002.transf_mesa > 0');
        frmmodulo.query_servidor.sql.add('order by r000002.cod_mesa, r000002.codigo');
        frmmodulo.query_servidor.open;

        frmmodulo.query_servidor.First;
        while not frmmodulo.query_servidor.eof do
        begin
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Mesa de Origem.: '+zerar(frmmodulo.query_servidor.fieldbyname('transf_mesa').asstring,3));
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Mesa de Destino: '+zerar(frmmodulo.query_servidor.fieldbyname('cod_mesa').asstring,3));
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Produto........: '+frmmodulo.query_servidor.fieldbyname('produto').asstring);
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Quantidade.....: '+texto_justifica(formatfloat('###,###,##0.000',
                                                                    frmmodulo.query_servidor.fieldbyname('qtde').asfloat),12,' ',taDireita));
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Unitário.......: '+texto_justifica(formatfloat('###,###,##0.000',
                                                                    frmmodulo.query_servidor.fieldbyname('unitario').asfloat),12,' ',taDireita));
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Total..........: '+texto_justifica(formatfloat('###,###,##0.000',
                                                                    frmmodulo.query_servidor.fieldbyname('total').asfloat),12,' ',taDireita));
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
         frmmodulo.query_servidor.NEXT;
        end;

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;
      until sMsg = OK;
    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;

        end;
      until sMsg = OK;
    end;
  finally
    frmMsg_Operador.Hide;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn12Click(Sender: TObject);
begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Mesas Abertas...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  try
    repeat
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'MESAS ABERTAS');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);

      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;


    if sMsg = OK then
    begin
      repeat
        sMSG := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        sMSG := cECF_Usa_Gerencial(iECF_Modelo,'No.Mesa   Abertura (Data/Hora)     Total Consumo');
        sMSG := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');

        frmModulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('select sum(r000002.total) soma,');
        frmmodulo.query_servidor.sql.add('r000001.codigo, r000001.data, r000001.hora');
        frmmodulo.query_servidor.sql.add('from r000001, r000002');
        frmmodulo.query_servidor.sql.add('where r000001.codigo = r000002.cod_mesa');
        frmmodulo.query_servidor.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
        frmmodulo.query_servidor.sql.add('order by r000001.codigo');
        frmmodulo.query_servidor.open;

        frmmodulo.query_servidor.First;
        while not frmmodulo.query_servidor.eof do
        begin
          sMSG := cECF_Usa_Gerencial(iECF_Modelo,zerar(frmmodulo.query_servidor.fieldbyname('codigo').asstring,7)+'   '+
                                                frmmodulo.query_servidor.fieldbyname('data').asstring+' '+
                                                frmmodulo.query_servidor.fieldbyname('hora').asstring+'      '+
                                                texto_justifica(formatfloat('###,###,##0.00',
                                                                    frmmodulo.query_servidor.fieldbyname('soma').asfloat),13,' ',taDireita));
          frmmodulo.query_servidor.NEXT;
        end;

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;
      until sMsg = OK;

    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;
        end;
      until sMsg = OK;

    end;
  finally
    frmMsg_Operador.Hide;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn13Click(Sender: TObject);
begin
  frmLISTA_VENDAS_PERIODO := tfrmLISTA_VENDAS_PERIODO.create(self);
  frmLISTA_VENDAS_PERIODO.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn14Click(Sender: TObject);
begin
  frmTabela_Indice := TfrmTabela_Indice.Create(self);
  frmTabela_Indice.ShowModal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMenu_Fiscal.BitBtn18Click(Sender: TObject);
begin
  frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Abastecimentos Pendentes...';
  frmMsg_Operador.Show;
  frmmsg_operador.Refresh;

  try
    repeat
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'ABASTECIMENTOS PENDENTES');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);

      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores
        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;

    if sMsg = OK then
    begin
      repeat
        query.close;
        query.sql.clear;
        query.sql.add('select posto_abastecimento.*, estoque.nome produto');
        query.sql.add('from posto_abastecimento, estoque');
        query.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
        query.sql.add('and posto_abastecimento.situacao = 0');
        query.sql.add('order by posto_abastecimento.codigo');
        query.Open;
        query.First;

        while not query.eof do
        begin
          sMSG := cECF_Usa_Gerencial(iECF_Modelo,//'Tanque '+query.fieldbyname('Tanque').asstring+' '+
                        'Bomba '+query.fieldbyname('Bomba').asstring+' '+
                        'Bico '+query.fieldbyname('bico').asstring+', '+
                        'EI='+zerar(somenteNumero(formatfloat('######0.00',query.fieldbyname('EI').asfloat)),6)+', '+
                        'EF='+zerar(somenteNumero(formatfloat('######0.00',query.fieldbyname('EF').asfloat)),6));

          QUERY.NEXT;
        end;

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.MessageBox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;
      until sMsg = OK;
    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;

          end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;

        end;
      until sMsg = OK;

    end;
  finally
    frmMsg_Operador.Hide;
  end;
end;

end.

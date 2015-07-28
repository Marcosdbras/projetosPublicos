unit Arquivo_Fiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, ExtCtrls, DB, MemDS, DBAccess, IBC,
  slstbox, dbslstbox, AdvScrollBox;

type
  TfrmArquivo_Fiscal = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    query: TIBCQuery;
    Label1: TLabel;
    CB_ECF: TComboBox;
    lblAviso: TLabel;
    sbxECFs: TScrollBox;
    shpAviso: TShape;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SelecionarTodas(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArquivo_Fiscal: TfrmArquivo_Fiscal;

implementation

uses modulo, principal, funcoes, unECF;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.bt_okClick(Sender: TObject);
var
  txt: textfile;
  sNOme_arquivo: string;

begin
  {Anexo VI -  Arquivo eletronico dos registros Efetuados pelo ECF
    Registros
    R01 - Identificação do ECF
    R02 - Relações de Reduções Z
    R03 - Detalhamento da Redução Z
    R04 - Cupom Fiscal
    R05 - Detalhamento do Cupoom Fiscal
    R06 - Demais documentos emitidos
    R07 - Detalhes dos Cupons / Cupons Nao fiscais / Meios de Pagamento
    EAD - Assinatura Digital

    Nome do Arquivo: CCCCCCNNNNNNNNNNNNNNDDMMAAAA.txt
    CCCCCC -----> Codigo Nacional de identificação
    NNNNNNNNNNNNNN --> 14 ultimos digitos do do serial do ecf
    DDMMAAAA --> data do movimento no caso da da geracao automatica apos a reducao Z
                 ou data da emissao qdo for solicitado a sua geracao.

  }



    // Inciando a criacao do arquivo
    sNome_Arquivo := 'c:\DATASAC\paf\txt\'+sECF_Codigo_Sefa+copy(sECF_Serial,length(sECF_serial)-14,14)+
                   somenteNumero(datetostr(dData_Sistema))+'.txt';

    assignfile(txt, sNOme_arquivo);
    rewrite(txt);
    // Registro R01
    Write(txt,'R01');
    //02 Numero de Serie/Fabricacao
    Write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
    //03 MF Adicional
    write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
    //04 Tipo de ECF
    write(txt,texto_justifica(sECF_Tipo,7,' ',taEsquerda));
    //05 Marca do ECF
    write(txt,texto_justifica(sECF_Marca,20,' ',taEsquerda));
    //06 Modelo do ECF
    write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
    //07 Versao do SB
    write(txt,texto_justifica(sECF_Versao_SB,10,' ',taEsquerda));
    //08 Data inst. SB
    write(txt,texto_justifica(sECF_Data_SB,8,' ',taEsquerda));
    //09 Data inst. SB
    write(txt,texto_justifica(sECF_Hora_SB,6,' ',taEsquerda));
    //10 Data inst. SB
    write(txt,texto_justifica(sECF_Caixa,3,'0',taDireita));
    //11 CNPJ do Usuario
    write(txt,texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda));
    //12 IE do usuario
    write(txt,texto_justifica(somenteNumero(sEmpresa_IE),14,' ',taEsquerda));
    //13 CNPJ da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_CNPJ),14,' ',taEsquerda));
    //14 IE da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_IE),14,' ',taEsquerda));
    //15 IM da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_IM),14,' ',taEsquerda));
    //16 Nome da Desenvolvedora
    write(txt,texto_justifica(sPAF_Empresa,40,' ',taEsquerda));
    //17 Nome do PAF
    write(txt,texto_justifica(sPAF_Nome,40,' ',taEsquerda));
    //18 Versao do PAF
    write(txt,texto_justifica(sPAF_Versao,10,' ',taEsquerda));
    //19 Codigo MD5
    write(txt,texto_justifica(sPAF_MD5,32,' ',taEsquerda));
    //20 Data Inicial - 8
    write(txt,troca_data(ed_data_ini.Text));
    //21 Data Final - 8
    write(txt,troca_data(ed_data_fim.Text));
    //22 Versao do Ato Cotepe
    writeln(txt,sPAF_Versao_ER);


    //Registro 02 - Relações de reduções Z
    // filtrar o banco de dados de reducoes Z
    query.close;
    query.sql.clear;
    query.sql.add('Select * from reducaoZ');
    query.sql.add('where data_movimento between :datai and :dataf');
    query.sql.add('and ecf = '''+sECF_Serial+'''');
    query.sql.add('order by data_movimento');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;

    // gerar um arquivo R02 para cada reduzao Z emitida
    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R02');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CRZ - 6
      write(txt,texto_justifica(query.fieldbyname('CRZ').asstring,6,'0',taDireita));
      //07 COO - 6
      write(txt,texto_justifica(query.fieldbyname('COO').asstring,6,'0',taDireita));
      //08 CRO - 6
      write(txt,texto_justifica(query.fieldbyname('CRO').asstring,6,'0',taDireita));
      //09 Data do Movimento - 8 - AAAAMMDD
      write(txt,troca_data(query.fieldbyname('data_movimento').asstring));
      //10 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(query.fieldbyname('data_emissao').asstring));
      //11 Hora de Emissao - 6 - HHMMSS
      write(txt,texto_justifica(somenteNumero(query.fieldbyname('hora_emissao').asstring),6,' ',tadireita));
      //12 Venda bruta diária - 14 - 00000000001011 -> R$ 10,11
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('venda_bruta').asfloat)),14,'0',taDireita));
      //13 flag de Incidencia de desconto de ISSQN - S ou N
      writeln(txt,texto_justifica(sECF_Desconto_Iss,1,'N',taEsquerda));
      query.next;
    end;
    // final do registro R02


    //Registro R03 - Detalhe da Reduçao Z
    //filtar o banco de dados de reducaoz_total_parcial
    query.close;
    query.sql.clear;
    query.sql.add('select reducaoz_total_parcial.*, reducaoz.CRZ, reducaoz.data_movimento');
    query.sql.add('from reducaoz_total_parcial, reducaoz');
    query.sql.add('where reducaoz_total_parcial.cod_reducaoz = reducaoz.codigo');
    query.sql.add('and reducaoz.data_movimento between :datai and :dataf');
    query.sql.add('and reducaoz.ecf = '''+sECF_Serial+'''');
    query.sql.add('order by reducaoz.data_movimento, reducaoz_total_parcial.codigo');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;

    // gerar um arquivo R03 para cada totalizador de cada reducao z emitida
    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R03');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CRZ - 6
      write(txt,texto_justifica(query.fieldbyname('CRZ').asstring,6,'0',taDireita));
      //07 - Totalizador Parcial - 7
      write(txt,texto_justifica(query.fieldbyname('totalizador').asstring,7,' ',taEsquerda));
      //08 - Valor acumulado - 13
      writeln(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor').asfloat)),13,'0',taDireita));
      query.next;
    end;
    // final do registro R03


    //Registro R04 - Cupom fiscal
    // filtrar o banco de dados de cupom
    query.close;
    query.sql.clear;
    query.sql.add('select * from cupom');
    query.sql.add('where data between :datai and :dataf');
    query.sql.add('and ecf = '''+sECF_Serial+'''');
    query.sql.add('order by data, codigo');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;

    // gerar um registro r04 para cada cupom
    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R04');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CCF
      write(txt,texto_justifica(query.fieldbyname('ccf').asstring,6,'0',taDireita));
      //07 COO
      write(txt,texto_justifica(query.fieldbyname('numero').asstring,6,'0',taDireita));
      //8 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(query.fieldbyname('data').asstring));
      //9 Subttotal do documento - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_produto').asfloat)),14,'0',taDireita));
      //10 Desconto sobre subtotal - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_desconto').asfloat)),13,'0',taDireita));
      //11 Indicador do tipo de desconto - V ou P
      write(txt,'V');
      //12 Acrescimo sobre subtotal - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_acrescimo').asfloat)),13,'0',taDireita));
      //13 Indicador do tipo de acrescimo - V ou P
      write(txt,'V');
      //14 Valor total liquido - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_TOTAL').asfloat)),14,'0',taDireita));
      //15 Indicador de cancelamento
      if query.fieldbyname('cancelado').asinteger = 1 then
        write(txt,'S')
      else
        write(txt,'N');
      //16 Cancelamento de Acrescimo ou desconto no subtotal
      write(txt,'0000000000000');
      //17 Ordem de aplicacao do Desconto ou Acrescimo
      if query.fieldbyname('valor_desconto').asfloat > 0 then
        write(txt,'D')
      else
         if query.fieldbyname('valor_acrescimo').asfloat > 0 then
           write(txt,'A')
         else
           write(txt,' ');
      //18 Nome do cliente - 40
      Write(txt,texto_justifica(query.fieldbyname('nome_consumidor').asstring,40,' ',taEsquerda));
      //18 CPF/CNPJ do cliente - 14
      Writeln(txt,texto_justifica(somenteNumero(query.fieldbyname('cpf_consumidor').asstring),14,' ',taEsquerda));
      query.next;
    end;
    // final do registro R04


    //Registro R05 - Detalhe do Cupom Fiscal (items)
    // filtrar a tabela de CUPOM_ITEM, CUPOM e ESTOQUE
    query.close;
    query.sql.clear;
    query.sql.add('select cupom_item.*, cupom.numero, cupom.ccf, cupom.data, estoque.nome produto');
    query.sql.add('from cupom_item, cupom, estoque');
    query.sql.Add('where cupom_item.cod_cupom = cupom.codigo');
    query.sql.add('and cupom_item.cod_produto = estoque.codigo');
    query.sql.add('and cupom.data between :datai and :dataf');
    query.sql.add('and cupom.ecf = '''+sECF_Serial+'''');
    query.sql.add('order by cupom.data, cupom.numero, cupom_item.item');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;
    // gerar um arquivo r05 para cada item de cada cupom emitido
    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R05');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(query.fieldbyname('numero').asstring,6,'0',taDireita));
      //07 CCF
      write(txt,texto_justifica(query.fieldbyname('ccf').asstring,6,'0',taDireita));
      //08 Numero do Item
      write(txt,texto_justifica(query.fieldbyname('item').asstring,3,'0',taDireita));
      //09 Codigo do Produto
      write(txt,texto_justifica(query.fieldbyname('cod_produto').asstring,14,' ',taEsquerda));
      //10 Descricao do produto
      write(txt,texto_justifica(query.fieldbyname('produto').asstring,100,' ',taEsquerda));
      //11 Quantidade - 7
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.000',query.fieldbyname('qtde').asfloat)),7,'0',taDireita));
      //12 Descricao do produto
      write(txt,texto_justifica(query.fieldbyname('unidade').asstring,3,' ',taEsquerda));
      //13 Valor Unitario - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.000',query.fieldbyname('valor_unitario').asfloat)),8,'0',taDireita));
      //14 Desconto - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_desconto').asfloat)),8,'0',taDireita));
      //15 Acrescimo - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_acrescimo').asfloat)),8,'0',taDireita));
      //16 Valor Total Liquido - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor_total').asfloat)),14,'0',taDireita));
      //17 Totalizador Parcial (aliquota - conforme tabela);
      write(txt,texto_justifica(query.fieldbyname('cod_totalizador').asstring,7,' ',taEsquerda));
      //18 Indicador de Cancelamento
      if query.FieldByName('cancelado').asinteger = 1 then
        write(txt,'S')
      else
        write(txt,'N');
      //19 Quantidade cancelada (somente qdo houver cancelamento parcial do item) sempre zerado
      write(txt,'0000000');
      //20 Valor cancelado (somenete qdo houver cancelamento parcial do item) sempre zerado
      write(txt,'0000000000000');
      //21 Cancelamento do acrescimo no item
      write(txt,'0000000000000');
      //22 indicador de arredondamento ou truncamento - sempre truncamento
      write(txt,'T');
      //23 indicador de producao propria ou de terceiros
      write(txt,'T');
      //24 Quantidade de casas decimais na qtde
      write(txt,'3');
      //25 quantidade de casas decimais no valor unitario
      writeln(txt,'3');
      query.next;
    end;
    // Finalizando o arquivo

    //R06 - Demais documentos emitidos pelo ECF
    // Filtrar a tabela NAO_FISCAL
    query.close;
    query.sql.clear;
    query.sql.add('select * from nao_fiscal');
    query.sql.add('where ecf = '''+sECF_Serial+'''');
    query.sql.add('and data between :datai and :dataf');
    query.sql.add('order by data, codigo');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;

    // gerar um registro r06 para cada comprovante emitido
    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R06');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(query.fieldbyname('coo').asstring,6,'0',taDireita));
      //07 gnf
      write(txt,texto_justifica(query.fieldbyname('gnf').asstring,6,'0',taDireita));
      //08 grg
      write(txt,texto_justifica(query.fieldbyname('grg').asstring,6,'0',taDireita));
      //09 cdc - 4
      write(txt,texto_justifica(query.fieldbyname('cdc').asstring,4,'0',taDireita));
      //10 denominacao - 2
      write(txt,texto_justifica(query.fieldbyname('denominacao').asstring,2,' ',taEsquerda));
      //11 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(query.fieldbyname('data').asstring));
      //12 Hora de Emissao - 6 - HHMMSS
      writeln(txt,texto_justifica(somenteNumero(query.fieldbyname('hora').asstring),6,' ',tadireita));

      query.next;
    end;

    // R07 - DETALHE DO CUPOM FISCAL E DO DOCUMENTO NAO FISCAL -> MEIOS DE PAGAMENTO
    // Filtrar a tabela CUPOM_FORMA e conjunto com CUPOM unido com NAO_FISCAL
    query.close;
    query.sql.clear;
    query.sql.add('select');
    query.sql.add('  COO,');
    query.sql.add('  CCF,');
    query.sql.add('  GNF,');
    query.sql.add('  Forma,');
    query.sql.add('  Valor');
    query.sql.add('from');
    query.sql.add('  (Select');
    query.sql.add('     cupom.numero as COO,');
    query.sql.add('     cupom.ccf as ccf,');
    query.sql.add('     ''000000'' as gnf,');
    query.sql.add('     cupom_forma.forma as Forma,');
    query.sql.add('     cupom_forma.valor as Valor');
    query.sql.add('   from');
    query.sql.add('     cupom_forma, cupom');
    query.sql.add('   where');
    query.sql.add('     cupom_forma.cod_cupom = cupom.codigo and');
    query.sql.add('     cupom.data between :datai and :dataf and cupom.cancelado = 0 and');
    query.sql.add('     cupom.ecf = '''+sECF_Serial+'''');
    query.sql.add('   union');
    query.sql.add('   Select');
    query.sql.add('     nao_fiscal.coo as COO,');
    query.sql.add('     ''000000'' as ccf,');
    query.sql.add('     nao_fiscal.gnf as gnf,');
    query.sql.add('     cupom_forma.forma as Forma,');
    query.sql.add('     cupom_forma.valor as Valor');
    query.sql.add('   from');
    query.sql.add('     cupom_forma, nao_fiscal');
    query.sql.add('   where');
    query.sql.add('     cupom_forma.cod_cupom = nao_fiscal.codigo and');
    query.sql.add('     nao_fiscal.data between :datai and :dataf and');
    query.sql.add('     nao_fiscal.ecf = '''+sECF_Serial+''') as TMP');
    query.parambyname('datai').asdatetime := ed_data_ini.Date;
    query.ParamByName('dataf').asdatetime := ed_data_fim.date;
    query.open;
    query.first;

    // gerar um registro r07 para cada meio de pagamento utilizado

    while not query.eof do
    begin
      //01 - Tipo
      write(txt,'R07');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(query.fieldbyname('coo').asstring,6,'0',taDireita));
      //07 CCF
      write(txt,texto_justifica(query.fieldbyname('CCF').asstring,6,'0',taDireita));
      //08 GNF
      write(txt,texto_justifica(query.fieldbyname('GNF').asstring,6,'0',taDireita));
      //09 Meio de Pagamento - 15
      write(txt,texto_justifica(query.fieldbyname('forma').asstring,15,' ',taEsquerda));
      //10 Valor Pago - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',query.fieldbyname('valor').asfloat)),13,'0',taDireita));
      //11 Indicador de estorno N ou S
      write(txt,'N');
      //12 Valor extornado
      writeln(txt,'0000000000000');
      query.next;
    end;
    closefile(txt);

    // assinatura digital
    assinatura_digital(snome_arquivo);


    application.MessageBox(pansichar('Arquivo criado com sucesso!'+#13+
                                     'Local: '+snome_arquivo),'Aviso',mb_ok+MB_ICONINFORMATION);


  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.ed_data_iniKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.FormClose(Sender: TObject;
var
  Action: TCloseAction);

begin
  Action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.FormShow(Sender: TObject);
var
  oCheck: TCheckBox;
  I: Integer;
  iY: Integer;

begin
  sbxECFs.Height := 250; // Altura sobrepondo o aviso

  // testando a conexao com o servidor
  try
    frmModulo.Conexao_Servidor.Connected := false;
    frmModulo.Conexao_Servidor.Connected := true;

    bServidor_Conexao := true;
  except
    frmModulo.Conexao_Servidor.Connected := false;

    sbxECFs.Height := 170;

    shpAviso.Visible := True;
    lblAviso.Visible := True;
    lblAviso.Repaint;
  end;

  CB_ECF.Items.Clear;
  CB_ECF.Items.ADD(sECF_Serial);
  cb_ecf.ItemIndex := 0;
  ed_data_ini.Date := dData_Sistema;
  ed_data_fim.Date := dData_Sistema;

  iY := 2;

  if not lblAviso.Visible then
  begin
    oCheck := TCheckBox.Create(Self);
    with oCheck do
    begin
      Parent := sbxECFs;
      Name := 'chkTodas';
      Left := 4;
      Top := iY;
      Width := 250;
      Caption := 'Selecionar Todas';
      OnClick := SelecionarTodas;
      Parent := sbxECFs;
      Inc(iY, 19);
    end;

    // CGT: A impressora local, sempre será a primeira
    oCheck := TCheckBox.Create(Self);

    with oCheck do
    begin
      Parent := sbxECFs;
      Name := 'Check' + IntToStr(I);
      Caption := sECF_Serial;
      Left := 4;
      Top := iY;
      Width := 250;
      Font.Color := clGreen;
      Parent := sbxECFs;

      Inc(I);
      Inc(iY, 19);
    end;

    // GUIO: Seleciona todas as impressoas disponíveis na rede
    with frmModulo.Query_Servidor do
    begin
      Close;
      SQL.Text := 'Select DISTINCT(SERIE_EQUIPAMENTO) FROM C000081 WHERE TIPO_ECF = '
        + QuotedStr('ECF')
        + ' AND SERIE_EQUIPAMENTO <> ' + QuotedStr(sECF_Serial)
        + ' ORDER BY SERIE_EQUIPAMENTO ';
      Open;

      while not Eof do
      begin
        oCheck := TCheckBox.Create(Self);
        
        with oCheck do
        begin
          Parent := sbxECFs;
          Name := 'Check' + IntToStr(I);
          Caption := Fields[0].AsString;
          Left := 4;
          Top := iY;
          Width := 250;
          Parent := sbxECFs;

          Inc(I);
          Inc(iY, 19);
        end;

        Next;
      end;

      Close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmArquivo_Fiscal.SelecionarTodas(Sender: TObject);
var
  I: Integer;
  bSelecionar: Boolean;

begin
  bSelecionar := TCheckBox(FindComponent('chkTodas')).Checked;

  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TCheckBox) and (Components[I].Name <> 'chkTodas') then
      TCheckBox(Components[I]).Checked := bSelecionar;
  end;
end;

end.

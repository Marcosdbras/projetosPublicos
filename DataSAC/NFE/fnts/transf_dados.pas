unit transf_dados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  StdCtrls, DBTables, Wwquery, ZAbstractTable, Buttons, Spin, ComCtrls,
  Mask, rxtooledit, MemDS, DBAccess, IBC, Gauges;

type
  Tfrmtransf_dados = class(TForm)
    ZConnection1: TZConnection;
    wwcliente: TwwQuery;
    zcliente: TZTable;
    ZFORNECEDORES: TZTable;
    WWFORNECEDORES: TwwQuery;
    zfuncionario: TZTable;
    wwfuncionarios: TwwQuery;
    zmarca: TZTable;
    wwmarca: TwwQuery;
    Zcidades: TZTable;
    wwcidades: TwwQuery;
    zbanco: TZTable;
    wwbanco: TwwQuery;
    zcfop: TZTable;
    wwcfop: TwwQuery;
    ZAgenda: TZTable;
    wwagenda: TwwQuery;
    zplanocontas: TZTable;
    wwplanocontas: TwwQuery;
    zcontasreceber: TZTable;
    wwcontasreceber: TwwQuery;
    Zregiao: TZTable;
    wwregiao: TwwQuery;
    zgrupo: TZTable;
    wwgrupo: TwwQuery;
    zcondpgto: TZTable;
    wwcondpgto: TwwQuery;
    zcondpgtoparcela: TZTable;
    wwcondpgtoparcela: TwwQuery;
    zsubgrupo: TZTable;
    wwsubgrupo: TwwQuery;
    zproduto: TZTable;
    wwproduto: TwwQuery;
    zcheques: TZTable;
    wwcheques: TwwQuery;
    zcpagar: TZTable;
    wwcpagar: TwwQuery;
    znotasvendas: TZTable;
    wwnotasvendas: TwwQuery;
    query1: TZQuery;
    zbarra: TZTable;
    wwbarra: TwwQuery;
    bar: TProgressBar;
    query: TZQuery;
    Conexao: TZConnection;
    DataSource1: TDataSource;
    cpgrade: TTable;
    cpnumero: TTable;
    qrnova: TZQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    edit3: TSpinEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn14: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn13: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn18: TBitBtn;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    rcaixa: TCheckBox;
    rreceber: TCheckBox;
    rvendas: TCheckBox;
    rproduto: TCheckBox;
    Memo1: TMemo;
    Button11: TButton;
    query2: tzquery;
    Button12: TButton;
    Button13: TButton;
    query3: tzquery;
    query4: tzquery;
    query5: tzquery;
    ps: TProgressBar;
    BitBtn19: TBitBtn;
    query10: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransf_dados: Tfrmtransf_dados;

implementation

uses principal, modulo;

{$R *.dfm}

procedure Tfrmtransf_dados.Button1Click(Sender: TObject);
begin
  wwcliente.Open;
  wwcliente.First;
  ZCliente.open;
  while not wwcliente.eof do
  begin
    zcliente.Insert;

    zcliente.FieldValues['CODIGO;NOME;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TIPO;SITUACAO;TELEFONE1;TELEFONE2'] :=
    wwcliente.FieldValues['CODIGO;NOME;RUA;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;PESSOAi;TIPOSITUACAO;TELEFONE;FONETRAB'];

    zcliente.FieldValues['CELULAR;RG;CPF;FILIACAO;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;DATA_CADASTRO;OBS1;OBS2;OBS3;OBS4;OBS5;NASCIMENTO'] :=
    wwcliente.FieldValues['CELULAR;rG_rEGjUNTA;CPF_CGC;PAI;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REFERENCIA1;REFERENCIA2;CODFUNCIONARIO;DATA_CAD;OBS1;OBS2;OBS3;OBS4;OBS5;NASCIMENTO'];

    zcliente.Post;
    wwcliente.Next;
  end;

  zcliente.First;
  while not zcliente.eof do
  begin
    zcliente.edit;
    zcliente.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(zcliente.fieldbyname('codigo').asstring,6);
    zcliente.FieldByName('codvendedor').asstring := frmprincipal.zerarcodigo(zcliente.fieldbyname('codvendedor').asstring,6);
    zcliente.post;
        zcliente.next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;


procedure Tfrmtransf_dados.Button2Click(Sender: TObject);
begin
  WWFORNECEDORES.Open;
  WWFORNECEDORES.First;
  ZFORNECEDORES.open;

  while not WWFORNECEDORES.eof do
  begin
    zfornecedores.Insert;

    zfornecedores.FieldValues ['CODIGO;NOME;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX'] :=
    wwfornecedores.FieldValues['CODIGO;FORNECEDOR;RUA;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX'];

    zfornecedores.FieldValues ['CONTATO1;CELULAR1;EMAIL;HOMEPAGE;CNPJ;IE;BANCO;AGENCIA;CONTA;OBS1;DATA'] :=
    wwfornecedores.FieldValues['CONTATO;CELULAR;EMAIL;HOMEPAGE;CGC;INSCESTADUAL;BANCO;AGENCIA;CONTACORRENTE;OBS;DATACAD'];

    zfornecedores.Post;
    wwfornecedores.Next;
  end;

  zfornecedores.First;
  while not zfornecedores.eof do
  begin
    zfornecedores.edit;
    zfornecedores.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(zfornecedores.fieldbyname('codigo').asstring,6);
    zfornecedores.post;
    zfornecedores.next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
END;
procedure Tfrmtransf_dados.Button3Click(Sender: TObject);
begin
  wwfuncionarios.Open;
  wwfuncionarios.First;
  zfuncionario.open;

  while not wwfuncionarios.eof do
  begin
    zfuncionario.Insert;

    zfuncionario.FIELDVALUES['CODIGO;NOME;ENDERECO;BAIRRO;CIDADE;UF;CEP;TELEFONE;CPF;RG;CTPS;FUNCAO;DATA_ADMISSAO'] :=
    wwfuncionarios.fieldvalues['CODIGO;FUNCIONARIO;RUA;BAIRRO;CIDADE;UF;CEP;TELEFONE;CPF;RG;CTPS;CARGO;DATAADM'];

    zfuncionario.FieldValues['SALARIO;COMISSAO;NASCIMENTO'] :=
    wwfuncionarios.FieldValues['SALARIO;COMISSAOVISTA;NASCIMENTO'];

    zfuncionario.Post;
    wwfuncionarios.Next;
  end;

  zfuncionario.First;
  while not zfuncionario.eof do
  begin
    zfuncionario.edit;
    zfuncionario.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(zfuncionario.fieldbyname('codigo').asstring,6);
    zfuncionario.post;
        zfuncionario.next;
  end;


  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;

procedure Tfrmtransf_dados.Button4Click(Sender: TObject);
begin
  wwmarca.Open;
  wwmarca.First;
  zmarca.open;

  while not wwmarca.eof do
  begin
    zmarca.Insert;

    zmarca.fieldvalues ['CODIGO;NOME'] :=
    wwmarca.fieldvalues['CODIGO;MARCA'];

    zmarca.Post;
    wwmarca.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;

procedure Tfrmtransf_dados.Button5Click(Sender: TObject);
begin
  wwcidades.Open;
  wwcidades.First;
  Zcidades.open;

  while not wwcidades.eof do
  begin
    Zcidades.Insert;

    Zcidades.fieldvalues ['CODIGO;CIDADE;UF;CEP'] :=
    wwcidades.fieldvalues['CODIGO;CIDADE;UF;CEP'];

    Zcidades.Post;
    wwcidades.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;


procedure Tfrmtransf_dados.Button6Click(Sender: TObject);
begin
  wwbanco.Open;
  wwbanco.First;
  zbanco.open;

  while not wwbanco.eof do
  begin
    zbanco.Insert;

    zbanco.fieldvalues ['NUMERO;BANCO'] :=
    wwbanco.fieldvalues['CODIGO;NOME'];

    zbanco.Post;
    wwbanco.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.Button7Click(Sender: TObject);
begin
  wwcfop.Open;
  wwcfop.First;
  zcfop.open;

  while not wwcfop.eof do
  begin
    zcfop.Insert;

    zcfop.fieldvalues ['CFOP;NATUREZA;OBS1;OBS2'] :=
    wwcfop.fieldvalues['CFOP;NATUREZA;OBS1;OBS2'];

    Zcfop.Post;
    wwcfop.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.Button8Click(Sender: TObject);
begin
  wwagenda.Open;
  wwagenda.First;
  ZAgenda.open;

  while not wwagenda.eof do
  begin
    ZAgenda.Insert;

    ZAgenda.fieldvalues ['CFOP;NATUREZA;OBS1;OBS2'] :=
    wwagenda.fieldvalues['CFOP;NATUREZA;OBS1;OBS2'];

    ZAgenda.Post;
    wwagenda.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;

procedure Tfrmtransf_dados.Button9Click(Sender: TObject);
begin
  wwplanocontas.Open;
  wwplanocontas.First;
  zplanocontas.open;

  while not wwplanocontas.eof do
  begin
    zplanocontas.Insert;

    zplanocontas.fieldvalues ['CODIGO;CONTA;TIPO'] :=
    wwplanocontas.fieldvalues['CODIGO;CONTA;CODTIPO'];

    zplanocontas.Post;
    wwplanocontas.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.Button10Click(Sender: TObject);
begin
  wwcontasreceber.Open;
  wwcontasreceber.First;
  bar.position := 0;
  bar.Max := wwcontasreceber.RecordCount;
  zcontasreceber.open;
  wwcontasreceber.first;

  while not wwcontasreceber.eof do
  begin
    zcontasreceber.Insert;

    zcontasreceber.fieldvalues ['CODIGO;CODVENDA;CODVENDEDOR;CODCLIENTE;DATA_EMISSAO;DATA_VENCIMENTO;DATA_PAGAMENTO;VALOR_ORIGINAL;VALOR_PAGO;VALOR_ATUAL;SITUACAO'] :=
    wwcontasreceber.fieldvalues['CODIGO;CODVENDA;CODVENDEDOR;CODCLIENTE;DATACOMPRA;VENCIMENTO;ULTIMOPGTO;VALORPARCELA;VALORPAGO;RESTANTE;SITUACAO'];

    zcontasreceber.Post;
    wwcontasreceber.Next;

    bar.Position := bar.position + 1;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
  bar.position := 0;

end;

procedure Tfrmtransf_dados.BitBtn1Click(Sender: TObject);
begin
  wwregiao.Open;
  wwregiao.First;
  zregiao.open;

  while not wwregiao.eof do
  begin
    zregiao.Insert;

    zregiao.fieldvalues ['CODIGO;REGIAO'] :=
    wwregiao.fieldvalues['CODIGO;REGIAO'];

    zregiao.Post;
    wwregiao.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn2Click(Sender: TObject);
begin
  wwgrupo.Open;
  wwgrupo.First;
  zgrupo.open;

  while not wwgrupo.eof do
  begin
    zgrupo.Insert;
    zgrupo.fieldvalues ['CODIGO;GRUPO'] :=
    wwgrupo.fieldvalues['CODIGO;GRUPO'];

    zgrupo.Post;
    wwgrupo.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn4Click(Sender: TObject);
begin
  wwcondpgto.Open;
  wwcondpgto.First;
  zcondpgto.open;

  while not wwcondpgto.eof do
  begin
    zcondpgto.Insert;

    zcondpgto.fieldvalues ['CODIGO;CONDPGTO;PARCELAS'] :=
    wwcondpgto.fieldvalues['CODIGO;CONDPGTO;PARCELAS'];

    zcondpgto.Post;
    wwcondpgto.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn5Click(Sender: TObject);
begin
  wwcondpgtoparcela.Open;
  wwcondpgtoparcela.First;
  zcondpgtoparcela.open;

  while not wwcondpgtoparcela.eof do
  begin
    zcondpgtoparcela.Insert;

    zcondpgtoparcela.fieldvalues ['CODIGO;CODCONDPGTO;NUMERO;DIAS;PERCENTUAL;JUROS'] :=
    wwcondpgtoparcela.fieldvalues['CODIGO;CODCONDPGTO;PARCELA;DIAS;PERCENTUAL;JURO'];

    zcondpgtoparcela.Post;
    wwcondpgtoparcela.Next;
  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn6Click(Sender: TObject);
begin
  wwsubgrupo.Open;
  wwsubgrupo.First;
  zsubgrupo.open;

  while not wwsubgrupo.eof do
  begin

    zsubgrupo.Insert;
    zsubgrupo.fieldvalues ['CODIGO;CODGRUPO;SUBGRUPO'] :=
    wwsubgrupo.fieldvalues['CODIGO;CODGRUPO;SUBGRUPO'];
    zsubgrupo.Post;
    wwsubgrupo.Next;

  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn8Click(Sender: TObject);
begin
  wwproduto.Open;
  wwproduto.First;
  zproduto.open;

  while not wwproduto.eof do
  begin
    zproduto.Insert;
    zproduto.fieldvalues ['CODIGO;CODBARRA;PRODUTO;UNIDADE;DATA_CADASTRO;CODGRUPO;CODSUBGRUPO;CODFORNECEDOR;CODMARCA;NOTAFISCAL;PRECOCUSTO;PRECOVENDA;DATA_ULTIMAVENDA'] :=
    wwproduto.fieldvalues['CODIGO;referencia;PRODUTO;EMBALAGEM;DATA;CODGRUPO;CODSUBGRUPO;CODFORNECEDOR;CODMARCA;NOTAFISCAL;PRECOCUSTO;PRECOVENDA;ULTIMAVENDA'];

    zproduto.fieldvalues ['ESTOQUE;ESTOQUEMINIMO;CODALIQUOTA;COMISSAO;USA_BALANCA;CODRECEITA'] :=
    wwproduto.fieldvalues['ESTOQUE;ESTOQUEMINIMO;ALIQUOTA;COMISSAO;BALANCA;CODRECEITA'];

    zproduto.Post;
    wwproduto.Next;

  end;

  zproduto.First;
  while not zproduto.eof do
  begin
    zproduto.edit;
    zproduto.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(zproduto.fieldbyname('codigo').asstring,6);
    zproduto.FieldByName('codgrupo').asstring := frmprincipal.zerarcodigo(zproduto.fieldbyname('codgrupo').asstring,6);
    zproduto.FieldByName('codsubgrupo').asstring := frmprincipal.zerarcodigo(zproduto.fieldbyname('codsubgrupo').asstring,6);
    zproduto.FieldByName('codmarca').asstring := frmprincipal.zerarcodigo(zproduto.fieldbyname('codmarca').asstring,6);
    zproduto.FieldByName('codfornecedor').asstring := frmprincipal.zerarcodigo(zproduto.fieldbyname('codfornecedor').asstring,6);
    zproduto.post;
    zproduto.next;
  end;


  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn9Click(Sender: TObject);
begin
  wwcheques.Open;
  wwcheques.First;
  zcheques.open;

  while not wwcheques.eof do
  begin

    zcheques.Insert;
    zcheques.fieldvalues ['CODIGO;VENCIMENTO;SITUACAO;CODCLIENTE;TITULAR;CODBANCO;AGENCIA;CONTA;NUMERO;VALOR;'] :=
    wwcheques.fieldvalues['CODIGO;VENCIMENTO;T;CODCLIENTE;CLIENTE;BANCO;AGENCIA;CONTA;CHEQUE;VALOR'];
    zcheques.Post;
    wwcheques.Next;

  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn10Click(Sender: TObject);
begin
  wwCPAGAR.Open;
  wwCPAGAR.First;
  zcPAGAR.open;

  while not wwCPAGAR.eof do
  begin

    zCPAGAR.Insert;
    zcPAGAR.fieldvalues ['CODIGO;DATA_EMISSAO;DATA_VENCIMENTO;DATA_PAGAMENTO;CODCONTA;CODFORNECEDOR;VALOR;VALORPAGO;HISTORICO;SITUACAO;CODNOTA'] :=
    wwcPAGAR.fieldvalues['CODIGO;EMISSAO;VENCIMENTO;PGTO;CODCONTA;CODFORNECEDOR;VALOR;VALORPAGO;HISTORICO;SITUACAO;NOTAFISCAL'];
    zcPAGAR.Post;
    wwcPAGAR.Next;

  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn11Click(Sender: TObject);
begin
  wwNOTASVENDAS.Open;
  wwNOTASVENDAS.First;
  zNOTASVENDAS.open;

  while not wwNOTASVENDAS.eof do
  begin

    zNOTASVENDAS.Insert;
    zNOTASVENDAS.fieldvalues ['CODIGO;CODVENDEDOR;DATA;MEIO_DINHEIRO;TOTAL;CODCLIENTE'] :=
    wwNOTASVENDAS.fieldvalues['CODIGO;CODVENDEDOR;DATA;VALORTOTAL;VALORTOTAL;CODCLIENTE'];
    zNOTASVENDAS.Post;
    wwNOTASVENDAS.Next;

  end;
  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');

end;

procedure Tfrmtransf_dados.BitBtn3Click(Sender: TObject);
begin
try


  if application.messagebox('Confirma todas as alterações?','Aviso',mb_yesno+mb_iconquestion)  = idyes then
  begin
    ZConnection1.Commit;
  end
  else
  begin
    ZConnection1.Rollback;
    showmessage('Cancelado!');
  end;
  except
  end;

  close;
end;

procedure Tfrmtransf_dados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin




  action := cafree;
end;

procedure Tfrmtransf_dados.BitBtn7Click(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.Add('select * from '+edit1.text);
  query1.open;
  bar.position := 0;
  bar.Max := query1.RecordCount;

  query1.first;
  while not query1.eof do
  begin
    query1.edit;
    query1.fieldbyname(edit2.text).asstring := frmprincipal.zerarcodigo(query1.fieldbyname(edit2.text).AsString,edit3.value);
    query1.post;

    Memo1.Lines.Add(query1.fieldbyname(edit2.text).asstring);

    query1.next;
    bar.position := bar.position + 1;
  end;

  showmessage('Pronto!');
  bar.position := 0;
end;

procedure Tfrmtransf_dados.BitBtn12Click(Sender: TObject);
begin
  wwbarra.Open;
  wwbarra.First;
  zbarra.open;

  while not wwbarra.eof do
  begin

    zbarra.Insert;
    zbarra.fieldvalues ['CODIGO;CODPRODUTO;CODBARRA'] :=
    wwbarra.fieldvalues['CODIGO;CODPRODUTO;CODBARRA'];
    zbarra.Post;
    wwbarra.Next;
  end;
  zbarra.First;
  while not zbarra.eof do
  begin
    zbarra.edit;
    zbarra.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(zbarra.fieldbyname('codigo').asstring,6);
    zbarra.FieldByName('codPRODUTO').asstring := frmprincipal.zerarcodigo(zbarra.fieldbyname('codPRODUTO').asstring,6);

    zbarra.post;
        zbarra.next;
  end;

  ShowMessage('PROCESSAMENTO CONCLUÍDO !!!');
end;

procedure Tfrmtransf_dados.BitBtn13Click(Sender: TObject);
var qtde, codigo : integer;
begin
  qtde := strtoint(inputbox('Quantidade','Informe a Quantidade','0'));
  codigo := strtoint(inputbox('Quantidade','Informe o Código Inicial','1'));
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025');
  frmmodulo.qrproduto.open;


  while qtde <> 0 do
  begin
    frmmodulo.qrproduto.insert;
    frmmodulo.qrproduto.FIELDBYNAME('CODIGO').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(CODIGO),6);
    FRMMODULO.QRPRODUTO.FIELDBYNAME('CODFORNECEDOR').ASSTRING := '000999';
    FRMMODULO.QRPRODUTO.FIELDBYNAME('CODGRUPO').ASSTRING := '000001';
    FRMMODULO.QRPrOdUTO.POST;
    CODIGO := CODIGO + 1;
    qtde := qtde - 1;
  end;
  FRMMODULO.Conexao.Commit;
  SHOWMESSAGE('Pronto!');



end;

procedure Tfrmtransf_dados.BitBtn14Click(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.Add('select * from '+edit4.text);
  query1.open;
  query1.first;
  while not query1.eof do
  begin
    query1.edit;
    query1.fieldbyname(edit7.text).asstring :=
    query1.fieldbyname(edit6.text).asstring +' '+
    query1.fieldbyname(edit5.text).asstring;
    query1.post;
    query1.next;
  end;

  showmessage('Pronto!');
end;

procedure Tfrmtransf_dados.BitBtn15Click(Sender: TObject);
var i : integer;
begin
  if application.messagebox('Tem certeza que deseja realmente limpar o banco de dados?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    frmmodulo.Conexao.Connected := false;
    conexao.Connected := false;
    conexao.HostName := frmmodulo.Conexao.HostName;
    conexao.Database := frmmodulo.Conexao.Database;
    conexao.Connected := true;
    for i := 1 to 100 do
    begin
      if (i = 1) or (i = 2) or (i = 3) or (i = 35) then
      begin
        //
      end
      else
      begin
        try
        query.close;
        query.sql.clear;
        query.Sql.add('delete from c'+frmprincipal.texto_justifica(inttostr(i),6,'0','E'));
        query.ExecSQL;
        except
        end;
      end;
    end;
    query.close;
    query.sql.clear;
    query.sql.add('update c000000 set sequencia = 1 where codigo not in (''000001'',''000002'',''000003'',''000035'')');
    query.ExecSQL;
    conexao.Commit;
    frmmodulo.Conexao.Connected := true;




  end;
end;

procedure Tfrmtransf_dados.BitBtn16Click(Sender: TObject);
begin
  qrnova.close;
  qrnova.sql.clear;
  qrnova.sql.add('select * from c000021');
  qrnova.open;

  cpgrade.open;
  cpgrade.first;
  while not cpgrade.eof do
  begin
    qrnova.insert;
    qrnova.fieldbyname('codigo').asstring := frmprincipal.zerarcodigo(cpgrade.fieldbyname('codigo').asstring,6);
    qrnova.FieldByName('codproduto').AsString := frmprincipal.zerarcodigo(cpgrade.fieldbyname('codproduto').asstring,6);
    qrnova.fieldbyname('numeracao').asstring := cpgrade.fieldbyname('numercao').asstring;
    qrnova.fieldbyname('ESTOQUE').asstring := cpgrade.fieldbyname('ESTOQUE').asstring;
    QRNOVA.POST;
    cpgrade.next;
  end;
end;

procedure Tfrmtransf_dados.BitBtn17Click(Sender: TObject);
begin

  qrnova.close;
  qrnova.sql.clear;
  qrnova.sql.add('select * from c000020');
  qrnova.open;


  cpnumero.open;
  cpnumero.first;
  while not cpnumero.eof do
  begin
    qrNOVA.insert;
    qrNOVA.fieldbyname('codigo').asstring := frmprincipal.zerarcodigo(CPNUMERO.fieldbyname('codigo').asstring,6);
    qrNOVA.FieldByName('codSUBGRUPO').AsString := frmprincipal.zerarcodigo(CPNUMERO.fieldbyname('codSUBGRUPO').asstring,6);
    qrNOVA.fieldbyname('numeracao').asstring := CPNUMERO.fieldbyname('numercao').asstring;
    QRNOVA.POST;

    cpnumero.next;
  end;
end;

procedure Tfrmtransf_dados.BitBtn18Click(Sender: TObject);
var datas : tdate;
begin
  try
    datas := strtodate(dateedit1.Text);
  except
    Showmessage('Favor informar uma data válida!');
    dateedit1.setfocus;
    exit;
  end;


  if application.messagebox('Tem certeza que deseja continuar com a limpeza dos dados?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    if rcaixa.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000044 where data <= :datax');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rreceber.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000049 where data_vencimento <= :datax and situacao = 2');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rcaixa.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000048 where data <= :datax');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rproduto.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000032 where data <= :datax and ecf_caixa = '''' and ecf_serie = '''' and cupom_modelo = ''2D''');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000032 where data <= :datax and ecf_caixa is null and ecf_serie is null and cupom_modelo = ''2D''');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;



  end;

end;

procedure Tfrmtransf_dados.Button11Click(Sender: TObject);
begin
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000088 where codigo is null or codigo = ''''');
  query2.open;
  query2.last;

  showmessage('Quantidade de Registros: '+inttostr(query2.recordcount));
  query2.first;
  while not query2.eof do
  begin
    query2.edit;
    query2.fieldbyname('codigo').asstring := frmPrincipal.codifica('000032');
    query2.post;

    button11.caption := query2.fieldbyname('codigo').asstring;
    application.ProcessMessages;
    query2.next;
  end;
  button11.caption := 'Pronto!';
end;

procedure Tfrmtransf_dados.Button12Click(Sender: TObject);
begin
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000062 where codigo is null or codigo = ''''');
  query2.open;
  query2.last;

  showmessage('Quantidade de Registros: '+inttostr(query2.recordcount));
  query2.first;
  while not query2.eof do
  begin
    query2.edit;
    query2.fieldbyname('codigo').asstring := frmPrincipal.codifica('000032');
    query2.post;

    button11.caption := query2.fieldbyname('codigo').asstring;
    application.ProcessMessages;
    query2.next;
  end;
  button11.caption := 'Pronto!';
end;

procedure Tfrmtransf_dados.Button13Click(Sender: TObject);
begin
  ps.Position := 0;
  ps.Step := 1;


  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000025 order by codigo');
  query2.open;
  query2.First;
  query2.last;
  ps.max := query2.RecordCount;
  query2.first;

  while not query2.eof do
  begin
    query3.close;
    query3.sql.clear;
    query3.sql.add('select sum(movimento_estoque) saida from c000032');
    query3.SQL.add('where movimento_estoque < 0 and codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query3.Open;

    query4.close;
    query4.sql.clear;
    query4.sql.add('select sum(movimento_estoque) entrada from c000032');
    query4.SQL.add('where movimento_estoque > 0 and codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query4.Open;


    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from c000100 where codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query5.Open;

    if query5.RecordCount > 0 then
    begin
      query5.edit;
      query5.fieldbyname('estoque_inicial').asfloat := query2.fieldbyname('estoque').asfloat;
      query5.fieldbyname('entradas').asfloat := query4.fieldbyname('entrada').asfloat;
      query5.FieldByName('saidas').asfloat := query3.fieldbyname('saida').asfloat * (-1);
      query5.fieldbyname('estoque_atual').asfloat := query5.fieldbyname('estoque_inicial').asfloat +
                                                     query5.fieldbyname('entradas').asfloat -
                                                     query5.fieldbyname('saidas').asfloat;
      query5.post;

    end
    else
    begin
      query5.insert;
      query5.fieldbyname('codproduto').asstring := query2.fieldbyname('codigo').asstring;
      query5.fieldbyname('estoque_inicial').asfloat := query2.fieldbyname('estoque').asfloat;
      query5.fieldbyname('entradas').asfloat := query4.fieldbyname('entrada').asfloat;
      query5.FieldByName('saidas').asfloat := query3.fieldbyname('saida').asfloat * (-1);
      query5.fieldbyname('estoque_atual').asfloat := query5.fieldbyname('estoque_inicial').asfloat +
                                                     query5.fieldbyname('entradas').asfloat -
                                                     query5.fieldbyname('saidas').asfloat;
      query5.post;

    end;

    query2.next;
    ps.StepIt;
    Application.ProcessMessages;
  end;
  showmessage('Pronto!');


end;

procedure Tfrmtransf_dados.BitBtn19Click(Sender: TObject);
VAR
  cod : integer;
begin
{
  query2.close;
  query2.sql.clear;
  query2.sql.add('update c000032 set codigo = ''''');
  query2.ExecSQL;
}

  query10.close;
  query10.sql.clear;
  query10.sql.add('select * from c000032');
  query10.sql.add('where numeronota = ''007061''');
  query10.open;

  bar.Max := query10.recordcount;
  bar.Position := 0;
  cod := 0;

  query10.first;
  while not query10.eof do
  begin
    cod := cod + 1;
    query10.edit;
    query10.fieldbyname('codigo').asstring := frmPrincipal.zerarcodigo(inttostr(cod),6);
    query10.post;
    query10.next;
    bar.Position := bar.Position + 1;
  end;
  FRMMODULO.Conexao.Commit;
  bar.Position := 0;
end;

end.

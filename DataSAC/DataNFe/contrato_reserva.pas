unit contrato_reserva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, DB, MemDS, VirtualTable,
  frxDesgn, frxClass, frxDBSet, DBAccess, IBC, Grids, DBGrids, DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmContrato_reserva = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ed_produto: TEdit;
    ed_test1_nome: TEdit;
    ed_test2_nome: TEdit;
    ed_test1_cpf: TEdit;
    ed_test2_cpf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    BT_IMPRIMIR: TBitBtn;
    BT_FECHAR: TBitBtn;
    fxcontrato: TfrxReport;
    fscontrato: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    qrcontrato: TClientDataSet;
    qrcontratoEmpresa_Nome: TStringField;
    qrcontratoEmpresa_Cidade: TStringField;
    qrcontratoEmpresa_Endereco: TStringField;
    qrcontratoEmpresa_Bairro: TStringField;
    qrcontratoEmpresa_CEP: TStringField;
    qrcontratoEmpresa_CNPJ: TStringField;
    qrcontratoEmpresa_IE: TStringField;
    qrcontratoresp1_nome: TStringField;
    qrcontratoresp1_nacionalidade: TStringField;
    qrcontratoresp1_est_civil: TStringField;
    qrcontratoresp1_profissao: TStringField;
    qrcontratoresp1_rg: TStringField;
    qrcontratoresp1_cpf: TStringField;
    qrcontratoresp1_endereco: TStringField;
    qrcontratoresp1_bairro: TStringField;
    qrcontratoresp1_cidade: TStringField;
    qrcontratoresp1_uf: TStringField;
    qrcontratoresp1_cep: TStringField;
    qrcontratoresp2_nome: TStringField;
    qrcontratoresp2_nacionalidade: TStringField;
    qrcontratoresp2_est_civil: TStringField;
    qrcontratoresp2_profissao: TStringField;
    qrcontratoresp2_rg: TStringField;
    qrcontratoresp2_cpf: TStringField;
    qrcontratoresp2_endereco: TStringField;
    qrcontratoresp2_bairro: TStringField;
    qrcontratoresp2_cidade: TStringField;
    qrcontratoresp2_uf: TStringField;
    qrcontratoresp2_cep: TStringField;
    qrcontratocliente_nome: TStringField;
    qrcontratocliente_est_civil: TStringField;
    qrcontratocliente_profissao: TStringField;
    qrcontratocliente_endereco: TStringField;
    qrcontratocliente_estado: TStringField;
    qrcontratocliente_bairro: TStringField;
    qrcontratocliente_cep: TStringField;
    qrcontratoproduto_descricao: TStringField;
    qrcontratoproduto_valor: TStringField;
    qrcontratoproduto_valor_extenso: TStringField;
    qrcontratoprestacao_qtde: TStringField;
    qrcontratoprestacao_valor: TStringField;
    qrcontratoprestacao_valor_extenso: TStringField;
    qrcontratotestemunha1: TStringField;
    qrcontratotestemunha2: TStringField;
    qrcliente: TZQuery;
    qrProduto: TZQuery;
    qrPrestacao: TZQuery;
    qrvenda: TZQuery;
    memo_produto: TMemo;
    qrcontratoEMPRESA_UF: TStringField;
    qrcontratoproduto_itens: TMemoField;
    qrcontratocliente_cidade: TStringField;
    qrcontratocliente_rg: TStringField;
    qrcontratocliente_cpf: TStringField;
    qrcontratodata: TStringField;
    qrcontratoprestacao_dia: TStringField;
    BitBtn1: TBitBtn;
    qrcontrator1_nome: TStringField;
    qrcontrator1_cpf: TStringField;
    qrcontrator1_rg: TStringField;
    qrcontrator1_endereco: TStringField;
    qrcontrator1_bairro: TStringField;
    qrcontrator1_cidade: TStringField;
    qrcontrator1_uf: TStringField;
    qrcontrator1_cep: TStringField;
    qrcontrator1_estado_civil: TStringField;
    qrcontrator1_profissao: TStringField;
    qrcontrator2_nome: TStringField;
    qrcontrator2_cpf: TStringField;
    qrcontrator2_rg: TStringField;
    qrcontrator2_endereco: TStringField;
    qrcontrator2_bairro: TStringField;
    qrcontrator2_cidade: TStringField;
    qrcontrator2_uf: TStringField;
    qrcontrator2_cep: TStringField;
    qrcontrator2_estado_civil: TStringField;
    qrcontrator2_profissao: TStringField;
    GroupBox3: TGroupBox;
    ed_nf: TEdit;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    qrcontratodoc_fiscal: TStringField;
    procedure BT_FECHARClick(Sender: TObject);
    procedure ed_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure BT_IMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_nfKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function retorna_estado(uf:string):string;
  public
    { Public declarations }
  end;

var
  frmContrato_reserva: TfrmContrato_reserva;
  arquivo_ini : tinifile;

implementation

uses modulo, extenso1;

{$R *.dfm}
function Tfrmcontrato_reserva.retorna_estado(uf:string):string;
begin
  uf := AnsiUpperCase(uf);
  if uf = 'SP' then result := 'São Paulo';
  if uf = 'MG' then result := 'Minas Gerais';
  if uf = 'RJ' then result := 'Rio de Janeiro';
  if uf = 'RS' then result := 'Rio Grande do Sul';
  if uf = 'SC' then result := 'Santa Catarina';
  if uf = 'PR' then result := 'Paraná';
  if uf = 'ES' then result := 'Espírito Santo';
  if uf = 'DF' then result := 'Distrito Federal';
  if uf = 'MT' then result := 'Mato Grosso';
  if uf = 'MS' then result := 'Mato Grosso do Sul';
  if uf = 'GO' then result := 'Goiás';
  if uf = 'TO' then result := 'Tocantins';
  if uf = 'BA' then result := 'Bahia';
  if uf = 'SE' then result := 'Sergipe';
  if uf = 'AL' then result := 'Alagoas';
  if uf = 'PB' then result := 'Paraíba';
  if uf = 'PE' then result := 'Pernambuco';
  if uf = 'MA' then result := 'Maranhão';
  if uf = 'RN' then result := 'Rio Grande do Norte';
  if uf = 'CE' then result := 'Ceará';
  if uf = 'PI' then result := 'Piauí';
  if uf = 'PA' then result := 'Pará';
  if uf = 'AM' then result := 'Amazonas';
  if uf = 'AP' then result := 'Amapá';
  if uf = 'AC' then result := 'Acre';
  if uf = 'RR' then result := 'Roraima';
  if uf = 'RO' then result := 'Rondonia';
  if uf = 'EX' then result := 'Exterior';
  if uf = '' then result := '';

end;

procedure TfrmContrato_reserva.BT_FECHARClick(Sender: TObject);
begin
  close;
end;

procedure TfrmContrato_reserva.ed_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmContrato_reserva.BT_IMPRIMIRClick(Sender: TObject);
begin
  qrcontrato.Open;
  qrcontrato.Refresh;
  qrcontrato.Insert;
  // empresa
  frmmodulo.qremitente.open;

  qrcontrato.fieldbyname('Empresa_Nome').AsString := frmmodulo.qremitente.fieldbyname('nome').asstring;
  qrcontrato.fieldbyname('Empresa_Cidade').AsString := frmmodulo.qremitente.fieldbyname('cidade').asstring;
  qrcontrato.fieldbyname('Empresa_Endereco').AsString := frmmodulo.qremitente.fieldbyname('endereco').asstring;
  qrcontrato.fieldbyname('Empresa_Bairro').AsString := frmmodulo.qremitente.fieldbyname('bairro').asstring;
  qrcontrato.fieldbyname('Empresa_CEP').AsString := frmmodulo.qremitente.fieldbyname('cep').asstring;
  qrcontrato.fieldbyname('Empresa_CNPJ').AsString := frmmodulo.qremitente.fieldbyname('cnpj').asstring;
  qrcontrato.fieldbyname('Empresa_IE').AsString := frmmodulo.qremitente.fieldbyname('ie').asstring;
  qrcontrato.fieldbyname('Empresa_UF').AsString := retorna_estado(frmmodulo.qremitente.fieldbyname('UF').asstring);
  // responsavel 1
  qrcontrato.fieldbyname('resp1_nome').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','NOME','');
  qrcontrato.fieldbyname('resp1_nacionalidade').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','NACIONALIDADE','');
  qrcontrato.fieldbyname('resp1_est_civil').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','ESTADO_CIVIL','');
  qrcontrato.fieldbyname('resp1_profissao').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','PROFISSAO','');
  qrcontrato.fieldbyname('resp1_rg').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','RG','');
  qrcontrato.fieldbyname('resp1_cpf').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','CPF','');
  qrcontrato.fieldbyname('resp1_endereco').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','ENDERECO','');
  qrcontrato.fieldbyname('resp1_bairro').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','BAIRRO','');
  qrcontrato.fieldbyname('resp1_cidade').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','CIDADE','');
  qrcontrato.fieldbyname('resp1_uf').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','UF','');
  qrcontrato.fieldbyname('resp1_cep').AsString := arquivo_ini.ReadString('RESPONSAVEL_1','CEP','');
  // responsavel 2
  qrcontrato.fieldbyname('resp2_nome').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','NOME','');
  qrcontrato.fieldbyname('resp2_nacionalidade').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','NACIONALIDADE','');
  qrcontrato.fieldbyname('resp2_est_civil').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','ESTADO_CIVIL','');
  qrcontrato.fieldbyname('resp2_profissao').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','PROFISSAO','');
  qrcontrato.fieldbyname('resp2_rg').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','RG','');
  qrcontrato.fieldbyname('resp2_cpf').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','CPF','');
  qrcontrato.fieldbyname('resp2_endereco').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','ENDERECO','');
  qrcontrato.fieldbyname('resp2_bairro').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','BAIRRO','');
  qrcontrato.fieldbyname('resp2_cidade').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','CIDADE','');
  qrcontrato.fieldbyname('resp2_uf').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','UF','');
  qrcontrato.fieldbyname('resp2_cep').AsString := arquivo_ini.ReadString('RESPONSAVEL_2','CEP','');
  // cliente
  qrcontrato.fieldbyname('cliente_nome').ASSTRING := qrcliente.fieldbyname('nome').asstring;
  qrcontrato.fieldbyname('cliente_est_civil').ASSTRING := qrcliente.fieldbyname('ESTADOCIVIL').asstring;
  qrcontrato.fieldbyname('cliente_profissao').ASSTRING := qrcliente.fieldbyname('PROFISSAO').asstring;
  qrcontrato.fieldbyname('cliente_endereco').ASSTRING := qrcliente.fieldbyname('endereco').asstring;
  qrcontrato.fieldbyname('cliente_estado').ASSTRING := retorna_estado( qrcliente.fieldbyname('uf').asstring);
  qrcontrato.fieldbyname('cliente_bairro').ASSTRING := qrcliente.fieldbyname('bairro').asstring;
  qrcontrato.fieldbyname('cliente_cep').ASSTRING := qrcliente.fieldbyname('cep').asstring;

  qrcontrato.fieldbyname('cliente_cidade').ASSTRING := qrcliente.fieldbyname('cidade').asstring;
  qrcontrato.fieldbyname('cliente_rg').ASSTRING := qrcliente.fieldbyname('rg').asstring;
  qrcontrato.fieldbyname('cliente_cpf').ASSTRING := qrcliente.fieldbyname('cpf').asstring;

  // responsaveis - cliente (pessoa juridica)
  qrcontrato.fieldbyname('r1_nome').ASSTRING := qrcliente.fieldbyname('resp1_nome').asstring;
  qrcontrato.fieldbyname('r1_endereco').ASSTRING := qrcliente.fieldbyname('resp1_endereco').asstring;
  qrcontrato.fieldbyname('r1_bairro').ASSTRING := qrcliente.fieldbyname('resp1_bairro').asstring;
  qrcontrato.fieldbyname('r1_cidade').ASSTRING := qrcliente.fieldbyname('resp1_cidade').asstring;
  qrcontrato.fieldbyname('r1_uf').ASSTRING := qrcliente.fieldbyname('resp1_uf').asstring;
  qrcontrato.fieldbyname('r1_cep').ASSTRING := qrcliente.fieldbyname('resp1_cep').asstring;
  qrcontrato.fieldbyname('r1_rg').ASSTRING := qrcliente.fieldbyname('resp1_rg').asstring;
  qrcontrato.fieldbyname('r1_cpf').ASSTRING := qrcliente.fieldbyname('resp1_cpf').asstring;
  qrcontrato.fieldbyname('r1_estado_civil').ASSTRING := qrcliente.fieldbyname('resp1_estado_civil').asstring;
  qrcontrato.fieldbyname('r1_profissao').ASSTRING := qrcliente.fieldbyname('resp1_profissao').asstring;

  qrcontrato.fieldbyname('r2_nome').ASSTRING := qrcliente.fieldbyname('resp2_nome').asstring;
  qrcontrato.fieldbyname('r2_endereco').ASSTRING := qrcliente.fieldbyname('resp2_endereco').asstring;
  qrcontrato.fieldbyname('r2_bairro').ASSTRING := qrcliente.fieldbyname('resp2_bairro').asstring;
  qrcontrato.fieldbyname('r2_cidade').ASSTRING := qrcliente.fieldbyname('resp2_cidade').asstring;
  qrcontrato.fieldbyname('r2_uf').ASSTRING := qrcliente.fieldbyname('resp2_uf').asstring;
  qrcontrato.fieldbyname('r2_cep').ASSTRING := qrcliente.fieldbyname('resp2_cep').asstring;
  qrcontrato.fieldbyname('r2_rg').ASSTRING := qrcliente.fieldbyname('resp2_rg').asstring;
  qrcontrato.fieldbyname('r2_cpf').ASSTRING := qrcliente.fieldbyname('resp2_cpf').asstring;
  qrcontrato.fieldbyname('r2_estado_civil').ASSTRING := qrcliente.fieldbyname('resp2_estado_civil').asstring;
  qrcontrato.fieldbyname('r2_profissao').ASSTRING := qrcliente.fieldbyname('resp2_profissao').asstring;


  // produto
  qrcontrato.fieldbyname('produto_descricao').ASSTRING := ed_produto.text;
  qrcontrato.fieldbyname('produto_itens').Value := memo_produto.Text;
  qrcontrato.fieldbyname('produto_valor').ASSTRING := formatfloat('###,###,##0.00',qrvenda.fieldbyname('total').asfloat);
  qrcontrato.fieldbyname('produto_valor_extenso').ASSTRING := extenso(qrvenda.fieldbyname('total').asfloat);
  // prestacao
  qrcontrato.fieldbyname('prestacao_qtde').ASSTRING :=  inttostr(qrPrestacao.RecordCount);
  qrcontrato.fieldbyname('prestacao_valor').ASSTRING := formatfloat('###,###,##0.00',qrprestacao.fieldbyname('valor_ATUAL').asfloat);
  qrcontrato.fieldbyname('prestacao_valor_extenso').ASSTRING := extenso(qrprestacao.fieldbyname('valor_ATUAL').asfloat);

  qrcontrato.fieldbyname('prestacao_dia').asstring := copy(qrprestacao.fieldbyname('data_vencimento').asstring,1,2);
  // testemunha
  qrcontrato.fieldbyname('testemunha1').ASSTRING := ed_test1_nome.text+' - CPF: '+
                                                    ed_test1_cpf.text;
  qrcontrato.fieldbyname('testemunha2').ASSTRING := ed_test2_nome.text+' - CPF: '+
                                                    ed_test2_cpf.text;

  qrcontrato.fieldbyname('data').asstring := FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);

  qrcontrato.fieldbyname('doc_fiscal').asstring := '';
  if ed_nf.Text <> '' then
  begin
    if radiobutton1.Checked then
    qrcontrato.fieldbyname('doc_fiscal').asstring := ' conforme Nota Fiscal nº '+ed_nf.text
    else
    qrcontrato.fieldbyname('doc_fiscal').asstring := ' conforme Cupom Fiscal nº '+ed_nf.text;
  end;

  qrcontrato.post;


  if qrcliente.fieldbyname('tipo').asinteger = 1 then
  // pessoa fisica
    fxcontrato.LoadFromFile('\DATASAC\server\rel\contrato_reserva.fr3')
  else
  begin
    // pessoa juridica
    if qrcliente.FieldByName('resp2_nome').asstring <> '' then
    // dois responsaveis
      fxcontrato.LoadFromFile('\DATASAC\server\rel\contrato_reserva_j2.fr3')
    else
    // um responsavel
      fxcontrato.LoadFromFile('\DATASAC\server\rel\contrato_reserva_j1.fr3')

  end;
  Fxcontrato.ShowReport;


  close;
end;

procedure TfrmContrato_reserva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmContrato_reserva.FormShow(Sender: TObject);
begin
  arquivo_ini := TIniFile.Create('c:\DATASAC\server\dll\contrato.ini');

  ed_produto.Text := arquivo_ini.ReadString('PRODUTO','NOME','');
  ed_test1_nome.Text := arquivo_ini.ReadString('TESTEMUNHA','NOME1','');
  ed_test2_nome.Text := arquivo_ini.ReadString('TESTEMUNHA','NOME2','');
  ed_test1_CPF.Text := arquivo_ini.ReadString('TESTEMUNHA','CPF1','');
  ed_test2_CPF.Text := arquivo_ini.ReadString('TESTEMUNHA','CPF2','');


  memo_produto.Text := '';

  qrproduto.first;
  while not qrproduto.eof do
  begin
    if memo_produto.text = '' then
      memo_produto.text := qrproduto.fieldbyname('produto').asstring
    else
      memo_produto.text := memo_produto.text +', '+qrproduto.fieldbyname('produto').asstring;
    qrproduto.next;
  end;

  qrPrestacao.Next;

  BT_imprimir.SetFocus;

end;

procedure TfrmContrato_reserva.BitBtn1Click(Sender: TObject);
begin
  fxcontrato.LoadFromFile('\DATASAC\server\rel\contrato_reserva.fr3');
  Fxcontrato.DesignReport;
end;

procedure TfrmContrato_reserva.CheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmContrato_reserva.CheckBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmContrato_reserva.ed_nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.

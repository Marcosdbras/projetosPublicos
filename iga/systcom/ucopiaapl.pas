unit ucopiaapl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls;

type
  Tfrmcopiaapl = class(TForm)
    Bevel1: TBevel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    lblmensagem2: TLabel;
    antmove: TAnimate;
    lblmensagem: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcopiaapl: Tfrmcopiaapl;

implementation
  uses ugeral, udados, uprincipal;
{$R *.dfm}

procedure Tfrmcopiaapl.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcopiaapl.spdconfirmaClick(Sender: TObject);
var
    sdescCuni,
    sdescCgru,
    sdescCmar,
    sdescSGLIMPFIS,
    sdescCTIPO_PROD,
    sdescCODCF,
    sdescCODSITA,
    sdescCODSITB,
    sdescCODIPI,
    sdescCCFOP,
    sdescCPIS,
    sdescCCOFINS,
    sdescCMODBC,
    sdescCIRII,
    sdescCVII,
    sdescCOIMP,
    sdescCMODBCST,
    sdescCTIPOTAB,
    vardir:String;


var
  sValor:string;
begin

if application.MessageBox('Deseja Realmente Copiar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
   exit;
//endi



lblmensagem.Visible := true;
lblmensagem2.Visible := true;

antmove.Visible := true;
antmove.Active := true;
frmcopiaapl.Update;

{


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

}



with frmdados do
  begin

    //Dbx_Dbf.active := false;
    //Dbx_Dbf.Sql.Clear;
    //Dbx_Dbf.sql.Add('Delete from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf'));
    //Dbx_Dbf.ExecSQL;

    Dbx_Dbf.active := false;
    Dbx_Dbf.Sql.Clear;
    Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf'));
    Dbx_Dbf.active := true;

    try
    Cds_vProdutos.Active := false;
    with  Dbx_vProdutos do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vProdutos');
        Active := true;
      end;
    //endth
    Cds_vProdutos.Active := true;
    //showmessage( inttostr(Cds_vProdutos.recordcount) );

    except
    end;

    try
    cds_vProdutos.First;
    while not cds_vProdutos.Eof do
      begin

        cds_unidade.Active := false;
        dbx_unidade.Active := false;
        dbx_unidade.SQL.Clear;
        dbx_unidade.SQL.Add('Select * from unidade where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CUNI').asInteger ) );
        dbx_unidade.Active := true;
        cds_unidade.Active := true;
        sdescCUNI := cds_unidade.fieldbyname('descricao').asString;

        cds_grupo.Active := false;
        dbx_grupo.Active := false;
        dbx_grupo.SQL.Clear;
        dbx_grupo.SQL.Add('Select * from grupo where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CGRU').asInteger ) );
        dbx_grupo.Active := true;
        cds_grupo.Active := true;
        sdescCgru := cds_grupo.fieldbyname('descricao').asString;

        cds_marca.Active := false;
        dbx_marca.Active := false;
        dbx_marca.SQL.Clear;
        dbx_marca.SQL.Add('Select * from marca where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CMAR').asInteger ) );
        dbx_marca.Active := true;
        cds_marca.Active := true;
        sdescCmar := cds_marca.fieldbyname('descricao').asString;

        cds_aliqimpfis.Active := false;
        dbx_aliqimpfis.Active := false;
        dbx_aliqimpfis.SQL.Clear;
        dbx_aliqimpfis.SQL.Add('Select * from aliqimpfis where codigo = '+ inttostr( cds_vprodutos.fieldbyname('SGLIMPFIS').asInteger ) );
        dbx_aliqimpfis.Active := true;
        cds_aliqimpfis.Active := true;
        sdescSGLIMPFIS := cds_aliqimpfis.fieldbyname('sigla').asString;

        cds_tipo_prod.Active := false;
        dbx_tipo_prod.Active := false;
        dbx_tipo_prod.SQL.Clear;
        dbx_tipo_prod.SQL.Add('Select * from tipo_produto where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CTIPO_PROD').asInteger ) );
        dbx_tipo_prod.Active := true;
        cds_tipo_prod.Active := true;
        sdescCTIPO_PROD := cds_tipo_prod.fieldbyname('descricao').asString;

        cds_cf.Active := false;
        dbx_cf.Active := false;
        dbx_cf.SQL.Clear;
        dbx_cf.SQL.Add('Select * from cf where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CODCF').asInteger ) );
        dbx_cf.Active := true;
        cds_cf.Active := true;
        sdescCODCF := cds_cf.fieldbyname('sigla').asString;

        cds_sita.Active := false;
        dbx_sita.Active := false;
        dbx_sita.SQL.Clear;
        dbx_sita.SQL.Add('Select * from sita where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CODSITA').asInteger ) );
        dbx_sita.Active := true;
        cds_sita.Active := true;
        sdescCODSITA := cds_sita.fieldbyname('sigla').asString;

        cds_sitb.Active := false;
        dbx_sitb.Active := false;
        dbx_sitb.SQL.Clear;
        dbx_sitb.SQL.Add('Select * from sitb where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CODSITB').asInteger ) );
        dbx_sitb.Active := true;
        cds_sitb.Active := true;
        sdescCODSITB := cds_sitb.fieldbyname('sigla').asString;

        cds_ipi.Active := false;
        dbx_ipi.Active := false;
        dbx_ipi.SQL.Clear;
        dbx_ipi.SQL.Add('Select * from ipi where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CODIPI').asInteger ) );
        dbx_ipi.Active := true;
        cds_ipi.Active := true;
        sdescCODIPI := cds_ipi.fieldbyname('sigla').asString;

        cds_natop.Active := false;
        dbx_natop.Active := false;
        dbx_natop.SQL.Clear;
        dbx_natop.SQL.Add('Select * from natop where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CCFOP').asInteger ) );
        dbx_natop.Active := true;
        cds_natop.Active := true;
        sdescCCFOP := cds_natop.fieldbyname('cfop').asString;

        cds_pis.Active := false;
        dbx_pis.Active := false;
        dbx_pis.SQL.Clear;
        dbx_pis.SQL.Add('Select * from pis where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CPIS').asInteger ) );
        dbx_pis.Active := true;
        cds_pis.Active := true;
        sdescCPIS := cds_pis.fieldbyname('sigla').asString;

        cds_cofins.Active := false;
        dbx_cofins.Active := false;
        dbx_cofins.SQL.Clear;
        dbx_cofins.SQL.Add('Select * from cofins where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CCOFINS').asInteger ) );
        dbx_cofins.Active := true;
        cds_cofins.Active := true;
        sdescCCOFINS := cds_cofins.fieldbyname('sigla').asString;

        cds_modbc.Active := false;
        dbx_modbc.Active := false;
        dbx_modbc.SQL.Clear;
        dbx_modbc.SQL.Add('Select * from modbc where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CMODBC').asInteger ) );
        dbx_modbc.Active := true;
        cds_modbc.Active := true;
        sdescCMODBC := cds_modbc.fieldbyname('sigla').asString;

        cds_ir_ii.Active := false;
        dbx_ir_ii.Active := false;
        dbx_ir_ii.SQL.Clear;
        dbx_ir_ii.SQL.Add('Select * from ir_ii where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CIRII').asInteger ) );
        dbx_ir_ii.Active := true;
        cds_ir_ii.Active := true;
        sdescCIRII := cds_ir_ii.fieldbyname('sigla').asString;

        cds_vii.Active := false;
        dbx_vii.Active := false;
        dbx_vii.SQL.Clear;
        dbx_vii.SQL.Add('Select * from vii where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CVII').asInteger ) );
        dbx_vii.Active := true;
        cds_vii.Active := true;
        sdescCVII := cds_vii.fieldbyname('sigla').asString;

        cds_oimp.Active := false;
        dbx_oimp.Active := false;
        dbx_oimp.SQL.Clear;
        dbx_oimp.SQL.Add('Select * from oimp where codigo = '+ inttostr( cds_vprodutos.fieldbyname('COIMP').asInteger ) );
        dbx_oimp.Active := true;
        cds_oimp.Active := true;
        sdescCOIMP := cds_oimp.fieldbyname('sigla').asString;

        cds_modbcst.Active := false;
        dbx_modbcst.Active := false;
        dbx_modbcst.SQL.Clear;
        dbx_modbcst.SQL.Add('Select * from modbcst where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CMODBCST').asInteger ) );
        dbx_modbcst.Active := true;
        cds_modbcst.Active := true;
        sdescCMODBCST := cds_modbcst.fieldbyname('sigla').asString;

        cds_tipotab.Active := false;
        dbx_tipotab.Active := false;
        dbx_tipotab.SQL.Clear;
        dbx_tipotab.SQL.Add('Select * from tipotab where codigo = '+ inttostr( cds_vprodutos.fieldbyname('CTIPOTAB').asInteger ) );
        dbx_tipotab.Active := true;
        cds_tipotab.Active := true;
        sdescCTIPOTAB := cds_tipotab.fieldbyname('descricao').asString;
        
        Dbx_dbf.active := false;
        Dbx_dbf.Sql.Clear;
        Dbx_dbf.sql.Add('Select * from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf')+' Where codigo = '+inttostr(cds_vProdutos.FieldByName('codigo').asInteger));
        showmessage(Dbx_Dbf.sql.text);

        Dbx_Dbf.active := true;
        if Dbx_dbf.recordcount = 0 then
           begin
             Dbx_Dbf.Append;
             Dbx_Dbf.FieldByName('codigo').asString           := cds_vProdutos.FieldByName('codigo').asString;
             Dbx_Dbf.FieldByName('descricao').asString        := cds_vProdutos.FieldByName('descricao').asString;
             Dbx_Dbf.FieldByName('qtd_atual').asfloat         := cds_vProdutos.FieldByName('qua').asfloat;
             Dbx_Dbf.FieldByName('obs').asString              := '';
             Dbx_Dbf.FieldByName('custocompr').asfloat        := cds_vProdutos.FieldByName('prcubs').asfloat;
             Dbx_Dbf.FieldByName('margemlb').asfloat          := cds_vProdutos.FieldByName('per').asfloat;
             Dbx_Dbf.FieldByName('preco').asfloat             := cds_vProdutos.FieldByName('prve').asfloat;
             Dbx_Dbf.FieldByName('referencia').asString       := cds_vProdutos.FieldByName('cbar').asString;
             Dbx_Dbf.FieldByName('ncm').asString              := cds_vProdutos.FieldByName('ncm').asString;
             Dbx_Dbf.FieldByName('csosn').asString            := cds_vProdutos.FieldByName('csosn').asString;
             Dbx_Dbf.FieldByName('cf').asString               :=  sdescCODCF;
             Dbx_Dbf.FieldByName('ipi').asString              :=  sdescCODIPI;
             Dbx_Dbf.FieldByName('cst').asString              :=  sdescCODSITB;
             Dbx_Dbf.FieldByName('pis').asString               :=  sdescCPIS;
             Dbx_Dbf.FieldByName('cofins').asString              :=  sdescCCOFINS;
             Dbx_Dbf.FieldByName('medida').asString             := sdesccuni;
             Dbx_Dbf.FieldByName('st').asString             := sdescSGLIMPFIS;
             Dbx_Dbf.FieldByName('iat').asString             := 'A' ;
             Dbx_Dbf.FieldByName('ippt').asString             := 'T';
             Dbx_Dbf.FieldByName('ativo').asboolean        := false;

             if cds_vProdutos.FieldByName('qua').asfloat <= 0 then
                Dbx_Dbf.FieldByName('qtd_atual').asfloat := 100000;
             //endi

             Dbx_Dbf.Post;



           end;
        //endi


        //if cds_vprodutos.fieldbyname('qua').asstring <> '' then
        //   begin

        //     sValor := cds_vprodutos.fieldbyname('qua').asstring;
        //     sValor :=  Decimal_Is_Point(sValor);


        //     Ado_Exec.Active := false;
        //     Ado_Exec.SQL.Clear;
             //Ado_Exec.SQL.Add('update tabestoque set esquantidade = '+quotedstr(cds_vprodutos.fieldbyname('qua').asstring)+' where escodigo = '+quotedstr(cds_vprodutos.fieldbyname('codigo').asString));
             //Ado_Exec.SQL.Add('update tabestoque e set e.esquantidade = '+cds_vprodutos.fieldbyname('qua').asstring+' where e.escodigo = '+cds_vprodutos.fieldbyname('codigo').asString);
        //     Ado_Exec.sql.Add('update tabestoque e  set e.esquantidade = '+svalor+' Where e.escodigo = '+cds_vprodutos.fieldbyname('codigo').asString);
        //     Ado_exec.ExecSQL;

       //    end;
       //endif


        cds_vProdutos.Next;
      end;

    except
      showmessage(Ado_Exec.sql.text);
    end;

    {

    Dbx_Dbf.active := false;
    Dbx_Dbf.Sql.Clear;
    Dbx_Dbf.sql.Add('Delete from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\clientes.dbf'));
    Dbx_Dbf.ExecSQL;

    try
    Cds_Clientes.Active := false;
    with  Dbx_Clientes do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Clientes');
        Active := true;
      end;
    //endth
    Cds_Clientes.Active := true;
    //showmessage( inttostr(Cds_clientes.recordcount) );

    except
    end;

    cds_Clientes.First;
    while not cds_Clientes.Eof do
      begin
        Dbx_Dbf.active := false;
        Dbx_Dbf.Sql.Clear;
        Dbx_Dbf.sql.Add('Select * from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\clientes.dbf')+' Where nome = '+quotedstr(cds_Clientes.FieldByName('nome').asString));
        Dbx_Dbf.active := true;
        if Dbx_Dbf.recordcount = 0 then
           begin
             Dbx_Dbf.Append;

             Dbx_Dbf.FieldByName('nome').asString         := cds_clientes.FieldByName('nome').asString;
             Dbx_Dbf.FieldByName('endere').asString       := cds_clientes.FieldByName('endent').asString;

             //pode ser bairro? vila?
             Dbx_Dbf.FieldByName('cmpl').asString         := cds_clientes.FieldByName('bairroent').asString;
             Dbx_Dbf.FieldByName('comple').asString       := cds_clientes.FieldByName('bairroent').asString;

             Dbx_Dbf.FieldByName('cidade').asString       := cds_clientes.FieldByName('cidadeent').asString;
             Dbx_Dbf.FieldByName('cep').asString          := cds_clientes.FieldByName('cepent').asString;
             Dbx_Dbf.FieldByName('fone').asString         := cds_clientes.FieldByName('telefoneent').asString+' '+cds_clientes.FieldByName('telefones').asString;
             Dbx_Dbf.FieldByName('cgc').asString          := cds_clientes.FieldByName('cpf').asString;
             Dbx_Dbf.FieldByName('ie').asString           := cds_clientes.FieldByName('ie').asString;
             Dbx_Dbf.FieldByName('estado').asString       := cds_clientes.FieldByName('estadoent').asString;
             Dbx_Dbf.FieldByName('ativo').asboolean       := false;
             Dbx_Dbf.FieldByName('numero').asString       := cds_clientes.FieldByName('nroent').asString;
             Dbx_Dbf.FieldByName('datanas').asString      := cds_clientes.FieldByName('datanasc').asString;
             Dbx_Dbf.FieldByName('fantasia').asString     := cds_clientes.FieldByName('fantasia').asString;
             Dbx_Dbf.FieldByName('contato').asString      := cds_clientes.FieldByName('contato').asString;
             Dbx_Dbf.FieldByName('email').asString        := cds_clientes.FieldByName('email').asString;
             Dbx_Dbf.FieldByName('cadastro').asString     := cds_clientes.FieldByName('dtcad').asString;


             Dbx_Dbf.FieldByName('endere_cob').asString       := cds_clientes.FieldByName('endcob').asString;
             Dbx_Dbf.FieldByName('numero_cob').asString       := cds_clientes.FieldByName('nrocob').asString;
             Dbx_Dbf.FieldByName('cmpl_cob').asString         := cds_clientes.FieldByName('bairrocob').asString;
             Dbx_Dbf.FieldByName('comple_cob').asString       := cds_clientes.FieldByName('bairrocob').asString;
             Dbx_Dbf.FieldByName('cidade_cob').asString       := cds_clientes.FieldByName('cidadecob').asString;
             Dbx_Dbf.FieldByName('estado_cob').asString       := cds_clientes.FieldByName('estadocob').asString;
             Dbx_Dbf.FieldByName('cep_cob').asString          := cds_clientes.FieldByName('cepcob').asString;

             //tabNova.FieldByName('codigo').asInteger      := tabAntiga.FieldByName('codcli').asInteger;
             //Dbx_Dbf.FieldByName('cadastro').asString     := cds_clientes.FieldByName('d_cadastro').asString;
             //Dbx_Dbf.FieldByName('obs').asString          := tcds_clientes.FieldByName('obs_1').asString+' '+tabAntiga.FieldByName('obs_2').asString;
             //tabNova.FieldByName('contato').asString      := '';
             //tabNova.FieldByName('tipo').asString         := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('numero').asString       := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('email').asString        := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('adicional1').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('adicional2').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('celular').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('credito').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('pai').asString          := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('mae').asString          := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('conjuge').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('natural').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('profissao').asString    := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('convenio').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('datanas').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('ultimaco').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('proxdata').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('tipo_cob').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('endere_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('numero_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cmpl_cob').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('comple_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cidade_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('estado_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cep_cob').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('custo').asString        := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('compra').asString       := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('mostrar').asString      := tabAntiga.FieldByName('').asString;

             Dbx_Dbf.Post;
           end;
        //endi
        cds_Clientes.Next;
      end;



    try
    Cds_Fornecedores.Active := false;
    with  Dbx_Fornecedores do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Fornecedores');
        Active := true;
      end;
    //endth
    Cds_fornecedores.Active := true;
    //showmessage( inttostr(Cds_fornecedores.recordcount) );

    except
    end;

    cds_Fornecedores.First;
    while not cds_Fornecedores.Eof do
      begin
        Dbx_Dbf.active := false;
        Dbx_Dbf.Sql.Clear;
        Dbx_Dbf.sql.Add('Select * from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\forneced.dbf')+' Where nome = '+quotedstr(cds_Fornecedores.FieldByName('nome').asString));
        Dbx_Dbf.active := true;
        if Dbx_Dbf.recordcount = 0 then
           begin
             Dbx_Dbf.Append;

             Dbx_Dbf.FieldByName('nome').asString         := cds_fornecedores.FieldByName('nome').asString;
             Dbx_Dbf.FieldByName('fantasia').asString     := cds_fornecedores.FieldByName('fantasia').asString;
             Dbx_Dbf.FieldByName('endere').asString       := cds_fornecedores.FieldByName('endereco').asString;
             //pode ser bairro? vila?
             Dbx_Dbf.FieldByName('cmpl').asString         := cds_fornecedores.FieldByName('bairro').asString;
             Dbx_Dbf.FieldByName('comple').asString       := cds_fornecedores.FieldByName('bairro').asString;
             Dbx_Dbf.FieldByName('cidade').asString       := cds_fornecedores.FieldByName('cidade').asString;
             Dbx_Dbf.FieldByName('estado').asString       := cds_fornecedores.FieldByName('estado').asString;
             Dbx_Dbf.FieldByName('cep').asString          := cds_fornecedores.FieldByName('cep').asString;
             Dbx_Dbf.FieldByName('fone').asString         := cds_fornecedores.FieldByName('fone').asString;
             Dbx_Dbf.FieldByName('ativo').asboolean       := false;



             //Dbx_Dbf.FieldByName('cgc').asString          := cds_fornecedores.FieldByName('cpf').asString;
             //Dbx_Dbf.FieldByName('ie').asString           := cds_fornecedores.FieldByName('ie').asString;
             //tabNova.FieldByName('codigo').asInteger      := tabAntiga.FieldByName('codcli').asInteger;
             //Dbx_Dbf.FieldByName('fax').asString          := cds_clientes.FieldByName('fax').asString;
             //Dbx_Dbf.FieldByName('im').asString           := cds_clientes.FieldByName('insc_est').asString;
             //Dbx_Dbf.FieldByName('cadastro').asString     := cds_clientes.FieldByName('d_cadastro').asString;
             //Dbx_Dbf.FieldByName('obs').asString          := tcds_clientes.FieldByName('obs_1').asString+' '+tabAntiga.FieldByName('obs_2').asString;
             //tabNova.FieldByName('contato').asString      := '';
             //tabNova.FieldByName('tipo').asString         := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('numero').asString       := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('email').asString        := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('adicional1').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('adicional2').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('celular').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('credito').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('pai').asString          := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('mae').asString          := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('conjuge').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('natural').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('profissao').asString    := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('convenio').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('datanas').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('ultimaco').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('proxdata').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('tipo_cob').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('endere_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('numero_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cmpl_cob').asString     := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('comple_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cidade_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('estado_cob').asString   := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('cep_cob').asString      := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('custo').asString        := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('compra').asString       := tabAntiga.FieldByName('').asString;
             //tabNova.FieldByName('mostrar').asString      := tabAntiga.FieldByName('').asString;

             Dbx_Dbf.Post;
           end;
        //endi
        cds_fornecedores.Next;
      end;

      }
      Dbx_Dbf.Close;





  end;
//endth




















close;


lblmensagem.Visible := false;
lblmensagem2.Visible := false;
antmove.Visible := false;
antmove.Active  := false;







end;

procedure Tfrmcopiaapl.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vardir:string;
begin

frmdados.ADO_Conexao.Connected := false;



  vardir := ExtractFilePath(Application.ExeName);

  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCopiaApl:=nil;
  form_ativo := '';
end;

procedure Tfrmcopiaapl.FormShow(Sender: TObject);
begin
   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;

end;

end.

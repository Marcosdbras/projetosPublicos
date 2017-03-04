unit xloc_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton, ExtCtrls;

type
  Tfrmxloc_produtos = class(TForm)
    qrconsultaproduto: TZQuery;
    Label1: TLabel;
    edidescricao: TEdit;
    dspconsultaproduto: TDataSource;
    dbgconsultaproduto: TDBGrid;
    qrconsultaprodutoCODIGO: TStringField;
    qrconsultaprodutoCODBARRA: TStringField;
    qrconsultaprodutoPRODUTO: TStringField;
    qrconsultaprodutoUNIDADE: TStringField;
    qrconsultaprodutoDATA_CADASTRO: TDateTimeField;
    qrconsultaprodutoCODGRUPO: TStringField;
    qrconsultaprodutoCODSUBGRUPO: TStringField;
    qrconsultaprodutoCODFORNECEDOR: TStringField;
    qrconsultaprodutoCODMARCA: TStringField;
    qrconsultaprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrconsultaprodutoNOTAFISCAL: TStringField;
    qrconsultaprodutoPRECOCUSTO: TFloatField;
    qrconsultaprodutoPRECOVENDA: TFloatField;
    qrconsultaprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrconsultaprodutoESTOQUE: TFloatField;
    qrconsultaprodutoESTOQUEMINIMO: TFloatField;
    qrconsultaprodutoCODALIQUOTA: TStringField;
    qrconsultaprodutoAPLICACAO: TMemoField;
    qrconsultaprodutoLOCALICAZAO: TStringField;
    qrconsultaprodutoPESO: TFloatField;
    qrconsultaprodutoVALIDADE: TStringField;
    qrconsultaprodutoCOMISSAO: TFloatField;
    qrconsultaprodutoUSA_BALANCA: TIntegerField;
    qrconsultaprodutoUSA_SERIAL: TIntegerField;
    qrconsultaprodutoUSA_GRADE: TIntegerField;
    qrconsultaprodutoCODRECEITA: TStringField;
    qrconsultaprodutoFOTO: TStringField;
    qrconsultaprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrconsultaprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrconsultaprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrconsultaprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrconsultaprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrconsultaprodutoCUSTOMEDIO: TFloatField;
    qrconsultaprodutoAUTO_APLICACAO: TStringField;
    qrconsultaprodutoAUTO_COMPLEMENTO: TStringField;
    qrconsultaprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrconsultaprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrconsultaprodutoPRECO_PROMOCAO: TFloatField;
    qrconsultaprodutoDATA_PROMOCAO: TDateTimeField;
    qrconsultaprodutoFIM_PROMOCAO: TDateTimeField;
    qrconsultaprodutoCST: TStringField;
    qrconsultaprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrconsultaprodutoNBM: TStringField;
    qrconsultaprodutoNCM: TStringField;
    qrconsultaprodutoALIQUOTA: TFloatField;
    qrconsultaprodutoIPI: TFloatField;
    qrconsultaprodutoREDUCAO: TFloatField;
    qrconsultaprodutoQTDE_EMBALAGEM: TFloatField;
    qrconsultaprodutoTIPO: TStringField;
    qrconsultaprodutoPESO_LIQUIDO: TFloatField;
    qrconsultaprodutoFARMACIA_CONTROLADO: TStringField;
    qrconsultaprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrconsultaprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrconsultaprodutoFARMACIA_PMC: TFloatField;
    qrconsultaprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrconsultaprodutoULTIMA_CARGA: TDateTimeField;
    qrconsultaprodutoDATA_INVENTARIO: TDateTimeField;
    qrconsultaprodutoCUSTO_INVENTARIO: TFloatField;
    qrconsultaprodutoESTOQUE_INVENTARIO: TFloatField;
    qrconsultaprodutoESTOQUE_ANTERIOR: TFloatField;
    qrconsultaprodutoPRECOVENDA_NOVO: TFloatField;
    qrconsultaprodutoUSA_RENTABILIDADE: TIntegerField;
    qrconsultaprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrconsultaprodutoAPRESENTACAO: TStringField;
    qrconsultaprodutoSITUACAO: TIntegerField;
    qrconsultaprodutoPRECOVENDA1: TFloatField;
    qrconsultaprodutoPRECOVENDA2: TFloatField;
    qrconsultaprodutoPRECOVENDA3: TFloatField;
    qrconsultaprodutoPRECOVENDA4: TFloatField;
    qrconsultaprodutoPRECOVENDA5: TFloatField;
    qrconsultaprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrconsultaprodutoDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrconsultaprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrconsultaprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrconsultaprodutoMARGEM_MINIMA: TFloatField;
    qrconsultaprodutoPISCOFINS: TStringField;
    qrconsultaprodutoREFERENCIA_FORNECEDOR: TStringField;
    qrconsultaprodutoCOMISSAO1: TFloatField;
    qrconsultaprodutoMARGEM_DESCONTO: TFloatField;
    qrconsultaprodutoTAMANHO: TStringField;
    qrconsultaprodutoCOR: TStringField;
    qrconsultaprodutoINCIDENCIA_PISCOFINS: TStringField;
    qrconsultaprodutoVEIC_CHASSI: TStringField;
    qrconsultaprodutoVEIC_SERIE: TStringField;
    qrconsultaprodutoVEIC_POTENCIA: TStringField;
    qrconsultaprodutoVEIC_PESO_LIQUIDO: TStringField;
    qrconsultaprodutoVEIC_PESO_BRUTO: TStringField;
    qrconsultaprodutoVEIC_TIPO_COMBUSTIVEL: TStringField;
    qrconsultaprodutoVEIC_RENAVAM: TStringField;
    qrconsultaprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrconsultaprodutoVEIC_ANO_MODELO: TIntegerField;
    qrconsultaprodutoVEIC_TIPO: TStringField;
    qrconsultaprodutoVEIC_TIPO_PINTURA: TStringField;
    qrconsultaprodutoVEIC_COD_COR: TStringField;
    qrconsultaprodutoVEIC_COR: TStringField;
    qrconsultaprodutoVEIC_VIN: TStringField;
    qrconsultaprodutoVEIC_NUMERO_MOTOR: TStringField;
    qrconsultaprodutoVEIC_CMKG: TStringField;
    qrconsultaprodutoVEIC_CM3: TStringField;
    qrconsultaprodutoVEIC_DISTANCIA_EIXO: TStringField;
    qrconsultaprodutoVEIC_COD_MARCA: TStringField;
    qrconsultaprodutoVEIC_ESPECIE: TStringField;
    qrconsultaprodutoVEIC_CONDICAO: TStringField;
    qrconsultaprodutoLOTE_FABRICACAO: TStringField;
    qrconsultaprodutoLOTE_VALIDADE: TDateTimeField;
    qrconsultaprodutoMARGEM_AGREGADA: TFloatField;
    qrconsultaprodutoCODBARRA_NOVARTIS: TStringField;
    qrconsultaprodutoFARMACIA_DCB: TStringField;
    qrconsultaprodutoFARMACIA_ABCFARMA: TStringField;
    qrconsultaprodutoFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrconsultaprodutoFARMACIA_PRINCIPIOATIVO: TStringField;
    qrconsultaprodutoULTIMA_COMPRA: TDateTimeField;
    qrconsultaprodutoFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrconsultaprodutoFARMACIA_TIPO: TStringField;
    qrconsultaprodutoUSA_COMBUSTIVEL: TStringField;
    qrconsultaprodutoREFERENCIA: TStringField;
    qrconsultaprodutoPERDA: TFloatField;
    qrconsultaprodutoCOMPOSICAO1: TStringField;
    qrconsultaprodutoCOMPOSICAO2: TStringField;
    qrconsultaprodutoIAT: TStringField;
    qrconsultaprodutoIPPT: TStringField;
    qrconsultaprodutoSITUACAO_TRIBUTARIA: TStringField;
    qrconsultaprodutoFLAG_SIS: TStringField;
    qrconsultaprodutoFLAG_ACEITO: TStringField;
    qrconsultaprodutoFLAG_EST: TStringField;
    qrconsultaprodutoCSOSN: TStringField;
    qrconsultaprodutoMODBCST: TSmallintField;
    qrconsultaprodutoPMVAST: TFloatField;
    qrconsultaprodutoPREDCST: TFloatField;
    qrconsultaprodutoVBCST: TFloatField;
    qrconsultaprodutoPICMSST: TFloatField;
    qrconsultaprodutoVICMSST: TFloatField;
    qrconsultaprodutoPCREDSN: TFloatField;
    qrconsultaprodutoVCREDICMSSN: TFloatField;
    qrconsultaprodutoCSTPIS: TIntegerField;
    qrconsultaprodutoCSTCOFINS: TIntegerField;
    qrconsultaprodutoIPISEMTABELA: TStringField;
    qrconsultaprodutoINCIDENCIA_IPI: TStringField;
    qrconsultaprodutoID: TIntegerField;
    qrconsultaprodutoCODPRODUTO: TStringField;
    qrconsultaprodutoCODFILIAL: TStringField;
    qrconsultaprodutoESTOQUE_INICIAL: TFloatField;
    qrconsultaprodutoENTRADAS: TFloatField;
    qrconsultaprodutoSAIDAS: TFloatField;
    qrconsultaprodutoESTOQUE_ATUAL: TFloatField;
    qrconsultaprodutoULTIMA_ENTRADA: TDateTimeField;
    qrconsultaprodutoULTIMA_SAIDA: TDateTimeField;
    qrconsultaprodutoNOTA_FISCAL: TStringField;
    qrconsultaprodutoID_1: TIntegerField;
    btn3: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    Label7: TLabel;
    lvoltar: TLabel;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bincluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure consultaprodutos;
    procedure edidescricaoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_produtos: Tfrmxloc_produtos;

implementation
    uses modulo, principal, pedido;
{$R *.dfm}

procedure Tfrmxloc_produtos.FormShow(Sender: TObject);
begin



  with edidescricao do
  begin
    Text := '';
    setfocus;
  end;

  if frmpedido <> nil then
     edidescricao.Text := frmpedido.comboproduto.Text;

  consultaprodutos;


  RESULTADO_PESQUISA1 := '';
end;

procedure Tfrmxloc_produtos.btn3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmxloc_produtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
frmxloc_produtos := nil;
end;

procedure Tfrmxloc_produtos.bincluirClick(Sender: TObject);
begin

  RESULTADO_PESQUISA1 := qrconsultaproduto.fieldbyname('codigo').AsString;
  close;


end;

procedure Tfrmxloc_produtos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   btn3Click(Sender);

if key = 13 then
   begin
     if edidescricao.Focused then
        begin
           if edidescricao.Text <> '' then
              begin

                consultaprodutos;
                dbgconsultaproduto.SetFocus;

              end;

        end
     else
        begin
          bincluirClick(Sender);


        end;


   end;






end;

procedure Tfrmxloc_produtos.consultaprodutos;
begin

   qrconsultaproduto.close;
   qrconsultaproduto.sql.clear;
   qrconsultaproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  produto like '+quotedstr( '%'+edidescricao.Text+'%' ));
   qrconsultaproduto.open;


end;



procedure Tfrmxloc_produtos.edidescricaoEnter(Sender: TObject);
begin
  //if edidescricao.Text <> '' then
  //    consultaprodutos;
end;

end.

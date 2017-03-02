unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, TFlatEditUnit, ExtCtrls,
  TFlatPanelUnit, Menus, jpeg;

type
  Tfrmorcamento = class(TForm)
    grid: TwwDBGrid;
    dsorcamento: TDataSource;
    qrorcamento: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_receber: TZQuery;
    qrorcamentoCODIGO: TStringField;
    qrorcamentoCODCAIXA: TStringField;
    qrorcamentoCODVENDEDOR: TStringField;
    qrorcamentoDATA: TDateTimeField;
    qrorcamentoCODCLIENTE: TStringField;
    qrorcamentoOBS: TStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TStringField;
    qrorcamentoRETIRADO: TStringField;
    qrorcamentoNOME: TStringField;
    qrorcamentovendedor: TStringField;
    lpesquisa: TLabel;
    LOC: TFlatEdit;
    FlatPanel1: TFlatPanel;
    Image3: TImage;
    FlatPanel3: TFlatPanel;
    Image4: TImage;
    FlatPanel4: TFlatPanel;
    Image5: TImage;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    Label14: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Image1: TImage;
    FlatPanel2: TFlatPanel;
    Image2: TImage;
    Label25: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    N1: TMenuItem;
    Abrir1: TMenuItem;
    Excluir1: TMenuItem;
    Sair1: TMenuItem;
    qrorcamento_produtoCODIGO: TStringField;
    qrorcamento_produtoCODNOTA: TStringField;
    qrorcamento_produtoCODPRODUTO: TStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TStringField;
    qrorcamento_produtoDATA: TDateTimeField;
    qrorcamento_produtoNUMERONOTA: TStringField;
    qrorcamento_produtoCODCLIENTE: TStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TStringField;
    qrorcamento_produtoCODGRADE: TStringField;
    qrorcamento_produtoSERIAL: TStringField;
    qrorcamento_produtoUNIDADE: TStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    qrproduto: TZQuery;
    qrorcamento_produtoproduto: TStringField;
    qrorcamentoTIPO: TIntegerField;
    FlatPanel5: TFlatPanel;
    qrorcamentoagc: TStringField;
    query: TZQuery;
    qrorcamento_receberCODIGO: TStringField;
    qrorcamento_receberCODVENDA: TStringField;
    qrorcamento_receberCODVENDEDOR: TStringField;
    qrorcamento_receberCODCAIXA: TStringField;
    qrorcamento_receberCODCLIENTE: TStringField;
    qrorcamento_receberDATA_EMISSAO: TDateTimeField;
    qrorcamento_receberDATA_VENCIMENTO: TDateTimeField;
    qrorcamento_receberDATA_PAGAMENTO: TDateTimeField;
    qrorcamento_receberVALOR_ORIGINAL: TFloatField;
    qrorcamento_receberVALOR_PAGO: TFloatField;
    qrorcamento_receberVALOR_JUROS: TFloatField;
    qrorcamento_receberVALOR_ATUAL: TFloatField;
    qrorcamento_receberVALOR_DESCONTO: TFloatField;
    qrorcamento_receberDOCUMENTO: TStringField;
    qrorcamento_receberTIPO: TStringField;
    qrorcamento_receberSITUACAO: TIntegerField;
    qrorcamento_receberFILTRO: TIntegerField;
    qrorcamento_receberNOSSONUMERO: TStringField;
    qrorcamento_receberCODREGIAO: TStringField;
    qrorcamento_receberCODCEDENTE: TStringField;
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure Abrir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorcamento: Tfrmorcamento;

implementation

uses modulo, venda_pdv, principal;

{$R *.dfm}

procedure Tfrmorcamento.ipodePesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
  if lpesquisa.Caption = 'F3 | NÚMERO:' THEN BEGIN lpesquisa.Caption := 'F3 | DATA:'; EXIT;END;
  if lpesquisa.Caption = 'F3 | CLIENTE:' THEN BEGIN lpesquisa.Caption := 'F3 | NÚMERO:';EXIT;END;
   if lpesquisa.Caption = 'F3 | DATA:' THEN BEGIN lpesquisa.Caption := 'F3 | CLIENTE:';EXIT;END;


   end;



procedure Tfrmorcamento.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmorcamento.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
    qrorcamento.close;
    qrorcamento.SQL.Clear;
    if lpesquisa.Caption = 'F3 | CLIENTE:' then qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli where orc.codcliente = cli.codigo and orc.tipo = 9 and upper(nome) like '''+ansiuppercase(loc.text)+'%'' order by data');
    if lpesquisa.Caption = 'F3 | NÚMERO:' then qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli where orc.codcliente = cli.codigo and orc.tipo = 9 and upper(ORC.codigo) like '''+ansiuppercase(loc.text)+'%''order by data');
    if lpesquisa.Caption = 'F3 | DATA:' then
    begin
      qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli where orc.codcliente = cli.codigo and orc.tipo = 9 and ORC.data = :datax order by data');
      qrorcamento.Params.ParamByName('datax').AsDateTime := strtodate(loc.text);
    end;
    qrorcamento.open;
    except
      showmessage('Parâmetro inválido!');
    end;

    IF qrorcamento.RecordCount = 0 THEN FRMPRINCIPAL.msg('INFO','Nenhum registro encontrado!',false,false,true,'') else grid.setfocus;
  end;
end;

procedure Tfrmorcamento.Abrir1Click(Sender: TObject);
var i : integer;
begin
  ABRE_ORCAMENTO := TRUE;
  FRMVENDA_PDV := TFRMVENDA_PDV.CREATE(SELF);
  WITH FRMVENDA_PDV DO
  BEGIN
    qrvenda_produto.Close;
    qrvenda_produto.sql.Clear;
    qrvenda_produto.sql.add('delete from cl00001  where terminal = '''+registro_terminal+'''');
    qrvenda_produto.ExecSQL;
    qrvenda_produto.sql.clear;
    qrvenda_produto.sql.add('select * from cl00001  where terminal = '''+registro_terminal+'''');
    qrvenda_produto.open;

    qrorcamento_produto.Close;
    QRORCAMENTO_PRODUTO.SQL.CLEAR;
    QRORCAMENTO_PRODUTO.SQL.ADD('select * from c000075 where codnota = '''+qrorcamento.fieldbyname('codigo').asstring+''' order by codigo');
    QRORCAMENTO_PRODUTO.OPEN;

    frmmodulo.qrcliente.CLOSE;
    FRMMODULO.QRCLIENTE.SQL.CLEAR;
    FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codCLIENTE').asstring+'''');
    FRMMODULO.QRCLIENTE.OPEN;

    i := 1;  item := 0;
    qrorcamento_produto.First;
    while not qrorcamento_produto.Eof do
    begin
      item := item + 1;
      qrvenda_produto.Insert;
      qrvenda_produto.fieldbyname('item').asstring       := frmprincipal.zerarcodigo(inttostr(item),3);
      qrvenda_produto.fieldbyname('produto').asstring    := qrorcamento_produto.fieldbyname('produto').asstring;
      qrvenda_produto.fieldbyname('codproduto').asstring := qrorcamento_produto.fieldbyname('codproduto').asstring;
      qrvenda_produto.fieldbyname('qtde').asfloat        := qrorcamento_produto.fieldbyname('qtde').asfloat;
      qrvenda_produto.fieldbyname('unitario').asfloat    := qrorcamento_produto.fieldbyname('unitario').asfloat;
      qrvenda_produto.fieldbyname('total').asfloat       := qrorcamento_produto.fieldbyname('total').asfloat;
      qrvenda_produto.fieldbyname('desconto').asfloat    := qrorcamento_produto.fieldbyname('desconto').asfloat;
      qrvenda_produto.fieldbyname('acrescimo').asfloat   := qrorcamento_produto.fieldbyname('acrescimo').asfloat;
      qrvenda_produto.fieldbyname('numeracao').asstring  := qrorcamento_produto.fieldbyname('unidade').AsString;
      qrvenda_produto.Post;
      qrorcamento_produto.Next;
    end;
    qrvenda_produto.refresh;
    ecliente.Text := qrorcamento.fieldbyname('codcliente').asstring;
    enomecliente.Text := qrorcamento.fieldbyname('nome').asstring;
    evendedor.text := qrorcamento.fieldbyname('codvendedor').asstring;
    enomevendedor.text := qrorcamento.fieldbyname('vendedor').asstring;
    comboforma.ItemIndex := 2;
    ltotal.Caption := formatfloat('##########0.00',qrorcamento.fieldbyname('subtotal').asfloat);
    litem.Caption := frmprincipal.zerarcodigo(inttostr(item),3);
  END;

    NUMERO_ORCAMENTO := qrorcamento.fieldbyname('codigo').asstring;
  FRMVENDA_PDV.ShowModal;
    qrorcamento.Refresh;



end;

procedure Tfrmorcamento.Excluir1Click(Sender: TObject);
begin
  if frmprincipal.msg('SENH','',true,true,false,'4 - Excluir') = 'SIM' THEN
  BEGIN
    QRORCAMENTO_PRODUTO.Close;
    QRORCAMENTO_PRODUTO.SQL.Clear;
    QRORCAMENTO_PRODUTO.SQL.ADD('DELETE FROM C000075 WHERE CODNOTA = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    QRORCAMENTO_PRODUTO.EXECSQL;


    query.close;
    query.sql.clear;
    query.sql.add('delete from c000074 where codigo = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    query.execsql;
    FRMMODULO.Conexao.Commit;

    qrorcamento.close;
    qrorcamento.open;
  END;
end;

procedure Tfrmorcamento.FormShow(Sender: TObject);
begin
    qrorcamento.close;
    qrorcamento.SQL.Clear;
    qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli where orc.codcliente = cli.codigo and orc.tipo = 9 order by codigo');
    qrorcamento.open;


end;

end.

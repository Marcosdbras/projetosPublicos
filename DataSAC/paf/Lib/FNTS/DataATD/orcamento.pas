unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, TFlatEditUnit, ExtCtrls,
  TFlatPanelUnit, Menus, jpeg, Mask, rxToolEdit, Buttons;

type
  Tfrmorcamento = class(TForm)
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
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    N1: TMenuItem;
    Abrir1: TMenuItem;
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
    qrorcamentoagc: TStringField;
    query: TZQuery;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    Bevel1: TBevel;
    grid: TwwDBGrid;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label14: TLabel;
    Label36: TLabel;
    Label1: TLabel;
    ed_inicial: TDateEdit;
    ed_final: TDateEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure Abrir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure ed_inicialKeyPress(Sender: TObject; var Key: Char);
    procedure ed_finalKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
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
  if lpesquisa.Caption = 'F3 | Número:' THEN BEGIN lpesquisa.Caption := 'F3 | Tudo:'; EXIT;END;
  if lpesquisa.Caption = 'F3 | Cliente:' THEN BEGIN lpesquisa.Caption := 'F3 | Número:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Tudo:' THEN BEGIN lpesquisa.Caption := 'F3 | Cliente:'; EXIT;END;
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
    perform(wm_nextdlgctl,0,0);
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

    LDATA_VENDA.Caption := qrorcamento.fieldbyname('data').asstring;
    lhora_venda.Caption := timetostr(time);
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

procedure Tfrmorcamento.FormShow(Sender: TObject);
begin
  ed_inicial.Date := date;
  ed_final.date := date;


  qrorcamento.close;
  qrorcamento.SQL.Clear;
  qrorcamento.sql.add('select orc.*, cli.nome ');
  qrorcamento.sql.add('from c000074 orc, c000007 cli');
  qrorcamento.sql.add('where orc.codcliente = cli.codigo and');
  qrorcamento.sql.add('orc.data between :datai and :dataf and');
  qrorcamento.sql.add('orc.tipo = 9 order by orc.data,orc.codigo');
  qrorcamento.ParamByName('datai').asdatetime := ed_inicial.date;
  qrorcamento.ParamByName('dataf').asdatetime := ed_final.Date;
  qrorcamento.open;

  loc.SetFocus;

end;

procedure Tfrmorcamento.gridDblClick(Sender: TObject);
begin
  Abrir1Click(frmOrcamento);
end;

procedure Tfrmorcamento.ed_inicialKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmorcamento.ed_finalKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmorcamento.BitBtn1Click(Sender: TObject);
begin
    try
    qrorcamento.close;
    qrorcamento.SQL.Clear;
    if (lpesquisa.Caption = 'F3 | Cliente:') then
    begin
      qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli');
      qrorcamento.sql.add('where orc.codcliente = cli.codigo and orc.tipo = 9');
      qrorcamento.sql.add('and orc.data between :datai and :dataf');
      qrorcamento.sql.add('and upper(nome) like '''+ansiuppercase(loc.text)+'%'' order by orc.data');
      qrorcamento.ParamByName('datai').asdatetime := ed_inicial.date;
      qrorcamento.ParamByName('dataf').asdatetime := ed_final.Date;
    end
    ELSE if (lpesquisa.Caption = 'F3 | Número:') then
    begin
      qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli');
      qrorcamento.sql.add('where orc.codcliente = cli.codigo and orc.tipo = 9');
      qrorcamento.sql.add('and orc.data between :datai and :dataf');
      qrorcamento.sql.add('and upper(ORC.codigo) like '''+ansiuppercase(loc.text)+'%''order by orc.data');
      qrorcamento.ParamByName('datai').asdatetime := ed_inicial.date;
      qrorcamento.ParamByName('dataf').asdatetime := ed_final.Date;
    end
    ELSE IF (lpesquisa.Caption = 'F3 | Tudo:') then
    begin
      qrorcamento.sql.add('select orc.*, cli.nome from c000074 orc, c000007 cli');
      qrorcamento.sql.add('where orc.codcliente = cli.codigo and orc.tipo = 9');
      qrorcamento.sql.add('and orc.data between :datai and :dataf order by orc.data');
      //qrorcamento.sql.add('and upper(ORC.codigo) like '''+ansiuppercase(loc.text)+'%''order by orc.data');
      qrorcamento.ParamByName('datai').asdatetime := ed_inicial.date;
      qrorcamento.ParamByName('dataf').asdatetime := ed_final.Date;

    end;
    qrorcamento.open;
    except
      showmessage('Parâmetro inválido!');
    end;

    IF qrorcamento.RecordCount = 0 THEN FRMPRINCIPAL.msg('INFO','Nenhum registro encontrado!',false,false,true,'') else grid.setfocus;

end;

procedure Tfrmorcamento.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Abrir1Click(frmOrcamento);
end;

end.

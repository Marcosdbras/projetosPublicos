unit orcamento_abrir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, IBC, AdvGlowButton, ExtCtrls, Menus, Grids,
  Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmOrcamento_Abrir = class(TForm)
    qrorcamento: TZQuery;
    Panel1: TPanel;
    Bevel1: TBevel;
    bfechar: TAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    qrorcamento_produto: TZQuery;
    dsorcamento: TDataSource;
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
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qrorcamentoNOME: TStringField;
    qrorcamentoFUNCI: TStringField;
    QRORCAMENTO_RECEBER: TZQuery;
    Timer1: TTimer;
    qrorcamentoCPF: TStringField;
    procedure bitbtn7Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento_Abrir: TfrmOrcamento_Abrir;

implementation

uses principal, ecf, modulo;

{$R *.dfm}

procedure TfrmOrcamento_Abrir.bitbtn7Click(Sender: TObject);
var formapgto, v1, v2 : string;
    y, xx : integer;
begin
  TIMER1.ENABLED := FALSE;


   qrorcamento_produto.close;
   qrorcamento_produto.sql.clear;
   qrorcamento_produto.sql.add('select ORC.*, PROD.PRODUTO, PROD.UNIDADE from c000075 ORC, C000025 PROD');
   QRORCAMENTO_PRODUTO.SQL.ADD('where ORC.CODPRODUTO = PROD.CODIGO AND codNOTA = '''+qrorcamento.fieldbyname('CODIGO').ASSTRING+'''');
   qrorcamento_produto.open;


   QRORCAMENTO_RECEBER.CLOSE;
   QRORCAMENTO_RECEBER.SQL.CLEAR;
   QRORCAMENTO_RECEBER.SQL.ADD('SELECT * FROM C000076 WHERE CODVENDA = '''+QRORCAMENTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
   QRORCAMENTO_RECEBER.OPEN;


   ecf_relatorio_gerencial(ecf_modelo,'               O R C A M E N T O ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Número: '+qrorcamento.fieldbyname('codigo').asstring+'  Data: '+qrorcamento.fieldbyname('data').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Cliente: '+copy(qrorcamento.fieldbyname('codcliente').asstring+'  '+qrorcamento.fieldbyname('nome').asstring,1,38));
   ecf_relatorio_gerencial(ecf_modelo,'CPF....: '+qrorcamento.fieldbyname('cpf').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'Vended.: '+qrorcamento.fieldbyname('funci').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'P R O D U T O   QTDE.   X  UNITARIO  = VLR.TOTAL');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');




   qrorcamento_produto.first;
   while not qrorcamento_produto.eof do
   begin
     ecf_relatorio_gerencial(ecf_modelo,frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('produto').asstring,41,' ','D'));

     ecf_relatorio_gerencial(ecf_modelo,'       '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('total').asfloat),9,' ','E'));
     qrorcamento_produto.Next;
   end;



   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'                           Subtotal : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('subtotal').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           Desconto : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('desconto').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           T O T A L: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('total').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');

   formapgto := '';
   y := 0;
   v1 := '';
   v2 := '';



  qrorcamento_RECEBER.first;
  while not qrorcamento_RECEBER.Eof do
  begin
    if y > 5 then
    begin
      v2 := v2 + qrorcamento_RECEBER.fieldbyname('DATA_vencimento').asstring+' -> '+formatfloat(mascara_valor,qrorcamento_RECEBER.fieldbyname('valor_ATUAL').asfloat)+' | ';
    end
    else
    begin
      v1 := v1 + qrorcamento_RECEBER.fieldbyname('DATA_vencimento').asstring+' -> '+formatfloat(mascara_valor,qrorcamento_RECEBER.fieldbyname('valor_ATUAL').asfloat)+' | ';
      y := y + 1;
    end;
    qrorcamento_RECEBER.next;
  end;


   ecf_relatorio_gerencial(ecf_modelo,'Condição de Pagamento: '+FORMAPGTO+'  '+V1);
   ecf_relatorio_gerencial(ecf_modelo,'Observações:');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'           Assinatura do Funcionário');

   ecf_fecha_relatorio_gerencial(ecf_modelo);

  TIMER1.ENABLED := TRUE;

end;

procedure TfrmOrcamento_Abrir.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento_Abrir.FormShow(Sender: TObject);
begin
    qrorcamento.close;
    qrorcamento.SQL.Clear;
    qrorcamento.sql.add('select orc.*, cli.nome, cli.cpf, fun.nome funci from c000074 orc, c000007 cli, c000008 fun');
    qrorcamento.sql.add('where orc.codcliente = cli.codigo and');
    qrorcamento.sql.add('orc.codvendedor = fun.codigo and');
    qrorcamento.sql.add('orc.tipo = 9 order by orc.data, orc.codigo');
    qrorcamento.open;

    TIMER1.Enabled := TRUE;
end;

procedure TfrmOrcamento_Abrir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrcamento_Abrir.Timer1Timer(Sender: TObject);
begin
  QRORCAMENTO.REFRESH;
end;

end.

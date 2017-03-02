unit venda_fechamento_aprazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrControls, VrButtons, ExtCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, TFlatComboBoxUnit, Menus, jpeg,
  TFlatPanelUnit;

type
  Tfrmvenda_fechamento_aprazo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    Panel1: TPanel;
    rsubtotal: TRxCalcEdit;
    Panel2: TPanel;
    bgravar: TVrDemoButton;
    bcancelar: TVrDemoButton;
    comboforma: TFlatComboBox;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    rparcelas: TRxCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    bparcelamento: TVrDemoButton;
    rtotal: TRxCalcEdit;
    Parcelamento1: TMenuItem;
    FlatPanel5: TFlatPanel;
    procedure bcancelarClick(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rparcelasKeyPress(Sender: TObject; var Key: Char);
    procedure bparcelamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_aprazo: Tfrmvenda_fechamento_aprazo;

implementation

uses principal, venda_pdv, modulo, venda_impressao;

{$R *.dfm}

procedure Tfrmvenda_fechamento_aprazo.bcancelarClick(Sender: TObject);
begin
  close;  
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := $002C3023;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := $002C3023;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_aprazo.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).color := $002C3023;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_aprazo.racrescimo2Exit(Sender: TObject);
begin
  tedit(sender).color := $002C3023;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento_aprazo.bgravarClick(Sender: TObject);
var codigo_venda : string;
x, prest : integer;
prestacao : real;
begin

  forma1 := comboforma.text;
  vforma1 := rtotal.value;

  if frmvenda_pdv.comboforma.ItemIndex = 1 then
  begin

      IF ABRE_ORCAMENTO THEN
      BEGIN


        FRMMODULO.qrorcamento.CLOSE;
        FRMMODULO.qrorcamento.SQL.CLEAR;
        FRMMODULO.QRORCAMENTO.SQL.ADD('DELETE FROM C000074 WHERE CODIGO = '''+NUMERO_ORCAMENTO+'''');
        FRMMODULO.qrorcamento.ExecSQL;

        frmmodulo.qrorcamento.close;
        frmmodulo.qrorcamento.sql.clear;
        frmmodulo.qrorcamento.sql.add('select * from c000074 where codigo = ''999999''');
        frmmodulo.QRORCAMENTO.open;


        codigo_venda := numero_orcamento;

        frmmodulo.QRORCAMENTO.open;
        frmmodulo.QRORCAMENTO.insert;
        frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring         := codigo_venda;
         frmmodulo.QRORCAMENTO.fieldbyname('data').asstring           := frmvenda_pdv.ldata_venda.Caption;
        frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring     := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring    := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        frmmodulo.QRORCAMENTO.fieldbyname('codcaixa').asstring       := '000099';
        frmmodulo.QRORCAMENTO.fieldbyname('TOTAL').asfloat           := rtotal.value;
        frmmodulo.QRORCAMENTO.fieldbyname('SUBTOTAL').asfloat        := rsubtotal.value;

        //CREDI�RIO
        //CHEQUE � PRAZO
        //CART�O DE CR�DITO

        if comboforma.ItemIndex = 0 then frmmodulo.qrorcamento.FieldByName('meio_crediario').asfloat  := rtotal.value;
        if comboforma.ItemIndex = 1 then frmmodulo.qrorcamento.FieldByName('meio_chequeap').asfloat   := rtotal.value;
        if comboforma.ItemIndex = 2 then frmmodulo.qrorcamento.FieldByName('meio_cartaocred').asfloat := rtotal.value;

        FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
        FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
        frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := rparcelas.text;
        frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
        frmmodulo.QRORCAMENTO.fieldbyname('cupom_fiscal').asinteger := 0;
        frmmodulo.qrorcamento.fieldbyname('tipo').asinteger := 0;
        frmmodulo.QRORCAMENTO.post;


        FRMMODULO.qrorcamento_produto.Close;
        FRMMODULO.QRORCAMENTO_PRODUTO.SQL.CLEAR;
        FRMMODULO.QRORCAMENTO_PRODUTO.SQL.ADD('DELETE from c000075 where codnota = '''+NUMERO_ORCAMENTO+'''');
        FRMMODULO.QRORCAMENTO_PRODUTO.EXECSQL;

        // lancamento dos produtos
          frmmodulo.qrorcamento_produto.close;
          frmmodulo.qrorcamento_produto.sql.clear;
          frmmodulo.qrorcamento_produto.sql.add('select * from c000075 where codigo = ''999999''');
          frmmodulo.qrorcamento_produto.OPEN;
          frmvenda_pdv.qrvenda_produto.First;

          while not frmvenda_pdv.qrvenda_produto.Eof do
          begin
            frmmodulo.qrorcamento_produto.Insert;
            frmmodulo.qrorcamento_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
            frmmodulo.qrorcamento_produto.fieldbyname('codnota').AsString := codigo_venda;
            frmmodulo.qrorcamento_produto.fieldbyname('numeronota').AsString := codigo_venda;
            frmmodulo.qrorcamento_produto.fieldbyname('codproduto').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('codproduto').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('qtde').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('qtde').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('unitario').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('unitario').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('total').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('total').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('desconto').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('desconto').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('acrescimo').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('acrescimo').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('unidade').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('numeracao').AsString;
            frmmodulo.qrorcamento_produto.fieldbyname('codcliente').AsString := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('codvendedor').AsString := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
            frmmodulo.qrorcamento_produto.FieldByName('data').asstring := frmvenda_pdv.ldata_venda.Caption;
            frmmodulo.qrorcamento_produto.Post;
            frmvenda_pdv.qrvenda_produto.next;
          end;

       frmmodulo.Conexao.Commit;
       frmmodulo.ConexaoLocal.Commit;
       frmprincipal.msg('INFO','PR�-VENDA CONCLU�DA!'+#13+'N�MERO: '+numero_orcamento,false,false,true,'');
      end
      else
      begin
        codigo_venda := frmprincipal.codifica('000048');

        frmmodulo.qrorcamento.close;
        frmmodulo.qrorcamento.sql.clear;
        frmmodulo.qrorcamento.sql.add('select * from c000074 where codigo = ''999999''');
        frmmodulo.QRORCAMENTO.open;

        frmmodulo.QRORCAMENTO.open;
        frmmodulo.QRORCAMENTO.insert;
        frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring         := codigo_venda;
        frmmodulo.QRORCAMENTO.fieldbyname('data').asstring           := frmvenda_pdv.ldata_venda.Caption;
        frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring     := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring    := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        frmmodulo.QRORCAMENTO.fieldbyname('codcaixa').asstring       := '000099';
        frmmodulo.QRORCAMENTO.fieldbyname('TOTAL').asfloat           := rtotal.value;
        frmmodulo.QRORCAMENTO.fieldbyname('SUBTOTAL').asfloat        := rsubtotal.value;
        if comboforma.ItemIndex = 0 then frmmodulo.qrorcamento.FieldByName('meio_crediario').asfloat  := rtotal.value;
        if comboforma.ItemIndex = 1 then frmmodulo.qrorcamento.FieldByName('meio_chequeap').asfloat   := rtotal.value;
        if comboforma.ItemIndex = 2 then frmmodulo.qrorcamento.FieldByName('meio_cartaocred').asfloat := rtotal.value;
        FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
        FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
        frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := rparcelas.text;
        frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
        frmmodulo.QRORCAMENTO.fieldbyname('cupom_fiscal').asinteger := 0;
        frmmodulo.qrorcamento.fieldbyname('tipo').asinteger := 0;
        frmmodulo.QRORCAMENTO.post;



        // lancamento dos produtos
          frmmodulo.qrorcamento_produto.OPEN;
          frmvenda_pdv.qrvenda_produto.First;
          while not frmvenda_pdv.qrvenda_produto.Eof do
          begin
            frmmodulo.qrorcamento_produto.Insert;
            frmmodulo.qrorcamento_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
            frmmodulo.qrorcamento_produto.fieldbyname('codnota').AsString := codigo_venda;
            frmmodulo.qrorcamento_produto.fieldbyname('numeronota').AsString := codigo_venda;
            frmmodulo.qrorcamento_produto.fieldbyname('codproduto').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('codproduto').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('qtde').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('qtde').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('unitario').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('unitario').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('total').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('total').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('desconto').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('desconto').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('acrescimo').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('acrescimo').asfloat;
            frmmodulo.qrorcamento_produto.fieldbyname('unidade').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('numeracao').AsString;
            frmmodulo.qrorcamento_produto.fieldbyname('codcliente').AsString := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('codvendedor').AsString := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
            frmmodulo.qrorcamento_produto.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
            frmmodulo.qrorcamento_produto.FieldByName('data').asstring := frmvenda_pdv.ldata_venda.Caption;
            frmmodulo.qrorcamento_produto.Post;
            frmvenda_pdv.qrvenda_produto.next;
          end;

          frmmodulo.Conexao.Commit;

          frmmodulo.ConexaoLocal.Commit;

        frmprincipal.msg('INFO','PR�-VENDA CONCLU�DA!'+#13+'N�MERO: '+codigo_venda,false,false,true,'');

    end;

   end
   else
   begin
    // lancamento do ORCAMENTO

      IF ABRE_ORCAMENTO THEN
      BEGIN
        FRMMODULO.qrorcamento.CLOSE;
        FRMMODULO.qrorcamento.SQL.CLEAR;
        FRMMODULO.QRORCAMENTO.SQL.ADD('DELETE FROM C000074 WHERE CODIGO = '''+NUMERO_ORCAMENTO+'''');
        FRMMODULO.qrorcamento.ExecSQL;

        FRMMODULO.qrorcamento_produto.Close;
        FRMMODULO.QRORCAMENTO_PRODUTO.SQL.CLEAR;
        FRMMODULO.QRORCAMENTO_PRODUTO.SQL.ADD('DELETE from c000075 where codnota = '''+NUMERO_ORCAMENTO+'''');
        FRMMODULO.QRORCAMENTO_PRODUTO.EXECSQL;

        codigo_venda := numero_orcamento;
      END
      else
      begin
          codigo_venda := frmprincipal.codifica('000048');
      end;

    frmmodulo.qrorcamento.close;
    frmmodulo.qrorcamento.sql.clear;
    frmmodulo.qrorcamento.sql.add('select * from c000074 where codigo = ''999999''');
    frmmodulo.QRORCAMENTO.open;

    frmmodulo.QRORCAMENTO.insert;
    frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring         := codigo_venda;
    frmmodulo.QRORCAMENTO.fieldbyname('data').asstring           := frmvenda_pdv.ldata_venda.Caption;
    frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring     := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring    := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
    frmmodulo.QRORCAMENTO.fieldbyname('codcaixa').asstring       := '000099';
    frmmodulo.QRORCAMENTO.fieldbyname('TOTAL').asfloat           := rtotal.value;
    frmmodulo.QRORCAMENTO.fieldbyname('SUBTOTAL').asfloat        := rsubtotal.value;
    case comboforma.Itemindex of
    0 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_crediario').asfloat   := rtotal.Value;
    1 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_chequeap').asfloat    := rtotal.Value;
    2 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_cartaocred').asfloat  := rtotal.Value;
    end;
    FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
    FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
    frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
    frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := rparcelas.text;
    frmmodulo.QRORCAMENTO.fieldbyname('cupom_fiscal').asinteger := 0;
    frmmodulo.qrorcamento.fieldbyname('tipo').asinteger := 9;
    frmmodulo.QRORCAMENTO.post;



    // lancamento dos produtos
      frmmodulo.qrorcamento_produto.close;
      frmmodulo.qrorcamento_produto.sql.clear;
      frmmodulo.qrorcamento_produto.sql.add('select * from c000075 where codigo = ''999999''');
      frmmodulo.qrorcamento_produto.OPEN;
      frmvenda_pdv.qrvenda_produto.First;
      while not frmvenda_pdv.qrvenda_produto.Eof do
      begin
        frmmodulo.qrorcamento_produto.Insert;
        frmmodulo.qrorcamento_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrorcamento_produto.fieldbyname('codnota').AsString := codigo_venda;
        frmmodulo.qrorcamento_produto.fieldbyname('numeronota').AsString := codigo_venda;
        frmmodulo.qrorcamento_produto.fieldbyname('codproduto').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('codproduto').asstring;
        frmmodulo.qrorcamento_produto.fieldbyname('qtde').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrorcamento_produto.fieldbyname('unitario').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('unitario').asfloat;
        frmmodulo.qrorcamento_produto.fieldbyname('total').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('total').asfloat;
        frmmodulo.qrorcamento_produto.fieldbyname('desconto').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('desconto').asfloat;
        frmmodulo.qrorcamento_produto.fieldbyname('acrescimo').asfloat := frmvenda_pdv.qrvenda_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrorcamento_produto.fieldbyname('unidade').asstring := frmvenda_pdv.qrvenda_produto.fieldbyname('numeracao').AsString;
        frmmodulo.qrorcamento_produto.fieldbyname('codcliente').AsString := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        frmmodulo.qrorcamento_produto.fieldbyname('codvendedor').AsString := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        frmmodulo.qrorcamento_produto.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        frmmodulo.qrorcamento_produto.FieldByName('data').asstring := frmvenda_pdv.ldata_venda.Caption;
        frmmodulo.qrorcamento_produto.Post;
        frmvenda_pdv.qrvenda_produto.next;
      end;


      frmmodulo.qrorcamento_receber.open;
      x := 1;
      prest := trunc(rparcelas.value);
      prestacao := rtotal.Value / prest;

      while prest <> 0 do
      begin
        frmmodulo.qrorcamento_receber.insert;
        frmmodulo.qrorcamento_receber.fieldbyname('codigo').asstring          := frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring+'/'+frmprincipal.zerarcodigo(inttostr(x),2);
        frmmodulo.qrorcamento_receber.fieldbyname('codvenda').asstring        := frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring;
        frmmodulo.qrorcamento_receber.fieldbyname('codcliente').asstring      := frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring;
        frmmodulo.qrorcamento_receber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
        frmmodulo.qrorcamento_receber.fieldbyname('codvendedor').asstring     := frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring;
        frmmodulo.qrorcamento_receber.fieldbyname('codcaixa').asstring        := '000099';
        frmmodulo.qrorcamento_receber.fieldbyname('data_emissao').asstring    := frmmodulo.QRORCAMENTO.fieldbyname('data').asstring;
        frmmodulo.qrorcamento_receber.fieldbyname('data_vencimento').asDATETIME := incmonth(frmmodulo.QRORCAMENTO.fieldbyname('DATA').asdatetime,x);
        frmmodulo.qrorcamento_receber.fieldbyname('valor_original').asfloat   := prestacao;
        frmmodulo.qrorcamento_receber.fieldbyname('valor_atual').asfloat      := prestacao;
        frmmodulo.qrorcamento_receber.fieldbyname('documento').asstring       := '';
        frmmodulo.qrorcamento_receber.fieldbyname('tipo').asstring            := 'CREDIARIO';
        frmmodulo.qrorcamento_receber.FieldByName('situacao').asinteger       := 1;
        frmmodulo.qrorcamento_receber.FieldByName('filtro').asinteger         := 0;
        frmmodulo.qrorcamento_receber.post;
        prest := prest - 1;
        x := x+1;
      end;
      frmmodulo.Conexao.Commit;
      application.messagebox('Para imprimir este or�amento, utilize um terminal onde possue ECF!','Aviso',mb_ok+MB_ICONINFORMATION);
   end;




    frmmodulo.ConexaoLocal.Commit;




    close;
   frmvenda_pdv.close;
end;

procedure Tfrmvenda_fechamento_aprazo.bcancelarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bcancelarClick(frmvenda_fechamento_APRAZO);
end;

procedure Tfrmvenda_fechamento_aprazo.bgravarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravarClick(frmvenda_fechamento_APRAZO);
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00B97237;
end;

procedure Tfrmvenda_fechamento_aprazo.rdinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.comboformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rparcelas.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_fechamento_aprazo.rparcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.bparcelamentoClick(Sender: TObject);
var vencs : string;
begin
  showmessage('*** P A R C E L A M E N T O: ***'+ #13+
              RPARCELAS.TEXT+' X de -->  R$'+FORMATFLOAT('###,###,##0.00',RTOTAL.VALUE / RPArCELAS.VALUE)+#13);




end;

procedure Tfrmvenda_fechamento_aprazo.FormShow(Sender: TObject);
begin
  if frmvenda_pdv.comboforma.ItemIndex = 1 then
  begin
    comboforma.Items.Clear;
    comboforma.Items.add('CREDI�RIO');
    comboforma.Items.add('CHEQUE � PRAZO');
    comboforma.Items.add('CART�O DE CR�DITO');
    comboforma.ItemIndex := 0;
  end
  else
  begin
    comboforma.Items.Clear;
    comboforma.Items.add('OR�AMENTO');
    comboforma.ItemIndex := 0;
  end;
end;

end.

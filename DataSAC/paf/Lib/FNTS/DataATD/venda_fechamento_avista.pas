unit venda_fechamento_avista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrControls, VrButtons, ExtCtrls, StdCtrls, Mask, rxToolEdit,
  rxCurrEdit, TFlatComboBoxUnit, Menus, jpeg, TFlatPanelUnit, Buttons;

type
  Tfrmvenda_fechamento_avista = class(TForm)
    rdinheiro: TRxCalcEdit;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    rsubtotal: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    Panel1: TPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Bevel1: TBevel;
    comboforma: TComboBox;
    rdiferenca: TRxCalcEdit;
    procedure bcancelarClick(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarKeyPress(Sender: TObject; var Key: Char);
    procedure rdinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_avista: Tfrmvenda_fechamento_avista;

implementation

uses principal, venda_pdv, modulo, venda_impressao;

{$R *.dfm}

procedure Tfrmvenda_fechamento_avista.bcancelarClick(Sender: TObject);
begin
  close;  
end;

procedure Tfrmvenda_fechamento_avista.rdesconto1Exit(Sender: TObject);
begin

  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_avista.rdesconto2Exit(Sender: TObject);
begin

  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_avista.racrescimo1Exit(Sender: TObject);
begin

  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_avista.racrescimo2Exit(Sender: TObject);
begin

  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_avista.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento_avista.rdinheiroExit(Sender: TObject);
begin
  rdiferenca.value := rtotal.value - rdinheiro.Value;
end;

procedure Tfrmvenda_fechamento_avista.bgravarClick(Sender: TObject);
var codigo_venda : string;
begin
   forma1 := comboforma.text;
  vforma1 := rtotal.value;   


  if rdiferenca.Value <> 0 then
  begin
    IF RDINHEIRO.VALUE >= (rtotal.VALUE-0.01) THEN
    BEGIN
      frmprincipal.msg('INFO','T R O C O'+#13+'R$ '+FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1)),FALSE,FALSE,TRUE,'');
      RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
      RDIFERENCA.VALUE := 0;
      APPLICATION.ProcessMessages;
    END
    ELSE
    BEGIN
      FRMPRINCIPAL.msg('ERRO','Os valores informados nas formas'+#13+'de pagamento não confere com o'+#13+'valor total desta venda!'+#13+'Favor verificar!',false,false,true,'');
      rdinheiro.setfocus;
      exit;
    END;
  end;

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

          frmmodulo.QRORCAMENTO.insert;
          frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring         := codigo_venda;
          frmmodulo.qrorcamento.fieldbyname('tipo').asinteger := 0;
          frmmodulo.QRORCAMENTO.fieldbyname('data').asstring           := frmvenda_pdv.ldata_venda.Caption;
          frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring     := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
          frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring    := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
          frmmodulo.QRORCAMENTO.fieldbyname('codcaixa').asstring       := '000099';
          frmmodulo.QRORCAMENTO.fieldbyname('TOTAL').asfloat           := rtotal.value;
          frmmodulo.QRORCAMENTO.fieldbyname('SUBTOTAL').asfloat        := rsubtotal.value;
          case comboforma.Itemindex of
          0 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_DINHEIRO').asfloat   := rtotal.Value;
          1 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_CHEQUEAV').asfloat    := rtotal.Value;
          2 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_CARTAODEB').asfloat  := rtotal.Value;
          end;
          FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
          FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
          frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := 'A VISTA';
          frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
          frmmodulo.QRORCAMENTO.fieldbyname('tipo').asinteger := 0;
          frmmodulo.qrorcamento.fieldbyname('situacao').asinteger := 1;
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
       frmprincipal.msg('INFO','PRÉ-VENDA CONCLUÍDA!'+#13+'NÚMERO: '+numero_orcamento,false,false,true,'');
      end
      else
      begin


    
          codigo_venda := frmprincipal.codifica('000048');
    // lancamento da venda




          // lancamento de venda a vista no prevenda

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
          0 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_DINHEIRO').asfloat   := rtotal.Value;
          1 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_CHEQUEAV').asfloat    := rtotal.Value;
          2 : FRMMODULO.QRORCAMENTO.FIELDBYNAME('meio_CARTAODEB').asfloat  := rtotal.Value;
          end;
          FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
          FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
          frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := 'A VISTA';
          frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
          frmmodulo.QRORCAMENTO.fieldbyname('cupom_fiscal').asinteger := 0;
          frmmodulo.QRORCAMENTO.fieldbyname('tipo').asinteger := 0;
          frmmodulo.qrorcamento.fieldbyname('situacao').asinteger := 1;
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


            frmprincipal.msg('INFO','PRÉ-VENDA CONCLUÍDA!'+#13+'NÚMERO: '+codigo_venda,false,false,true,'');

            frmmodulo.Conexao.Commit;
            frmmodulo.ConexaoLocal.Commit;


    end;



      close;
      frmvenda_pdv.close;



end;

procedure Tfrmvenda_fechamento_avista.bcancelarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bcancelarClick(frmvenda_fechamento_avista);
end;

procedure Tfrmvenda_fechamento_avista.bgravarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravarClick(frmvenda_fechamento_avista);
end;

procedure Tfrmvenda_fechamento_avista.rdinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_avista.comboformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.setfocus;
end;

procedure Tfrmvenda_fechamento_avista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.




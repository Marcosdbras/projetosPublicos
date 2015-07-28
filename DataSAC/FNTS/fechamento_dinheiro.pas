unit fechamento_dinheiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ToolEdit, CurrEdit;

type
  Tfrmfechamento_dinheiro = class(TForm)
    Label2: TLabel;
    rdinheiro: TRxCalcEdit;
    HeaderView1: THeaderView;
    procedure FormShow(Sender: TObject);
    procedure rdinheiroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfechamento_dinheiro: Tfrmfechamento_dinheiro;

implementation

uses principal, troco, modulo, ecf_daruma, ecf_bematech, ecf_sweda,
  ecf_urano, ecf_yanco;

{$R *.dfm}

procedure Tfrmfechamento_dinheiro.FormShow(Sender: TObject);
begin
  rdinheiro.value := FRMPRINCIPAL.rtotalGERAL.value;
  rdinheiro.SetFocus;
end;

procedure Tfrmfechamento_dinheiro.rdinheiroKeyPress(Sender: TObject;
  var Key: Char);
  var cod_cliente, texto2, texto3 : string;
begin
if key = #13 then
begin
  RDINHEIRO.Enabled := FALSE;
  if rdinheiro.value = 0 then
  begin
    application.messagebox('Valor Zerado! Impossível prosseguir!','Erro',mb_ok+mb_iconerror);
    RDINHEIRO.Enabled := TRUE;
    rdinheiro.setfocus;
    rdinheiro.selectall;
    exit;
  end;

  if (rdinheiro.Value - FRMPRINCIPAL.rtotalGERAL.value) <> 0 then
  begin
    IF RDINHEIRO.VALUE > FRMPRINCIPAL.rtotalGERAL.value THEN
    BEGIN
      frmvenda_troco := tfrmvenda_troco.create(self);
      frmvenda_troco.ltroco.caption := FORMATFLOAT('###,###,##0.00',(rdinheiro.Value - FRMPRINCIPAL.rtotalGERAL.value));
      frmvenda_troco.showmodal;
    END
    ELSE
    BEGIN
      application.MessageBox('O valor informado é menor que o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
      RDINHEIRO.Enabled := TRUE;
      rdinheiro.setfocus;
      rdinheiro.selectall;
      exit;
    END;
  end;





  IF ECF_MODELO = '' THEN
  BEGIN
//
  END
  ELSE
  BEGIN
    try

      IF ECF_MODELO = 'DARUMA' THEN FRMECF_DARUMA.ecf_abre_gaveta(ecf_modelo);
      IF ECF_MODELO = 'BEMATECH' THEN FRMECF_BEMATECH.ecf_abre_gaveta(ecf_modelo);
      IF ECF_MODELO = 'SWEDA' THEN FRMECF_SWEDA.ecf_abre_gaveta(ecf_modelo);
      IF ECF_MODELO = 'URANO' THEN FRMECF_URANO.ecf_abre_gaveta(ecf_modelo);
      IF ECF_MODELO = 'YANCO' THEN FRMECF_YANCO.ecf_abre_gaveta(ecf_modelo);



      IF ECF_MODELO = 'DARUMA' THEN if frmecf_daruma.ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,FRMPRINCIPAL.rtotalGERAL.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE;end;
      IF ECF_MODELO = 'BEMATECH' THEN if frmecf_BEMATECH.ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,FRMPRINCIPAL.rtotalGERAL.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'SWEDA' THEN if frmecf_SWEDA.ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,FRMPRINCIPAL.rtotalGERAL.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'URANO' THEN if frmecf_URANO.ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,FRMPRINCIPAL.rtotalGERAL.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'YANCO' THEN if frmecf_YANCO.ecf_inicia_fechamento_cupom(ecf_modelo,'D','$',0,FRMPRINCIPAL.rtotalGERAL.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;



      if ecf_modelo = 'SWEDA'    then if FRMECF_SWEDA.ecf_efetua_forma_pgto_especial(ecf_modelo,'',rdinheiro.value,'',0,'',0,'',0,'',0,'',0) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'DARUMA'   THEN if frmecf_daruma.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,rdinheiro.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'BEMATECH' THEN if frmecf_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,rdinheiro.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'URANO'    THEN if frmecf_URANO.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,rdinheiro.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      IF ECF_MODELO = 'YANCO'    THEN if frmecf_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,rdinheiro.value) = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;



      if ecf_modelo = 'SWEDA' then if frmecf_SWEDA.ecf_termina_fechamento_especial(ecf_modelo,'','','') = 'ERRO' then begin exit; RDINHEIRO.Enabled := TRUE; end;
      if ecf_modelo = 'DARUMA' then IF FRMECF_DARUMA.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+'              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN begin exit; RDINHEIRO.Enabled := TRUE; end;
      if ecf_modelo = 'BEMATECH' then IF FRMECF_BEMATECH.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+'              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN begin exit; RDINHEIRO.Enabled := TRUE; end;
      if ecf_modelo = 'URANO' then IF FRMECF_URANO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+'              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN begin exit; RDINHEIRO.Enabled := TRUE; end;
      if ecf_modelo = 'YANCO' then IF FRMECF_YANCO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+'              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN begin exit; RDINHEIRO.Enabled := TRUE; end;


    except
      application.messagebox('Houve falha na impressao do cupom! Todo o procedimento será abortado!','Erro!',mb_ok+mb_iconerror);
        with frmprincipal do
        begin
        rqtde.value := 0;
        runitario.value := 0;
        rtotal.value := 0;
        rtotalgeral.Value := 0;
        pcupom.visible := false;
        eproduto.text := '';
        Estatus.TEXT := '...';
        LTOTAL.Caption := '';
        lproduto.CAPTION := '';
        venda_aberta := FALSE;
        end;
        frmmodulo.Conexao.Rollback;
        close;
         RDINHEIRO.Enabled := TRUE;
        exit;
    end;
  END;









       numero_venda := frmprincipal.codifica('000048',7);
       COD_CLIENTE := 'S/CLIE';


      rdinheiro.value := FRMPRINCIPAL.rtotalGERAL.value;

      frmmodulo.qrvenda.close;
      frmmodulo.qrvenda.sql.clear;
      frmmodulo.qrvenda.sql.add('insert into c000048');
      frmmodulo.qrvenda.sql.add('(codigo,data,codcliente,codvendedor,');
      frmmodulo.qrvenda.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
      frmmodulo.qrvenda.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
      frmmodulo.qrvenda.SQL.add('meio_cartaodeb,meio_crediario,desconto,acrescimo,');
      frmmodulo.qrvenda.sql.add('cupom_fiscal,numero_cupom_fiscal)');
      frmmodulo.qrvenda.sql.add('values');
      frmmodulo.qrvenda.sql.add('('''+numero_venda+''',:datax,'''+cod_cliente+''',''S/VEND'',');
      frmmodulo.qrvenda.sql.add(''''+CODIGO_CAIXA+''',:TOTAL,:SUBTOTAL,:DINHEIRO,');
      frmmodulo.qrvenda.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
      frmmodulo.qrvenda.SQL.add(':CARTAODEB,:CREDIARIO,:DESCONTO,:ACRESCIMO,');
      frmmodulo.qrvenda.sql.add('1,'''+FRMPRINCIPAL.zerarcodigo(numero_cupom,6)+''')');
      frmmodulo.qrvenda.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
      frmmodulo.qrvenda.Params.ParamByName('TOTAL').asFLOAT := FRMPRINCIPAL.rtotalGERAL.value;
      frmmodulo.qrvenda.Params.ParamByName('SUBTOTAL').asFLOAT := FRMPRINCIPAL.rtotalGERAL.value;
      frmmodulo.qrvenda.Params.ParamByName('DINHEIRO').asFLOAT := RDINHEIRO.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CHEQUEAV').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('CHEQUEAP').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('CARTAODEB').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('CARTAOCRED').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('CREDIARIO').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('DESCONTO').asFLOAT := 0;
      frmmodulo.qrvenda.Params.ParamByName('ACRESCIMO').asFLOAT := 0;
      FRMMODULO.QRVENDA.ExecSQL;

      frmmodulo.qrcaixa_mov.close;
      frmmodulo.qrcaixa_mov.sql.clear;
      frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
      frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
      frmmodulo.qrcaixa_mov.sql.add('values');
      frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
      frmmodulo.qrcaixa_mov.sql.add(':VALOR,:VALOR,''100001'',3,''Venda ECF No. '+numero_venda+' - '+consumidor_nome+''')');
      frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
      FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rdinheiro.value;
      FRMMODULO.qrcaixa_mov.ExecSQL;


            if ecf_modelo <> '' then
            begin
              TEXTO2 := frmprincipal.lecf_serie.caption;
              TEXTO3 := frmprincipal.lecf_caixa.caption;
            end;

        frmmodulo.qritem.First;
        while not frmmodulo.qritem.Eof do
        begin
          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.Add('insert into c000032');
          frmmodulo.qrproduto_mov.SQL.add('(codigo,codnota,serial,numeronota,');
          frmmodulo.qrproduto_mov.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
          frmmodulo.qrproduto_mov.SQL.add('total,unidade,aliquota,');
          frmmodulo.qrproduto_mov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          frmmodulo.qrproduto_mov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,CST)');
          frmmodulo.qrproduto_mov.SQL.add('values');
          frmmodulo.qrproduto_mov.SQL.add('('''+frmprincipal.codifica('000032',7)+''','''+numero_venda+''','''+frmmodulo.qritem.fieldbyname('ITEM').asstring+''','''+numero_cupom+''',');
          frmmodulo.qrproduto_mov.SQL.add(''''+frmmodulo.qritem.fieldbyname('codproduto').asstring+''',:QTDE,:qtde_mov,:UNITARIO,');
          frmmodulo.qrproduto_mov.SQL.add(':TOTAL,'''+frmmodulo.qritem.fieldbyname('unidade').AsString+''',:ALIQUOTA,');
          frmmodulo.qrproduto_mov.SQL.add(''''+frmmodulo.qritem.fieldbyname('item').asstring+''','''+numero_cupom+''',''2D'',');
          frmmodulo.qrproduto_mov.SQL.add(''''+TEXTO2+''','''+TEXTO3+''','''+cod_cliente+''',''S/VEND'',2,:datax,:CST)');
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := frmmodulo.qritem.fieldbyname('total').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('UNITARIO').ASFLOAT := frmmodulo.qritem.fieldbyname('UNITARIO').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := frmmodulo.qritem.fieldbyname('QTDE').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := frmmodulo.qritem.fieldbyname('QTDE').asfloat * (-1);
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('ALIQUOTA').ASFLOAT := frmmodulo.qritem.fieldbyname('ALIQUOTA').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('CST').ASSTRING := frmmodulo.qritem.fieldbyname('CST').asSTRING;
          FRMMODULO.QRPRODUTO_MOV.EXECSQL;

{          frmmodulo.qrproduto.close;
          frmmodulo.qrproduto.sql.clear;
          frmmodulo.qrproduto.sql.add('update c000025 set estoque = estoque - :qtde');
          frmmodulo.qrproduto.sql.add('where codigo = '''+frmmodulo.qritem.fieldbyname('codproduto').asstring+'''');
          frmmodulo.qrproduto.Params.ParamByName('qtde').asfloat := frmmodulo.qritem.fieldbyname('qtde').asfloat;
          frmmodulo.qrproduto.Execsql;}

          frmmodulo.qritem.next;
        end;






  frmmodulo.Conexao.Commit;
  frmmodulo.conexaoproduto.commit;

   RDINHEIRO.Enabled := TRUE;
  close;




  WITH FRMPRINCIPAL DO
  BEGIN

        rqtde.value := 0;
        runitario.value := 0;
        rtotal.value := 0;
        rtotalgeral.Value := 0;
        pcupom.visible := false;
        eproduto.text := '';
        Estatus.TEXT := '...';
        LTOTAL.Caption := '';
        lproduto.CAPTION := '';
        venda_aberta := FALSE;

  END;

  close;



end;
if key = #27 then
begin
  close;

end;
end;

end.

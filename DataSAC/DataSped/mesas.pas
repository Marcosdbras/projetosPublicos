unit mesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvOfficeImage, StdCtrls,
  RzLabel, jpeg, ExtCtrls, Menus, AdvMenus, DB, MemDS, DBAccess, IBC;

type
  TfrmMesas = class(TForm)
    Image1: TImage;
    lb_cliente: TRzLabel;
    img_cliente: TAdvOfficeImage;
    grid_venda: TNextGrid;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    pop_principal: TAdvPopupMenu;
    Retornar1: TMenuItem;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    qrMesa: TIBCQuery;
    tm_Atualiza: TTimer;
    RzLabel3: TRzLabel;
    Imprimir1: TMenuItem;
    QRITEM: TIBCQuery;
    NxNumberColumn1: TNxNumberColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure tm_AtualizaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMesas: TfrmMesas;

implementation

uses modulo, funcoes, principal, msg_Operador, venda, senha_supervisor,
  menu_fiscal,  unECF;

{$R *.dfm}

procedure TfrmMesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMesas.FormCreate(Sender: TObject);
begin
  left := 0;
  top := 0;
end;

procedure TfrmMesas.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMesas.tm_AtualizaTimer(Sender: TObject);
var i : integer;
x : integer;
sNumero_dav : string;
begin
//  frmMsg_Operador.lb_msg.caption := 'Aguarde! Atualizando relação de pré-vendas...';
//  frmMsg_Operador.show;
//  frmMsg_Operador.Refresh;

  if grid_venda.RowCount > 0 then
    if grid_venda.SelectedRow >= 0 then
      x := grid_venda.SelectedRow;


  tm_Atualiza.Enabled := false;

  qrMesa.close;
  qrMesa.sql.clear;
  qrMesa.sql.add('select sum(r000002.total) soma,');
  qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('from r000001, r000002');
  qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
  qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('order by r000001.codigo');
  qrMesa.open;

  grid_venda.ClearRows;

  qrMesa.First;
  while not qrMesa.Eof do
  begin
    i := grid_venda.AddRow(1);


    grid_venda.Cell[0,i].Asstring := qrMesa.fieldbyname('codigo').asstring;
    grid_venda.Cell[1,i].Asdatetime := qrMesa.fieldbyname('data').asdatetime;
    grid_venda.Cell[2,i].Asstring := qrMesa.fieldbyname('hora').asstring;
    grid_venda.Cell[3,i].Asfloat := qrMesa.fieldbyname('soma').asfloat;

    qrMesa.Next;
  end;
  grid_venda.SelectedRow := x;
  grid_venda.SetFocus;
  tm_Atualiza.Enabled := true;
//  hide;
//  frmmsg_Operador.Refresh;
end;

procedure TfrmMesas.FormShow(Sender: TObject);
begin
  tm_AtualizaTimer(frmMesas);
end;

procedure TfrmMesas.Finalizar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;
  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma mesa','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;



  i := grid_venda.SelectedRow;

  // filtrar os produtos
   frmmodulo.query_servidor.close;
   frmmodulo.query_servidor.sql.clear;
   frmmodulo.query_servidor.SQL.add('select r000002.*, C000025.produto, C000025.unidade,');
   frmmodulo.query_servidor.sql.add('c000025.cst, c000025.aliquota, c000025.codbarra');
   frmmodulo.query_servidor.sql.add('from r000002, c000025');
   frmmodulo.query_servidor.sql.add('where r000002.cod_produto = c000025.codigo');
   frmmodulo.query_servidor.sql.add('and r000002.cod_mesa = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
   frmmodulo.query_servidor.sql.add('order by r000002.codigo');
   frmmodulo.query_servidor.open;


   qritem.close;
   qritem.sql.clear;
   qritem.sql.add('select * from r000001');
   qritem.sql.add('where codigo = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
   qritem.open;



  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    Application.messagebox('Não itens lançados para esta Mesa!','Atenção!',mb_ok+mb_ICONerror);
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para esta mesa?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      bLanca_mesa := true;
      imesa_codigo := grid_venda.Cell[0,i].asinteger;
      smesa_Numero := 'ECF: '+zerar(qritem.fieldbyname('ecf').asstring,3)+' - Conferência de Mesa - '+
                      'CER No. '+zerar(qritem.fieldbyname('Cer').asstring,4)+' - '+
                      'COO No. '+zerar(qritem.fieldbyname('coo').asstring,6);

      close;
    end;
  end;
end;

procedure TfrmMesas.Cancelar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;

  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma MESA!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;

  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.showmodal;
  frmvenda.Imprime_display_anterior;
  // verisificar se o supervisor foi logado
  if not bSupervisor_autenticado then exit;




  i := grid_venda.SelectedRow;

    if application.messagebox('Confirma o cancelamento desta o.s.?','Atenção',mb_yesno+
                              MB_ICONWARNING) = idYes then
    begin
      bLanca_OS := true;
      iOS_cliente := grid_venda.cell[6,i].asinteger;
      iOS_vendedor := grid_venda.cell[7,i].asinteger;
      iOS_codigo := grid_venda.Cell[0,i].asinteger;
      sDav_Numero := 'DAV-OS'+ZERAR(grid_venda.Cell[1,i].asSTRING,10);




          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando a MESA nº '+grid_venda.cell[0,i].asstring+'...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;



          bLanca_OS := true;
          with frmVenda do
          begin
            if not Abre_Venda then
            begin
              // Caso o comando de abertura de venda retornou false, abortar o processo;
              application.messagebox('Erro ao abrir o cupom fiscal','Erro',mb_ok+MB_ICONERROR);
              exit;
            end;

            iOS_codigo := grid_venda.cell[0,i].AsInteger;


            // cancelar os servicos
            QRITEM.CLOSE;
            QRITEM.SQL.CLEAR;
            QRITEM.SQL.ADD('select sum(valor) total from c000053');
            qritem.sql.add('where codos = '''+qrMesa.fieldbyname('codigo').asstring+'''');
            QRITEM.OPEN;

            if qritem.FieldByName('total').asfloat > 0 then
            begin
              sProd_nome := 'PRESTAC.DE SERVICO MUNICIPAL';
              sProd_unidade := 'UN';
              sProd_CST := '041';
              rProd_aliquota := 0;
              iProd_codigo := 999999;
              sProd_barra := '9999999999999';
              rProd_qtde    := qritem.fieldbyname('total').asfloat;
              rProd_preco   := 1;
              rProd_total := qritem.fieldbyname('total').asfloat;
              rProd_desconto := 0;
              rProd_acrescimo := 0;
              // registrar o item
              Registra_Item;
              frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;
              Application.ProcessMessages;

            end;





            frmmodulo.query_servidor.close;
            frmmodulo.query_servidor.SQL.clear;
            frmmodulo.query_servidor.sql.add('Select c000032.*, c000025.produto');
            frmmodulo.query_servidor.sql.add('from c000032, c000025');
            frmmodulo.query_servidor.sql.add('where c000032.codproduto = c000025.codigo');
            frmmodulo.query_servidor.sql.add('and c000032.codNota = '''+grid_venda.cell[0,grid_venda.selectedrow].asstring+'''');
            frmmodulo.query_servidor.open;

            // vender os itens
            // rodar a query do modulo filtrada com os produtos da OS
            frmmodulo.query_servidor.first;
            while not frmmodulo.query_servidor.eof do
            begin
              sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
              sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
              sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
              rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
              iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
              sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
              rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
              rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
              rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
              rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
              rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
              // registrar o item
              Registra_Item;
              frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;
              Application.ProcessMessages;
              frmmodulo.query_servidor.next;
            end;
            Cancela_cupom_aberto;
          end;
          Application.processmessages;

        bLanca_OS := false;
        grid_venda.ClearRows;
        frmMsg_Operador.Hide;
        frmMsg_Operador.Refresh;
    end;
end;

procedure TfrmMesas.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmMesas.Imprimir1Click(Sender: TObject);
var i : integer;
sNumero_Dav : string;
Rsoma : real;
begin

   if grid_venda.RowCount = 0 then exit;

   if grid_venda.SelectedRow < 0 then
   begin
     Application.MessageBox('Favor selecionar uma Mesa!','Atenção',MB_OK+MB_ICONWARNING);
     exit;
   end;





  repeat

    sMsg := cECF_Abre_Gerencial(iECF_Modelo,'CONFERÊNCIA DE MESA');
    sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
    if sMsg <> 'OK' then
    begin
      if application.messagebox(pansichar('Erro no ECF!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                          mb_iconerror) = idNo then
      begin
        break;
      end;
    end
    else
    begin
      // extrair do ecf o numero dos contadores

      sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
      sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
    end;
  until sMsg = 'OK';

  if sMsg = 'OK' then
  begin


      // Cabecalho
      repeat

        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'*****   AGUARDE A EMISSAO DO CUPOM FISCAL  *****');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Numero da Mesa: '+grid_venda.cell[0,grid_venda.selectedrow].asstring);
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Abertura......: '+grid_venda.cell[1,grid_venda.selectedrow].asstring+' '+
                                                                  grid_venda.cell[2,grid_venda.selectedrow].asstring);

        if sMsg <> 'OK' then
        begin
          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;
        end;
      until sMsg = 'OK';
  end;


   rSoma := 0;
   qritem.close;
   qritem.sql.clear;
   qritem.SQL.add('select r000002.*, C000025.produto, C000025.unidade');
   qritem.sql.add('from r000002, c000025');
   qritem.sql.add('where r000002.cod_produto = c000025.codigo');
   qritem.sql.add('and r000002.cod_mesa = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
   qritem.sql.add('order by r000002.codigo');
   qritem.open;

  if (sMsg = 'OK') and (qritem.RecordCount > 0) then
  begin
     qritem.first;
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '------------------------------------------------');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       'Item Codigo        Descricao');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '                    Qtde Un.  Vl.Unit    Vl.Item');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '------------------------------------------------');


      i := 1;
      while not qritem.eof do
      begin
        repeat
          if qritem.fieldbyname('cancelado').asfloat = 0 then
          begin

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            texto_justifica(IntToStr(i),3,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('cod_produto').asstring,13,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('produto').asstring,30,' ',taEsquerda));

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'              '+
            texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('qtde').asfloat),10,' ',taDireita)+
            texto_justifica(qritem.fieldbyname('unidade').asstring,2,' ',taEsquerda)+' '+
            texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('unitario').asfloat),10,' ',taDireita)+
            texto_justifica(formatfloat('###,###,##0.00',qritem.fieldbyname('total').asfloat),11,' ',taDireita));

          rsoma := rsoma + qritem.fieldbyname('total').asfloat;

          end
          else
          begin

            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              texto_justifica(IntToStr(i),3,'0',taDireita)+' '+
              texto_justifica(qritem.fieldbyname('cod_produto').asstring,13,'0',taDireita)+' '+
              texto_justifica('** CANCELADO ** '+qritem.fieldbyname('produto').asstring,30,' ',taEsquerda));

            SMsg := cECF_Usa_Gerencial(iECF_Modelo,'              '+
              texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('qtde').asfloat),10,' ',taDireita)+
              texto_justifica(qritem.fieldbyname('unidade').asstring,2,' ',taEsquerda)+' '+
              texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('unitario').asfloat),10,' ',taDireita)+
              texto_justifica(formatfloat('###,###,##0.00',qritem.fieldbyname('total').asfloat),11,' ',taDireita));

          end;

          if sMsg <> 'OK' then
          begin
            if application.messagebox(pansichar('Erro no ECF!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                mb_iconerror) = idNo then
            begin
              break;
            end;
          end
        until sMsg = 'OK';
        inc(i);
        qritem.Next;
      end;

      if sMsg = 'OK' then
      begin




        // Rodape dos Produtos
        repeat

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                               Total:'+texto_justifica(formatfloat('###,###,##0.00',rsoma),11,' ',taDireita));

          if sMsg <> 'OK' then
          begin
            if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
            begin
              break;
            end;
          end;
        until sMsg = 'OK';
      end;
  end; // produtos


  SMsg := cECF_Usa_Gerencial(iECF_Modelo,'*****   AGUARDE A EMISSAO DO CUPOM FISCAL  *****');


  (* FECHAMENTO *)
  IF SMSG = 'OK' THEN
  BEGIN

    repeat
      sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
      if sMsg <> 'OK' then
      begin
        if application.messagebox(pansichar('Erro no ECF!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                            mb_iconerror) = idNo then
        begin
          break;
        end;
      end
      else
      begin

        sCER := cECF_Numero_Contador_Gerencial(iECF_Modelo);

        // registrar Gerencial no banco de dados
        with frmmodulo do
        begin
          spNao_Fiscal.Close;
          spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
          spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
          spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
          spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
          spNao_fiscal.ParamByName('indice').asstring := 'RG';
          spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
          spNao_fiscal.ParamByName('valor').asfloat := 0;
          spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
          spNao_fiscal.ParamByName('GNF').asstring := sGNF;
          spNao_fiscal.ParamByName('GRG').asstring := sGRG;
          spNao_fiscal.ParamByName('CDC').Clear;
          spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
          spNao_Fiscal.Prepare;
          spNao_Fiscal.Execute;
        end;

        frmmodulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('update r000001 set COO = '''+sNumero_Cupom+''',');
        frmmodulo.query_servidor.sql.add('CER = '''+sCER+''',');
        frmmodulo.query_servidor.sql.add('ecf = '''+sECF_Caixa+'''');
        frmmodulo.query_servidor.sql.add('where codigo = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
        frmmodulo.query_servidor.ExecSQL;

      end;
    until sMsg = 'OK';
  end;

  tm_AtualizaTimer(frmMesas);

end;

end.

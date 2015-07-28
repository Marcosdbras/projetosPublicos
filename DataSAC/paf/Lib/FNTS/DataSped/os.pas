unit os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvOfficeImage, StdCtrls,
  RzLabel, jpeg, ExtCtrls, Menus, AdvMenus, DB, MemDS, DBAccess, IBC;

type
  TfrmOS = class(TForm)
    Image1: TImage;
    lb_cliente: TRzLabel;
    img_cliente: TAdvOfficeImage;
    grid_venda: TNextGrid;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    NxTextColumn1: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    pop_principal: TAdvPopupMenu;
    Retornar1: TMenuItem;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    qrOs: TIBCQuery;
    tm_Atualiza: TTimer;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Imprimir1: TMenuItem;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    QRITEM: TIBCQuery;
    NxNumberColumn6: TNxNumberColumn;
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
  frmOS: TfrmOS;

implementation

uses modulo, funcoes, principal, msg_Operador, venda, senha_supervisor,
  menu_fiscal,  unECF;

{$R *.dfm}

procedure TfrmOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOS.FormCreate(Sender: TObject);
begin
  left := 0;
  top := 0;
end;

procedure TfrmOS.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOS.tm_AtualizaTimer(Sender: TObject);
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
  qrOS.CLOSE;
  qrOS.SQL.CLEAR;
  qrOS.SQL.ADD('select');
  qrOS.SQL.ADD('  c000051.*,');
  qrOS.SQL.ADD('  c000007.Nome Cliente,');
  qrOS.SQL.ADD('  c000008.Nome Vendedor');
  qrOS.SQL.ADD('from');
  qrOS.SQL.ADD('  c000051, c000007, c000008');
  qrOS.SQL.ADD('where');
  qrOS.SQL.ADD('  c000051.codcliente = c000007.codigo and');
  qrOS.SQL.ADD('  c000051.codatendente = c000008.codigo and');
  qrOS.SQL.ADD('  c000051.situacao like ''ABERTA%''');
  qrOS.sql.add('ORDER BY c000051.CODIGO');
  qrOS.OPEN;

  grid_venda.ClearRows;

  qrOS.First;
  while not qrOS.Eof do
  begin
    i := grid_venda.AddRow(1);


    if qros.fieldbyname('dav_atual').asstring = '' then
    begin
      frmmodulo.spDav_Codigo.Prepare;
      frmmodulo.spDav_Codigo.Execute;
      sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
      while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
      sNumero_Dav := '9000'+sNumero_Dav;
      qros.edit;
      qros.fieldbyname('dav_atual').asstring := snumero_dav;
      qros.Post;
      with frmmodulo do
      begin
          spDav.Close;
          spDav.parambyname('codigo').asstring := snumero_dav;
          spDav.ParamByName('ECF').ASSTRING := sECF_Serial;
          spDav.ParamByName('coo').asstring := '';
          spDav.ParamByName('numero').asstring := sNumero_Dav;
          spDav.ParamByName('data').asdatetime := dData_sistema;
          spDav.ParamByName('titulo').asstring := 'OS';
          spDav.ParamByName('valor').asfloat := qros.fieldbyname('total').asfloat;

          spDav.Prepare;
          spDav.Execute;
      end;
    end;

    grid_venda.Cell[0,i].Asstring := qrOS.fieldbyname('codigo').asstring;
    grid_venda.Cell[1,i].Asstring := qrOS.fieldbyname('dav_atual').asstring;
    grid_venda.Cell[2,i].AsDateTime := qrOS.fieldbyname('data').asdatetime;
    grid_venda.Cell[3,i].Asstring := qrOS.fieldbyname('cliente').asstring;
    grid_venda.Cell[4,i].Asfloat := qrOS.fieldbyname('total').asfloat;
    grid_venda.Cell[5,i].Asstring := qrOS.fieldbyname('vendedor').asstring;
    grid_venda.Cell[6,i].Asstring := qrOS.fieldbyname('codcliente').asstring;
    grid_venda.Cell[7,i].Asstring := qrOS.fieldbyname('codAtendente').asstring;


    grid_venda.Cell[10,i].Asstring := qrOS.fieldbyname('dav').asstring;
    grid_venda.Cell[11,i].asinteger := qros.fieldbyname('dav_impresso').asinteger;

    qrOS.Next;
  end;
  grid_venda.SelectedRow := x;
  grid_venda.SetFocus;
  tm_Atualiza.Enabled := true;
//  hide;
//  frmmsg_Operador.Refresh;
end;

procedure TfrmOS.FormShow(Sender: TObject);
begin
  tm_AtualizaTimer(frmos);
end;

procedure TfrmOS.Finalizar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;
  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma ordem de serviço!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;

  if grid_venda.cell[1,grid_venda.SelectedRow].asstring = '' then
  begin
    application.MessageBox('O DAV desta OS não foi impresso!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;


  i := grid_venda.SelectedRow;

  // filtrar os produtos
  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.Clear;
  frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
  frmmodulo.query_servidor.sql.add('from c000032 orc,');
  frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+
                  grid_venda.cell[0,i].asstring+'''');
  frmmodulo.query_servidor.Open;


  QRITEM.SQL.CLEAR;
  QRITEM.SQL.ADD('select * from c000053');
  qritem.sql.add('where codos = '''+qros.fieldbyname('codigo').asstring+'''');
  QRITEM.OPEN;




  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    if Application.messagebox('Não itens ou serviços lançados para esta O.S.! Deseja fazer o cancelamento?','Atenção!',mb_yesno+MB_ICONEXCLAMATION) = idno then
      exit
    else
      Cancelar1Click(frmOS);
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para esta O.s.?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      bLanca_OS := true;
      SDAV_ATUALIZADO := grid_venda.cell[1,i].asstring;
      iOS_cliente := grid_venda.cell[6,i].asinteger;
      iOS_vendedor := grid_venda.cell[7,i].asinteger;
      iOS_codigo := grid_venda.Cell[0,i].asinteger;
      sDav_Numero := 'DAV-OS'+ZERAR(grid_venda.Cell[1,i].asSTRING,10);
      close;
    end;
  end;
end;

procedure TfrmOS.Cancelar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;

  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma o.s.!','Atenção',MB_OK+MB_ICONWARNING);
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




          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
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
            qritem.sql.add('where codos = '''+qros.fieldbyname('codigo').asstring+'''');
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

procedure TfrmOS.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmOS.Imprimir1Click(Sender: TObject);
var i : integer;
sNumero_Dav : string;
begin

   if grid_venda.RowCount = 0 then exit;

   if grid_venda.SelectedRow < 0 then
   begin
     Application.MessageBox('Favor selecionar uma O.S.!','Atenção',MB_OK+MB_ICONWARNING);
     exit;
   end;





  qrOS.CLOSE;
  qrOS.SQL.CLEAR;
  qrOS.SQL.ADD('select');
  qrOS.SQL.ADD('  c000051.*,');
  qrOS.SQL.ADD('  c000007.Nome Cliente,');
  qros.SQL.add('  c000007.cpf as cnpj,');
  qrOS.SQL.ADD('  c000008.Nome Vendedor');
  qrOS.SQL.ADD('from');
  qrOS.SQL.ADD('  c000051, c000007, c000008');
  qrOS.SQL.ADD('where');
  qrOS.SQL.ADD('  c000051.codcliente = c000007.codigo and');
  qrOS.SQL.ADD('  c000051.codatendente = c000008.codigo and');
  qrOS.SQL.ADD('  c000051.situacao like ''ABERTA%'' and ');
  qros.sql.add('  c000051.codigo = '''+grid_venda.Cell[0,grid_venda.selectedrow].asstring+'''');
  qrOS.sql.add('ORDER BY c000051.CODIGO');
  qrOS.OPEN;



  repeat

    sMsg := cECF_Abre_Gerencial(iECF_Modelo,'DOCUMENTO AUXILIAR DE VENDA - ORDEM DE SERVIÇO');
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

{      frmmodulo.spDav_Codigo.Prepare;
      frmmodulo.spDav_Codigo.Execute;
      sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
      while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
      sNumero_Dav := '9000'+sNumero_Dav;
}
      if grid_venda.cell[11,grid_venda.selectedrow].asinteger = 1 then
      begin
        frmmodulo.spDav_Codigo.Prepare;
        frmmodulo.spDav_Codigo.Execute;
        sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
        while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
        sNumero_Dav := '9000'+sNumero_Dav;
      end
      else
      begin
        snumero_dav := grid_venda.cell[1,grid_venda.selectedrow].asstring;
      end;


      // Cabecalho do DAV
      repeat

        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'  N Ã O   É   D O C U M E N T O   F I S C A L   ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'N Ã O   É   V Á L I D O   C O M O   R E C I B O ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'         E   C O M O   G A R A N T I A          ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'           D E   M E R C A D O R I A            ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'   N Ã O   C O M P R O V A   P A G A M E N T O  ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'                                                ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Identificação do Destinatario                   ');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Nome: '+texto_justifica(
                                               (grid_venda.cell[3,grid_venda.selectedrow].asstring)
                                               ,42,' ',taEsquerda));
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'CPF/CNPJ: '+texto_justifica(
                                               qros.fieldbyname('cnpj').asstring
                                               ,38,' ',taEsquerda));



        if iDav_Os_tipo = 0 then // Comum
        begin
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Identificação do Equipamento                    ');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Marca.: '+qros.fieldbyname('Marca').asstring);
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Modelo: '+qros.fieldbyname('Modelo').asstring);
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'No.Fabricação: '+qros.fieldbyname('Serial').asstring);
        end
        else
        begin
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Identificação do Veículo                        ');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Marca/Modelo: '+qros.fieldbyname('Marca').asstring);
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Ano: '+qros.fieldbyname('Modelo').asstring);
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Placa: '+qros.fieldbyname('Serial').asstring);
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Renavan: '+qros.fieldbyname('chassi').asstring);
        end;
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');

        // numero do Dav


        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          texto_justifica('DAV: '+sNumero_Dav,42,' ',taEsquerda));

    {
         if grid_venda.cell[10,grid_venda.selectedrow].asstring <> '' then
        begin
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'Nº do(s) Documento(s) Anterior(es): '+
            grid_venda.cell[1,grid_venda.selectedrow].asstring+', '+
            grid_venda.cell[10,grid_venda.selectedrow].asstring);
        end
        else
        begin
          if grid_venda.cell[1,grid_venda.selectedrow].asstring <> '' then
          begin
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
             'Nº do(s) Documento(s) Anterior(es): '+
             grid_venda.cell[1,grid_venda.selectedrow].asstring)
          end;
        end;
     }

        if (grid_venda.cell[10,grid_venda.selectedrow].asstring <> '') then
        begin
          if (grid_venda.cell[11,grid_venda.SelectedRow].asinteger =  1) then
          begin
            if (grid_venda.cell[10,grid_venda.selectedrow].asstring = grid_venda.cell[1,grid_venda.selectedrow].asstring) then
            begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
                'Nº do(s) Documento(s) Anterior(es): '+
                grid_venda.cell[10,grid_venda.selectedrow].asstring);
            end
            else
            begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
                'Nº do(s) Documento(s) Anterior(es): '+
                grid_venda.cell[1,grid_venda.selectedrow].asstring+', '+
                grid_venda.cell[10,grid_venda.selectedrow].asstring);
            end;
          end
          else
          begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
                'Nº do(s) Documento(s) Anterior(es): '+
                grid_venda.cell[10,grid_venda.selectedrow].asstring);
          end;
        end
        else
        begin
          if (grid_venda.cell[11,grid_venda.SelectedRow].asinteger =  1) then
          begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
                'Nº do(s) Documento(s) Anterior(es): '+
                grid_venda.cell[1,grid_venda.selectedrow].asstring);
          end;
        end;




        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Nº do Documento Fiscal: xxxxxx');


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

  (* S E R V I C O S *)
  QRITEM.CLOSE;
  QRITEM.SQL.CLEAR;
  QRITEM.SQL.ADD('select * from c000053');
  qritem.sql.add('where codos = '''+qros.fieldbyname('codigo').asstring+'''');
  QRITEM.OPEN;
  if (sMsg = 'OK') and (qritem.RecordCount > 0) then
  begin
     qritem.first;
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,'     S E R V I Ç O S    E X E C U T A D O S     ');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '------------------------------------------------');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       'Item Codigo Descricao');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '                    Qtde Un.  Vl.Unit    V.Total');
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,
       '------------------------------------------------');


      i := 1;
      while not qritem.eof do
      begin
        repeat
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            texto_justifica(IntToStr(i),3,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('codservico').asstring,6,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('servico').asstring,37,' ',taEsquerda));

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'              '+
            texto_justifica('1',10,' ',taDireita)+
            texto_justifica('UN',2,' ',taEsquerda)+' '+
            texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('valor').asfloat),10,' ',taDireita)+
            texto_justifica(formatfloat('###,###,##0.00',qritem.fieldbyname('valor').asfloat),11,' ',taDireita));


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




        // Rodape dos servicos
        repeat

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            Subtotal:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('servico_subtotal').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('servico_desconto').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                               Total:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('servico_total').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');

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







  (* P R O D U T O S*)
   qrItem.close;
   qrItem.SQL.clear;
   qrItem.sql.add('Select c000032.*, c000025.produto');
   qritem.sql.add('from c000032, c000025');
   qrItem.sql.add('where c000032.codproduto = c000025.codigo');
   qritem.sql.add('and c000032.codNota = '''+grid_venda.cell[0,grid_venda.selectedrow].asstring+'''');
   qritem.open;


  if (sMsg = 'OK') and (qritem.RecordCount > 0) then
  begin
     qritem.first;
     SMsg := cECF_Usa_Gerencial(iECF_Modelo,'  M E R C A D O R I A S    U T I L I Z A D A S  ');
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
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            texto_justifica(IntToStr(i),3,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('codproduto').asstring,13,'0',taDireita)+' '+
            texto_justifica(qritem.fieldbyname('produto').asstring,30,' ',taEsquerda));

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'              '+
            texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('qtde').asfloat),10,' ',taDireita)+
            texto_justifica(qritem.fieldbyname('unidade').asstring,2,' ',taEsquerda)+' '+
            texto_justifica(formatfloat('###,###,##0.000',qritem.fieldbyname('unitario').asfloat),10,' ',taDireita)+
            texto_justifica(formatfloat('###,###,##0.00',qritem.fieldbyname('total').asfloat),11,' ',taDireita));

          if qritem.fieldbyname('desconto').asfloat > 0 then
          begin
             SMsg := cECF_Usa_Gerencial(iECF_Modelo,'              '+
               'Desconto:  -'+texto_justifica(formatfloat('###,###,##0.00',qritem.fieldbyname('desconto').asfloat),8,' ',taDireita));
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
            '                            Subtotal:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('produto_subtotal').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('produto_desconto').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                               Total:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('produto_total').asfloat),11,' ',taDireita));

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




      if sMsg = 'OK' then
      begin
        // Rodape dos servicos
        repeat

          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '    T O T A L I Z A Ç Ã O    D A    O . S .     ');            


          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            Subtotal:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('subtotal').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('desconto').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                               Total:'+texto_justifica(formatfloat('###,###,##0.00',qros.fieldbyname('total').asfloat),11,' ',taDireita));
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');

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
        // registrar o DAV
        with frmmodulo do
        begin
          showmessage('Número do DAV: '+snumero_dav);

          query.close;
          query.sql.clear;
          query.sql.add('select * from DAV where numero =  '''+sNumero_Dav+'''');
          query.open;

          if query.RecordCount = 0 then
          begin
            spDav.Close;
            spDav.parambyname('codigo').asstring := codifica_cupom;
            spDav.ParamByName('ECF').ASSTRING := sECF_Serial;
            spDav.ParamByName('coo').asstring := snumero_cupom;
            spDav.ParamByName('numero').asstring := sNumero_Dav;
            spDav.ParamByName('data').asdatetime := dData_sistema;
            spDav.ParamByName('titulo').asstring := 'OS';
            spDav.ParamByName('valor').asfloat := grid_venda.Cell[4,grid_venda.SelectedRow].AsFloat;
            spDav.Prepare;
            spDav.Execute;
          end
          else
          begin
            query.close;
            query.sql.clear;
            query.sql.add('update dav set coo = '''+sNumero_cupom+'''');
            query.execsql;
          end;
        end;

        frmModulo.query_servidor.Close;
        frmmodulo.query_servidor.SQL.Clear;
        frmmodulo.query_servidor.SQL.add('update c000051');
        frmmodulo.query_servidor.sql.add('set dav_impresso = 1, dav_atual = '''+sNumero_DAV+'''');
        if grid_venda.cell[11,grid_venda.SelectedRow].asinteger =  1 then
        begin
          frmmodulo.query_servidor.SQL.add(',dav = '''+
            grid_venda.Cell[1,grid_venda.SelectedRow].AsString+','+
            grid_venda.cell[10,grid_venda.selectedrow].asstring+'''');
        end;
        frmmodulo.query_servidor.sql.add('where codigo = '''+grid_venda.cell[0,grid_venda.selectedrow].asstring+'''');
        frmmodulo.query_servidor.ExecSQL;
        
      end;
    until sMsg = 'OK';
  end;

  tm_AtualizaTimer(frmos);

end;

end.

unit Orcamento_Abrir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, ToolEdit, StdCtrls, Buttons, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  DB, MemDS, DBAccess, IBC, Menus, AdvMenus, ComCtrls;

type
  TfrmOrcamento_Abrir = class(TForm)
    grid: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bt_filtrar: TBitBtn;
    ed_cod_cliente: TEdit;
    Button1: TButton;
    ed_nome_cliente: TEdit;
    ed_inicial: TDateEdit;
    ed_final: TDateEdit;
    Bevel2: TBevel;
    Label4: TLabel;
    ed_numero: TEdit;
    NxTextColumn2: TNxTextColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    bt_imprimir: TButton;
    Button3: TButton;
    query: TIBCQuery;
    NxNumberColumn1: TNxTextColumn;
    qrItem: TIBCQuery;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    StatusBar1: TStatusBar;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    dav_anterior: TNxTextColumn;
    Button2: TButton;
    NxNumberColumn7: TNxNumberColumn;
    ImprimirDAV1: TMenuItem;
    CupomFiscal1: TMenuItem;
    Sair1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_filtrarClick(Sender: TObject);
    procedure ed_numeroKeyPress(Sender: TObject; var Key: Char);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure ed_inicialKeyPress(Sender: TObject; var Key: Char);
    procedure ed_finalKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento_Abrir: TfrmOrcamento_Abrir;

implementation

uses modulo, funcoes, principal, unECF, menu_fiscal;

{$R *.dfm}

procedure TfrmOrcamento_Abrir.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento_Abrir.bt_imprimirClick(Sender: TObject);
var i : integer;
sNumero_Dav : string;
begin
   if bt_imprimir.Visible = false then exit;


   if grid.RowCount = 0 then exit;

   if grid.SelectedRow < 0 then
   begin
     Application.MessageBox('Favor selecionar um orçamento!','Atenção',MB_OK+MB_ICONWARNING);
     exit;
   end;

  repeat

    sMsg := cECF_Abre_Gerencial(iECF_Modelo,'DOCUMENTO AUXILIAR DE VENDA - ORCAMENTO');
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
      IF grid.CELL[1,GRID.SELECTEDROW].ASSTRING = '' THEN
      BEGIN

        frmmodulo.spDav_Codigo.Prepare;
        frmmodulo.spDav_Codigo.Execute;
        sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
        while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
        sNumero_Dav := '9000'+sNumero_Dav;
      END
      ELSE
      BEGIN
        if grid.cell[10,grid.selectedrow].asstring <> '' then
        begin
          frmmodulo.spDav_Codigo.Prepare;
          frmmodulo.spDav_Codigo.Execute;
          sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
          while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
          sNumero_Dav := '9000'+sNumero_Dav;
        end
        else
        begin
          snumero_dav := grid.cell[1,grid.selectedrow].asstring;
        end;
      END;

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
                                               (grid.cell[3,grid.selectedrow].asstring)
                                               ,42,' ',taEsquerda));
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'CPF/CNPJ: '+texto_justifica(
                                               (grid.cell[6,grid.selectedrow].asstring)
                                               ,38,' ',taEsquerda));

        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        // numero do Dav




        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          texto_justifica('DAV: '+sNumero_Dav,42,' ',taEsquerda));


        if (grid.cell[10,grid.selectedrow].asstring <> '') then
        begin
          if (grid.cell[10,grid.selectedrow].asstring = grid.cell[1,grid.selectedrow].asstring) then
          begin
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              'Nº do(s) Documento(s) Anterior(es): '+
              grid.cell[10,grid.selectedrow].asstring);
          end
          else
          begin
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              'Nº do(s) Documento(s) Anterior(es): '+
              grid.cell[1,grid.selectedrow].asstring+', '+
              grid.cell[10,grid.selectedrow].asstring);
          end;
        end;



        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Nº do Documento Fiscal: xxxxxx');



        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          'Item Codigo        Descricao');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '                    Qtde Un.  Vl.Unit    Vl.Item');
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




  if sMsg = 'OK' then
  begin
   qrItem.close;
   qrItem.SQL.clear;
   qrItem.sql.add('Select c000075.*, c000025.produto');
   qritem.sql.add('from c000075, c000025');
   qrItem.sql.add('where c000075.codproduto = c000025.codigo');
   qritem.sql.add('and codNota = '''+grid.cell[0,grid.selectedrow].asstring+'''');
   qritem.open;
   qritem.first;



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




      // Rodape do DAV
      repeat

        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '                            Subtotal:'+texto_justifica(formatfloat('###,###,##0.00',grid.cell[7,grid.selectedrow].asfloat),11,' ',taDireita));
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',grid.cell[8,grid.selectedrow].asfloat),11,' ',taDireita));
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '                           Acrescimo:'+texto_justifica(formatfloat('###,###,##0.00',grid.cell[9,grid.selectedrow].asfloat),11,' ',taDireita));
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '                               Total:'+texto_justifica(formatfloat('###,###,##0.00',grid.cell[4,grid.selectedrow].asfloat),11,' ',taDireita));
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






  if sMsg = 'OK' then
  begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000076');
      query.sql.add('where codvenda = '''+grid.cell[0,grid.selectedrow].asstring+'''');
      query.sql.add('order by data_vencimento');
      query.open;

      if query.recordcount > 0 then
      begin
        // Prestacoes
        repeat
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'                  Prestações                    ');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Vencimento      Valor - R$                      ');
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
          query.first;
          while not query.eof do
          begin
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,texto_justifica(query.fieldbyname('data_vencimento').asstring,10,' ',taEsquerda)+' '+
                                                   texto_justifica(formatfloat('###,###,##0.00',grid.cell[4,grid.selectedrow].asfloat),15,' ',taDireita));

            query.next;
          end;
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
  end;













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
          query.close;
          query.sql.clear;
          query.sql.add('select * from DAV where numero =  '''+sNumero_Dav+'''');
          query.open;

          showmessage('Nº do DAV: '+sNumero_DAV+'''');

          if query.RecordCount = 0 then
          begin
            spDav.Close;
            spDav.parambyname('codigo').asstring := codifica_cupom;
            spDav.ParamByName('ECF').ASSTRING := sECF_Serial;
            spDav.ParamByName('coo').asstring := snumero_cupom;
            spDav.ParamByName('numero').asstring := sNumero_Dav;
            spDav.ParamByName('data').asdatetime := dData_sistema;
            spDav.ParamByName('titulo').asstring := 'ORÇAMENTO';
            spDav.ParamByName('valor').asfloat := grid.Cell[4,grid.SelectedRow].AsFloat;
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
          frmmodulo.query_servidor.SQL.add('update c000074');
          frmmodulo.query_servidor.sql.add('set dav = '''+sNumero_DAV+''',');

          if grid.cell[10,grid.SelectedRow].asstring <> '' then
          begin
            if sNumero_DAV = grid.Cell[10,grid.SelectedRow].AsString then
              frmmodulo.query_servidor.SQL.add('dav_anterior = '''+
                grid.Cell[1,grid.SelectedRow].AsString+','+
                grid.cell[10,grid.selectedrow].asstring+'''')
            else
            begin
              frmmodulo.query_servidor.SQL.add('dav_anterior = '''+grid.cell[10,grid.selectedrow].asstring+'''');
            end;

          end
          else
          begin
              frmmodulo.query_servidor.SQL.add('dav_anterior = '''+sNumero_Dav+'''')
          end;
          frmmodulo.query_servidor.sql.add('where codigo = '''+grid.cell[0,grid.selectedrow].asstring+'''');
          frmmodulo.query_servidor.ExecSQL;


      end;
    until sMsg = 'OK';
  end;


  bt_filtrarClick(frmOrcamento_Abrir);

end;

procedure TfrmOrcamento_Abrir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrcamento_Abrir.FormShow(Sender: TObject);
begin
  grid.ClearRows;
  ed_inicial.date := date;
  ed_final.date := date;
  bt_filtrarClick(frmOrcamento_Abrir);


  if not bPermite_DAV_ECF then bt_imprimir.Visible := false;

end;

procedure TfrmOrcamento_Abrir.bt_filtrarClick(Sender: TObject);
var sNumero, sCliente, sPeriodo,snumero_dav : string;
begin
  sPeriodo := 'and data between :datai and :dataf';
  if ed_numero.text <> '' then sNumero := 'and codigo = '''+ed_numero.text+'''' else sNumero := '';
  if ed_cod_cliente.text <> '' then
     sCliente := ' and codcliente = '''+Zerar(ed_cod_cliente.text,6)+''''
  else
     sCliente := '';

  query.close;
  query.sql.clear;
  query.sql.add('select c000074.*, c000007.nome, c000007.cpf from c000074, c000007');
  query.sql.add('where c000074.codcliente = c000007.codigo and c000074.tipo = 9');
  if sNumero <> '' then
  begin
    query.sql.add(sNumero);
  end
  else
  begin
    query.sql.add(sPeriodo+sCliente);
    query.ParamByName('datai').asdatetime := ed_inicial.date;
    query.parambyname('dataf').asdatetime := ed_final.date;
  end;
  query.SQL.add('order by data,codigo');
  query.open;

  grid.ClearRows;

  query.first;
  while not query.eof do
  begin
    if query.fieldbyname('dav').asstring = '' then
    begin

      frmmodulo.spDav_Codigo.Prepare;
      frmmodulo.spDav_Codigo.Execute;
      sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
      while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
      sNumero_Dav := '9000'+sNumero_Dav;

      query.edit;
      query.fieldbyname('dav').asstring := snumero_dav;
      query.Post;
      with frmmodulo do
      begin

          spDav.Close;
          spDav.parambyname('codigo').asstring := snumero_dav;
          spDav.ParamByName('ECF').ASSTRING := sECF_Serial;
          spDav.ParamByName('coo').asstring := '';
          spDav.ParamByName('numero').asstring := sNumero_Dav;
          spDav.ParamByName('data').asdatetime := dData_sistema;
          spDav.ParamByName('titulo').asstring := 'ORÇAMENTO';
          spDav.ParamByName('valor').asfloat := frmOrcamento_abrir.query.fieldbyname('total').asfloat;
          spDav.Prepare;
          spDav.Execute;
      end;
    end;
    grid.AddRow(1);
    grid.Cell[0,grid.LastAddedRow].Asstring := query.fieldbyname('codigo').asstring;
    grid.cell[1,grid.LastAddedRow].asstring := query.fieldbyname('DAV').asstring;
    grid.cell[2,grid.LastAddedRow].asdatetime := query.fieldbyname('data').asdatetime;
    grid.cell[3,grid.LastAddedRow].asstring := query.fieldbyname('nome').asstring;
    grid.cell[4,grid.LastAddedRow].asfloat := query.fieldbyname('total').asfloat;
    grid.cell[6,grid.LastAddedRow].asstring := query.fieldbyname('cpf').asstring;
    grid.cell[7,grid.LastAddedRow].asfloat := query.fieldbyname('subtotal').asfloat;
    grid.cell[8,grid.LastAddedRow].asfloat := query.fieldbyname('desconto').asfloat;
    grid.cell[9,grid.LastAddedRow].asfloat := query.fieldbyname('acrescimo').asfloat;
    grid.cell[10,grid.lastaddedrow].AsString := query.fieldbyname('dav_anterior').asstring;
    grid.cell[11,grid.lastaddedrow].asstring := query.fieldbyname('codcliente').asstring;
    query.next;
  end;
  grid.SetFocus;


end;

procedure TfrmOrcamento_Abrir.ed_numeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if ed_numero.text <> '' then bt_filtrarClick(frmorcamento_abrir)
    else ed_cod_cliente.setfocus;
end;

procedure TfrmOrcamento_Abrir.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmOrcamento_Abrir.ed_inicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento_Abrir.ed_finalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento_Abrir.Button2Click(Sender: TObject);
var i : integer;
begin
  if grid.RowCount = 0 then exit;
  if grid.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma orçamento!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;


  i := grid.SelectedRow;

  // filtrar os produtos
  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.Clear;
  frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
  frmmodulo.query_servidor.sql.add('from c000075 orc,');
  frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+
                  grid.cell[0,i].asstring+'''');
  frmmodulo.query_servidor.Open;




  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    Application.messagebox('Não itens ou serviços lançados para este Orçamento!','Atenção!',mb_yesno+MB_ICONEXCLAMATION);
    exit;
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para este orçamento?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      SDAV_ATUALIZADO := grid.cell[1,i].asstring;
      bLanca_OS := true;
      iOS_cliente := grid.cell[11,i].asinteger;
      iOS_vendedor := 0;
      iOS_codigo := grid.Cell[0,i].asinteger;
      sDav_Numero := 'DAV'+ZERAR(grid.Cell[1,i].asSTRING,10);
      close;
    end;
  end;
end;

end.

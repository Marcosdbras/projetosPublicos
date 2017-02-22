unit caixa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, rxToolEdit, StdCtrls, Mask, RzEdit, ExtCtrls,
  ComCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, RzTabs, DB, MemDS, DBAccess,
  IBC;

type
  TfrmCaixa_Abertura = class(TForm)
    Bevel1: TBevel;
    pop_fechamento: TAdvPopupMenu;
    MenuFiscal1: TMenuItem;
    Cancelar1: TMenuItem;
    AdvPopupMenu1: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed_operador: TRzEdit;
    ed_data: TDateEdit;
    ed_ecf: TRzEdit;
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    StatusBar1: TStatusBar;
    grid_venda: TNextGrid;
    NxTextColumn8: TNxTextColumn;
    NxDateColumn2: TNxDateColumn;
    NxTextColumn9: TNxTextColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxTextColumn10: TNxTextColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxNumberColumn17: TNxNumberColumn;
    NxNumberColumn18: TNxNumberColumn;
    qrPre_Venda: TIBCQuery;
    TabSheet3: TRzTabSheet;
    grid_dav: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn11: TNxNumberColumn;
    qrDAV: TIBCQuery;
    TabSheet4: TRzTabSheet;
    grid_abastecimento: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn21: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
    NxTextColumn17: TNxTextColumn;
    qrAbastecimento: TIBCQuery;
    qrEncerrante: TIBCQuery;
    bt_cupom_encerrante: TButton;
    procedure MenuFiscal1Click(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_cupom_encerranteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function relatorio_dav():boolean;
    function relatorio_posto():boolean;
  end;

var
  frmCaixa_Abertura: TfrmCaixa_Abertura;

implementation

uses funcoes, modulo, principal, msg_Operador, unECF, menu_fiscal,
  suprimento, venda;

{$R *.dfm}


function tfrmcaixa_abertura.relatorio_posto():boolean;
begin

  qrEncerrante.close;
  qrEncerrante.sql.clear;
  qrEncerrante.sql.add('select posto_bico_movimento.*, posto_bico.*');
  qrEncerrante.sql.add('from posto_bico_movimento, posto_bico');

  qrEncerrante.sql.add('where data = :data');
  qrEncerrante.SQL.ADD('and posto_bico_movimento.cod_bico = posto_bico.codigo');
  qrEncerrante.sql.add('order by posto_bico.bomba, posto_bico.bico');
  qrEncerrante.parambyname('data').asdatetime := dData_Sistema;
  qrEncerrante.open;



  if qrEncerrante.RecordCount = 0 then
  begin
    result := true;
    exit;
  end;



  repeat

    sMsg := cECF_Abre_Gerencial(iECF_Modelo,'CONTROLE DE ENCERRANTES');
    sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
    if sMsg <> 'OK' then
    begin
      if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',
                                          mb_yesno+mb_iconerror ) = idno
      then
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

      repeat

        qrEncerrante.First;
        while not qrEncerrante.eof do
        begin
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,//'Tanque '+qrEncerrante.fieldbyname('Tanque').asstring+' '+
                                                'Bomba '+qrEncerrante.fieldbyname('Bomba').asstring+' '+
                                                'Bico '+qrEncerrante.fieldbyname('bico').asstring+', '+
                                                'EI='+zerar(somenteNumero(formatfloat('######0.00',qrEncerrante.fieldbyname('EI').asfloat)),6)+', '+
                                                'EF='+zerar(somenteNumero(formatfloat('######0.00',qrEncerrante.fieldbyname('EF').asfloat)),6)+', '+
                                                'Volume='+formatfloat('#########0.000',qrEncerrante.fieldbyname('volume').asfloat));
         qrEncerrante.NEXT;
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

  if sMsg = 'OK' then
  begin
    repeat
      sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
      if sMsg <> 'OK' then
      begin
        if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
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
          result := true;
        end;

      end;
    until sMsg = 'OK';


  end;





end;

















function tfrmcaixa_Abertura.relatorio_dav():boolean;
var iqtde : integer;
    rtotal : real;
begin


        qrdav.close;
        qrdav.sql.clear;
        qrdav.sql.add('select * from DAV');
        qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
        qrdav.sql.add('and data = :datai');
        qrdav.sql.add('order by numero, data');
        qrdav.parambyname('datai').asdatetime := ed_data.date - 1;
        qrdav.open;


      if qrdav.RecordCount > 0 then
      begin
//        frmMsg_Operador.lb_msg.Caption := 'Aguarde! Imprimindo relação de DAV...';
//        frmMsg_Operador.Show;
//        frmMsg_Operador.Refresh;

      // impressao em relatorio gerencial
      repeat
        // COO

        sMsg := cECF_Abre_Gerencial(iECF_Modelo,'DAV EMITIDOS');
        sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          result := false;
          break;
          exit;
        end
        else
        begin
          // extrair GNF E GRG

          sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
        end;
      until sMsg = 'OK';

      if smsg <> 'OK' then exit;

      if sMsg = 'OK' then
      begin
          repeat
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Numero        Data       Titulo         Valor-R$');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');

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



      // davs emitidos pelo ecf
      if sMsg = 'OK' then
      begin
        // rodar os davs emitidos pelo ecf
        iqtde := 0;
        rtotal := 0;
        qrDav.first;
        while not qrdav.eof do
        begin
          repeat
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
            {Numero } texto_justifica(qrDAV.fieldbyname('NUMERO').asstring,13,'0',taDireita)+' '+
            {Emissao} texto_justifica(qrDAV.fieldbyname('data').asstring,10,' ',taEsquerda)+' '+
            {titulo } texto_justifica(qrDAV.fieldbyname('titulo').asstring,13,' ',taEsquerda)+'  '+
            {Valor  } texto_justifica(formatfloat('###,###,##0.00',qrdav.fieldbyname('valor').asfloat),8,' ',taDireita));
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
            end
            else
            begin
              inc(iqtde);
              rtotal := rtotal + qrdav.FieldByName('valor').asfloat;
              qrdav.next;
            end;
          until sMsg = 'OK';
        end;
      end;

(*      // se a conexao com servidor estiver ociosa
      if bServidor_Conexao then
      begin
        // davs os emitidos por impressora nao fiscal
        if sMsg = 'OK' then
        begin
          // rodar os davs - os, emitidos em impressora nf
          // OS emitida por equipamento nao fiscal
          //Codigos 8000
          query.close;
          query.sql.clear;
          query.sql.add('select * from c000051');
          query.sql.add('where data between :datai and :dataf');
          query.sql.add('and dav is not null');
          query.sql.add('order by dav, data');
          query.parambyname('datai').asdatetime := ed_data_ini.Date;
          query.parambyname('dataf').asdatetime := ed_data_fim.Date;
          query.open;

          // rodar os querys emitidos pelo ecf
          query.first;
          while not query.eof do
          begin
            repeat
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              {Numero } texto_justifica(query.fieldbyname('DAV').asstring,13,'0',taDireita)+' '+
              {Emissao} texto_justifica(query.fieldbyname('data').asstring,10,' ',taEsquerda)+' '+
              {titulo } texto_justifica('OS',13,' ',taEsquerda)+'  '+
              {Valor  } texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('total').asfloat),8,' ',taDireita));
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
              end
              else
              begin
                inc(iqtde);
                rtotal := rtotal + query.FieldByName('TOTAL').asfloat;
                query.next;
              end;
            until sMsg = 'OK';
          end;
        end;

        // davs os emitidos por impressora nao fiscal
        if sMsg = 'OK' then
        begin
          // ORCAMENTOS emitidos por equipamento nao fiscal
          //Codigos 9000
          query.close;
          query.sql.clear;
          query.sql.add('select * from c000074');
          query.sql.add('where data between :datai and :dataf');
          query.sql.add('and dav is not null');
          query.sql.add('order by dav, data');
          query.parambyname('datai').asdatetime := ed_data_ini.Date;
          query.parambyname('dataf').asdatetime := ed_data_fim.Date;
          query.open;
          // rodar os querys emitidos pelo ecf
          query.first;
          while not query.eof do
          begin
            repeat
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              {Numero } texto_justifica(query.fieldbyname('DAV').asstring,13,'0',taDireita)+' '+
              {Emissao} texto_justifica(query.fieldbyname('data').asstring,10,' ',taEsquerda)+' '+
              {titulo } texto_justifica('ORCAMENTO',13,' ',taEsquerda)+'  '+
              {Valor  } texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('total').asfloat),8,' ',taDireita));
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
              end
              else
              begin
                inc(iqtde);
                rtotal := rtotal + query.FieldByName('TOTAL').asfloat;
                query.next;
              end;
            until sMsg = 'OK';
          end;
        end;
      end; // final verificacao da conexao com o servidor


      *)



      if sMsg = 'OK' then
      begin
          repeat
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Qtde: '+Zerar(inttostr(iqtde),6)+
                    '                     Total: '+
                    texto_justifica(formatfloat('###,###,##0.00',rtotal),8,' ',taDireita));
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
        repeat
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
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
              result := true;
            end;

          end;
        until sMsg = 'OK';


      end;
//       frmMsg_Operador.Hide;
      end;

end;




procedure TfrmCaixa_Abertura.MenuFiscal1Click(Sender: TObject);
begin
  frmmenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmCaixa_Abertura.bt_okClick(Sender: TObject);
begin






  (*Emitir leitura x*)

  repeat
    frmMsg_Operador.lb_msg.Caption := 'Aguarde... Emitindo Leitura X...';
    frmMsg_Operador.show;
    frmMsg_Operador.Refresh;
    sNumero_cupom := cECF_COO_Nao_Fiscal(iECF_Modelo);
    sMsg := cECF_LeituraX(iECF_Modelo);
    if sMsg <> 'OK' then
    begin
      frmMsg_Operador.hide;
      if application.MessageBox(pansichar('Erro ao emtir leitura X!'+#13+
                                       'Mensagem: '+sMsg+#13+
                                       'Deseja tentar outra vez?'),'Aviso',mb_yesno+MB_ICONERROR)
                                       = idno then
        break;

    end;
  until sMsg = 'OK';

  if sMsg = 'OK' then
  begin
    frmMsg_operador.Hide;
    
    frmmodulo.query.close;
    frmmodulo.query.sql.clear;
    frmmodulo.query.sql.add('update config set caixa_data_movto = :data, caixa_situacao = ''ABERTO'',');
    frmmodulo.query.sql.add('CAIXA_COO_INICIAL = '''+sNumero_Cupom+'''');
    frmmodulo.query.ParamByName('data').asdatetime := ed_data.Date;
    frmmodulo.query.ExecSQL;
   
    if Application.MessageBox('Deseja lançar algum suprimento?','Aviso',mb_yesno+MB_ICONQUESTION) = idYes then
    begin
      frmsuprimento := tfrmsuprimento.create(self);
      frmsuprimento.showmodal;
    end;


    bCaixa_aberto := true;
  end
  else
    bcaixa_aberto := false;

  close;
end;

procedure TfrmCaixa_Abertura.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_Abertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCaixa_Abertura.FormShow(Sender: TObject);
var i : integer;
begin
  ed_data.Date := dData_Sistema;
  ed_operador.Text := sNome_Operador;
  ed_ecf.Text := sECF_Serial;


  If bServidor_Conexao then
  begin
    // Data abertura: 01/08

    qrPre_Venda.CLOSE;
    qrPre_Venda.SQL.CLEAR;
    qrPre_Venda.SQL.ADD('select');
    qrPre_Venda.SQL.ADD('  c000074.*,');
    qrPre_Venda.SQL.ADD('  c000007.Nome Cliente,');
    qrPre_Venda.SQL.ADD('  c000008.Nome Vendedor');
    qrPre_Venda.SQL.ADD('from');
    qrPre_Venda.SQL.ADD('  c000074, c000007, c000008');
    qrPre_Venda.SQL.ADD('where');
    qrPre_Venda.SQL.ADD('  c000074.codcliente = c000007.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.tipo <> 9 and');
    qrPre_Venda.sql.add('  c000074.situacao = 1');
    qrpre_venda.sql.add('  and c000074.data <= :datam'); //09/09
    qrPre_Venda.sql.add('ORDER BY c000074.CODIGO');
    qrpre_venda.ParamByName('datam').asdatetime := ed_data.date - 2;
    qrPre_Venda.OPEN;

    //03/08 --> 01/08
    //10/09

    grid_venda.ClearRows;

    qrpre_venda.First;
    while not qrpre_venda.Eof do
    begin
      i := grid_venda.AddRow(1);
      grid_venda.Cell[0,i].Asstring := qrPre_Venda.fieldbyname('codigo').asstring;
      grid_venda.Cell[1,i].AsDateTime := qrpre_venda.fieldbyname('data').asdatetime;
      grid_venda.Cell[2,i].Asstring := qrPre_Venda.fieldbyname('cliente').asstring;
      grid_venda.Cell[3,i].Asfloat := qrPre_Venda.fieldbyname('total').asfloat;
      grid_venda.Cell[4,i].Asstring := qrPre_Venda.fieldbyname('vendedor').asstring;
      grid_venda.Cell[5,i].Asinteger := qrPre_Venda.fieldbyname('codcliente').asinteger;
      grid_venda.Cell[6,i].Asinteger := qrPre_Venda.fieldbyname('codvendedor').asinteger;
      grid_venda.Cell[7,i].Asfloat := qrPre_Venda.fieldbyname('desconto').asfloat;
      grid_venda.Cell[8,i].Asfloat := qrPre_Venda.fieldbyname('acrescimo').asfloat;
      qrpre_venda.Next;
    end;
  end;


        if grid_venda.RowCount > 0 then
        begin





        for i := 0 to grid_venda.RowCount - 1 do
        begin
          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;

          bLanca_pre_venda := true;
          with frmVenda do
          begin
            if not Abre_Venda then
            begin
              // Caso o comando de abertura de venda retornou false, abortar o processo;
              // fazer o cancelamento apos emissao da reducao Z!

              application.MessageBox('Não foi possível cancelar as pré-vendas!'+#13+
                                     'O sistema repetirá o processo após a emissão da redução Z!',
                                     'Atenção',mb_ok+MB_ICONWARNING);
              break;
            end
            else
            begin
              iPre_venda_codigo := grid_venda.cell[0,i].AsInteger;
              sPre_Venda_Numero := 'PV'+ZERAR(grid_venda.Cell[0,i].asSTRING,10);
              frmmodulo.query_servidor.Close;
              frmmodulo.query_servidor.SQL.Clear;
              frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
              frmmodulo.query_servidor.sql.add('from c000075 orc,');
              frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+
                              grid_venda.cell[0,i].asstring+'''');
              frmmodulo.query_servidor.SQL.Add('and data = :vdat');
              frmmodulo.query_servidor.params.ParamByName('vdat').AsDateTime := grid_venda.Cell[1,i].AsDateTime;
              frmmodulo.query_servidor.Open;





              // vender os itens
              // rodar a query do modulo filtrada com os produtos da pre-venda
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
                Application.ProcessMessages;
                frmmodulo.query_servidor.next;
              end;
              Cancela_cupom_aberto;
            end;
          end;
          Application.processmessages;
        end;





        end;
  // davs

        qrdav.close;
        qrdav.sql.clear;
        qrdav.sql.add('select * from DAV');
        qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
        qrdav.sql.add('and data >= :datai');
        qrdav.sql.add('order by numero, data');
        qrdav.parambyname('datai').asdatetime := ed_data.date-1;
        qrdav.open;

        grid_dav.ClearRows;
        qrdav.first;
        while not qrdav.eof do
        begin
          i := grid_dav.AddRow(1);
          grid_dav.Cell[0,i].asstring := qrdav.fieldbyname('coo').asstring;
          grid_dav.Cell[1,i].asstring := qrdav.fieldbyname('NUMERO').asstring;
          grid_dav.Cell[2,i].asstring := qrdav.fieldbyname('TITULO').asstring;
          grid_dav.Cell[3,i].asFLOAT := qrdav.fieldbyname('VALOR').asFLOAT;
          qrdav.Next;
        end;


        relatorio_dav();

      (** final dav **)




      if sRamo_Tipo = '3' then
      begin
        qrabastecimento.close;
        qrabastecimento.sql.clear;
        qrabastecimento.sql.add('select posto_abastecimento.*, estoque.nome produto');
        qrabastecimento.sql.add('from posto_abastecimento, estoque');
        qrabastecimento.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
        qrabastecimento.sql.add('and posto_abastecimento.situacao = 0');
        qrabastecimento.sql.add('order by posto_abastecimento.codigo');
        qrabastecimento.Open;
        qrabastecimento.First;
        while not qrAbastecimento.Eof do
        begin
          i := grid_abastecimento.AddRow(1);
          // data
          grid_abastecimento.Cell[0,i].asstring := qrabastecimento.fieldbyname('data').asstring;
          // hora
          grid_abastecimento.cell[1,i].asstring := qrabastecimento.fieldbyname('hora').asstring;
          // bomba
          grid_abastecimento.cell[2,i].asstring := qrabastecimento.fieldbyname('bomba').asstring;
          // bico
          grid_abastecimento.cell[3,i].asstring := qrabastecimento.fieldbyname('bico').asstring;
          // produto
          grid_abastecimento.cell[4,i].asstring := qrabastecimento.fieldbyname('produto').asstring;
          // Quantidade
          grid_abastecimento.cell[5,i].asfloat  := qrabastecimento.fieldbyname('qtde').asfloat;
          // preco unitario
          grid_abastecimento.cell[6,i].asfloat  := qrabastecimento.fieldbyname('unitario').asfloat;
          // total
          grid_abastecimento.cell[7,i].asfloat  := qrabastecimento.fieldbyname('total').asfloat;
          // encerrante inicial
          grid_abastecimento.cell[8,i].asfloat  := qrabastecimento.fieldbyname('ei').asfloat;
          // encerrante final
          grid_abastecimento.cell[9,i].asfloat  := qrabastecimento.fieldbyname('ef').asfloat;
          // codigo
          grid_abastecimento.cell[10,i].asinteger  := qrabastecimento.fieldbyname('codigo').asinteger;
          // tanque
          grid_abastecimento.cell[11,i].asstring  := qrabastecimento.fieldbyname('tanque').asstring;

          qrAbastecimento.Next;
        end;
      end;


      if grid_abastecimento.RowCount > 0 then
      begin
        frmMsg_Operador.hide;
        frmMsg_Operador.Refresh;

        for i := 0 to grid_abastecimento.RowCount - 1 do
        begin
          bLanca_Abastecimento := true;
          frmMsg_Operador.lb_msg.caption := 'Aguarde registrando abastecimento pendente...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;


          with frmVenda do
          begin
            if not Abre_Venda then
            begin
              // Caso o comando de abertura de venda retornou false, abortar o processo;
              // fazer o cancelamento apos emissao da reducao Z!

              application.MessageBox('Não foi possível cancelar as pré-vendas!'+#13+
                                     'O sistema repetirá o processo após a emissão da redução Z!',
                                     'Atenção',mb_ok+MB_ICONWARNING);
              break;
            end
            else
            begin



                qrabastecimento.close;
                qrabastecimento.sql.clear;
                qrabastecimento.sql.add('select posto_abastecimento.*, estoque.nome produto,');
                qrabastecimento.sql.add('estoque.unidade,estoque.cst,estoque.aliquota,estoque.cod_barra');
                qrabastecimento.sql.add('from posto_abastecimento, estoque');
                qrabastecimento.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
                qrabastecimento.sql.add('and posto_abastecimento.situacao = 0');
                qrabastecimento.sql.add('and posto_abastecimento.codigo = '+
                                        grid_abastecimento.Cell[10,i].asstring);
                qrabastecimento.Open;


                qrabastecimento.first;
                while not qrabastecimento.eof do
                begin
                  sProd_nome := qrabastecimento.fieldbyname('produto').asstring;
                  sProd_unidade := qrabastecimento.fieldbyname('unidade').asstring;
                  sProd_CST := qrabastecimento.fieldbyname('cst').asstring;
                  rProd_aliquota := qrabastecimento.fieldbyname('aliquota').asfloat;
                  iProd_codigo := qrabastecimento.fieldbyname('cod_produto').asinteger;
                  sProd_barra := qrabastecimento.fieldbyname('cod_barra').asstring;
                  rProd_qtde    := qrabastecimento.fieldbyname('qtde').asfloat;
                  rProd_preco   := qrabastecimento.fieldbyname('unitario').asfloat;
                  rProd_total := qrabastecimento.fieldbyname('total').asfloat;
                  rProd_desconto := 0;
                  rProd_acrescimo := 0;
                  // registrar o item
                  Registra_Item;
                  Application.ProcessMessages;
                  qrabastecimento.next;
                end;
                iCodigo_abastecimento :=  grid_abastecimento.Cell[10,i].asinteger;
                sPosto_rodape := //'Tanque'+grid_abastecimento.cell[11,i].asstring+
                                 'Bomba'+grid_abastecimento.cell[2,i].asstring+
                                 'Bico'+grid_abastecimento.cell[3,i].asstring+
                                 'EI'+somenteNumero(zerar(
                                 grid_abastecimento.cell[8,i].asstring,6))+
                                 'EF'+somenteNumero(
                                 zerar(grid_abastecimento.cell[9,i].asstring,6));
                ilinha_abastecimento := grid.SelectedRow;
                Cancela_cupom_aberto;
            end;
          end;
        end;
      end;
      grid_abastecimento.ClearRows;


      bt_cupom_encerranteClick(frmcaixa_abertura);

      relatorio_posto;

end;

procedure TfrmCaixa_Abertura.bt_cupom_encerranteClick(Sender: TObject);
var sCod_Cupom : string;
i : integer;
begin
  // verificar se tem diferenca de qtde de litros nos encerrantes em relacao
  // as qtde vendidas nos cupons

  qrEncerrante.close;
  qrEncerrante.sql.clear;
  qrEncerrante.sql.add('select posto_bico_movimento.*, posto_bico.*');
  qrEncerrante.sql.add('from posto_bico_movimento, posto_bico');
  qrEncerrante.sql.add('where data = :data');
  qrEncerrante.SQL.ADD('and posto_bico_movimento.cod_bico = posto_bico.codigo');
  qrEncerrante.sql.add('order by posto_bico.bomba, posto_bico.bico');
  qrEncerrante.parambyname('data').asdatetime := dData_Sistema;
  qrEncerrante.open;

  if qrencerrante.RecordCount > 0 then
  begin


    if ( qrencerrante.fieldbyname('EF').asfloat -
         qrencerrante.fieldbyname('EI').asfloat -
         qrencerrante.fieldbyname('volume').asfloat) > 0 then
    begin
      // imprimir o cupom com a diferenca
        bLanca_Abastecimento := true;

        with frmVenda do
        begin
          if not Abre_Venda then
          begin
            // Caso o comando de abertura de venda retornou false, abortar o processo;
            // fazer o cancelamento apos emissao da reducao Z!

            application.MessageBox('Erro na abertura do cupom!',
                                   'Atenção',mb_ok+MB_ICONWARNING);
            exit;
          end
          else
          begin

              qrabastecimento.close;
              qrabastecimento.sql.clear;
              qrabastecimento.sql.add('select posto_bico.*, estoque.nome produto, estoque.preco_venda,');
              qrabastecimento.sql.add('estoque.unidade,estoque.cst,estoque.aliquota,estoque.cod_barra');
              qrabastecimento.sql.add('from posto_bico, estoque');
              qrabastecimento.sql.add('where posto_bico.cod_produto = estoque.codigo');
              qrabastecimento.sql.add('and posto_bico.codigo = '+qrencerrante.fieldbyname('cod_bico').asstring);
              qrabastecimento.Open;


              qrabastecimento.first;
              while not qrabastecimento.eof do
              begin
                sProd_nome := qrabastecimento.fieldbyname('produto').asstring;
                sProd_unidade := qrabastecimento.fieldbyname('unidade').asstring;
                sProd_CST := qrabastecimento.fieldbyname('cst').asstring;
                rProd_aliquota := qrabastecimento.fieldbyname('aliquota').asfloat;
                iProd_codigo := qrabastecimento.fieldbyname('cod_produto').asinteger;
                sProd_barra := qrabastecimento.fieldbyname('cod_barra').asstring;
                rProd_qtde    := ( qrencerrante.fieldbyname('EF').asfloat - qrencerrante.fieldbyname('EI').asfloat - qrencerrante.fieldbyname('volume').asfloat);
                rProd_preco   := qrabastecimento.fieldbyname('preco_venda').asfloat;
                rProd_total := ( qrencerrante.fieldbyname('EF').asfloat - qrencerrante.fieldbyname('EI').asfloat - qrencerrante.fieldbyname('volume').asfloat) *  qrabastecimento.fieldbyname('preco_venda').asfloat;
                rProd_desconto := 0;
                rProd_acrescimo := 0;
                // registrar o item
                Registra_Item;
                Application.ProcessMessages;
                qrabastecimento.next;
              end;
              sPosto_rodape := //'Tanque'+qrabastecimento.fieldbyname('tanque').asstring+
                               'Bomba'+qrabastecimento.fieldbyname('bomba').asstring+
                               'Bico'+qrabastecimento.fieldbyname('bico').asstring+
                               'EI000000'+
                               'EF000000';
             // venda foi feito por uma pre-venda
             //finalizar o cupom e depois cancelar
             sMsg := cECF_Fecha_Cupom_Resumido(iECF_Modelo,
             'DINHEIRO',sPAF_MD5+sPosto_rodape, rTotal_Venda);


             if sMsg = 'OK' then
             begin
              sCod_Cupom := codifica_cupom;
              with frmmodulo do
              begin
                // lancamento do cupom no banco de dados

                spCupom.close;
                spCupom.ParamByName('codigo').asstring         := sCod_Cupom;
                spCupom.ParamByName('numero').asstring         := sNumero_Cupom;
                spCupom.ParamByName('ccf').asstring            := sNumero_contador_cupom;
                spCupom.ParamByName('ECF').AsString            := sECF_Serial;
                spCupom.ParamByName('data').asdate             := dData_Sistema;
                spCupom.ParamByName('hora').AsTime             := hHora_Cupom;
                spCupom.ParamByName('qtde_item').asinteger     := iTotal_Itens;
                spCupom.ParamByName('valor_produto').asfloat   := rTotal_Venda;
                spCupom.ParambyName('Valor_Desconto').asfloat  := rTotal_Desconto;
                spCupom.ParambyName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
                spCupom.ParamByName('valor_total').asfloat     := rTotal_Venda;
                spCupom.ParamByName('valor_pago').asfloat      := rTotal_Venda;
                spCupom.ParamByName('valor_troco').asfloat     := 0;
                spCupom.ParamByName('cod_cliente').Clear;
                spCupom.ParamByName('cancelado').asinteger     := 0;
                spcupom.parambyname('cpf_consumidor').asstring := sConsumidor_CPF;
                spcupom.ParamByName('nome_consumidor').asstring := copy(sConsumidor_Nome,1,40);
                spcupom.parambyname('cod_caixa').asinteger := icodigo_Usuario;
                spCupom.ParamByName('ecf_caixa').asstring := Copy(sECF_Caixa,1,3);                
                spCupom.Prepare;
                spCupom.Execute;


                query.close;
                query.sql.clear;
                query.sql.add('update posto_bico_movimento set volume = volume + :qtde');
                query.sql.add('where cod_bico = '+qrencerrante.fieldbyname('cod_bico').asstring);
                query.ParamByName('qtde').asfloat := ( qrencerrante.fieldbyname('EF').asfloat - qrencerrante.fieldbyname('EI').asfloat - qrencerrante.fieldbyname('volume').asfloat);
                query.ExecSQL;


                // lancamento dos items do cupom no banco de dados
                for i := 0 to grid.RowCount - 1 do
                begin
                  // situacoes
                  // 1 - Venda do Item
                  // 3 - Cancelamento do Item
                  // 4 - Desconto no Item
                  // 5 - Acrescimo no Item

                  if grid.Cell[1,i].asinteger = 1 then
                  begin
                    spCupom_Item.close;
                    spCupom_Item.ParamByName('codigo').AsString := codifica_item(grid.Cell[2,i].asinteger);
                    spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
                    spCupom_Item.parambyname('item').asinteger := grid.cell[2,i].asinteger;
                    spCupom_Item.ParamByName('cod_produto').asinteger := grid.cell[3,i].asinteger;
                    spCupom_Item.parambyname('unidade').asstring := grid.cell[12,i].asstring;
                    spCupom_Item.parambyname('qtde').asfloat := grid.cell[5,i].asfloat;
                    spCupom_Item.parambyname('valor_unitario').asfloat := grid.cell[6,i].asfloat;
                    spCupom_Item.parambyname('valor_subtotal').asfloat := grid.cell[5,i].asfloat *
                                                                          grid.cell[6,i].asfloat;
                    spCupom_Item.parambyname('valor_desconto').asfloat := grid.cell[7,i].asfloat;
                    spCupom_Item.parambyname('valor_acrescimo').asfloat := grid.cell[8,i].asfloat;
                    spCupom_Item.parambyname('valor_total').asfloat := grid.cell[9,i].asfloat;
                    spCupom_Item.parambyname('cst').asstring := grid.cell[11,i].asstring;
                    spCupom_Item.parambyname('aliquota').asfloat := grid.cell[10,i].asfloat;
                    spCupom_Item.parambyname('cancelado').asinteger := grid.cell[13,i].asinteger;
                    spCupom_Item.parambyname('tamanho').AsString := grid.cell[14,i].AsString;
                    spCupom_Item.parambyname('cor').AsString := grid.cell[15,i].AsString;

                    if (grid.cell[11,i].asstring = '060') or
                       (grid.cell[11,i].asstring = '010') or
                       (grid.cell[11,i].asstring = '070') then
                         spCupom_item.ParamByName('cod_totalizador').asstring := 'F1'
                    else
                    if (grid.cell[11,i].asstring = '040') or
                       (grid.cell[11,i].asstring = '030') then
                         spCupom_item.ParamByName('cod_totalizador').asstring := 'I1'
                    else
                    if (grid.cell[11,i].asstring = '041') or
                       (grid.cell[11,i].asstring = '050') or
                       (grid.cell[11,i].asstring = '051') or
                       (grid.cell[11,i].asstring = '090') then
                         spCupom_item.ParamByName('cod_totalizador').asstring := 'N1'
                    else
                    if (grid.cell[11,i].asstring = 'ISS') then
                       spCupom_item.ParamByName('cod_totalizador').asstring := '01S'+
                         Retorna_aliquota(grid.cell[11,i].asstring,grid.cell[10,i].asfloat)
                    else
                      spCupom_item.ParamByName('cod_totalizador').asstring :=
                        retorna_codigo_aliquota(grid.cell[10,i].asfloat);


                    spCupom_Item.Prepare;
                    spCupom_Item.Execute;
                  end;
                end;
                // lancar a forma de pagamento - DINHEIRO
                spCupom_Forma.close;
                spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(1);
                spCupom_Forma.ParamByName('cod_cupom').asstring  := sCod_Cupom;
                spCupom_Forma.ParamByName('forma').asstring      := 'DINHEIRO';
                spCupom_Forma.ParamByName('valor').asfloat       := rTotal_Venda;
                spCupom_Forma.ParamByName('prestacao').asinteger := 1;
                spCupom_Forma.ParamByName('tipo').asstring       := 'CUPOM FISCAL';
                spCupom_Forma.Prepare;
                spCupom_Forma.Execute;

              end;
              // atualizar o totalizar
              REPEAT
                 SMSG := cECF_Grande_Total(iECF_Modelo);
                 iF Smsg = 'ERRO' then
                 begin
                   if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                                       'Mensagem: '+sMsg+#13+
                                                       'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                       MB_ICONERROR) = idno then
                   break;

                 end
                 else
                   atualiza_totalizador(SMSG);
              UNTIL SmSG <> 'ERRO';


              // limpar o form de venda
             if bBusca_foto_produto then
             begin
               img_shape.Visible := false;
               img_produto.Picture := nil;
             end;
             bVenda := false;
             Limpa_controles;
            end;
          end; // not abre venda
        end; // with frmvenda

    end;
  end;



end;

end.

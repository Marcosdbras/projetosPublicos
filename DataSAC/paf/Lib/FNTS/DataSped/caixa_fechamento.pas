unit caixa_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ComCtrls, DB,
  MemDS, DBAccess, IBC, rxToolEdit, Menus, AdvMenus;

type
  TfrmCaixa_Fechamento = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    ed_operador: TRzEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    grid_resumo: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    grid_forma: TNextGrid;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    grid_aliquota: TNextGrid;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn6: TNxNumberColumn;
    grid_outros: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn8: TNxNumberColumn;
    query: TIBCQuery;
    ed_data: TDateEdit;
    Label3: TLabel;
    ed_ecf: TRzEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    NxNumberColumn7: TNxTextColumn;
    TabSheet5: TTabSheet;
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
    MenuFiscal1: TMenuItem;
    StatusBar1: TStatusBar;
    qrArquivo: TIBCQuery;
    qrDAV: TIBCQuery;
    TabSheet6: TTabSheet;
    grid_dav: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn11: TNxNumberColumn;
    TabSheet7: TTabSheet;
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
    qrAbastecimento: TIBCQuery;
    TabSheet8: TTabSheet;
    grid_mesa: TNextGrid;
    NxNumberColumn9: TNxNumberColumn;
    NxDateColumn3: TNxDateColumn;
    NxTextColumn16: TNxTextColumn;
    NxNumberColumn10: TNxNumberColumn;
    qrMesa: TIBCQuery;
    NxTextColumn17: TNxTextColumn;
    qrEncerrante: TIBCQuery;
    Panel3: TPanel;
    Button1: TButton;
    bt_cupom_encerrante: TButton;
    N1: TMenuItem;
    InformaesdoECF1: TMenuItem;
    VendaBruta1: TMenuItem;
    otalizadorGeral1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure grid_resumoCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure FormShow(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bt_cupom_encerranteClick(Sender: TObject);
    procedure VendaBruta1Click(Sender: TObject);
    procedure otalizadorGeral1Click(Sender: TObject);
  private
    { Private declarations }
    function relatorio_posto():boolean;
    function relatorio_dav():boolean;
    function relatorio_mesa():boolean;

    procedure Z_Resumo();
    procedure z_Forma();
    procedure z_aliquota();
    procedure z_outros();
    function arquivo_fiscal(data:tdatetime):string;

  public
    { Public declarations }
  end;

var
  frmCaixa_Fechamento: TfrmCaixa_Fechamento;

implementation

uses modulo, principal, funcoes, unECF, senha_supervisor, venda,
  msg_Operador, Math, menu_fiscal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.relatorio_posto():boolean;
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
         sMSG := cECF_Usa_Gerencial(iECF_Modelo,'Tanque '+qrEncerrante.fieldbyname('Tanque').asstring+' '+ 
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

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.relatorio_mesa():boolean;
var iqtde : integer;
    rtotal : real;
begin
  qrMesa.close;
  qrMesa.sql.clear;
  qrMesa.sql.add('select sum(r000002.total) soma,');
  qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('from r000001, r000002');
  qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
  qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('order by r000001.codigo');
  qrMesa.open;




  repeat

    sMsg := cECF_Abre_Gerencial(iECF_Modelo,'MESAS ABERTAS');
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
            sMSG := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
            sMSG := cECF_Usa_Gerencial(iECF_Modelo,'No.Mesa   Abertura (Data/Hora)     Total Consumo');
            sMSG := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');



            frmModulo.query_servidor.close;
            frmmodulo.query_servidor.sql.clear;
            frmmodulo.query_servidor.sql.add('select sum(r000002.total) soma,');
            frmmodulo.query_servidor.sql.add('r000001.codigo, r000001.data, r000001.hora');
            frmmodulo.query_servidor.sql.add('from r000001, r000002');
            frmmodulo.query_servidor.sql.add('where r000001.codigo = r000002.cod_mesa');
            frmmodulo.query_servidor.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
            frmmodulo.query_servidor.sql.add('order by r000001.codigo');
            frmmodulo.query_servidor.open;

            frmmodulo.query_servidor.First;
            while not frmmodulo.query_servidor.eof do
            begin
             sMSG := cECF_Usa_Gerencial(iECF_Modelo,zerar(frmmodulo.query_servidor.fieldbyname('codigo').asstring,7)+'   '+
                                                    frmmodulo.query_servidor.fieldbyname('data').asstring+' '+
                                                    frmmodulo.query_servidor.fieldbyname('hora').asstring+'      '+
                                                    texto_justifica(formatfloat('###,###,##0.00',
                                                                        frmmodulo.query_servidor.fieldbyname('soma').asfloat),13,' ',taDireita));
             frmmodulo.query_servidor.NEXT;
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
       frmMsg_Operador.Hide;


end;

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.relatorio_dav():boolean;
var iqtde : integer;
    rtotal : real;
begin


        qrdav.close;
        qrdav.sql.clear;
        qrdav.sql.add('select * from DAV');
        qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
        qrdav.sql.add('and data = :datai');
        qrdav.sql.add('order by numero, data');
        qrdav.parambyname('datai').asdatetime := ed_data.date;
        qrdav.open;


      if qrdav.RecordCount > 0 then
      begin
        frmMsg_Operador.lb_msg.Caption := 'Aguarde! Imprimindo relação de DAV...';
        frmMsg_Operador.Show;
        frmMsg_Operador.Refresh;

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
       frmMsg_Operador.Hide;
      end;

end;

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.arquivo_fiscal(data:tdatetime):string;
var
  txt : textfile;
  sNOme_arquivo : string;

begin
  {Anexo VI -  Arquivo eletronico dos registros Efetuados pelo ECF
    Registros
    R01 - Identificação do ECF
    R02 - Relações de Reduções Z
    R03 - Detalhamento da Redução Z
    R04 - Cupom Fiscal
    R05 - Detalhamento do Cupoom Fiscal
    R06 - Demais documentos emitidos
    R07 - Detalhes dos Cupons / Cupons Nao fiscais / Meios de Pagamento
    EAD - Assinatura Digital

    Nome do Arquivo: CCCCCCNNNNNNNNNNNNNNDDMMAAAA.txt
    CCCCCC -----> Codigo Nacional de identificação
    NNNNNNNNNNNNNN --> 14 ultimos digitos do do serial do ecf
    DDMMAAAA --> data do movimento no caso da da geracao automatica apos a reducao Z
                 ou data da emissao qdo for solicitado a sua geracao.

  }

   try

    // Inciando a criacao do arquivo
    sNome_Arquivo := 'C:\DATASAC\paf\Txt\MovtoEcf\'+sECF_Codigo_Sefa+copy(sECF_Serial,length(sECF_serial)-14,14)+
                   somenteNumero(datetostr(data))+'.txt';
    assignfile(txt, sNOme_arquivo);
    rewrite(txt);
    // Registro R01
    Write(txt,'R01');
    //02 Numero de Serie/Fabricacao
    Write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
    //03 MF Adicional
    write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
    //04 Tipo de ECF
    write(txt,texto_justifica(sECF_Tipo,7,' ',taEsquerda));
    //05 Marca do ECF
    write(txt,texto_justifica(sECF_Marca,20,' ',taEsquerda));
    //06 Modelo do ECF
    write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
    //07 Versao do SB
    write(txt,texto_justifica(sECF_Versao_SB,10,' ',taEsquerda));
    //08 Data inst. SB
    write(txt,texto_justifica(sECF_Data_SB,8,' ',taEsquerda));
    //09 Data inst. SB
    write(txt,texto_justifica(sECF_Hora_SB,6,' ',taEsquerda));
    //10 Data inst. SB
    write(txt,texto_justifica(sECF_Caixa,3,'0',taDireita));
    //11 CNPJ do Usuario
    write(txt,texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda));
    //12 IE do usuario
    write(txt,texto_justifica(somenteNumero(sEmpresa_IE),14,' ',taEsquerda));
    //13 CNPJ da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_CNPJ),14,' ',taEsquerda));
    //14 IE da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_IE),14,' ',taEsquerda));
    //15 IM da Desenvolvedora
    write(txt,texto_justifica(somenteNumero(sPAF_IM),14,' ',taEsquerda));
    //16 Nome da Desenvolvedora
    write(txt,texto_justifica(sPAF_Empresa,40,' ',taEsquerda));
    //17 Nome do PAF
    write(txt,texto_justifica(sPAF_Nome,40,' ',taEsquerda));
    //18 Versao do PAF
    write(txt,texto_justifica(sPAF_Versao,10,' ',taEsquerda));
    //19 Codigo MD5
    write(txt,texto_justifica(sPAF_MD5,32,' ',taEsquerda));
    //20 Data Inicial - 8
    write(txt,troca_data(DateToStr(data)));
    //21 Data Final - 8
    write(txt,troca_data(DateToStr(data)));
    //22 Versao do Ato Cotepe
    writeln(txt,sPAF_Versao_ER);


    //Registro 02 - Relações de reduções Z
    // filtrar o banco de dados de reducoes Z
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('Select * from reducaoZ');
    qrarquivo.sql.add('where data_movimento = :datai');
    qrarquivo.sql.add('and ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('order by data_movimento');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;

    // gerar um arquivo R02 para cada reduzao Z emitida
    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R02');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CRZ - 6
      write(txt,texto_justifica(qrarquivo.fieldbyname('CRZ').asstring,6,'0',taDireita));
      //07 COO - 6
      write(txt,texto_justifica(qrarquivo.fieldbyname('COO').asstring,6,'0',taDireita));
      //08 CRO - 6
      write(txt,texto_justifica(qrarquivo.fieldbyname('CRO').asstring,6,'0',taDireita));
      //09 Data do Movimento - 8 - AAAAMMDD
      write(txt,troca_data(qrarquivo.fieldbyname('data_movimento').asstring));
      //10 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(qrarquivo.fieldbyname('data_emissao').asstring));
      //11 Hora de Emissao - 6 - HHMMSS
      write(txt,texto_justifica(somenteNumero(qrarquivo.fieldbyname('hora_emissao').asstring),6,' ',tadireita));
      //12 Venda bruta diária - 14 - 00000000001011 -> R$ 10,11
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('venda_bruta').asfloat)),14,'0',taDireita));
      //13 flag de Incidencia de desconto de ISSQN - S ou N
      writeln(txt,texto_justifica(sECF_Desconto_Iss,1,'N',taEsquerda));
      qrarquivo.next;
    end;
    // final do registro R02


    //Registro R03 - Detalhe da Reduçao Z
    //filtar o banco de dados de reducaoz_total_parcial
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('select reducaoz_total_parcial.*, reducaoz.CRZ, reducaoz.data_movimento');
    qrarquivo.sql.add('from reducaoz_total_parcial, reducaoz');
    qrarquivo.sql.add('where reducaoz_total_parcial.cod_reducaoz = reducaoz.codigo');
    qrarquivo.sql.add('and reducaoz.data_movimento =  :datai');
    qrarquivo.sql.add('and reducaoz.ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('order by reducaoz.data_movimento, reducaoz_total_parcial.codigo');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;
    // gerar um arquivo R03 para cada totalizador de cada reducao z emitida
    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R03');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CRZ - 6
      write(txt,texto_justifica(qrarquivo.fieldbyname('CRZ').asstring,6,'0',taDireita));
      //07 - Totalizador Parcial - 7
      write(txt,texto_justifica(qrarquivo.fieldbyname('totalizador').asstring,7,' ',taEsquerda));
      //08 - Valor acumulado - 13
      writeln(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor').asfloat)),13,'0',taDireita));
      qrarquivo.next;
    end;
    // final do registro R03


    //Registro R04 - Cupom fiscal
    // filtrar o banco de dados de cupom
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('select * from cupom');
    qrarquivo.sql.add('where data = :datai');
    qrarquivo.sql.add('and ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('order by data, codigo');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;
    // gerar um registro r04 para cada cupom
    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R04');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 CCF
      write(txt,texto_justifica(qrarquivo.fieldbyname('ccf').asstring,6,'0',taDireita));
      //07 COO
      write(txt,texto_justifica(qrarquivo.fieldbyname('numero').asstring,6,'0',taDireita));
      //8 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(qrarquivo.fieldbyname('data').asstring));
      //9 Subttotal do documento - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_produto').asfloat)),14,'0',taDireita));
      //10 Desconto sobre subtotal - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_desconto').asfloat)),13,'0',taDireita));
      //11 Indicador do tipo de desconto - V ou P
      write(txt,'V');
      //12 Acrescimo sobre subtotal - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_acrescimo').asfloat)),13,'0',taDireita));
      //13 Indicador do tipo de acrescimo - V ou P
      write(txt,'V');
      //14 Valor total liquido - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_TOTAL').asfloat)),14,'0',taDireita));
      //15 Indicador de cancelamento
      if qrarquivo.fieldbyname('cancelado').asinteger = 1 then
        write(txt,'S')
      else
        write(txt,'N');
      //16 Cancelamento de Acrescimo ou desconto no subtotal
      write(txt,'0000000000000');
      //17 Ordem de aplicacao do Desconto ou Acrescimo
      if qrarquivo.fieldbyname('valor_desconto').asfloat > 0 then
        write(txt,'D')
      else
         if qrarquivo.fieldbyname('valor_acrescimo').asfloat > 0 then
           write(txt,'A')
         else
           write(txt,' ');
      //18 Nome do cliente - 40
      Write(txt,texto_justifica(qrarquivo.fieldbyname('nome_consumidor').asstring,40,' ',taEsquerda));
      //18 CPF/CNPJ do cliente - 14
      Writeln(txt,texto_justifica(somenteNumero(qrarquivo.fieldbyname('cpf_consumidor').asstring),14,' ',taEsquerda));
      qrarquivo.next;
    end;
    // final do registro R04


    //Registro R05 - Detalhe do Cupom Fiscal (items)
    // filtrar a tabela de CUPOM_ITEM, CUPOM e ESTOQUE
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('select cupom_item.*, cupom.numero, cupom.ccf, cupom.data, estoque.nome produto');
    qrarquivo.sql.add('from cupom_item, cupom, estoque');
    qrarquivo.sql.Add('where cupom_item.cod_cupom = cupom.codigo');
    qrarquivo.sql.add('and cupom_item.cod_produto = estoque.codigo');
    qrarquivo.sql.add('and cupom.data = :datai');
    qrarquivo.sql.add('and cupom.ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('order by cupom.data, cupom.numero, cupom_item.item');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;
    // gerar um arquivo r05 para cada item de cada cupom emitido
    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R05');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(qrarquivo.fieldbyname('numero').asstring,6,'0',taDireita));
      //07 CCF
      write(txt,texto_justifica(qrarquivo.fieldbyname('ccf').asstring,6,'0',taDireita));
      //08 Numero do Item
      write(txt,texto_justifica(qrarquivo.fieldbyname('item').asstring,3,'0',taDireita));
      //09 Codigo do Produto
      write(txt,texto_justifica(qrarquivo.fieldbyname('cod_produto').asstring,14,' ',taEsquerda));
      //10 Descricao do produto
      write(txt,texto_justifica(qrarquivo.fieldbyname('produto').asstring,100,' ',taEsquerda));
      //11 Quantidade - 7
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.000',qrarquivo.fieldbyname('qtde').asfloat)),7,'0',taDireita));
      //12 Descricao do produto
      write(txt,texto_justifica(qrarquivo.fieldbyname('unidade').asstring,3,' ',taEsquerda));
      //13 Valor Unitario - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.000',qrarquivo.fieldbyname('valor_unitario').asfloat)),8,'0',taDireita));
      //14 Desconto - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_desconto').asfloat)),8,'0',taDireita));
      //15 Acrescimo - 8
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_acrescimo').asfloat)),8,'0',taDireita));
      //16 Valor Total Liquido - 14
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor_total').asfloat)),14,'0',taDireita));
      //17 Totalizador Parcial (aliquota - conforme tabela);
      write(txt,texto_justifica(qrarquivo.fieldbyname('cod_totalizador').asstring,7,' ',taEsquerda));
      //18 Indicador de Cancelamento
      if qrarquivo.FieldByName('cancelado').asinteger = 1 then
        write(txt,'S')
      else
        write(txt,'N');
      //19 Quantidade cancelada (somente qdo houver cancelamento parcial do item) sempre zerado
      write(txt,'0000000');
      //20 Valor cancelado (somenete qdo houver cancelamento parcial do item) sempre zerado
      write(txt,'0000000000000');
      //21 Cancelamento do acrescimo no item
      write(txt,'0000000000000');
      //22 indicador de arredondamento ou truncamento - sempre truncamento
      write(txt,'T');
      //23 indicador de producao propria ou de terceiros
      write(txt,'T');
      //24 Quantidade de casas decimais na qtde
      write(txt,'3');
      //25 quantidade de casas decimais no valor unitario
      writeln(txt,'3');
      qrarquivo.next;
    end;
    // Finalizando o arquivo



    //R06 - Demais documentos emitidos pelo ECF
    // Filtrar a tabela NAO_FISCAL
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('select * from nao_fiscal');
    qrarquivo.sql.add('where ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('and data = :datai');
    qrarquivo.sql.add('order by data, codigo');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;
    // gerar um registro r06 para cada comprovante emitido
    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R06');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(qrarquivo.fieldbyname('coo').asstring,6,'0',taDireita));
      //07 gnf
      write(txt,texto_justifica(qrarquivo.fieldbyname('gnf').asstring,6,'0',taDireita));
      //08 grg
      write(txt,texto_justifica(qrarquivo.fieldbyname('grg').asstring,6,'0',taDireita));
      //09 cdc - 4
      write(txt,texto_justifica(qrarquivo.fieldbyname('cdc').asstring,4,'0',taDireita));
      //10 denominacao - 2
      write(txt,texto_justifica(qrarquivo.fieldbyname('denominacao').asstring,2,' ',taEsquerda));
      //11 Data de Emissao - 8 - AAAAMMDD
      write(txt,troca_data(qrarquivo.fieldbyname('data').asstring));
      //12 Hora de Emissao - 6 - HHMMSS
      writeln(txt,texto_justifica(somenteNumero(qrarquivo.fieldbyname('hora').asstring),6,' ',tadireita));

      qrarquivo.next;
    end;

    // R07 - DETALHE DO CUPOM FISCAL E DO DOCUMENTO NAO FISCAL -> MEIOS DE PAGAMENTO
    // Filtrar a tabela CUPOM_FORMA e conjunto com CUPOM unido com NAO_FISCAL
    qrarquivo.close;
    qrarquivo.sql.clear;
    qrarquivo.sql.add('select');
    qrarquivo.sql.add('  COO,');
    qrarquivo.sql.add('  CCF,');
    qrarquivo.sql.add('  GNF,');
    qrarquivo.sql.add('  Forma,');
    qrarquivo.sql.add('  Valor');
    qrarquivo.sql.add('from');
    qrarquivo.sql.add('  (Select');
    qrarquivo.sql.add('     cupom.numero as COO,');
    qrarquivo.sql.add('     cupom.ccf as ccf,');
    qrarquivo.sql.add('     ''000000'' as gnf,');
    qrarquivo.sql.add('     cupom_forma.forma as Forma,');
    qrarquivo.sql.add('     cupom_forma.valor as Valor');
    qrarquivo.sql.add('   from');
    qrarquivo.sql.add('     cupom_forma, cupom');
    qrarquivo.sql.add('   where');
    qrarquivo.sql.add('     cupom_forma.cod_cupom = cupom.codigo and');
    qrarquivo.sql.add('     cupom.data = :datai and cupom.cancelado = 0 and');
    qrarquivo.sql.add('     cupom.ecf = '''+sECF_Serial+'''');
    qrarquivo.sql.add('   union');
    qrarquivo.sql.add('   Select');
    qrarquivo.sql.add('     nao_fiscal.coo as COO,');
    qrarquivo.sql.add('     ''000000'' as ccf,');
    qrarquivo.sql.add('     nao_fiscal.gnf as gnf,');
    qrarquivo.sql.add('     cupom_forma.forma as Forma,');
    qrarquivo.sql.add('     cupom_forma.valor as Valor');
    qrarquivo.sql.add('   from');
    qrarquivo.sql.add('     cupom_forma, nao_fiscal');
    qrarquivo.sql.add('   where');
    qrarquivo.sql.add('     cupom_forma.cod_cupom = nao_fiscal.codigo and');
    qrarquivo.sql.add('     nao_fiscal.data = :datai and');
    qrarquivo.sql.add('     nao_fiscal.ecf = '''+sECF_Serial+''') as TMP');
    qrarquivo.parambyname('datai').asdatetime := data;
    qrarquivo.open;
    qrarquivo.first;

    // gerar um registro r07 para cada meio de pagamento utilizado

    while not qrarquivo.eof do
    begin
      //01 - Tipo
      write(txt,'R07');
      //02 - Numero de Fabricacao
      write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
      //03 MF Adicional
      write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
      //04 Modelo do ECF
      write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
      //05 Numero do Usuario
      write(txt,texto_justifica(sECF_usuario,2,'0',taDireita));
      //06 COO
      write(txt,texto_justifica(qrarquivo.fieldbyname('coo').asstring,6,'0',taDireita));
      //07 CCF
      write(txt,texto_justifica(qrarquivo.fieldbyname('CCF').asstring,6,'0',taDireita));
      //08 GNF
      write(txt,texto_justifica(qrarquivo.fieldbyname('GNF').asstring,6,'0',taDireita));
      //09 Meio de Pagamento - 15
      write(txt,texto_justifica(qrarquivo.fieldbyname('forma').asstring,15,' ',taEsquerda));
      //10 Valor Pago - 13
      write(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrarquivo.fieldbyname('valor').asfloat)),13,'0',taDireita));
      //11 Indicador de estorno N ou S
      write(txt,'N');
      //12 Valor extornado
      writeln(txt,'0000000000000');
      qrarquivo.next;
    end;
    closefile(txt);

    // assinatura digital
    assinatura_digital(snome_arquivo);

    result := snome_arquivo;
  except
    result := 'ERRO';
  end;


end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.Z_REsumo();
begin
  query.close;
  query.sql.clear;
  // venda bruta
  query.sql.add('select sum(cupom_item.valor_total) as venda_bruta,');
  // cancelamento icms
  query.sql.add('       (select sum(cupom_item.valor_total) from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data = :data and cupom_item.cancelado = 1) as cancelamento_icms,');
  // desconto icms
  query.sql.add('       ((select sum(cupom_item.valor_desconto) from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data = :data and cupom_item.cancelado = 0)');
  query.sql.add('       +(select sum(cupom.valor_desconto) from cupom where cupom.data = :data and cupom.cancelado = 0)) as desconto_icms,');
  // acrescimo icms
  query.sql.add('       ((select sum(cupom_item.valor_acrescimo) from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data = :data and cupom_item.cancelado = 0)');
  query.sql.add('       +(select sum(cupom.valor_acrescimo) from cupom where cupom.data = :data and cupom.cancelado = 0)) as acrescimo_icms');
  query.sql.add('from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data = :data');
  query.parambyname('data').asdatetime := ed_data.date;
  query.open;



  // limpar o grid
  grid_resumo.ClearRows;
  // Iniciar a alimentação
  // 1 - Venda Bruta Diária
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 1;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Venda Bruta Diária';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('venda_bruta').asfloat;
  // 2 - Cancelamento ICMS
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 2;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Cancelamento ICMS';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('cancelamento_icms').asfloat;
  // 3 - Desconto ICMS
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 3;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Desconto ICMS';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('desconto_icms').asfloat;
  // 4 - Total de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 4;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Total de ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 5 - Cancelamento de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 5;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Cancelamento ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 6 - Desconto de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 6;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Desconto ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 7 - Venda Liquida
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 7;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Venda Líquida';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat :=
      query.fieldbyname('venda_bruta').asfloat -
      query.fieldbyname('cancelamento_icms').asfloat -
      query.fieldbyname('desconto_icms').asfloat;
  // 8 - Acréscimo ICMS
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 8;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Acréscimo ICMS';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('acrescimo_icms').asfloat;
  // 9 - Acréscimo ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 9;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Acréscimo ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_Forma();
begin
  // filtrar a tabela de formas de pagamento
{  query.close;
  query.sql.clear;
  query.sql.add('select cupom_forma.forma, sum(cupom_forma.valor) total');
  query.sql.add('from cupom_forma, cupom, nao_fiscal');
  query.sql.add('where (cupom_forma.cod_cupom = cupom.codigo');
  query.sql.add('   or cupom_forma.cod_cupom = nao_fiscal.codigo)');
  query.sql.add('and (cupom.data = :data or nao_fiscal.data = :data) and cupom.cancelado = 0');
  query.SQL.add('group by cupom_forma.forma');
  }

  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('  Forma,');
  query.sql.add('  sum(Valor) as total');
  query.sql.add('from');
  query.sql.add('  (Select');
  query.sql.add('     cupom_forma.forma as Forma,');
  query.sql.add('     cupom_forma.valor as Valor');
  query.sql.add('   from');
  query.sql.add('     cupom_forma, cupom');
  query.sql.add('   where');
  query.sql.add('     cupom_forma.cod_cupom = cupom.codigo and');
  query.sql.add('     cupom.ecf = '''+sECF_Serial+''' and');
  query.sql.add('     cupom.data = :data and cupom.cancelado = 0');
  query.sql.add('   union');
  query.sql.add('   Select');
  query.sql.add('     cupom_forma.forma as Forma,');
  query.sql.add('     cupom_forma.valor as Valor');
  query.sql.add('   from');
  query.sql.add('     cupom_forma, nao_fiscal');
  query.sql.add('   where');
  query.sql.add('     cupom_forma.cod_cupom = nao_fiscal.codigo and');
  query.sql.add('     nao_fiscal.ecf = '''+sECF_Serial+''' and');  
  query.sql.add('     nao_fiscal.data = :data) as TMP');
  query.sql.add('   group by Forma');
  query.ParamByName('data').asdatetime := ed_data.Date;
  query.open;
  query.first;
  // limpar o grid
  grid_forma.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_forma.AddRow(1);
    grid_forma.Cell[0,grid_forma.LastAddedRow].AsInteger := grid_forma.LastAddedRow + 1;
    grid_forma.Cell[1,grid_forma.LastAddedRow].AsString := query.fieldbyname('forma').asstring;
    grid_forma.Cell[2,grid_forma.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_aliquota();
begin
  // filtrar a tabela de itens do cupom agrupando por aliquota
  query.close;
  query.sql.clear;
  query.sql.add('select cupom_item.cst, cupom_item.aliquota, sum(cupom_item.valor_total) total');
  query.sql.add('from cupom_item, cupom');
  query.sql.add('where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('and cupom.data = :data and cupom.cancelado = 0');
  query.sql.add('group by cupom_item.cst, cupom_item.aliquota');
  query.sql.add('order by cupom_item.cst, cupom_item.aliquota');
  query.ParamByName('data').asdatetime := ed_data.Date;
  query.open;
  query.first;
  // limpar o grid
  grid_aliquota.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_aliquota.AddRow(1);
    grid_aliquota.Cell[0,grid_aliquota.LastAddedRow].AsInteger := grid_aliquota.LastAddedRow + 1;
    grid_aliquota.Cell[1,grid_aliquota.LastAddedRow].AsString := Retorna_aliquota(
                                                           query.fieldbyname('cst').asstring,
                                                           query.fieldbyname('aliquota').asfloat);
    grid_aliquota.Cell[2,grid_aliquota.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_outros();
begin
  // filtrar a tabela de documentos naos fiscais agrupando por indice e descricao
  query.close;
  query.sql.clear;
  query.sql.add('select indice, descricao, sum(valor) total');
  query.sql.add('from nao_fiscal');
  query.sql.add('where data = :data');
  query.sql.add('group by indice, descricao');
  query.sql.add('order by indice');
  query.parambyname('data').asdatetime := ed_data.Date;
  query.open;
  // limpara o grid
  grid_outros.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_outros.AddRow(1);
    grid_outros.Cell[0,grid_outros.LastAddedRow].Asstring :=
      zerar(query.fieldbyname('indice').asstring,2);
    grid_outros.Cell[1,grid_outros.LastAddedRow].AsString :=query.fieldbyname('descricao').asstring;
    grid_outros.Cell[2,grid_outros.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.grid_resumoCellFormating(Sender: TObject;
  ACol, ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if grid_resumo.Cell[0,ARow].AsInteger = 7 then
  begin
    FontStyle := [fsBold];
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.FormShow(Sender: TObject);
var i : integer;
begin

  ed_data.Date := dData_Movimento;

  If bServidor_Conexao then
  begin
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
    qrpre_venda.ParamByName('datam').asdatetime := ed_data.date - 1;
    qrPre_Venda.OPEN;

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

  // mesas
  qrMesa.close;
  qrMesa.sql.clear;
  qrMesa.sql.add('select sum(r000002.total) soma,');
  qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('from r000001, r000002');
  qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
  qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('order by r000001.codigo');
  qrMesa.open;

  grid_mesa.ClearRows;

  qrMesa.First;
  while not qrMesa.Eof do
  begin
    i := grid_mesa.AddRow(1);


    grid_mesa.Cell[0,i].Asstring := qrMesa.fieldbyname('codigo').asstring;
    grid_mesa.Cell[1,i].Asdatetime := qrMesa.fieldbyname('data').asdatetime;
    grid_mesa.Cell[2,i].Asstring := qrMesa.fieldbyname('hora').asstring;
    grid_mesa.Cell[3,i].Asfloat := qrMesa.fieldbyname('soma').asfloat;

    qrMesa.Next;
  end;




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






  ed_operador.Text := sNome_Operador;
  ed_ecf.Text := sECF_Serial;
  // resumo da reducao z
  Z_Resumo;
  // resumo por forma de pagamento
  z_Forma;
  // resumo por aliquota
  z_aliquota;
  // resumo de outros documentos
  z_outros;

  // davs

        qrdav.close;
        qrdav.sql.clear;
        qrdav.sql.add('select * from DAV');
        qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
        qrdav.sql.add('and data = :datai');
        qrdav.sql.add('order by numero, data');
        qrdav.parambyname('datai').asdatetime := ed_data.date;
        qrdav.open;

        grid_dav.ClearRows;
        qrdav.first;
        while not qrdav.eof do
        begin
          i := grid_dav.AddRow(1);
          grid_dav.Cell[0,i].asstring := qrdav.fieldbyname('coo').asstring;
          grid_dav.Cell[1,i].asstring := qrdav.fieldbyname('NUMERO').asstring;
          grid_dav.Cell[2,i].asstring := qrdav.fieldbyname('TITULO').asstring;
          grid_dav.Cell[3,i].asFLOAT  := qrdav.fieldbyname('VALOR').asFLOAT;
          qrdav.Next;
        end;



end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_okClick(Sender: TObject);
var
  scodRZ:string;
  i : integer;
  pTexto : PAnsiChar;
  iMes : integer;
  brefaz_dav, brefaz_pre_venda, brefaz_abastecimento, brefaz_encerrante : boolean;
  dData_movto : tdatetime;
  scod_cupom : string;

begin
  // abrir o formulario solicitando a senha do supervisor
  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.showmodal;
  frmvenda.Imprime_display_anterior;

  // verisificar se o supervisor foi logado
  if bSupervisor_autenticado then
  begin
    // verificar serial do ecf
    if not verifica_ecf then
    begin
       application.messagebox('O número de serie do ECF não condiz com o número cadastrado no PAF!'+#13+
                              'O Procedimento será abortado!','Erro',mb_ok+mb_iconerror);


       exit;
    end;

    // imprimir a reducao z
    if application.messagebox(pansichar('Atenção!'+#13+
                                        'Após o fechamento do caixa não será mais possível'+
                                        ' efetuar venda nesta data!'+#13+
                                        'Deseja prosseguir?'),
                                        'Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idyes
    then
    begin
      // verificar se eh a primeira reducao z do mes
      // caso seja, imprimir uma leitura da memoria fiscal
      // do periodo anterior

      query.close;
      query.sql.clear;
      query.sql.add('select');
      query.sql.add('(cast(extract(month from max(data_movimento)) as varchar(2))');
      query.sql.add('|| ''/'' ||');
      query.sql.add('cast(extract(year from max(data_movimento)) as varchar(4)))');
      query.sql.add('as Mes');
      query.sql.add('from reducaoz');
      query.sql.add('where ecf = '''+sECF_Serial+''''); 
      query.open;

      if query.fieldbyname('mes').asstring <> '' then
      begin
        iMes := strtoint(copy(zerar(query.fieldbyname('mes').asstring,7),1,2));
        if iMes < strtoint(copy(datetostr(dData_Sistema),4,2)) then
        begin

          repeat
            frmMsg_Operador.lb_msg.caption := 'Emitindo a Leitura da Memória fiscal do mês anterior...';
            frmMsg_Operador.Show;
            frmMsg_Operador.Refresh;

            // emitir a leitura da memoria fiscal
            sMsg := cECF_Leitura_Memoria_Fiscal(iECF_modelo,
                                               'DATA','A','ECF',
                                               '01/'+zerar(query.fieldbyname('mes').asstring,7),
                                               datetostr(UltimoDiaMes(
                                               strtodate('01/'+zerar(query.fieldbyname('mes').asstring,7)))));
            if sMsg <> 'OK' then
            begin
              frmMsg_Operador.Hide;
              if application.messagebox(pansichar('ECF retornou erro!'+#13+
                                               'Mensagem: '+sMsg+#13+
                                               'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)
                                               = idNo then
              begin
                break;
              end
              else
              begin
                frmMsg_Operador.Show;
                frmMsg_Operador.Refresh;
              end;

            end;
          until sMsg = 'OK';

        end;
      end;


      brefaz_pre_venda := false;
      brefaz_abastecimento := false;


      (******************* A B A S T E C I M E N T O S ******************************)
      // verificar a existencia de abastecimentos pendentes
      if frmcaixa_fechamento.grid_abastecimento.RowCount > 0 then
      begin
        frmMsg_Operador.hide;
        frmMsg_Operador.Refresh;

        for i := 0 to frmcaixa_fechamento.grid_abastecimento.RowCount - 1 do
        begin
          bLanca_Abastecimento := true;
          frmMsg_Operador.lb_msg.caption := 'Aguarde! Registrando abastecimento pendente...';
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
              brefaz_abastecimento := true;
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
                                        frmcaixa_fechamento.grid_abastecimento.Cell[10,i].asstring);
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
                iCodigo_abastecimento :=  frmCaixa_fechamento.grid_abastecimento.Cell[10,i].asinteger;
                sPosto_rodape := //'Tanque'+frmcaixa_fechamento.grid_abastecimento.cell[11,i].asstring+
                                 'Bomba'+frmCaixa_fechamento.grid_abastecimento.cell[2,i].asstring+
                                 'Bico'+frmCaixa_fechamento.grid_abastecimento.cell[3,i].asstring+
                                 'EI'+somenteNumero(zerar(
                                 frmCaixa_fechamento.grid_abastecimento.cell[8,i].asstring,6))+
                                 'EF'+somenteNumero(
                                 zerar(frmCaixa_fechamento.grid_abastecimento.cell[9,i].asstring,6));
                ilinha_abastecimento := grid.SelectedRow;
                Cancela_cupom_aberto;
            end;
          end;
        end;
      end;

      // verificar se existe diferenca de litragem nos encerrantes

      bt_cupom_encerranteClick(frmcaixa_fechamento);

      bLanca_abastecimento := false;
      if not brefaz_abastecimento then frmcaixa_fechamento.grid_abastecimento.ClearRows;

      (** final dos abastecimentos **)












      (******************* P R E   -   V E N D A S ******************************)
      // verificar a existencia de prevendas abertas
      if grid_venda.RowCount > 0 then
      begin
        frmMsg_Operador.hide;
        frmMsg_Operador.Refresh;
        if grid_venda.RowCount = 1 then
          pTexto := pansichar('Existe uma pré-venda em aberto!'+#13+
                    'Para efetivar a impressão da redução Z, a mesma terá que ser cancelada!'+#13+
                    'Deseja prosseguir?')
        else
          pTexto := pansichar('Existem '+inttostr(grid_venda.RowCount)+' pré-vendas em aberto!'+#13+
                    'Para efetivar a impressão da redução Z, todas terão que ser canceladas!'+#13+
                    'Deseja prosseguir?');

        if application.Messagebox(pTexto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idNO
        then EXIT;

        bLanca_pre_venda := true;
        for i := 0 to grid_venda.RowCount - 1 do
        begin
          frmMsg_Operador.lb_msg.caption := 'Aguarde! Cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
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
              brefaz_pre_venda := true;
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

        if not brefaz_pre_venda then grid_venda.ClearRows;

        bLanca_pre_venda := false;
        frmMsg_Operador.Hide;
        frmMsg_Operador.Refresh;
      end
      else
      begin


      end;

      (** final da pre-venda **)


      (* DAVS *)
      (* VERIFICAR SE O CANCELAMENTO DAS PRE-VENDAS DERAM OK - reducao z tirada no mesmo dia *)
      (* caso contrario emitir o relatorio dos davs apos a emissao da reducao z junto com as pre-vendas *)
      brefaz_dav := false;
      if not relatorio_dav() then brefaz_dav := true;

      (* mesas abertas *)
      if grid_mesa.RowCount > 0 then
        relatorio_mesa();

      (* ecnerrantes *)
      brefaz_encerrante := false;
      if sRamo_Tipo = '3' then
        if not relatorio_posto() then brefaz_encerrante := true;



      frmMsg_Operador.hide;
      frmMsg_Operador.lb_msg.caption := 'Aguarde! Emitindo a redução Z...';
      frmMsg_Operador.show;
      frmMsg_Operador.Refresh;
      repeat
        sMsg := cECF_ReducaoZ(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          frmMsg_Operador.Hide;
          if application.messagebox(pansichar('ECF retornou erro!'+#13+
                                           'Mensagem: '+sMsg+#13+
                                           'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)
                                           = idNo then
          begin
            break;
          end
          else
          begin
            frmMsg_Operador.Show;
            frmMsg_Operador.Refresh;
          end;

        end;
      until sMsg = 'OK';


      if sMsg = 'OK' then
      begin
        frmMsg_Operador.lb_msg.caption := 'Aguarde! Salvando informações da Redução Z...';
        frmMsg_Operador.show;
        frmMsg_Operador.Refresh;

        with frmModulo do
        begin
          // lancar reducao z no banco de dados - Tabela ReducaoZ
          spReducaoZ.Close;
          sCodRZ := codifica_reducaoZ;
          spReducaoZ.ParamByName('codigo').AsString := sCodRZ;
          spReducaoZ.parambyname('ecf').asstring := sECF_Serial;
          spReducaoZ.ParamByName('usuario').asstring := sECF_usuario;

          // CRZ
          repeat
            sMsg := cECF_ReducaoZ_Contador_CRZ(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.show;
              frmMsg_Operador.Refresh;

              if application.messagebox(pansichar('Erro ao extrair CRZ!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
                frmMsg_Operador.hide;

            end
            else
              spReducaoZ.ParamByName('CRZ').asstring := sMsg;

          until sMsg <> 'ERRO';

          if sMsg = 'ERRO' then exit;

          // COO
          repeat
            sMsg := cECF_ReducaoZ_Contador_COO(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.show;
              frmMsg_Operador.Refresh;
              if application.messagebox(pansichar('Erro ao extrair COO!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
                frmMsg_Operador.hide;

            end
            else
              spReducaoZ.ParamByName('COO').asstring := sMsg;
          until sMsg <> 'ERRO';

          if sMsg = 'ERRO' then exit;

          // CRO
          repeat
            sMsg := cECF_ReducaoZ_Contador_CRO(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair CRO!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
              spReducaoZ.ParamByName('CRO').asstring := sMsg;
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;

          // DATA DO MOVIMENTO
          repeat
            sMsg := cECF_ReducaoZ_Data_Movimento(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair data do movimento!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
            begin
              spReducaoZ.ParamByName('Data_movimento').asdatetime := formata_data(sMsg);
              dData_movto := formata_data(sMsg);
            end;
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;


          // DATA e HORA DA EMISSAO
          repeat
            sMsg := cECF_ReducaoZ_DataHora(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair data e hora da emissão!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
            begin
              spReducaoZ.ParamByName('Data_emissao').asdatetime := formata_data(copy(sMsg,1,6));
              spReducaoZ.ParamByName('Hora_emissao').AsTime := strtotime(formata_hora(copy(sMsg,8,6)));
            end;
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;


          // TOTALIZADOR GERAL
          repeat
            sMsg := cECF_ReducaoZ_Totalizador_Geral(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair totalizador geral!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
              spReducaoZ.ParamByName('totalizador_geral').asfloat := strtofloat(sMSG);
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;

          // VENDA BRUTA
          repeat
            sMsg := cECF_ReducaoZ_Venda_Bruta(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair venda bruta!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
              spReducaoZ.ParamByName('venda_bruta').asfloat := strtofloat(sMSG);
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;

          // TOTALIZADORES PARCIAIS
          repeat
            sMsg := cECF_ReducaoZ_Totalizador_Parcial(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair totalizadores parciais!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end;
          until sMsg <> 'ERRO';
          if sMsg = 'ERRO' then exit;



          // rodar a tabela de totalizadores
          for i := 1 to 49 do
          begin
            if (Trim(tbtotalizador[i].nome) = '') or
               (Trim(tbtotalizador[i].nome) = '00000') or
               (Trim(tbtotalizador[i].nome) = '0000')
                then
               // nao registra
            else
            begin
              // Cancelamento ICMS
              if tbtotalizador[i].Nome = 'Can-T' then
                 spReducaoZ.ParamByName('cancelamento_icms').asfloat := tbtotalizador[i].Valor;
              // Desconto ICMS
              if tbtotalizador[i].Nome = 'DT' then
                 spReducaoZ.ParamByName('desconto_icms').asfloat := tbtotalizador[i].Valor;
              // Cancelamento ISS
              if tbtotalizador[i].Nome = 'Can-S' then
                 spReducaoZ.ParamByName('cancelamento_iss').asfloat := tbtotalizador[i].Valor;
              // Desconto ISS
              if tbtotalizador[i].Nome = 'DS' then
                 spReducaoZ.ParamByName('desconto_iss').asfloat := tbtotalizador[i].Valor;
              // Acrescimo ICMS
              if tbtotalizador[i].Nome = 'AT' then
                 spReducaoZ.ParamByName('acrescimo_icms').asfloat := tbtotalizador[i].Valor;
              // Acrescimo ISS
              if tbtotalizador[i].Nome = 'AS' then
                 spReducaoZ.ParamByName('acrescimo_iss').asfloat := tbtotalizador[i].Valor;
            end;
          end;

          // TOTAL ISS
          repeat
            sMsg := cECF_ReducaoZ_Total_ISS(iECF_Modelo);
            if sMsg = 'ERRO' then
            begin
              frmMsg_Operador.hide;
              if application.messagebox(pansichar('Erro ao extrair o Total do ISS!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconquestion) = idNo then
                break
              else
              begin
                frmMsg_Operador.show;
                frmMsg_Operador.Refresh;
              end;

            end
            else
              spReducaoZ.ParamByName('total_iss').asfloat := strtofloat(sMsg);
          until sMsg <> 'ERRO';

          if sMsg = 'ERRO' then
            exit;

          spReducaoZ.ParamByName('venda_liquida').asfloat :=
            spReducaoZ.ParamByName('venda_bruta').asfloat -
            spReducaoZ.ParamByName('cancelamento_icms').asfloat -
            spReducaoZ.ParamByName('desconto_icms').asfloat -
            spReducaoZ.ParamByName('total_iss').asfloat -
            spReducaoZ.ParamByName('cancelamento_iss').asfloat -
            spReducaoZ.ParamByName('desconto_iss').asfloat;

          spReducaoZ.ParamByName('ecf_caixa').asstring := copy(sECF_Caixa,1,3);

          try
            spReducaoz.Prepare;
            spReducaoZ.Execute;
          except
            on E:Exception do
            begin
              frmMsg_Operador.hide;
              Application.MessageBox(pansichar('Erro ao gravar a redução Z no banco de dados'+#13+
                                               'Mensagem: '+E.Message+#13+
                                               'O procedimento será abortado'),'Erro',mb_ok+
                                               mb_iconerror);
              exit;
            end;
          end;

          frmMsg_Operador.hide;
          frmMsg_Operador.lb_msg.caption := 'Aguarde! Lendo os totalizadores Parciais...';
          frmMsg_Operador.show;
          frmMsg_Operador.Refresh;


          (*TOTALIZADORES PARCIAIS*)
          (*Guardar em cada registro um totalizador*)


          try
            for i := 1 to 49 do
            begin
              if (Trim(tbtotalizador[i].nome) = '') or
                 (Trim(tbtotalizador[i].nome) = '00000') or
                 (Trim(tbtotalizador[i].nome) = '0000')
                  then
                 // nao registra
              else
              begin
                spReducaoZ_Total_Parcial.Close;
                spReducaoZ_Total_Parcial.ParamByName('codigo').asstring := sCodRZ+Zerar(inttostr(i),2);
                spReducaoZ_Total_Parcial.ParamByName('cod_reducaoZ').asstring := scodRZ;
                spReducaoZ_Total_Parcial.ParamByName('Totalizador').asstring := tbtotalizador[i].Nome;
                spReducaoZ_Total_Parcial.ParamByName('valor').asfloat :=  tbtotalizador[i].Valor;
                spReducaoZ_Total_Parcial.Prepare;
                spReducaoZ_Total_Parcial.Execute;
              end;
            end;
          except
            on E:Exception do
            begin
              frmMsg_Operador.hide;
              Application.MessageBox(pansichar('Erro ao gravar totalizadores parciais'+
                                               ' no banco de dados'+#13+
                                               'Mensagem: '+E.Message+#13+
                                               'O procedimento será abortado'),'Erro',mb_ok+
                                               mb_iconerror);
              // excluir a reducao z
              query.close;
              query.sql.clear;
              query.sql.add('delete from reducaoz where codigo = '''+scodRZ+'''');
              query.ExecSQL;

              exit;
            end;
          end;

          // verificar se eh para excluir as prevendas (caso a reducao z seja feita no outro dia)

          (******************* P R E   -   V E N D A S ******************************)
          // verificar a existencia de prevendas abertas
          if brefaz_pre_venda then
          begin
            sleep(1000);
            Application.ProcessMessages;
            for i := 0 to grid_venda.RowCount - 1 do
            begin
              frmMsg_Operador.lb_msg.caption := 'Aguarde! Cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;

              bLanca_pre_venda := true;
              with frmVenda do
              begin
                repeat
                  brefaz_pre_venda := abre_venda;
                  if not brefaz_pre_venda then
                  begin
                    if application.MessageBox('Erro ao abrir o cupom fiscal para fazer o cancelamento da pré-venda!'+#13+
                                              'Deseja tentar outra vez?','Erro',mb_yesno+mb_iconerror) = idno then
                    break;

                  end;
                until brefaz_pre_venda;

                if brefaz_pre_venda then
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

            bLanca_pre_venda := false;
            grid_venda.ClearRows;
            frmMsg_Operador.Hide;
            frmMsg_Operador.Refresh;
          end;

          if brefaz_abastecimento then
          begin
            sleep(1000);
            Application.ProcessMessages;
            frmMsg_Operador.hide;
            frmMsg_Operador.Refresh;

            for i := 0 to frmcaixa_fechamento.grid_abastecimento.RowCount - 1 do
            begin
              bLanca_Abastecimento := true;
              frmMsg_Operador.lb_msg.caption := 'Aguarde! Registrando abastecimento pendente...';
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
                  brefaz_abastecimento := true;
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
                                          frmcaixa_fechamento.grid_abastecimento.Cell[10,i].asstring);
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
                  iCodigo_abastecimento :=  frmCaixa_fechamento.grid_abastecimento.Cell[10,i].asinteger;
                  sPosto_rodape := //'Tanque'+frmcaixa_fechamento.grid_abastecimento.cell[11,i].asstring+
                                   'Bomba'+frmCaixa_fechamento.grid_abastecimento.cell[2,i].asstring+
                                   'Bico'+frmCaixa_fechamento.grid_abastecimento.cell[3,i].asstring+
                                   'EI'+somenteNumero(zerar(
                                   frmCaixa_fechamento.grid_abastecimento.cell[8,i].asstring,6))+
                                   'EF'+somenteNumero(
                                   zerar(frmCaixa_fechamento.grid_abastecimento.cell[9,i].asstring,6));
                  ilinha_abastecimento := grid.SelectedRow;
                  Cancela_cupom_aberto;
                end;
              end;
            end;
          end;

          if brefaz_dav then
          begin
            (* imprimir a relacao de dav *)
            relatorio_dav;
          end;
          if brefaz_encerrante then
          begin
            (* tentar imprimir o relatorio de encerrante*)
            relatorio_posto;
          end;


          // atualizar os dados no servidor


          // criar o arquivo fiscal automaticamente
          frmMsg_Operador.lb_msg.caption := 'Aguarde! Criando arquivo fiscal...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;

          sMsg := arquivo_fiscal(dData_movto);

          frmMsg_Operador.hide;

          if sMsg = 'ERRO' then
            Application.MessageBox('Erro ao criar o arquivo fiscal!','Erro',mb_ok+MB_ICONERROR)

          else
          BEGIN
            // atualizando a tabela de config com a data do movimento e situacao fechado
            query.Close;
            query.sql.clear;
            query.sql.add('update config set caixa_situacao = ''FECHADO'',');
            query.sql.add('caixa_data_movto = :data');
            query.ParamByName('data').asdatetime := ed_data.Date;
            query.ExecSQL;

            Application.MessageBox(pansichar('Procedimento concluído com sucesso!'+#13+
                                             'Arquivo criado em:'+#13+
                                             sMsg),'Aviso',mb_ok+MB_ICONINFORMATION);
            CLOSE;
            FRMVENDA.CLOSE;
          END;

        end;
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.Button1Click(Sender: TObject);
var i : integer;
begin
      // verificar a existencia de abastecimentos pendentes
      if frmcaixa_fechamento.grid_abastecimento.RowCount > 0 then
      begin
        frmMsg_Operador.hide;
        frmMsg_Operador.Refresh;

        for i := 0 to frmcaixa_fechamento.grid_abastecimento.RowCount - 1 do
        begin
          bLanca_Abastecimento := true;
          frmMsg_Operador.lb_msg.caption := 'Aguarde! Registrando abastecimento pendente...';
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
                                        frmcaixa_fechamento.grid_abastecimento.Cell[10,i].asstring);
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
                iCodigo_abastecimento :=  frmCaixa_fechamento.grid_abastecimento.Cell[10,i].asinteger;
                sPosto_rodape := //'Tanque'+frmcaixa_fechamento.grid_abastecimento.cell[11,i].asstring+
                                 'Bomba'+frmCaixa_fechamento.grid_abastecimento.cell[2,i].asstring+
                                 'Bico'+frmCaixa_fechamento.grid_abastecimento.cell[3,i].asstring+
                                 'EI'+somenteNumero(zerar(
                                 frmCaixa_fechamento.grid_abastecimento.cell[8,i].asstring,6))+
                                 'EF'+somenteNumero(
                                 zerar(frmCaixa_fechamento.grid_abastecimento.cell[9,i].asstring,6));
                ilinha_abastecimento := grid.SelectedRow;
                Cancela_cupom_aberto;
            end;
          end;
        end;
      end;



     bt_cupom_encerranteClick(frmcaixa_fechamento);


    grid_abastecimento.ClearRows;
    frmVenda.grid_abastecimento.ClearRows;

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



      /// frmvenda

      i := frmvenda.grid_abastecimento.AddRow(1);
      // data
      frmvenda.grid_abastecimento.Cell[0,i].asstring := qrabastecimento.fieldbyname('data').asstring;
      // hora
      frmvenda.grid_abastecimento.cell[1,i].asstring := qrabastecimento.fieldbyname('hora').asstring;
      // bomba
      frmvenda.grid_abastecimento.cell[2,i].asstring := qrabastecimento.fieldbyname('bomba').asstring;
      // bico
      frmvenda.grid_abastecimento.cell[3,i].asstring := qrabastecimento.fieldbyname('bico').asstring;
      // produto
      frmvenda.grid_abastecimento.cell[4,i].asstring := qrabastecimento.fieldbyname('produto').asstring;
      // Quantidade
      frmvenda.grid_abastecimento.cell[5,i].asfloat  := qrabastecimento.fieldbyname('qtde').asfloat;
      // preco unitario
      frmvenda.grid_abastecimento.cell[6,i].asfloat  := qrabastecimento.fieldbyname('unitario').asfloat;
      // total
      frmvenda.grid_abastecimento.cell[7,i].asfloat  := qrabastecimento.fieldbyname('total').asfloat;
      // encerrante inicial
      frmvenda.grid_abastecimento.cell[8,i].asfloat  := qrabastecimento.fieldbyname('ei').asfloat;
      // encerrante final
      frmvenda.grid_abastecimento.cell[9,i].asfloat  := qrabastecimento.fieldbyname('ef').asfloat;
      // codigo
      frmvenda.grid_abastecimento.cell[10,i].asinteger  := qrabastecimento.fieldbyname('codigo').asinteger;
      // tanque
      frmvenda.grid_abastecimento.cell[11,i].asstring  := qrabastecimento.fieldbyname('tanque').asstring;




      qrAbastecimento.Next;
    end;

    frmMsg_Operador.Hide;


end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_cupom_encerranteClick(Sender: TObject);
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

  if qrEncerrante.recordcount > 0 then
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

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.VendaBruta1Click(Sender: TObject);
begin
  showmessage(cECF_ReducaoZ_Venda_Bruta(iECF_Modelo));
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.otalizadorGeral1Click(Sender: TObject);
begin
  showmessage(cECF_ReducaoZ_Totalizador_Geral(iECF_Modelo));
end;

end.






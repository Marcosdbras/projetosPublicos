unit produto_pdv2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  DBTables, rxdblists, ImgList, Menus, AdvGlowButton, ExtCtrls, RzPrgres,
  TFlatPanelUnit, ZConnection, RzButton, RzRadChk;

type
  Tfrmproduto_pdv2 = class(TForm)
    qrpdv: TZQuery;
    qrpdvHOSTNAME: TStringField;
    qrpdvCAMINHO: TStringField;
    qrpdvATUALIZAR: TStringField;
    qrpdvDESCRICAO: TStringField;
    dspdv: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qrpdvsituacao: TIntegerField;
    ImageList1: TImageList;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qroperator: TZQuery;
    query: TZQuery;
    bar: TRzProgressBar;
    PSTATUS: TFlatPanel;
    Memo1: TMemo;
    QUERY2: TZQuery;
    qrpdvCX: TStringField;
    verifica2: TDatabase;
    verifica: TDatabaseItems;
    AdvGlowButton1: TAdvGlowButton;
    conexaopdv: TZConnection;
    Panel1: TPanel;
    Label1: TLabel;
    rtexto: TRadioButton;
    rdireta: TRadioButton;
    qrcaixa: TZQuery;
    bgravar_geral: TAdvGlowButton;
    rapaga_movimentacao: TRzCheckBox;
    blimpa: TAdvGlowButton;
    qrcontasreceber: TZQuery;
    procedure qrpdvCalcFields(DataSet: TDataSet);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrpdvAfterPost(DataSet: TDataSet);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure bgravar_geralClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure blimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_pdv2: Tfrmproduto_pdv2;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmproduto_pdv2.qrpdvCalcFields(DataSet: TDataSet);
begin
if qrpdv.fieldbyname('atualizar').asstring = 'SIM' then
begin
  verifica.active := false;
  try
    verifica.DatabaseName := qrpdv.fieldbyname('caminho').asstring;
    verifica.active := true;
    qrpdv.FieldByName('situacao').asinteger := 0;
  except
    qrpdv.FieldByName('situacao').asinteger := 1;
  end;
  verifica.active := false;
end
else
begin
  qrpdv.FieldByName('situacao').asinteger := 2;
end;
end;

procedure Tfrmproduto_pdv2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_pdv2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_pdv2.qrpdvAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure Tfrmproduto_pdv2.bgravarClick(Sender: TObject);
var
  txt : textfile;
  texto : string;
  textox : pansichar;
  HORA, MINUTO, SEGUNDO, DIA, MES, ANO, MS : WORD;
  FINALIZA_TXT : BOOLEAN;
  itentativa : integer;
  caminho : string;
  vreceber : Double;
  
begin

  if qrpdv.RecordCount = 0 then
  begin
    application.messagebox('Não existe nenhum computador cadastrado!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  DecodeDate(DATE,ANO,MES,DIA);
  DecodeTime(TIME,HORA,MINUTO,SEGUNDO,MS);

  if rtexto.checked then
  begin

        FINALIZA_TXT := FALSE;
        QRPDV.FIRST;
        WHILE NOT QRPDV.EOF DO
        BEGIN
         if qrpdv.FieldByName('situacao').asinteger = 0 then
         begin

         qroperator.close;
         qroperator.sql.clear;
         qroperator.sql.add('SELECT * from c000058 where c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 0');
         qroperator.OPEN;

          if qroperator.RecordCount > 0 then

          begin

          PSTATUS.Visible := TRUE;
          PSTATUS.Caption := 'Atualizando '+qrpdv.fieldbyname('hostname').asstring+'...';
          Application.ProcessMessages;
          AssignFile(TXT,QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO)+'.001');
          caminho := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO);

          REWRITE(TXT);

          bar.PartsComplete := 0;
          bar.TotalParts := qroperator.RecordCount;
          qroperator.first;


          while not qroperator.Eof do
          begin
            if qroperator.fieldbyname('tiporegistro').asinteger = 1 then // produto
            begin

                          query.close;
                          query.sql.clear;
                          query.SQL.add('select * from c000025 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                          query.open;
                          if query.RecordCount > 0 then
                          begin
                            memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);

                            write(txt,'PRODUTOS  ');
                            WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('produto').asstring,60,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('unidade').asstring,5,' ','D'));
                            write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('PRECOVENDA').asFLOAT),12,' ','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('CST').asstring,3,'0','E'));
                            write(txt,frmprincipal.texto_justifica(FORMATFLOAT('00.00',query.fieldbyname('ALIQUOTA').asFLOAT),5,'0','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('CODBARRA').asstring,13,' ','D'));

                            if QUERY.fieldbyname('precO_PROMOCAO').Value = NULL then
                              write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',0),12,' ','E'))
                            ELSE
                              write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',QUERY.fieldbyname('precO_PROMOCAO').asfloat),12,' ','E'));

                            if datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime) <> '30/12/1899' then
                              write(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime),10,' ','E'))
                            else
                              write(txt,frmprincipal.texto_justifica('          ',10,' ','E'));

                            if datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime) <> '30/12/1899' then
                              writeLN(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime),10,' ','E'))
                            else
                              writeln(txt,frmprincipal.texto_justifica('          ',10,' ','E'));
                          END
                          else
                          begin

                            if qroperator.fieldbyname('movimento').asinteger = 3 then
                            begin
                              memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);
                              write(txt,'PRODUTOS  ');
                              WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                              writeln(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('codregistro').asstring,6,'0','E'));
                            end;
                          end;

            end;
            if qroperator.fieldbyname('tiporegistro').asinteger = 4 then // cliente
            begin

                          query.close;
                          query.sql.clear;
                          query.SQL.add('select * from c000007 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                          query.open;
                          if query.RecordCount > 0 then
                          begin

                            // contas a receber
                            qrcontasreceber.close;
                            qrcontasreceber.sql.clear;
                            qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+query.fieldbyname('codigo').asstring+''' and situacao = 1');
                            qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
                            qrcontasreceber.Open;
                            vreceber := 0;
                            while not qrcontasreceber.Eof do begin
                              vreceber := vreceber+qrcontasreceber.fieldbyname('total_cliente').AsFloat;
                              qrcontasreceber.Next;
                            end;

                            write(txt,'CLIENTES  ');
                            WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('NOME').asstring,60,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('SITUACAO').asstring,1,' ','D'));
                            write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT-vreceber),12,' ','E'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('CPF').asstring,20,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('RG').asstring,25,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('ENDERECO').asstring,60,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('BAIRRO').asstring,30,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('CIDADE').asstring,30,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('UF').asstring,2,' ','D'));
                            write(txt,frmprincipal.texto_justifica(query.fieldbyname('CODCONVENIO').asstring,6,'0','E'));
                            // fazer o debito do cliente

                            writeln(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT),12,' ','E'));
                          end;


            end;



            bar.PartsComplete := bar.PartsComplete + 1;
            qroperator.next;
          end;

          query.close;
          query.sql.clear;
          query.SQL.add('select * from c000003');
          query.open;
          if query.RecordCount > 0 then
            begin
              while not query.Eof do begin
                write(txt,'OPERADOR  ');
                write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                write(txt,frmprincipal.texto_justifica(query.fieldbyname('usuario').asstring,15,' ','D'));
                write(txt,frmprincipal.texto_justifica(query.fieldbyname('senha').asstring,20,' ','D'));
                write(txt,frmprincipal.texto_justifica(inttostr(query.fieldbyname('nivel').AsInteger),1,' ','E'));
                writeln(txt,frmprincipal.texto_justifica(frmprincipal.somenteNumero(query.fieldbyname('codvendedor').asstring),6,' ','E'));
                query.Next
              end;
            end;

          closefile(txt);

          if rapaga_movimentacao.Checked = true then
            begin
              qroperator.close;
              qroperator.sql.clear;
              qroperator.sql.add('update c000058 set c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 1');
              qroperator.execsql;

            end;

          if not RenameFile(PChar(caminho+'.001'), PChar(caminho+'.cga')) then
            Application.MessageBox(pchar('Error to File : '+caminho+'.001'),'Info',mb_ok+MB_ICONERROR);

          end;

          end;
          //else

          //closefile(txt);

          qrpdv.next;
        end;
  end
  else
  begin

        QRPDV.FIRST;
        WHILE NOT QRPDV.EOF DO
        BEGIN
          if qrpdv.FieldByName('situacao').asinteger = 0 then
          begin
            try
              conexaopdv.Connected := false;
              conexaopdv.HostName := qrpdv.fieldbyname('hostname').asstring;
              conexaopdv.Connected := true;


              qroperator.close;
              qroperator.sql.clear;
              qroperator.sql.add('SELECT * from c000058 where c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 0');
              qroperator.OPEN;


              PSTATUS.Visible := TRUE;
              PSTATUS.Caption := 'Atualizando '+qrpdv.fieldbyname('hostname').asstring+'...';
              Application.ProcessMessages;
              AssignFile(TXT,QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO)+'.001');
              caminho := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO);

              REWRITE(TXT);
              bar.PartsComplete := 0;
              bar.TotalParts := qroperator.RecordCount;
              qroperator.first;
              while not qroperator.Eof do
              begin
                if qroperator.fieldbyname('tiporegistro').asinteger = 1 then // produto
                begin
                  query.close;
                  query.sql.clear;
                  query.SQL.add('select * from c000025 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                  query.open;
                  if query.RecordCount > 0 then
                  begin
                    memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);
                    itentativa := 0;
                    repeat
                      try
                         qrcaixa.close;
                         qrcaixa.sql.clear;
                         qrcaixa.sql.add('select codigo from c000025');
                         qrcaixa.sql.Add('where codigo = '''+query.fieldbyname('codigo').asstring+'''');
                         qrcaixa.open;
                         if qrcaixa.RecordCount > 0 then
                         begin

                            qrcaixa.close;
                            qrcaixa.sql.clear;
                            qrcaixa.sql.add('update c000025 set');
                            qrcaixa.sql.add('codigo = :codigo, produto = :produto, unidade = :unidade, precovenda = :precovenda,');
                            qrcaixa.sql.add('cst = :cst, aliquota = :aliquota, codbarra = :codbarra, preco_promocao = :preco_promocao, data_promocao = :data_promocao, fim_promocao = :fim_promocao');
                            qrcaixa.sql.add('where codigo = '''+query.fieldbyname('codigo').asstring+'''');
                            qrcaixa.Params.ParamByName('codigo').asstring     := query.fieldbyname('codigo').asstring;
                            qrcaixa.Params.ParamByName('produto').asstring    := frmPrincipal.tira_aspa(query.fieldbyname('produto').asstring);
                            qrcaixa.Params.ParamByName('unidade').asstring    := query.fieldbyname('unidade').asstring;
                            qrcaixa.Params.ParamByName('precovenda').asFLOAT  := query.fieldbyname('PRECOVENDA').asFLOAT;
                            qrcaixa.Params.ParamByName('cst').asstring        := query.fieldbyname('CST').asstring;
                            qrcaixa.Params.ParamByName('aliquota').asFLOAT    := query.fieldbyname('ALIQUOTA').asFLOAT;
                            qrcaixa.Params.ParamByName('codbarra').asstring   := query.fieldbyname('CODBARRA').asstring;
                            qrcaixa.params.parambyname('preco_promocao').asfloat := QUERY.fieldbyname('precO_PROMOCAO').asfloat;
                            qrcaixa.params.parambyname('DATA_promocao').asDATETIME := QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime;
                            qrcaixa.params.parambyname('FIM_promocao').asDATETIME := QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime;
                            qrcaixa.execsql;
                            conexaopdv.Commit;
                         end
                         else
                         begin
                            qrcaixa.close;
                            qrcaixa.sql.clear;
                            qrcaixa.sql.add('insert into c000025');
                            qrcaixa.sql.add('(codigo,produto,unidade,precovenda,cst,aliquota,codbarra,PRECO_PROMOCAO, DATA_PROMOCAO, FIM_PROMOCAO)');
                            qrcaixa.sql.add('values');
                            qrcaixa.sql.add('(:codigo,:produto,:unidade,:precovenda,:cst,:aliquota,:codbarra,:PRECO_PROMOCAO, :DATA_PROMOCAO, :FIM_PROMOCAO)');
                            qrcaixa.Params.ParamByName('codigo').asstring     := query.fieldbyname('codigo').asstring;
                            qrcaixa.Params.ParamByName('produto').asstring    := frmPrincipal.tira_aspa(query.fieldbyname('produto').asstring);
                            qrcaixa.Params.ParamByName('unidade').asstring    := query.fieldbyname('unidade').asstring;
                            qrcaixa.Params.ParamByName('precovenda').asFLOAT  := query.fieldbyname('PRECOVENDA').asFLOAT;
                            qrcaixa.Params.ParamByName('cst').asstring        := query.fieldbyname('CST').asstring;
                            qrcaixa.Params.ParamByName('aliquota').asFLOAT    := query.fieldbyname('ALIQUOTA').asFLOAT;
                            qrcaixa.Params.ParamByName('codbarra').asstring   := query.fieldbyname('CODBARRA').asstring;
                            qrcaixa.params.parambyname('preco_promocao').asfloat := QUERY.fieldbyname('precO_PROMOCAO').asfloat;
                            qrcaixa.params.parambyname('DATA_promocao').asDATETIME := QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime;
                            qrcaixa.params.parambyname('FIM_promocao').asDATETIME := QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime;
                            qrcaixa.execsql;
                            conexaopdv.Commit;
                         end;
                         itentativa := 5;
                      except
                        inc(itentativa);
                        sleep(2000);
                      end;
                    until itentativa = 5;
                  END
                  else
                  begin
                    try
                      if qroperator.fieldbyname('movimento').asinteger = 3 then // exclusao
                      begin
                        qrcaixa.close;
                        qrcaixa.sql.clear;
                        qrcaixa.sql.add('delete from c000025 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                        qrcaixa.execsql;
                        conexaopdv.Commit;
                      end;
                    except

                    end;
                  end;
                end;

                if qroperator.fieldbyname('tiporegistro').asinteger = 4 then // cliente
                begin

                                query.close;
                                query.sql.clear;
                                query.SQL.add('select * from c000007 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                                query.open;

                                if query.recordcount > 0 then
                                begin
                                  memo1.Lines.Add('Incluindo Cliente '+query.fieldbyname('nome').asstring);
                                  itentativa := 0;
                                  repeat
                                    try

                                         qrcaixa.close;
                                         qrcaixa.sql.clear;
                                         qrcaixa.sql.add('select codigo from c000025');
                                         qrcaixa.sql.Add('where codigo = '''+query.fieldbyname('codigo').asstring+'''');
                                         qrcaixa.open;
                                         if qrcaixa.RecordCount > 0 then
                                         begin
                                            qrcaixa.close;
                                            qrcaixa.sql.clear;
                                            qrcaixa.sql.add('update c000007 set');
                                            qrcaixa.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,rg=:rg,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf,codconvenio=:codconvenio');
                                            qrcaixa.sql.add('where codigo = '''+query.fieldbyname('codigo').asstring+'''');
                                            qrcaixa.Params.ParamByName('codigo').asstring     := query.fieldbyname('codigo').asstring;
                                            qrcaixa.Params.ParamByName('nome').asstring       := query.fieldbyname('NOME').asstring;
                                            qrcaixa.Params.ParamByName('situacao').asstring   := query.fieldbyname('SITUACAO').asstring;
                                            qrcaixa.Params.ParamByName('limite').asFLOAT      := query.fieldbyname('LIMITE').asFLOAT;
                                            qrcaixa.Params.ParamByName('cpf').asstring        := query.fieldbyname('CPF').asstring;
                                            qrcaixa.Params.ParamByName('rg').asstring         := query.fieldbyname('RG').asstring;
                                            qrcaixa.Params.ParamByName('endereco').asstring   := query.fieldbyname('ENDERECO').asstring;
                                            qrcaixa.Params.ParamByName('bairro').asstring     := query.fieldbyname('BAIRRO').asstring;
                                            qrcaixa.Params.ParamByName('cidade').asstring     := query.fieldbyname('CIDADE').asstring;
                                            qrcaixa.Params.ParamByName('uf').asstring         := query.fieldbyname('UF').asstring;
                                            qrcaixa.Params.ParamByName('codconvenio').asstring:= query.fieldbyname('CODCONVENIO').asstring;
                                            qrcaixa.execsql;
                                            conexaopdv.Commit;
                                         end
                                         else
                                         begin
                                            qrcaixa.close;
                                            qrcaixa.sql.clear;
                                            qrcaixa.sql.add('insert into c000007');
                                            qrcaixa.sql.add('(codigo,nome,situacao,limite,cpf,rg,endereco,bairro,cidade,uf,codconvenio)');
                                            qrcaixa.sql.add('values');
                                            qrcaixa.sql.add('(:codigo,:nome,:situacao,:limite,:cpf,:rg,:endereco,:bairro,:cidade,:uf,:codconvenio)');
                                            qrcaixa.Params.ParamByName('codigo').asstring     := query.fieldbyname('codigo').asstring;
                                            qrcaixa.Params.ParamByName('nome').asstring       := query.fieldbyname('NOME').asstring;
                                            qrcaixa.Params.ParamByName('situacao').asstring   := query.fieldbyname('SITUACAO').asstring;
                                            qrcaixa.Params.ParamByName('limite').asFLOAT      := query.fieldbyname('LIMITE').asFLOAT;
                                            qrcaixa.Params.ParamByName('cpf').asstring        := query.fieldbyname('CPF').asstring;
                                            qrcaixa.Params.ParamByName('rg').asstring         := query.fieldbyname('RG').asstring;
                                            qrcaixa.Params.ParamByName('endereco').asstring   := query.fieldbyname('ENDERECO').asstring;
                                            qrcaixa.Params.ParamByName('bairro').asstring     := query.fieldbyname('BAIRRO').asstring;
                                            qrcaixa.Params.ParamByName('cidade').asstring     := query.fieldbyname('CIDADE').asstring;
                                            qrcaixa.Params.ParamByName('uf').asstring         := query.fieldbyname('UF').asstring;
                                            qrcaixa.Params.ParamByName('codconvenio').asstring:= query.fieldbyname('CODCONVENIO').asstring;
                                            qrcaixa.execsql;
                                            conexaopdv.Commit;
                                         end;

                                       itentativa := 5;
                                    except
                                      inc(itentativa);
                                      sleep(2000);
                                    end;
                                  until itentativa = 5;
                                end
                                else
                                begin
                                    try
                                       if qroperator.fieldbyname('movimento').asinteger = 3 then // exclusao
                                       begin
                                         qrcaixa.close;
                                         qrcaixa.sql.clear;
                                         qrcaixa.sql.add('delete from c000007 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                                         qrcaixa.execsql;
                                         conexaopdv.Commit;
                                       end;
                                    except
                                    end;

                                end;

                end;
                bar.PartsComplete := bar.PartsComplete + 1;
                qroperator.next;
              end;

            if rapaga_movimentacao.Checked = true then
              begin
                qroperator.close;
                qroperator.sql.clear;
                qroperator.sql.add('update c000058 set c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 1');
                qroperator.execsql;
              end;

            except
                textox := pansichar('Não foi possível se conectar o banco de dados: '+#13+
                                     qrpdv.fieldbyname('hostname').asstring+':c:\DataSAC\Server\bd\base.fdb'+#13+
                                     'Verifique o caminho e tente outra vez!');
                application.MessageBox(pansichar(textox),'Erro',mb_ok+mb_iconerror);
            end;
          end; // situacao = 0


          qrpdv.next;
        end;


  end;

  {
  query.close;
  query.sql.clear;
  query.SQL.add('delete from c000058');
  query.ExecSQL;
   }

  frmmodulo.conexao.commit;
  application.messagebox('Processamento concluído!','Aviso',mb_ok+MB_ICONINFORMATION);
  pstatus.visible := false;
  qrpdv.First;
  bar.Percent := 0;

end;



procedure Tfrmproduto_pdv2.FormShow(Sender: TObject);
begin
  qrpdv.open;
end;

procedure Tfrmproduto_pdv2.AdvGlowButton1Click(Sender: TObject);
var
  txt : textfile;
  texto : string;
  HORA, MINUTO, SEGUNDO, DIA, MES, ANO, MS : WORD;
  caminho : string;
  vreceber : Double;
begin

  if application.MessageBox('Este pocedimento criará um arquivo de toda a tabela de produtos em cada caixa selecionado!'+#13+
                            'No ato da atualização, o caixa poderá ficar inoperante por alguns minutos!'+#13+
                            'Verifique se não há movimento nos caixas para ser feito esta atualização, de preferencia,'+#13+
                            'atualize um caixa por vez! Deseja prosseguir?','Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idno then
  begin
    exit;
  end;


  if qrpdv.RecordCount = 0 then
  begin
    application.messagebox('Não existe nenhum computador cadastrado!','Erro',mb_ok+mb_iconerror);
    exit;
  end;


  DecodeDate(DATE,ANO,MES,DIA);
  DecodeTime(TIME,HORA,MINUTO,SEGUNDO,MS);

  QRPDV.FIRST;
  WHILE NOT QRPDV.EOF DO
  BEGIN
   if qrpdv.FieldByName('situacao').asinteger = 0 then
   begin

   qroperator.close;
   qroperator.sql.clear;
   qroperator.sql.add('SELECT * from c000058');
   qroperator.OPEN;


    PSTATUS.Visible := TRUE;
    PSTATUS.Caption := 'Atualizando '+qrpdv.fieldbyname('hostname').asstring+'...';
    Application.ProcessMessages;

    AssignFile(TXT,QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO)+'.001');
    caminho := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO);

    REWRITE(TXT);
    bar.PartsComplete := 0;
    bar.TotalParts := qroperator.RecordCount;
    qroperator.first;

    while not qroperator.Eof do
    begin
      if qroperator.fieldbyname('tiporegistro').asinteger = 1 then // produto
      begin

                    query.close;
                    query.sql.clear;
                    query.SQL.add('select * from c000025 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                    query.open;
                    if query.RecordCount > 0 then
                    begin
                      memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);

                      write(txt,'PRODUTOS  ');
                      WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('produto').asstring,60,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('unidade').asstring,5,' ','D'));


                      IF QUERY.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
                      BEGIN
                        IF (DATE >=QUERY.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= QUERY.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
                        BEGIN
                          write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',QUERY.fieldbyname('precO_PROMOCAO').asfloat),12,' ','E'));
                        END
                        ELSE
                          write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('PRECOVENDA').asFLOAT),12,' ','E'));

                      END
                      ELSE
                        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('PRECOVENDA').asFLOAT),12,' ','E'));

                      if datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime) <> '30/12/1899' then
                        write(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime),10,' ','E'));
                      if datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime) <> '30/12/1899' then
                        writeLN(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime),10,' ','E'));

                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('CST').asstring,3,'0','E'));
                      write(txt,frmprincipal.texto_justifica(FORMATFLOAT('00.00',query.fieldbyname('ALIQUOTA').asFLOAT),5,'0','E'));
                      writeln(txt,frmprincipal.texto_justifica(query.fieldbyname('CODBARRA').asstring,13,' ','D'));


               {
                      QUERY2.CLOSE;
                      QUERY2.SQL.CLEAR;
                      QUERY2.SQL.ADD('SELECT * FROM C000100 WHERE CODPRODUTO = '''+query.fieldbyname('codigo').asstring+'''');
                      QUERY2.OPEN;
                      IF QUERY2.RecordCount > 0 THEN
                      BEGIN
                        write(txt,'ESTOQUE   ');
                        WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                        write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query2.fieldbyname('ESTOQUE_INiCIAL').asFLOAT),12,' ','E'));
                        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query2.fieldbyname('ENTRADAS').asFLOAT),12,' ','E'));
                        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query2.fieldbyname('SAIDAS').asFLOAT),12,' ','E'));
                        writeln(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query2.fieldbyname('ESTOQUE_ATUAL').asFLOAT),12,' ','E'));
                      END;

               }


                    END
                    else
                    begin

                      if qroperator.fieldbyname('movimento').asinteger = 3 then
                      begin
                        memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);
                        write(txt,'PRODUTOS  ');
                        WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                        writeln(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('codregistro').asstring,6,'0','E'));
                      end;
                    end;

      end;
      if qroperator.fieldbyname('tiporegistro').asinteger = 4 then // cliente
      begin

                    query.close;
                    query.sql.clear;
                    query.SQL.add('select * from c000007 where codigo = '''+qroperator.fieldbyname('codregistro').asstring+'''');
                    query.open;
                    if query.RecordCount > 0 then
                    begin

                      // contas a receber
                      qrcontasreceber.close;
                      qrcontasreceber.sql.clear;
                      qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+query.fieldbyname('codigo').asstring+''' and situacao = 1');
                      qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
                      qrcontasreceber.Open;
                      vreceber := 0;
                      while not qrcontasreceber.Eof do begin
                        vreceber := vreceber+qrcontasreceber.fieldbyname('total_cliente').AsFloat;
                        qrcontasreceber.Next;
                      end;

                      write(txt,'CLIENTES  ');
                      WRITE(txt,frmprincipal.texto_justifica(qroperator.fieldbyname('movimento').asstring,1,'0','E'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('NOME').asstring,60,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('SITUACAO').asstring,1,' ','D'));
                      write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT-vreceber),12,' ','E'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('CPF').asstring,20,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('RG').asstring,25,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('ENDERECO').asstring,60,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('BAIRRO').asstring,30,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('CIDADE').asstring,30,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('UF').asstring,2,' ','D'));
                      write(txt,frmprincipal.texto_justifica(query.fieldbyname('CODCONVENIO').asstring,6,'0','E'));

                      // fazer o debito do cliente

                      writeln(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT),12,' ','E'));
                    end;


      end;



      bar.PartsComplete := bar.PartsComplete + 1;
      qroperator.next;
    end;

    closefile(txt);

    if not RenameFile(PChar(caminho+'.001'), PChar(caminho+'.cga')) then
      Application.MessageBox(pchar('Error to File : '+caminho+'.001'),'Info',mb_ok+MB_ICONERROR);


//    qroperator.close;
//    qroperator.sql.clear;
//    qroperator.sql.add('update c000058 set c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 1');
//    qroperator.execsql;
    end;


    qrpdv.next;
  end;

    frmmodulo.conexao.commit;
    application.messagebox('Processamento concluído!','Aviso',mb_ok+MB_ICONINFORMATION);
    pstatus.visible := false;

end;

procedure Tfrmproduto_pdv2.bgravar_geralClick(Sender: TObject);
var
  txt : textfile;
  texto : string;
  HORA, MINUTO, SEGUNDO, DIA, MES, ANO, MS : WORD;
  origem, destino , caminho : string;
  vreceber : Double;
begin

  if application.MessageBox('Este pocedimento criará um arquivo de toda a tabela de produtos em cada caixa selecionado!'+#13+
                            'No ato da atualização, o caixa poderá ficar inoperante por alguns minutos!'+#13+
                            'Verifique se não há movimento nos caixas para ser feito esta atualização, de preferencia,'+#13+
                            'atualize um caixa por vez! Deseja prosseguir?','Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idno then
  begin
    exit;
  end;


  QRPDV.FIRST;
  if qrpdv.RecordCount = 0 then
  begin
    application.messagebox('Não existe nenhum computador cadastrado!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  DecodeDate(DATE,ANO,MES,DIA);
  DecodeTime(TIME,HORA,MINUTO,SEGUNDO,MS);

  AssignFile(TXT,'c:\DATASAC\server\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO)+'.001');

  REWRITE(TXT);

  // PRODUTOS

  PSTATUS.Visible := TRUE;
  PSTATUS.Caption := 'Armazenando a Tabela de Produtos...';
  Application.ProcessMessages;

  query.close;
  query.sql.clear;
  query.SQL.add('select * from c000025');
  query.open;

  if query.RecordCount > 0 then
    begin
      bar.PartsComplete := 0;
      bar.TotalParts := query.RecordCount;

      query.First;

      while not query.Eof do begin
        memo1.Lines.Add('Incluindo Produto '+query.fieldbyname('produto').asstring);
        write(txt,'PRODUTOS  ');
        WRITE(txt,frmprincipal.texto_justifica('2',1,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('produto').asstring,60,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('unidade').asstring,5,' ','D'));

        IF QUERY.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >=QUERY.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= QUERY.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
              BEGIN
                write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',QUERY.fieldbyname('precO_PROMOCAO').asfloat),12,' ','E'));
              END
            ELSE
              write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('PRECOVENDA').asFLOAT),12,' ','E'));
          END
        ELSE
          write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('PRECOVENDA').asFLOAT),12,' ','E'));

        write(txt,frmprincipal.texto_justifica(query.fieldbyname('CST').asstring,3,'0','E'));
        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('00.00',query.fieldbyname('ALIQUOTA').asFLOAT),5,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('CODBARRA').asstring,13,' ','D'));
        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',QUERY.fieldbyname('precO_PROMOCAO').asfloat),12,' ','E'));
        if datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime) <> '30/12/1899' then
          write(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('DATA_PROMOCAO').ASdatetime),10,' ','E'))
        else
          write(txt,frmprincipal.texto_justifica('          ',10,' ','E'));

        if datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime) <> '30/12/1899' then
          writeln(txt,frmprincipal.texto_justifica(datetostr(QUERY.FIELDBYNAME('FIM_PROMOCAO').ASdatetime),10,' ','E'))
        else
          writeln(txt,frmprincipal.texto_justifica('          ',10,' ','E'));

        bar.PartsComplete := bar.PartsComplete + 1;

        query.Next;
      end;
    end;

  // CLIENTES

  PSTATUS.Caption := 'Armazenando a Tabela de Clientes...';

  query.close;
  query.sql.clear;
  query.SQL.add('select * from c000007');
  query.open;
  if query.RecordCount > 0 then
    begin
      bar.PartsComplete := 0;
      bar.TotalParts := query.RecordCount;

      query.First;

      while not query.Eof do begin

        // contas a receber
        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+query.fieldbyname('codigo').asstring+''' and situacao = 1');
        qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
        qrcontasreceber.Open;
        vreceber := 0;
        while not qrcontasreceber.Eof do begin
          vreceber := vreceber+qrcontasreceber.fieldbyname('total_cliente').AsFloat;
          qrcontasreceber.Next;
        end;

        write(txt,'CLIENTES  ');
        WRITE(txt,frmprincipal.texto_justifica('2',1,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('NOME').asstring,60,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('SITUACAO').asstring,1,' ','D'));
        write(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT-vreceber),12,' ','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('CPF').asstring,20,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('RG').asstring,25,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('ENDERECO').asstring,60,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('BAIRRO').asstring,30,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('CIDADE').asstring,30,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('UF').asstring,2,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('CODCONVENIO').asstring,6,'0','E'));

        // fazer o debito do cliente

        writeln(txt,frmprincipal.texto_justifica(FORMATFLOAT('#########0.0000',query.fieldbyname('LIMITE').asFLOAT),12,' ','E'));
        bar.PartsComplete := bar.PartsComplete + 1;
        query.Next;
      end;
    end;


  // OPERADORES
  query.close;
  query.sql.clear;
  query.SQL.add('select * from c000003');
  query.open;
  if query.RecordCount > 0 then
    begin
      bar.PartsComplete := 0;
      bar.TotalParts := query.RecordCount;

      query.First;
      while not query.Eof do begin
        write(txt,'OPERADOR  ');
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('codigo').asstring,6,'0','E'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('usuario').asstring,15,' ','D'));
        write(txt,frmprincipal.texto_justifica(query.fieldbyname('senha').asstring,20,' ','D'));
        write(txt,frmprincipal.texto_justifica(inttostr(query.fieldbyname('nivel').AsInteger),1,' ','E'));
        writeln(txt,frmprincipal.texto_justifica(frmprincipal.somenteNumero(query.fieldbyname('codvendedor').asstring),6,' ','E'));
        bar.PartsComplete := bar.PartsComplete + 1;
        query.Next;
        Application.ProcessMessages;
      end;
    end;


  closefile(txt);

  bar.Percent := 0;
  origem  := 'c:\DATASAC\server\CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO);

  QRPDV.FIRST;
  WHILE NOT QRPDV.EOF DO BEGIN
    if qrpdv.FieldByName('situacao').asinteger = 0 then
      begin

        destino := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING+'CG'+IntToStr(ANO)+IntToStr(MES)+IntToStr(DIA)+'_'+IntToStr(HORA)+IntToStr(MINUTO)+IntToStr(SEGUNDO);

        // copiando o arquivo para o destino
        CopyFile(pchar(origem+'.001'), pchar(destino+'.001'),true);

        //PSTATUS.Visible := TRUE;
        PSTATUS.Caption := 'Atualizando '+qrpdv.fieldbyname('hostname').asstring+'...';

        // trocando o renomeando o arquivo de .001 para .cga
        if not RenameFile(PChar(destino+'.001'), PChar(destino+'.cga')) then
          Application.MessageBox(pchar('Error to File : '+destino+'.001'),'Info',mb_ok+MB_ICONERROR);


        if rapaga_movimentacao.Checked = true then
          begin
            qroperator.close;
            qroperator.sql.clear;
            qroperator.sql.add('select * from c000058');
            qroperator.sql.add('where c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 0');
            qroperator.Open;
            if qroperator.RecordCount > 0 then
              begin
                qroperator.close;
                qroperator.sql.clear;
                qroperator.sql.add('update c000058 set c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 1');
                qroperator.sql.add('where c'+frmprincipal.zerarcodigo(qrpdv.fieldbyname('cx').asstring,2)+' = 0');
                qroperator.execsql;
              end;
            Application.ProcessMessages;
          end;

      end;
    qrpdv.next;
  end;

  DeleteFile(pchar(origem+'.001'));

  if rapaga_movimentacao.Checked = true then
    begin
      query.close;
      query.sql.clear;
      query.SQL.add('delete from c000058');
      query.ExecSQL;
    end;

  frmmodulo.conexao.commit;
  application.messagebox('Processamento concluído com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
  pstatus.visible := false;

  qrpdv.First;
  bar.Percent := 0;

end;

procedure Tfrmproduto_pdv2.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmproduto_pdv2);
end;

procedure Tfrmproduto_pdv2.blimpaClick(Sender: TObject);
begin

  query.close;
  query.sql.clear;
  query.SQL.add('select * from c000058');
  query.Open;
  bar.PartsComplete := 0;
  bar.TotalParts := query.RecordCount;

  while not query.Eof do begin
    query.Delete;
    bar.PartsComplete := bar.PartsComplete + 1;
  end;
  Application.ProcessMessages;
  bar.Percent := 0;
  frmmodulo.conexao.commit;

{

  qroperator.close;
  qroperator.sql.clear;
  qroperator.sql.add('select * from c000058');
  qroperator.Open;
  bar.PartsComplete := 0;
  bar.TotalParts := qroperator.RecordCount;

  ShowMessage(inttostr(qroperator.RecordCount));

  if qroperator.RecordCount > 0 then
    begin
      while not qroperator.Eof do begin
        qroperator.Edit;
        qroperator.FieldByName('c01').AsInteger := 1;
        qroperator.FieldByName('c02').AsInteger := 1;
        qroperator.FieldByName('c03').AsInteger := 1;
        qroperator.FieldByName('c04').AsInteger := 1;
        qroperator.FieldByName('c05').AsInteger := 1;
        qroperator.FieldByName('c06').AsInteger := 1;
        qroperator.FieldByName('c07').AsInteger := 1;
        qroperator.FieldByName('c08').AsInteger := 1;
        qroperator.FieldByName('c09').AsInteger := 1;
        qroperator.FieldByName('c10').AsInteger := 1;
        qroperator.FieldByName('c11').AsInteger := 1;
        qroperator.FieldByName('c12').AsInteger := 1;
        qroperator.FieldByName('c13').AsInteger := 1;
        qroperator.FieldByName('c14').AsInteger := 1;
        qroperator.FieldByName('c15').AsInteger := 1;
        qroperator.FieldByName('c16').AsInteger := 1;
        qroperator.FieldByName('c17').AsInteger := 1;
        qroperator.FieldByName('c18').AsInteger := 1;
        qroperator.FieldByName('c19').AsInteger := 1;
        qroperator.FieldByName('c20').AsInteger := 1;
        qroperator.FieldByName('c21').AsInteger := 1;
        qroperator.FieldByName('c22').AsInteger := 1;
        qroperator.FieldByName('c23').AsInteger := 1;
        qroperator.FieldByName('c24').AsInteger := 1;
        qroperator.FieldByName('c25').AsInteger := 1;
        qroperator.FieldByName('c26').AsInteger := 1;
        qroperator.FieldByName('c27').AsInteger := 1;
        qroperator.FieldByName('c28').AsInteger := 1;
        qroperator.FieldByName('c29').AsInteger := 1;
        qroperator.FieldByName('c30').AsInteger := 1;
        qroperator.Post;
        qroperator.Next;
        bar.PartsComplete := bar.PartsComplete + 1;
      end;
    end;
  Application.ProcessMessages;
  bar.Percent := 0;
}

  application.messagebox('Processamento concluído com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
end;

end.

// parei no preco promocional



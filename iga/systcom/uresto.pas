unit uresto;

interface
uses
  Windows, Messages, DBTables, Db, SysUtils, Classes, Graphics ,
  Controls, Forms, Dialogs, Menus,  ExtCtrls ,WinProcs, uSplash,
  SqlExpr;

implementation
uses udados, ugeral, uprincipal;


procedure retaguarda;
var
   imaxcpro, icpro,iccli,icrep,itipo_pgto,idescprod, imaxccli, icontregprod,icuni :Integer;
    sEnc, sSubs, sInfAnt, sNovaInf:string;
    ResultSet : tCustomSqlDataSet;



begin

try

     with frmdados.ADO_Mestre_2 do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabestoque where estransf = '+quotedstr('N'));
             active := true;



        //fim do filtro

        //inicia gravação do Mestre
        while not frmdados.ADO_Mestre_2.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao unidade cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from unidade Where descricao = '+QuotedStr(frmDados.ADO_Mestre_2.FieldByName('esmed').asString));
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre_2.FieldByName('esmed').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into unidade (');

                          sql.Add('descricao');
                          //sql.Add('codigo,');

                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmDados.ADO_Mestre_2.FieldByName('esmed').asString));
                          //sql.Add(frmDados.ADO_Mestre_2.FieldByName('esmed').asString+',');
                          //sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from unidade order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi


              end;
            //endth





            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao produto cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre_2.FieldByName('escodigo').asString);
                active := true;
                icontregprod := recordcount;

                active := false;
                sql.Clear;
                sql.Add('select * from produtos');
                active := true;

                if icontregprod = 0 then
                   begin
                     if frmdados.ADO_Mestre_2.FieldByName('esdescricao').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into produtos (');

                          sql.Add('descricao');
                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('esdescricao').asString));
                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                // Fim da Verificação do produto
              end;
            //endth

            with FrmDados.Dbx_Exec do
              begin

                //Verifica se há produto cadastrado no cadastro de produtos
                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre_2.FieldByName('escodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre_2.FieldByName('escodigo').asInteger <> 0 then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into dprodutos (');

                          sql.Add('codigo,');
                          if frmDados.ADO_Mestre_2.FieldByName('esmed').asString <> '' then
                             sql.Add('cuni,');
                          //endi
                          sql.Add('cdescprod');

                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(frmDados.ADO_Mestre_2.FieldByName('escodigo').asString+',');
                          if frmDados.ADO_Mestre_2.FieldByName('esmed').asString <> '' then
                             sql.Add(inttostr(icuni)+',');
                          //endi
                          sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                     with frmdados.dbx_Exec do
                        begin
                          //active := false;
                          //sql.Clear;
                          //sql.Add('update Produtos p set p.descricao = '+Quotedstr(frmDados.ADO_Mestre_2.FieldByName('esdescricao').asString)+' Where p.codigo =  '+inttostr(idescprod) );
                          //ExecSQL;
                        end;
                     //endw
                   end;
                //endi
                //Fim da Verificação do produto
              end;
            //endth

            { Vista como transferido }
            with frmdados.ADO_Exec_2 do
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('update tabestoque e  set e.estransf = '+quotedstr('S')+'Where e.escodigo = '+frmDados.ADO_Mestre_2.FieldByName('escodigo').asString);
                   ExecSQL;
                end;
            //endw
            { Fim da Instrução }
            if icpro > imaxcpro then
               imaxcpro := icpro;
            //endi

            frmdados.ADO_Mestre_2.Next;

          end;
        //endw


        //Atualiza generator
        try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_DPRODUTOS_ID TO '+inttostr(imaxcpro),nil,@ResultSet);
        except
        end;




           end;
        //endi



  except
  end;


  try
    try
      with frmdados.ADO_Mestre_2 do
         begin
           active := false;
           sql.Clear;
           sql.Add('SELECT *  FROM TabVenda  WHERE (((TabVenda.vetransf = '+quotedstr('N')+') ));');
           active := true;
           if recordcount = 0 then
              begin
                bEofBaixa := false;
                exit;
              end;
           //end
         end;
      //endi
    except
      bEofBaixa := false;
      exit;
    end;

    try
       with frmdados.ADO_Detalhe_2 do
          begin
            active := false;
            sql.Clear;
            sql.Add('select * from tabitens WHERE (((Tabitens.ittransf = '+quotedstr('N')+') ));');
             active := true;
           end;
        //endi
    except
      bEofBaixa := false;
      exit;
    end;



   imaxcpro := 0;
   icpro := 0;

   { Inicia Leitura tabela vendas principal }
    while not frmdados.ADO_Mestre_2.Eof do
      begin

        iccli := 0;
        icrep := 0;
        itipo_pgto := 0;
        idescprod := 0;

        { Dbx_Exec dentro FrmDados executa instruções SQL no banco de dados }
        with frmdados.Dbx_Exec do
           begin

             { Verifica se há representante desso pedido cadastrado se for o caso grava }
             active := false;
             sql.Clear;
             sql.Add('select * from representantes Where nome = '+QuotedStr(frmDados.ADO_Mestre_2.FieldByName('vevendedor').asString));
             active := true;

             if recordcount = 0 then
                begin
                  if frmdados.ADO_Mestre_2.FieldByName('vevendedor').asString <> '' then
                     begin
                       active := false;
                       sql.Clear;
                       sql.Add('insert into representantes (');
                       sql.Add('nome');
                       sql.Add(')');
                       sql.Add('values (');
                       sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vevendedor').asString));
                       sql.Add(');');
                       ExecSQL;

                       active := false;
                       sql.Clear;
                       sql.Add('select * from representantes order by codigo');
                       active := true;

                       while not frmdados.Dbx_Exec.Eof do
                         begin
                           icrep := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                           frmdados.Dbx_Exec.Next;
                         end;
                       //endw
                     end;
                  //endi
                end
             else
                begin
                  icrep := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                end;
             //endi
             { Fim da Verificação do Representante }


             { Verifica se o cliente desse pedido está cadastrado se for o caso grava }
             active := false;
             sql.Clear;
             sql.Add('select * from clientes Where codigo = '+QuotedStr(frmDados.ADO_Mestre_2.FieldByName('vecodcli').asString));
             active := true;
             if recordcount = 0 then
                begin
                  active := false;
                  sql.Clear;
                  sql.Add('insert into clientes (');

                  if frmdados.ADO_Mestre_2.FieldByName('vecliente').asString <> '' then
                     sql.Add('nome,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('veendereco').asString <> '' then
                     sql.Add('endcom,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vebairro').asString <> '' then
                     sql.Add('bairrocom,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vefone').asString <> '' then
                     sql.Add('telefonecom,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString <> '' then
                     sql.Add('cidadecom,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vecontato').asString <> '' then
                     sql.Add('contato,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vecpf').asString <> '' then
                     sql.Add('cpf,');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('veie').asString <> '' then
                     sql.Add('ie,');
                  //endi

                  sql.Add('codigo');

                  sql.Add(')');
                  sql.Add('values (');

                  if frmdados.ADO_Mestre_2.FieldByName('vecliente').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecliente').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('veendereco').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veendereco').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vebairro').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vebairro').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vefone').asString <> '' then
                     sql.Add(QuotedStr(copy(frmdados.ADO_Mestre_2.FieldByName('vefone').asString,1,10))+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vecontato').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecontato').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('vecpf').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecpf').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre_2.FieldByName('veie').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veie').asString)+',');
                  //endi

                  sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecodcli').asString));

                  sql.Add(');');
                  ExecSQL;

                  active := false;
                  sql.Clear;
                  sql.Add('select * from clientes order by codigo');
                  active := true;

                  while not frmdados.Dbx_Exec.Eof do
                    begin
                      iccli := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                      frmdados.Dbx_Exec.Next;
                    end;
                  //endw

                end
             else
                begin
                  iccli := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                end;
             //endi
             { Fim da Verificação do Cliente }

             if iccli > imaxccli then
               imaxccli := iccli;
             //endi


             { Verifica se o pedido está já está cadastrado }
             active := false;
             sql.Clear;
             sql.Add('select * from svenda Where codigo = '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString);
             active := true;

             if RecordCount = 0 then
                begin
                  with frmdados.Dbx_Exec do
                     begin
                       active := false;
                       sql.Clear;
                       sql.Add('insert into svenda (');

                       if frmdados.ADO_Mestre_2.FieldByName('vecodcli').asString <> '' then
                          sql.Add('ccli,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vevendedor').asString <> '' then
                          sql.Add('vendedorst,');
                       //endi

                       if icrep <> 0 then
                          sql.Add('crep,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecliente').asString <> '' then
                          sql.Add('clientest,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veendereco').asString <> '' then
                          sql.Add('enderecost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vebairro').asString <> '' then
                          sql.Add('bairrost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vefone').asString <> '' then
                          sql.Add('fonest,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString <> '' then
                          sql.Add('municipiost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veemissao').asString <> '' then
                          sql.Add('emissaost,');
                       //endi


                       if frmdados.ADO_Mestre_2.FieldByName('vetotal').asfloat <> 0 then
                          sql.Add('totalst,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veoperacao').asString <> '' then
                          sql.Add('operacaost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vevencimento').asString <> '' then
                          sql.Add('vencimentost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vepagamento').asString <> '' then
                          sql.Add('pagamentost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vetotalp').asfloat <> 0 then
                          sql.Add('totalpst,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vedesconto').asfloat <> 0 then
                          sql.Add('descontost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('ved').asString <> '' then
                          sql.Add('dst,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecontato').asString <> '' then
                          sql.Add('contatost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecpf').asString <> '' then
                          sql.Add('cpfst,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veie').asString <> '' then
                          sql.Add('iest,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veobs').asString <> '' then
                          sql.Add('obsst,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vedinheiro').asfloat <> 0 then
                          sql.Add('din,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vetroco').asfloat <> 0 then
                          sql.Add('troco,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vefechado').asString <> '' then
                          sql.Add('fechadost,');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veretorno').asString <> '' then
                          sql.Add('retornost,');
                       //endi


                       if frmdados.ADO_Mestre_2.FieldByName('vehora').asString <> '' then
                          sql.Add('horast,');
                       //endi


                       if frmdados.ADO_Mestre_2.FieldByName('vecusto').asfloat <> 0 then
                          sql.Add('custost,');
                       //endi


                       sql.Add('codigo');

                       sql.Add(')');

                       sql.Add('values (');

                       if frmdados.ADO_Mestre_2.FieldByName('vecodcli').asString <> '' then
                          sql.Add(frmdados.ADO_Mestre_2.FieldByName('vecodcli').asString+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vevendedor').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vevendedor').asString)+',');
                       //endi

                       if icrep <> 0 then
                          sql.Add(quotedstr(inttostr(icrep))+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecliente').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecliente').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veendereco').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veendereco').asString)+',');
                       //endi


                       if frmdados.ADO_Mestre_2.FieldByName('vebairro').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vebairro').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vefone').asString <> '' then
                          sql.Add(QuotedStr(copy(frmdados.ADO_Mestre_2.FieldByName('vefone').asString,1,10))+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vemunicipio').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('veemissao').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('veemissao').asString <> '' then
                          sql.Add(quotedstr(sNovaInf)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vetotal').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vetotal').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veoperacao').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veoperacao').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vevencimento').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vevencimento').asString <> '' then
                          sql.Add(quotedstr(sNovainf)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vepagamento').asString <> '' then
                          sql.Add(Quotedstr(frmdados.ADO_Mestre_2.FieldByName('vepagamento').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vetotalp').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vetotalp').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vedesconto').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vedesconto').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('ved').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('ved').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecontato').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecontato').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vecpf').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vecpf').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veie').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veie').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('veobs').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('veobs').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vedinheiro').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vedinheiro').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vetroco').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vetroco').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vefechado').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vefechado').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('veretorno').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('veretorno').asString <> '' then
                          sql.Add(quotedstr(sNovaInf)+',');
                       //endi

                       if frmdados.ADO_Mestre_2.FieldByName('vehora').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre_2.FieldByName('vehora').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre_2.FieldByName('vecusto').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre_2.FieldByName('vecusto').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sql.Add(frmdados.ADO_Mestre_2.FieldByName('venumeronota').asString);

                       sql.Add(');');
                       ExecSQL;
                     end;
                  //endw










        { Filtra detalhe do pedido }
        with frmdados.ADO_Detalhe_2 do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabitens i Where i.itnumeronota = '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString);
             active := true;
           end;
        //endi
        {fim do filtro}

        {inicia gravação do detalhe}
        while not frmdados.ADO_Detalhe_2.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin
                { Verifica se há descricao produto cadastrado }

                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asString);
                active := true;
                icontregprod := recordcount;

                active := false;
                sql.Clear;
                sql.Add('select * from produtos');
                active := true;

                if icontregprod = 0 then
                   begin
                     if frmdados.ADO_Detalhe_2.FieldByName('itdescricao').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into produtos (');

                          sql.Add('descricao');
                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmdados.ADO_Detalhe_2.FieldByName('itdescricao').asString));
                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                { Fim da Verificação do produto }
              end;
            //endth

            with FrmDados.Dbx_Exec do
              begin

                //Verifica se há produto cadastrado no cadastro de produtos
                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asInteger <> 0 then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into dprodutos (');



                          sql.Add('codigo,');
                          sql.Add('cdescprod');

                          sql.Add(')');
                          sql.Add('values (');


                          sql.Add(frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asString+',');
                          sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                     with frmdados.dbx_Exec do
                        begin
                          //active := false;
                          //sql.Clear;
                          //sql.Add('update Produtos p set p.descricao = '+Quotedstr(frmDados.ADO_Mestre_2.FieldByName('itdescricao').asString)+' Where p.codigo =  '+inttostr(idescprod) );
                          //ExecSQL;
                        end;
                     //endw


                   end;
                //endi
                //Fim da Verificação do produto
              end;
            //endth

            if icpro > imaxcpro then
               imaxcpro := icpro;
            //endi





            with frmdados.Dbx_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('insert into dvenda (');

                 if frmDados.ADO_Detalhe_2.FieldByName('itbaixa').asString = 'S' then
                    sql.Add('ehvenda,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itdescricao').asString <> '' then
                    sql.Add('descricaost,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asInteger <> 0 then
                    sql.Add('cpro,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itbaixa').asString <> '' then
                    sql.Add('baixa,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itquantidade').asfloat <> 0 then
                    sql.Add('qtde,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itunitario').asfloat <> 0 then
                    sql.Add('prve,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('ittotal').asfloat <> 0 then
                    sql.Add('subtotal,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itreferencia').asString <> '' then
                    sql.Add('referencia,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itmetragem').asInteger <> 0 then
                    sql.Add('metragem,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itvenda').asString <> '' then
                    sql.Add('data_op,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itund').asString <> '' then
                    sql.Add('undst,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itcomicao').asfloat <> 0 then
                    sql.Add('comissao,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itcliente').asString <> '' then
                    sql.Add('clientest,');
                 //endi

                 //informação do arquivo principal
                 if frmDados.ADO_Mestre_2.FieldByName('vecodcli').asInteger <> 0 then
                    sql.Add('ccli,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itvendedor').asString <> '' then
                    sql.Add('vendedorst,');
                 //endi

                 //informação do arquivo principal
                 if icrep <> 0 then
                    sql.Add('crep,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itpg').asString <> '' then
                    sql.Add('pgst,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itmetragem2').asInteger <> 0 then
                    sql.Add('metragem2,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itident').asString <> '' then
                    sql.Add('identst,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itcusto').asfloat <> 0 then
                    sql.Add('prcu,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('ittipo').asString <> '' then
                    sql.Add('tipost,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itmax').asInteger <> 0 then
                    sql.Add('max,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itdesconto').asfloat <> 0 then
                    sql.Add('vdesc,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('iticm').asInteger <> 0 then
                    sql.Add('icm,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itiss').asInteger <> 0 then
                    sql.Add('iss,');
                 //endi

                 sql.Add('codsvenda');
                 sql.Add(')');
                 sql.Add('values (');

                 if frmDados.ADO_Detalhe_2.FieldByName('itbaixa').asString = 'S' then
                    sql.Add(quotedstr('T')+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itdescricao').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itdescricao').asString)+',');
                 //endi


                 if frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asInteger <> 0 then
                    sql.Add(inttostr(frmDados.ADO_Detalhe_2.FieldByName('itcodigo').asInteger)+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itbaixa').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itbaixa').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itquantidade').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itquantidade').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itunitario').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itunitario').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('ittotal').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('ittotal').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itreferencia').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itreferencia').asString)+',');
                 //endi


                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itmetragem').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itmetragem').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := '/';
                 sSubs := '.';
                 sInfAnt := frmDados.ADO_Detalhe_2.FieldByName('itvenda').asString;
                 sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itvenda').asString <> '' then
                    sql.Add(quotedstr(sNovaInf)+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itund').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itund').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itcomicao').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itcomicao').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itcliente').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itcliente').asString)+',');
                 //endi

                 //informação do arquivo principal
                 if frmDados.ADO_Mestre_2.FieldByName('vecodcli').asInteger <> 0 then
                    sql.Add(inttostr(frmDados.ADO_Mestre_2.FieldByName('vecodcli').asInteger)+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itvendedor').asString <> '' then
                     sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itvendedor').asString)+',');
                 //endi

                 //informação do arquivo principal
                 if icrep <> 0 then
                    sql.Add(quotedstr(inttostr(icrep))+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itpg').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itpg').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itmetragem2').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itmetragem2').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('itident').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('itident').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itcusto').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itcusto').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('ittipo').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe_2.FieldByName('ittipo').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itmax').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itmax').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itdesconto').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itdesconto').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('iticm').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('iticm').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe_2.FieldByName('itiss').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('itiss').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sql.Add(frmdados.ADO_Detalhe_2.FieldByName('itnumeronota').asString);
                 sql.Add(');');
                 ExecSQL;
               end;
            //endw

            frmdados.ADO_Detalhe_2.Next;
          end;
        //endw
        { Fim da Gravação do detalhe }

        { Verifica se o tipo de pagamento está cadastrado se for o caso grava}
        with frmdados.ADO_Detalhe_2 do
           begin
             active := false;
             sql.Clear;
             sql.Add('select pgnumeronota, pgtipo, pgvalor from tabpagamento group by pgtipo, pgnumeronota, pgvalor having pgnumeronota = '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString);
             active := true;
           end;
        //endi
        {fim do filtro}

        with frmdados.Dbx_Exec do
           begin


             if  frmDados.ADO_Detalhe_2.FieldByName('pgtipo').asString <> '' then
                 begin


             active := false;
             sql.Clear;
             sql.Add('select * from tipo_pgto Where descricao = '+QuotedStr(frmDados.ADO_Detalhe_2.FieldByName('pgtipo').asString));
             active := true;

             if recordcount = 0 then
                begin

                  active := false;
                  sql.Clear;
                  sql.Add('insert into tipo_pgto (');

                  sql.Add('Descricao');

                  sql.Add(')');
                  sql.Add('values (');

                  sql.Add(QuotedStr(frmdados.ADO_Detalhe_2.FieldByName('pgtipo').asString));

                  sql.Add(');');
                  ExecSQL;

                  active := false;
                  sql.Clear;
                  sql.Add('select * from tipo_pgto order by codigo');
                  active := true;

                  while not frmdados.Dbx_Exec.Eof do
                    begin
                      itipo_pgto := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                      frmdados.Dbx_Exec.Next;
                    end;
                  //endw

                end
             else
                begin
                  itipo_pgto := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                end;
             //endi




             end;
             //endi

           end;
        //endth

        {inicia gravação do detalhe vencimento}
        while not frmdados.ADO_Detalhe_2.Eof do
          begin

            with frmdados.Dbx_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('insert into vencimentos (');

                 if frmDados.ADO_Detalhe_2.FieldByName('pgvalor').asfloat <> 0 then
                    sql.Add('valor,');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('pgtipo').asString <> '' then
                    sql.Add('c_tipo_pgto,');
                 //endi

                 sql.Add('c_svenda');

                 sql.Add(')');
                 sql.Add('values (');

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := frmDados.ADO_Detalhe_2.FieldByName('pgvalor').asString;
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe_2.FieldByName('pgvalor').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe_2.FieldByName('pgtipo').asString <> '' then
                    sql.Add(inttostr(itipo_pgto)+',');
                 //endi

                 sql.Add(frmdados.ADO_Mestre_2.FieldByName('venumeronota').asString);
                 sql.Add(');');
                 ExecSQL;
               end;
            //endth
            frmdados.ADO_Detalhe_2.Next;
          end;
        //endw


            { Vista como transferido }
            with frmdados.ADO_Exec_2 do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('update tabitens i  set i.ittransf ='+quotedstr('S')+'Where i.itnumeronota = '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString);
                 ExecSQL;
               end;
            //endw
            { Fim da Instrução }

            with frmdados.ADO_Exec_2 do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('update tabvenda v set v.vetransf = '+quotedstr('S')+' Where v.venumeronota = '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString);
                 ExecSQL;
               end;
            //endw
            { Fim da Instrução }



























                end;
             //endi
             {fim da verificação da existência do pedido}
           end;
        //endth

        frmdados.ADO_Mestre_2.Next;
      end;
    //endw
    {Atualiza generator}
    try
      frmdados.Sql_Dados.Execute('SET GENERATOR GEN_DPRODUTOS_ID TO '+inttostr(imaxcpro),nil,@ResultSet);
    except
    end;
    try
      frmdados.Sql_Dados.Execute('SET GENERATOR GEN_SVENDA_ID TO '+frmDados.ADO_Mestre_2.FieldByName('venumeronota').asString,nil,@ResultSet);
    except
    end;
    try
      frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Clientes_ID TO '+inttostr(imaxccli),nil,@ResultSet);
    except
    end;











  except
  end;




end;



end.

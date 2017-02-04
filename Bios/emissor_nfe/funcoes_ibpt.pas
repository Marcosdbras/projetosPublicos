unit funcoes_ibpt;

interface
  procedure calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string; festadual:Currency; fmunicipal:Currency );
  procedure buscarcalcibpt(Codprod:string; valorliquido,total:Currency);

var


  porcibpt, vlribpt, vlrestadual, vlrmunicipal, porcestadual, porcmunicipal:Currency;

  schave, sversao, sfonte:string;


  svigenciainicio:String;


  svigenciafim:String;

  sunidadefederativa:string;


implementation
     uses SysUtils, udados, uprincipal, ugeral;

//Procedure ibpt7
procedure  calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string; festadual:Currency; fmunicipal:Currency );
var
   vlrfed, vlrimpfed:currency;

begin
  if (origem = '0') or (origem = '3') or  (origem = '4') or (origem = '5') or (origem = '8')then
      begin
        vlribpt := vlribpt +  valorliquidoitem * aliqnac / 100;
      end
  else
     begin
        vlribpt := vlribpt +  valorliquidoitem * aliqimp / 100;
     end;
  //endi

  vlrfed :=  valorliquidoitem * aliqnac / 100;
  vlrimpfed := valorliquidoitem * aliqimp / 100;
  //vlribpt := vlribpt +  (vlrfed+vlrimpfed);

  vlrestadual := vlrestadual  +  valorliquidoitem * festadual / 100;
  vlrmunicipal := vlrmunicipal + valorliquidoitem * fmunicipal / 100;

  porcibpt := vlribpt / total * 100;
  porcestadual := vlrestadual / total * 100;
  porcmunicipal := porcmunicipal / total * 100;

end;


//procedure ibpt8
procedure buscarcalcibpt(Codprod:string; valorliquido, total:Currency);
var
  faliqnac, faliqimp:Currency;
  sncmnbs, sorigem, sex, sversao:string;
  itabela:Integer;
  ssita:string;
  icodsita:integer;

  stipo:String;
  sdescricao:String;
  festadual:real;
  fmunicipal:real;


  saliqnac:String;
  saliqimp:String;
  sestadual:String;
  smunicipal:String;

begin

  if Codprod = '' then
     Exit;
  //endi

  faliqnac := 0;
  faliqimp := 0;
  itabela := 0;
  stipo:='';
  sdescricao:='';
  festadual:=0;
  fmunicipal:=0;
  svigenciainicio:='';
  svigenciafim:='';
  schave:='';
  sversao:='';
  sfonte:='';



  frmdados.sql_consulta.Close;
  frmdados.sql_consulta.SQL.Clear;
  frmdados.sql_consulta.SQL.Add('select * from produtos where codigo = ' +quotedstr(Codprod) );
  frmdados.sql_consulta.Open;

  sex := Trim(frmdados.sql_consulta.fieldbyname('ex').AsString);


  //ibpt
  sncmnbs := Trim(frmdados.cds_nfp.fieldbyname('simplesncm').AsString);
  icodsita :=     frmdados.cds_nfp.fieldbyname('cod4prodnf').AsInteger;

  frmdados.sql_consulta.Close;
  frmdados.sql_consulta.SQL.Clear;
  frmdados.sql_consulta.SQL.Add('select * from sita where codigo = ' + inttostr( iCodsita ));
  frmdados.sql_consulta.Open;

  sorigem := frmdados.sql_consulta.fieldbyname('sigla').AsString;

  if sncmnbs = '' then
     Exit;
  //endi

  if sex <> '' then
     begin
        frmdados.sql_consulta.Close;
        frmdados.sql_consulta.SQL.Clear;
        frmdados.sql_consulta.SQL.Add('select * from ibpt where codigo = '+quotedstr(sncmnbs)+' and ex = '+quotedstr(sex)    );
        frmdados.sql_consulta.Open;
     end
  else
     begin
        frmdados.sql_consulta.Close;
        frmdados.sql_consulta.SQL.Clear;
        frmdados.sql_consulta.SQL.Add('select * from ibpt where codigo = '+quotedstr(sncmnbs)    );
        frmdados.sql_consulta.Open;
     end;





  if  frmdados.sql_consulta.RecordCount > 0 then
      begin
        itabela := 0;
        sex :=     frmdados.sql_consulta.fieldbyname('ex').AsString;
        sversao := frmdados.sql_consulta.fieldbyname('versao').AsString;
        stipo := frmdados.sql_consulta.fieldbyname('tipo').AsString;
        sdescricao := frmdados.sql_consulta.fieldbyname('descricao').AsString;
        svigenciainicio := frmdados.sql_consulta.fieldbyname('vigenciainicio').asString;
        svigenciafim :=   frmdados.sql_consulta.fieldbyname('vigenciafim').asString;
        schave :=   frmdados.sql_consulta.fieldbyname('chave').asString;
        sversao :=   frmdados.sql_consulta.fieldbyname('versao').asString;
        sfonte :=   frmdados.sql_consulta.fieldbyname('fonte').asString;
        faliqnac := frmdados.sql_consulta.fieldbyname('nacionalfederal').asfloat;
        faliqimp := frmdados.sql_consulta.fieldbyname('importadosfederal').asfloat;
        festadual := frmdados.sql_consulta.fieldbyname('estadual').asfloat;
        fmunicipal := frmdados.sql_consulta.fieldbyname('municipal').asfloat;



        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );

      end

  else
      begin

        try

            frmprincipal.XMLDocument1.Active := False;
            frmprincipal.XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=codigo'+'&valor='+sncmnbs+'&uf='+ lowercase( sunidadefederativa));
            frmprincipal.XMLDocument1.Active := True;

            sex       := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['ex'].Text;
            sversao       := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
            stipo      := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['tipo'].Text;
            sdescricao   := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['descricao'].Text;
            svigenciainicio       := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciainicio'].Text;
            svigenciafim   := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciafim'].Text;
            schave := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['chave'].Text;
            sversao := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
            sfonte :=  frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['fonte'].Text;


            saliqnac      :=  frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['nacionalfederal'].Text;
            saliqimp           := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['importadosfederal'].Text;
            sestadual    := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['estadual'].Text;
            smunicipal := frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['municipal'].Text;


            saliqnac      :=  Decimal_Is_Coma( saliqnac );
            saliqimp           := Decimal_Is_Coma( saliqimp );
            sestadual    := Decimal_Is_Coma(sestadual);
            smunicipal := Decimal_Is_Coma(smunicipal);

            faliqnac      :=  strtofloat( saliqnac );
            faliqimp           := strtofloat( saliqimp );
            festadual    := strtofloat( sestadual );
            fmunicipal := strtofloat( smunicipal );


            calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );


            with frmdados do
              begin
                sql_exec.Active := false;
                sql_exec.SQL.Clear;
                sql_exec.SQL.Add('insert into ibpt (codigo, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
                sql_exec.SQL.Add(' values (:codigo, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

                sql_exec.Params.ParamByName('codigo').AsString :=  sncmnbs;
                sql_exec.Params.ParamByName('ex').AsString :=  sex;
                sql_exec.Params.ParamByName('versao').AsString :=  sversao;
                sql_exec.Params.ParamByName('tipo').AsString :=  stipo;
                sql_exec.Params.ParamByName('descricao').AsString :=  sdescricao;

                sql_exec.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
                sql_exec.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

                sql_exec.Params.ParamByName('chave').AsString :=    schave;
                sql_exec.Params.ParamByName('fonte').AsString :=    sfonte;

                sql_exec.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
                sql_exec.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
                sql_exec.Params.ParamByName('estadual').AsFloat :=      festadual;
                sql_exec.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

                sql_exec.ExecSQL;

              end;







        except


            sex       := '';
            sversao       := '';
            stipo      := '';
            sdescricao   := '';
            svigenciainicio       := '';
            svigenciafim   := '';
            schave := '';
            sversao := '';
            sfonte :=  '';



            faliqnac      :=  0;
            faliqimp           := 0;
            festadual    := 0;
            fmunicipal := 0;


            calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );





        end;




      end;


end;




end.

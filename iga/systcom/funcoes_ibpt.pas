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
     uses SysUtils, udados, ugeral;

//Procedure ibpt7
//Procedure ibpt7
procedure  calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string; festadual:Currency; fmunicipal:Currency );
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





  frmdados.dbx_consulta.Close;
  frmdados.dbx_consulta.SQL.Clear;
  frmdados.dbx_consulta.SQL.Add('select * from vprodutos where codigo = ' +quotedstr(Codprod) );
  frmdados.dbx_consulta.Open;

  icodsita := frmdados.dbx_consulta.fieldbyname('codsita').AsInteger;
  sncmnbs := Trim(frmdados.dbx_consulta.fieldbyname('ncm').AsString);
  sex := Trim(frmdados.dbx_consulta.fieldbyname('ex').AsString);

  frmdados.dbx_consulta.Close;
  frmdados.dbx_consulta.SQL.Clear;
  frmdados.dbx_consulta.SQL.Add('select * from sita where codigo = ' + inttostr( iCodsita ));
  frmdados.dbx_consulta.Open;

  sorigem := frmdados.dbx_consulta.fieldbyname('sigla').AsString;

  if sncmnbs = '' then
     Exit;
  //endi

  if sex <> '' then
     begin
        frmdados.dbx_consulta.Close;
        frmdados.dbx_consulta.SQL.Clear;
        frmdados.dbx_consulta.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs)+' and ex = '+quotedstr(sex)    );
        frmdados.dbx_consulta.Open;
     end
  else
     begin
        frmdados.dbx_consulta.Close;
        frmdados.dbx_consulta.SQL.Clear;
        frmdados.dbx_consulta.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs)    );
        frmdados.dbx_consulta.Open;
     end;


  if  frmdados.dbx_consulta.RecordCount > 0 then
      begin
        itabela := frmdados.dbx_consulta.fieldbyname('tabela').AsInteger;
        sex :=     frmdados.dbx_consulta.fieldbyname('ex').AsString;
        sversao := frmdados.dbx_consulta.fieldbyname('versao').AsString;
        stipo := frmdados.dbx_consulta.fieldbyname('tipo').AsString;
        sdescricao := frmdados.dbx_consulta.fieldbyname('descricao').AsString;
        svigenciainicio := frmdados.dbx_consulta.fieldbyname('vigenciainicio').asString;
        svigenciafim :=   frmdados.dbx_consulta.fieldbyname('vigenciafim').asString;
        schave :=   frmdados.dbx_consulta.fieldbyname('chave').asString;
        sversao :=   frmdados.dbx_consulta.fieldbyname('versao').asString;
        sfonte :=   frmdados.dbx_consulta.fieldbyname('fonte').asString;
        faliqnac := frmdados.dbx_consulta.fieldbyname('nacionalfederal').asfloat;
        faliqimp := frmdados.dbx_consulta.fieldbyname('importadosfederal').asfloat;
        festadual := frmdados.dbx_consulta.fieldbyname('estadual').asfloat;
        fmunicipal := frmdados.dbx_consulta.fieldbyname('municipal').asfloat;



        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );

      end

  else
      begin

        try

            frmdados.XMLDocument1.Active := False;
            frmdados.XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=codigo'+'&valor='+sncmnbs+'&uf='+ lowercase( sunidadefederativa));
            frmdados.XMLDocument1.Active := True;

            sex       := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['ex'].Text;
            sversao       := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
            stipo      := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['tipo'].Text;
            sdescricao   := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['descricao'].Text;
            svigenciainicio       := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciainicio'].Text;
            svigenciafim   := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciafim'].Text;
            schave := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['chave'].Text;
            sversao := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
            sfonte :=  frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['fonte'].Text;


            saliqnac      :=  frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['nacionalfederal'].Text;
            saliqimp           := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['importadosfederal'].Text;
            sestadual    := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['estadual'].Text;
            smunicipal := frmdados.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['municipal'].Text;


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
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('insert into ibpt (codigo, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
                dbx_exec.SQL.Add(' values (:codigo, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

                dbx_exec.Params.ParamByName('codigo').AsString :=  sncmnbs;
                dbx_exec.Params.ParamByName('ex').AsString :=  sex;
                dbx_exec.Params.ParamByName('versao').AsString :=  sversao;
                dbx_exec.Params.ParamByName('tipo').AsString :=  stipo;
                dbx_exec.Params.ParamByName('descricao').AsString :=  sdescricao;

                dbx_exec.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
                dbx_exec.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

                dbx_exec.Params.ParamByName('chave').AsString :=    schave;
                dbx_exec.Params.ParamByName('fonte').AsString :=    sfonte;

                dbx_exec.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
                dbx_exec.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
                dbx_exec.Params.ParamByName('estadual').AsFloat :=      festadual;
                dbx_exec.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

                dbx_exec.ExecSQL;

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

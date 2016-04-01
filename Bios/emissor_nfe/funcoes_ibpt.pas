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



  frmdados.sql_consulta.Close;
  frmdados.sql_consulta.SQL.Clear;
  frmdados.sql_consulta.SQL.Add('select * from produtos where codigo = ' +quotedstr(Codprod) );
  frmdados.sql_consulta.Open;

  icodsita := frmdados.sql_consulta.fieldbyname('csita').AsInteger;
  sncmnbs := Trim(frmdados.sql_consulta.fieldbyname('simplesncm').AsString);
  sex := Trim(frmdados.sql_consulta.fieldbyname('ex').AsString);

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



        //faliqnac      :=  strtofloat(  Decimal_Is_Coma(frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['nacionalfederal'].Text));
        //faliqimp           := strtofloat(  Decimal_Is_Coma(frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['importadosfederal'].Text));
        //festadual    := strtofloat( Decimal_Is_Coma(frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['estadual'].Text));
        //fmunicipal := strtofloat(  Decimal_Is_Coma(frmprincipal.XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['municipal'].Text));


        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );

      end;


end;




end.

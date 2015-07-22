unit funcoes_ibpt;

interface
  procedure calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string );
  procedure buscarcalcibpt(Codprod:string; valorliquido,total:Currency);

var


  porcibpt, vlribpt:Currency;


implementation
     uses SysUtils, udados;

//Procedure ibpt7
procedure  calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string );
begin
  if (origem = '0') or (origem = '3') or  (origem = '4') or (origem = '5') then
      begin
        vlribpt := vlribpt +  valorliquidoitem * aliqnac / 100;
      end
  else
     begin
        vlribpt := vlribpt +  valorliquidoitem * aliqimp / 100;
     end;

 porcibpt := vlribpt /  total * 100;

end;


//procedure ibpt8
procedure buscarcalcibpt(Codprod:string; valorliquido, total:Currency);
var
  faliqnac, faliqimp:Currency;
  sncmnbs, sorigem, sex, sversao:string;
  itabela:Integer;
  ssita:string;
  icodsita:integer;
begin

  if Codprod = '' then
     Exit;
  //endi

  faliqnac := 0;
  faliqimp := 0;
  itabela := 0;


  sversao := '';

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
        faliqnac := frmdados.dbx_consulta.fieldbyname('aliqnac').asfloat;
        faliqimp := frmdados.dbx_consulta.fieldbyname('aliqimp').asfloat;
        itabela := frmdados.dbx_consulta.fieldbyname('tabela').AsInteger;
        sex :=     frmdados.dbx_consulta.fieldbyname('ex').AsString;
        sversao := frmdados.dbx_consulta.fieldbyname('versao').AsString;

        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao );

      end;

end;




end.

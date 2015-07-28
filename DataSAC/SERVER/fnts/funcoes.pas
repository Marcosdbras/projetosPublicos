unit funcoes;

interface

procedure calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string );
procedure buscarcalcibpt(Codprod:string; valorliquido,total:Currency);



var


  porcibpt, vlribpt:Currency;

implementation
     uses Forms, SysUtils, Windows, Messages, modulo, principal, atualizabd;



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
begin

  if Codprod = '' then
     Exit;
  //endi

  faliqnac := 0;
  faliqimp := 0;
  itabela := 0;


  sversao := '';

  frmmodulo.qrProdutoIBPT.Close;
  frmmodulo.qrProdutoIBPT.SQL.Clear;
  frmmodulo.qrProdutoIBPT.SQL.Add('select codigo, cst, csosn, classificacao_fiscal, sita, EX from C000025 where codigo = ' +quotedstr(Codprod) );
  frmmodulo.qrProdutoIBPT.Open;

  {

  if frmmodulo.qrFilial.FieldByName('CRT').AsInteger = 3 then
     begin
       //sorigem := copy(frmmodulo.qrProdutoIBPT.fieldbyname('cst').AsString,1,1);
     end
  else
     begin
       //sorigem := copy(frmmodulo.qrProdutoIBPT.fieldbyname('csosn').AsString,1,1);
     end;

  }

  sorigem := frmmodulo.qrProdutoIBPT.fieldbyname('sita').AsString;

  sncmnbs := Trim(frmmodulo.qrProdutoIBPT.fieldbyname('CLASSIFICACAO_FISCAL').AsString);

  sex := frmmodulo.qrProdutoIBPT.fieldbyname('ex').AsString;


  if sncmnbs = '' then
     Exit;
  //endi


  if sex = '' then
     begin
       frmmodulo.qrIBPT.Close;
       frmmodulo.qrIBPT.SQL.Clear;
       frmmodulo.qrIBPT.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs));
       frmmodulo.qrIBPT.Open;
     end
  else
     begin

       frmmodulo.qrIBPT.Close;
       frmmodulo.qrIBPT.SQL.Clear;
       frmmodulo.qrIBPT.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs)+' and ex = '+quotedstr(sex)    );
       frmmodulo.qrIBPT.Open;


     end;

  if  frmmodulo.qrIBPT.RecordCount > 0 then
      begin
        faliqnac := frmmodulo.qrIBPT.fieldbyname('aliqnac').asfloat;
        faliqimp := frmmodulo.qrIBPT.fieldbyname('aliqimp').asfloat;
        itabela := frmmodulo.qrIBPT.fieldbyname('tabela').AsInteger;
        sex := frmmodulo.qrIBPT.fieldbyname('ex').AsString;
        sversao := frmmodulo.qrIBPT.fieldbyname('versao').AsString;

        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao );

      end;

end;





end.

unit funcoes_ibpt;

interface
  procedure calcibpt(valorliquidoitem, total:Currency; origem:string; aliqnac:Currency; aliqimp:Currency; tabela:Integer; ex:string;  versao:string );
  procedure buscarcalcibpt(Codprod:string; valorliquido,total:Currency);

var


  porcibpt, vlribpt:Currency;


implementation
     uses SysUtils, conexao_ibpt;

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

  frmconexao_ibpt.qrProdutoIBPT.Close;
  frmconexao_ibpt.qrProdutoIBPT.SQL.Clear;
  frmconexao_ibpt.qrProdutoIBPT.SQL.Add('select codigo, cst, csosn, classificacao_fiscal, sita, EX, tabela from estoque where codigo = ' +quotedstr(Codprod) );
  frmconexao_ibpt.qrProdutoIBPT.Open;

 {

  frmconexao_ibpt.qrFilial.Close;
  frmconexao_ibpt.qrFilial.SQL.Clear;
  frmconexao_ibpt.qrFilial.SQL.Add('select * from filial');
  frmconexao_ibpt.qrFilial.Open;


  if frmconexao_ibpt.qrFilial.FieldByName('CRT').AsInteger = 3 then
     begin
       sorigem := copy(frmconexao_ibpt.qrProdutoIBPT.fieldbyname('cst').AsString,1,1);
     end
  else
     begin
       sorigem := copy(frmconexao_ibpt.qrProdutoIBPT.fieldbyname('csosn').AsString,1,1);
     end;

 }

 sorigem := frmconexao_ibpt.qrProdutoIBPT.fieldbyname('sita').AsString;


 sncmnbs := Trim(frmconexao_ibpt.qrProdutoIBPT.fieldbyname('CLASSIFICACAO_FISCAL').AsString);


 sex := frmconexao_ibpt.qrProdutoIBPT.fieldbyname('ex').AsString;

  if sncmnbs = '' then
     Exit;
  //endi

  if sex = '' then
     begin

       frmconexao_ibpt.qrIBPT.Close;
       frmconexao_ibpt.qrIBPT.SQL.Clear;
       frmconexao_ibpt.qrIBPT.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs));
       frmconexao_ibpt.qrIBPT.Open;

     end
  else
     begin


       frmconexao_ibpt.qrIBPT.Close;
       frmconexao_ibpt.qrIBPT.SQL.Clear;
       frmconexao_ibpt.qrIBPT.SQL.Add('select * from ibpt where codncmnbs = '+quotedstr(sncmnbs)+' and ex = '+ quotedstr( sex ) );
       frmconexao_ibpt.qrIBPT.Open;



     end;

  if  frmconexao_ibpt.qrIBPT.RecordCount > 0 then
      begin
        faliqnac := frmconexao_ibpt.qrIBPT.fieldbyname('aliqnac').asfloat;
        faliqimp := frmconexao_ibpt.qrIBPT.fieldbyname('aliqimp').asfloat;
        itabela := frmconexao_ibpt.qrIBPT.fieldbyname('tabela').AsInteger;
        sex := frmconexao_ibpt.qrIBPT.fieldbyname('ex').AsString;
        sversao := frmconexao_ibpt.qrIBPT.fieldbyname('versao').AsString;

        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao );

      end;

end;




end.

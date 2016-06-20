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

  scpfcnpj:string;


implementation
     uses SysUtils, modulo, conexao_ibpt;

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

  frmconexao_ibpt.qrProdutoIBPT.Close;
  frmconexao_ibpt.qrProdutoIBPT.SQL.Clear;
  frmconexao_ibpt.qrProdutoIBPT.SQL.Add('select codigo, cst, csosn, classificacao_fiscal, sita, EX, tabela from estoque where codigo = ' +quotedstr(Codprod) );
  frmconexao_ibpt.qrProdutoIBPT.Open;


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
        itabela := frmconexao_ibpt.qrIBPT.fieldbyname('tabela').AsInteger;
        sex :=     frmconexao_ibpt.qrIBPT.fieldbyname('ex').AsString;
        sversao := frmconexao_ibpt.qrIBPT.fieldbyname('versao').AsString;
        stipo := frmconexao_ibpt.qrIBPT.fieldbyname('tipo').AsString;
        sdescricao := frmconexao_ibpt.qrIBPT.fieldbyname('descricao').AsString;
        svigenciainicio := frmconexao_ibpt.qrIBPT.fieldbyname('vigenciainicio').asString;
        svigenciafim :=   frmconexao_ibpt.qrIBPT.fieldbyname('vigenciafim').asString;
        schave :=   frmconexao_ibpt.qrIBPT.fieldbyname('chave').asString;
        sversao :=   frmconexao_ibpt.qrIBPT.fieldbyname('versao').asString;
        sfonte :=   frmconexao_ibpt.qrIBPT.fieldbyname('fonte').asString;
        faliqnac := frmconexao_ibpt.qrIBPT.fieldbyname('nacionalfederal').asfloat;
        faliqimp := frmconexao_ibpt.qrIBPT.fieldbyname('importadosfederal').asfloat;
        festadual := frmconexao_ibpt.qrIBPT.fieldbyname('estadual').asfloat;
        fmunicipal := frmconexao_ibpt.qrIBPT.fieldbyname('municipal').asfloat;

        calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );

      end
  else
     begin


        try

            frmmodulo.atualizancm(sncmnbs);

            calcibpt(valorliquido,total, sorigem, faliqnac, faliqimp, itabela, sex,  sversao, festadual, fmunicipal );


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

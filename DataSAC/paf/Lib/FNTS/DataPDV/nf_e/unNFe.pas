unit unNFe;

 interface
uses
  Windows,
  SysUtils,
  Dialogs;

var
  arquivo_texto       : string;
  vetor_emitente      : array[1..5000] of string;
  vetor_cliente       : array[1..50000] of string;
  vetor_transportador : array[1..5000] of string;

  vetor_produto       : array[1..50000] of string;
  vetor_produto_M     : array[1..50000] of string;
  vetor_produto_O     : array[1..50000] of string;
  vetor_produto_N     : array[1..50000] of string;
  contador : INTEGER;
  arquivo_emitente_aberto      : boolean;
  arquivo_cliente_aberto       : boolean;
  arquivo_transportador_aberto : boolean;
  arquivo_produto_aberto       : boolean;
  arquivo_notafiscal_aberto    : boolean;
  arquivo_notafiscal_criado    : boolean;
  txt_nf                       : textfile;



function Exp_Abre_Emitente(arquivo:string):boolean; 
function Exp_Inclui_Emitente(tipo_Documento,Numero_Documento,Nome,Fantasia,
                             Insc_Estadual,IE_Sub_Tributario,Insc_Municipal,
                             CNAE,Endereco,Numero,Complemento,Bairro,
                             Cod_Municipio, Municipio, UF, CEP,Telefone :
                             string):boolean;
function Exp_Fecha_Emitente:boolean; 
function Exp_Abre_Cliente(arquivo:string):boolean; 
function Exp_Inclui_Cliente(tipo_Documento,Numero_Documento,Nome,
                             Insc_Estadual,SUFRAMA,
                             Endereco,Numero,Complemento,Bairro,
                             Cod_Municipio, Municipio, UF, CEP,Telefone :
                             string):boolean;
function Exp_Fecha_Cliente:boolean; 
function Exp_Abre_Transportador(arquivo:string):boolean; 
function Exp_Inclui_Transportador(tipo_Documento,Numero_Documento,Nome,
                             Insc_Estadual,Endereco,Municipio, UF :
                             string):boolean;
function Exp_Fecha_Transportador:boolean; 
function Exp_Abre_Produto(arquivo:string):boolean; 
function Exp_Inclui_Produto(Codigo,
                            Produto,
                            Cod_Barra,
                            NCM,
                            Ex_TIPI,
                            Genero,
                            Unidade:string;
                            Preco:real;
                            GTIN,
                            Unidade_Tributavel:string;
                            Preco_Tributavel:Real;
                            Quantidade_Tributavel:Real;
                            Utiliza_IPI:integer;
                            IPI_Classe,
                            IPI_CNPJ_Produtor,
                            IPI_Codigo,
                            ICMS_CST:string;
                            ICMS_Origem:integer;
                            ICMS_Modalidade:Integer;
                            ICMS_Aliquota,
                            ICMS_Percentual_Reducao:real;
                            ICMS_Modalidade_ST:string;
                            ICMS_Percentual_Reducao_ST,
                            ICMS_Percentual_Adicao_ST:real):boolean;
                            
function Exp_Fecha_Produto:boolean; 
function Exp_Abre_notafiscal(arquivo:string):boolean; 
function Exp_Inicia_NotaFiscal(Quantidade:integer;
                               UF,
                               Natureza_Operacao:string;
                               Forma_Pgto:integer;
                               Modelo,
                               Serie,
                               Numero:string;
                               Data_Emissao,
                               Data_Saida:tdatetime;
                               Entrada_Saida,
                               Cod_Municipio,
                               Tipo_Nf:integer;
                               Emitente_Razao_Social,
                               Emitente_Insc_Estadual:string;
                               Emitente_CNPJ:string;
                               Emitente_Endereco,
                               Emitente_Numero,
                               Emitente_Complemento,
                               Emitente_Bairro,
                               Emitente_Cod_Municipio,
                               Emitente_Municipio,
                               Emitente_Uf,
                               Emitente_Cep,
                               Emitente_Telefone:string;
                               Destinatario_razao_social,
                               Destinatario_insc_estadual,
                               Destinatario_suframa:string;
                               Destinatario_CNPJ:STRING;
                               Destinatario_endereco,
                               Destinatario_numero,
                               Destinatario_complemento,
                               Destinatario_bairro,
                               Destinatario_cod_municipio,
                               Destinatario_municipio,
                               Destinatario_uf,
                               Destinatario_cep,
                               Destinatario_telefone : string;
                               Local_Retirada_CNPJ,
                               Local_Retirada_Endereco,
                               Local_Retirada_Numero,
                               Local_Retirada_Complemento,
                               Local_Retirada_Bairro,
                               Local_Retirada_Cod_Municipio,
                               Local_Retirada_Municipio,
                               Local_Retirada_Uf : string;
                               Local_Entrega_CNPJ,
                               Local_Entrega_Endereco,
                               Local_Entrega_Numero,
                               Local_Entrega_Complemento,
                               Local_Entrega_Bairro,
                               Local_Entrega_Cod_Municipio,
                               Local_Entrega_Municipio,
                               Local_Entrega_Uf : string):boolean;


function Exp_Inclui_item(Item:integer;
                        Codigo,
                        Cod_Barra,
                        Produto,
                        NCM,
                        CFOP,
                        Unidade:string;
                        Quantidade,
                        Valor_Unitario,
                        Valor_Total,
                        Valor_Frete,
                        Valor_Seguro,
                        Valor_Desconto:real;
                        CST:string;
                        Origem:integer;
                        Modalidade:integer;
                        ICMS_Base_Calculo,
                        ICMS_Aliquota,
                        ICMS_Valor,
                        ICMS_Reducao:REAL;
                        ST_Modalidade:integer;
                        ST_Margem_Adicional,
                        ST_Reducao,
                        ST_Base_Calculo,
                        ST_Aliquota,
                        ST_Valor:real;
                        IPI_Codigo:string;
                        IPI_Valor,
                        IPI_Base_Calculo,
                        IPI_Aliquota:real;
                        PIS_Aliquota,
                        PIS_Base_Calculo,
                        PIS_Valor:real;
                        COFINS_Aliquota,
                        COFINS_Valor,
                        COFINS_Base_Calculo:real):boolean;

function Exp_Termina_NotaFiscal(Total_ICMS_Base_Calculo,
                                Total_ICMS_Valor,
                                Total_ST_Base_Calculo,
                                Total_ST_Valor,
                                Total_Produtos,
                                Total_Frete,
                                Total_Seguro,
                                Total_Desconto,
                                Total_IPI,
                                Total_PIS,
                                Total_COFINS,
                                Total_Outras_Despesas,
                                Total_Nota_Fiscal:real;
                                Frete_por_Conta:integer;
                                Frete_Transportador,
                                Frete_Inscricao_Estadual,
                                Frete_Endereco,
                                Frete_UF,
                                Frete_Municipio,
                                Frete_CNPJ,
                                Frete_CPF,
                                Frete_Placa,
                                Frete_UF_Placa:string;
                                Frete_Volume_Quantidade:real;
                                Frete_Volume_Especie,
                                Frete_Volume_Marca,
                                Frete_Volume_Numero:string;
                                Frete_Volume_Peso_Liquido,
                                Frete_Volume_Peso_Bruto:real):boolean;
function Exp_Faturamento_NotaFiscal(Numero_Fatura:string;
                                    Valor_Original,
                                    Desconto,
                                    Valor_Liquido:real):boolean;

function Exp_Duplicata_NotaFiscal(Numero:string;
                                  Vencimento:tdatetime;
                                  Valor:real):boolean;

function Exp_Fecha_NotaFiscal(Observacoes:ShortString):boolean;







implementation











{$R *.res}

function SN(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;

function CUF(UF:string):string;
begin
  if UF = 'RO' then result := '11';
  if UF = 'AC' then result := '12';
  if UF = 'AM' then result := '13';
  if UF = 'RR' then result := '14';
  if UF = 'PA' then result := '15';
  if UF = 'AP' then result := '16';
  if UF = 'TO' then result := '17';

  if UF = 'MA' then result := '21';
  if UF = 'PI' then result := '22';
  if UF = 'CE' then result := '23';
  if UF = 'RN' then result := '24';
  if UF = 'PB' then result := '25';
  if UF = 'PE' then result := '26';
  if UF = 'AL' then result := '27';
  if UF = 'SE' then result := '28';
  if UF = 'BA' then result := '29';

  if UF = 'MG' then result := '31';
  if UF = 'ES' then result := '32';
  if UF = 'RJ' then result := '33';
  if UF = 'SP' then result := '35';

  if UF = 'PR' then result := '41';
  if UF = 'SC' then result := '42';
  if UF = 'RS' then result := '43';

  if UF = 'MS' then result := '50';
  if UF = 'MT' then result := '51';
  if UF = 'GO' then result := '52';
  if UF = 'DF' then result := '53';
end;

function SD(data:tdatetime):string;
begin
  result := FormatDateTime('yyyy-mm-dd',data);
end;


function FV(Valor:real;qtde:integer):string;
var vlr : string;
i : integer;
begin
  if valor > 0 then
  begin
    if qtde = 4 then vlr := formatfloat('###########0.0000',valor);
    if qtde = 2 then vlr := formatfloat('###########0.00',valor);
    if qtde = 3 then vlr := formatfloat('###########0.000',valor);

    i := pos(',',vlr);
    if i > 0 then
    begin
      delete(vlr,i,1);
      insert('.',vlr,i);
    end;
    result := vlr;
  end
  else
  begin
    result := '';
  end;
end;


function FVZ(Valor:real;qtde:integer):string;
var vlr : string;
i : integer;
begin

    if qtde = 4 then vlr := formatfloat('###########0.0000',valor);
    if qtde = 2 then vlr := formatfloat('###########0.00',valor);
    if qtde = 3 then vlr := formatfloat('###########0.000',valor);

    i := pos(',',vlr);
    if i > 0 then
    begin
      delete(vlr,i,1);
      insert('.',vlr,i);
    end;
    result := vlr;
end;


(**************************** E M I T E N T E *********************************)

function Exp_Abre_Emitente(arquivo:string):boolean;
begin
  arquivo_texto := arquivo;
  contador := 0;
  arquivo_emitente_aberto := true;
  result := true;
end;

function Exp_Inclui_Emitente(tipo_Documento,Numero_Documento,Nome,Fantasia,
                             Insc_Estadual,IE_Sub_Tributario,Insc_Municipal,
                             CNAE,Endereco,Numero,Complemento,Bairro,
                             Cod_Municipio, Municipio, UF, CEP,Telefone :
                             string):boolean;
begin

  if arquivo_emitente_aberto then
  begin
    contador := contador + 1;
    vetor_emitente[contador] := 'C|'+
                               tipo_Documento+'|'+
                               SN(Numero_Documento)+'|'+
                               copy(Nome,1,60)+'|'+
                               copy(Fantasia,1,60)+'|'+
                               SN(Insc_Estadual)+'|'+
                               SN(IE_Sub_Tributario)+'|'+
                               SN(Insc_Municipal)+'|'+
                               SN(CNAE)+'|'+
                               copy(Endereco,1,60)+'|'+
                               Numero+'|'+
                               copy(complemento,1,60)+'|'+
                               copy(bairro,1,60)+'|'+
                               Cod_municipio+'|'+
                               copy(municipio,1,60)+'|'+
                               UF+'|'+
                               SN(cep)+'|'+
                               '1058'+'|'+
                               'BRASIL'+'|'+
                               SN(Telefone)+'|';
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function Exp_Fecha_Emitente:boolean; 
var txt : textfile;
i : integer;
begin
  if arquivo_emitente_aberto then
  begin
    assignfile(txt,arquivo_texto);
    Rewrite(txt);
    WRITELN(txt,'EMITENTE|'+INTTOSTR(CONTADOR)+'|');
    for i := 1 to contador do
    begin
      Writeln(txt,'A|1.01');
      writeln(txt,vetor_emitente[i]);
    end;
    closefile(txt);
    arquivo_emitente_aberto := false;
    contador := 0;
    result := true;
  end
  else
  begin
    result := false;
  end;


end;



(****************************  C L I E N T E  *********************************)

function Exp_Abre_Cliente(arquivo:string):boolean; 
begin
  arquivo_texto := arquivo;
  contador := 0;
  arquivo_Cliente_aberto := true;
  result := true;
end;

function Exp_Inclui_Cliente(tipo_Documento,Numero_Documento,Nome,
                             Insc_Estadual,SUFRAMA,
                             Endereco,Numero,Complemento,Bairro,
                             Cod_Municipio, Municipio, UF, CEP,Telefone :
                             string):boolean;
begin

  if arquivo_Cliente_aberto then
  begin
    contador := contador + 1;
    vetor_Cliente[contador] := 'E|'+
                               tipo_Documento+'|'+
                               SN(Numero_Documento)+'|'+
                               copy(Nome,1,60)+'|'+
                               SN(Insc_Estadual)+'|'+
                               SN(SUFRAMA)+'|'+
                               copy(Endereco,1,60)+'|'+
                               Numero+'|'+
                               copy(complemento,1,60)+'|'+
                               copy(bairro,1,60)+'|'+
                               Cod_municipio+'|'+
                               copy(municipio,1,60)+'|'+
                               UF+'|'+
                               SN(cep)+'|'+
                               '1058'+'|'+
                               'BRASIL'+'|'+
                               sn(Telefone)+'|';
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function Exp_Fecha_Cliente:boolean; 
var txt : textfile;
i : integer;
begin
  if arquivo_Cliente_aberto then
  begin
    assignfile(txt,arquivo_texto);
    Rewrite(txt);
    WRITELN(txt,'CLIENTE|'+INTTOSTR(CONTADOR)+'|');
    for i := 1 to contador do
    begin
      Writeln(txt,'A|1.01');
      writeln(txt,vetor_Cliente[i]);
    end;
    closefile(txt);
    arquivo_Cliente_aberto := false;
    contador := 0;
    result := true;
  end
  else
  begin
    result := false;
  end;


end;


(****************************  TRANSPORTADORA *********************************)

function Exp_Abre_Transportador(arquivo:string):boolean; 
begin
  arquivo_texto := arquivo;
  contador := 0;
  arquivo_Transportador_aberto := true;
  result := true;
end;

function Exp_Inclui_Transportador(tipo_Documento,Numero_Documento,Nome,
                             Insc_Estadual,Endereco,Municipio, UF :
                             string):boolean;
begin

  if arquivo_Transportador_aberto then
  begin
    contador := contador + 1;
    vetor_Transportador[contador] := 'X|'+
                               tipo_Documento+'|'+
                               SN(Numero_Documento)+'|'+
                               copy(Nome,1,60)+'|'+
                               SN(Insc_Estadual)+'|'+
                               copy(Endereco,1,60)+'|'+
                               copy(municipio,1,60)+'|'+
                               UF+'|';
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function Exp_Fecha_Transportador:boolean; 
var txt : textfile;
i : integer;
begin
  if arquivo_Transportador_aberto then
  begin
    assignfile(txt,arquivo_texto);
    Rewrite(txt);
    WRITELN(txt,'TRANSPORTADORA|'+INTTOSTR(CONTADOR)+'|');
    for i := 1 to contador do
    begin
      Writeln(txt,'A|1.01');
      writeln(txt,vetor_Transportador[i]);
    end;
    closefile(txt);
    arquivo_Transportador_aberto := false;
    contador := 0;
    result := true;
  end
  else
  begin
    result := false;
  end;


end;

(****************************  P R O D U T O  *********************************)

function Exp_Abre_Produto(arquivo:string):boolean; 
begin
  arquivo_texto := arquivo;
  contador := 0;
  arquivo_Produto_aberto := true;
  result := true;
end;

function Exp_Inclui_Produto(Codigo,
                            Produto,
                            Cod_Barra,
                            NCM,
                            Ex_TIPI,
                            Genero,
                            Unidade:string;
                            Preco:real;
                            GTIN,
                            Unidade_Tributavel:string;
                            Preco_Tributavel:Real;
                            Quantidade_Tributavel:Real;
                            Utiliza_IPI:integer;
                            IPI_Classe,
                            IPI_CNPJ_Produtor,
                            IPI_Codigo,
                            ICMS_CST:string;
                            ICMS_Origem:integer;
                            ICMS_Modalidade:Integer;
                            ICMS_Aliquota,
                            ICMS_Percentual_Reducao:real;
                            ICMS_Modalidade_ST:string;
                            ICMS_Percentual_Reducao_ST,
                            ICMS_Percentual_Adicao_ST:real):boolean;
                            

var pRedBC, pRedBCST : string;
begin

  if arquivo_Produto_aberto then
  begin
    contador := contador + 1;

    //Produto

    vetor_produto[contador] := 'I|'+
                               codigo+'|'+
                               Produto+'|'+
                               Cod_Barra+'|'+
                               NCM+'|'+
                               Ex_TIPI+'|'+
                               Genero+'|'+
                               Unidade+'|'+
                               fv(Preco,4)+'|'+
                               GTIN+'|'+
                               Unidade_Tributavel+'|'+
                               fv(Preco_Tributavel,4)+'|'+
                               fv(Quantidade_Tributavel,4)+'|';

    //Grupo M --> Tributos incidentes

    if Utiliza_IPI = 1 then
       vetor_produto_M[contador] := 'M|1|1'
    else
       vetor_produto_M[contador] := 'M|0|1';

    //Grupo O --> IPI
    if (IPI_Classe = '') and (IPI_CNPJ_Produtor = '') and (IPI_Codigo = '') then
       vetor_produto_O[contador] := ''
    else
       vetor_produto_O[contador] := 'O|'+
                                    IPI_Classe+'|'+
                                    IPI_CNPJ_Produtor+'|'+
                                    IPI_Codigo;
    //Grupo N --> ICMS
                                 if ICMS_Percentual_Reducao > 0 then
                                   pRedBC := fv(ICMS_Percentual_Reducao,2)
                                 else
                                   pRedBc := '';

                                 if ICMS_Percentual_Reducao_ST > 0 then
                                   predBCST := fv(ICMS_Percentual_Reducao_ST,2)
                                 else
                                   predBCST := '';


 


    vetor_produto_N[contador] := 'N|'+
                                 copy(ICMS_cst,2,2)+'|'+
                                 inttostr(ICMS_Origem)+'|'+
                                 inttostr(ICMS_Modalidade)+'|'+
                                 fv(ICMS_aliquota,2)+'|'+
                                 pRedBC+'|'+
                                 ICMS_Modalidade_ST+'|'+
                                 pRedBCST+'|'+
                                 fv(ICMS_Percentual_Adicao_ST,2);

    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function Exp_Fecha_Produto:boolean; 
var txt : textfile;
i : integer;
begin
  if arquivo_Produto_aberto then
  begin
    assignfile(txt,arquivo_texto);
    Rewrite(txt);
    WRITELN(txt,'PRODUTO|'+INTTOSTR(CONTADOR)+'|');
    for i := 1 to contador do
    begin
      Writeln(txt,'A|1.01');
      writeln(txt,vetor_Produto[i]);
      writeln(txt,vetor_produto_M[i]);
      if vetor_produto_O[i] <> '' then
        writeln(txt,vetor_produto_O[i]);
      writeln(txt,vetor_produto_N[i]);
    end;
    closefile(txt);
    arquivo_Produto_aberto := false;
    contador := 0;
    result := true;
  end
  else
  begin
    result := false;
  end;


end;




(****************************  NOTA FISCAL    *********************************)

function Exp_Abre_notafiscal(arquivo:string):boolean; 
begin
  arquivo_texto := arquivo;
  contador := 0;
  arquivo_notafiscal_aberto := true;
  arquivo_notafiscal_criado := false;
  result := true;
end;


function Exp_Inicia_NotaFiscal(Quantidade:integer;
                               UF,
                               Natureza_Operacao:string;
                               Forma_Pgto:integer;
                               Modelo,
                               Serie,
                               Numero:string;
                               Data_Emissao,
                               Data_Saida:tdatetime;
                               Entrada_Saida,
                               Cod_Municipio,
                               Tipo_Nf:integer;
                               // BLOCO C
                               Emitente_Razao_Social,
                               Emitente_Insc_Estadual:string;
                               //bloco C02
                               Emitente_CNPJ:string;
                               //bloco C05
                               Emitente_Endereco,
                               Emitente_Numero,
                               Emitente_Complemento,
                               Emitente_Bairro,
                               Emitente_Cod_Municipio,
                               Emitente_Municipio,
                               Emitente_Uf,
                               Emitente_Cep,
                               Emitente_Telefone:string;
                               // BLOCO E --> Destinatario
                               Destinatario_razao_social,
                               Destinatario_insc_estadual,
                               Destinatario_suframa:string;
                               // BLOCO E02
                               Destinatario_CNPJ:STRING;
                               // BLOCO E05
                               Destinatario_endereco,
                               Destinatario_numero,
                               Destinatario_complemento,
                               Destinatario_bairro,
                               Destinatario_cod_municipio,
                               Destinatario_municipio,
                               Destinatario_uf,
                               Destinatario_cep,
                               Destinatario_telefone : string;
                               // BLOCO F
                               Local_Retirada_CNPJ,
                               Local_Retirada_Endereco,
                               Local_Retirada_Numero,
                               Local_Retirada_Complemento,
                               Local_Retirada_Bairro,
                               Local_Retirada_Cod_Municipio,
                               Local_Retirada_Municipio,
                               Local_Retirada_Uf : string;
                               // BLOCO G
                               Local_Entrega_CNPJ,
                               Local_Entrega_Endereco,
                               Local_Entrega_Numero,
                               Local_Entrega_Complemento,
                               Local_Entrega_Bairro,
                               Local_Entrega_Cod_Municipio,
                               Local_Entrega_Municipio,
                               Local_Entrega_Uf : string):boolean;


var
i : integer;
begin
    //NotaFiscal

  if arquivo_notafiscal_aberto then
  begin
   try
    assignfile(txt_nf,arquivo_texto);
    Rewrite(txt_nf);
    arquivo_notafiscal_criado := true;

    Writeln(txt_nf,'NOTAFISCAL|'+INTTOSTR(QUANTIDADE));
    Writeln(txt_nf,'A|1.10|NFe');
    Writeln(txt_nf,'B|'+Cuf(UF)+'||'+
                copy(natureza_operacao,1,60)+'|'+
                inttostr(forma_pgto)+'|'+
                modelo+'|'+
                serie+'|'+
                numero+'|'+
                sd(data_emissao)+'|'+
                sd(data_saida)+'|'+
                inttostr(entrada_saida)+'|'+
                inttostr(cod_municipio)+'|'+
                '1'+'|'+
                '1'+'|'+
                '|'+
                '1'+'|'+
                inttostr(tipo_nf)+'|'+
                '3'+'|'+
                '1.0');
 (* emitente *)
    Writeln(txt_nf,'C|'+copy(Emitente_Razao_Social,1,60)+'||'+
                SN(Emitente_Insc_Estadual)+'||||');

    Writeln(txt_nf,'C02|'+SN(Emitente_CNPJ));
    Writeln(txt_nf,'C05|'+Emitente_Endereco+'|'+
                       Emitente_Numero+'|'+
                       Emitente_Complemento+'|'+
                       Emitente_Bairro+'|'+
                       Emitente_Cod_Municipio+'|'+
                       Emitente_Municipio+'|'+
                       Emitente_uf+'|'+
                       SN(Emitente_Cep)+'|'+
                       '1058|BRASIL|'+
                       SN(Emitente_Telefone));
  (* destinatario *)
    Writeln(txt_nf,'E|'+copy(Destinatario_Razao_Social,1,60)+'||'+
                SN(Destinatario_Insc_Estadual)+'|'+
                SN(Destinatario_suframa));
    Writeln(txt_nf,'E02|'+SN(Destinatario_CNPJ));
    Writeln(txt_nf,'E05|'+Destinatario_Endereco+'|'+
                 Destinatario_Numero+'|'+
                 Destinatario_Complemento+'|'+
                 Destinatario_Bairro+'|'+
                 Destinatario_Cod_Municipio+'|'+
                 Destinatario_Municipio+'|'+
                 Destinatario_uf+'|'+
                 SN(Destinatario_Cep)+'|'+
                 '1058|BRASIL|'+
                 SN(Destinatario_Telefone));

  if (Emitente_Endereco <> Local_Retirada_Endereco)
     AND (LOCAL_RETIRADA_ENDERECO <> '') then
  begin
  (* local de retirada *)
      Writeln(txt_nf,'F|'+sn(Local_Retirada_CNPJ)+'|'+
                   Local_Retirada_Endereco+'|'+
                   Local_Retirada_Numero+'|'+
                   Local_Retirada_Complemento+'|'+
                   Local_Retirada_Bairro+'|'+
                   Local_Retirada_Cod_Municipio+'|'+
                   Local_Retirada_Municipio+'|'+
                    Local_Retirada_uf);
  end;

  if (Destinatario_Endereco <> Local_Entrega_Endereco) and
     (local_entrega_endereco <> '') then
  begin
  (* local de Entrega *)
     Writeln(txt_nf,'G|'+sn(Local_Entrega_CNPJ)+'|'+
                 Local_Entrega_Endereco+'|'+
                 Local_Entrega_Numero+'|'+
                 Local_Entrega_Complemento+'|'+
                 Local_Entrega_Bairro+'|'+
                 Local_Entrega_Cod_Municipio+'|'+
                 Local_Entrega_Municipio+'|'+
                 Local_Entrega_uf);
  end;






    result := true;

    except
      result := false;
    end;
  end
  else
  begin
    result := false;
  end;
end;


function Exp_Inclui_item(Item:integer;
                        Codigo,
                        Cod_Barra,
                        Produto,
                        NCM,
                        CFOP,
                        Unidade:string;
                        Quantidade,
                        Valor_Unitario,
                        Valor_Total,
                        Valor_Frete,
                        Valor_Seguro,
                        Valor_Desconto:real;
                        CST:string;
                        Origem:integer;
                        Modalidade:integer;
                        ICMS_Base_Calculo,
                        ICMS_Aliquota,
                        ICMS_Valor,
                        ICMS_Reducao:REAL;
                        ST_Modalidade:integer;
                        ST_Margem_Adicional,
                        ST_Reducao,
                        ST_Base_Calculo,
                        ST_Aliquota,
                        ST_Valor:real;
                        IPI_Codigo:string;
                        IPI_Valor,
                        IPI_Base_Calculo,
                        IPI_Aliquota:real;
                        PIS_Aliquota,
                        PIS_Base_Calculo,
                        PIS_Valor:real;
                        COFINS_Aliquota,
                        COFINS_Valor,
                        COFINS_Base_Calculo:real):boolean;
begin

  if (arquivo_notafiscal_aberto) and (arquivo_notafiscal_criado) then
  begin
    try
    writeln(txt_nf,'H|'+Inttostr(item)+'|');
    writeln(txt_nf,'I|'+codigo+'|'+
                        cod_barra+'|'+
                        produto+'|'+
                        NCM+'|||'+
                        CFOP+'|'+
                        Unidade+'|'+
                        FV(Quantidade,4)+'|'+
                        FV(Valor_Unitario,4)+'|'+
                        FV(Valor_Total,2)+'||'+
                        Unidade+'|'+
                        FV(Quantidade,4)+'|'+
                        FV(Valor_Unitario,4)+'|'+
                        FV(Valor_Frete,2)+'|'+
                        FV(Valor_Seguro,2)+'|'+
                        fv(Valor_Desconto,2));

    writeln(txt_nf,'M');
    writeln(txt_nf,'N');
    if cst = '000' then // grupo N02 - Tributado Integralmente
    begin
      writeln(txt_nf,'N02|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FVz(ICMS_Base_Calculo,2)+'|'+
                            FVz(ICMS_Aliquota,2)+'|'+
                            FVz(ICMS_Valor,2));
    end;

    if cst = '010' then // grupo N03 - Tributada e com cobranca de ICMS por ST
    begin
      writeln(txt_nf,'N03|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FVz(ICMS_Base_Calculo,2)+'|'+
                            FVz(ICMS_Aliquota,2)+'|'+
                            FVz(ICMS_Valor,2)+'|'+
                            Inttostr(ST_Modalidade)+'|'+
                            FV(ST_Margem_Adicional,2)+'|'+
                            FV(ST_Reducao,2)+'|'+
                            FV(ST_Base_Calculo,2)+'|'+
                            FV(ST_Aliquota,2)+'|'+
                            FV(ST_Valor,2));
    end;

    if cst = '020' then // grupo N04 - Com redução de base de calculo
    begin
      writeln(txt_nf,'N04|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FV(ICMS_Reducao,2)+'|'+
                            FVz(ICMS_Base_Calculo,2)+'|'+
                            FVz(ICMS_Aliquota,2)+'|'+
                            FVz(ICMS_Valor,2));
    end;

    if cst = '030' then // grupo N05 - Isenta ou nao tributada e com cob ICMS ST
    begin
      writeln(txt_nf,'N05|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(ST_Modalidade)+'|'+
                            FV(ST_Margem_Adicional,2)+'|'+
                            FV(ST_Reducao,2)+'|'+
                            FV(ST_Base_Calculo,2)+'|'+
                            FV(ST_Aliquota,2)+'|'+
                            FV(ST_Valor,2));
    end;

    if (cst = '040') or
       (cst = '041') or
       (cst = '050') then // grupo N06 - Isenta, não tributada, suspensao
    begin
      writeln(txt_nf,'N06|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2));
    end;

    if cst = '051' then // grupo N07 - Diferimento
    begin
      writeln(txt_nf,'N07|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FV(ICMS_Reducao,2)+'|'+
                            FVz(ICMS_Base_Calculo,2)+'|'+
                            FVz(ICMS_Aliquota,2)+'|'+
                            FVz(ICMS_Valor,2));
    end;

    if cst = '060' then // grupo N08 - Substituicao Tributaria
    begin
      writeln(txt_nf,'N08|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            FV(ST_Base_Calculo,2)+'|'+
                            FV(ST_Valor,2));
    end;

    if cst = '070' then // grupo N09 - Reducao e Substituicao Tributaria
    begin
      writeln(txt_nf,'N09|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FV(ICMS_Reducao,2)+'|'+
                            FVz(ICMS_Base_Calculo,2)+'|'+
                            FVz(ICMS_Aliquota,2)+'|'+
                            FVz(ICMS_Valor,2)+'|'+
                            Inttostr(ST_Modalidade)+'|'+
                            FV(ST_Margem_Adicional,2)+'|'+
                            FV(ST_Reducao,2)+'|'+
                            FV(ST_Base_Calculo,2)+'|'+
                            FV(ST_Aliquota,2)+'|'+
                            FV(ST_Valor,2));
    end;

    if cst = '090' then // grupo N10 - Outros
    begin
      writeln(txt_nf,'N10|'+Inttostr(Origem)+'|'+
                            copy(CST,2,2)+'|'+
                            Inttostr(Modalidade)+'|'+
                            FV(ICMS_Reducao,2)+'|'+
                            FV(ICMS_Base_Calculo,2)+'|'+
                            FV(ICMS_Aliquota,2)+'|'+
                            FV(ICMS_Valor,2)+'|'+
                            Inttostr(ST_Modalidade)+'|'+
                            FV(ST_Margem_Adicional,2)+'|'+
                            FV(ST_Reducao,2)+'|'+
                            FV(ST_Base_Calculo,2)+'|'+
                            FV(ST_Aliquota,2)+'|'+
                            FV(ST_Valor,2));
    end;


    // Enquadramento de IPI
      writeln(txt_nf,'O|||||999');

      if (IPI_codigo = '00') or
         (IPI_codigo = '49') or
         (IPI_codigo = '50') or
         (IPI_Codigo = '99') then
      begin
        writeln(txt_nf,'O07|'+ipi_codigo+'|'+
                              fv(IPI_Valor,2)+'|'+
                              fv(IPI_Base_Calculo,2)+'|'+
                              fv(IPI_Aliquota,2)+'||');

      end;

      if (IPI_codigo = '01') or
         (IPI_codigo = '02') or
         (IPI_codigo = '03') or
         (IPI_Codigo = '04') or
         (IPI_Codigo = '05') or
         (IPI_Codigo = '51') or
         (IPI_Codigo = '52') or
         (IPI_Codigo = '53') or
         (IPI_Codigo = '54') or
         (IPI_Codigo = '55') THEN
      begin
        writeln(txt_nf,'O08|'+ipi_codigo);
      end;


      If PIS_Valor > 0 then
      begin
        Writeln(txt_nf,'Q');
        Writeln(txt_nf,'Q02|01|'+
                       fv(PIS_Base_calculo,2)+'|'+
                       fv(PIS_Aliquota,2)+'|'+
                       fv(PIS_Valor,2));
      end
      else
      begin
        //PIS
        Writeln(txt_nf,'Q');
        Writeln(txt_nf,'Q04|07');
      end;

      //COFINS
      if COFINS_Valor > 0 then
      begin
        Writeln(txt_nf,'S');
        Writeln(txt_nf,'S02|01|'+
                       fv(COFINS_Base_calculo,2)+'|'+
                       fv(COFINS_Aliquota,2)+'|'+
                       fv(COFINS_Valor,2));

      end
      else
      begin
        Writeln(txt_nf,'S');
        Writeln(txt_nf,'S04|07');
      end;

      result := true;
    except
      result := false;
    end;
  end
  else
  begin
    result := false;
  end;
end;


function Exp_Termina_NotaFiscal(Total_ICMS_Base_Calculo,
                                Total_ICMS_Valor,
                                Total_ST_Base_Calculo,
                                Total_ST_Valor,
                                Total_Produtos,
                                Total_Frete,
                                Total_Seguro,
                                Total_Desconto,
                                Total_IPI,
                                Total_PIS,
                                Total_COFINS,
                                Total_Outras_Despesas,
                                Total_Nota_Fiscal:real;
                                Frete_por_Conta:integer;
                                Frete_Transportador,
                                Frete_Inscricao_Estadual,
                                Frete_Endereco,
                                Frete_UF,
                                Frete_Municipio,
                                Frete_CNPJ,
                                Frete_CPF,
                                Frete_Placa,
                                Frete_UF_Placa:string;
                                Frete_Volume_Quantidade:real;
                                Frete_Volume_Especie,
                                Frete_Volume_Marca,
                                Frete_Volume_Numero:string;
                                Frete_Volume_Peso_Liquido,
                                Frete_Volume_Peso_Bruto:real):boolean; 
begin

      Writeln(txt_nf,'W');
      Writeln(txt_nf,'W02|'+FV(Total_ICMS_Base_Calculo,2)+'|'+
                            FV(Total_ICMS_Valor,2)+'|'+
                            FV(Total_ST_Base_Calculo,2)+'|'+
                            FV(Total_ST_Valor,2)+'|'+
                            FV(Total_Produtos,2)+'|'+
                            FV(Total_Frete,2)+'|'+
                            FV(Total_Seguro,2)+'|'+
                            FV(Total_Desconto,2)+'|'+
                            FV(Total_IPI,2)+'|'+
                            FV(Total_PIS,2)+'|'+
                            FV(Total_COFINS,2)+'|'+
                            FV(Total_Outras_Despesas,2)+'|'+
                            FV(Total_Nota_Fiscal,2));

      Writeln(txt_nf,'X|'+Inttostr(Frete_por_Conta));
      if Frete_Transportador <> '' then
      begin
        writeln(txt_nf,'X03|'+copy(Frete_Transportador,1,60)+'|'+
                              sn(Frete_Inscricao_Estadual)+'|'+
                              copy(Frete_Endereco,1,60)+'|'+
                              Frete_UF+'|'+
                              Frete_Municipio);
        if Frete_CNPJ <> '' then
          writeln(txt_nf,'X04|'+sn(Frete_CNPJ));
        if Frete_CPF <> '' then
          writeln(txt_nf,'X05|'+sn(Frete_CPF));

        if frete_placa <> '' then
        begin
          writeln(txt_nf,'X18|'+Frete_Placa+'|'+Frete_UF_Placa+'|');
        end;
        if frete_volume_quantidade > 0 then
        begin
          writeln(txt_nf,'X26|'+floattostr(Frete_Volume_Quantidade)+'|'+
                                frete_volume_especie+'|'+
                                frete_volume_marca+'|'+
                                frete_volume_numero+'|'+
                                fv(Frete_Volume_Peso_Liquido,3)+'|'+
                                fv(frete_volume_peso_bruto,3));
        end;
      end;

      arquivo_notafiscal_criado := false;


end;


function Exp_Faturamento_NotaFiscal(Numero_Fatura:string;
                                    Valor_Original,
                                    Desconto,
                                    Valor_Liquido:real):boolean; 
begin
  if (arquivo_notafiscal_aberto) and (arquivo_notafiscal_criado=false) then
  begin
    writeln(txt_nf,'Y');
    writeln(txt_nf,'Y02|'+Numero_Fatura+'|'+
                          fv(valor_original,2)+'|'+
                          fv(desconto,2)+'|'+
                          fv(valor_liquido,2));
  end;
end;
function Exp_Duplicata_NotaFiscal(Numero:string;
                                  Vencimento:tdatetime;
                                  Valor:real):boolean; 
begin
  if (arquivo_notafiscal_aberto) and (arquivo_notafiscal_criado=false) then
  begin
    writeln(txt_nf,'Y07|'+numero+'|'+
                        sd(vencimento)+'|'+
                        fv(valor,2));
  end;
end;


function Exp_Fecha_NotaFiscal(Observacoes:ShortString):boolean; 
var txt : textfile;
i : integer;
begin
  if arquivo_NotaFiscal_aberto then
  begin

    try
      if observacoes <> '' then
      begin
        writeln(txt_NF,'Z|'+Observacoes);
      end;
      closefile(txt_NF);
      arquivo_NotaFiscal_aberto := false;
      arquivo_notafiscal_criado := false;
      contador := 0;
      result := true;
    except
      result := false;
    END;
  end
  else
  begin
    result := false;
  end;
end;

end.

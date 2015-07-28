unit unSintegra;

interface

uses
  SysUtils,
  Windows,
  Dialogs,
  DateUtils,
  Classes,
  Unit_Validacao_Sintegra,
  Valida_CFOP,
  Valida_NCM;

  Procedure Inicia_SIntegra; 
  Procedure Finaliza_SIntegra; 
  Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
                      Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
                      Cod_Finalidade: ShortString): ShortString; 
  Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
                      Nome_Contato, Telefone: ShortString): ShortString; 
  Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      Aliquota, Situacao: ShortString): ShortString;
  Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
                      Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
                      Brancos, Situacao: ShortString): ShortString;
  Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                      Situacao, Antecipacao,Brancos: ShortString): ShortString;
  Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
                      Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
                      Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
                      Aliquota_ICMS: ShortString): ShortString; 
  Function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
                      Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
                      Nro_Convenio: ShortString): ShortString; 
  Function Registro56(CNPJ_Adquirente, Modelo, Serie , Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico, Tipo_Operacao,
                      CNPJ_Concessionaria, Aliquota_IPI , Chassi, Brancos : ShortString): ShortString; 
  Function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                       Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                       Contador_Reinicio, Valor_Venda_Bruta,
                       Valor_Total_Geral, Brancos: ShortString): ShortString; 
  Function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
                               Brancos: ShortString): ShortString;

  Function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                                  Brancos: ShortString): ShortString; 
  Function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
                          Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                          Brancos: ShortString): ShortString;
  Function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                                  Brancos: ShortString): ShortString;
  Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                      Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
                      Isenta, Outras, Aliquota, Branco: ShortString): ShortString; 
  Function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS,
                       Brancos: ShortString): ShortString;
  Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
                      Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      CIF_FOB, Situacao: ShortString): ShortString; 
  Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                      Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                      UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                      Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, serie_nf,
                      Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString;
  Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                      Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
                      Brancos: ShortString): ShortString;
  Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                      UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                      Base_ICMS_Subst: ShortString): ShortString; 
  Function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF, Base_ICMS, Valor_ICMS, Isenta,
                      Outras, Aliquota_ICMS, Situacao_NF: ShortString): ShortString; 
  Function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Nro_Item, Cod_Servico, Quantidade, Valor_Servico, Valor_Desconto_Despesa, Base_ICMS,
                      Aliquota_ICMS, CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString;
  Function Registro90(indice: integer): ShortString;





implementation

Procedure Inicia_SIntegra;
begin
 if not State then
  begin
   State         := True;
   CGC_MF_Info   := '';
   Insc_Est_Info := '';
   UF_Info       := '';

   Data_Inicial_Info := 0;
   Data_Final_Info   := 0;

   Total_r10 := 0;
   Total_r11 := 0;
   Total_r50 := 0;
   Total_r51 := 0;
   Total_r53 := 0;
   Total_r54 := 0;
   Total_r55 := 0;
   Total_r56 := 0;
   Total_r57 := 0;
   Total_r60 := 0;
   Total_r61 := 0;
   Total_r70 := 0;
   Total_r71 := 0;
   Total_r74 := 0;
   Total_r75 := 0;
   Total_r76 := 0;
   Total_r77 := 0;
   Total_r85 := 0;
   Total_r86 := 0;
   Total_r88 := 0;
   Total_r90 := 0;
   Total_E00 := 0;
   Total_E01 := 0;
   Total_E02 := 0;
   Total_E12 := 0;
   Total_E13 := 0;
   Total_E15 := 0;
   Total_E16 := 0;
   Total_E21 := 0;
   Total_EAD := 0;
  end;
end;

Procedure Finaliza_SIntegra;
begin
 State := False;
 Texto_EAD.Free;
end;

//--- Registro10 - Registro Mestre do Estabelecimento - Indentifição do Estabelecimento informante ---
Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
                    Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
                    Cod_Finalidade: ShortString): ShortString;
const
 Tipo = '10';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CGC_MF;

  //Formatação dos Campos
  FormatoNum (CGC_MF,            14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);           //Necessário para remover traços e pontos mas manter letras para o caso de IEs de produtor rural, exemplo: (ex. PR7390097 de MG)
  FormatoAlfa(Insc_Est,          14);
  FormatoAlfa(Nome_Contribuinte, 35);
  FormatoAlfa(Municipio,         30);
  FormatoAlfa(UF,                02);
  FormatoNum (Fax,               10);
  FormatoNum (Data_Inicial,      08);
  ddmmaaaaToSintegraDate(Data_Inicial);
  FormatoNum (Data_Final,        08);
  ddmmaaaaToSintegraDate(Data_Final);
  FormatoAlfa(Cod_Convenio,      01);
  FormatoAlfa(Cod_Operacao,      01);
  FormatoAlfa(Cod_Finalidade,    01);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Inicial) then
   Result := '-1   Data Inicial Inválida (AAAAMMDD) :: ' + Data_Inicial
  else if not IsSintegraDate(Data_Final) then
   Result := '-2   Data Final Inválida (AAAAMMDD) :: ' + Data_Final
  else if SintegraDateToDateTime(Data_Inicial) > SintegraDateToDateTime(Data_Final) then
   Result := '-3   Data Final deve ser maior ou igual que Data Inicial'
//  else if StartOfTheMonth(SintegraDateToDateTime(Data_Inicial)) <> SintegraDateToDateTime(Data_Inicial) then      //Data inicial deve ser o primeiro dia do mês
//   Result := '-4   Data Inicial deve ser igual ao 1º dia do mês indicado'
//  else if StartOfTheDay(EndOfTheMonth(SintegraDateToDateTime(Data_Final))) <> SintegraDateToDateTime(Data_Final)then             //Data Final deve ser o último dia do mês
//   Result := '-5   Data Final deve ser igual ao último dia do mês indicado'
  else if (not Verifica_CNPJ(CGC_MF)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0',CGC_MF) <> '') then
   Result := '-6   CGC/MF ou CPF Inválido :: ' + CGC_MF
  else if not Verifica_UF(UF) then
   Result := '-7   Unidade da Federação Inválida :: ' + UF
  else if (not Verifica_InscEst(Insc_Est, UF)) and (not (Trim(Insc_Est) = 'ISENTO')) then
   Result := '-8   Inscrição Estadual Inválida :: ' + Insc_Est
  else if Trim(Nome_Contribuinte) = '' then
   Result := '-9   Nome do Contribuinte Inválido :: Preenchimento Obrigatório'
  else if Trim(Municipio) = '' then
   Result := '-10  Município Inválido :: Preenchimento Obrigatório'
  else if Trim(Fax) = '' then
   Result := '-11  Fax Inválido :: Preenchimento Obrigatório'
  else if not Verifica_Convenio(Cod_Convenio) then
   Result := '-12  Código de Convênio Inválido :: ' + Cod_Convenio
  else if not Verifica_Operacao(Cod_Operacao) then
   Result := '-13  Código de Natureza da Operação Inválido :: ' + Cod_Operacao
  else if not Verifica_Finalidade(Cod_Finalidade) then
   Result := '-14  Código da Finalidade do Arquivo Magnético Inválido :: ' + Cod_Finalidade
  else if Total_r10 > 0 then
   Result := '-15  Só deve haver 1(um) Registro10 no arquivo do Sintegra :: Função Registro10 chamada mais de 1(uma) vez';

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    CGC_MF_Info   := CGC_MF;
    Insc_Est_Info := Insc_Est;
    UF_Info       := UF;

    Data_Inicial_Info := SintegraDatetoDateTime(Data_Inicial);
    Data_Final_Info   := SintegraDatetoDateTime(Data_Final);
    Periodo_Str       := 'de ' + datetostr(Data_Inicial_Info) + ' até ' + datetostr(Data_Final_Info);

    Result := Tipo + CGC_MF + Insc_Est + Nome_Contribuinte + Municipio + UF +
              Fax + Data_Inicial + Data_Final + Cod_Convenio + Cod_Operacao + Cod_Finalidade;

    //Incremento do contador de registros
    Inc(Total_r10);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro10 ---
//ShowMessage(Result);
end;

//--- Registro11 - Dados complementares do informante ---
Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
                    Nome_Contato, Telefone: ShortString): ShortString; 
const
 Tipo = '11';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Logradouro,    34);
  FormatoNum (Nro,           05);
  FormatoAlfa(Complemento,   22);
  FormatoAlfa(Bairro,        15);
  FormatoNum (CEP,           08);
  FormatoAlfa(Nome_Contato,  28);
  FormatoNum (Telefone,      12);

  //Teste de Integridade dos campos
  if not Verifica_CEP(Cep) then
   Result := '-1   CEP Inválido :: ' + Cep
  else if (Trim(Complemento) = '') and (StrtoInt(Nro) = 0) then     //pelo menos 1 deve ser preenchido
   Result := '-2   Complemento ou Número Inválido  :: Pelo menos 1 dos campos deve ser preenchido'
  else if Total_r11 > 0 then
   Result := '-3   Só deve haver 1(um) Registro11 no arquivo do Sintegra :: Função Registro11 chamada mais de 1(uma) vez';

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Logradouro + Nro + Complemento + Bairro + CEP + Nome_Contato + Telefone;

    //Incremento do contador de registros
    Inc(Total_r11);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro11 ---
//ShowMessage(Result);
end;

//--- Registro50 - Registro de Total de Nota Fiscal ---
//NOTA FISCAL, MODELO 1 OU 1-A (código 01) , QUANTO AO ICMS
//NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA, MODELO 6 (código 06),
//NOTA FISCAL DE SERVIÇO DE COMUNICAÇÃO, MODELO 21
//NOTA FISCAL DE SERVIÇOS DE TELECOMUNICAÇÕES, MODELO 22 (código 22)
Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                    Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                    Aliquota, Situacao: ShortString): ShortString; 
const
 Tipo = '50';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,        14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,    14);
  FormatoNum (Data_Emissao_Recebimento, 8);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,          02);
  FormatoNum (Modelo,      02);
  FormatoAlfa(Serie,       03);
  FormatoNum (Nro,         06);
  FormatoNum (CFOP,        04);
  FormatoAlfa(Emitente,    01);
  FormatoNum (Valor_Total, 13);
  FormatoNum (Base_ICMS,   13);
  FormatoNum (Valor_ICMS,  13);
  FormatoNum (Isenta,      13);
  FormatoNum (Outras,      13);
  FormatoNum (Aliquota,    04);
  FormatoAlfa(Situacao,    01);

  if not Verifica_Situacao(Situacao) then
   Result := '-7   Situação da Nota Fiscal quanto ao Cancelamento Inválida :: ' + Situacao
  else if (Situacao = 'N') or (Situacao = 'E') then
   begin
    //Teste de Integridade dos campos
    if not IsSintegraDate(Data_Emissao_Recebimento) then
     Result := '-1   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
    else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
     Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
    else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
     Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF) then
     Result := '-4   Unidade da Federação Inválida :: ' + UF
    else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then //Se modelo 02 gerar registro tipo 60 e não 50
     Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
    else if StrtoInt(Nro) = 0 then                                                //Preenchimento Obrigatório
     Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
    else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
     Result := '-8   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str
    else if not Verifica_Emitente(Emitente) then
     Result := '-9   Emitente Inválido :: ' + Emitente
    else if not Verifica_CFOP(CFOP) then
     Result := '-10  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Data_Emissao_Recebimento + UF + Modelo + Serie +
              Nro + CFOP + Emitente + Valor_Total + Base_ICMS + Valor_ICMS + Isenta + Outras +
              Aliquota + Situacao;

    //Incremento do contador de registros
    Inc(Total_r50);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro50 ---
//ShowMessage(Result);
end;

//--- Registro51 - Registros de Total de Nota Fiscal Quanto ao IPI ---
//Nota Fiscal modelo 1, 1A (Código 01)
//Nota Fiscal de Entrada modelo 3 (Código 03)
Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
                      Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
                      Brancos, Situacao: ShortString): ShortString;const
 Tipo = '51';
var
 CPF : ShortString;

begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,        14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,    14);
  FormatoNum(Data_Emissao_Recebimento, 8);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,          02);
  FormatoAlfa(Serie,       03);
  FormatoNum (Nro,         06);
  FormatoNum (CFOP,        04);
  FormatoNum (Valor_Total, 13);
  FormatoNum (Valor_IPI,   13);
  FormatoNum (Isenta_IPI,  13);
  FormatoNum (Outras_IPI,  13);
  FormatoAlfa(Brancos,     20);
  FormatoAlfa(Situacao,    01);

  if not Verifica_Situacao(Situacao) then
   Result := '-5   Situação do Documento Fiscal quanto ao Cancelamento Inválida :: ' + Situacao
  else if (Situacao = 'N') or (Situacao = 'E') then
   begin
    //Teste de Integridade dos campos
    if not IsSintegraDate(Data_Emissao_Recebimento) then
     Result := '-1   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
    else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
     Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
    else if (not Verifica_InscEst(Insc_Est, UF)) and (not (Trim(Insc_Est) = 'ISENTO')) then
     Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF) then
     Result := '-4   Unidade da Federação Inválida :: ' + UF
    else if StrToInt(Nro) = 0 then                                                //Preenchimento Obrigatório
     Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
    else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
     Result := '-7   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str
    else if not Verifica_CFOP(CFOP) then
     Result := '-8  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Data_Emissao_Recebimento + UF + Serie +
              Nro + CFOP + Valor_Total + Valor_IPI + Isenta_IPI + Outras_IPI +
              Brancos + Situacao;

    //Incremento do contador de registros
    Inc(Total_r51);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro51 ---
//ShowMessage(Result);
end;

//--- Registro53 - Registro de Total de Documento Fical  quanto a substituição tributária ---
//Informado por Quem Realizou Substituição e Pelo Substituto Tributário/ Realizou Antecipação
Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                      Situacao, Antecipacao,Brancos: ShortString): ShortString;
const
 Tipo = '53';
var
 CPF : ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,                14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,            14);
  FormatoNum (Data_Emissao_Recebimento, 8);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,                  02);
  FormatoNum (Modelo,              02);
  FormatoAlfa(Serie,               03);
  FormatoNum (Nro,                 06);
  FormatoNum (CFOP,                04);
  FormatoAlfa(Emitente,            01);
  FormatoNum (Base_ICMS,           13);
  FormatoNum (ICMS_Retido,         13);
  FormatoNum (Despesas_Acessorias, 13);
  FormatoAlfa(Situacao,            01);
  FormatoAlfa(Antecipacao,         01);
  FormatoAlfa(Brancos,             29);

  if not Verifica_Situacao(Situacao) then
   Result := '-7   Situação do Documento Fiscal quanto ao Cancelamento Inválida :: ' + Situacao
  else if (Situacao = 'N') or (Situacao = 'E') then
   begin
    //Teste de Integridade dos campos
    if not IsSintegraDate(Data_Emissao_Recebimento) then
     Result := '-1   Data Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
    else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
     Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
    else if (not Verifica_InscEst(Insc_Est, UF)) and (not (Trim(Insc_Est) = 'ISENTO')) then
     Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF) then
     Result := '-4   Unidade da Federação Inválida :: ' + UF
    else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then  //Se modelo 02 gerar registro tipo 60 e não 50
     Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
    else if StrToInt(Nro) = 0 then                  //Preenchimento Obrigatório
     Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
    else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
     Result := '-8   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str
    else if not Verifica_Emitente(Emitente) then
     Result := '-9   Emitente Inválido :: ' + Emitente
    else if not Verifica_Antecipacao(Antecipacao) then
     Result := '-10  Antecipação do Documento Fiscal quanto ao Cancelamento :: ' + Antecipacao
    else if not Verifica_CFOP(CFOP) then
     Result := '-11  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Data_Emissao_Recebimento + UF + Modelo + Serie +
              Nro + CFOP + Emitente + Base_ICMS + ICMS_Retido + Despesas_Acessorias +
              Situacao + Antecipacao + Brancos;

    //Incremento do contador de registros
    Inc(Total_r53);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro53 ---
//ShowMessage(Result);
end;

//--- Registro54 - Registro de Produto (Classificação Fiscal)---
//Nro = 991 - Registro de Frete
//Nro = 992 - Registro de Seguro
//Nro = 993 - Registro de Pis/Cofins
//Nro = 994 - Registro de Ativo/Imbilizado
//Nro = 995 - Registro de Ressarcimento ST
//Nro = 996 - Registro de Transf. de Credito
//Nro = 997 - Registro de Complemento de NF
//Nro = 998 - Registro de Serviços
//Nro = 999 - Registro de Despesas Acessórias
Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
                    Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
                    Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
                    Aliquota_ICMS: ShortString): ShortString; 
const
 Tipo = '54';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,                14);
  FormatoNum (Modelo,              02);
  FormatoAlfa(Serie,               03);
  FormatoNum (Nro,                 06);
  FormatoNum (CFOP,                04);
  FormatoNum (Nro_Item,            03);

  if strtoint(Nro_Item) <= 990 then
   FormatoNum (CST,                03)
  else
   FormatoAlfa(CST,                03);         //Este if evita erros no validador do tipo: "Registros de itens com numeração maior que 990 o campo CST deve ser preenchido com brancos"

  FormatoAlfa(Cod_Produto_Servico, 14);
  FormatoNum (Quantidade,          11);
  FormatoNum (Valor_Produto,       12);
  FormatoNum (Valor_Desconto,      12);
  FormatoNum (Base_ICMS,           12);
  FormatoNum (Base_ICMS_S_Trib,    12);
  FormatoNum (Valor_IPI,           12);
  FormatoNum (Aliquota_ICMS,       04);

  //Teste de Integridade dos campos
  if not (Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
  else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then  //Se modelo 02 gerar registro tipo 60 e não 50
   Result := '-2   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrToInt(Nro) = 0 then                  //Preenchimento Obrigatório
   Result := '-3   Número da Nota Fiscal Inválido :: ' + Nro
  else if not Verifica_NumeroItem(Nro_Item) then
   Result := '-4   Número de Ordem do Item na Nota Fiscal Inválido :: ' + Nro_Item
  else if (strtoint(Nro_Item) > 990) and (Trim(CST) <> '') then
   Result := '-5   CST Inválido (Código da Situação Tributária) :: ' + CST
  else if (strtoint(Nro_Item) <= 990) and not Verifica_CST(CST) then
   Result := '-5   CST Inválido (Código da Situação Tributária) :: ' + CST
  else if not Verifica_CFOP(CFOP) then
   Result := '-6   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Modelo + Serie + Nro + CFOP + CST + Nro_Item +
              Cod_Produto_Servico + Quantidade + Valor_Produto + Valor_Desconto +
              Base_ICMS + Base_ICMS_S_Trib + Valor_IPI + Aliquota_ICMS;

    //Incremento do contador de registros
    Inc(Total_r54);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro54 ---
//ShowMessage(Result);
end;

//--- Registro55 - Registro de Guia Nacional de Recolhimento de Tributos Estaduais ---
Function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
                    Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
                    Nro_Convenio: ShortString): ShortString; 
const
 Tipo = '55';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ_Subst;

  //Formatação dos Campos
  FormatoNum (CNPJ_Subst,            14);
  if Insc_Est_Subst <> 'ISENTO' then
   Insc_Est_Subst := RemoveInvalid(AlfaNumArray, Insc_Est_Subst);
  FormatoAlfa(Insc_Est_Subst,        14);
  FormatoNum (Data_GNRE,             08);
  ddmmaaaaToSintegraDate(Data_GNRE);
  FormatoAlfa(UF_Substituto,         02);
  FormatoAlfa(UF_Favorecida,         02);
  FormatoNum (Banco_GNRE,            03);
  FormatoNum (Agencia_GNRE,          04);
  FormatoAlfa(Nro_GNRE,              20);
  FormatoNum (Valor_GNRE,            13);
  FormatoNum (Data_Vencimento_ICMS,  08);
  ddmmaaaaToSintegraDate(Data_Vencimento_ICMS);
  FormatoNum (Mes_Ano_Ref,           06);
  FormatoAlfa(Nro_Convenio,          30);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Vencimento_ICMS) then
   Result := '-1   Data de Vencimento Inválida (AAAAMMDD) :: ' + Data_Vencimento_ICMS
  else if not IsSintegraDate(Data_GNRE) then
   Result := '-2   Data do GNRE - Guia Nacional de Recolhimento de Tributos Estaduais Inválida (AAAAMMDD) :: ' + Data_GNRE
  else if (not Verifica_CNPJ(CNPJ_Subst)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ_Subst) <> '') then
   Result := '-3   CNPJ Substituto Tributário ou CPF Inválido :: ' + CNPJ_Subst
  else if (not Verifica_InscEst(Insc_Est_Subst, UF_Favorecida)) and (not (Insc_Est_Subst = 'INEXISTENTE')) then
   Result := '-4   Inscrição Estadual Inválida para UF Favorecida :: ' + Insc_Est_Subst
  else if not Verifica_UF(UF_Substituto) then
   Result := '-5   Unidade da Federação do Substituto Tributário Inválida :: ' + UF_Substituto
  else if not Verifica_UF(UF_Favorecida) then
   Result := '-6   Unidade da Federação do Favorecido Inválida :: ' + UF_Favorecida
  else if CNPJ_Subst <> CGC_MF_Info then
   Result := '-7   CNPJ Substituto Tributário Inválido :: CNPJ deve ser igual ao do informante do Registro10';

  //Resposta em caso de não haver erros
  if result = '0' then
   begin
    Result := Tipo + CNPJ_Subst + Insc_Est_Subst + Data_GNRE + UF_Substituto +
              UF_Favorecida + Banco_GNRE + Agencia_GNRE + Nro_GNRE + Valor_GNRE +
              Data_Vencimento_ICMS + Mes_Ano_Ref + Nro_Convenio;

    //Incremento do contador de registros
    Inc(Total_r55);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro55 ---
//ShowMessage(Result);
end;

//--- Registro57 - NÚMERO DE LOTE DE FABRICAÇÃO DE MEDICAMENTOS ---
Function Registro57(CNPJ, Insc_Est, Modelo, Serie, Numero, CFOP, CST, Num_Item,
                    Cod_Produto, Num_lote, Branco: ShortString): ShortString; 
const
 Tipo = '57';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,        14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,    14);
  FormatoNum (Modelo,      02);
  FormatoAlfa(Serie,       03);
  FormatoNum (Numero,      06);
  FormatoNum (CFOP,        04);
  FormatoAlfa(CST,         03);
  FormatoNum (Num_Item,    03);
  FormatoAlfa(Cod_Produto, 14);
  FormatoAlfa(Num_lote,    20);
  FormatoAlfa(Branco,      41);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
  else if (not Verifica_Modelo(Modelo))then
   Result := '-2   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if not Verifica_CFOP(CFOP) then
   Result := '-3   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
  else if not Verifica_CST(CST) then
   Result := '-4   Código da Situação Tributária (CST) Inválido :: ' + CST;

  //Resposta em caso de não haver erros
  if result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Modelo + Serie + Numero + CFOP + CST + Num_Item +
              Cod_Produto + Num_lote + Branco;

    //Incremento do contador de registros
    Inc(Total_r57);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro57 ---
//ShowMessage(Result);
end;

//--- Registro56 ---
//Este registro deverá ser composto pelas montadoras, concessionárias e importadoras,
//nas OPERAÇÕES COM VEÍCULOS AUTOMOTORES NOVOS ---
Function Registro56(CNPJ_Adquirente, Modelo, Serie , Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico, Tipo_Operacao,
                    CNPJ_Concessionaria, Aliquota_IPI , Chassi, Brancos : ShortString): ShortString;
const
 Tipo = '56';
var
 CPF_Adquirente, CPF_Concessionaria: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';
  CPF_Adquirente := CNPJ_Adquirente;
  CPF_Concessionaria :=  CNPJ_Concessionaria;

  //Formatação dos Campos
  FormatoNum (CNPJ_Adquirente,     14);
  FormatoNum (Modelo,              02);
  FormatoAlfa(Serie,               03);
  FormatoNum (Nro,                 06);
  FormatoNum (CFOP,                04);

  if strtoint(Nro_Item) <= 990 then
   FormatoNum (CST,                03)
  else
   FormatoAlfa(CST,                03);         //Este if evita erros no validador do tipo: "Registros de itens com numeração maior que 990 o campo CST deve ser preenchido com brancos"

  FormatoNum (Nro_Item,            03);
  FormatoAlfa(Cod_Produto_Servico, 14);
  FormatoNum (Tipo_Operacao,       01);
  FormatoNum (CNPJ_Concessionaria, 14);
  FormatoNum (Aliquota_IPI,        04);
  FormatoAlfa(Chassi ,             17);
  FormatoAlfa(Brancos,             39);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ_Adquirente)) and (not Verifica_CPF(CPF_Adquirente)) and (RemoveInvalid('0', CNPJ_Adquirente) <> '') then
   Result := '-1   CNPJ ou CPF do Adquirente Inválido :: ' + CNPJ_Adquirente
  else if (not Verifica_CNPJ(CNPJ_Concessionaria)) and (not Verifica_CPF(CPF_Concessionaria)) and (RemoveInvalid('0', CNPJ_Concessionaria) <> '') then
   Result := '-2   CNPJ ou CPF da Concessionária Inválido :: ' + CNPJ_Concessionaria
  else if (not Verifica_Modelo(Modelo)) then  //Se modelo 02 gerar registro tipo 60 e não 50
   Result := '-3   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrToInt(Nro) = 0 then                  //Preenchimento Obrigatório
   Result := '-4   Número da Nota Fiscal Inválido :: ' + Nro
  else if not Verifica_NumeroItem(Nro_Item) then
   Result := '-5   Número de Ordem do Item na Nota Fiscal Inválido :: ' + Nro_Item
  else if not  Verifica_CST(CST) then
   Result := '-6   CST Inválido (Código da Situação Tributária) :: ' + CST
  else if not Verifica_CFOP(CFOP) then
   Result := '-7  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ_Adquirente + Modelo + Serie + Nro + CFOP + CST + Nro_Item + Cod_Produto_Servico + Tipo_Operacao +
              CNPJ_Concessionaria + Aliquota_IPI + Chassi + Brancos;

    //Incremento do contador de registros
    Inc(Total_r56);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro56 ---
//ShowMessage(Result);
end;

//--- Registro60M - Registro de informação de operações/prestações realizadas com ECF ---
//Indentificador do Equipamento
Function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                       Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                       Contador_Reinicio, Valor_Venda_Bruta,
                       Valor_Total_Geral, Brancos: ShortString): ShortString;
const
 Tipo    = '60';
 SubTipo = 'M';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Data_Emissao,        08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoAlfa(Nro_Serie_Eqp,       20);
  FormatoNum (Nro_Ordem_Eqp,       03);
  FormatoAlfa(Modelo_Doc,          02);
  FormatoNum (Nro_Contador_Inicio, 06);
  FormatoNum (Nro_Contador_Fim,    06);
  FormatoNum (Nro_Contador_Z,      06);
  FormatoNum (Contador_Reinicio,   03);
  FormatoNum (Valor_Venda_Bruta,   16);
  FormatoNum (Valor_Total_Geral,   16);
  FormatoAlfa(Brancos,             37);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao) then
   Result := '-1   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if not Verifica_Modelo(Modelo_Doc) then
   Result := '-2   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo_Doc
  //Desabilitado este teste pois dá erro quando o ECF reinicia a contagem
  //else if StrToInt(Nro_Contador_Inicio) > StrToInt(Nro_Contador_Fim) then
  // Result := '-3   Contador de Ordem de Operação no Inicio do Dia deve ser Menor que o Contador de Fim de Dia'
  else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
   Result := '-8   Data de Emissão Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if result = '0' then
   begin
    Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + Nro_Ordem_Eqp +
              Modelo_Doc + Nro_Contador_Inicio + Nro_Contador_Fim + Nro_Contador_Z +
              Contador_Reinicio + Valor_Venda_Bruta + Valor_Total_Geral + Brancos;

    //Incremento do contador de registros
    Inc(Total_r60);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60M ---
//ShowMessage(Result);
end;

//--- Registro60A - Registro de informação de operações/prestações realizadas com ECF ---
//Indentificador de cada situação tributária no final do dia de cada equipamento emissor de cupom fiscal
Function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
                               Brancos: ShortString): ShortString;
const
 Tipo    = '60';
 SubTipo = 'A';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Data_Emissao,    08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoAlfa(Nro_Serie_Eqp,   20);
  FormatoAlfa(S_Trib_Aliquota, 04);
  FormatoNum (Valor_TParcial,  12);
  FormatoAlfa(Brancos,         79);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao) then
   Result := '-1   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
   Result := '-8   Data de Emissão Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + S_Trib_Aliquota +
              Valor_TParcial + Brancos;

    //Incremento do contador de registros
    Inc(Total_r60);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60Analitico ---
//ShowMessage(Result);
end;

//--- Registro60D --- (Resumo Diario)
//Registro de produto ou serviço registrado em documento fiscal emitido por Terminal Ponto de Venda (PDV) ou equipamento Emissor de Cupom Fiscal (ECF)
//Registro opcional, ficando sua adoção a critério das unidades da Federação
Function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                                  Brancos: ShortString): ShortString;
const
 Tipo    = '60';
 SubTipo = 'D';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Data_Emissao,    08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoAlfa(Nro_Serie_Eqp,   20);
  FormatoAlfa(Cod_Produto,     14);
  FormatoNum (Quantidade,      13);
  FormatoNum (Valor_Produto,   16);
  FormatoNum (Base_ICMS,       16);
  FormatoAlfa(S_Trib_Aliquota, 04);
  FormatoNum (Valor_ICMS,      13);
  FormatoAlfa(Brancos,         19);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao) then
   Result := '-1   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
   Result := '-8   Data de Emissão Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + Cod_Produto + Quantidade +
              Valor_Produto + Base_ICMS + S_Trib_Aliquota + Valor_ICMS + Brancos;

    //Incremento do contador de registros
    Inc(Total_r60);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60D ---
//ShowMessage(Result);
end;

//--- Registro60Item ---
//Item do documento fiscal documento fiscal emitido por Terminal Ponto de Venda (PDV) ou equipamento Emissor de Cupom Fiscal (ECF)
//Registro opcional, ficando sua adoção a critério das unidades da Federação;
function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
                          Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                          Brancos: ShortString): ShortString;
const
 Tipo    = '60';
 SubTipo = 'I';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Data_Emissao,    08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoAlfa(Nro_Serie_Eqp,   20);
  FormatoAlfa(Modelo_Doc,      02);
  FormatoNum (COO,             06);
  FormatoNum (Nro_Item,        03);
  FormatoAlfa(Cod_Produto,     14);
  FormatoNum (Quantidade,      13);
  FormatoNum (Valor_Produto,   13);
  FormatoNum (Base_ICMS,       12);
  FormatoAlfa(S_Trib_Aliquota, 04);
  FormatoNum (Valor_ICMS,      12);      //2 Decimais
  FormatoAlfa(Brancos,         16);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao) then
   Result := '-1   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
   Result := '-8   Data de Emissão Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + Modelo_Doc + COO + Nro_Item + Cod_Produto +
              Quantidade + Valor_Produto + Base_ICMS + S_Trib_Aliquota + Valor_ICMS +
              Brancos;

    //Incremento do contador de registros
    Inc(Total_r60);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60Item ---
//ShowMessage(Result);
end;

//--- Registro60R - (Resumo Mensal) - Registro de informação de operações/prestações realizadas com ECF ---
//Registro de Produto ou serviço processado em equipamento emissor de cupom fical
  Function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                                  Brancos: ShortString): ShortString;
const
 Tipo    = '60';
 SubTipo = 'R';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Mes_Ano_Emissao,     06);
  FormatoAlfa(Cod_Produto_Servico, 14);
  FormatoNum (Quantidade,          13);
  FormatoNum (Valor_Produto,       16);
  FormatoNum (Base_ICMS,           16);
  FormatoAlfa(S_Trib_Aliquota,     04);
  FormatoAlfa(Brancos,             54);

  //Teste de Integridade dos campos
  if not IsSintegraMesAno(Mes_Ano_Emissao) then
   Result := '-1   Mês/Ano de Emissão Inválido (MMAAAA) :: ' + Mes_Ano_Emissao;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Mes_Ano_Emissao+  Cod_Produto_Servico+  Quantidade +
              Valor_Produto +  Base_ICMS + S_Trib_Aliquota + Brancos;

    //Incremento do contador de registros
    Inc(Total_r60);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60R ---
//ShowMessage(Result);
end;

//--- Registro61 - Para Documentos quando não emitidos por ECF ---
// Bilhete de Passagem Aquaviário (modelo 14)
// Bilhete de Passagem e Nota de Bagagem (modelo 15)
// Bilhete de Passagem Ferroviário (modelo 16)
// Bilhete de Passagem Rodoviário (modelo 13)
// Nota Fiscal de Venda a Consumidor (modelo 02)
// Nota Fiscal de Serviço de Comunicação (modelo 21)
// Nota Fiscal de Produto (modelo 04)
// Nota Fiscal de Serviço de Transporte (modelo 7) exceto quando emitida por prestador de
//  serviços de transporte ferroviário de cargas
Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                    Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
                    Isenta, Outras, Aliquota, Branco: ShortString): ShortString; 
const
 Tipo = '61';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Brancos_2,        14);
  FormatoAlfa(Brancos_3,        14);
  FormatoNum (Data_Emissao,     08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoNum (Modelo,           02);
  FormatoAlfa(Serie,            03);
  FormatoAlfa(SubSerie,         02);
  FormatoNum (Nro_Ordem_Inicio, 06);
  FormatoNum (Nro_Ordem_Fim,    06);
  FormatoNum (Valor_Total,      13);
  FormatoNum (Base_ICMS,        13);
  FormatoNum (Valor_ICMS,       12);
  FormatoNum (Isenta,           13);
  FormatoNum (Outras,           13);
  FormatoNum (Aliquota,         04);
  FormatoAlfa(Branco,           01);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao) then
   Result := '-1   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if not Verifica_Modelo(Modelo) then
   Result := '-2   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrToInt(Nro_Ordem_Inicio) > StrToInt(Nro_Ordem_Fim) then
   Result := '-3   Número de Ordem de Documento Fiscal de mesmo Modelo, Série e Subsérie no Inicio do Dia deve ser Maior que o Número de Fim de Dia'
  else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
   Result := '-4   Data de Emissão Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Brancos_2 + Brancos_3 + Data_Emissao + Modelo + Serie + SubSerie +
              Nro_Ordem_Inicio + Nro_Ordem_Fim + Valor_Total + Base_ICMS + Valor_ICMS +
              Isenta + Outras + Aliquota + Branco;

    //Incremento do contador de registros
    Inc(Total_r61);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro61 ---
//ShowMessage(Result);
end;

//--- Registro61R ---
Function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS,
                       Brancos: ShortString): ShortString;
const
 Tipo = '61';
 SubTipo = 'R';
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Mes_Ano_Emissao,     06);
  FormatoAlfa(Cod_Produto_Servico, 14);
  FormatoNum (Quantidade,          13);
  FormatoNum (Valor_Bruto_Produto, 16);
  FormatoNum (Base_ICMS,           16);
  FormatoNum (Aliquota_ICMS,       04);
  FormatoAlfa(Brancos,             54);

  //Teste de Integridade dos campos
  if not IsSintegraMesAno(Mes_Ano_Emissao) then
   Result := '-1   Mês/Ano de Emissão Inválido (MMAAAA) :: ' + Mes_Ano_Emissao;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Mes_Ano_Emissao+  Cod_Produto_Servico+  Quantidade +
              Valor_Bruto_Produto +  Base_ICMS + Aliquota_ICMS + Brancos;

    //Incremento do contador de registros
    Inc(Total_r61);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro61R ---
//ShowMessage(Result);
end;

//--- Registro70 - Registro de Total quanto ao ICMS de: ----
//Nota Fiscal de Serviço de Transporte (modelo 7) quando emitida por prestador de serviços de transporte ferroviário de cargas
//Conhecimento de Transporte Rodoviário de Cargas (modelo 8)
//Conhecimento de Transporte Aquaviário de Cargas (modelo 9)
//Conhecimento de Transporte Ferroviário de Cargas (modelo 11)
//Conhecimento Aéreo (modelo 10)
Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
                    Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                    CIF_FOB, Situacao: ShortString): ShortString; 
const
 Tipo = '70';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,                    14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,                14);
  FormatoNum (Data_Emissao_Utilizacao, 08);
  ddmmaaaaToSintegraDate(Data_Emissao_Utilizacao);
  FormatoAlfa(UF,                      02);
  FormatoNum (Modelo,                  02);
  FormatoAlfa(Serie,                   01);
  FormatoAlfa(SubSerie,                02);
  FormatoNum (Nro,                     06);
  FormatoNum (CFOP,                    04);
  FormatoNum (Valor_Total,             13);
  FormatoNum (Base_ICMS,               14);
  FormatoNum (Valor_ICMS,              14);
  FormatoNum (Isenta,                  14);
  FormatoNum (Outras,                  14);
  FormatoNum (CIF_FOB,                 01);
  FormatoAlfa(Situacao,                01);

  if not Verifica_Situacao(Situacao) then
   Result := '-7   Situação do Documento Fiscal quanto ao Cancelamento Inválida :: ' + Situacao
  else if (Situacao = 'N') or (Situacao = 'E') then
   begin
    //Teste de Integridade dos campos
    if not IsSintegraDate(Data_Emissao_Utilizacao) then
     Result := '-1   Data de Emissão/Utilização Inválida (AAAAMMDD) :: ' + Data_Emissao_Utilizacao
    else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
     Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
    else if (not Verifica_InscEst(Insc_Est, UF)) and (not (Trim(Insc_Est) = 'ISENTO')) then
     Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF) then
     Result := '-4   Unidade da Federação Inválida :: ' + UF
    else if not Verifica_Modelo(Modelo) then
     Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
    else if StrToInt(Nro) = 0 then                  //Preenchimento Obrigatório
     Result := '-6   Número do Documento Inválido :: ' + Nro
    else if not Verifica_CIF_FOB(CIF_FOB) then
     Result := '-8   Modalidade do Frete (CIF/FOB) Inválida :: ' + CIF_FOB
    else if (SintegraDatetoDateTime(Data_Emissao_Utilizacao) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Utilizacao) > Data_Final_Info) then
     Result := '-9   Data de Emissão/Utilização Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Utilizacao + ' Período: ' + Periodo_Str
    else if not Verifica_CFOP(CFOP) then
     Result := '-10 Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Data_Emissao_Utilizacao + UF + Modelo + Serie +
              SubSerie + Nro + CFOP + Valor_Total + Base_ICMS + Valor_ICMS + Isenta +
              Outras + CIF_FOB + Situacao;

    //Incremento do contador de registros
    Inc(Total_r70);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro70 ---
//ShowMessage(Result);
end;

//--- Registro71 - Registro de Informações de Carga Transportada ---
//Conhecimento de Transporte Rodoviário de Cargas (modelo 8)
//Conhecimento de Transporte Aquaviário de Cargas (modelo 9)
//Conhecimento de Transporte Ferroviário de Cargas (modelo 11)
//Conhecimento Aéreo (modelo 10)
Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                      Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                      UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                      Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, serie_nf,
                      Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString;
const
 Tipo = '71';
var
 CPF, CPF_Remetente_Destinatario: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';
  CPF := CNPJ;
  CPF_Remetente_Destinatario := CNPJ_Remetente_Destinatario;

  //Formatação dos Campos
  FormatoNum (CNPJ,                            14);
  if Insc_Est_Tomador <> 'ISENTO' then
   Insc_Est_Tomador := RemoveInvalid(AlfaNumArray, Insc_Est_Tomador);
  FormatoAlfa(Insc_Est_Tomador,                14);
  FormatoNum (Data_Emissao_Conhecimento,       08);
  ddmmaaaaToSintegraDate(Data_Emissao_Conhecimento);
  FormatoAlfa(UF_Tomador,                      02);
  FormatoAlfa(Modelo_Conhecimento,             02);
  FormatoAlfa(Serie,                           01);
  FormatoAlfa(SubSerie,                        02);
  FormatoNum (Nro_Conhecimento,                06);
  FormatoAlfa(UF_Remetente_Destinatario,       02);
  FormatoNum (CNPJ_Remetente_Destinatario,     14);
  if Insc_Est_Remetente_Destinatario <> 'ISENTO' then
   Insc_Est_Remetente_Destinatario := RemoveInvalid(AlfaNumArray, Insc_Est_Remetente_Destinatario);
  FormatoAlfa(Insc_Est_Remetente_Destinatario, 14);
  FormatoNum (Data_Emissao_NF,                 08);
  ddmmaaaaToSintegraDate(Data_Emissao_NF);
  FormatoNum(Modelo_NF,                          02);
  FormatoAlfa(Serie_NF,                        03);
  FormatoNum (Nro_NF,                             06);
  FormatoNum (Valor_Total_NF,                  14);
  FormatoAlfa(Brancos,                         12);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Emissao_Conhecimento) then
   Result := '-1   Data de Emissão/Conhecimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Conhecimento
  else if not IsSintegraDate(Data_Emissao_NF) then
   Result := '-2   Data de Emissão da Nota Fiscal Inválida (AAAAMMDD) :: ' + Data_Emissao_NF
  else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
   Result := '-3   CNPJ ou CPF Inválido :: ' + CNPJ
  else if (not Verifica_CNPJ(CNPJ_Remetente_Destinatario)) and (not Verifica_CPF(CPF_Remetente_Destinatario)) and (RemoveInvalid('0', CNPJ_Remetente_Destinatario) <> '') then
   Result := '-4   CNPJ ou CPF do Remetente/Destinatário Inválido :: ' + CNPJ_Remetente_Destinatario
  else if (not Verifica_InscEst(Insc_Est_Tomador, UF_Tomador)) and (not (Trim(Insc_Est_Tomador) = 'ISENTO')) then
   Result := '-5   Inscrição Estadual do Tomador Inválida :: ' + Insc_Est_Tomador
  else if (not Verifica_InscEst(Insc_Est_Remetente_Destinatario, UF_Remetente_Destinatario)) and (not (Trim(Insc_Est_Remetente_Destinatario) = 'ISENTO')) then
   Result := '-6   Inscrição Estadual do Remetente/Destinatário Inválida :: ' + Insc_Est_Remetente_Destinatario
  else if not Verifica_UF(UF_Tomador) then
   Result := '-7   Unidade da Federação do Tomador Inválida :: ' + UF_Tomador
  else if not Verifica_UF(UF_Remetente_Destinatario) then
   Result := '-8   Unidade da Federação do Remetente/ Destinatário Inválida :: ' + UF_Remetente_Destinatario
  else if not Verifica_Modelo(Modelo_NF) then
   Result := '-9   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo_NF
  else if not Verifica_Modelo(Modelo_Conhecimento) then
   Result := '-10  Código de Modelo do Conhecimento :: ' + Modelo_Conhecimento
  else if StrToInt(Nro_NF) = 0 then
   Result := '-11  Número da Nota Fiscal Inválido :: ' + Nro_NF
  else if StrToInt(Nro_Conhecimento) = 0 then
   Result := '-12  Número do Conhecimento Inválido :: ' + Nro_Conhecimento
  else if (SintegraDatetoDateTime(Data_Emissao_Conhecimento) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao_Conhecimento) > Data_Final_Info) then
   Result := '-13  Data de Emissão/Conhecimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Conhecimento + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est_Tomador + Data_Emissao_Conhecimento + UF_Tomador +
              Modelo_Conhecimento + Serie + SubSerie + Nro_Conhecimento + UF_Remetente_Destinatario +
              CNPJ_Remetente_Destinatario + Insc_Est_Remetente_Destinatario +
              Data_Emissao_NF + Modelo_NF + Serie_NF + Nro_NF +
              Valor_Total_NF + Brancos;

    //Incremento do contador de registros
    Inc(Total_r71);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro71 ---
//ShowMessage(Result);
end;

//--- Registro74 - Registro de Inventário ---
//Saldo final de mercadorias, produtos, matérias primas e embalagens
Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                      Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
                      Brancos: ShortString): ShortString;
const
 Tipo = '74';
var
 CPF_Possuidor : ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';
  CPF_Possuidor := CNPJ_Possuidor;

  //Formatação dos Campos
  FormatoNum(Data_Inventario,     08);
  ddmmaaaaToSintegraDate(Data_Inventario);
  FormatoAlfa(Cod_Produto,        14);
  FormatoNum (Quantidade,         13);
  FormatoNum (Valor_Produto,      13);
  FormatoAlfa(Cod_Posse,          01);
  FormatoNum(CNPJ_Possuidor,      14);
  if Insc_Est_Possuidor <> 'ISENTO' then
   Insc_Est_Possuidor := RemoveInvalid(AlfaNumArray, Insc_Est_Possuidor);
  FormatoAlfa(Insc_Est_Possuidor, 14);
  FormatoAlfa(UF_Possuidor,       02);
  FormatoAlfa(Brancos,            45);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Inventario) then
   Result := '-1   Data do Inventário Inválida (AAAAMMDD) :: ' + Data_Inventario
  else if (not Verifica_CNPJ(CNPJ_Possuidor)) and (not Verifica_CPF(CPF_Possuidor)) and (RemoveInvalid('0',CNPJ_Possuidor) <> '') then
   Result := '-2   CGC/MF ou CPF do Possuidor Inválido :: ' + CNPJ_Possuidor
  else if (not Verifica_InscEst(Insc_Est_Possuidor, UF_Possuidor)) and (not (Trim(Insc_Est_Possuidor) = 'ISENTO') and (not (Trim(Insc_Est_Possuidor) = ''))) then
   Result := '-3   Inscrição Estadual do Possuidor Inválida :: ' + Insc_Est_Possuidor
  else if not Verifica_Posse(Cod_Posse) then
   Result := '-4   Código de Posse das Mercadorias Inventariadas Inválido :: ' + Cod_Posse
  else if (Cod_posse = '1') and not (RemoveInvalid('0',CNPJ_Possuidor) <> '') then                                                              //CNPJ_Possuidor deve ser igual a 0 se Cod_Posse = 1
   Result := '-5   Código de Posse das Mercadorias Inventariadas Inválido :: CNPJ do Possuidor não deve ser preenchido, se Código de Posse igual a 1'
  else if (Cod_posse = '2') and not (Verifica_CNPJ(CNPJ_Possuidor) or Verifica_CPF(CPF_Possuidor)) then                                         //CNPJ_Possuidor deve ser preenchido se Cod_Posse = 2
   Result := '-6   Código de Posse das Mercadorias Inventariadas Inválido :: CNPJ do Possuidor deve ser preenchido, se Código de Posse igual a 2'
  else if (Cod_posse = '3') and not (Verifica_CNPJ(CNPJ_Possuidor) or Verifica_CPF(CPF_Possuidor)) then                                         //CNPJ_Possuidor deve ser preenchido se Cod_Posse = 3
   Result := '-7   Código de Posse das Mercadorias Inventariadas Inválido :: CNPJ do Possuidor deve ser preenchido com o CNPJ da proprietária da mercadoria em poder do informante, se Código de Posse igual a 3'
  else if (Cod_posse = '1') and (Trim(Insc_Est_Possuidor) <> '') then                                                                           //Insc_Est_Possuidor deve ser igual a '' se Cod_Posse = 1
   Result := '-8   Código de Posse das Mercadorias Inventariadas Inválido :: Inscrição Estadual do Possuidor não deve ser preenchida, se Código de Posse igual a 1'
  else if (Cod_posse = '2') and not (Verifica_InscEst(Insc_Est_Possuidor, UF_Possuidor) or (Trim(Insc_Est_Possuidor) = 'ISENTO')) then          //Insc_Est_Possuidor deve ser diferente de '' se Cod_Posse = 2
   Result := '-9   Código de Posse das Mercadorias Inventariadas Inválido :: Inscrição Estadual do Possuidor deve ser preenchida com a Inscrição Estadual da proprietária da mercadoria em poder do informante, se Código de Posse igual a 2'
  else if (Cod_posse = '3') and not (Verifica_InscEst(Insc_Est_Possuidor, UF_Possuidor) or (Trim(Insc_Est_Possuidor) = 'ISENTO')) then          //Insc_Est_Possuidor deve ser diferente de '' se Cod_Posse = 3
   Result := '-10  Código de Posse das Mercadorias Inventariadas Inválido :: Inscrição Estadual do Possuidor deve ser preenchida, se Código de Posse igual a 3'
  else if (SintegraDatetoDateTime(Data_Inventario) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Inventario) > Data_Final_Info) then
   Result := '-11  Data de Inventário Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Inventario + ' Período: ' + Periodo_Str
  else if not Verifica_UF(UF_Possuidor) then
   Result := '-12  Unidade da Federação do Possuidor Inválida :: ' + UF_Possuidor
  else if not strtoint64(Valor_Produto) > 0 then
   Result := '-13  Valor do Produto Inválido :: O Valor informado deve ser maior que 0 (zero)' + Valor_Produto
  else if not strtoint64(Quantidade) > 0 then
   Result := '-14  Valor da Quantidade Inválida :: O Valor informado deve ser maior que 0 (zero)' + Quantidade;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Data_Inventario + Cod_Produto + Quantidade + Valor_Produto + Cod_Posse +
              CNPJ_Possuidor + Insc_Est_Possuidor + UF_Possuidor + Brancos;

    //Incremento do contador de registros
    Inc(Total_r74);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro74 ---
//ShowMessage(Result);
end;

//--- Registro75 - Registro de Código de Produto e Serviço ---
Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                    UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                    Base_ICMS_Subst: ShortString): ShortString; 
const
 Tipo = '75';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Data_Inicial,         08);
  ddmmaaaaToSintegraDate(Data_Inicial);
  FormatoNum (Data_Final,           08);
  ddmmaaaaToSintegraDate(Data_Final);
  FormatoAlfa(Cod_Produto_Servico,  14);
  FormatoAlfa(Cod_NCM,              08);       //TODO: Verificar NCM valido
  FormatoAlfa(Descricao,            53);
  FormatoAlfa(UND_Medida,           06);
  FormatoNum (Aliquota_IPI,         05);
  FormatoNum (Aliquota_ICMS,        04);
  FormatoNum (Reducao_Base_ICMS,    05);
  FormatoNum (Base_ICMS_Subst,      13);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Inicial) then
   Result := '-1   Data Inicial Inválida (AAAAMMDD) :: ' + Data_Inicial
  else if not IsSintegraDate(Data_Final) then
   Result := '-2   Data Final Inválida (AAAAMMDD) :: ' + Data_Final
  else if SintegraDateToDateTime(Data_Inicial) > SintegraDateToDateTime(Data_Final) then
   Result := '-3   Data Final deve ser maior que Data Inicial'
  else if (SintegraDatetoDateTime(Data_Inicial) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Inicial) > Data_Final_Info) then
   Result := '-4   Data Inicial Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Inicial + ' Período: ' + Periodo_Str
  else if (SintegraDatetoDateTime(Data_Final) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Final) > Data_Final_Info) then
   Result := '-5   Data Final Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Final + ' Período: ' + Periodo_Str;
  //else if (trim(Cod_NCM) <> '') and (not Verifica_NCM(Cod_NCM)) then
  // Result := '-6   Código de Nomenclatura Comum do Mercosul Invalido :: ' + Cod_NCM;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Data_Inicial + Data_Final + Cod_Produto_Servico + Cod_NCM + Descricao +
              UND_Medida + Aliquota_IPI + Aliquota_ICMS + Reducao_Base_ICMS + Base_ICMS_Subst;

    //Incremento do contador de registros
    Inc(Total_r75);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro75 ---
//ShowMessage(Result);
end;

//--- Registro76 ---
//Este registro deverá ser composto por contribuintes do ICMS, prestadores de serviço de comunicação e telecomunicação
//NOTA FISCAL DE SERVIÇOS DE COMUNICAÇÃO (MOD. 21) nas prestações de serviço
//NOTA FISCAL DE SERVIÇOS DE TELECOMUNICAÇÕES (MOD. 22) nas prestações de serviço
Function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                    Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF, Base_ICMS, Valor_ICMS, Isenta,
                    Outras, Aliquota_ICMS, Situacao_NF: ShortString): ShortString; 
const
 Tipo = '76';
var
 CPF : ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoNum (CNPJ,                     14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,                 14);
  FormatoNum(Modelo,                    02);
  FormatoAlfa(Serie,                    02);
  FormatoAlfa(SubSerie,                 02);
  FormatoNum (Nro,                      10);
  FormatoNum (CFOP,                     04);
  FormatoNum (Tipo_Receita,             01);
  FormatoNum (Data_Emissao_Recebimento, 08);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF_Remetente,             02);
  FormatoNum (Valor_Total_NF,           13);
  FormatoNum (Base_ICMS,                13);
  FormatoNum (Valor_ICMS,               12);
  FormatoNum (Isenta,                   12);
  FormatoNum (Outras,                   12);
  FormatoNum (Aliquota_ICMS,            02);
  FormatoAlfa(Situacao_NF,              01);

  if not Verifica_Situacao(Situacao_NF) then
   Result := '-7   Situação da Nota Fiscal quanto ao Cancelamento Inválida :: ' + Situacao_NF
  else if (Situacao_NF = 'N') or (Situacao_NF = 'E') then
   begin
    //Teste de Integridade dos campos
    if not IsSintegraDate(Data_Emissao_Recebimento) then
     Result := '-1   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
    else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
     Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
    else if (not Verifica_InscEst(Insc_Est, UF_Remetente)) and (not (Trim(Insc_Est) = 'ISENTO')) then
     Result := '-3   Inscrição Estadual do Tomador Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF_Remetente) then
     Result := '-4   Unidade da Federação do Tomador Inválida :: ' + UF_Remetente
    else if not Verifica_Modelo(Modelo) then
     Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
    else if StrtoInt(Nro) = 0 then                  //Preenchimento Obrigatório
     Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
    else if not Verifica_Tipo_Receita(Tipo_Receita) then
     Result := '-8   Código da Identificação do Tipo de Receita Inválida :: ' + Tipo_Receita
    else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
     Result := '-9   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str
    else if not Verifica_CFOP(CFOP) then
     Result := '-10  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ + Insc_Est + Modelo + Serie + SubSerie + Nro + CFOP + Tipo_Receita +
              Data_Emissao_Recebimento + UF_Remetente + Valor_Total_NF + Base_ICMS + Valor_ICMS + Isenta +
              Outras + Aliquota_ICMS + Situacao_NF;

    //Incremento do contador de registros
    Inc(Total_r76);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro76 ---
//ShowMessage(Result);
end;

//--- Registro77 ---
//Este registro deverá ser composto por contribuintes do ICMS, prestadores de serviço de comunicação e telecomunicação
//SERVIÇOS DE COMUNICAÇÃO E TELECOMUNICAÇÃO
Function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                    Nro_Item, Cod_Servico, Quantidade, Valor_Servico, Valor_Desconto_Despesa, Base_ICMS,
                    Aliquota_ICMS, CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString; 
const
 Tipo = '77';
var
 CPF_Tomador, CPF_Operadora_Destino : ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF_Tomador := CNPJ_Tomador;
  CPF_Operadora_Destino := CNPJ_Operadora_Destino;

  //Formatação dos Campos
  FormatoNum (CNPJ_Tomador,             14);
  FormatoNum (Modelo,                   02);
  FormatoAlfa(Serie,                    02);
  FormatoAlfa(SubSerie,                 02);
  FormatoNum (Nro ,                     10);
  FormatoNum (CFOP,                     04);
  FormatoNum (Tipo_Receita,             01);
  FormatoNum (Nro_Item,                 03);
  FormatoAlfa(Cod_Servico,              11);
  FormatoNum (Quantidade,               13);
  FormatoNum (Valor_Servico,            12);
  FormatoNum (Valor_Desconto_Despesa,   12);
  FormatoNum (Base_ICMS,                12);
  FormatoNum (Aliquota_ICMS,            02);
  FormatoNum (CNPJ_Operadora_destino,   14);
  FormatoNum (Cod_Usuario_Final,        10);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ_Tomador)) and (not Verifica_CPF(CPF_Tomador)) and (RemoveInvalid('0', CNPJ_Tomador) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ_Tomador
  else if (not Verifica_CNPJ(CNPJ_Operadora_Destino)) and (not Verifica_CPF(CPF_Operadora_Destino)) and (RemoveInvalid('0', CNPJ_Operadora_Destino) <> '') then
   Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ_Operadora_Destino
  else if not Verifica_Modelo(Modelo) then
   Result := '-3   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrtoInt(Nro) = 0 then                  //Preenchimento Obrigatório
   Result := '-4   Número da Nota Fiscal Inválido :: ' + Nro
  else if not Verifica_Tipo_Receita(Tipo_Receita) then
   Result := '-5   Código da Identificação do Tipo de Receita Inválida :: ' + Tipo_Receita
  else if not Verifica_NumeroItem(Nro_Item) then
   Result := '-6   Número de Ordem do Item na Nota Fiscal Inválido :: ' + Nro_Item
  else if not Verifica_CFOP(CFOP) then
   Result := '-7   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + CNPJ_Tomador + Modelo + Serie + SubSerie + Nro + CFOP + Tipo_Receita +
              Nro_Item + Cod_Servico + Quantidade + Valor_Servico + Valor_Desconto_Despesa + Base_ICMS +
              Aliquota_ICMS + CNPJ_Operadora_Destino + Cod_Usuario_Final;

    //Incremento do contador de registros
    Inc(Total_r77);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro77 ---
//ShowMessage(Result);
end;

//--- Registro85 Informações de Exportações ---
//Este registro se destina a informar dados relativos à exportação, obrigatório para as  Empresas Comerciais Exportadoras e  "Trading Companies"
//Deverá ser gerado um registro 85 para cada Declaração de Exportação averbada
//Caso haja mais de uma nota fiscal vinculada a uma mesma Declaração de Exportação, deverão ser gerados tantos registros quantos documentos fiscais existirem
//Deverá ser gerado um registro 85 para cada Registro de Exportação vinculado a uma mesma Declaração de Exportação
//A obrigatoriedade de informar esse registro não dispensa a obrigatoriedade de informar os registros tipo 50, 54 e 75 relativos aos documentos fiscais de exportação
Function Registro85(Declaracao_Exportacao, Data_Declaracao, Averbacao, Registro_Exportacao,
                    Data_Registro, Conhecimento_Embarque, Data_Conhecimento,
                    Tipo_Conhecimento, Pais, Comprovante_Exportacao,
                    Data_Comprovante_Exportacao, NF_Exportacao,
                    Data_Emissao, Modelo, Serie: ShortString): ShortString; 
const
 Tipo    = '85';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  FormatoNum (Declaracao_Exportacao,       11);
  FormatoNum (Data_Declaracao,             08);
  ddmmaaaaToSintegraDate(Data_Declaracao);
  FormatoAlfa(Averbacao,                   01);
  FormatoNum (Registro_Exportacao,         12);
  FormatoNum (Data_Registro,               08);
  ddmmaaaaToSintegraDate(Data_Registro);
  FormatoAlfa(Conhecimento_Embarque,       16);
  FormatoNum (Data_Conhecimento,           08);
  ddmmaaaaToSintegraDate(Data_Conhecimento);
  FormatoNum (Tipo_Conhecimento,           02);
  FormatoNum (Pais,                        04);
  FormatoNum (Comprovante_Exportacao,      08);
  FormatoNum (Data_Comprovante_Exportacao, 08);
  ddmmaaaaToSintegraDate(Data_Comprovante_Exportacao);
  FormatoNum (NF_Exportacao,               06);
  FormatoNum (Data_Emissao,                08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoNum (Modelo,                      02);
  FormatoNum (Serie,                       03);
  FormatoAlfa(Brancos,                     19);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Declaracao) then
   Result := '-1   Data da Declaração de Exportação Inválida (AAAAMMDD) :: ' + Data_Declaracao
  else if not IsSintegraDate(Data_Registro) then
   Result := '-2   Data do Registro de Exportação Inválida (AAAAMMDD) :: ' + Data_Registro
  else if not IsSintegraDate(Data_Conhecimento) then
   Result := '-3   Data do conhecimento de embarque Inválida (AAAAMMDD) :: ' + Data_Conhecimento
  else if not IsSintegraDate(Data_Comprovante_Exportacao) then
   Result := '-4   Data do comprovante de exportação Inválida (AAAAMMDD) :: ' + Data_Comprovante_Exportacao
  else if not IsSintegraDate(Data_Emissao) then
   Result := '-5   Data da emissão da Nota Fiscal de exportação/revenda Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if not Verifica_Averbacao(Averbacao) then
   Result := '-6   Averbação do Despacho de Exportação Inválida :: ' + Averbacao
  else if  not Verifica_Conhecimento(Tipo_Conhecimento) then
   Result := '-7   Tipo do Conhecimento Inválido :: ' + Tipo_Conhecimento
  else if not Verifica_Modelo(Modelo) then
   Result := '-8   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if not Verifica_Pais(Pais) then
   Result := '-9   Código do Pais segundo tabela do SISCOMEX Inválido :: ' + Pais
  else if StrtoInt(NF_Exportacao) = 0 then                                                //Preenchimento Obrigatório
   Result := '-10  Número de Nota Fiscal de Exportação emitida pela Comercial Exportadora ou "Trading Company" Inválido :: ' + NF_Exportacao;
{  else if (SintegraDatetoDateTime(Data_Declaracao) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Declaracao) > Data_Final_Info) then
   Result := '-11  Data da Declaração de Exportação Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Declaracao + ' Período: ' + Periodo_Str;
}

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Declaracao_Exportacao + Data_Declaracao + Averbacao + Registro_Exportacao +
              Data_Registro + Conhecimento_Embarque + Data_Conhecimento +
              Tipo_Conhecimento + Pais + Comprovante_Exportacao +
              Data_Comprovante_Exportacao + NF_Exportacao +
              Data_Emissao + Modelo + Serie + Brancos;

    //Incremento do contador de registros
    Inc(Total_r85);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro85 ---
//ShowMessage(Result);
end;

//--- Registro86 Informações Complementares de Exportações ---
//Este registro se destina a informar dados relativos à exportação, obrigatório para as  Empresas Comerciais Exportadoras e  "Trading Companies"
//Deverá ser gerado um registro "86" para cada Nota Fiscal de remessa com fim específico de exportação relacionada com o registro de exportação em questão
//Deverá ser gerado um registro "86" para cada registro de exportação emitido, mesmo que isso implique em repetição de informações sobre a Nota Fiscal emitida com fim específico
Function Registro86(Registro_Exportacao, Data_Registro, CNPJ_Remetente, IE_remetente,
                    UF, Numero_NF, Data_Emissao, Modelo, Serie, Codigo_Produto, Quantidade,
                    Valor_Unitario_produto, Valor_Total_Produto, Relacionamento : ShortString): ShortString; 
const
 Tipo = '86';
var
 CPF, Brancos: ShortString;
begin
NaoRegistrado;
CPF := CNPJ_Remetente;
Brancos := '';

if State then
 begin
  Result := '0';

  FormatoNum (Registro_Exportacao,    12);
  FormatoNum (Data_Registro,          08);
  ddmmaaaaToSintegraDate(Data_Registro);
  FormatoNum (CNPJ_Remetente,         14);
  if IE_remetente <> 'ISENTO' then
   IE_remetente := RemoveInvalid(AlfaNumArray, IE_remetente);
  FormatoAlfa(IE_remetente,           14);
  FormatoAlfa(UF,                     02);
  FormatoNum (Numero_NF,              06);
  FormatoNum (Data_Emissao,           08);
  ddmmaaaaToSintegraDate(Data_Emissao);
  FormatoNum (Modelo,                 02);
  FormatoNum (Serie,                  03);
  FormatoAlfa(Codigo_Produto,         14);
  FormatoNum (Quantidade,             11);
  FormatoNum (Valor_Unitario_produto, 12);
  FormatoNum (Valor_Total_Produto,    12);
  FormatoNum (Relacionamento,         01);
  FormatoAlfa(Brancos,                05);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Registro) then
   Result := '-1   Data do Registro de Exportação Inválida (AAAAMMDD) :: ' + Data_Registro
  else if not IsSintegraDate(Data_Emissao) then
   Result := '-2   Data de emissão da Nota Fiscal da remessa com fim específico Inválida (AAAAMMDD) :: ' + Data_Emissao
  else if not Verifica_Relacionamento(Relacionamento) then
   Result := '-3   Código de relacionamento entre Registro de Exportação e Nota Fiscal de remessa com fim específico Inválido :: ' + Relacionamento
  else if not Verifica_Modelo(Modelo) then
   Result := '-4   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if (not Verifica_CNPJ(CNPJ_Remetente)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ_Remetente) <> '') then
   Result := '-5   CNPJ ou CPF do remetente Inválido :: ' + CNPJ_Remetente
  else if (not Verifica_InscEst(IE_remetente, UF)) and not (Trim(IE_remetente) = 'ISENTO') then
   Result := '-6   Inscrição Estadual do remetente Inválida :: ' + IE_remetente
  else if not Verifica_UF(UF) then
   Result := '-7   Unidade da Federação Inválida :: ' + UF
  else if StrtoInt(Numero_NF) = 0 then                                                //Preenchimento Obrigatório
   Result := '-8   Número da Nota Fiscal de remessa com fim específico de exportação recebida Inválido :: ' + Numero_NF;
{  else if (SintegraDatetoDateTime(Data_Registro) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Registro) > Data_Final_Info) then
   Result := '-9   Data do Registro de Exportação Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Registro + ' Período: ' + Periodo_Str;
}
  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Registro_Exportacao + Data_Registro + CNPJ_Remetente + IE_remetente +
              UF + Numero_NF + Data_Emissao + Modelo + Serie + Codigo_Produto +
              Quantidade + Valor_Unitario_produto + Valor_Total_Produto +
              Relacionamento + Brancos;

    //Incremento do contador de registros
    Inc(Total_r86);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro86 ---
//ShowMessage(Result);
end;

//--- Registro88SF ---
//Selo Fiscal
Function Registro88SF(Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie, Sub_Serie,
                    Nro, CFOP, Valor_Total, Valor_ICMS, Valor_ICMS_Retido, SF_RJ,
                    Situacao: ShortString): ShortString;
const
 Tipo    = '88';
 SubTipo = 'SF';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,                 14);
  FormatoNum (Data_Emissao_Recebimento, 08);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,                       02);
  FormatoNum (Modelo,                   02);
  FormatoAlfa(Serie,                    02);
  FormatoAlfa(Sub_Serie,                02);
  FormatoNum (Nro,                      06);
  FormatoNum (CFOP,                     04);
  FormatoNum (Valor_Total,              13);
  FormatoNum (Valor_ICMS,               13);
  FormatoNum (Valor_ICMS_Retido,        13);
  FormatoAlfa(SF_RJ,                    11);
  FormatoAlfa(Brancos,                  33);
  FormatoAlfa(Situacao,                 01);

  if not Verifica_Situacao(Situacao) then
   Result := '-7   Situação da Nota Fiscal quanto ao Cancelamento Inválida :: ' + Situacao
  else if (Situacao = 'N') or (Situacao = 'E') then
   begin
    //Teste de Integridade dos campos
    If not IsSintegraDate(Data_Emissao_Recebimento) then
     Result := '-1   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
    else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
     Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
    else if not Verifica_UF(UF) then
     Result := '-4   Unidade da Federação Inválida :: ' + UF
    else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then  //Se modelo 02 gerar registro tipo 60 e não 50
     Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
    else if StrtoInt(Nro) = 0 then                  //Preenchimento Obrigatório
     Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
    else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
            (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
     Result := '-8   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str
    else if not Verifica_CFOP(CFOP) then
     Result := '-9   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;
   end;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Insc_Est + Data_Emissao_Recebimento + UF + Modelo + Serie + Sub_Serie +
              Nro + CFOP + Valor_Total + Valor_ICMS + Valor_ICMS_Retido + SF_RJ + Brancos +
              Situacao;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro88SF ---
//ShowMessage(Result);
end;

//--- Registro88PN -
//Programa de Desenvolvimento da Indústria Náutica
Function Registro88PN(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                    Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'PN';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Tipo_Info,                01);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,                 14);
  FormatoNum (Data_Emissao_Recebimento, 08);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,                       02);
  FormatoNum (Modelo,                   02);
  FormatoAlfa(Serie,                    02);
  FormatoNum (Nro,                      06);
  FormatoNum (Valor_Mercadoria,         13);
  FormatoNum (Valor_ICMS_Diferido,      13);
  FormatoNum (DI,                       10);
  FormatoNum (Data_DI,                  08);
  ddmmaaaaToSintegraDate(Data_DI);
  FormatoAlfa(Descricao_Mercadoria,     43);

  //Teste de Integridade dos campos
  if not Verifica_Tipo_Informacao(Tipo_Info) then
   Result := '-1   Tipo da Informação Inválido :: ' + Tipo_Info
  else if not IsSintegraDate(Data_Emissao_Recebimento) then
   Result := '-2   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
  else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') and not (Trim(Insc_Est) = 'IMPORTAÇÃO') then
   Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not Verifica_UF(UF) then
   Result := '-4   Unidade da Federação Inválida :: ' + UF
  else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then  //Se modelo 02 gerar registro tipo 60 e não 50
   Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrtoInt(Nro) = 0 then                  //Preenchimento Obrigatório
   Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
  else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
   Result := '-8   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Tipo_Info + Insc_Est + Data_Emissao_Recebimento + UF + Modelo + Serie +
              Nro + Valor_Mercadoria + Valor_ICMS_Diferido + DI + Data_DI + Descricao_Mercadoria;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro88PN ---
//ShowMessage(Result);
end;

//--- Registro88GT -  REGISTRO TIPO 88 SUBTIPO GT -
//Polo Gás Químico e Termogeração de Energia Elétrica e Gás
Function Registro88GT(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                    Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'GT';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Tipo_Info,                01);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa(Insc_Est,                 14);
  FormatoNum (Data_Emissao_Recebimento, 08);
  ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
  FormatoAlfa(UF,                       02);
  FormatoNum (Modelo,                   02);
  FormatoAlfa(Serie,                    02);
  FormatoNum (Nro,                      06);
  FormatoNum (Valor_Mercadoria,         13);
  FormatoNum (Valor_ICMS_Diferido,      13);
  FormatoNum (DI,                       10);
  FormatoNum (Data_DI,                  08);
  ddmmaaaaToSintegraDate(Data_DI);
  FormatoAlfa(Descricao_Mercadoria,     43);

  //Teste de Integridade dos campos
  if not Verifica_Tipo_Informacao(Tipo_Info) then
   Result := '-1   Tipo da Informação Inválido :: ' + Tipo_Info
  else if not IsSintegraDate(Data_Emissao_Recebimento) then
   Result := '-2   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
  else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not Verifica_UF(UF) then
   Result := '-4   Unidade da Federação Inválida :: ' + UF
  else if (not Verifica_Modelo(Modelo)) or (Modelo = '02') then  //Se modelo 02 gerar registro tipo 60 e não 50
   Result := '-5   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if StrtoInt(Nro) = 0 then                  //Preenchimento Obrigatório
   Result := '-6   Número da Nota Fiscal Inválido :: ' + Nro
  else if (SintegraDatetoDateTime(Data_Emissao_Recebimento) < Data_Inicial_Info) or
          (SintegraDatetoDateTime(Data_Emissao_Recebimento) > Data_Final_Info) then
   Result := '-8   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: A Data está fora do período indicado no Registro10 :: ' + 'Data: ' + Data_Emissao_Recebimento + ' Período: ' + Periodo_Str;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + Tipo_Info + Insc_Est + Data_Emissao_Recebimento + UF + Modelo + Serie +
              Nro + Valor_Mercadoria + Valor_ICMS_Diferido + DI + Data_DI + Descricao_Mercadoria;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro88GT ---
//ShowMessage(Result);
end;

//--- Registro88ECF Equipamentos ECF ---
//Este registro deve ser informado por contribuintes do ICMS nas operações de comercialização
//de equipamentos ECF conforme disposto em norma de procedimento fiscal (Convênio 85/01, clausulas 69 e 104)
Function Registro88ECF(CNPJ_Remetente_Destinatario, Modelo_NF, Serie_NF, Numero_NF, CFOP,
                       CST, Nro_Item, Codigo_Produto, Numero_Serie: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'ECF';
var
 CPF, Brancos: ShortString;
begin
NaoRegistrado;
CPF := CNPJ_Remetente_Destinatario;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (CNPJ_Remetente_Destinatario, 14);
  FormatoNum (Modelo_NF,                   02);
  FormatoAlfa(Serie_NF,                    03);
  FormatoNum (Numero_NF,                   06);
  FormatoNum (CFOP,                        04);
  FormatoNum (CST,                         03);
  FormatoNum (Nro_Item,                    03);
  FormatoAlfa(Codigo_Produto,              14);
  FormatoAlfa(Numero_Serie,                20);
  FormatoNum (Brancos,                     11);

  //Teste de Integridade dos campos
  if not Verifica_Modelo(Modelo_NF) then
   Result := '-1   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo_NF
  else if (not Verifica_CNPJ(CNPJ_Remetente_Destinatario)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ_Remetente_Destinatario) <> '') then
   Result := '-2   CNPJ ou CPF do remetente Inválido :: ' + CNPJ_Remetente_Destinatario
  else if not Verifica_CFOP(CFOP) then
   Result := '-3   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
  else if StrtoInt(Numero_NF) = 0 then                                                //Preenchimento Obrigatório
   Result := '-4   Número da Nota Fiscal Inválido :: ' + Numero_NF;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo + CNPJ_Remetente_Destinatario + Modelo_NF + Serie_NF + Numero_NF +
              CFOP + CST + Nro_Item + Codigo_Produto + Numero_Serie + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro88 ---
//ShowMessage(Result);
end;

//--- Registro88SME - Informação sobre mês sem movimento de entradas ---
//Registro a ser informado juntamente com os registros de nºs "10", "11" e "90", nos períodos em que não haja movimento de entradas
Function Registro88SME_MG(CNPJ_informante, Mensagem: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SME';
var
 CPF_Info, Brancos: Shortstring;
begin
 NaoRegistrado;
 Brancos := '';

 CNPJ_informante := CGC_MF_Info;
 CPF_Info        := CNPJ_informante;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ_informante, 14);
   FormatoAlfa(Mensagem,        34);
   FormatoAlfa(Brancos,         73);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ_informante)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CNPJ_informante) <> '') then
    Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ_informante + Mensagem + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88SME - Informação sobre mês sem movimento de entradas ---
//Registro a ser informado juntamente com os registros de nºs "10", "11" e "90", nos períodos em que não haja movimento de entradas
Function Registro88SME_MS(CNPJ_informante, IE_informante, Mensagem: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SME';
var
 CPF_Info, Brancos: Shortstring;
begin
 NaoRegistrado;
 Brancos := '';

 CNPJ_informante := CGC_MF_Info;
 CPF_Info        := CNPJ_informante;
 if IE_informante <> 'ISENTO' then
  IE_informante := RemoveInvalid(AlfaNumArray, IE_informante);
 IE_informante   := Insc_Est_Info;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ_informante, 14);
   if IE_informante <> 'ISENTO' then
    IE_informante := RemoveInvalid(AlfaNumArray, IE_informante);
   FormatoNum (IE_informante,   14);
   FormatoAlfa(Mensagem,        34);
   FormatoAlfa(Brancos,         59);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ_informante)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CNPJ_informante) <> '') then
    Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ_informante + IE_informante + Mensagem + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;


//--- Registro88SMS - Informação sobre mês sem movimento de Saidas ---
//Registro a ser informado juntamente com os registros de nºs "10", "11" e "90", nos períodos em que não haja movimento de Saidas
Function Registro88SMS_MG(CNPJ_informante, Mensagem: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SMS';
var
 CPF_Info, Brancos: Shortstring;
begin
 NaoRegistrado;
 Brancos := '';

 CNPJ_informante := CGC_MF_Info;
 CPF_Info        := CNPJ_informante;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ_informante,         14);
   FormatoAlfa(Mensagem,                34);
   FormatoAlfa(Brancos,                 73);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ_informante)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CNPJ_informante) <> '') then
    Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ_informante + Mensagem + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88SMS - Informação sobre mês sem movimento de Saidas ---
//Registro a ser informado juntamente com os registros de nºs "10", "11" e "90", nos períodos em que não haja movimento de Saidas
Function Registro88SMS_MS(CNPJ_informante, IE_informante, Mensagem: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SMS';
var
 CPF_Info, Brancos: Shortstring;
begin
 NaoRegistrado;
 Brancos := '';

 CNPJ_informante := CGC_MF_Info;
 CPF_Info        := CNPJ_informante;
 IE_informante   := Insc_Est_Info;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ_informante,         14);
   if IE_informante <> 'ISENTO' then
    IE_informante := RemoveInvalid(AlfaNumArray, IE_informante);
   FormatoNum (IE_informante,           14);
   FormatoAlfa(Mensagem,                34);
   FormatoAlfa(Brancos,                 59);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ_informante)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CNPJ_informante) <> '') then
    Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ_informante + IE_informante + Mensagem + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro8801 - INFORMAÇÕES PARA CONTROLE DE INCENTIVO FISCAL  ---
//Este registro deve ser composto por contribuintes do ICMS, beneficiários de incentivo fiscal concedido pelo CDI-MS - Conselho de Desenvolvimento Industrial do Estado de Mato Grosso do Sul.
Function Registro8801(periodo, descricao, CFOP, uf, und_medida, quantidade,
                      valor, base_icms, valor_icms, aliquota: ShortString): ShortString; 
const
 Tipo          = '88';
 SubTipo       = '01';
 Tipo_Operacao = 'E';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (Periodo,         06);
   FormatoAlfa(Descricao,       49);
   FormatoNum (CFOP,            04);
   FormatoAlfa(uf,              02);
   FormatoAlfa(und_medida,      06);
   FormatoNum (quantidade,      11);
   FormatoNum (valor,           13);
   FormatoNum (base_icms,       13);
   FormatoNum (valor_icms,      13);
   FormatoNum (aliquota,        04);

   //Teste de Integridade dos campos
   if not Verifica_UF(UF) then
    Result := '-1   Unidade da Federação Inválida :: ' + UF
   else if not Verifica_CFOP(CFOP) then
    Result := '-2  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + periodo + Tipo_Operacao + descricao + CFOP + uf + und_medida + quantidade +
               valor + base_icms + valor_icms + aliquota;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro8802 - INFORMAÇÕES PARA CONTROLE DE INCENTIVO FISCAL  ---
//Este registro deve ser composto por contribuintes do ICMS, beneficiários de incentivo fiscal concedido pelo CDI-MS - Conselho de Desenvolvimento Industrial do Estado de Mato Grosso do Sul.
Function Registro8802(periodo, descricao, CFOP, uf, und_medida, quantidade, incentivo_fiscal,
                      valor, base_icms, valor_icms, aliquota: ShortString): ShortString; 
const
 Tipo          = '88';
 SubTipo       = '02';
 Tipo_Operacao = 'S';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (Periodo,                 06);
   FormatoAlfa(Descricao,               49);
   FormatoNum (CFOP,                    04);
   FormatoAlfa(uf,                      02);
   FormatoAlfa(und_medida,              06);
   FormatoNum (quantidade,              11);
   FormatoAlfa(incentivo_fiscal,        01);
   FormatoNum (valor,                   13);
   FormatoNum (base_icms,               13);
   FormatoNum (valor_icms,              13);
   FormatoNum (aliquota,                04);

   //Teste de Integridade dos campos
   if not Verifica_UF(UF) then
    Result := '-1   Unidade da Federação Inválida :: ' + UF
   else if not Verifica_CFOP(CFOP) then
    Result := '-2  Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
   else if not Verifica_Incentivo(incentivo_fiscal) then
    Result := '-3  Código Situação do Incentivo Fiscal Inválido :: ' + incentivo_fiscal;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + periodo + Tipo_Operacao + descricao + CFOP + uf +
               und_medida + quantidade + incentivo_fiscal + valor + base_icms +
               valor_icms + aliquota;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88ST - DEMONSTRATIVO DAS OPERAÇÕES REALIZADAS  ---
//Este registro deve ser composto por contribuintes do ICMS empresas siderúrgicas substitutas tributárias e frigoríficos substitutos tributários, nas aquisições de gado e carvão vegetal efetuadas no MS
Function Registro88ST(num_nf, data_entrada, num_nf_produtor, ie_produtor,
                      codigo_produto, descricao, quantidade, valor, und_medida,
                      peso_entrada, base_icms_dif_peso, valor_icms_nfp,
                      valor_icms_recolher: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'ST';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (num_nf,                  06);
   FormatoNum (data_entrada,            08);
   ddmmaaaaToSintegraDate(data_entrada);
   FormatoNum (num_nf_produtor,         07);
   if ie_produtor <> 'ISENTO' then
    ie_produtor := RemoveInvalid(AlfaNumArray, ie_produtor);
   FormatoAlfa(ie_produtor,             09);
   FormatoNum (codigo_produto,          05);
   FormatoAlfa(descricao,               25);
   FormatoNum (quantidade,              08);
   FormatoNum (valor,                   09);
   FormatoAlfa(und_medida,              02);
   FormatoNum (peso_entrada,            10);
   FormatoNum (base_icms_dif_peso,      07);
   FormatoNum (valor_icms_nfp,          09);
   FormatoNum (valor_icms_recolher,     09);

   //Teste de Integridade dos campos
   if StrtoInt(num_nf) = 0 then                                                //Preenchimento Obrigatório
    Result := '-1   Número da Nota Fiscal Inválido :: ' + num_nf
   else if StrtoInt(num_nf_produtor) = 0 then                                  //Preenchimento Obrigatório
    Result := '-2   Número da Nota Fiscal Inválido :: ' + num_nf_produtor
   else if not IsSintegraDate(data_entrada) then
    Result := '-3   Data de Entrada Inválida (AAAAMMDD) :: ' + data_entrada;
   //else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
   // Result := '-4   Inscrição Estadual Inválida :: ' + Insc_Est

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + num_nf + data_entrada + num_nf_produtor + ie_produtor +
               codigo_produto + descricao + quantidade + valor + und_medida +
               peso_entrada + base_icms_dif_peso + valor_icms_nfp +
               valor_icms_recolher;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88CF - INFORMAÇÕES REFERENTES A CUPOM FISCAL EMITIDO CONCOMITANTEMENTE COM NOTA FISCAL MODELO 1 OU 1-A   ---
//Registro composto apenas pelos emitentes de documentos fiscais emitidos por Equipamento Emissor de Cupom Fiscal (ECF), concomitantemente com a nota fiscal modelo 1 ou 1-A e que não tenham sido informados no registro tipo 60-Item (60I).
Function Registro88CF(data_emissao, num_serie, modelo_doc, num_ordem_ecf, num_nf,
                      valor_total, base_icms, valor_icms, aliquota: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'CF';
var
 Brancos: ShortString;
begin
 NaoRegistrado;
 Brancos := '';


 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (data_emissao,    08);
   ddmmaaaaToSintegraDate(data_emissao);
   FormatoAlfa(num_serie,       20);
   FormatoAlfa(modelo_doc,      02);
   FormatoNum (num_ordem_ecf,   06);
   FormatoNum (num_nf,          06);
   FormatoNum (valor_total,     14);
   FormatoNum (base_icms,       13);
   FormatoNum (valor_icms,      13);
   FormatoAlfa(aliquota,        04);
   FormatoAlfa(brancos,         36);

   //Teste de Integridade dos campos
   if not IsSintegraDate(data_emissao) then
    Result := '-1   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + data_emissao
   else if not Verifica_Modelo(modelo_doc) then
    Result := '-2   Código de Modelo de Documento Fiscal Inválido :: ' + modelo_doc;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + data_emissao + num_serie + modelo_doc +
               num_ordem_ecf + num_nf + valor_total + base_icms + valor_icms + aliquota;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88IT - RELAÇÃO DE INTERVENÇÕES TÉCNICAS EM ECF ---
//Deve ser criado um registro tipo 88IT para cada incremento do Contador de Reinício de Operação (CRO);
Function Registro88IT(num_serie_ecf, num_ordem_ecf, tipo_ecf, valor_gt_final, cro,
                      data_intervencao, inicio_termino_it, perda_dados_mt,
                      motivo_intervencao, mem_fiscal_anterior, mem_fiscal_nova: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'IT';
var
 Brancos: ShortString;
begin
 NaoRegistrado;
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoAlfa(num_serie_ecf,           20);
   FormatoNum (num_ordem_ecf,           03);
   FormatoAlfa(tipo_ecf,                05);
   FormatoNum (valor_gt_final,          16);
   FormatoNum (cro,                     06);
   FormatoNum (data_intervencao,        08);
   ddmmaaaaToSintegraDate(data_intervencao);
   FormatoAlfa(inicio_termino_it,       01);
   FormatoAlfa(perda_dados_mt,          01);
   FormatoNum (motivo_intervencao,      01);
   FormatoNum (mem_fiscal_anterior,     16);
   FormatoNum (mem_fiscal_nova,         16);
   FormatoAlfa(brancos,                 29);

   //Teste de Integridade dos campos
   if not Verifica_Motivo_Intervencao(motivo_intervencao) then
    Result := '-1   Motivo de Intervenção Técnica Inválido :: ' + motivo_intervencao
   else if not (inicio_termino_it[1] in ['I', 'T']) then
    Result := '-2   Indicador de Início ou Término de Intervenção Técnica Inválido :: ' + inicio_termino_it
   else if not (perda_dados_mt[1] in ['S', 'N']) then
    Result := '-3   Indicador de Perda de Dados da Memória de Trabalho Inválido :: ' + perda_dados_mt
   else if not IsSintegraDate(data_intervencao) then
    Result := '-4   Data de Intervenção Inválida (AAAAMMDD) :: ' + data_intervencao;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + num_serie_ecf + num_ordem_ecf + tipo_ecf +
               valor_gt_final + cro + data_intervencao + inicio_termino_it +
               perda_dados_mt + motivo_intervencao + mem_fiscal_anterior + mem_fiscal_nova;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88ENCERRAMENTO - INFORMAÇÃO SOBRE ENCERRAMENTO DAS ATIVIDADES DA EMPRESA  ---
//Será gerado apenas um registro do tipo "88Encerramento" no mês de protocolo do pedido de encerramento das atividades da empresa feito na Agência Fazendária. Registro a ser informado juntamente com os registros de nºs "10", "11" e "90" e demais registros aos quais o contribuinte esteja obrigado.
Function Registro88ENCERRAMENTO(cnpj_informante, ie_informante, mensagem,
                                num_protocolo, data_baixa, data_protocolo: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'ENCERRAMENTO';
var
 CPF_Info, Brancos: Shortstring;
begin
 NaoRegistrado;
 Brancos := '';

 CNPJ_informante := CGC_MF_Info;
 CPF_Info        := CNPJ_informante;
 IE_informante   := Insc_Est_Info;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (cnpj_informante, 14);
   if ie_informante <> 'ISENTO' then
    ie_informante := RemoveInvalid(AlfaNumArray, ie_informante);
   FormatoNum (ie_informante,   14);
   FormatoAlfa(mensagem,        35);
   FormatoNum (num_protocolo,   08);
   FormatoNum (data_baixa,      08);
   ddmmaaaaToSintegraDate(data_baixa);
   FormatoNum (data_protocolo,  08);
   ddmmaaaaToSintegraDate(data_protocolo);
   FormatoAlfa(brancos,         25);

   //Teste de Integridade dos campos
   if not IsSintegraDate(data_baixa) then
    Result := '-1   Data da Baixa Inválida (AAAAMMDD) :: ' + data_baixa
   else if not IsSintegraDate(data_protocolo) then
    Result := '-2   Data do Protocolo de Baixa na Agência Fazendária Inválida (AAAAMMDD) :: ' + data_protocolo
   else if (not Verifica_CNPJ(CNPJ_informante)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CNPJ_informante) <> '') then
    Result := '-3   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + cnpj_informante + ie_informante + mensagem +
               num_protocolo + data_baixa + data_protocolo;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88EC - Informação sobre dados do contabilista do contribuinte  ---
//Será gerado apenas um registro obrigatório do tipo "88CONTADOR" por arquivo magnético mensal
Function Registro88EC(nome_contabilista, cpf_contabilista, crc_contabilista,
                      telefone_contabilista, email_contabilista,
                      alteracao_contabilista: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'EC';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoAlfa(nome_contabilista,       39);
   FormatoNum (cpf_contabilista,        11);
   FormatoAlfa(crc_contabilista,        10);
   FormatoNum (telefone_contabilista,   11);
   FormatoAlfa(email_contabilista,      50);
   FormatoNum (alteracao_contabilista,  01);

   //Teste de Integridade dos campos
   if not Verifica_CPF(cpf_contabilista) then
    Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info
   else if not (alteracao_contabilista[1] in ['0', '1']) then
    Result := '-2   Indicador de Alteração de Cadastro do Contabilista Inválido :: ' + alteracao_contabilista;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + nome_contabilista + cpf_contabilista + crc_contabilista +
               telefone_contabilista + email_contabilista + alteracao_contabilista;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88 ---
 //ShowMessage(Result);
end;

//--- Registro88SOFTWARE - Informação sobre dados da empresa/do técnico produtor do software que gera os dados do arquivo magnético do SINTEGRA  ---
//Será gerado apenas um registro obrigatório do tipo "88 SOFTWARE" por arquivo magnético mensal
Function Registro88SOFTWARE(nome_empresa, cnpj_empresa, cpf_tecnico, telefone_empresa,
                      email_empresa, alteracao_empresa: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SF';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoAlfa(nome_empresa,       35);
   FormatoNum (cnpj_empresa,       14);
   FormatoNum (cpf_tecnico,        11);
   FormatoNum (telefone_empresa,   11);
   FormatoAlfa(email_empresa,      50);
   FormatoNum (alteracao_empresa,  01);

   //Teste de Integridade dos campos
   if not Verifica_CPF(cpf_tecnico) then
    Result := '-1   CPF do técnico Inválido :: ' + CGC_MF_Info
   else if (not Verifica_CNPJ(cnpj_empresa)) and (RemoveInvalid('0', cnpj_empresa) <> '') then
    Result := '-2   CGC/MF ou CPF Inválido :: ' + cnpj_empresa
   else if not (alteracao_empresa[1] in ['0', '1']) then
    Result := '-3   Indicador de Alteração de Cadastro da Empresa Inválido :: ' + alteracao_empresa;

   //Resposta em caso de não haver erros
   if Result = '0' then
    begin
     Result := Tipo + SubTipo + nome_empresa + cnpj_empresa + cpf_tecnico + telefone_empresa +
               email_empresa + alteracao_empresa;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
       //ShowMessage(Result);

 //--- Teste de Registro88 ---

end;

//--- Registro88SP01 ---
//Informação sobre o Equipamento emissor de cupom fiscal 
Function Registro88SP01(Num_Serie, Num_Ordem, Cod_Equipamento: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SP01';
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoAlfa(Num_Serie,       20);
   FormatoNum (Num_Ordem,       03);
   FormatoNum (Cod_Equipamento, 01);

   //Teste de validção
   if not Verifica_Equipamento(Cod_Equipamento) then
     Result := '-1   Código do tipo de equipamento inválido :: ' + Cod_Equipamento;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + Num_Serie + Num_Ordem + Cod_Equipamento;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88SP01 ---
 //ShowMessage(Result);
end;

//--- Registro88SP02 ---
//Informações sobre o Produto e o Possuidor do produto.
Function Registro88SP02(Data_Estoque, Cod_Produto, Descricao, Unidade,
         Quantidade, Valor_Unitario, Valor_Total, Cod_Posse, CNPJ_Proprietario,
         IE_Proprietario, UF_Proprietario: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SP02';
var
 CPF: ShortString;
begin
 NaoRegistrado;

 if State then
  begin
   Result := '0';
   CPF := CNPJ_Proprietario;

   //Formatação dos Campos
   FormatoNum (Data_Estoque,      08);
   ddmmaaaaToSintegraDate(Data_Estoque);
   FormatoAlfa(Cod_Produto,       14);
   FormatoAlfa(Descricao,         53);
   FormatoAlfa(Unidade,           06);
   FormatoNum (Quantidade,        13);
   FormatoNum (Valor_Unitario,    13);
   FormatoNum (Valor_Total,       13);
   FormatoAlfa(Cod_Posse,         01);
   FormatoNum (CNPJ_Proprietario, 14);
   if IE_Proprietario <> 'ISENTO' then
    IE_Proprietario := RemoveInvalid(AlfaNumArray, IE_Proprietario);
   FormatoAlfa (IE_Proprietario,  14);
   FormatoAlfa (UF_Proprietario,  02);

   //Teste de Integridade dos campos
   if not IsSintegraDate(Data_Estoque) then
    Result := '-1   Data de Estoque Inválida (AAAAMMDD) :: ' + Data_Estoque
   else if (not Verifica_CNPJ(CNPJ_Proprietario)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ_Proprietario) <> '') then
    Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ_Proprietario
   else if (not Verifica_InscEst(IE_Proprietario, UF_Proprietario)) and not (Trim(IE_Proprietario) = 'ISENTO') then
    Result := '-3   Inscrição Estadual Inválida :: ' + IE_Proprietario
   else if not Verifica_UF(UF_Proprietario) then
    Result := '-4   Unidade da Federação Inválida :: ' + UF_Proprietario;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + Data_Estoque + Cod_Produto + Descricao + Unidade + Quantidade +
               Valor_Unitario + Valor_Total + Cod_Posse + CNPJ_Proprietario +
               IE_Proprietario + UF_Proprietario ;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88SP02 ---
 //ShowMessage(Result);
end;


//--- Registro88SP03 ---
//Informações sobre remetente e sobre a emissão da nota fiscal .
Function Registro88SP03(CNPJ, Insc_Est, Data_Recebimento,UF,
         Cod_Modelo, Serie, Numero, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS,
         Isenta_NTributada, Outras, Aliquota, Situacao, Beneficio_Fiscal, Aliquota_Saida,
         Data_Emissao, ME_EPP: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SP03';
var
 CPF: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,              14);
   FormatoAlfa(Insc_Est,          14);
   FormatoNum (Data_Recebimento,  08);
   ddmmaaaaToSintegraDate(Data_Recebimento);
   FormatoAlfa(UF,                02);
   FormatoNum (Cod_Modelo,        02);
   FormatoAlfa(Serie,             03);
   FormatoNum (Numero,            06);
   FormatoNum (CFOP,              04);
   FormatoAlfa(Emitente,          01);
   FormatoNum (Valor_Total,       13);
   FormatoNum (Base_ICMS,         13);
   FormatoNum (Valor_ICMS,        13);
   FormatoNum (Isenta_NTributada, 13);
   FormatoNum (Outras,            13);
   FormatoNum (Aliquota,          04);
   FormatoAlfa(Situacao,          01);
   FormatoNum (Beneficio_Fiscal,  01);
   FormatoNum (Aliquota_saida,    04);
   FormatoNum (Data_Emissao,      08);
   ddmmaaaaToSintegraDate(Data_Emissao);
   FormatoNum (ME_EPP,            01);

   //Teste de Integridade dos campos
   if not IsSintegraDate(Data_Recebimento) then
    Result := '-1   Data_Recebimento Inválida (AAAAMMDD) :: ' + Data_Recebimento
   else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
    Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
   else if not Verifica_UF(UF) then
    Result := '-4   Unidade da Federação Inválida :: ' + UF
   else if not Verifica_CFOP(CFOP) then
    Result := '-5   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
   else if not Verifica_Beneficio(Beneficio_fiscal) then
    Result := '-6   Código da situação da operação interestadual inválido :: ' + Beneficio_Fiscal
   else if not Verifica_ME_EPP(Beneficio_Fiscal) then
    Result := '-7   Código da situação Micro Empresa ou EPP inválido :: ' + Beneficio_Fiscal;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + Insc_Est + Data_Recebimento + UF + Cod_Modelo +
               Serie + Numero + CFOP + Emitente + Valor_Total + Base_ICMS + Valor_ICMS +
               Isenta_Ntributada + Outras + Aliquota + Situacao + Beneficio_fiscal +
               Aliquota_saida + Data_Emissao + ME_EPP;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88SP03 ---
 //ShowMessage(Result);
end;

//--- Registro88SP04 ---
//Informação o Documento Fiscal e sobre o Emitente do Documento fiscal.
Function Registro88SP04(CNPJ, Insc_Est, Data_Utilizacao, UF,
         Cod_Modelo, Serie, SubSerie, Numero, CFOP, Valor_Total, Base_ICMS, Valor_ICMS,
         Isenta_NTributada, Outras, CIF_FOB, Situacao, Aliquota, Aliquota_Saida,
         Data_Emissao, ME_EPP: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SP04';
var
 CPF: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,               14);
   FormatoAlfa(Insc_Est,           14);
   FormatoNum (Data_Utilizacao ,   08);
   ddmmaaaaToSintegraDate(Data_Utilizacao);
   FormatoAlfa(UF,                 02);
   FormatoNum (Cod_Modelo,         02);
   FormatoAlfa(Serie,              01);
   FormatoAlfa(SubSerie,           02);
   FormatoNum (Numero,             06);
   FormatoNum (CFOP,               04);
   FormatoNum (Valor_Total,        13);
   FormatoNum (Base_ICMS,          13);
   FormatoNum (Valor_ICMS,         13);
   FormatoNum (Isenta_NTributada,  13);
   FormatoNum (Outras,             13);
   FormatoNum (CIF_FOB,            01);
   FormatoNum (Aliquota,           04);
   FormatoAlfa(Situacao,           01);
   FormatoNum (Aliquota_saida,     04);
   FormatoNum (Data_Emissao,       08);
   ddmmaaaaToSintegraDate(Data_Emissao);
   FormatoNum (ME_EPP,             01);

   //Teste de Integridade dos campos
   if not IsSintegraDate(Data_Utilizacao) then
    Result := '-1   Data de Utilização Inválida (AAAAMMDD) :: ' + Data_Utilizacao
   else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
    Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
   else if not Verifica_UF(UF) then
    Result := '-4   Unidade da Federação Inválida :: ' + UF
   else if not Verifica_CFOP(CFOP) then
    Result := '-5   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP;

  if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + Insc_Est + Data_Utilizacao + UF + Cod_Modelo + Serie +
               SubSerie + Numero + CFOP + Valor_Total + Base_ICMS + Valor_ICMS +
               Isenta_NTributada + Outras + CIF_FOB + Aliquota + Situacao + Aliquota_saida +
               Data_Emissao + ME_EPP;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88SP04 ---
 //ShowMessage(Result);
end;

//--- Registro88SP05 ---
//Este registro complementa o registro 88SP03 e deve ser gerado somente nos casos em que houver CFOP igual a 1603 no documento fiscal
Function Registro88SP05(CNPJ, Insc_Est, Data_Recebimento, UF, Cod_Modelo, Serie, Numero,
                        CFOP, Ressarcimento, Data_Visto: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'SP05';
var
 CPF: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,             14);
   FormatoAlfa(Insc_Est,         14);
   FormatoNum (Data_Recebimento, 08);
   ddmmaaaaToSintegraDate(Data_Recebimento);
   FormatoAlfa(UF,               02);
   FormatoNum (Cod_Modelo,       02);
   FormatoAlfa(Serie,            01);
   FormatoNum (Numero,           06);
   FormatoNum (CFOP,             04);
   FormatoNum (Ressarcimento,    01);
   FormatoNum (Data_Visto,       08);
   ddmmaaaaToSintegraDate(Data_Visto);

   //Teste de Integridade dos campos
   if not IsSintegraDate(Data_Recebimento) then
    Result := '-1   Data Recebimento Inválida (AAAAMMDD) :: ' + Data_Recebimento
   else if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-2   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
    Result := '-3   Inscrição Estadual Inválida :: ' + Insc_Est
   else if not Verifica_UF(UF) then
    Result := '-4   Unidade da Federação Inválida :: ' + UF
   else if not Verifica_CFOP(CFOP) then
    Result := '-5   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
   else if not Verifica_Ressarcimento(Ressarcimento) then
    result := '-6   Opção de abatimento do valor do ressarcimento Inválida :: ' + Ressarcimento
   else if not IsSintegraDate(Data_Visto) then
    Result := '-7   Data Visto Inválida (AAAAMMDD) :: ' + Data_Visto;

  if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + Insc_Est + Data_Recebimento + UF + Cod_Modelo +
               Serie + Numero + CFOP + Ressarcimento + Data_Visto;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

 //--- Teste de Registro88SP05 ---
 //ShowMessage(Result);
end;

//--- Registro88A_PR ---
//20F.1.1. Este registro deverá ser informado por contribuintes do ICMS, nas operações por ele
//praticadas envolvendo produtos controlados, quando a entrega do registro estiver prevista em
//Norma de Procedimento, antes da saída do produto do estabelecimento;
//20F.1.1.1. Registro obrigatório somente para a finalidade da apresentação do arquivo
//magnético com o Código “6 - Transmissão de Dados de Produtos Controlados previstos em
//Norma de Procedimento, por meio do Programa Validador fornecido pelo fisco paranaense”,
//ficando vedado para as demais finalidades da apresentação do arquivo magnético;
Function Registro88A_PR(Modelo, Serie, Nro, NBM, CNPJ_Transportador, Nome_Transportador, UF_Transportador,
                     Meio_Transporte, Placa1, UF_Placa1, Placa2, UF_Placa2, Placa3, UF_Placa3,
                     Matricula, Data_Saida: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'A';
var
 CPF_Transportador, Brancos: ShortString;
begin
 NaoRegistrado;
 CPF_Transportador := CNPJ_Transportador;
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (Modelo,             02);         //Modelo da nota fiscal
   FormatoAlfa(Serie,              03);         //Série da nota Fiscal
   FormatoNum (Nro,                06);         //Número da nota fiscal
   FormatoNum (NBM,                10);         //Codificação da Nomenclatura Brasileira de Mercadoria
   FormatoAlfa(CNPJ_Transportador, 14);         //CNPJ/CPF do transportador
   FormatoAlfa(Nome_Transportador, 34);         //Nome do Transportador
   FormatoAlfa(UF_Transportador,   02);         //Unidade da Federação do transportador
   FormatoNum (Meio_Transporte,    01);         //Identificação do meio de transporte
   FormatoAlfa(Placa1,             07);         //Identificação da placa do veículo ou do cavalo
   FormatoAlfa(UF_Placa1,          02);         //UF de licenciamento do veículo
   FormatoAlfa(Placa2,             07);         //Identificação da carreta 1
   FormatoAlfa(UF_Placa2,          02);         //UF de licenciamento da carreta 1
   FormatoAlfa(Placa3,             07);         //Identificação da carreta 2
   FormatoAlfa(UF_Placa3,          02);         //UF de licenciamento da carreta 2
   FormatoAlfa(Matricula,          16);         //Número da matrícula
   FormatoNum (Data_Saida,         08);         //Data da saída da mercadoria
   ddmmaaaaToSintegraDate(Data_Saida);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ_Transportador)) and (not Verifica_CPF(CPF_Transportador)) and (RemoveInvalid('0', CNPJ_Transportador) <> '') then
    Result := '-1   CNPJ ou CPF do Transportador Inválido :: ' + CNPJ_Transportador
   else if not IsSintegraDate(Data_Saida) then
    Result := '-2   Data de Saída Inválida (AAAAMMDD) :: ' + Data_Saida
   else if not Verifica_UF(UF_Transportador) then
    Result := '-3   Unidade da Federação do Remetente Inválida :: ' + UF_Transportador
   else if (trim(UF_Placa1) <> '') and (not Verifica_UF(UF_Placa1)) then
    Result := '-4   Unidade da Federação correspondente à placa 1 Inválida :: ' + UF_Placa1
   else if (trim(UF_Placa2) <> '') and (not Verifica_UF(UF_Placa2)) then
    Result := '-5   Unidade da Federação correspondente à placa 2 Inválida :: ' + UF_Placa2
   else if (trim(UF_Placa3) <> '') and (not Verifica_UF(UF_Placa3)) then
    Result := '-6   Unidade da Federação correspondente à placa 3 Inválida :: ' + UF_Placa3
   else if not Verifica_UF(UF_Transportador) then
    Result := '-7   Unidade da Federação do Transportador inválida :: ' + UF_Transportador
   else if not Verifica_Modelo(Modelo) then
    Result := '-8   Código do modelo do documento fiscal Inválido :: ' + Modelo
   else if not Verifica_Modal_Transporte(Meio_Transporte) then
    Result := '-9   Meio de Transporte Inválido :: ' + Meio_Transporte;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + Modelo + Serie + Nro + NBM + CNPJ_Transportador + Nome_Transportador +
               UF_Transportador + Meio_Transporte + Placa1 + UF_Placa1 + Placa2 + UF_Placa2 + Placa3 +
               UF_Placa3 + Matricula + Data_Saida;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- Registro88C ---
//Informações complementares sobre operações com combustíveis
//Este registro complementa as informa ções relativas aos itens de mercadorias constantes nas NFs modelo 1 ou 1A.
//Deverá ser gerado um registro do tipo "88C" correspondente a cada registro do tipo 54 da Portaria CAT 32/96 (envolvendo operações de combustíveis / solventes) informado
Function Registro88C(CNPJ, Modelo, Serie, Nro, CFOP, Nro_Item, Codigo,
                     Quantidade, BC_ST, ICMS_ST, ICMS_ST_Complementar,
                     BC_Retencao, Imposto_Retido: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'C';
var
 CPF, Brancos: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 Brancos := '';
 
 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,                 14);
   FormatoNum (Modelo,               02);
   FormatoAlfa(Serie,                03);
   FormatoNum (Nro,                  06);
   FormatoNum (CFOP,                 04);
   FormatoNum (Nro_Item,             03);
   FormatoAlfa(Codigo,               14);
   FormatoNum (Quantidade,           11);
   FormatoNum (BC_ST,                12);
   FormatoNum (ICMS_ST,              12);
   FormatoNum (ICMS_ST_Complementar, 12);
   FormatoNum (BC_Retencao,          12);
   FormatoNum (Imposto_Retido,       12);
   FormatoAlfa(Brancos,              06);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
   else if not Verifica_CFOP(CFOP) then
    Result := '-2   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
   else if not Verifica_Modelo(modelo) then
    Result := '-3   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo;

  if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + Modelo + Serie + Nro + CFOP + Nro_Item + Codigo +
               Quantidade + BC_ST + ICMS_ST + ICMS_ST_Complementar +
               BC_Retencao + Imposto_Retido + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- Registro88D ---
//Informações sobre a data de emissão dos documentos fiscais e locais de armazenagem
//Este registro complementa informações das NF de Entrada e de Saída de Combustíveis modelos 1 ou 1A;
//Deverá ser gerado um registro do tipo "88D" correspondente a cada registro do tipo 50 da Portaria CAT 32/96 (envolvendo operações de combustíveis / solventes) informado
Function Registro88D(CNPJ, IE, UF, Modelo, Serie, Nro, Emitente, Data_Emissao,
                     Data_ES, CNPJ_Saida, UF_Saida, IE_Saida, CNPJ_Recebimento, UF_Recebimento,
                     IE_Recebimento: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'D';
var
 CPF , CPF_Saida, CPF_Recebimento, Brancos: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 CPF_Saida := CNPJ_Saida;
 CPF_Recebimento := CNPJ_Recebimento;
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,                    14);
   if IE <> 'ISENTO' then
    IE := RemoveInvalid(AlfaNumArray, IE);
   FormatoAlfa(IE,                      14);
   FormatoAlfa(UF,                      02);
   FormatoNum (Modelo,                  02);
   FormatoAlfa(Serie,                   03);
   FormatoNum (Nro,                     06);
   FormatoAlfa(Emitente,                01);
   FormatoNum (Data_Emissao,            08);
   ddmmaaaaToSintegraDate(Data_Emissao);
   FormatoNum (Data_ES,                 08);
   ddmmaaaaToSintegraDate(Data_ES);
   FormatoNum (CNPJ_Saida,              14);
   FormatoAlfa(UF_Saida,                02);
   if IE_Saida <> 'ISENTO' then
    IE_Saida := RemoveInvalid(AlfaNumArray, IE_Saida);
   FormatoAlfa(IE_Saida,                14);
   FormatoNum (CNPJ_Recebimento,        14);
   FormatoAlfa(UF_Recebimento,          02);
   if IE_Recebimento <> 'ISENTO' then
    IE_Recebimento := RemoveInvalid(AlfaNumArray, IE_Recebimento);
   FormatoAlfa(IE_Recebimento,          14);
   FormatoAlfa(Brancos,                 05);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_CNPJ(CNPJ_Saida)) and (not Verifica_CPF(CPF_Saida)) and (RemoveInvalid('0', CNPJ_Saida) <> '') then
    Result := '-2   CNPJ ou CPF do Local de Saída Inválido :: ' + CNPJ_Saida
   else if (not Verifica_CNPJ(CNPJ_Recebimento)) and (not Verifica_CPF(CPF_Recebimento)) and (RemoveInvalid('0', CNPJ_Recebimento) <> '') then
    Result := '-3   CNPJ ou CPF do Local de Recebimento/Entrega Inválido :: ' + CNPJ_Recebimento
   else if not Verifica_Emitente(Emitente) then
    Result := '-4   Emitente Inválido :: ' + Emitente
   else if not IsSintegraDate(Data_Emissao) then
    Result := '-5   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
   else if not IsSintegraDate(Data_ES) then
    Result := '-6   Data de Entrada e Saida de Produtos Inválida (AAAAMMDD) :: ' + Data_ES
   else if not Verifica_UF(UF) then
    Result := '-7   Unidade da Federação do Remetente Inválida :: ' + UF
   else if not Verifica_UF(UF_Recebimento) then
    Result := '-8   Unidade da Federação do Local de Recebimento/Entrega Inválida :: ' + UF_Recebimento
   else if not Verifica_UF(UF_Saida) then
    Result := '-9   Unidade da Federação do Local de Saida Inválida :: ' + UF_Saida
   else if (not Verifica_InscEst(IE, UF)) and not (Trim(IE) = 'ISENTO') then
    Result := '-10   Inscrição Estadual do Remetente Inválida :: ' + IE
   else if (not Verifica_InscEst(IE_Recebimento, UF_Recebimento)) and not (Trim(IE_Recebimento) = 'ISENTO') then
    Result := '-11   Inscrição Estadual do Local de Recebimento/Entrega Inválida :: ' + IE_Recebimento
   else if (not Verifica_InscEst(IE_Saida, UF_Saida)) and not (Trim(IE_Saida) = 'ISENTO') then
    Result := '-12   Inscrição Estadual do Local de Saída Inválida :: ' + IE_Saida;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + IE + UF + Modelo + Serie + Nro + Emitente + Data_Emissao +
               Data_ES + CNPJ_Saida + UF_Saida + IE_Saida + CNPJ_Recebimento + UF_Recebimento +
               IE_Recebimento + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- Registro88E ---
//Equivalencia de códigos de produtos / Mercadorias e Serviços
//Este registro estabelece a correspondência entre os códigos definidos pela Secretaria da Fazenda
//de São Paulo e a codificação utilizada pelo contribuinte informante, conforme registro 75
//Deverá ser gerado um registro do tipo "88E" correspondente a cada registro do tipo 75 da Portaria CAT 32/96 (referentes a combustíveis / solventes) informado
Function Registro88E(CNPJ, IE_Informante, Codigo_Informante, Codigo_Sefaz: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'E';
var
 CPF, Brancos : ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,                    14);
   if IE_Informante <> 'ISENTO' then
    IE_Informante := RemoveInvalid(AlfaNumArray, IE_Informante);
   FormatoAlfa (IE_Informante,          14);
   FormatoAlfa(Codigo_Informante,       14);
   FormatoAlfa(Codigo_Sefaz,            14);
   FormatoAlfa(Brancos,                 67);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_InscEst(IE_Informante, '')) and not (Trim(IE_Informante) = 'ISENTO') then       //TODO: UF não Existentes
    Result := '-2   Inscrição Estadual do remetente Inválida :: ' + IE_Informante
   else if not Verifica_Codigo_Sefaz(Codigo_Sefaz) then
    Result := '-3   Código do Produto ou Serviço da tabela SEFAZ inválido :: ' + Codigo_Sefaz;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + IE_Informante + Codigo_Informante + Codigo_Sefaz + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- Registro88M ---
//Informação sobre Período sem movimento
//Este registro é gerado somente quando não tenham sido realizadas operações no período, inclusive
//no caso de o contribuinte encontrar-se com suas atividades paralisadas temporariamente.
//Deverá ser gerado somente um registro 88M acompanhando os registros 10,11 e 90 da Portaria CAT 32/96
Function Registro88M(CNPJ: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'M';
var
 CPF, Brancos, Mensagem : ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 Mensagem := 'Sem Movimento de Entradas / Saídas';
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,                   14);
   FormatoAlfa(Mensagem,               34);
   FormatoAlfa(Brancos,                75);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ;

   //Teste de Integridade dos Campos
   if Result = '0' then
    begin
     Result := Tipo + Subtipo + CNPJ + Mensagem + Brancos;

      //Incremento do contador de registros
      Inc(Total_r88);
     end;
   end
  else
   Result := '-0   Função Inicia_Sintegra não chamada';

end;

//--- Registro88T ---
//Informãções sobre a prestação de serviços de transporte
//Este registro complementa as informa ções referentes às Notas Fiscais modelos 1 ou 1A relativamente ao transporte das mercadorias
//Deverá ser gerado um registro 88T correspondente a cada registro tipo 50 da Portaria CAT 32/96 (envolvendo operações de combustíveis / solventes)
Function Registro88T(CNPJ, Data_Emissao_Recebimento, UF, Modelo, Serie, Nro, Emitente,
                     CIF_FOB, CNPJ_Transportador, UF_Transportador,
                     IE_Transportador, Modal, Placa1, UF1, Placa2, UF2,
                     Placa3, UF3: ShortString): ShortString; 
const
 Tipo    = '88';
 SubTipo = 'T';
var
 CPF , CPF_Transportador, Brancos: ShortString;
begin
 NaoRegistrado;
 CPF := CNPJ;
 CPF_Transportador := CNPJ_Transportador;
 Brancos := '';

 if State then
  begin
   Result := '0';

   //Formatação dos Campos
   FormatoNum (CNPJ,                     14);
   FormatoNum (Data_Emissao_Recebimento, 08);
   ddmmaaaaToSintegraDate(Data_Emissao_Recebimento);
   FormatoAlfa(UF,                       02);
   FormatoNum (Modelo,                   02);
   FormatoAlfa(Serie,                    03);
   FormatoNum (Nro,                      06);
   FormatoAlfa(Emitente,                 01);
   FormatoNum (CIF_FOB,                  01);
   FormatoNum (CNPJ_Transportador,       14);
   FormatoAlfa(UF_Transportador,         02);
   if IE_Transportador <> 'ISENTO' then
    IE_Transportador := RemoveInvalid(AlfaNumArray, IE_Transportador);
   FormatoAlfa(IE_Transportador,         14);
   FormatoNum (Modal,                    01);
   FormatoAlfa(Placa1,                   07);
   FormatoAlfa(UF1,                      02);
   FormatoAlfa(Placa2,                   07);
   FormatoAlfa(UF2,                      02);
   FormatoAlfa(Placa3,                   07);
   FormatoAlfa(UF3,                      02);
   FormatoAlfa(Brancos,                  28);

   //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0', CNPJ) <> '') then
    Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
   else if (not Verifica_CNPJ(CNPJ_Transportador)) and (not Verifica_CPF(CPF_Transportador)) and (RemoveInvalid('0', CNPJ_Transportador) <> '') then
    Result := '-2   CNPJ ou CPF do Local de Saída Inválido :: ' + CNPJ_Transportador
   else if not Verifica_CIF_FOB(CIF_FOB) then
    Result := '-3   Modalidade do Frete (CIF/FOB) Inválida :: ' + CIF_FOB
   else if not IsSintegraDate(Data_Emissao_Recebimento) then
    Result := '-5   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao_Recebimento
   else if not Verifica_UF(UF) then
    Result := '-7   Unidade da Federação do Remetente Inválida :: ' + UF
   else if (trim(UF1) <> '') and (not Verifica_UF(UF1)) then
    Result := '-8   Unidade da Federação correspondente à placa 1 Inválida :: ' + UF1
   else if (trim(UF2) <> '') and (not Verifica_UF(UF2)) then
    Result := '-9   Unidade da Federação correspondente à placa 2 Inválida :: ' + UF2
   else if (trim(UF3) <> '') and (not Verifica_UF(UF3)) then
    Result := '-10  Unidade da Federação correspondente à placa 3 Inválida :: ' + UF3
   else if not Verifica_UF(UF_Transportador) then
    Result := '-11  Unidade da Federação do Transportador inválida :: ' + UF_Transportador
   else if (not Verifica_InscEst(IE_Transportador, UF_Transportador)) and not (Trim(IE_Transportador) = 'ISENTO') then
    Result := '-12  Inscrição Estadual do remetente Inválida :: ' + IE_Transportador
   else if not Verifica_Modelo(Modelo) then
    Result := '-13  Código do modelo do documento fiscal Inválido :: ' + Modelo
   else if not Verifica_CIF_FOB(CIF_FOB) then
    Result := '-14  Modalidade do Frete Inválida :: ' + CIF_FOB
   else if not Verifica_Modal_Transporte(Modal) then
    Result := '-15  Modal de Transporte Inválida :: ' + Modal
   else if not Verifica_Emitente(Emitente) then
    Result := '-16  Emitente Inválido :: ' + Emitente;

   if Result = '0' then
    begin
     Result := Tipo + SubTipo + CNPJ + Data_Emissao_Recebimento + UF + Modelo + Serie + Nro + Emitente +
               CIF_FOB + CNPJ_Transportador + UF_Transportador + IE_Transportador +
               Modal + Placa1 + UF1 + Placa2 + UF2 + Placa3 + UF3 + Brancos;

     //Incremento do contador de registros
     Inc(Total_r88);
    end;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- Registro8801_PB - Registro de Apuração do ICMS e outras informações específicas da Guia de Informação Mensal-GIM. ---
Function Registro8801_PB(Insc_Est, Periodo, Tipo_Gim, Cred_entradas, Cred_Ativo_Imob,
                         Cred_Transf, ICMS_Antecip_JR, ICMS_Antecip_AR, Outros_cred,
                         Estorno_debito, Saldo_credor: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '01';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoNum (Insc_Est,        09);
  FormatoNum (Periodo,         06);
  FormatoAlfa(Tipo_Gim,        01);
  FormatoNum (Cred_entradas,   13);
  FormatoNum (Cred_Ativo_Imob, 13);
  FormatoNum (Cred_Transf,     13);
  FormatoNum (ICMS_Antecip_JR, 13);
  FormatoNum (ICMS_Antecip_AR, 13);
  FormatoNum (Outros_cred,     13);
  FormatoNum (Estorno_debito,  13);
  FormatoNum (Saldo_credor,    13);
  FormatoAlfa(Brancos,         02);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not (Tipo_Gim[1] in ['S', 'N']) then
   Result := '-2   Tipo de GIM (Guia de Informação Mensal) inválido :: ' + Tipo_Gim;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + Cred_entradas + Cred_Ativo_Imob +
              Cred_Transf + ICMS_Antecip_JR + ICMS_Antecip_AR + Outros_cred +
              Estorno_debito + Saldo_credor + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
  end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8801_PB ---
//ShowMessage(Result);
end;

//--- Registro8802_PB -- Débitos do ICMS (Anverso da GIM - Débitos) ---
//Deverá ser gerado por contribuinte inscritos no Regime de Apuração Normal
Function Registro8802_PB(Insc_Est, Periodo, Tipo_Gim, Debito_Saida,
                         Transf_Cred_Acumulados, Outros_Debitos,
                         Estorno_Credito, Subst_Entradas_JR, Subst_Entradas_AR,
                         ICMS_Subst_Saidas, ICMS_Retido_Fonte: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '02';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoNum (Insc_Est,               09);
  FormatoNum (Periodo,                06);
  FormatoAlfa(Tipo_Gim,               01);
  FormatoNum (Debito_Saida,           13);
  FormatoNum (Transf_Cred_Acumulados, 13);
  FormatoNum (Outros_Debitos,         13);
  FormatoNum (Estorno_Credito,        13);
  FormatoNum (Subst_Entradas_JR,      13);
  FormatoNum (Subst_Entradas_AR,      13);
  FormatoNum (ICMS_Subst_Saidas,      13);
  FormatoNum (ICMS_Retido_Fonte,      13);
  FormatoAlfa(Brancos,                02);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not (Tipo_Gim[1] in ['S', 'N']) then
   Result := '-2   Tipo de GIM (Guia de Informação Mensal) inválido :: ' + Tipo_Gim;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + Debito_Saida +
              Transf_Cred_Acumulados + Outros_Debitos + Estorno_Credito +
              Subst_Entradas_JR + Subst_Entradas_AR + ICMS_Subst_Saidas +
              ICMS_Retido_Fonte + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
   end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8802_PB ---
//ShowMessage(Result);
end;

//--- Registro8804_PB - Registro de Apuração do ICMS e outras informações específicas da Guia de Informação Mensal-GIM. ---
Function Registro8804_PB(Insc_Est, Periodo, Tipo_Gim, Dife_Aliquota_recolher,
                         Imposto_Retido_outras_Ufs, Email, Data_Inicial,
                         Versao_programa, Regime_pagamento: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '04';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoNum (Insc_Est,                  09);
  FormatoNum (Periodo,                   06);
  FormatoAlfa(Tipo_Gim,                  01);
  FormatoNum (Dife_Aliquota_recolher,    13);
  FormatoNum (Imposto_Retido_outras_Ufs, 13);
  FormatoAlfa(Email,                     40);
  FormatoNum (Data_Inicial,              08);
  ddmmaaaaToSintegraDate(Data_Inicial);
  FormatoAlfa(Versao_programa,           04);
  FormatoNum (Regime_pagamento,          01);
  FormatoAlfa(Brancos,                   27);

  //Teste de Integridade dos campos
  if not IsSintegraDate(Data_Inicial) then
   Result := '-1   Data de início de atividades da empresa Inválida (AAAAMMDD) :: ' + Data_Inicial
  else if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-2   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not (Tipo_Gim[1] in ['S', 'N']) then
   Result := '-3   Tipo de GIM (Guia de Informação Mensal) inválido :: ' + Tipo_Gim
  else if not (Regime_pagamento[1] in ['1', '7']) then
   Result := '-4   Regime de Pagamento do contribuinte inválido :: ' + Regime_pagamento
  else if (not Verifica_EMail(Email)) then
     Result := '-5   Email Inválido :: ' + Email;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + Dife_Aliquota_recolher +
              Imposto_Retido_outras_Ufs + Email + Data_Inicial + Versao_programa +
              Regime_pagamento + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8804_PB ---
//ShowMessage(Result);
end;

//--- Registro8805_PB - Informações do Contabilista ---
//Deverá ser gerado por contribuinte inscritos no Regime de Apuração Normal ou ParaibaSIM.
Function Registro8805_PB(CPF_CGC_Contador, CRC_Contador, Nome_Contador, Fone, Email: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '05';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(CPF_CGC_Contador,  14);
  FormatoAlfa(CRC_Contador,      10);
  FormatoAlfa(Nome_Contador,     40);
  FormatoAlfa(Fone,              12);
  FormatoAlfa(Email,             40);
  FormatoAlfa(Brancos,           06);

  //Teste de Integridade dos campos
   if (not Verifica_CNPJ(CPF_CGC_Contador)) and (not Verifica_CPF(CPF_CGC_Contador)) and (RemoveInvalid('0', CPF_CGC_Contador) <> '') then
     Result := '-1   CNPJ ou CPF Inválido :: ' + CPF_CGC_Contador;
   if (not Verifica_EMail(Email)) then
     Result := '-2   Email Inválido :: ' + Email;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + SubTipo +  CPF_CGC_Contador + CRC_Contador + Nome_Contador + Fone + Email + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8805_PB ---
//ShowMessage(Result);
end;

//--- Registro8806_PB - Registro de Apuração do ICMS e outras informações específicas da Guia de Informação Mensal-GIM. ---
Function Registro8806_PB(Insc_Est, Periodo, Tipo_Gim, Est_Trib, Est_nao_trib,
                         Est_Subst_Trib, Saldo_Caixa, Saldo_Bancos,
                         Despesa_Pessoal, Outros_Impostos,
                         Despesas_Gerais: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '06';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoNum (Insc_Est,        09);
  FormatoNum (Periodo,         04);   //todo: mudança de tamanho do campo: eram 08! verificar formato 'aaaa'
  FormatoAlfa(Tipo_Gim,        01);
  FormatoNum (Est_Trib,        13);
  FormatoNum (Est_nao_trib,    13);
  FormatoNum (Est_Subst_Trib,  13);
  FormatoNum (Saldo_Caixa,     13);
  FormatoNum (Saldo_Bancos,    13);
  FormatoNum (Despesa_Pessoal, 13);
  FormatoNum (Outros_Impostos, 13);
  FormatoNum (Despesas_Gerais, 13);
  FormatoAlfa(Brancos,         04);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not (Tipo_Gim[1] in ['S', 'N']) then
   Result := '-2   Tipo de GIM (Guia de Informação Mensal) inválido :: ' + Tipo_Gim;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + Est_Trib +
              Est_nao_trib + Est_Subst_Trib + Saldo_Caixa + Saldo_Bancos +
              Despesa_Pessoal + Outros_Impostos + Despesas_Gerais + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
  end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8806_PB ---
//ShowMessage(Result);
end;

//--- Registro8814_PB - Informações Crédito Presumido - EPP ---
//Deverá ser gerado por contribuinte inscritos no Regime de Apuração do ParaibaSIM.
//Para as declarações até o mês de referência  06/2006
Function Registro8814_PB(Base_Recolhimento_Apurada, Media_Mensal_Entrada, Base_Recolhimento_Efetiva,
                         Perc_Recolhimento, Imposto_devido, Num_Empregados, Cred_Empregados,
                         Tot_Aquisicoes, Aquisicoes_Internas, Cred_Aquisicoes_Internas,
                         Perc_Cred_Presumido, Val_Cred_Presumido,
                         Imposto_recolher, Subst_Entradas_JR, Subst_Entradas_AR,
                         ICMS_Subst_Saidas, ICMS_Retido_Fonte: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '14';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Base_Recolhimento_Apurada, 09);
  FormatoNum (Media_Mensal_Entrada,      09);
  FormatoNum (Base_Recolhimento_Efetiva, 09);
  FormatoNum (Perc_Recolhimento,         02);
  FormatoNum (Imposto_devido,            09);
  FormatoNum (Num_Empregados,            03);
  FormatoNum (Cred_Empregados,           02);
  FormatoNum (Tot_Aquisicoes,            09);
  FormatoNum (Aquisicoes_Internas,       09);
  FormatoNum (Cred_Aquisicoes_Internas,  02);
  FormatoNum (Perc_Cred_Presumido,       02);
  FormatoNum (Val_Cred_Presumido,        09);
  FormatoNum (Imposto_recolher,          09);
  FormatoNum (Subst_Entradas_JR,         09);
  FormatoNum (Subst_Entradas_AR,         09);
  FormatoNum (ICMS_Subst_Saidas,         09);
  FormatoNum (ICMS_Retido_Fonte,         09);
  FormatoAlfa(Brancos,                   03);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Base_Recolhimento_Apurada + Media_Mensal_Entrada +
              Base_Recolhimento_Efetiva + Perc_Recolhimento + Imposto_devido + Num_Empregados +
              Cred_Empregados + Tot_Aquisicoes + Aquisicoes_Internas + Cred_Aquisicoes_Internas +
              Perc_Cred_Presumido + Val_Cred_Presumido + Imposto_recolher +
              Subst_Entradas_JR + Subst_Entradas_AR + ICMS_Subst_Saidas +
              ICMS_Retido_Fonte + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8814_PB ---
//ShowMessage(Result);
end;

//--- Registro8815_PB -- Credito Presumido/Crédito de Programas de Governo ---
Function Registro8815_PB(Outros_Regimes_Especiais, TARE, Previsao_RICMS,
                         FAIN, Cheque_Habitacao, Cheque_Educacao, Valor_Gol_de_Placa, Valor_FIC: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '15';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Outros_Regimes_Especiais, 13);
  FormatoNum (TARE,                     13);
  FormatoNum (Previsao_RICMS,           13);
  FormatoNum (FAIN,                     13);
  FormatoNum (Cheque_Habitacao,         13);
  FormatoNum (Cheque_Educacao,          13);
  FormatoNum (Valor_Gol_de_Placa,       13);                 //todo: adiçao dos parâmetros: Valor_Gol_de_Placa e Valor_FIC
  FormatoNum (Valor_FIC,                13);
  FormatoAlfa(Brancos,                  18);                 //todo: mudança de tamanho do campo brancos - eram 44

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Outros_Regimes_Especiais + TARE + Previsao_RICMS + FAIN +
              Cheque_Habitacao + Cheque_Educacao + Valor_Gol_de_Placa + Valor_FIC + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8815_PB ---
//ShowMessage(Result);
end;

//--- Registro8816_PB -- Deduções do Fundo de Combate e Erradicação da pobreza no Estado da Paraíba - FUNCEP/PB ---
Function Registro8816_PB(ICMS_Normal, Subst_Saidas_Estado, Subst_Entradas,
                         Regime_Fonte, Diferencial_Aliquota: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '16';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (ICMS_Normal,          13);
  FormatoNum (Subst_Saidas_Estado,  13);
  FormatoNum (Subst_Entradas,       13);
  FormatoNum (Regime_Fonte,         13);
  FormatoNum (Diferencial_Aliquota, 13);
  FormatoAlfa(Brancos,              57);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + ICMS_Normal + Subst_Saidas_Estado +
              Subst_Entradas + Regime_Fonte + Diferencial_Aliquota + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8816_PB ---
//ShowMessage(Result);
end;

//--- Registro8850_PB -- Coluna Observação na Nota Fiscal --
//Deverá ser gerado por contribuinte inscritos no Regime de Apuração Normal ou ParaibaSIM.
Function Registro8850_PB(CNPJ, Insc_Est, Data_emissao_recebimento, UF, Modelo,
                         Serie, Num, CFOP, Obs, Num_Selo_Fiscal: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '50';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum   (CNPJ,                     14);
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoAlfa  (Insc_Est,                 14);
  FormatoNum   (Data_emissao_recebimento, 08);
  ddmmaaaaToSintegraDate(Data_emissao_recebimento);
  FormatoAlfa  (UF,                       02);
  FormatoNum   (Modelo,                   02);
  FormatoAlfa  (Serie,                    03);
  FormatoNum   (Num,                      06);
  FormatoNum   (CFOP,                     04);
  FormatoAlfa  (Obs,                      30);
  FormatoNum   (Num_Selo_Fiscal,          15);    //todo: no documento não consta o formato!
  FormatoAlfa  (Brancos,                  23);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CNPJ)) and (RemoveInvalid('0', CNPJ) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
  else if not Verifica_CFOP(CFOP) then
   Result := '-2   Código Fiscal de Operações e Prestações (CFOP) Inválido :: ' + CFOP
  else if StrtoInt(Num) = 0 then                      //Preenchimento Obrigatório
   Result := '-3   Número da Nota Fiscal Inválido :: ' + Num
  else If not IsSintegraDate(Data_emissao_recebimento) then
   Result := '-4   Data de Emissão/Recebimento Inválida (AAAAMMDD) :: ' + Data_emissao_recebimento
  else if not Verifica_UF(UF) then
   Result := '-5   Unidade da Federação Inválida :: ' + UF
  else if not Verifica_Modelo(Modelo) then
   Result := '-6   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo
  else if (not Verifica_InscEst(Insc_Est, UF)) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-7   Inscrição Estadual Inválida :: ' + Insc_Est;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + CNPJ + Insc_Est + Data_emissao_recebimento +
              UF + Modelo + Serie + Num + CFOP + Obs + Num_Selo_Fiscal + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8850_PB ---
//ShowMessage(Result);
end;

//--- Registro8817_PB --- Apuração do Imposto ---
//Deverá ser gerado por contribuinte inscrito no Regime de  EPP ou ParaibaSIM,enquadrado pela vigência da Medida Provisória nº 37/06.
//A partir do mês de referência 07/2006
Function Registro8817_PB(Base_Recolhimento_Apurada, Media_Mensal_Entradas,
                         Base_Recolhimento_Efetiva, Perc_Recolhimento, Imposto_devido,
                         Cred_TEFECF, Cred_Cheque_Moradia, Cred_Cheque_Educacao,
                         Valor_Cred_Outorgado, Imposto_recolher, Subst_Entradas_JR,
                         Subst_Entradas_AR, ICMS_Subst_Saidas,
                         ICMS_Retido_Fonte: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '17';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Base_Recolhimento_Apurada, 09);
  FormatoNum (Media_Mensal_Entradas,     09);
  FormatoNum (Base_Recolhimento_Efetiva, 09);
  FormatoNum (Perc_Recolhimento,         02);
  FormatoNum (Imposto_devido,            09);
  FormatoNum (Cred_TEFECF,               09);
  FormatoNum (Cred_Cheque_Moradia,       09);
  FormatoNum (Cred_Cheque_Educacao,      09);
  FormatoNum (Valor_Cred_Outorgado,      09);
  FormatoNum (Imposto_recolher,          09);
  FormatoNum (Subst_Entradas_JR,         09);
  FormatoNum (Subst_Entradas_AR,         09);
  FormatoNum (ICMS_Subst_Saidas,         09);
  FormatoNum (ICMS_Retido_Fonte,         09);
  FormatoAlfa(Brancos,                   03);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Base_Recolhimento_Apurada + Media_Mensal_Entradas +
              Base_Recolhimento_Efetiva + Perc_Recolhimento + Imposto_devido + Cred_TEFECF +
              Cred_Cheque_Moradia + Cred_Cheque_Educacao + Valor_Cred_Outorgado +
              Imposto_recolher + Subst_Entradas_JR + Subst_Entradas_AR + ICMS_Subst_Saidas +
              ICMS_Retido_Fonte + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8817_PB ---
//ShowMessage(Result);
end;
    //todo: daqui pra baixo - registros novos! verificar testes de campos!
//--- Registro8818_PB --- Informações Simples Nacional ---
//Deverá ser gerado por contribuinte inscrito no Regime Simples Nacional.
//A partir do mês de referência 07/2007
Function Registro8818_PB(Insc_Est, Periodo, Tipo_Gim, Diferenca_Aliquota, Diferenca_Aliquota_Compl,
                         Imp_Antecipado, Subst_Saidas, Subst_Entrada, ICMS_Retido_Fonte, Importacao,
                         Regime_Pagamento, Faturamento, Total_Entradas, Carga_Trib_ICMS_SN, FUNCEP_SN,
                         ICMS_Recolher_SN, Cat_Estabelecimento: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '18';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  if Insc_Est <> 'ISENTO' then
   Insc_Est := RemoveInvalid(AlfaNumArray, Insc_Est);
  FormatoNum (Insc_Est,                  09);
  FormatoNum (Periodo,                   06);
  FormatoAlfa(Tipo_Gim,                  01);
  FormatoNum (Diferenca_Aliquota,        09);
  FormatoNum (Diferenca_Aliquota_Compl,  09);
  FormatoNum (Imp_Antecipado,            09);
  FormatoNum (Subst_Saidas,              09);
  FormatoNum (Subst_Entrada,             09);
  FormatoNum (ICMS_Retido_Fonte,         09);
  FormatoNum (Importacao,                09);
  FormatoNum (Regime_Pagamento,          01);
  FormatoNum (Faturamento,               09);
  FormatoNum (Total_Entradas,            09);
  FormatoNum (Carga_Trib_ICMS_SN,        03);
  FormatoNum (FUNCEP_SN,                 09);
  FormatoNum (ICMS_Recolher_SN,          09);
  FormatoNum (Cat_Estabelecimento,       01);
  FormatoAlfa(Brancos,                   02);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est
  else if not (Tipo_Gim[1] in ['S', 'N']) then
   Result := '-2   Tipo de GIM (Guia de Informação Mensal) inválido :: ' + Tipo_Gim;


  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + Diferenca_Aliquota +
              Diferenca_Aliquota_Compl + Imp_Antecipado + Subst_Saidas + Subst_Entrada +
              ICMS_Retido_Fonte + Importacao + Regime_Pagamento + Faturamento +
              Total_Entradas + Carga_Trib_ICMS_SN + FUNCEP_SN + ICMS_Recolher_SN + Cat_Estabelecimento + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8818_PB ---
//ShowMessage(Result);
end;

//--- Registro8819_PB --- Informações dos encerrantes das Bombas de Combustível. ---
//Obrigatório para os Postos Revendedores a partir do mês de referência 09/2007
Function Registro8819_PB(Periodo, Cod_Produto, Num_Bico, Serie_Bomba, LE_Ini, LE_Fim, Id_Tanque: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '19';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Periodo,     06);
  FormatoNum (Cod_Produto, 14);
  FormatoAlfa(Num_Bico,    02);
  FormatoAlfa(Serie_Bomba, 20);
  FormatoNum (LE_Ini,      20);
  FormatoNum (LE_Fim,      20);
  FormatoNum (Id_Tanque,   02);
  FormatoAlfa(Brancos,     38);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Periodo + Cod_Produto + Num_Bico + Serie_Bomba + LE_Ini + LE_Fim + Id_Tanque + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8819_PB ---
//ShowMessage(Result);
end;

//--- Registro8820_PB --- Tanque ---
//Informações do Estoque Físico do fechamento do último dia do mês.
//Obrigatório para os Postos Revendedores a partir do mês de referência 09/2007
Function Registro8820_PB(Periodo, Tanque, Cod_Produto, Quantidade: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '20';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Periodo,     06);
  FormatoNum (Tanque,      02);
  FormatoNum (Cod_Produto, 14);
  FormatoNum (Quantidade,  07);
  FormatoAlfa(Brancos,     93);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Periodo + Tanque + Cod_Produto + Quantidade + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8820_PB ---
//ShowMessage(Result);
end;

//--- Registro8821_PB --- Informações dos Ajustes a Crédito da Substituição Tributária ---
Function Registro8821_PB(Periodo, Devolucao, Repasse, Ressarcimento: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '21';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Periodo,       06);
  FormatoNum (Devolucao,     13);
  FormatoNum (Repasse,       13);
  FormatoNum (Ressarcimento, 13);
  FormatoAlfa(Brancos,       77);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Periodo + Devolucao + Repasse + Ressarcimento + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8821_PB ---
//ShowMessage(Result);
end;

//--- Registro8822_PB --- Informação detalhada de cada ressarcimento autorizado ---
Function Registro8822_PB(Tipo_Ressar, Num_Proc, Insc_Est, Valor_Ressar: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '22';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Tipo_Ressar,  01);
  FormatoAlfa(Num_Proc,     20);
  FormatoNum (Insc_Est,     09);
  FormatoNum (Valor_Ressar, 13);
  FormatoAlfa(Brancos,      79);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Tipo_Ressar + Num_Proc + Insc_Est + Valor_Ressar + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8822_PB ---
//ShowMessage(Result);
end;

//--- Registro8823_PB --- Informações dos Ajustes a Débito da Substituição Tributária ---
Function Registro8823_PB(Periodo, Outros_Debitos: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '23';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Periodo,        006);
  FormatoNum (Outros_Debitos, 013);
  FormatoAlfa(Brancos,        103);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Periodo + Outros_Debitos + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8823_PB ---
//ShowMessage(Result);
end;

//--- Registro8824_PB --- Informações Ações Judiciais ---
Function Registro8824_PB(Periodo, Num_Proc, Valor_Comp, Insc_Est: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '24';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoNum (Periodo,        06);
  FormatoAlfa(Num_Proc,       20);
  FormatoNum (Valor_Comp,     13);
  FormatoNum (Insc_Est,       09);
  FormatoAlfa(Brancos,        74);

  //Teste de Integridade dos campos
   if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Periodo + Num_Proc + Valor_Comp + Insc_Est + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8824_PB ---
//ShowMessage(Result);
end;

//--- Registro8825_PB --- Informações para Controle de apropriação dos valores do Cheque Habitação/Educação ---
Function Registro8825_PB(Cred_Aut, Transf_Entrada_Cred, Transf_Saida_Cred, Valor_Aprop, Saldo_Ant, Saldo_Reman, Tipo_Cheque: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '25';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';                     

  //Formatação dos Campos
  FormatoNum (Cred_Aut,            13);
  FormatoAlfa(Transf_Entrada_Cred, 13);
  FormatoNum (Transf_Saida_Cred,   13);
  FormatoNum (Valor_Aprop,         13);
  FormatoNum (Saldo_Ant,           13);
  FormatoNum (Saldo_Reman,         13);
  FormatoNum (Tipo_Cheque,         01);
  FormatoAlfa(Brancos,             43);

  //Teste de Integridade dos campos

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Cred_Aut + Transf_Entrada_Cred + Transf_Saida_Cred + Valor_Aprop + Saldo_Ant + Saldo_Reman + Tipo_Cheque + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8825_PB ---
//ShowMessage(Result);
end;

//--- Registro8826_PB --- OPERAÇÕES COM VEÍCULOS AUTOMOTORES USADOS NOS TERMOS DO DECRETO Nº 30.106/2008. ---
Function Registro8826_PB(Insc_Est, Periodo, Tipo_Gim, ICMS_Recolher, Tipo_Rev_Veic: ShortString): ShortString; 
const
 Tipo = '88';
 SubTipo = '26';
var
 Brancos: ShortString;
begin
NaoRegistrado;
Brancos := '';

if State then
 begin
  Result := '0';                     

  //Formatação dos Campos
  FormatoNum (Insc_Est,      09);
  FormatoNum (Periodo,       06);
  FormatoAlfa(Tipo_Gim,      01);
  FormatoNum (ICMS_Recolher, 13);
  FormatoNum (Tipo_Rev_Veic, 01);
  FormatoAlfa(Brancos,       92);

  //Teste de Integridade dos campos
  if (not Verifica_InscEst(Insc_Est, 'PB')) and not (Trim(Insc_Est) = 'ISENTO') then
   Result := '-1   Inscrição Estadual Inválida :: ' + Insc_Est;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Subtipo + Insc_Est + Periodo + Tipo_Gim + ICMS_Recolher + Tipo_Rev_Veic + Brancos;

    //Incremento do contador de registros
    Inc(Total_r88);
   end
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro8826_PB ---
//ShowMessage(Result);
end;

//--- Registro90 - Registro de Totalização do Arquivo ---
Function Registro90(indice: integer): ShortString; 
var
 Total, i, r: integer;
 temp_str: Shortstring;
 temp, R90: TStrings;
const
 Tipo = '90';
var
 CPF_Info: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Total  := 3;                           //Referente aos Registros 10, 11 e 90
  Result := '0';

  temp := TStringList.Create;
  temp.clear;

  R90 := TStringList.Create;
  r90.clear;

  CPF_Info := CGC_MF_Info;

  //Formatação dos Campos
  FormatoNum(CGC_MF_Info,    14);
  if Insc_Est_Info <> 'ISENTO' then
   Insc_Est_Info := RemoveInvalid(AlfaNumArray, Insc_Est_Info);
  FormatoAlfa(Insc_Est_Info, 14);

  if (not Verifica_CNPJ(CGC_MF_Info)) and (not Verifica_CPF(CPF_Info)) and (RemoveInvalid('0',CGC_MF_Info) <> '') then
   Result := '-1   CGC/MF ou CPF Inválido :: ' + CGC_MF_Info
  else if (not Verifica_InscEst(Insc_Est_Info, UF_Info)) and (not (Trim(Insc_Est_Info) = 'ISENTO')) then
   Result := '-2   Inscrição Estadual Inválida :: ' + Insc_Est_Info;

  //Resposta em caso de não haver erros
  //Gera totais parciais dos registros
  if Result = '0' then
   begin
    if Total_r50 > 0 then
     begin
      Total:= Total + Total_r50;
      temp.Add('50' + formatfloat('00000000', Total_r50));
     end;
    if Total_r51 > 0 then
     begin
      Total:= Total + Total_r51;
      temp.Add('51' + formatfloat('00000000', Total_r51));
     end;
    if Total_r53 > 0 then
     begin
      Total:= Total + Total_r53;
      temp.Add('53' + formatfloat('00000000', Total_r53));
     end;
    if Total_r54 > 0 then
     begin
      Total:= Total+  Total_r54;
      temp.Add('54' + formatfloat('00000000', Total_r54));
     end;
    if Total_r55 > 0 then
     begin
      Total:= Total+  Total_r55;
      temp.Add('55' + formatfloat('00000000', Total_r55));
     end;
    if Total_r56 > 0 then
     begin
      Total:= Total+  Total_r56;
      temp.Add('56' + formatfloat('00000000', Total_r56));
     end;
    if Total_r57 > 0 then
     begin
      Total:= Total+  Total_r56;
      temp.Add('57' + formatfloat('00000000', Total_r56));
     end;
    if Total_r60 > 0 then
     begin
      Total:= Total +  Total_r60;
      temp.Add('60' + formatfloat('00000000', Total_r60));
     end;
    if Total_r61 > 0 then
     begin
      Total:= Total +  Total_r61;
      temp.Add('61' + formatfloat('00000000', Total_r61));
     end;
    if Total_r70 > 0 then
     begin
      Total:= Total +  Total_r70;
      temp.Add('70' + formatfloat('00000000', Total_r70));
     end;
    if Total_r71 > 0 then
     begin
      Total:= Total +  Total_r71;
      temp.Add('71' + formatfloat('00000000', Total_r71));
     end;
    if Total_r74 > 0 then
     begin
      Total:= Total+  Total_r74;
      temp.Add('74' + formatfloat('00000000', Total_r74));
     end;
    if Total_r75 > 0 then
     begin
      Total:= Total+  Total_r75;
      temp.Add('75' + formatfloat('00000000', Total_r75));
     end;
    if Total_r76 > 0 then
     begin
      Total:= Total+  Total_r76;
      temp.Add('76' + formatfloat('00000000', Total_r76));
     end;
    if Total_r77 > 0 then
     begin
      Total:= Total+  Total_r77;
      temp.Add('77' + formatfloat('00000000', Total_r77));
     end;
    if Total_r85 > 0 then
     begin
      Total:= Total+  Total_r85;
      temp.Add('85' + formatfloat('00000000', Total_r85));
     end;
    if Total_r86 > 0 then
     begin
      Total:= Total+  Total_r86;
      temp.Add('86' + formatfloat('00000000', Total_r86));
     end;
    if Total_r88 > 0 then
     begin
      Total := Total+  Total_r88;
      temp.Add('88' + formatfloat('00000000', Total_r88));
     end;

    //Adiciona registro de total indicando o total de registros informados no registro 90
    temp.Add('99');

   // if temp.Count mod 10 = 0 then
   //  temp.Add('99' + formatfloat('00000000', Total + R90.Count))  //Se houver mais de 1 registro 90 os registros adicionais devem entrar na conta
   // else
   //  temp.Add('99' + formatfloat('00000000', Total));

    r := 0;
    i := 0;

    //Monta registro(s) 90 a partir dos totais parciais
    temp_str := Tipo + CGC_MF_Info + Insc_Est_Info;
    while (i <= temp.count - 1) do
     begin
      if ((length(temp_str) + 10) > 125) then                //se tamanho > 125 significa que deve ser gerado mais de 1 registro 90
       begin
        formatoalfa(temp_str, 125);
        R90.Add(temp_str);
        temp_str := Tipo + CGC_MF_Info + Insc_Est_Info;
        inc(r);
       end
      else
       begin
        if temp.Strings[i] <> '99' then
         temp_str := temp_str + temp.Strings[i]
        else
         temp_str := temp_str + temp.Strings[i] + formatfloat('00000000', Total + r);
        if i = temp.count - 1 then
         begin
          formatoalfa(temp_str, 125);
          R90.Add(temp_str);
         end;
        inc(i);
       end;
     end;



    //navega no(s) registro(s) 90 colocando o número de registro(s) gerados no fim de cada registro
    for i := 0 to R90.count - 1 do
     begin
      R90.Strings[i] := R90.Strings[i] + inttostr(R90.count);
     end;

    if (indice >= 0) and (indice <= R90.count - 1) then
     result := R90.Strings[indice]
    else
     result := '-3   Valor de índice inválido :: ' + inttostr(indice) + ' (valor máximo do índice = ' + inttostr(R90.count - 1) + ')';
   end;

   r90.Free;
   temp.free;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro90 ---
//ShowMessage(Result);
end;

//--- RegistroE00 - IDENTIFICAÇÃO DA SOFTWARE HOUSE ---
Function RegistroE00(Num_Fab, MF_Adic, Num_User, Tipo_ECF, Marca_ECF, Modelo, COO, Num_Aplic, CNPJ_CPF, IE, IM,
                     Nome_Soft_House, Nome_Aplic, Versao_Aplic, Linha_1, Linha_2: ShortString): String; 
const
 Tipo = 'E00';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ_CPF;

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,         20);
  FormatoAlfa(MF_Adic,          1);
  FormatoNum (Num_User,         2);
  FormatoAlfa(Tipo_ECF,         7);
  FormatoAlfa(Marca_ECF,       20);
  FormatoAlfa(Modelo,          20);
  FormatoNum (COO,              6);
  FormatoNum (Num_Aplic,        2);
  FormatoNum (CNPJ_CPF,        14);
  if IE <> 'ISENTO' then
   IE := RemoveInvalid(AlfaNumArray, IE);           //Necessário para remover traços e pontos mas manter letras para o caso de IEs de produtor rural, exemplo: (ex. PR7390097 de MG)
  FormatoAlfa(IE,              14);
  FormatoNum (IM,              14);
  FormatoAlfa(Nome_Soft_House, 40);
  FormatoAlfa(Nome_Aplic,      40);
  FormatoAlfa(Versao_Aplic,    10);
  FormatoAlfa(Linha_1,         42);
  FormatoAlfa(Linha_2,         42);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ_CPF)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0',CNPJ_CPF) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ_CPF
  else if Total_E00 > 0 then
   Result := '-2   Só deve haver 1(um) RegistroE00 no arquivo do Sintegra :: Função RegistroE00 chamada mais de 1(uma) vez';


  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Num_User + Tipo_ECF + Marca_ECF +
              Modelo + COO + Num_Aplic + CNPJ_CPF + IE + IM + Nome_Soft_House +
              Nome_Aplic + Versao_Aplic + Linha_1 + Linha_2;

    //Cria texto para posterior HASH no RegistroEAD
    Texto_EAD := TStringList.Create;
    Texto_EAD.Clear;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E00);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E01 - IDENTIFICAÇÃO DO ECF ---
Function RegistroE01(Num_Fab, MF_Adic, Tipo_ECF, Marca_ECF, Modelo_ECF, Versao_SB, Dt_Gravacao_SB,
                     Hr_Gravacao_SB, Num_Seq_ECF, CNPJ_User, Comando_Geracao, CRZ_Ini, CRZ_Final, Dt_Ini,
                     Dt_Final, Versao_Biblio, Versao_COTEPE: ShortString): ShortString; 
const
 Tipo = 'E01';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,         20);
  FormatoAlfa(MF_Adic,         01);
  FormatoAlfa(Tipo_ECF,        07);
  FormatoAlfa(Marca_ECF,       20);
  FormatoAlfa(Modelo_ECF,      20);
  FormatoAlfa(Versao_SB,       10);
  FormatoNum (Dt_Gravacao_SB,  08);
  ddmmaaaaToSintegraDate(Dt_Gravacao_SB);
  FormatoNum (Hr_Gravacao_SB,  06);
  FormatoNum (Num_Seq_ECF,     03);
  FormatoNum (CNPJ_User,       14);
  FormatoAlfa(Comando_Geracao, 03);
  FormatoNum (CRZ_Ini,         06);
  FormatoNum (CRZ_Final,       06);
  FormatoNum (Dt_Ini,          08);
  ddmmaaaaToSintegraDate(Dt_Ini);
  FormatoNum (Dt_Final,        08);
  ddmmaaaaToSintegraDate(Dt_Final);
  FormatoAlfa(Versao_Biblio,   08);
  FormatoAlfa(Versao_COTEPE,   15);

  //Teste de Integridade dos campos
  if not Verifica_Comando_Geracao(Comando_Geracao) then
   Result := '-1   Comando de Geração Inválido :: ' + Comando_Geracao
  else if Total_E01 > 0 then
   Result := '-2   Só deve haver 1(um) RegistroE01 no arquivo do Sintegra :: Função RegistroE01 chamada mais de 1(uma) vez';


  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Tipo_ECF + Marca_ECF + Modelo_ECF +
              Versao_SB + Dt_Gravacao_SB + Hr_Gravacao_SB + Num_Seq_ECF + CNPJ_User +
              Comando_Geracao + CRZ_Ini +  CRZ_Final + Dt_Ini + Dt_Final +
              Versao_Biblio + Versao_COTEPE;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E01);
   end;                                                         
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E02 - IDENTIFICAÇÃO DO ATUAL CONTRIBUINTE USUÁRIO DO ECF ---
Function RegistroE02(Num_Fab, MF_Adic, Modelo_ECF, CNPJ, IE, Nome_Contrib, Endereco,
                     Dt_Cadastro, Hr_Cadastro, CRO, GT, Num_User: ShortString): String; 
const
 Tipo = 'E02';
var
 CPF: ShortString;
begin
//NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CNPJ;

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,       20);
  FormatoAlfa(MF_Adic,       01);
  FormatoAlfa(Modelo_ECF,    20);
  FormatoNum (CNPJ,          14);
  if IE <> 'ISENTO' then
   IE := RemoveInvalid(AlfaNumArray, IE);
  FormatoAlfa(IE,           14);
  FormatoAlfa(Nome_Contrib,  40);
  FormatoAlfa(Endereco,     120);
  FormatoNum (Dt_Cadastro,   08);
  ddmmaaaaToSintegraDate(Dt_Cadastro);
  FormatoNum (Hr_Cadastro,   06);
  FormatoNum (CRO,           06);
  FormatoNum (GT,            18);
  FormatoNum (Num_User,      02);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CNPJ)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0',CNPJ) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CNPJ
  else if Total_E02 > 0 then
   Result := '-2   Só deve haver 1(um) RegistroE02 no arquivo do Sintegra :: Função RegistroE02 chamada mais de 1(uma) vez';


  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + CNPJ + IE + Nome_Contrib + Endereco + Dt_Cadastro + Hr_Cadastro + CRO + GT + Num_User;

    Texto_EAD.Add(Result);

    //Incremento do contador de registros
    Inc(Total_E02);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E12 - RELAÇÃO DE REDUÇÕES Z ---
Function RegistroE12(Num_Fab, MF_Adic, Modelo_ECF, Num_User, CRZ, COO, CRO, Dt_Movimento, Dt_Emiss, Hr_Emiss,
                     Venda_Bt_Diaria, Desconto: ShortString): ShortString; 
const
 Tipo = 'E12';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,         20);
  FormatoAlfa(MF_Adic,         01);
  FormatoAlfa(Modelo_ECF,      20);
  FormatoNum (Num_User,        02);
  FormatoNum (CRZ,             06);
  FormatoNum (COO,             06);
  FormatoNum (CRO,             06);
  FormatoNum (Dt_Movimento,    08);
  ddmmaaaaToSintegraDate(Dt_Movimento);
  FormatoNum (Dt_Emiss,        08);
  ddmmaaaaToSintegraDate(Dt_Emiss);
  FormatoNum (Hr_Emiss,        06);
  FormatoNum (Venda_Bt_Diaria, 14);
  FormatoAlfa(Desconto,        01);

  //Teste de Integridade dos campos
  if (not Verifica_Desconto(Desconto)) then
   Result := '-1   Incidência de Desconto ISSQN Inválido :: ' + Desconto;


  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + Num_User + CRZ + COO + CRO +
              Dt_Movimento + Dt_Emiss + Hr_Emiss + Venda_Bt_Diaria + Desconto;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E12);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E13 - DETALHE DA REDUÇÃO Z ---
Function RegistroE13(Num_Fab, MF_Adic, Modelo_ECF, Num_User, CRZ,
                     Totaliz_Parc, Valor_Acum: ShortString): ShortString; 
const
 Tipo = 'E13';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,         20);
  FormatoAlfa(MF_Adic,         01);
  FormatoAlfa(Modelo_ECF,      20);
  FormatoNum (Num_User,        02);
  FormatoNum (CRZ,             06);
  FormatoAlfa(Totaliz_Parc,    07);
  FormatoNum (Valor_Acum,      13);
  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF +
              Num_User + CRZ + Totaliz_Parc + Valor_Acum;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E13);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E14 - CUPOM FISCAL, NOTA FISCAL DE VENDA A CONSUMIDOR E BILHETE DE PASSAGEM ---
Function RegistroE14(Num_Fab, MF_Adic, Modelo_ECF, Num_User, CCF_CVC_CBP, COO, Dt_Ini_Emiss,
                     SubTotal_Doc, Desconto_SubTotal, Tipo_Desconto_SubTotal, Acrescimo_SubTotal,
                     Tipo_Acrescimo_SubTotal, Total_Liquido, Cancelamento, Cancelamento_Acres_SubTotal,
                     Ordem_Desconto_Acrescimo, Nome_Adq, CPF_CNPJ_Adq: ShortString): ShortString; 
const
 Tipo = 'E14';
var
 CPF: ShortString;
begin
NaoRegistrado;

if State then
 begin
  Result := '0';
  CPF := CPF_CNPJ_Adq;

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,                     20);
  FormatoAlfa(MF_Adic,                     01);
  FormatoAlfa(Modelo_ECF,                  20);
  FormatoNum (Num_User,                    02);
  FormatoNum (CCF_CVC_CBP,                 06);
  FormatoNum (COO,                         06);
  FormatoNum (Dt_Ini_Emiss,                08);
  ddmmaaaaToSintegraDate(Dt_Ini_Emiss);
  FormatoNum (SubTotal_Doc,                14);
  FormatoNum (Desconto_SubTotal,           13);
  FormatoAlfa(Tipo_Desconto_SubTotal,      01);
  FormatoNum (Acrescimo_SubTotal,          13);
  FormatoAlfa(Tipo_Acrescimo_SubTotal,     01);
  FormatoNum (Total_Liquido,               14);
  FormatoAlfa(Cancelamento,                01);
  FormatoNum (Cancelamento_Acres_SubTotal, 13);
  FormatoAlfa(Ordem_Desconto_Acrescimo,    01);
  FormatoAlfa(Nome_Adq,                    40);
  FormatoNum (CPF_CNPJ_Adq,                14);

  //Teste de Integridade dos campos
  if (not Verifica_CNPJ(CPF_CNPJ_Adq)) and (not Verifica_CPF(CPF)) and (RemoveInvalid('0',CPF_CNPJ_Adq) <> '') then
   Result := '-1   CNPJ ou CPF Inválido :: ' + CPF_CNPJ_Adq
  else if (not Verifica_Tipo_Desconto(Tipo_Desconto_SubTotal)) then
   Result := '-2   Indicador do Tipo de Desconto sobre subtotal Inválido :: ' + Tipo_Desconto_SubTotal
  else if (not Verifica_Tipo_Acrescimo(Tipo_Acrescimo_SubTotal)) then
   Result := '-3   Indicador do Tipo de Acréscimo sobre subtotal Inválido :: ' + Tipo_Acrescimo_SubTotal
  else if (not Verifica_Indicador_Cancelamento(Cancelamento)) then
   Result := '-4   Indicador de Cancelamento Inválido :: ' + Cancelamento;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + Num_User + CCF_CVC_CBP + COO +
              Dt_Ini_Emiss + SubTotal_Doc + Desconto_SubTotal + Tipo_Desconto_SubTotal +
              Acrescimo_SubTotal + Tipo_Acrescimo_SubTotal + Total_Liquido + Cancelamento +
              Cancelamento_Acres_SubTotal + Ordem_Desconto_Acrescimo + Nome_Adq +CPF_CNPJ_Adq;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E14);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E15 - DETALHE DO CUPOM FISCAL, DA NOTA FISCAL DE VENDA A CONSUMIDOR OU DO BILHETE DE PASSAGEM ---
Function RegistroE15(Num_Fab, MF_Adic, Modelo_ECF, Num_User, COO, CCF_CVC_CBP, Num_Item, Cod_Produto,
                     Descricao, Quantidade, Unidade, Valor_Uni, Desconto_Item, Acrescimo_Item, Total_Liquido,
                     Totalizador_Parc, Cancelamento, Qnt_Cancelada, Valor_Cancelado, Cancelamento_Acres_Item,
                     Regra_Calculo, Casas_Decimais_Qnt, Casas_Decimais_Valor_Unit: ShortString): String; 
const
 Tipo = 'E15';
begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,                   20);
  FormatoAlfa(MF_Adic,                   01);
  FormatoAlfa(Modelo_ECF,                20);
  FormatoNum (Num_User,                  02);
  FormatoNum (COO,                       06);
  FormatoNum (CCF_CVC_CBP,               06);
  FormatoNum (Num_Item,                  03);
  FormatoAlfa(Cod_Produto,               14);
  FormatoAlfa(Descricao,                100);
  FormatoNum (Quantidade,                07);
  FormatoAlfa(Unidade,                   03);
  FormatoNum (Valor_Uni,                 08);
  FormatoNum (Desconto_Item,             08);
  FormatoNum (Acrescimo_Item,            08);
  FormatoNum (Total_Liquido,             14);
  FormatoAlfa(Totalizador_Parc,          07);
  FormatoAlfa(Cancelamento,              01);
  FormatoNum (Qnt_Cancelada,             07);
  FormatoNum (Valor_Cancelado,           13);
  FormatoNum (Cancelamento_Acres_Item,   13);
  FormatoAlfa(Regra_Calculo,             01);
  FormatoNum (Casas_Decimais_Qnt,        01);
  FormatoNum (Casas_Decimais_Valor_Unit, 01);

  //Teste de Integridade dos campos
  if (not Verifica_Indicador_Cancelamento(Cancelamento)) then
   Result := '-1   Indicador de Cancelamento Inválido :: ' + Cancelamento
  else if (not Verifica_Regra_De_Calculo(Regra_Calculo)) then
   Result := '-2   Regra de Cálculo Inválida :: ' + Regra_Calculo;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + Num_User + COO + CCF_CVC_CBP + Num_Item + Cod_Produto +
              Descricao + Quantidade + Unidade + Valor_Uni + Desconto_Item + Acrescimo_Item + Total_Liquido +
              Totalizador_Parc + Cancelamento + Qnt_Cancelada + Valor_Cancelado + Cancelamento_Acres_Item +
              Regra_Calculo + Casas_Decimais_Qnt + Casas_Decimais_Valor_Unit;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E15);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

//--- REGISTRO TIPO E16 - DEMAIS DOCUMENTOS EMITIDOS PELO ECF ---
Function RegistroE16(Num_Fab, MF_Adic, Modelo_ECF, Num_User, COO, GNF, GRG,
                     CDC, CRZ, Denominacao, Dt_Final_Emiss, Hr_Final_Emiss: ShortString): ShortString; 
const
 Tipo = 'E16';

begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,           20);
  FormatoAlfa(MF_Adic,           01);
  FormatoAlfa(Modelo_ECF,        20);
  FormatoNum (Num_User,          02);
  FormatoNum (COO,               06);
  FormatoNum (GNF,               06);
  FormatoNum (GRG,               06);
  FormatoNum (CDC,               04);
  FormatoNum (CRZ,               06);
  FormatoAlfa(Denominacao,       02);
  FormatoNum (Dt_Final_Emiss,    08);
  ddmmaaaaToSintegraDate(Dt_Final_Emiss);
  FormatoNum (Hr_Final_Emiss,    06);

  //Teste de Integridade dos campos
  if (not Verifica_Denominacao(Denominacao)) then
   Result := '-1   Denominação do documento fiscal Inválida :: ' + Denominacao;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + Num_User + COO + GNF + GRG +
                     CDC + CRZ + Denominacao + Dt_Final_Emiss + Hr_Final_Emiss;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E16);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;


//--- REGISTRO TIPO E21 - DETALHE DO CUPOM FISCAL E DOCUMENTO NÃO FISCAL - MEIO DE PAGAMENTO ---
Function RegistroE21(Num_Fab, MF_Adic, Modelo_ECF, Num_User,
                     COO, CCF, GNF, Meio_Pagamento, Valor_Pago,
                     Indicador_Estorno, Valor_Estorno: ShortString): ShortString; 
const
 Tipo = 'E21';

begin
NaoRegistrado;

if State then
 begin
  Result := '0';

  //Formatação dos Campos
  FormatoAlfa(Num_Fab,           20);
  FormatoAlfa(MF_Adic,           01);
  FormatoAlfa(Modelo_ECF,        20);
  FormatoNum (Num_User,          02);
  FormatoNum (COO,               06);
  FormatoNum (CCF,               06);
  FormatoNum (GNF,               06);
  FormatoAlfa(Meio_Pagamento,    15);
  FormatoNum (Valor_Pago,        13);
  FormatoAlfa(Indicador_Estorno, 01);
  FormatoNum (Valor_Estorno,     13);

  //Teste de Integridade dos campos
  if (not Verifica_Indicador_Estorno(Indicador_Estorno)) then
   Result := '-1   Indicador de Estorno Inválido :: ' + Indicador_Estorno;

  //Resposta em caso de não haver erros
  if Result = '0' then
   begin
    Result := Tipo + Num_Fab + MF_Adic + Modelo_ECF + Num_User +
                     COO + CCF + GNF + Meio_Pagamento + Valor_Pago +
                     Indicador_Estorno + Valor_Estorno;

    Texto_EAD.Add(Result);
    //Incremento do contador de registros
    Inc(Total_E21);
   end;
 end
else
 Result := '-0   Função Inicia_Sintegra não chamada';
end;

end.

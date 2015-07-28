unit os_impressao_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDBSet, frxDesgn, Grids, DBGrids, AdvGlowButton,
  AdvShapeButton;

type
  Tfrmos_impressao_auto = class(TForm)
    PopupMenu1: TPopupMenu;
    TPRazao: TMenuItem;
    TPCarta: TMenuItem;
    TPImpresso: TMenuItem;
    TPA4: TMenuItem;
    TPRazaoA4: TMenuItem;
    ContnuoOSAberta1: TMenuItem;
    FormulrioContnuoCarta1: TMenuItem;
    frxDesigner1: TfrxDesigner;
    fsos: TfrxDBDataset;
    fxos: TfrxReport;
    fsos_servico: TfrxDBDataset;
    fsos_receber: TfrxDBDataset;
    RazoOSAberta1: TMenuItem;
    RazoOSFechada1: TMenuItem;
    FormulrioContnuoCartaPersonalizado1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    combo_modelo: TComboBox;
    evias: TSpinEdit;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu2: TPopupMenu;
    Cancelar1: TMenuItem;
    qrcliente: TZQuery;
    qros_servico: TZQuery;
    qros_servicoCODSERVICO: TStringField;
    qros_servicoSERVICO: TStringField;
    qros_servicoCOMPLEMENTO: TStringField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCODTECNICO: TStringField;
    qros_servicoTECNICO: TStringField;
    qros_servicoDATA: TDateTimeField;
    qros_servicoCODOS: TStringField;
    qros_servicoCODCLIENTE: TStringField;
    fsos_produto: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPCartaClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPA4Click(Sender: TObject);
    procedure TPRazaoA4Click(Sender: TObject);
    procedure ContnuoOSAberta1Click(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure FormulrioContnuoCarta1Click(Sender: TObject);
    procedure RazoOSAberta1Click(Sender: TObject);
    procedure RazoOSFechada1Click(Sender: TObject);
    procedure FormulrioContnuoCartaPersonalizado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_impressao_auto: Tfrmos_impressao_auto;
  porta_impressora : string;

implementation

uses modulo, principal, os, os_auto, os_fechamento_auto, ecf,
  os_fechamento, rel_nf, venda_nf, nf_obs, os_impressao;

{$R *.dfm}

procedure Tfrmos_impressao_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmos_impressao_auto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_impressao_auto.bgravarClick(Sender: TObject);
begin






  case combo_modelo.ItemIndex of
  0 : TPRazaoClick(frmOS_impressao);
  1 : TPCartaClick(frmOS_impressao);
  2 : ContnuoOSAberta1click(frmOS_impressao);
  3 : TPImpressoClick(frmOS_impressao);
  4 : TPA4Click(frmOS_impressao);
  5 : TPRazaoA4Click(frmOS_impressao);
  6 : FormulrioContnuoCarta1Click(frmOS_impressao);
  7 : RazoOSAberta1Click(frmOS_impressao);
  8 :RazoOSFechada1Click(frmOS_impressao);
  9 :FormulrioContnuoCartaPersonalizado1Click(frmos_impressao);
  END;






  close;
end;

procedure Tfrmos_impressao_auto.FormShow(Sender: TObject);
begin

  if ramo = 3 then // auto pecas
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger = 3 then
    begin
      if frmmodulo.qros.fieldbyname('st').asinteger <> 4 then
      begin
        combo_modelo.ItemIndex :=  4;
      end
      else
      begin
        combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
      end;
    end
    else
    begin
      if frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger = 10 then
      begin
        if frmmodulo.qros.fieldbyname('st').asinteger <> 4 then
        begin
          combo_modelo.ItemIndex :=  9;
        end
        else
        begin
          combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
        end;
      end
      else
      begin
        combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
      end;
      evias.Value := frmmodulo.qrconfig.FieldByName('OS_QTDE_VIAS_NOTA').asinteger;
      porta_impressora := frmmodulo.qrconfig.FieldByName('OS_PORTA_IMPRESSORA').asstring;
    end;
  end
  else
  begin
    frmmodulo.qrconfig.open;
    combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
    evias.Value := frmmodulo.qrconfig.FieldByName('OS_QTDE_VIAS_NOTA').asinteger;
    porta_impressora := frmmodulo.qrconfig.FieldByName('OS_PORTA_IMPRESSORA').asstring;
  end;






end;

procedure Tfrmos_impressao_auto.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmos_impressao_auto.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos_impressao_auto.TPCartaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    nivel_comb, i : integer;
    nc : string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

  if ramo = 3 then
  begin


    nivel_comb := frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then                          nc := '|----|----|----|----|';
    if (nivel_comb > 0 ) and (nivel_comb < 6 ) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5 ) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100)  then                     nc := '|----|----|----|----X';





   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.texto_justifica(emitente_fantasia,80,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(emitente_endereco+' - '+emitente_cidade+' - CEP '+emitente_cep+' - '+'Telefone: '+emitente_telefone,137,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'O R D E M   D E   S E R V I C O   N '+frmprincipal.tiraacento('º :  ')+#18+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,'0','E')+#15+#27#72+#20+'  ATEND.: '+FRMPRINCIPAL.TEXTO_JUSTIFICA(FRMMODULO.QROS.FIELDBYNAME('ATENDIMENTO').ASSTRING,11,' ','D')+
                                  '   '+frmprincipal.tiraacento('Emissão: ')+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('data').asstring+'   '+timetostr(time),20,' ','C')+
                                  '  '+frmprincipal.texto_justifica('Atend.: '+frmmodulo.qros.fieldbyname('atendente').asstring,28,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------DADOS DO CLIENTE--------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '#15+#27#71+#20+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,6,'0','E')+' '+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING,32,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                              frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+
                                                                              frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+
                                                                              frmmodulo.qrcliente.fieldbyname('uf').asstring+
                                                                              '  CEP '+frmmodulo.qrcliente.fieldbyname('cep').asstring,115,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('celular').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('telefone2').asstring+'        CPF/CNPJ: '+
                                                                              frmmodulo.qrcliente.fieldbyname('cpf').asstring+'      RG/IE: '+
                                                                              frmmodulo.qrcliente.fieldbyname('rg').asstring  ,115,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Marca/Mode: '#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('Marca').asstring,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Ano/Modelo: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('modelo').asstring+'           Placa: '+frmmodulo.qros.fieldbyname('SERIAL').asstring+'       Chassi: '+frmmodulo.qros.fieldbyname('SERIAL').asstring,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Combustiv.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('combustivel').asstring+'                                                          Nivel do Comustivel:   '+NC,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
   WRITELN(ARQUIVO,#15+#27#72+#20,frmos_auto.edefeito.text);
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,frmos_AUTO.edetectado.text);
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'Data......: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('DETECTADO_DATA').asstring,10,' ','D')+'      Tecnico Responsavel: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,30,' ','D')+'    Setor: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SETOR').asstring,20,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------------------SERVICOS EXECUTADOS---------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'CODIGO-|-DESCRICAO DO SERVICO---------------------|-COMPLEMENTO------------------------------|---VALOR - R$-|-TECNICO--------------------');
   i := 1;
   frmos_auto.qros_servico.refresh;
   frmos_auto.qros_servico.First;
   while not frmos_auto.qros_servico.Eof do
   begin
     texto1 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codservico').asstring,6,'0','E');
     texto2 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('servico').asstring,40,' ','D');
     texto3 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('complemento').asstring,40,' ','D');
     texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',frmos_auto.qros_servico.fieldbyname('valor').asFLOAT),12,' ','E');
     texto5 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codtecnico').asstring,6,'0','E');
     texto6 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('tecnico').asstring,20,' ','D');
     writeln(arquivo,#15+#27#72+#20,texto1+' | '+texto2+' | '+texto3+' | '+texto4+' | '+texto5+' '+TEXTO6);
     i := i + 1;
     frmos_auto.qros_servico.Next;
   end;
   while i < 30 do
   BEGIN
       writeln(arquivo,#15+#27#72+#20,'       |                                          |                                          |              |                            ');
       I := I + 1;
   END;
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_TOTAL').asFLOAT),12,' ','E');
   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS SERVICOS:   '+TEXTO1+'                DESCONTO S/ SERVICOS:   '+TEXTO2+'              TOTAL DOS SERVICOS:   '+#15+#27#71+#20+TEXTO3);
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------TOTALIZACAO DA ORDEM DE SERVICO-----------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('ACRESCIMO').asFLOAT),12,' ','E');
   TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('TOTAL').asFLOAT),12,' ','E');

   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS O.S.:   '+TEXTO1+'      DESCONTO:   '+TEXTO2+'    ACRESCIMO: '+TEXTO3+'        TOTAL DA O.S.:   '+#18+#27#71+#20+TEXTO4);
   if frmmodulo.qros.FieldByName('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'-------------------FATURAMENTO-----------------------|');
     Writeln(arquivo,#15+#27#72+#20,'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

     if frmOS_Auto.BCANCELAR.Caption = 'Fechar' then
     begin
       frmmodulo.qrcontasreceber.close;
       frmmodulo.qrcontasreceber.sql.clear;
       frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'s'' order by codigo');
       frmmodulo.qrcontasreceber.open;
       frmmodulo.qrcontasreceber.First;
       i := 1;
       while not frmmodulo.qrcontasreceber.eof do
       begin


        writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(inttostr(i),3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E')+' |');
         i := i + 1;
         frmmodulo.qrcontasreceber.next;
       end;



     end
     else
     begin
       frmos_auto.qros_contasreceber.First;
       while not frmos_auto.qros_contasreceber.eof do
       begin
         writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmos_auto.qros_contasreceber.fieldbyname('valor').asfloat),10,' ','E')+' |');
         frmos_auto.qros_contasreceber.next;
       end;
     end;
   end
   else
   begin
     TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_DINHEIRO').asFLOAT),12,' ','E');
     TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CHEQUEAV').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_CHEQUEap').asFLOAT),12,' ','E');
     TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CARTAOCRED').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_Cartaodeb').asFLOAT),12,' ','E');
     writeln(arquivo,'Dinheiro.....: '+texto1);
     writeln(arquivo,'Cheque.......: '+texto2);
     writeln(arquivo,'Cartao.......: '+texto3);
   end;
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
   writeln(arquivo,#12);
   closefile(arquivo);


  end;
end;

procedure Tfrmos_impressao_auto.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmos_impressao_auto.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmos_impressao_auto.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmos_impressao_auto.TPA4Click(Sender: TObject);
begin
  IF RAMO = 1 THEN
  begin
   frmmodulo.qrcontasreceber.close;
   frmmodulo.qrcontasreceber.sql.clear;
   frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s''');
   frmmodulo.qrcontasreceber.open;
    fxos.LoadFromFile('\DATASAC\server\rel\f000066.fr3');
    fxos.ShowReport;
  end;
  IF RAMO = 3 THEN
  begin
    SHOWMESSAGE('AQUI');
    fxos.LoadFromFile('\DATASAC\server\rel\f000068.fr3');
    fxos.ShowReport;
  end;
end;

procedure Tfrmos_impressao_auto.TPRazaoA4Click(Sender: TObject);
begin
   frmmodulo.qrcontasreceber.close;
   frmmodulo.qrcontasreceber.sql.clear;
   frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s'' AND SITUACAO = 1');
   frmmodulo.qrcontasreceber.open;

  IF RAMO = 1 THEN
  begin
    fxos.LoadFromFile('\DATASAC\server\rel\f000065.fr3');
    fxos.ShowReport;
  end;
  IF RAMO = 3 THEN
  begin

      fxos.LoadFromFile('\DATASAC\server\rel\f000067.fr3');
    fxos.ShowReport;
  end;
end;

procedure Tfrmos_impressao_auto.ContnuoOSAberta1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    nivel_comb : integer;
    nc : string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

  if ramo = 3 then
  begin


    nivel_comb := frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then                          nc := '|----|----|----|----|';
    if (nivel_comb > 0 ) and (nivel_comb < 6 ) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5 ) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100)  then                     nc := '|----|----|----|----X';





   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.texto_justifica(emitente_fantasia,22,' ','D')+#15+#27#72+#20' Fone: '+frmprincipal.texto_justifica(emitente_telefone,14,' ','D')+'  O.S.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,'0','E')+'   Em.: '+frmmodulo.qros.fieldbyname('data').asstring+'  Hr.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('HORA').asstring,5,' ','D')+' Tecnico:'+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,22,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
   writeln(arquivo,'Cliente..: '+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring,6,' ','E')+' '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,40,' ','D')+#15+#27#72+#20+' Endereco: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring,34,' ','D')+' Bairro: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring,6,' ','D'));
   writeln(arquivo,'Cidade: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring,20,' ','D')+'/'+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring,2,' ','D')+' Cep: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring,9,' ','D')+'  Fone: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring,16,' ','D')+' CPF/CNPJ: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,22,' ','D')+' RG/IE: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,25,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Marca/Mode: '#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('Marca').asstring,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Ano/Modelo: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('modelo').asstring+'           Placa: '+frmmodulo.qros.fieldbyname('SERIAL').asstring+'       Chassi: '+frmmodulo.qros.fieldbyname('SERIAL').asstring,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Combustiv.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('combustivel').asstring+'                                                          Nivel do Comustivel:   '+NC,120,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
   WRITELN(ARQUIVO,#15+#27#72+#20,frmos_auto.edefeito.text);
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Data......:      /     /                     Tecnico Responsavel:                                     Setor:                             ');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------------SERVICOS EXECUTADOS / A EXECUTAR--------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'  CODIGO  | DESCRICAO DO SERVICO                                                                  | TECNICO                              ');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'Autorizo a realizacao dos servicos citados nesta Ordem,');
   writeln(arquivo,#15+#27#72+#20,' ');
   writeln(arquivo,#15+#27#72+#20,'Data: '+#196+#196+#196+#196+'/'+#196+#196+#196+#196+'/'+#196+#196+#196+#196+#196+#196+#196+#196+'    Assinatura: '+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196);

   writeln(arquivo,#12);
   closefile(arquivo);
  end;

end;

procedure Tfrmos_impressao_auto.TPRazaoClick(Sender: TObject);
var data1, dat, ano, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
arquivo : textfile;
TP : REAL;
KM : BOOLEAN;
sa, item, V : integer;
// variaveis de linhas
e, f, g, h, i, j, l, m: char;
begin
  km := true;
  e := #218; // canto superior esquerdo
  f := #179; // barra vertical
  g := #192; // canto inferior esquerdo
  h := #196; // barra horizontal
  i := #194; // T superior
  j := #193; // T inferior
  l := #191; // canto superior direito
  m := #217; // canto inferior direito

  // 195 |-    197 +  #180 -|

            V := EVIAS.Value;
            assignfile(arquivo,impressora_venda);
            rewrite(arquivo);
            WHILE V <> 0 DO
            BEGIN
            writeln(arquivo,#18+#27#71+#20,frmprincipal.texto_justifica(emitente_fantasia,22,' ','D')+#15+#27#72+#20' Fone: '+frmprincipal.texto_justifica(emitente_telefone,14,' ','D')+'  O.S.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,'0','E')+'   Em.: '+frmmodulo.qros.fieldbyname('data').asstring+'  Hr.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('HORA').asstring,5,' ','D')+' Tecnico:'+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,22,' ','D'));
            writeln(arquivo,h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h);
            writeln(arquivo,'Cliente..: '+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring,6,' ','E')+' '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,40,' ','D')+#15+#27#72+#20+' Endereco: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring,34,' ','D')+' Bairro: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring,6,' ','D'));
            writeln(arquivo,'Cidade: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring,20,' ','D')+'/'+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring,2,' ','D')+' Cep: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring,9,' ','D')+'  Fone: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring,16,' ','D')+' CPF/CNPJ: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,22,' ','D')+' RG/IE: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,25,' ','D'));
            writeln(arquivo,'Solicit.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SOLICITANTE').asstring,20,' ','D')+'  Funcion: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('ATENDENTE').asstring,20,' ','D')+'  Obs.: '+frmprincipal.texto_justifica(FRMOS.eobs.Text,20,' ','D'));

            writeln(arquivo,'Aparelho: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('MARCA').asstring,23,' ','D')+'  Modelo: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('MODELO').asstring,15,' ','D')+' Serial: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SERIAL').asstring,15,' ','D')+'   Motivo: '+frmprincipal.texto_justifica(FRMOS.edefeito.TEXT,40,' ','D')+'.');
            writeln(arquivo,'Detectado: '+frmprincipal.texto_justifica(FRMOS.EDETECTADO.Text,80,' ','D')+ '         '+'Data/Previsao:'+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_data').asstring,10,' ','D')+ ' hora:'+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_hora').asstring,5,' ','D'));
            writeln(arquivo,e+h+h+' D E S C R I C A O   D O (S)  S E R V I C O (S) '+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+'VALOR-R$'+h+h+h+h+h+h+l);
            frmos.qros_servico.First;
            ITEM:= 0;
            while not frmos.qros_servico.Eof do
            begin
              if frmos.qros_servico.fieldbyname('valor').asfloat <> 0 then texto := frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmos.qros_servico.fieldbyname('valor').asfloat),16,' ','E') else texto := '                ';
              WRITELN(arquivo,f+' '+frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring+' '+frmos.qros_servico.fieldbyname('complemento').asstring,111,' ','D')+' '+f+'   '+texto+' '+f);
              frmos.qros_servico.Next;
              ITEM:= ITEM+ 1;
            end;
            while ITEM<> 13  do begin WRITELN(arquivo,f+' '+frmprincipal.texto_justifica(' ',111,' ','E')+' '+f+'   '+frmprincipal.texto_justifica(' ',16,' ','E')+' '+f); ITEM:= ITEM+ 1; end;
            writeln(arquivo,g+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+m);
            writeln(arquivo,'TOTAL SERVIC.R$: '+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qros.fieldbyname('servico_subtotal').asfloat),8,' ','E')+
                            '  TOTAL DESLOC.R$: '+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qros.fieldbyname('desloc_total').asfloat),8,' ','E')+
                            '  TOT.DESP.TERC.R$: '+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qros.fieldbyname('terceiro_total').asfloat),8,' ','E')+
                            '   DESC.S/SERV.(-).R$: '+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qros.fieldbyname('servico_desconto').asfloat),8,' ','E')+
                            '  SUB-TOTAL.R$: '+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qros.fieldbyname('servico_subtotal').asfloat+frmmodulo.qros.fieldbyname('desloc_total').asfloat+frmmodulo.qros.fieldbyname('terceiro_total').asfloat-frmmodulo.qros.fieldbyname('servico_desconto').asfloat),8,' ','E'));
            writeln(arquivo,g+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+m);
            item := 0;
            frmmodulo.qrcontasreceber.Close;
            frmmodulo.qrcontasreceber.SQL.clear;
            frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'s'' order by data_vencimento');
            frmmodulo.qrcontasreceber.open;
            if frmmodulo.qrcontasreceber.RecordCount > 0 then
            begin
              frmmodulo.qrcontasreceber.first;
              TP := 0;
              while not frmmodulo.qrcontasreceber.eof do
              begin
                IF frmmodulo.qrcontasreceber.FieldByName('valor_atual').ASFLOAT <> 0     THEN TEXTO2 := frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat),9,' ','E') ELSE TEXTO2 := '         ';
                IF KM THEN
                BEGIN
                  writeln(arquivo,f+' '+frmprincipal.texto_justifica(inttostr(item+1),2,'0','E')+'    '+frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+'        '+texto2+'  '+f+'    KM INICIAL: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('km_inicial').asstring,10,' ','D')+'     KM FINAL: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('km_final').asstring,10,' ','D')+' Veiculo: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('veiculo').asstring,20,' ','D'));
                  KM := FALSE;
                END
                ELSE
                BEGIN
                  writeln(arquivo,f+' '+frmprincipal.texto_justifica(inttostr(item+1),2,'0','E')+'    '+frmprincipal.texto_justifica(frmmodulo.qrCONTASRECEBER.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+'        '+texto2+'  '+f);
                END;
                item := item + 1;
                frmmodulo.qrcontasreceber.next;
              end;

            end;

            while item < 4 do
            begin
              item := item + 1;
              IF KM THEN
              BEGIN
                writeln(arquivo,f+' '+frmprincipal.texto_justifica(' ',2,' ','D')+'    '+frmprincipal.texto_justifica(' ',10,' ','D')+'                   '+f+'    KM INICIAL: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('km_inicial').asstring,10,' ','D')+'     KM FINAL: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('km_final').asstring,10,' ','D')+' Veiculo: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('veiculo').asstring,20,' ','D'));
                KM := FALSE;
              END
              ELSE
              BEGIN
                writeln(arquivo,f+' '+frmprincipal.texto_justifica(' ',2,' ','D')+'    '+frmprincipal.texto_justifica(' ',10,' ','D')+'                   '+f);
              END;
            end;
            writeln(arquivo,g+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+h+m+'         ----------Assinatura do Cliente---------   ---------- Assinatura da Empresa---------');
            Writeln(arquivo,'Serv.executado em: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('conclusao_data').asstring,10,' ','D')+'              Obs.: Apos 90 dias  do orcamento, nao havendo procura, o mesmo passara a pertencer a loja.');
            WRITELN(ARQUIVO,'');
            WRITELN(ARQUIVO,'');
            V := V - 1;
            END;
            WRITELN(arquivo,#12);
            closefile(arquivo);

end;

procedure Tfrmos_impressao_auto.FormulrioContnuoCarta1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN


   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,20,' ','D')+#15+#27#72+#20+'  '+frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,25,' ','D')+'                                                         Data..: '+frmmodulo.qros.fieldbyname('data').asstring);
   writeln(arquivo,#27#80+#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cidade+' - CEP '+emitente_cep,105,' ','D')+'              Hora..:  '+timetostr(time));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'O R D E M   D E  S E R V I C O   No. '+#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,' ','D')+#15+#27#72+#20+'                    '+frmprincipal.Texto_Justifica('Atendente: '+frmmodulo.qros.fieldbyname('atendente').asstring,46,' ','D')+'        '+frmprincipal.Texto_Justifica('Tipo..: '+frmmodulo.qros.fieldbyname('tipo').asstring,15,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,6,'0','E')+' '+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                              frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+
                                                                              frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+
                                                                              frmmodulo.qrcliente.fieldbyname('uf').asstring+
                                                                              '  CEP '+frmmodulo.qrcliente.fieldbyname('cep').asstring,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('celular').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('telefone2').asstring+'        CPF/CNPJ: '+
                                                                              frmmodulo.qrcliente.fieldbyname('cpf').asstring+'      RG/IE: '+
                                                                              frmmodulo.qrcliente.fieldbyname('rg').asstring  ,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Solicitan.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('solicitante').asstring,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Equipamento - Marca: '+#27#80+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('marca').asstring,20,' ','D')+#27#80+#15+#27#72+#20+' Modelo: '+#27#80+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('modelo').asstring,30,' ','D')+#27#80+#15+#27#72+#20+' Numero de Serie: '+#27#80+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('serial').asstring,30,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Defeitos/Reclamacoes: '+frmos.edefeito.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'Tipo de Atendimento.: '+frmmodulo.qros.fieldbyname('atendimento').asstring);
   writeln(arquivo,#27#80+#15+#27#72+#20,'Observacoes/Inform..: '+frmos.eobs.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Detectado: '+frmos.edetectado.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'Data/Hora: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('DETECTADO_DATA').asstring+' / '+frmmodulo.qros.fieldbyname('DETECTADO_HORA').asstring,25,' ','D')+'  Tecnico: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,25,' ','D')+'  Setor: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('setor').asstring,30,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Intervencoes: '+frmos.eintervencao.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'CODIGO | DESCRICAO DO SERVICO                     | COMPLEMENTO                              |   VALOR - R$ | TECNICO                    ');
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');



   i := 1;
   frmos.qros_servico.refresh;
   frmos.qros_servico.First;
   while not frmos.qros_servico.Eof do
   begin
     texto1 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codservico').asstring,6,'0','E');
     texto2 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring,40,' ','D');
     texto3 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('complemento').asstring,40,' ','D');
     texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',frmos.qros_servico.fieldbyname('valor').asFLOAT),12,' ','E');
     texto5 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codtecnico').asstring,6,'0','E');
     texto6 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('tecnico').asstring,20,' ','D');
     writeln(arquivo,#15+#27#72+#20,texto1+' | '+texto2+' | '+texto3+' | '+texto4+' | '+texto5+' '+TEXTO6);
     i := i + 1;
     frmos.qros_servico.Next;
   end;
   while i < 25 do
   BEGIN
       writeln(arquivo,#15+#27#72+#20,'       |                                          |                                          |              |                            ');
       I := I + 1;
   END;
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_TOTAL').asFLOAT),12,' ','E');
   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS SERVICOS:   '+TEXTO1+'                DESCONTO S/ SERVICOS:   '+TEXTO2+'              TOTAL DOS SERVICOS:   '+#15+#27#71+#20+TEXTO3);
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------TOTALIZACAO DA ORDEM DE SERVICO-----------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('ACRESCIMO').asFLOAT),12,' ','E');
   TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('TOTAL').asFLOAT),12,' ','E');

   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS O.S.:   '+TEXTO1+'      DESCONTO:   '+TEXTO2+'    ACRESCIMO: '+TEXTO3+'      TOTAL DA O.S.:   '+#27#77+#15+#27#71+#14+TEXTO4);
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');


   if frmmodulo.qros.FieldByName('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#27#80+#15+#27#72+#20,'-------------------FATURAMENTO-----------------------|');
     Writeln(arquivo,#27#80+#15+#27#72+#20,'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

     if frmos.BCANCELAR.Caption = 'Fechar' then
     begin
       frmmodulo.qrcontasreceber.close;
       frmmodulo.qrcontasreceber.sql.clear;
       frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'s'' order by codigo');
       frmmodulo.qrcontasreceber.open;
       frmmodulo.qrcontasreceber.First;
       i := 1;
       while not frmmodulo.qrcontasreceber.eof do
       begin


        writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(inttostr(i),3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E')+' |');
         i := i + 1;
         frmmodulo.qrcontasreceber.next;
       end;



     end
     else
     begin
       frmos.qros_contasreceber.First;
       while not frmos.qros_contasreceber.eof do
       begin
         writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmos.qros_contasreceber.fieldbyname('valor').asfloat),10,' ','E')+' |');
         frmos.qros_contasreceber.next;
       end;
     end;
   end
   else
   begin
     TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_DINHEIRO').asFLOAT),12,' ','E');
     TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CHEQUEAV').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_CHEQUEap').asFLOAT),12,' ','E');
     TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CARTAOCRED').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_Cartaodeb').asFLOAT),12,' ','E');
     writeln(arquivo,#27#80+#15+#27#72+#20,'Dinheiro.....: '+texto1);
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cheque.......: '+texto2);
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cartao.......: '+texto3);

   end;
    writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
    WRITELN(ARQUIVO,#12);
    vias := vias - 1;
   end;

   closefile(arquivo);

end;

procedure Tfrmos_impressao_auto.RazoOSAberta1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas, v : integer;
    nivel_comb : integer;
    nc : string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

  if ramo = 3 then
  begin


    nivel_comb := frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then                          nc := '|----|----|----|----|';
    if (nivel_comb > 0 ) and (nivel_comb < 6 ) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5 ) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100)  then                     nc := '|----|----|----|----X';


   V := EVIAS.Value;
   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   WHILE V <> 0 DO
   BEGIN


   writeln(arquivo,#18+#27#71+#20,frmprincipal.texto_justifica(emitente_fantasia,22,' ','D')+#15+#27#72+#20' Fone: '+frmprincipal.texto_justifica(emitente_telefone,14,' ','D')+'  O.S.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,'0','E')+'   Em.: '+frmmodulo.qros.fieldbyname('data').asstring+'  Hr.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('HORA').asstring,5,' ','D')+' Tecnico: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,21,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,'Cliente: '+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring,6,' ','E')+' '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,40,' ','D')+#15+#27#72+#20+' Endereco: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring,34,' ','D')+' Bairro: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring,6,' ','D'));
   writeln(arquivo,'Cidade.: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring,20,' ','D')+'/'+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring,2,' ','D')+' Cep: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring,9,' ','D')+'  Fone: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring,16,' ','D')+' CPF/CNPJ: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,22,' ','D')+' RG/IE: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,25,' ','D'));
   writeln(arquivo,'Solicit: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SOLICITANTE').asstring,20,' ','D')+'  Funcion: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('ATENDENTE').asstring,20,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Marca/Mode: '#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('Marca').asstring,20,' ','D')+#15+#27#72+#20,'Ano/Mod: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('modelo').asstring+' Placa: '+frmmodulo.qros.fieldbyname('SERIAL').asstring+' Chassi: '+frmmodulo.qros.fieldbyname('CHASSI').asstring,45,' ','D')+#15+#27#72+#20,'Combust.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('combustivel').asstring+' Nivel: '+NC,40,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
   WRITELN(ARQUIVO,#15+#27#72+#20,frmos_auto.edefeito.text);
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
  writeln(arquivo,#15+#27#72+#20,'Data......: '+#196+#196+#196+#196+'/'+#196+#196+#196+#196+'/'+#196+#196+#196+#196+#196+#196+#196+#196+'        Tecnico Responsavel:'+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+' Setor:'+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196);
   writeln(arquivo,#15+#27#72+#20,'-------------------------------------------------------------SERVICOS EXECUTADOS / A EXECUTAR--------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'  CODIGO  | DESCRICAO DO SERVICO                                                                  | TECNICO                              ');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'----------|---------------------------------------------------------------------------------------|--------------------------------------');
   writeln(arquivo,'');
   writeln(arquivo,#15+#27#72+#20,'Autorizo a realizacao dos servicos citados nesta Ordem.     Data: '+#196+#196+#196+#196+'/'+#196+#196+#196+#196+'/'+#196+#196+#196+#196+#196+#196+#196+#196+'    Assinatura: '+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196+#196);
   writeln(arquivo,'');
   writeln(arquivo,'');
   writeln(arquivo,'');
     v := v - 1;
   end;

   writeln(arquivo,#12);
   closefile(arquivo);
  end;
end;

procedure Tfrmos_impressao_auto.RazoOSFechada1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas, v : integer;
    nivel_comb, i : integer;
    nc : string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

  if ramo = 3 then
  begin


    nivel_comb := frmmodulo.qros.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then                          nc := '|----|----|----|----|';
    if (nivel_comb > 0 ) and (nivel_comb < 6 ) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5 ) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100)  then                     nc := '|----|----|----|----X';



     V := EVIAS.Value;
   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   WHILE V <> 0 DO
   BEGIN

   writeln(arquivo,#18+#27#71+#20,frmprincipal.texto_justifica(emitente_fantasia,22,' ','D')+#15+#27#72+#20' Fone: '+frmprincipal.texto_justifica(emitente_telefone,14,' ','D')+'  O.S.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,'0','E')+'   Em.: '+frmmodulo.qros.fieldbyname('data').asstring+'  Hr.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('HORA').asstring,5,' ','D')+' Tecnico: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,21,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,'Cliente.: '+#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring,6,' ','E')+' '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,40,' ','D')+#15+#27#72+#20+'Solicit: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SOLICITANTE').asstring,20,' ','D')+'  Atend: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('ATENDENTE').asstring,20,' ','D'));
   writeln(arquivo,'Endereco: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring+'  Fone: '+frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'  CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+' RG/IE: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,115,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Marca/Mode: '#15+#27#71+#20+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('Marca').asstring,20,' ','D')+#15+#27#72+#20,'Ano/Mod: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('modelo').asstring+' Placa: '+frmmodulo.qros.fieldbyname('SERIAL').asstring+' Chassi: '+frmmodulo.qros.fieldbyname('CHASSI').asstring,45,' ','D')+#15+#27#72+#20,'Combust.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('combustivel').asstring+' Nivel: '+NC,40,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'SOLICITACOES / DEFEITOS /  RECLAMACOES: '+#15+#27#72+#20,frmos_auto.edefeito.text);
   writeln(arquivo,#15+#27#72+#20,'PARCECER TECNICO / DEFEITOS DETECTADOS: '+#15+#27#72+#20,frmos_AUTO.edetectado.text);
   writeln(arquivo,#15+#27#72+#20,'Data......: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('DETECTADO_DATA').asstring,10,' ','D')+'      Tecnico Responsavel: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,30,' ','D')+'    Setor: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('SETOR').asstring,20,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CODIGO-|-DESCRICAO DO SERVICO---------------------|-COMPLEMENTO------------------------------|---VALOR - R$-|-TECNICO--------------------');
   i := 1;
   frmos_auto.qros_servico.refresh;
   frmos_auto.qros_servico.First;
   while not frmos_auto.qros_servico.Eof do
   begin
     texto1 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codservico').asstring,6,'0','E');
     texto2 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('servico').asstring,40,' ','D');
     texto3 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('complemento').asstring,40,' ','D');
     texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',frmos_auto.qros_servico.fieldbyname('valor').asFLOAT),12,' ','E');
     texto5 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codtecnico').asstring,6,'0','E');
     texto6 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('tecnico').asstring,20,' ','D');
     writeln(arquivo,#15+#27#72+#20,texto1+' | '+texto2+' | '+texto3+' | '+texto4+' | '+texto5+' '+TEXTO6);
     i := i + 1;
     frmos_auto.qros_servico.Next;
   end;
   while i < 12 do
   BEGIN
       writeln(arquivo,#15+#27#72+#20,'       |                                          |                                          |              |                            ');
       I := I + 1;
   END;
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_TOTAL').asFLOAT),12,' ','E');
   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS SERVICOS:   '+TEXTO1+'                DESCONTO S/ SERVICOS:   '+TEXTO2+'              TOTAL DOS SERVICOS:   '+#15+#27#71+#20+TEXTO3);

   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');


   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('ACRESCIMO').asFLOAT),12,' ','E');
   TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('TOTAL').asFLOAT),12,' ','E');

   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DA O.S.:    '+TEXTO1+'      DESCONTO:   '+TEXTO2+'    ACRESCIMO: '+TEXTO3+'        TOTAL DA O.S.:   '+#18+#27#71+#20+TEXTO4);
   if frmmodulo.qros.FieldByName('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'-------------------FATURAMENTO-----------------------|');
     Writeln(arquivo,#15+#27#72+#20,'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

     if frmOS_Auto.BCANCELAR.Caption = 'Fechar' then
     begin
       frmmodulo.qrcontasreceber.close;
       frmmodulo.qrcontasreceber.sql.clear;
       frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'s'' order by codigo');
       frmmodulo.qrcontasreceber.open;
       frmmodulo.qrcontasreceber.First;
       i := 1;
       while not frmmodulo.qrcontasreceber.eof do
       begin


        writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(inttostr(i),3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E')+' |');
         i := i + 1;
         frmmodulo.qrcontasreceber.next;
       end;



     end
     else
     begin
       frmos_auto.qros_contasreceber.First;
       while not frmos_auto.qros_contasreceber.eof do
       begin
         writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmos_auto.qros_contasreceber.fieldbyname('valor').asfloat),10,' ','E')+' |');
         frmos_auto.qros_contasreceber.next;
       end;
     end;
   end
   else
   begin
     TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_DINHEIRO').asFLOAT),12,' ','E');
     TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CHEQUEAV').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_CHEQUEap').asFLOAT),12,' ','E');
     TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CARTAOCRED').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_Cartaodeb').asFLOAT),12,' ','E');
     writeln(arquivo,#15+#27#72+#20,'Dinheiro.....: '+texto1);
     writeln(arquivo,#15+#27#72+#20,'Cheque.......: '+texto2);
     writeln(arquivo,#15+#27#72+#20,'Cartao.......: '+texto3);
   end;
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
   writeln(arquivo,'');
   writeln(arquivo,'');
   writeln(arquivo,'');
   v := v - 1;
   end;
   writeln(arquivo,#12);


   closefile(arquivo);
  end;
end;

procedure Tfrmos_impressao_auto.FormulrioContnuoCartaPersonalizado1Click(
  Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN


   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,20,' ','D')+#15+#27#72+#20+'  '+frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,25,' ','D')+'                                                         Data..: '+frmmodulo.qros.fieldbyname('data').asstring);
   writeln(arquivo,#27#80+#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cidade+' - CEP '+emitente_cep,105,' ','D')+'              Hora..:  '+timetostr(time));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'O R D E M   D E  S E R V I C O   No. '+#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(frmmodulo.qros.fieldbyname('codigo').asstring,6,' ','D')+#15+#27#72+#20+'                    '+frmprincipal.Texto_Justifica('Atendente: '+frmmodulo.qros.fieldbyname('atendente').asstring,46,' ','D')+'        '+frmprincipal.Texto_Justifica('Tipo..: '+frmmodulo.qros.fieldbyname('tipo').asstring,15,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,6,'0','E')+' '+frmprincipal.texto_justifica(FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                              frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+
                                                                              frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+
                                                                              frmmodulo.qrcliente.fieldbyname('uf').asstring+
                                                                              '  CEP '+frmmodulo.qrcliente.fieldbyname('cep').asstring,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('celular').asstring+' / '+
                                                                              frmmodulo.qrcliente.fieldbyname('telefone2').asstring+'        CPF/CNPJ: '+
                                                                              frmmodulo.qrcliente.fieldbyname('cpf').asstring+'      RG/IE: '+
                                                                              frmmodulo.qrcliente.fieldbyname('rg').asstring  ,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Solicitan.: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('solicitante').asstring,115,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Tipo de Atendimento.: '+frmmodulo.qros.fieldbyname('atendimento').asstring);
   writeln(arquivo,#27#80+#15+#27#72+#20,'Observacoes/Inform..: '+frmos.eobs.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'Tecnico: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('detectado_tecnico').asstring,25,' ','D')+'  Setor: '+frmprincipal.texto_justifica(frmmodulo.qros.fieldbyname('setor').asstring,30,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Intervencoes: '+frmos.eintervencao.text);
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'');
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'CODIGO | DESCRICAO DO SERVICO                     | COMPLEMENTO                              |   VALOR - R$ | TECNICO                    ');
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');



   i := 1;
   frmos.qros_servico.refresh;
   frmos.qros_servico.First;
   while not frmos.qros_servico.Eof do
   begin
     texto1 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codservico').asstring,6,'0','E');
     texto2 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring,40,' ','D');
     texto3 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('complemento').asstring,40,' ','D');
     texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',frmos.qros_servico.fieldbyname('valor').asFLOAT),12,' ','E');
     texto5 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codtecnico').asstring,6,'0','E');
     texto6 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('tecnico').asstring,20,' ','D');
     writeln(arquivo,#15+#27#72+#20,texto1+' | '+texto2+' | '+texto3+' | '+texto4+' | '+texto5+' '+TEXTO6);
     i := i + 1;
     frmos.qros_servico.Next;
   end;
   while i < 27 do
   BEGIN
       writeln(arquivo,#15+#27#72+#20,'       |                                          |                                          |              |                            ');
       I := I + 1;
   END;
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');
   TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_SUBTOTAL').asFLOAT),12,' ','E');
   TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_DESCONTO').asFLOAT),12,' ','E');
   TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('SERVICO_TOTAL').asFLOAT),12,' ','E');
   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS SERVICOS:   '+TEXTO1+'                DESCONTO S/ SERVICOS:   '+TEXTO2+'              TOTAL DOS SERVICOS:   '+#15+#27#71+#20+TEXTO3);
   writeln(arquivo,#15+#27#72+#20,'-----------------------------------------------TOTALIZACAO DA ORDEM DE SERVICO-----------------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'SUBTOTAL DOS O.S.:   '+TEXTO1+'      DESCONTO:   '+TEXTO2+'    ACRESCIMO: '+TEXTO3+'      TOTAL DA O.S.:   '+#27#77+#15+#27#71+#14+TEXTO4);
   writeln(arquivo,#27#80+#15+#27#72+#20,'-----------------------------------------------------------------------------------------------------------------------------------------');


   if frmmodulo.qros.FieldByName('meio_crediario').asfloat <> 0 then
   begin
     Writeln(arquivo,#27#80+#15+#27#72+#20,'-------------------FATURAMENTO-----------------------|');
     Writeln(arquivo,#27#80+#15+#27#72+#20,'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

     if frmos.BCANCELAR.Caption = 'Fechar' then
     begin
       frmmodulo.qrcontasreceber.close;
       frmmodulo.qrcontasreceber.sql.clear;
       frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'s'' order by codigo');
       frmmodulo.qrcontasreceber.open;
       frmmodulo.qrcontasreceber.First;
       i := 1;
       while not frmmodulo.qrcontasreceber.eof do
       begin


        writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(inttostr(i),3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat),10,' ','E')+' |');
         i := i + 1;
         frmmodulo.qrcontasreceber.next;
       end;



     end
     else
     begin
       frmos.qros_contasreceber.First;
       while not frmos.qros_contasreceber.eof do
       begin
         writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                        frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                        frmprincipal.texto_justifica(formatfloat(mascara_valor,frmos.qros_contasreceber.fieldbyname('valor').asfloat),10,' ','E')+' |');
         frmos.qros_contasreceber.next;
       end;
     end;
   end
   else
   begin
     TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_DINHEIRO').asFLOAT),12,' ','E');
     TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CHEQUEAV').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_CHEQUEap').asFLOAT),12,' ','E');
     TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',FRMMODULO.qros.fieldbyname('MEIO_CARTAOCRED').asFLOAT+FRMMODULO.qros.fieldbyname('MEIO_Cartaodeb').asFLOAT),12,' ','E');
     writeln(arquivo,#27#80+#15+#27#72+#20,'Dinheiro.....: '+texto1);
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cheque.......: '+texto2);
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cartao.......: '+texto3);

   end;
    writeln(arquivo,#15+#27#72+#20,'---------------------------------------------  ------------Assinatura do Tecnico-----------  -----------Assinatura do Cliente------------');
    WRITELN(ARQUIVO,#12);
    vias := vias - 1;
   end;

   closefile(arquivo);

end;

end.





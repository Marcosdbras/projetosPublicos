unit ecfserver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, RXShell, Menus, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Collection,
  TFlatPanelUnit;

type
  Tfrmecfserver = class(TForm)
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    Timer1: TTimer;
    ECFServer101: TMenuItem;
    N1: TMenuItem;
    tempo_ecf: TTimer;
    Conexao: TZConnection;
    qrecf_comando: TZQuery;
    qrecf_item: TZQuery;
    qrconfig: TZQuery;
    ConexaoLocal: TZConnection;
    procedure Fechar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure tempo_ecfTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
        function tiraacento ( str: String ): String;
  end;

var
  frmecfserver: Tfrmecfserver;
  H : THandle;
  i : integer;
  pausa : boolean;
  NUMERO_CUPOM : STRING;

implementation

uses ecf, modulo, principal;

{$R *.dfm}
function tfrmecfserver.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;
function tfrmecfserver.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;



procedure Tfrmecfserver.Fechar1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfrmecfserver.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if CanClose then
    CanClose := false;
    h := FindWindow(nil,'ECFServer');
    ShowWindow(h,SW_HIDE);
    RxTrayIcon1.Active := true;
    hide;
end;

procedure Tfrmecfserver.RxTrayIcon1DblClick(Sender: TObject);
begin
    timer1.Enabled := false;
    show;
    H := FindWindow(nil,'ECFServer');
    ShowWindow(h,SW_RESTORE);
    RxTrayIcon1.Active := false;
end;

procedure Tfrmecfserver.tempo_ecfTimer(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
produto:string;
begin
  if not pausa then
  begin
  qrecf_comando.Refresh;
  if qrecf_comando.RecordCount > 0 then
  begin

    pausa := true;
    RxTrayIcon1.Animated := TRUE;
    if qrecf_comando.FieldByName('comando').asstring = 'LEITURAX' then
    begin
      ecf_leitura_x(ecf_modelo);
      qrecf_comando.Delete;
      Conexao.Commit;
      pausa := false;
      RxTrayIcon1.Animated := FALSE;
      EXIT;
    end;

    if qrecf_comando.FieldByName('comando').asstring = 'ABRE_CNFV' then
    begin
      ecf_abre_CNFV(ECF_MODELO,QRECF_COMANDO.FIELDBYNAME('CLIENTE').ASSTRING,QRECF_COMANDO.FIELDBYNAME('DINHEIRO').ASSTRING,NUMERO_CUPOM);
      qrecf_comando.Delete;
      Conexao.Commit;
      pausa := false;
      RxTrayIcon1.Animated := FALSE;
      EXIT;
    end;
    if qrecf_comando.FieldByName('comando').asstring = 'USA_CNFV' then
    begin
      ecf_USA_CNFV(ECF_MODELO,qrecf_comando.FIELDBYNAME('CLIENTE').ASSTRING);
    end;
    if qrecf_comando.FieldByName('comando').asstring = 'FECHA_CNFV' then
    begin
      ecf_fecha_CNFV(ECF_MODELO);
      qrecf_comando.Delete;
      Conexao.Commit;
      pausa := false;
      RxTrayIcon1.Animated := FALSE;
      EXIT;
    end;



    if qrecf_comando.FieldByName('comando').asstring = 'CANCELARCUPOM' then
    begin
      ecf_cancela_cupom(ecf_modelo,'');
      qrecf_comando.Delete;
      Conexao.Commit;
      pausa := false;
      RxTrayIcon1.Animated := FALSE;
      EXIT;
    end;


    if qrecf_comando.FieldByName('comando').asstring = 'VENDA' then
    begin
      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then
      begin
        qrecf_item.Close;
        QRECF_ITEM.SQL.CLEAR;
        qrecf_item.sql.add('delete from c000073 where numero = '''+qrecf_comando.fieldbyname('numero').asstring+'''');
        qrecf_item.execsql;
        qrecf_comando.Delete;
        conexao.commit;
        pausa := false;
        RxTrayIcon1.Animated := FALSE;
        exit;
      end;
      NUMERO_CUPOM := ecf_numero_cupom(ECF_MODELO);

      qrecf_item.Close;
      QRECF_ITEM.SQL.CLEAR;
      qrecf_item.sql.add('select * from c000073 where numero = '''+qrecf_comando.fieldbyname('numero').asstring+'''');
      qrecf_item.open;
      qrecf_item.First;

      WHILE QRECF_ITEM.RECORDCOUNT <> 0 DO
      BEGIN
         ecf_vende_item_completo(ecf_modelo,qrecf_item.fieldbyname('coDPRODUTO').asstring,
                                  frmprincipal.RemoveAcentos(qrecf_item.fieldbyname('produto').asstring),
                                  qrecf_item.fieldbyname('ALIQUOTA').asstring,
                                  qrecf_item.fieldbyname('VALOR').asfloat,
                                  qrecf_item.fieldbyname('QTDE').asfloat,
                                  qrecf_item.fieldbyname('desconto').asfloat,
                                  qrecf_item.fieldbyname('acrescimo').asfloat,
                                  qrecf_item.fieldbyname('unidade').asstring,
                                  0) ;

        qrecf_item.DELETE;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := qrecf_comando.fieldbyname('desconto').asfloat - qrecf_comando.fieldbyname('acrescimo').asfloat;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
      if qrecf_comando.fieldbyname('dinheiro').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',qrecf_comando.fieldbyname('dinheiro').asfloat) = 'ERRO' then exit;
      end;
      if qrecf_comando.fieldbyname('chequeav').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',qrecf_comando.fieldbyname('chequeav').asfloat) = 'ERRO' then exit;
      end;
      if qrecf_comando.fieldbyname('chequeap').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',qrecf_comando.fieldbyname('chequeap').asfloat) = 'ERRO' then exit;
      end;
      if qrecf_comando.fieldbyname('cartaocred').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',qrecf_comando.fieldbyname('cartaocred').asfloat) = 'ERRO' then exit;
      end;
      if qrecf_comando.fieldbyname('cartaodeb').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',qrecf_comando.fieldbyname('cartaodeb').asfloat) = 'ERRO' then exit;
      end;
      if qrecf_comando.fieldbyname('PROMISSORIA').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',qrecf_comando.fieldbyname('PROMISSORIA').asfloat) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      qrconfig.open;
      if qrconfig.fieldbyname('ramo_atividade').asinteger = 4 then
      begin
        if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+qrecf_comando.fieldbyname('CLIENTE').asstring,47,' ','D')+#10+
                                             frmprincipal.Texto_Justifica('ENDERECO: '+qrecf_comando.fieldbyname('endereco').asstring+' '+qrecf_comando.fieldbyname('cidade').asstring,47,' ','D')+#10+
                                             frmprincipal.Texto_Justifica('CPF/CNPJ: '+qrecf_comando.fieldbyname('cpf').asstring+'  VD: '+qrecf_comando.fieldbyname('VENDEDOR').asstring,47,' ','D')+#10+
                                             frmprincipal.Texto_Justifica('CONVENIO: '+qrecf_comando.fieldbyname('CONVENIO').asstring,47,' ','D')+#10+
                                             ''+#10+
                                             ''+#10+
                                             '----------------Assinatura----------------------') = 'ERRO' THEN EXIT;
      end
      else
      begin
        if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+qrecf_comando.fieldbyname('CLIENTE').asstring,47,' ','D')+#10+
                                             frmprincipal.Texto_Justifica('ENDERECO: '+qrecf_comando.fieldbyname('endereco').asstring+' '+qrecf_comando.fieldbyname('cidade').asstring,47,' ','D')+#10+
                                             frmprincipal.Texto_Justifica('CPF/CNPJ: '+qrecf_comando.fieldbyname('cpf').asstring+'  VD: '+qrecf_comando.fieldbyname('VENDEDOR').asstring,47,' ','D')+#10+
                                             '------------------------------------------------'+#10+
                                             '            Obrigado! Volte Sempre!             ') = 'ERRO' THEN EXIT;
      end;
      
      qrecf_comando.Delete;
      Conexao.Commit;
      pausa := false;
      RxTrayIcon1.Animated := FALSE;
      EXIT;
    end;
  end;


  end;
end;

procedure Tfrmecfserver.FormCreate(Sender: TObject);
var txt : textfile;
entrada : string;
ARQUIVO:STRING;
adi, adih, nomecfg : string;
begin
  timer1.Enabled := true;
  conexao.connected       := false;
  conexaolocal.Connected := false;
  nomecfg:=extractfilepath(application.ExeName)+'cfg\config.ini';
  assignfile(txt,nomecfg);
  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
    if copy(entrada,1,7) = 'ecf-001' then conexao.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'ecf-002' then conexao.hostname := trim(copy(entrada,9,50));
    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));

  end;
  conexao.Connected       := true;
  conexaolocal.Connected := true;

  qrconfig.Open;
  ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;


end;

procedure Tfrmecfserver.Timer1Timer(Sender: TObject);
begin
  label1.Caption := 'ABRINDO SCRIPT SQL';
  APPLICATION.ProcessMessages;
  qrecf_comando.close;
  qrecf_comando.sql.clear;
  qrecf_comando.sql.add('select * from c000072 ORDER BY SEQUENCIA');
  qrecf_comando.Open;
  label1.caption := 'CONECTANDO-SE AO ECF: "'+ECF_MODELO+'"';
  APPLICATION.ProcessMessages;
  IF ecf_ligada(ECF_modelo) = 'ERRO' THEN
  BEGIN
    IF APPLICATION.MESSAGEBOX('ECF não econtrada! Deseja fazer nova tentativa?','Atenção',mb_yesno+mb_iconwarning) = idyes then
    begin
        IF ecf_ligada(ECF_modelo) = 'ERRO' THEN
        begin
          APPLICATION.MESSAGEBOX('Não foi possível se conectar ao ECF! Favor verificar as conexões!','Erro',mb_ok+mb_iconerror);
          application.Terminate;
        end;
    end
    else
    begin
      application.Terminate;
    end;
  END;
  label1.caption := 'CONECTADO ECF - '+ECF_MODELO;
  APPLICATION.ProcessMessages;
  timer1.Enabled := false;
  close;
  PAUSA := FALSE;
  tempo_ecf.Enabled := true;
end;

end.

unit ecf_registro60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, ComCtrls, Buttons, Mask, ExtCtrls,
  RzPanel, RzRadGrp, DB, MemDS, VirtualTable, Grids, DBGrids, RzDBGrid;

   type
        Base = record
        Sequencial: char;
        Tarefa: array [0..1] of char;
        Tipo: char;
    end;

  type
        RespostaECF = record
        Sequencial: char;
        Tarefa: array [0..1] of char;
        Tipo: char;
        mensagem: array [0..3] of char;
        operacional: char;
        documento: char;
        sinalizadores: array [0..4] of char;
        adicional: array [0..79] of char;
    end;

  type
        StatusECF = record
        Sequencial: char;
        Tarefa: array [0..1] of char;
        Tipo: char;
        secao: array [0..3] of char;
        informacao: array [0..1188] of char;
    end;

    type
        TotalVenda = record
        Documento : Char;
        Status_venda: Char;
        COO : Array [0..5] of char;
        Itens_registrados : Array[0..3] of char;
        Venda_Bruta: Array[0..12] of char;
        Venda_Liquida: Array[0..12] of char;
        Total_a_pagar: Array[0..12] of char;
        Total_pago: Array[0..12] of char;
        Troco: Array[0..12] of char;
end;

type
        tipo_I1 = record
        marca : array[0..20] of char;
        modelo: array[0..20] of char;
        tipo  : array[0..7] of char;
        serie: array[0..21] of char;
        firmware: array[0..8] of char;
        protocolo:Char;
end;

type
        tipo_S1 = record
        versao: array[0..3] of char;
        serie: array[0..21] of char;
        dt_inicializacao: array[0..10] of char;
        hr_inicializacao: array[0..9] of char;
        status: array[0..2] of char;
        capacidade:array[0..4] of char;
        PonteiroA:array[0..8] of char;
        PonteiroB:array[0..8] of char;
        modelo:array[0..20] of char;
        serie_ecf:array[0..21] of char;
        CNPJ:array[0..20] of char;
        IE:array[0..20] of char;
        IM:array[0..20] of char;
        dt_instalacao:array[0..10] of char;
        hr_instalacao:array[0..9] of char;
end;

  type
        OnLine = record
        Sequencial: char;
        Tarefa: array [0..1] of char;
        Tipo: char;
        controle: char;
        informacao: array [0..512] of char;
    end;

    Type Modal = array[0..19] of array [0..20] of char;
    Type aicms= array[0..15] of array [0..3] of char;


type
  Tfrmecf_registro60 = class(TForm)
    bconfirma: TAdvGlowButton;
    ProgressBar1: TProgressBar;
    Barra: TStatusBar;
    babrir: TBitBtn;
    Tempo: TMaskEdit;
    Timeout: TLabel;
    LabelPorta: TLabel;
    Label13: TLabel;
    TextoOnLine: TRichEdit;
    Memo1: TMemo;
    edataINI: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    edataFIM: TEdit;
    RzDBGrid1: TRzDBGrid;
    qrreducao: TVirtualTable;
    qrreducaodata: TDateField;
    qrreducaocoo: TStringField;
    qrreducaoaliquota1: TFloatField;
    qrreducaobase1: TFloatField;
    qrreducaovalor1: TFloatField;
    qrreducaoaliquota2: TFloatField;
    qrreducaobase2: TFloatField;
    qrreducaovalor2: TFloatField;
    qrreducaoaliquota3: TFloatField;
    qrreducaobase3: TFloatField;
    qrreducaovalor3: TFloatField;
    qrreducaoaliquota4: TFloatField;
    qrreducaobase4: TFloatField;
    qrreducaovalor4: TFloatField;
    qrreducaoaliquota5: TFloatField;
    qrreducaobase5: TFloatField;
    qrreducaovalor5: TFloatField;
    dsreducao: TDataSource;
    qrreducaocoo_inicial: TStringField;
    procedure bconfirmaClick(Sender: TObject);
    procedure babrirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edataINIExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CapturaStatus;
    function MensagemError(CodError:string):String;
    Function MandaComando:Boolean;
    function ObtemResposta:Boolean;
    { Public declarations }
  end;

var
  frmecf_registro60: Tfrmecf_registro60;
  reducaoz : string;

  Comando : array[0..512] of Char;      // Buffer de transmissao
  Resposta:array[0..1200] of Char;       // Buffer de recepcao
  Conteudo: RespostaECF;        // Retorno dos comandos (exceto status)
  Status: StatusECF;            // Retorno dos comandos de Status
  LeituraOnLine:Online;         // Retorno da captura de texto online
  retorno:longint;              // Retorno das funcoes ECFWriteSerial e ECFReadSerial
  //pagamento:Modal;              // legendas dos meios de pagamento
  StatusDocumento:TotalVenda;   // Totais do cupom fiscal
  StatusModelo:Tipo_I1;      // Dados do modelo de ECF + versão etc
  StatusMFD:Tipo_S1;         // Dados da MFD: serie, capacidade etc
  aliquota_icms, ALiquota_Iss:aicms;          // aliquotas de icms
  Header:Base;
  //capacidadeb,consumob, consumop: real; // variaveis para apurar o % de consumo da MFD

  Function ECFOpenSerial(Numero,Velocidade,Timeout,log, mostra:Integer; mensagem:string): longint; Stdcall; External 'SerialMFD.dll';
  Function ECFWriteSerial(Comando:Pchar;Tamanho:Longint;mensagem:String):longint; Stdcall;External 'SerialMFD.dll';
  Function ECFReadSerial(Status:Pchar;Tamanho:longint;mensagem:String):longint; Stdcall;External 'SerialMFD.dll';
  procedure ECFCloseSerial; Stdcall;External 'SerialMFD.dll';


implementation

uses modulo,ecf, principal, mensagem_inventario, progresso, unMensagem;

{$R *.dfm}

procedure Tfrmecf_registro60.bconfirmaClick(Sender: TObject);
VAR
  complemento: string;

  TXT : TEXTFILE;
  TEXTO, cnpj_cpf, ie_rg : STRING;
  x : integer;
  hverao:char;
  vcoo,vcoo_inicial : string;

begin

  Complemento:='|TXT|CPWIN';

  StrPcopy(Comando,'*45|'+edataINI.text+'|'+edataFIM.Text+complemento); // Reprodução MFD

  MandaComando;

  Memo1.Text := '';

  textoonline.Lines[0];

  reducaoz := '';

  qrreducao.open;

  for x:= 0 to TextoOnLine.lines.count-1 do
    begin
      IF (copy(TextoOnLine.Lines[x],48,4)='COO:') then
        begin
          vcoo := copy(TextoOnLine.Lines[x],52,6);
          //showmessage(vcoo);
        end;
      //else
        //vcoo := '';

      if copy(TextoOnLine.Lines[x],1,17) = 'MOVIMENTO DO DIA:' then
        begin
          reducaoz := '*';
          qrreducao.insert;
        end;

      if copy(TextoOnLine.Lines[x],1,1) <> '' then
        begin
          if reducaoz = '*' then
            begin
              memo1.lines.Add(TextoOnLine.Lines[x]);

              IF (copy(TextoOnLine.Lines[x],1,17)='MOVIMENTO DO DIA:') then
                begin
                  //showmessage(copy(TextoOnLine.Lines[x],48,10));
                  qrreducaodata.Asstring := copy(TextoOnLine.Lines[x],48,10);
                end;

              if qrreducaocoo.Asstring = '' then
                begin
                  qrreducaocoo_inicial.Asstring := vcoo_inicial;
                  qrreducaocoo.Asstring := vcoo;
                end;

              IF (copy(TextoOnLine.Lines[x],2,5)='07,00') then
                begin
                  qrreducaoaliquota1.asfloat := strtofloat(copy(TextoOnLine.Lines[x],2,5));
                  qrreducaobase1.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],20,15));
                  qrreducaovalor1.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],45,15));
                end;
              IF (copy(TextoOnLine.Lines[x],2,5)='12,00') then
                begin
                  qrreducaoaliquota2.asfloat := strtofloat(copy(TextoOnLine.Lines[x],2,5));
                  qrreducaobase2.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],20,15));
                  qrreducaovalor2.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],45,15));
                end;
              IF (copy(TextoOnLine.Lines[x],2,5)='17,00') then
                begin
                  qrreducaoaliquota3.asfloat := strtofloat(copy(TextoOnLine.Lines[x],2,5));
                  qrreducaobase3.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],20,15));
                  qrreducaovalor3.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],45,15));
                end;
              IF (copy(TextoOnLine.Lines[x],2,5)='25,00') then
                begin
                  qrreducaoaliquota4.asfloat := strtofloat(copy(TextoOnLine.Lines[x],2,5));
                  qrreducaobase4.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],20,15));
                  qrreducaovalor4.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],45,15));
                end;
              IF (copy(TextoOnLine.Lines[x],2,5)='27,00') then
                begin
                  qrreducaoaliquota5.asfloat := strtofloat(copy(TextoOnLine.Lines[x],2,5));
                  qrreducaobase5.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],20,15));
                  qrreducaovalor5.asstring :=  frmprincipal.formata_valor(copy(TextoOnLine.Lines[x],45,15));
                end;

            end;
          if copy(TextoOnLine.Lines[x],1,4) = 'FAB:' then
            begin
              reducaoz := ' ';
              if qrreducao.State = dsinsert then qrreducao.post;
            end;
        end;
        //label1.Caption := inttostr(x);


    Application.ProcessMessages;
  end;

  Memo1.Lines[0];

  {
  TextoOnLine.Text := '';
  for x:= 0 to memo1.lines.count-1 do
    begin
    //
    //  if ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,7)) = '0700' ) or
    //     ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,7)) = '1200' ) or
    //     ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,7)) = '1700' ) or
    //     ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,7)) = '2500' ) or
    //     ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,7)) = '2700' ) then
    //
    //  if ( frmprincipal.somenteNumero(copy(Memo1.Lines[x],1,1)) <> ' ' ) then
    //
        TextoOnLine.Lines.Add(memo1.Lines[x]);
        Application.ProcessMessages;
    end;
   }

  textoonline.Lines[0];


  frmmodulo.qrsintegra_r60.close;
  frmmodulo.qrsintegra_r60.sql.clear;
  frmmodulo.qrsintegra_r60.SQL.Add('select * from sintegra_reg60 where ID IS NOT NULL');
  frmmodulo.qrsintegra_r60.SQL.Add('and data_emissao = :vdat');
  frmmodulo.qrsintegra_r60.Params.ParamByName('vdat').AsDate := date;
  frmmodulo.qrsintegra_r60.Open;

  if frmmodulo.qrsintegra_r60.RecordCount = 0 then
    begin
      showmessage('informação invalida...');
      exit;
    end;

  Application.ProcessMessages;

  frmmodulo.qrsintegra_r60.edit;


  for x:= 0 to memo1.lines.count-1 do
    begin

      if copy(memo1.Lines[x],1,1) <> '' then
        begin

          IF (copy(memo1.Lines[x],48,4)='COO:') then
            begin
              //showmessage(copy(memo1.Lines[x],52,6));
              frmmodulo.qrsintegra_r60.FieldByName('COO').asstring := copy(memo1.Lines[x],52,6);
            end;

           IF (copy(memo1.Lines[x],2,5)='07,00') then
            begin
              frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(memo1.Lines[x],2,5));
              frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],20,15));
              frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],45,15));
            end;
           IF (copy(memo1.Lines[x],2,5)='12,00') then
            begin
              frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(memo1.Lines[x],2,5));
              frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],20,15));
              frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],45,15));
            end;
           IF (copy(memo1.Lines[x],2,5)='17,00') then
            begin
              frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(memo1.Lines[x],2,5));
              frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],20,15));
              frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],45,15));
            end;
          IF (copy(memo1.Lines[x],2,5)='25,00') then
            begin
              frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(memo1.Lines[x],2,5));
              frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],20,15));
              frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],45,15));
            end;
          IF (copy(memo1.Lines[x],2,5)='27,00') then
            begin
              frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(memo1.Lines[x],2,5));
              frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],20,15));
              frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  frmprincipal.formata_valor(copy(memo1.Lines[x],45,15));
            end;

          IF (copy(memo1.Lines[x],1,4)='FAB:') then
            //frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := copy(memo1.Lines[x],6,20);

          IF (copy(memo1.Lines[x],1,5)='CNPJ:') then
            //frmmodulo.qrsintegra_r60.FieldByName('CNPJ').asstring := frmprincipal.somentenumero(copy(memo1.Lines[x],7,18));

          IF (copy(memo1.Lines[x],1,3)='IE:') then
            //frmmodulo.qrsintegra_r60.FieldByName('IE').asstring := frmprincipal.somentenumero(copy(memo1.Lines[x],5,14));

          IF (copy(memo1.Lines[x],1,18)='CANCELAMENTO ICMS:') then
            frmmodulo.qrsintegra_r60.FieldByName('CANCELAMENTO').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          IF (copy(memo1.Lines[x],1,14)='DESCONTO ICMS:') then
            frmmodulo.qrsintegra_r60.FieldByName('DESCONTO').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          IF (copy(memo1.Lines[x],1,15)='Total de ISSQN:') then
            frmmodulo.qrsintegra_r60.FieldByName('ISSQN').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          IF (copy(memo1.Lines[x],1,19)='VENDA BRUTA DIÁRIA:') then
            frmmodulo.qrsintegra_r60.FieldByName('VALOR_VENDA_BRUTA').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          IF (copy(memo1.Lines[x],1,18)='TOTALIZADOR GERAL:') then
            frmmodulo.qrsintegra_r60.FieldByName('VALOR_TOTAL_GERAL').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          IF (copy(memo1.Lines[x],1,4)='F1 =') then
             frmmodulo.qrsintegra_r60.FieldByName('SUBSTITUICAO_TRIBUTARIA').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));
          IF (copy(memo1.Lines[x],1,4)='I1 =') then
             frmmodulo.qrsintegra_r60.FieldByName('ISENTO').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));
          IF (copy(memo1.Lines[x],1,4)='N1 =') then
             frmmodulo.qrsintegra_r60.FieldByName('NAO_INCIDENCIA').asstring := frmprincipal.formata_valor(copy(memo1.Lines[x],40,18));

          //frmmodulo.qrconfig.open;
          //frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := frmmodulo.qrconfig.fieldbyname('ECF_CAIXA').asstring;

          IF (copy(memo1.Lines[x],1,17)='MOVIMENTO DO DIA:') then
            //frmmodulo.qrsintegra_r60.FieldByName('DATA_EMISSAO').asstring := copy(memo1.Lines[x],47,10);

          frmmodulo.qrsintegra_r60.FieldByName('MODELO_DOC').asstring := '2D';
          //frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_INICIO').asstring := texto;

          IF (copy(memo1.Lines[x],1,25)='Contador de Cupom Fiscal:') then
            //frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_FIM').asinteger := strtoint(copy(memo1.Lines[x],40,20));

          IF (copy(memo1.Lines[x],1,23)='Contador de Reduções Z:') then
            //frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_Z').asinteger := strtoint(copy(memo1.Lines[x],40,20));

          IF (copy(memo1.Lines[x],1,33)='Contador de Reinício de Operação:') then
            //frmmodulo.qrsintegra_r60.FieldByName('CONTADOR_REINICIO').asinteger := strtoint(copy(memo1.Lines[x],40,20));

          IF (copy(memo1.Lines[x],1,23)='Cupom Fiscal Cancelado:') then
            begin
              showmessage(copy(memo1.Lines[x],54,4));
              frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_CANCELAMENTO').asinteger := strtoint(copy(memo1.Lines[x],54,4));
            end;

       end;
      Application.ProcessMessages;
  end;

  frmmodulo.qrsintegra_r60.FieldByName('valor_venda_liquida').AsFloat :=
  frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat -
  frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat -
  frmmodulo.qrsintegra_r60.FieldByName('desconto').AsFloat +
  frmmodulo.qrsintegra_r60.FieldByName('issqn').AsFloat ;

  frmmodulo.qrsintegra_r60.post;

  qrreducao.insert;

  frmmodulo.Conexao.Commit;

end;

function Tfrmecf_registro60.MandaComando:Boolean;
begin
        retorno:= -3;
        while retorno = -3 do
        begin

                retorno := ECFWriteSerial(Comando,Strlen(Comando),'serial');
                if retorno = -3 then ShowMessage('Aguarde ...');
        end;

        if retorno <> 0 then
          begin
                ShowMessage('Erro no envio do comando');
                Result:=False;
          end
        else
          Result:=ObtemResposta();

end;

function Tfrmecf_registro60.MensagemError(CodError:string):String;
var cod:integer;
begin
        cod := StrToInt(CodError);

        case Cod of
        00: MensagemError:=CodError+'-'+'Comando efetuado com sucesso!';
        02: MensagemError:=CodError+'-'+'Não há documento para cancelar.';
        04: MensagemError:=CodError+'-'+'Pagamento não finalizado.';
        06: MensagemError:=CodError+'-'+'Indicado Item inválido.';
        07: MensagemError:=CodError+'-'+'Item já cancelado.';
        08: MensagemError:=CodError+'-'+'Apurado total igual a zero.';
        15: MensagemError:=CodError+'-'+'Cancelamento de acréscimo no subtotal';
        21: MensagemError:=CodError+'-'+'Alíquota não programada.';
        23: MensagemError:=CodError+'-'+'Erro de Sintaxe!';
        31: MensagemError:=CodError+'-'+'Faixa inválida!';
        42: MensagemError:=CodError+'-'+'Excede o valor do item.';
        51: MensagemError:=CodError+'-'+'Não foi possivel acumulação em um dos totalizadores';
        53: MensagemError:=CodError+'-'+'Impossibilita o cancelamento.';
        56: MensagemError:=CodError+'-'+'Iniciando Intervenção Técnica.';
        57: MensagemError:=CodError+'-'+'Encerrando Intervenção Técnica.';
        58: MensagemError:=CodError+'-'+'Comando ou operação inválida!';
        59: MensagemError:=CodError+'-'+'Dia encerrado!';
        60: MensagemError:=CodError+'-'+'É necessário emitir Redução Z!';
        61: MensagemError:=CodError+'-'+'O ECF está em Modo Intervenção Técnica!';
        124: MensagemError:=CodError+'-'+'Tampa Aberta!';
        125: MensagemError:=CodError+'-'+'Sem papel!';
        126: MensagemError:=CodError+'-'+'Avançando papel!';
        127: MensagemError:=CodError+'-'+'Substituir bobina!';
        134: MensagemError:=CodError+'-'+'Transmissão via porta serial abortada.';
        216: MensagemError:=CodError+'-'+'Programar o relógio.';
        end;

end;

function Tfrmecf_registro60.ObtemResposta:Boolean;
var
  capturatexto:boolean;
begin
        reducaoz := '';
        FrmmensagemTEF := tFrmmensagemTEF.create(self);
        FrmmensagemTEF.Caption := 'ELPRO | SISCOM 7';
        FrmmensagemTEF.lblLinha4.Caption := 'Aguarde, Capturando Redução Z';

        Resposta:=#0; capturatexto:=false;
        CopyMemory(@Conteudo,@Resposta,94);
        CopyMemory(@Header,@Resposta,4);
        CopyMemory(@Status,@Resposta,515);
        while true do
        begin
                Resposta:=#0;
                CopyMemory(@LeituraOnLine,@Resposta,512);

                if not (copy(comando,2,2)='34') then
                  FrmmensagemTEF.Show;
                FrmmensagemTEF.Refresh;
                retorno := ECFReadSerial(Resposta,1200,'serial');
                if retorno = -1 then ShowMessage('Falha na comunicação')
                else if retorno = -2 then ShowMessage('Excedido o tamanho da resposta')
                else if retorno = -3 then break //Protocolo ocupado
                else if retorno > 0 then
                begin
                        CopyMemory(@Header,@Resposta,4);
                        if ( Header.Tarefa='00' ) and ( Header.Tipo='!' ) then // resposta de alteração de status
                        begin
                                CopyMemory(@Conteudo,@Resposta,retorno);
                                if Conteudo.Mensagem <> '0000' then showMessage(MensagemError(Conteudo.Mensagem))
                                else
                                FrmmensagemTEF.Close;
                                FrmmensagemTEF.Refresh;
                        end
                        else if (( Header.Tarefa='44' ) OR (Header.Tarefa = '45') ) and ( Header.Tipo='!' ) then // resposta de alteração de status
                        begin
                                CopyMemory(@Conteudo,@Resposta,retorno);
                                if (Conteudo.mensagem = '0228') then // inicio da transmissão do texto
                                        capturatexto:=true;

                                if (Conteudo.mensagem = '0217') then // percentual de processmento
                                begin
                                        ProgressBar1.visible:=true;
                                        ProgressBar1.position:=StrToInt(Copy(Conteudo.adicional,1,3));
                                        ProgressBar1.Refresh;
                                end

                        end
                        else if (( Header.Tarefa='44' ) OR (Header.Tarefa = '45') ) and ( Header.Tipo='>' ) then // resposta de alteração de status
                        begin
                                if capturatexto then begin
                                        CopyMemory(@LeituraOnLine,@Resposta,retorno);

                                        if ( copy(resposta,2,2) = '45' ) then
                                        //showmessage(resposta);

                                        //if ( copy(resposta,1,5) = '*45>3' ) or ( copy(resposta,1,5) = '*45>4' ) then
                                        //memo1.Lines.Add(LeituraOnLine.informacao);
                                        TextoOnLine.Text:= TextoOnLine.Text+LeituraOnLine.informacao;
                                        //frmprogresso.barra.Position := frmprogresso.barra.Position + 1;

                                        {
                                        FormTextoOnLine.Show;
                                        FormTextoOnLine.TextoOnLine.Text:= FormTextoOnLine.TextoOnLine.Text+LeituraOnLine.informacao;
                                        FormTextoOnLine.TextoOnLine.Refresh;
                                        }
                                end
                        end
                        else if ( Header.Tarefa='34') and ( Header.Tipo='+') then // Retorno de Status
                        begin
                                CopyMemory(@Conteudo,@Resposta,retorno);
                                Barra.Panels[3].Text:=MensagemError(Conteudo.mensagem);
                        end
                        else if Header.Tarefa='34' then // Retorno de Status
                        begin
                                CopyMemory(@Status,@Resposta,retorno);


                                if ( status.tipo='B')  and ( status.secao = '0004') then // legendas dos meios de pagamento
                                        CopyMemory(@Pagamento,@Status.Informacao,420)
                                else if ( status.tipo='D')  and ( status.secao = '0004') then // aliquotas de ICMS
                                        CopyMemory(@Aliquota_ICMS,@Status.Informacao,60)
                                else if ( status.tipo='E')  and ( status.secao = '0004') then // aliquotas de ISS
                                        CopyMemory(@Aliquota_ISS,@Status.Informacao,60)
                                else if ( status.tipo='L')  and ( status.secao = '0001') then // totais do Cupom em Emissão
                                        CopyMemory(@StatusDocumento,@Status.Informacao,77)
                                else if ( status.tipo='I')  and ( status.secao = '0001') then // totais do Cupom em Emissão
                                        CopyMemory(@StatusModelo,@Status.Informacao,77)
                                else if ( status.tipo='S')  and ( status.secao = '0001') then // totais do Cupom em Emissão
                                        CopyMemory(@StatusMFD,@Status.Informacao,190);
                        end
                        else
                        begin
                                CopyMemory(@Conteudo,@Resposta,retorno);
                                Barra.Panels[3].Text:=MensagemError(conteudo.mensagem);
                        end;
                end;
                if (Header.Tarefa= Copy(comando,2,2)) and ((Header.Tipo='+') or (Header.Tipo='-') ) then
                        Break
        end;
        FrmmensagemTEF.Close;
        FrmmensagemTEF.Refresh;

        ProgressBar1.visible:=false;
        if Header.Tipo='+' then Result := True
        else  begin
                showMessage('Erro: '+ Conteudo.Mensagem);
                ObtemResposta := False;
        end;


end;


procedure Tfrmecf_registro60.babrirClick(Sender: TObject);
var velocidade,tt, numporta: Integer;
begin

  textoonline.Clear;

  numporta:=1;
  velocidade:=9600;
  ECFCloseSerial;

  TT:=StrToInt(Tempo.Text);
  if ECFOpenSerial(numporta,velocidade,TT,1,1,'serial') <> 0 then
    begin
      ShowMEssage('Erro na Abertura da Porta!');
      LabelPorta.Caption:=' ';
    end
  else
    Begin
      LabelPorta.Caption:='Porta ABERTA =='+IntToSTr(numporta);
      //CapturaStatus;
    end;
end;

procedure Tfrmecf_registro60.CapturaStatus;
var i:integer; // variaveis para loop

begin
        Barra.Panels[2].Text:='Capturando informações do modelo';

        StrPCopy(Comando,'*34|I1');
        //if not MandaComando then exit;

        {
        memo1.Lines.Add('Marca: '+StatusModelo.marca);

        memo1.Lines.Add('Modelo: '+StatusModelo.modelo);
        memo1.Lines.Add('Tipo: '+StatusModelo.tipo);
        memo1.Lines.Add('No. de Série: '+StatusModelo.Serie);
        memo1.Lines.Add('Firmware: '+StatusModelo.firmware);
        memo1.Lines.Add('Protocolo: '+StatusModelo.protocolo);

        memo1.Lines.Add(' ');
        {
        Barra.Panels[2].Text:='Capturando informações da MFD';
        StrPCopy(Comando,'*34|S1');
        if not MandaComando then exit;


        //capacidadeb:=StrtoFloat(StatusMFD.Capacidade) * 1024 * 1024;
        //consumob:=StrToFloat(StatusMFD.PonteiroA)  + StrToFloat(StatusMFD.PonteiroB);
        //consumop:=(Consumob / Capacidadeb)*100;


        memo1.Lines.Add('MFD: '+StatusMFD.serie);
        memo1.Lines.Add('CNPJ: '+StatusMFD.CNPJ);
        memo1.Lines.Add('I.E.: '+StatusMFD.IE);
        memo1.Lines.Add('I.M.: '+StatusMFD.IM);
        memo1.Lines.Add(' ');
        memo1.Lines.Add('Capacidade: '+StatusMFD.capacidade+' MB');
        //memo1.Lines.Add('Consumo: '+floattostr(consumob)+' bytes ('+Formatfloat ('0.00',consumop)+' %)');

        {
        Barra.Panels[2].Text:='Capturando os meios de pagamento';
        StrPCopy(Comando,'*34|B4');
        if not MandaComando then exit;

        for i:=1 to 20 do EdPagamento.Items.Add(FormatFloat('00',i)+'-'+Pagamento[i-1]); // captura os meios de pagamento


        // Obtem as alíquotas programadas para ICMS
        Barra.Panels[2].Text:='Capturando as alíquotas de ICMS';
        StrPCopy(Comando,'*34|D4');
        if not MandaComando then exit;
        try
                for i:=1 to 15 do
                begin
                        EdTaxa2.Items.Add('T'+FormatFloat('00.00',StrtoFloat(aliquota_ICMS[i-1])/100)+'%'); // captura os meios de pagamento
                end
        except
        end;


        // Obtem as alíquotas programadas para ISS
        StrPCopy(Comando,'*34|E4');
        if not MandaComando then exit;
        try
                for i:=1 to 15 do
                begin
                        EdTaxa2.Items.Add('S'+FormatFloat('00.00',StrtoFloat(aliquota_ISS[i-1])/100)+'%'); // captura os meios de pagamento
                end
        except
        end;
        }
end;


procedure Tfrmecf_registro60.FormShow(Sender: TObject);
begin
  edataINI.Text := '01/'+copy(FormatDateTime('dd/mm/yyyy',now),4,7);
  edataFIM.Text := FormatDateTime('dd/mm/yyyy',now);

//  babrirClick(frmecf_registro60);
//  bconfirmaClick(frmecf_registro60);
end;

procedure Tfrmecf_registro60.edataINIExit(Sender: TObject);
begin
  //ecoo.Text := frmprincipal.zerarcodigo(ecoo.Text,6);
end;

procedure Tfrmecf_registro60.BitBtn1Click(Sender: TObject);
begin
  ecf_registro_60A(ecf_modelo);
  memo1.Text := '';
  memo1.Lines.LoadFromFile('\RETORNO.TXT');
  memo1.Lines[0];

end;

procedure Tfrmecf_registro60.BitBtn2Click(Sender: TObject);
var
  i : integer;
begin
  ecf_registro_60M(ecf_modelo);
  memo1.Text := '';
  memo1.Lines.LoadFromFile('\RETORNO.TXT');
  memo1.Lines[0];
end;

procedure Tfrmecf_registro60.BitBtn3Click(Sender: TObject);
begin
  ECFCloseSerial;
end;

procedure Tfrmecf_registro60.BitBtn4Click(Sender: TObject);
begin
  frmprincipal.GravaReducaoZ;
end;

end.

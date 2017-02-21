unit dllcompanytec;

interface

uses Windows;

Type
    teste=record
        v1:double;
        v2:double;
        bool:boolean;
        a:string[2];
        b:string[2];
        c:string[2];
        end;

Type
    Abast=record
        value           :boolean;
        total_dinheiro  :currency;
        total_litros    :double;
        PU              :currency;
        tempo           :string[8];
        canal           :string[2];
        data            :string[10];
        hora            :string[5];
        st_full         :string[55];
        registro        :integer;
        encerrante      :real;
        integridade     :boolean;
        checksum        :boolean;
        end;

Type
    AbastVB=record
        registro        :integer;
        value           :boolean;
        integridade     :boolean;
        checksum        :boolean;
        encerrante      :double;
        total_dinheiro  :double;
        total_litros    :double;
        PU              :double;
        tempo           :string;
        canal           :string;
        data            :string;
        hora            :string;
        st_full         :string;
        end;

Type
    AbastFid=record
        value           :boolean;
        total_dinheiro  :currency;
        total_litros    :double;
        PU              :currency;
        tempo           :string[8];
        canal           :string[2];
        data            :string[10];
        hora            :string[5];
        st_full         :string[75];
        registro        :integer;
        encerrante      :real;
        integridade     :boolean;
        checksum        :boolean;
        tag             :string[16];
        end;

Type
    Abast2=record
        value:string[1];
        total_dinheiro:string[6];
        total_litros:string[6];
        PU:string[4];
        tempo:string[8];
        canal:string[2];
        data:string[10];
        hora:string[5];
        st_full:string[55];
        registro:string[4];
        encerrante:string[10];
        integridade:string[1];
        checksum:string[1];
        end;

Type
    Abast3=record
        value:string[1];
        total_dinheiro:string[6];
        total_litros:string[6];
        PU:string[4];
        tempo:string[8];
        canal:string[2];
        data:string[10];
        hora:string[5];
        st_full:string[75];
        registro:string[4];
        encerrante:string[10];
        id:string[16];
        integridade:string[1];
        checksum:string[1];
        end;

Type
    IFid=record
        Value:boolean;
        Codigo:string[8];
        Endereco:string[2];
        Dia:string[2];
        Hora:string[2];
        Minuto:string[2];
        Mes:string[2];
        Registro:integer;
        Status:boolean;
        StFull:string[37];
        end;

Type
    VBOnLine=record
      bico:array [1..48] of string;
      volume:array [1..48] of double;
    end;

Type
    StFid=record
        Status:string[32];
        end;

Type StStatus2=record
    Posicao: array [1..48] of string[10];
    end;

Type
    stPPL=record
        Bico:string[2];
        PPL:string[4];
    end;

Type
    stEncerrante=record
        Bico:string[2];
        Encerrante:string[8];
    end;

type
    visualizacao=record
        stfull:string[250];
    end;

type
    StStatus=record
        value:string[100];
    end;
type
    Retorno=record
        value:string[100];
    end;

type
    Retorno2=record
        value:string[60];
    end;

Type
    Virgula=record
        ptotal:byte;
        ppu:byte;
        litragem:byte;
    end;
type
    info=record
        titulo:string[20];
        versao:string[5];
        data:string[10];
        autor:string[20];
    end;
    Error       =(ErroString,None,ErroCodBico,ErroCaracterModo,ErroTimeout,ErroResposta);
    StOptions   =(Livre,Pronta,Falha,Concluiu,Abastecendo,Bloqueada,SolicitaLib);
    MultiStatus =record
          Status:array [1..48] of StOptions;
    end;
    Online=record
          Litragem: array [1..48] of real;
          Bico: array [1..48] of string[2];
    end;
    Encerrante=record
          Bico:string[2];
          Valor:real;
    end;
    canal=record
          canal: array [1..48] of byte;
          PuAux: array [1..48] of double;
    end;

    Enc=record
        bico:string[2];
        tipo:string[1];
        valor:string[8];
    end;


{$IFNDEF COMPANYTEC}
Function InicializaSerial(np:byte): Boolean; stdcall;
Function InicializaSocket(ip:string): Boolean; stdcall;
Function AlteraPreco(bico:string;preco:double;decimais:byte):error; stdcall;
Function AutoLibera(bico:string):Error; stdcall;
Function AutorizaAbast(bico:string):Error; stdcall;
Function BloqueiaBico(bico:string):Error; stdcall;
Function CobAlteraPreco(a:PChar):error; stdcall;
Procedure CobLeEnc(var a:enc); stdcall;
Function CobLePPL(var a:PChar):error; stdcall;
Procedure CobLeStructSt(var ab:abast2);stdcall;
Procedure CobLeVis(var st:visualizacao);stdcall;
Function CobPreset(a:PChar):Error; stdcall;
Function CobSetClock(par:PChar):boolean; stdcall;
Function Comunica:boolean; stdcall;
Function ConsultaEncerrante(modo:char;bico:string):Encerrante;stdcall;
Function EnviaComando(comando:string;timeout:cardinal):Pchar;stdcall;
Procedure EscreveSerial(desc,comando:string);stdcall;
Procedure EscreveSocket(desc,comando:string);stdcall;
Function FechaSerial: DWORD; stdcall;
Function FechaSocket: boolean; stdcall;
Function FechaSerialVB: boolean; stdcall;
Function LeEvento(indice:integer):string; stdcall;
Function FidAciona(endereco:string;minutos,segundos:byte):integer; stdcall;
Function FidIdent:IFid; stdcall;
Procedure FidIncrementa; stdcall;
Function FidLeRegistro(nro:integer):PChar; stdcall;
Function FidModo(endereco:string;option:char):integer;stdcall;
Function FidSetClock(dia,hora,minuto:byte):integer;stdcall;
Function FidStatus:StFid; stdcall;
Procedure Incrementa; stdcall;
Function InicializaLogSerial(np:byte;LogFile:string):boolean; stdcall;
Function LeAbastecimento():abast; stdcall;
Function LeAbFix():abast; stdcall;
Function LePart(option:char):PChar; stdcall;
Function LePPL(bico:string):real; stdcall;
Function LeRegistro(NumReg:integer):abast; stdcall;
Function LeRegistroFid(NumReg:integer):abastFid; stdcall;
Function LeSerial(desc:string;timeout:cardinal):PChar; stdcall;
Function LeSocket(desc:string;timeout:cardinal):PChar; stdcall;
Function LeStatus():multistatus; stdcall;
Function LeStatusVB():StStatus2; stdcall;
Function LeSTEncerrante(modo:string;bico:string):PChar; stdcall;
Function LeStReduzida:PChar; stdcall;
Function LeStRegistro(NumReg:integer):PChar; stdcall;
Function LeStRegistroFid(NumReg:integer):PChar; stdcall;
Function LeStringAb(var resposta:PChar):PChar; stdcall;
Function LeStringAbVB:PChar; stdcall;
Function LeStructEncerrante(modo:string;bico:string):stEncerrante; stdcall;
Function LeStructPPL(bico:string):stPPL; stdcall;
Procedure LeStructSt(var ab:abast2); stdcall;
Function LeStStatus:StStatus; stdcall;
Function LeVisualizacao():OnLine; stdcall;
Procedure LimpaSerial;stdcall;
Function ParaBomba(bico:string):Error; stdcall;
Function PortOpen:boolean; stdcall;
Function SocketOpen:boolean; stdcall;
Function Preset(bico:string;valor:double):Error; stdcall;
Function ReadSerial(timeout:cardinal):PChar;stdcall;
Procedure RefAltPreco(bico:string;preco:double;decimais:byte;var status:error); stdcall;
Procedure RefAutoLibera(bico:string;var status:error); stdcall;
Procedure RefAutorizaAbast(bico:string;var status:error); stdcall;
Procedure RefBloqueiaBico(bico:string;var status:error); stdcall;
Procedure RefEncerrante(bico:string;modo:char;var value:PChar);stdcall;
Procedure RefLePPL(bico:string;var value:PChar); stdcall;
Procedure RefParaBomba(bico:string;var status:error); stdcall;
Procedure RefPreset(bico:string;valor:double;var status:error); stdcall;
Function SetAlteraPreco(st:string):boolean; stdcall;
Function SetAutoLibera(bico:string):boolean; stdcall;
Function SetAutorizaAbast(bico:string):boolean; stdcall;
Function SetBloqueiaBico(bico:string):boolean; stdcall;
Function SetClock(par:string):boolean; stdcall;
Function LeStatusFid():multistatus; stdcall; 
Function SetIntClock(dia,hora,minuto:byte):boolean; stdcall;
Function SetParaBomba(bico:string):boolean; stdcall;
Function SetPreset(st:string):boolean; stdcall;
Function STRefAltPreco(par:PChar):integer; stdcall;
Function STVisualizacao(var visualizacao:PChar):PChar;stdcall;
Procedure VBLePPL(var inf:string);stdcall;
procedure VBSetAutoLibera(var bico:string); stdcall;
procedure VBSetAutorizaAbast(var bico:string); stdcall;
procedure VBSetBloqueiaBico(var bico:string); stdcall;
Procedure VBSetPPL(var inf:string);stdcall;
Procedure Ver(var versao:info);stdcall;
Procedure WriteSerial(comando:string;len:integer);stdcall;
Function LeAbastecimentoFid:AbastFid;stdcall;
Procedure CobLeStructIDSt(var ab:abast3);stdcall;
{$ENDIF}

implementation

{$IFNDEF COMPANYTEC}
Function InicializaSerial; external 'COMPANYTEC.DLL' name 'InicializaSerial';
Function InicializaSocket; external 'COMPANYTEC.DLL' name 'InicializaSocket';
Function AlteraPreco; external 'COMPANYTEC.DLL' name 'AlteraPreco';
Function LeAbastecimentoFid; external 'COMPANYTEC.DLL' name 'LeAbastecimentoFid';
Function LeStatus; external 'COMPANYTEC.DLL' name 'LeStatus';
Function AutoLibera; external 'COMPANYTEC.DLL' name 'AutoLibera';
Function AutorizaAbast; external 'COMPANYTEC.DLL' name 'AutorizaAbast';
Function BloqueiaBico; external 'COMPANYTEC.DLL' name 'BloqueiaBico';
Function CobAlteraPreco; external 'COMPANYTEC.DLL' name 'CobAlteraPreco';
Procedure CobLeEnc; external 'COMPANYTEC.DLL' name 'CobLeEnc';
Function CobLePPL; external 'COMPANYTEC.DLL' name 'CobLePPL';
Procedure CobLeStructSt; external 'COMPANYTEC.DLL' name 'CobLeStructSt';
Procedure CobLeVis; external 'COMPANYTEC.DLL' name 'CobLeVis';
Function CobPreset; external 'COMPANYTEC.DLL' name 'CobPreset';
Function CobSetClock; external 'COMPANYTEC.DLL' name 'CobSetClock';
Function Comunica; external 'COMPANYTEC.DLL' name 'Comunica';
Procedure CobLeStructIDSt; external 'COMPANYTEC.DLL' name 'CobLeStructIDSt';
Function ConsultaEncerrante; external 'COMPANYTEC.DLL' name 'ConsultaEncerrante';
Function EnviaComando; external 'COMPANYTEC.DLL' name 'EnviaComando';
Procedure EscreveSerial; external 'COMPANYTEC.DLL' name 'EscreveSerial';
Procedure EscreveSocket; external 'COMPANYTEC.DLL' name 'EscreveSocket';
Function FechaSerial; external 'COMPANYTEC.DLL' name 'FechaSerial';
Function FechaSocket; external 'COMPANYTEC.DLL' name 'FechaSocket';
Function FechaSerialVB; external 'COMPANYTEC.DLL' name 'FechaSerialVB';
Function LeEvento; external 'COMPANYTEC.DLL' name 'LeEvento';
Function FidAciona; external 'COMPANYTEC.DLL' name 'FidAciona';
Function FidIdent:IFid; external 'COMPANYTEC.DLL' name 'FidIdent';
Procedure FidIncrementa; external 'COMPANYTEC.DLL' name 'FidIncrementa';
Function FidLeRegistro; external 'COMPANYTEC.DLL' name 'FidLeRegistro';
Function FidModo; external 'COMPANYTEC.DLL' name 'FidModo';
Function FidSetClock; external 'COMPANYTEC.DLL' name 'FidSetClock';
Function FidStatus; external 'COMPANYTEC.DLL' name 'FidStatus';
Procedure Incrementa; external 'COMPANYTEC.DLL' name 'Incrementa';
Function InicializaLogSerial; external 'COMPANYTEC.DLL' name 'InicializaLogSerial';
Function LeAbastecimento; external 'COMPANYTEC.DLL' name 'LeAbastecimento';
Function LeAbFix; external 'COMPANYTEC.DLL' name 'LeAbFix';
Function LePart; external 'COMPANYTEC.DLL' name 'LePart';
Function LePPL; external 'COMPANYTEC.DLL' name 'LePPL';
Function LeRegistro; external 'COMPANYTEC.DLL' name 'LeRegistro';
Function LeRegistroFid; external 'COMPANYTEC.DLL' name 'LeRegistroFid';
Function LeSerial; external 'COMPANYTEC.DLL' name 'LeSerial';
Function LeSocket; external 'COMPANYTEC.DLL' name 'LeSocket';
Function LeStatusVB; external 'COMPANYTEC.DLL' name 'LeStatusVB';
Function LeSTEncerrante; external 'COMPANYTEC.DLL' name 'LeSTEncerrante';
Function LeStReduzida; external 'COMPANYTEC.DLL' name 'LeStReduzida';
Function LeStRegistro; external 'COMPANYTEC.DLL' name 'LeStRegistro';
Function LeStRegistroFid; external 'COMPANYTEC.DLL' name 'LeStRegistroFid';
Function LeStringAb; external 'COMPANYTEC.DLL' name 'LeStringAb';
Function LeStringAbVB; external 'COMPANYTEC.DLL' name 'LeStringAbVB';
Function LeStatusFid; external 'COMPANYTEC.DLL' name 'LeStatusFid';
Function LeStructEncerrante; external 'COMPANYTEC.DLL' name 'LeStructEncerrante';
Function LeStructPPL; external 'COMPANYTEC.DLL' name 'LeStructPPL';
Procedure LeStructSt; external 'COMPANYTEC.DLL' name 'LeStructSt';
Function LeStStatus; external 'COMPANYTEC.DLL' name 'LeStStatus';
Function LeVisualizacao; external 'COMPANYTEC.DLL' name 'LeVisualizacao';
Procedure LimpaSerial; external 'COMPANYTEC.DLL' name 'LimpaSerial';
Function ParaBomba; external 'COMPANYTEC.DLL' name 'ParaBomba';
Function PortOpen; external 'COMPANYTEC.DLL' name 'PortOpen';
Function SocketOpen; external 'COMPANYTEC.DLL' name 'SocketOpen';
Function Preset; external 'COMPANYTEC.DLL' name 'Preset';
Function ReadSerial; external 'COMPANYTEC.DLL' name 'ReadSerial';
Procedure RefAltPreco; external 'COMPANYTEC.DLL' name 'RefAltPreco';
Procedure RefAutoLibera; external 'COMPANYTEC.DLL' name 'RefAutoLibera';
Procedure RefAutorizaAbast; external 'COMPANYTEC.DLL' name 'RefAutorizaAbast';
Procedure RefBloqueiaBico; external 'COMPANYTEC.DLL' name 'RefBloqueiaBico';
Procedure RefEncerrante; external 'COMPANYTEC.DLL' name 'RefEncerrante';
Procedure RefLePPL; external 'COMPANYTEC.DLL' name 'RefLePPL';
Procedure RefParaBomba; external 'COMPANYTEC.DLL' name 'RefParaBomba';
Procedure RefPreset; external 'COMPANYTEC.DLL' name 'RefPreset';
Function SetAlteraPreco; external 'COMPANYTEC.DLL' name 'SetAlteraPreco';
Function SetAutoLibera; external 'COMPANYTEC.DLL' name 'SetAutoLibera';
Function SetAutorizaAbast; external 'COMPANYTEC.DLL' name 'SetAutorizaAbast';
Function SetBloqueiaBico; external 'COMPANYTEC.DLL' name 'SetBloqueiaBico';
Function SetClock; external 'COMPANYTEC.DLL' name 'SetClock';
Function SetIntClock; external 'COMPANYTEC.DLL' name 'SetIntClock';
Function SetParaBomba; external 'COMPANYTEC.DLL' name 'SetParaBomba';
Function SetPreset; external 'COMPANYTEC.DLL' name 'SetPreset';
Function STRefAltPreco; external 'COMPANYTEC.DLL' name 'STRefAltPreco';
Function STVisualizacao; external 'COMPANYTEC.DLL' name 'STVisualizacao';
Procedure VBLePPL; external 'COMPANYTEC.DLL' name 'VBLePPL';
procedure VBSetAutoLibera; external 'COMPANYTEC.DLL' name 'VBSetAutoLibera';
procedure VBSetAutorizaAbast; external 'COMPANYTEC.DLL' name 'VBSetAutorizaAbast';
procedure VBSetBloqueiaBico; external 'COMPANYTEC.DLL' name 'VBSetBloqueiaBico';
Procedure VBSetPPL; external 'COMPANYTEC.DLL' name 'VBSetPPL';
Procedure Ver; external 'COMPANYTEC.DLL' name 'Ver';
Procedure WriteSerial; external 'COMPANYTEC.DLL' name 'WriteSerial';
{$ENDIF}

end.


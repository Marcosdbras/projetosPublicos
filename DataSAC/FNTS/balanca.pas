unit balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, VrControls,
  VrDigit, DB, Buttons, jpeg;

type
  Tfrmbalanca = class(TForm)
    Timer1: TTimer;
    lblstatus: TLabel;
    Image1: TImage;
    rpeso: TRxCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    eproduto: TEdit;
    lproduto: TLabel;
    lpreco: TLabel;
    ltotal: TLabel;
    DataSource1: TDataSource;
    Edit1: TEdit;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    btnCapturar: TBitBtn;
    GroupBox1: TGroupBox;
    lbLiq: TLabel;
    btnContinuo: TButton;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure rpesoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCapturarClick(Sender: TObject);
    procedure btnContinuoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PegaPesoBalanca;
  public
    { Public declarations }
  end;

var
  frmbalanca: Tfrmbalanca;
    EParaFechar:Boolean;

  //Mascara para formatacao do peso com casas decimais
  mascara : String;
Const
  PcScale = 'PcScale.dll'; //Contante para não ficar repetindo
                           //o nome do arquivo da Dll

implementation

uses modulo, principal, UConstantes;

//----------------------------------------------------------------//
{                   INICIO FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//
{Declara a função ConfiguraBalanca existente na DLL "PcScale.dll"}
function ConfiguraBalanca(Balanca: Integer; Aplicativo: THandle): Boolean;
             stdcall; external PcScale;

{Declara a função InicializaLeitura existente na DLL "PcScale.dll"}
function InicializaLeitura(Balanca: Integer): Boolean;
             stdcall; external PcScale;

{Declara a função ObtemInformacao existente na DLL "PcScale.dll"}
function ObtemInformacao(Balanca: Integer; Campo: Integer): double;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL "PcScale.dll"}
function FinalizaLeitura(Balanca: Integer) : Boolean;
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL "PcScale.dll"}
function EnviaPrecoCS(Balanca : integer; Preco : double) : Boolean;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL "PcScale.dll"}
function ObtemParametrosBalanca(Balanca: Integer; Modelo: PInteger;
                             Porta: PInteger; BaudRate: PInteger
                             ): Boolean
             stdcall; external PcScale;

{Declara a função ObtemNomeBalanca existente na DLL "PcScale.dll"}
Procedure ObtemNomeBalanca(Modelo: Integer; Ret: PChar);
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL "PcScale.dll"}
Procedure ExibeMsgErro(Aplicativo : THandle);
             stdcall; external PcScale;



//----------------------------------------------------------------//
{                     FIM FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//

//----------------------------LEMBRETES---------------------------//
{
  - Lembre-se que neste exemplo foi usado um objeto Timer para
    que o mesmo repeta as chamadas da Dll. Como opção pederiamos
    ter usado uma Thread.

  - A Dll PcScale.dll deve sempre estar no diretório Windows\System,
    ou no mesmo caminho onde do executável que a usa estiver rodando.

}
//----------------------------LEMBRETES---------------------------//






{$R *.dfm}
procedure Tfrmbalanca.PegaPesoBalanca;
var
  Peso: array[0..5]of char;
begin
  if PegaPeso(0,Peso,pchar('c:\')) = cSucesso then
    LABEL1.Caption:=StrPas(Peso)
  else
    LABEL1.Caption:='Erro!';
end;

procedure Tfrmbalanca.FormShow(Sender: TObject);
begin


    IF (BALANCA_modelo = 'FILIZOLA') OR (BALANCA_modelo = 'FILIZOLA MF') then
    begin
      if InicializaLeitura(0) then
      begin
            Timer1.Enabled := True;
      end
      else
      begin
         ExibeMsgErro(Self.Handle);
      end;
    end;


    if balanca_modelo = 'TOLEDO' THEN
    BEGIN
//      if AbrePorta(toledo_porta+1,toledo_BaudRate,toledo_databits,toledo_paridade) = cSucesso then
        //
//      else
//         ShowMessage('Falha na Abertura da Porta!!!');
//      Application.ProcessMessages;
      btnContinuoClick(frmbalanca);
      TIMER1.Enabled := TRUE;
    END;

end;

procedure Tfrmbalanca.Timer1Timer(Sender: TObject);
var
status, aux: integer;
  Peso: array[0..5]of char;
  P : REAL;


begin
  IF (BALANCA_modelo = 'FILIZOLA') OR (BALANCA_modelo = 'FILIZOLA MF') then
  begin
    status := StrToInt(FloatToStr(ObtemInformacao(0,0)));
    case status of
      0:  lblStatus.Caption := 'Falha comunicando-se com a balança.';
      1:  lblStatus.Caption := 'Peso Oscilando.';
      2:  lblStatus.Caption := 'Peso Estável.';
      3:  lblStatus.Caption := 'Sobrecarga de Peso ou Alivio de Plataforma.';
      4:  lblStatus.Caption := 'Erro lendo licensa do Software.';
    end;

    if ( status = 1 ) or ( status = 2 ) then
    begin
        if mascara = '' then
        begin
            mascara := '0.';
            for aux := 1 to StrToInt(FloatToStr(ObtemInformacao(0,8))) do
            begin
                mascara := mascara + '0';
            end;
        end;

        rpeso.value   := ObtemInformacao(0,1);
    end;
  end;

  IF balanca_modelo = 'TOLEDO' then
  begin
    TIMER1.Enabled:= False;
    try
      if PegaPeso(1,Peso,pchar('c:\')) = cSucesso then
      begin
         try
           LABEL1.CAPTION := formatfloat('###,##0.000',strtofloat(StrPas(Peso))/1000);
           lblstatus.Caption:='Peso Estável.';
         except
           label1.Caption := '0,000';
           lblstatus.caption:='Peso Instável.';
         end;
      end
      else
      BEGIN
        LABEL1.CAPTION := '0';
      END;
  finally
    if btnContinuo.Tag <> 0 then
      begin
        if EParaFechar then
          Close
        else
          timer1.Enabled:= True;
      End
      else
        LABEL1.CAPTION :='';
      end;
   end;

end;

procedure Tfrmbalanca.rpesoChange(Sender: TObject);
begin
 if balanca_modelo = 'FILIZOLA' then
 begin
    if rpeso.Value <> 0 then
    label1.Caption := formatfloat('###,###,##0.000',rpeso.value/1000)+' Kg';
 end;
 if balanca_modelo = 'FILIZOLA MF' then
 begin
    if rpeso.Value <> 0 then
    label1.Caption := formatfloat('###,###,##0.000',rpeso.value)+' Kg';
 end;
end;

procedure Tfrmbalanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF (BALANCA_modelo = 'FILIZOLA') OR (BALANCA_modelo = 'FILIZOLA MF') then
  begin
    FinalizaLeitura(0);
  end;
  IF BALANCA_MODELO = 'TOLEDO' then
  begin
    btnContinuoClick(frmbalanca);
//  FechaPorta;
  end;
  action := cafree;
end;

procedure Tfrmbalanca.eprodutoKeyPress(Sender: TObject; var Key: Char);
VAR PRECO_UNITARIO : REAL;
begin
  if key = #27 then close;



  if key = #13 then
  begin
    TRY
      if lblstatus.Caption = 'Peso Estável.' then
      begin
        frmmodulo.qrproduto.close;
        frmmodulo.qrproduto.sql.clear;
        frmmodulo.qrproduto.sql.add('select * from c000025 where codbarra = '''+eproduto.text+'''');
        frmmodulo.qrproduto.Open;
        if frmmodulo.qrproduto.RecordCount > 0 then
        begin
          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
              PRECO_UNITARIO := frmmodulo.qrproduto.fieldbyname('precO_PROMOCAO').asfloat;
            END
            ELSE
              PRECO_UNITARIO := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          END
          ELSE
             PRECO_UNITARIO := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;


          IF BALANCA_MODELO = 'TOLEDO' THEN
          BEGIN
            lproduto.Caption := frmmodulo.qrproduto.fieldbyname('PRODUTO').asstring;
            lpreco.Caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO);
            ltotal.caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO * (STRTOFLOAT(LABEL1.CAPTION)));

          END
          ELSE
          BEGIN
            if balanca_modelo = 'FILIZOLA' then
            begin
              lproduto.Caption := frmmodulo.qrproduto.fieldbyname('PRODUTO').asstring;
              lpreco.Caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO);
              ltotal.caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO * (rpeso.value/1000));
            end
            else
            begin
              if balanca_modelo = 'FILIZOLA MF' then
              begin
                lproduto.Caption := frmmodulo.qrproduto.fieldbyname('PRODUTO').asstring;
                lpreco.Caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO);
                ltotal.caption := 'R$ '+formatfloat('###,###,##0.00',PRECO_UNITARIO * rpeso.value);
              end;
            end;
          END;
          edit1.setfocus;
        end
        else
        begin
          lproduto.Caption := 'PRODUTO NÃO CADASTRADO!';
          lpreco.caption := '';
          ltotal.Caption := '';
        end;
      end
      else
      begin
        lproduto.caption := 'Peso instável';
      end;
    EXCEPT
      application.messagebox('Erro ao processar Peso!','Aviso',mb_ok+mb_iconerror);
      eproduto.setfocus;
    END;
  end;
end;

procedure Tfrmbalanca.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if balanca_modelo = 'TOLEDO' then
    begin
      frmprincipal.eproduto.Text := floattostr(strtofloat(label1.caption))+'*'+eproduto.Text;
        frmprincipal.eproduto.OnKeyPress(frmprincipal.eproduto,key);
        close;
        frmprincipal.Edit1.SetFocus;
        frmprincipal.eproduto.SetFocus;
    end
    else
    begin
      if (balanca_modelo = 'FILIZOLA')  then
      BEGIN
        if rpeso.value <> 0 then
        begin
          frmprincipal.eproduto.Text := floattostr(rpeso.value/1000)+'*'+eproduto.Text;
          frmprincipal.eproduto.OnKeyPress(frmprincipal.eproduto,key);
          close;
          frmprincipal.Edit1.SetFocus;
          frmprincipal.eproduto.SetFocus;
          frmprincipal.eproduto.Text := '';
        end;
      END;
      if (balanca_modelo = 'FILIZOLA MF')  then
      BEGIN
        if rpeso.value <> 0 then
        begin
          frmprincipal.eproduto.Text := floattostr(rpeso.value)+'*'+eproduto.Text;
          frmprincipal.eproduto.OnKeyPress(frmprincipal.eproduto,key);
          close;
          frmprincipal.Edit1.SetFocus;
          frmprincipal.eproduto.SetFocus;
          frmprincipal.eproduto.Text := '';
        end;
      END;
    end;
  end;
  if key = #27 then
  begin
    eproduto.setfocus;
  end;
end;

procedure Tfrmbalanca.btnAbrirClick(Sender: TObject);
begin
    if AbrePorta(2,0,1,0) = cSucesso then
      ShowMessage('Porta Aberta com Sucesso!!!')
    else
    ShowMessage('Falha na Abertura da Porta!!!');
end;

procedure Tfrmbalanca.btnFecharClick(Sender: TObject);
begin
  if FechaPorta = cSucesso then
    ShowMessage('Porta Fechada com Sucesso!!!')
  else
    ShowMessage('Falha no Fechamento da Porta!!!');
end;

procedure Tfrmbalanca.btnCapturarClick(Sender: TObject);
begin
  timer1.Enabled:= False;
  Screen.Cursor:=crHourGlass;
  try
    PegaPesoBalanca;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmbalanca.btnContinuoClick(Sender: TObject);
begin
  if btnContinuo.Tag = 1 then
    begin
      timer1.Enabled:= False;
      btnCapturar.Enabled:= True;
      btnContinuo.Caption:= 'Contínuo...';
      btnContinuo.Tag:= 0;
    end
  else
    begin
      timer1.Enabled:= True;
      btnCapturar.Enabled:= False;
      btnContinuo.Caption:= 'Parar';
      btnContinuo.Tag:= 1;
    end;
end;

end.

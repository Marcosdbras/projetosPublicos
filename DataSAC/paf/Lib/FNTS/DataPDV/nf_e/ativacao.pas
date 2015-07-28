unit ativacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, TFlatPanelUnit, Collection, DB,
  DBCtrls, AdvShapeButton, AdvGlowButton, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, jpeg;

type
  Tfrmativacao = class(TForm)
    Label3: TLabel;
    Edit1: TEdit;
    dsemitente: TDataSource;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel3: TBevel;
    Label6: TLabel;
    Bevel5: TBevel;
    ftpupdate: TIdFTP;
    Timer1: TTimer;
    AdvGlowButton1: TAdvGlowButton;
    Memo1: TMemo;
    Label8: TLabel;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmativacao: Tfrmativacao;
  resultado : string;
  chave_ok : Boolean;

implementation

uses principal, modulo;

{$R *.dfm}

procedure Tfrmativacao.FormShow(Sender: TObject);
var X : STRING;
senha : integer;
begin
   senha := ((strtoint(copy(timetostr(time),7,2)+copy(timetostr(time),1,2))*13)*8+16) ;
//   label2.caption := inttostr(senha);
   resultado := inttostr(senha *19+31);
   X := Frmprincipal.Cript('C','20');
//   LABEL6.CAPTION := COPY(X,1,3)+resultado+COPY(X,4,3);
end;


procedure Tfrmativacao.BitBtn1Click(Sender: TObject);
var
  dias, chave, chave_recebida , dias_chave_recebida: string;
  vchave : string;
  i : integer;
  datax : string;
begin
TRY
  if Edit1.Text = '' then
    begin
      application.messagebox('Chave de Ativação Não Informada!','Atenção',mb_ok+MB_iconinformation);
      Edit1.SetFocus;
      chave_ok := false;
      exit;
    end;

  vchave := 'c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt';

  FRMMODULO.qremitente.Open;

  chave_recebida := FRMPRINCIPAL.CRIPT('D',EDIT1.TEXT);
  dias_chave_recebida := copy(chave_recebida,11,3);

  chave := COPY(DATETOSTR(DATE),4,2)+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+COPY(DATETOSTR(DATE),9,2);

  IF copy(chave_recebida,1,10) = chave THEN
    BEGIN
      application.messagebox('Sistema ativado com sucesso!','Atenção',mb_ok+MB_iconinformation);

      if strtoint(dias_chave_recebida) = 0 then
        begin
          if frmprincipal.zerarcodigo(FRMMODULO.qremitente.FIELDBYNAME('DIA_VENCIMENTO_CHAVE').AsString,2) = '00' then
            datax := '15'+copY(datetostr(incmonth(date,1)),3,8)
          else
            datax := frmprincipal.zerarcodigo(FRMMODULO.QREMITENTE.FIELDBYNAME('DIA_VENCIMENTO_CHAVE').ASSTRING,2)+copY(datetostr(incmonth(date,1)),3,8);
        end
      else
        begin
          datax := datetostr(date+strtoint(dias_chave_recebida));
        end;

      qtde_dias_ativacao := trunc(strtodate(datax)-date);

      ativa_sistema := true;
      chave_ok := true;
      CLOSE;
    END
  ELSE
    BEGIN
      application.messagebox('Chave Inválida! Favor Solicitar uma Nova Chave com o Suporte!','Atenção',mb_ok+MB_ICONERROR);
      if fileexists(vchave) then deletefile(vchave);
      Edit1.Text := '';
      chave_ok := false;
    end;

  EXCEPT
    application.messagebox('Chave inválida!Favor Solicitar uma Nova Chave com o Suporte!','Atenção',mb_ok+MB_ICONERROR);
    if fileexists(vchave) then deletefile(vchave);
    Edit1.Text := '';
    chave_ok := false;
END;

end;

procedure Tfrmativacao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then BitBtn1Click(frmativacao);
end;

procedure Tfrmativacao.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmativacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmativacao.AdvGlowButton1Click(Sender: TObject);
var
  txt : textfile;
  entrada : string;
  x : integer;
  varq_origem , varq_destino : string;

begin

  if not FileExists('c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt') then
    WinExec( 'eChaveNET.exe', SW_NORMAL );

  if FileExists('c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt') then
    begin


    Memo1.Text := '';
    Memo1.Lines.LoadFromFile('c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt');
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do begin
      if copy(Memo1.Lines[x],1,2) = '01' then
        Edit1.text := TRIMLEFT(TrimRight(COPY(Memo1.Lines[x],3,99)));
    end;

    BitBtn1Click(frmativacao);

    if chave_ok = true then
      begin
        varq_origem  := 'c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt';
        varq_destino := 'c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'_'+COPY(DATETOSTR(DATE),4,2)+COPY(DATETOSTR(DATE),9,2)+'.001';

        if fileexists(varq_destino) then deletefile(varq_destino);

        if not CopyFile(PChar(varq_origem), PChar(varq_destino), true) then
          ShowMessage('Erro ao copiar ' + varq_origem + ' para ' + varq_destino);

        DeleteFile('c:\DataSAC\chaves\chave'+FRMMODULO.QREMITENTE.FIELDBYNAME('CODIGO').ASSTRING+'.txt');

      end;
  end
  else
  begin
    application.messagebox('Arquivo de atualização não Encontrado!','Erro',mb_ok+mb_iconerror);
  end;

end;

end.

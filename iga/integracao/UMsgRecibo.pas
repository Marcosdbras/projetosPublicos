unit UMsgRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmMsgRecibo = class(TForm)
    Label1: TLabel;
    BtnSim: TBitBtn;
    BtnNao: TBitBtn;
    procedure BtnNaoClick(Sender: TObject);
    procedure BtnSimClick(Sender: TObject);
  private
    { Private declarations }
  public
    Resp:boolean;
  end;

var
  FrmMsgRecibo: TFrmMsgRecibo;

implementation

uses UDados, uPesqRecibo, uGeral, UMenuPrincipal, UPesqContasRec;

{$R *.dfm}

procedure TFrmMsgRecibo.BtnNaoClick(Sender: TObject);
begin
  Resp := False;
  Close;
end;

procedure TFrmMsgRecibo.BtnSimClick(Sender: TObject);
var
  num:integer;
  nome : String;
begin
 with FrmPrincipal do
 begin
  if Localiza_DetItens_Usuario(Recibos1.Tag,Icusu,'V') > 0 then
    bReciboV := True
  else
    bReciboV := False;
  //endi

  if Localiza_DetItens_Usuario(Recibos1.Tag,Icusu,'A') > 0 then
    bReciboA := True
  else
    bReciboA := False;
  //endi

  if Localiza_DetItens_Usuario(Recibos1.Tag,Icusu,'E') > 0 then
    breciboE := True
  else
    bReciboE := False;
  //endi

  if Localiza_DetItens_Usuario(Recibos1.Tag,Icusu,'I') > 0 then
    bReciboI := True
  else
    bReciboI := False;
  //endi

  if not bReciboV then
  begin
    showmessage('Este usuário não possui privilégios para ver a tela de recibos!');
    Exit;
  end;
  //endi

  if not bReciboI then
  begin
    showmessage('Este usuário não possui privilégios para gerar um recibo!');
    Exit;
  end;
  //endi
 end;
 //endth
  with FrmDados do
  begin
    DBX_Exec.Active := False;
    DBX_Exec.SQL.Clear;
    if FrmPEsqContasRec <> nil then
      DBX_Exec.SQL.Add('select * from cadaluno where codigo = ' + CDS_ContasRec.FieldByName('CODALU').AsString)
    else
      DBX_Exec.SQL.Add('select * from cadaluno where codigo = ' + CDS_ContasRecNubia.FieldByName('CODALU').AsString);
    DBX_Exec.Active := True;

    if DBX_Exec.FieldByName('RESP_FINANCEIRO').AsString <> '' then
    begin
      Nome := DBX_Exec.FieldByName('RESP_FINANCEIRO').AsString;
    end
    else if DBX_Exec.FieldByName('NOME_PAI').AsString <> '' then
    begin
      Nome := DBX_Exec.FieldByName('NOME_PAI').AsString;
    end
    else if DBX_Exec.FieldByName('NOME_MAE').AsString <> '' then
    begin
      Nome := DBX_Exec.FieldByName('NOME_MAE').AsString;
    end
    else
    begin
      Nome := '';
    end;

    CDS_Recibo.Active := False;
    DBX_Recibo.Active := False;
    DBX_Recibo.SQL.Clear;
    DBX_Recibo.SQL.Add('select * from recibo order by num');
    DBX_Recibo.Active := True;
    CDS_Recibo.Active := True;

    CDS_Recibo.Last;
    num := CDS_Recibo.FieldByName('Num').AsInteger;

    CDS_Recibo.Append;
    if FrmPEsqContasRec <> nil then
    begin
      CDS_Recibo.FieldByName('NUM').AsInteger := num + 1;
      CDS_Recibo.FieldByName('CODALU').AsInteger := CDS_ContasRec.FieldBYNAme('CODALU').AsInteger;
      CDS_Recibo.FieldByName('VALOR').AsString := CDS_ContasRec.FieldByName('VALOR').AsString;
      CDS_Recibo.FieldByName('DATA').AsDateTime := date;
      CDS_Recibo.FieldByName('NOME').AsString := Nome;
      CDS_Recibo.FieldByName('TIPO').AsString := CDS_ContasRec.FieldByName('TIPO').AsString;
      CDS_Recibo.FieldByName('ACORDO').AsString := 'recibo.';
    end
    else
    begin
      CDS_Recibo.FieldByName('NUM').AsInteger := num + 1;
      CDS_Recibo.FieldByName('CODALU').AsInteger := CDS_ContasRecNubia.FieldBYNAme('CODALU').AsInteger;
      CDS_Recibo.FieldByName('VALOR').AsString := CDS_ContasRecNubia.FieldByName('VALOR').AsString;
      CDS_Recibo.FieldByName('DATA').AsDateTime := date;
      CDS_Recibo.FieldByName('NOME').AsString := Nome;
      CDS_Recibo.FieldByName('TIPO').AsString := CDS_ContasRecNubia.FieldByName('TIPO').AsString;
      CDS_Recibo.FieldByName('ACORDO').AsString := 'recibo.';
    end;
    //endi
    CDS_Recibo.Post;
  end;
  //endth
  Resp := True;
  Close;
end;

end.

unit cadastra_recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd,DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, RzPanel, ComCtrls, ACBrBase, ACBrExtenso;

type
  TFrmCadRecibo = class(TForm)
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    ds: TDataSource;
    query: TZQuery;
    BBImprimir: TAdvGlowButton;
    BBSlvar: TAdvGlowButton;
    RzGroupBox2: TRzGroupBox;
    Label1: TLabel;
    EdNumRecibo: TEdit;
    Label5: TLabel;
    DtRecibo: TDateTimePicker;
    DtHora: TDateTimePicker;
    Label3: TLabel;
    EdCliente: TEdit;
    Label38: TLabel;
    Label4: TLabel;
    MRferente: TMemo;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    EdCodProduto: TEdit;
    BitBtn1: TBitBtn;
    EdDescricaoProduto: TEdit;
    RzGroupBox3: TRzGroupBox;
    StringEntrada: TListView;
    Label6: TLabel;
    EdQuant: TEdit;
    Label7: TLabel;
    EdValorUnnitario: TEdit;
    EdValor: TEdit;
    Label8: TLabel;
    qConfiguracao: TZQuery;
    Thora: TTimer;
    EdValorRecibo: TEdit;
    Label9: TLabel;
    qryInseri: TZQuery;
    Extenso: TACBrExtenso;
    Label10: TLabel;
    BExcluir: TAdvGlowButton;
    procedure EdCodProdutoEnter(Sender: TObject);
    procedure EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdQuantKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure ThoraTimer(Sender: TObject);
    procedure EdClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBSlvarClick(Sender: TObject);
    procedure BBImprimirClick(Sender: TObject);
    procedure EdNumReciboKeyPress(Sender: TObject; var Key: Char);
    procedure DtReciboKeyPress(Sender: TObject; var Key: Char);
    procedure DtHoraKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorReciboKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumReciboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bcancelarClick(Sender: TObject);
    procedure DtReciboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DtHoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorReciboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MRferenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDescricaoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdQuantKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorUnnitarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringEntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadRecibo: TFrmCadRecibo;
  ListItem: TListItem;
  Seq,QuantItens,i,Itens : Integer;
implementation

uses xloc_produto,modulo,Principal, Cad_recibo_avulso;

{$R *.dfm}

function TrocaVirgPPto(Valor: string): String;
var i:integer;
begin
  if Valor <> ' ' then
   begin
    for i := 0 to Length(Valor) do
   begin
    if Valor[i]='.' then
   begin
    Valor[i]:=',';
end
 else if Valor[i] = ',' then
begin
       Valor[i]:='.';
    end;
end;
end;
Result := valor;
end;


Function  ConverteFloatStr(Valor : ShortString;Formata : Boolean=False) : ShortString;
Var
  i        : Byte;
  Temp     : ShortString;
  Decimais :Byte;
  CasasDecimais : ShortString;
Begin
  Temp     := '';
  Try
    Valor  := FormatFloat('#,##0.00',StrToFloat(Valor));
  Except
    Result := '0.00';
    Exit;
  End;
  Decimais := Length(CasasDecimais)-6;
//  If (Copy(Valor,(Length(Valor)-2),1) = '.') Or (Copy(Valor,(Length(Valor)-2),1) = ',') Or
  If (Copy(Valor,(Length(Valor)-Decimais),1) = '.') Or (Copy(Valor,(Length(Valor)-Decimais),1) = ',') Or
      (StrToFloat(Valor) < 0) Then
  Begin
    For i  := 1 To (Length(Valor)-(Decimais+1)) do
      If Valor[i] In ['0'..'9'] Then
        Temp := Temp+Valor[i];
    Temp   := Temp+'.'+Copy(Valor,(Length(Valor)-1),Decimais);
  End
  Else
    For i  := 1 To Length(Valor) do
      If Valor[i] In ['0'..'9'] Then
        Temp := Temp+Valor[i];
  If Formata Then
    Try
      Result := FormatFloat(CasasDecimais,StrToFloat(Temp));
    Except
      Result := '0.00';
    End
  Else
    Result   := Temp;
End;


procedure TFrmCadRecibo.EdCodProdutoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TFrmCadRecibo.EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F1 Then
  begin
    resultado_pesquisa1 := '';
    frmxloc_produto := tfrmxloc_produto.create(self);
    frmxloc_produto.showmodal;
    if resultado_pesquisa1 = '' then exit
     else
      begin
       EdCodProduto.Text := frmmodulo.qrproduto.fieldbyname('codbarra').asstring;
       EdDescricaoProduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      end;
  end;
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);

end;

procedure TFrmCadRecibo.EdCodProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 Then
  Begin
    query.Close;
    query.Params[0].AsString := EdCodProduto.Text;
    query.open;
    EdDescricaoProduto.Text := query.FieldByName('produto').AsString;
    EdValorUnnitario.Text   := FormatFloat('#,##0.00',query.FieldByName('precovenda').AsFloat);
    EdQuant.SetFocus;
  end;
end;

procedure TFrmCadRecibo.EdValorKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  Begin
   Seq := Seq +1;
   ListItem := StringEntrada.Items.Add ;
   ListItem.caption := intToStr(Seq) ;
   ListItem.SubItems.Add(EdCodProduto.Text) ;
   ListItem.SubItems.Add(EdDescricaoProduto.Text) ;
   ListItem.subitems.Add(EdQuant.Text);
   ListItem.SubItems.Add(EdValorUnnitario.Text) ;
   ListItem.subitems.Add(EdValor.Text);
   EdValor.Clear;
   EdValorUnnitario.Clear;
   EdQuant.Clear;
   EdDescricaoProduto.Clear;
   EdCodProduto.Clear;
   EdCodProduto.SetFocus;
  end;
end;

procedure TFrmCadRecibo.EdQuantKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  Begin
    If (EdQuant.Text <> '') and  (EdValorUnnitario.Text <> '') Then
     Begin
      EdValor.Text :=  FormatFloat('#,##0.00',StrToInt(EdQuant.Text) *  StrToFloat(EdValorUnnitario.Text));
      EdValor.SetFocus;
     end; 
  end;
end;

procedure TFrmCadRecibo.bgravarClick(Sender: TObject);
begin
  i := 0;
  Itens := 0;
  Seq := 0;
  qConfiguracao.Close;
  qConfiguracao.Open;
  qConfiguracao.edit;
  qConfiguracao.FieldByName('COD_RECIBO').AsInteger := qConfiguracao.FieldByName('COD_RECIBO').AsInteger +1;
  qConfiguracao.Post;
  qConfiguracao.Close;
  qConfiguracao.Open;
  EdNumRecibo.Text    := FrmPrincipal.StrZero(IntToStr(qConfiguracao.FieldByName('COD_RECIBO').AsInteger),6);
  DtRecibo.Date       := Now;
  Thora.Enabled       := True;
  {Controle de Botões}
  bgravar.Enabled     := False;
  BBSlvar.Enabled     := True;
  BBImprimir.Enabled  := False;
  bcancelar.Enabled   := True;
  BExcluir.Enabled    := True;
end;

procedure TFrmCadRecibo.ThoraTimer(Sender: TObject);
begin
 DtHora.Time := Time;
end;

procedure TFrmCadRecibo.EdClienteKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  Begin
   MRferente.Clear;
   Extenso.Valor := StrToFloat(EdValorRecibo.Text);
   MRferente.Lines.Add('                RECEBI(EMOS) DE SR(a) '+EdCliente.Text);
   MRferente.Lines.Add('A IMPORTÂNCIA DE  R$ '+EdValorRecibo.Text+' ('+Extenso.Texto +')');
   MRferente.Lines.Add('REFERENTE A COMPRAS ABAIXO RELACIONADAS.');
   EdCodProduto.SetFocus;
  end;
end;

procedure TFrmCadRecibo.BitBtn1Click(Sender: TObject);
begin
    resultado_pesquisa1 := '';
    frmxloc_produto := tfrmxloc_produto.create(self);
    frmxloc_produto.showmodal;
    if resultado_pesquisa1 = '' then exit
     else
      begin
       EdCodProduto.Text := frmmodulo.qrproduto.fieldbyname('codbarra').asstring;
       EdDescricaoProduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      end;
end;

procedure TFrmCadRecibo.BBSlvarClick(Sender: TObject);
Var sql : String;
Begin
  {Inseri o Cabechalho do Recibo}
   Sql := 'INSERT INTO RECIBO (NUM_RECIBO,CLIENTE,DATA,HORA,VALOR,REFERENTE) VALUES( '+
            chr(39) + EdNumRecibo.Text + chr(39) +','+
            chr(39) + EdCliente.Text + chr(39) +','+
            chr(39) + FormatDateTime('YYYY-MM-DD',DtRecibo.Date) + chr(39) +','+
            chr(39) + TimeToStr(Time) + chr(39) +','+
            chr(39) + TrocaVirgPPto(EdValorRecibo.Text) + chr(39) +','+
            chr(39) + MRferente.Text +chr(39) + ')';
  qryInseri.Close;
  qryInseri.Sql.Text := Sql;
  qryInseri.ExecSQL;
  {Inseri o Cabechalho do Recibo}
 QuantItens :=  StringEntrada.Items.Count;
 For I := 0 To QuantItens do
  Begin
   If Itens < QuantItens Then
    Begin
     Sql := 'INSERT INTO ITENS_RECIBO (NUM_RECIBO,PRODUTO,QUANT,VALOR,TOTAL) VALUES( '+
              chr(39) + EdNumRecibo.Text + chr(39) +','+
              chr(39) + StringEntrada.Items.Item[I].SubItems[0] + chr(39) +','+
              chr(39) + StringEntrada.Items.Item[I].SubItems[2] + chr(39) +','+
              chr(39) + TrocaVirgPPto(StringEntrada.Items.Item[I].SubItems[3]) + chr(39) +','+
              chr(39) + TrocaVirgPPto(StringEntrada.Items.Item[I].SubItems[4]) +chr(39) + ')';
     qryInseri.Close;
     qryInseri.Sql.Text := Sql;
     qryInseri.ExecSQL;
     Itens := Itens + 1;
    end;
  end;
  bgravar.Enabled     := False;
  BBSlvar.Enabled     := False;
  BBImprimir.Enabled  := True;
  bcancelar.Enabled   := False;
  BExcluir.Enabled    := False;
end;

procedure TFrmCadRecibo.BBImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFrmReciboAvulso, FrmReciboAvulso);
   With FrmReciboAvulso Do
    Begin
      qEmitente.Close;
      qEmitente.OPen;
      qRecibo.Close;
      qRecibo.Params[0].AsString := EdNumRecibo.Text;
      qRecibo.OPen;
      ItensRecibo.Close;
      ItensRecibo.Params[0].AsString := EdNumRecibo.Text;
      ItensRecibo.OPen;
      qReferente.Lines.Text := MRferente.Text;
      QrDataExtenso.Caption  := FrmPrincipal.DataExtenso(Now);
      QrEndereco.Caption     := qEmitente.FieldByName('ENDERECO').AsString + ' '+ qEmitente.FieldByName('BAIRRO').AsString;
      QrepRecibo.Print;
    end;
    EdNumRecibo.Clear;
    EdValorRecibo.Clear;
    EdCliente.Clear;
    MRferente.Clear;
    EdCodProduto.Clear;
    EdDescricaoProduto.Clear;
    EdQuant.Clear;
    EdValorUnnitario.Clear;
    EdValor.Clear;
    StringEntrada.Clear;
    bgravar.Enabled     := True;
    BBSlvar.Enabled     := False;
    BBImprimir.Enabled  := False;
    bcancelar.Enabled   := True;
    BExcluir.Enabled    := False;
end;

procedure TFrmCadRecibo.EdNumReciboKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 Then DtRecibo.SetFocus;
end;

procedure TFrmCadRecibo.DtReciboKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then DtHora.SetFocus;
end;

procedure TFrmCadRecibo.DtHoraKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then EdValorRecibo.SetFocus;
end;

procedure TFrmCadRecibo.EdValorReciboKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 Then EdCliente.SetFocus;
end;

procedure TFrmCadRecibo.EdNumReciboKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.bcancelarClick(Sender: TObject);
begin
 CLose;
end;

procedure TFrmCadRecibo.DtReciboKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.DtHoraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdValorReciboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.MRferenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdDescricaoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdQuantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdValorUnnitarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.EdValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.StringEntradaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If Key = VK_F2      Then bgravarClick(Sender);
 If Key = VK_F5      Then BBSlvarClick(Sender);
 If Key = VK_F3      Then BBImprimirClick(Sender);
 If Key = VK_ESCAPE  Then bcancelarClick(Sender);
 If Key = VK_F4      Then BExcluirClick(Sender);
end;

procedure TFrmCadRecibo.BExcluirClick(Sender: TObject);
Var Iten : String;
begin
  Iten := InputBox('Zeus', 'Digite o Nº do Iten ', '');
   if Iten <> '' then
    begin
      StringEntrada.Items.Item[StrToInt(Iten)-1].Delete;
      StringEntrada.DeleteSelected;
      StringEntrada.Refresh;
    end;
end;

end.

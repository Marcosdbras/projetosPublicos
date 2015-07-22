unit UGeraContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, DB;

type
  TFrmGeraContas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdValor: TEdit;
    CBXNome: TDBLookupComboBox;
    BtnProcAlu: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdQntd: TEdit;
    BtnConfirmar: TBitBtn;
    BtnSair: TBitBtn;
    EdVenc: TEdit;
    EdTipo: TEdit;
    CBTpEvento: TCheckBox;
    CBXEvento: TDBLookupComboBox;
    BtnProcEvento: TSpeedButton;
    CBPgtoVista: TCheckBox;
    RGPFormaPgto: TRadioGroup;
    RGPTipo: TRadioGroup;
    Label6: TLabel;
    EdData: TEdit;
    RgpCartao: TRadioGroup;
    MemoObs: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    EdAno: TEdit;
    CBEtapa: TCheckBox;
    lbltitentrada: TLabel;
    edentrada: TEdit;
    lbltitsaida: TLabel;
    edsaida: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnProcAluClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnProcEventoClick(Sender: TObject);
    procedure CBTpEventoClick(Sender: TObject);
    procedure CBPgtoVistaClick(Sender: TObject);
    procedure RGPFormaPgtoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBEtapaClick(Sender: TObject);
    procedure edentradaExit(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure edsaidaExit(Sender: TObject);
    procedure edentradaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGeraContas: TFrmGeraContas;

implementation

uses UDados, UPesqAlu, uGeral, UProcAluno, UDadosCheque, UProcEvento;

{$R *.dfm}

procedure TFrmGeraContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('select * from cadaluno');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endth

  action := CaFree;
  FrmGeraContas := nil;
end;

procedure TFrmGeraContas.BtnProcAluClick(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('select * from cadaluno');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endth
  FrmProcAluno := TFrmProcAluno.Create(self);
  FrmProcAluno.ShowModal;
  FrmProcAluno.Free;
end;

procedure TFrmGeraContas.BtnInserirClick(Sender: TObject);
begin
  if not(FrmDados.CDS_ContasRecNubia.State in [dsedit,dsinsert]) then
    FrmDados.CDS_ContasRecNubia.Append;
  //endi
end;

procedure TFrmGeraContas.BtnConfirmarClick(Sender: TObject);
var
  dValor : double;
  dentrada:double;
  dsaida:double;
  iVezes,
  iD,
  count : integer;
  sMsg,
  sCodAlu,
  sCodConta,
  sCodEvento,
  sFormaPgto : String;
  iMes,
  iDia,
  iAno : word;
begin
 try
  if not bGeraContasI then
  begin
    showmessage('Este usuário não possui privilégios para inserir uma conta!');
    Exit;
  end;
  //endi
  bContasRecNubiaI := True;
  bContasRecNubiaA := True;
  decodedate(strtodate(EdData.Text),iAno,iMes,iDia);
  iVezes := strtoint(EdQntd.Text);
  dValor := strtofloat(tirapontos(EdValor.Text));
  if edentrada.Visible then
     dEntrada := strtofloat(tirapontos(Edentrada.Text));
  //endi
  if edsaida.Visible then
     dsaida := strtofloat(tirapontos(Edsaida.Text));
  //endi
  if (CbPgtoVista.Checked = True) and (RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão') then
    dValor := dValor/ iVEzes;
  //endi
  sCodAlu := FrmDados.CDS_CadAluno.FieldByName('CODIGO').asString;
  sCodEvento := FrmDados.CDS_Evento.FieldByName('CODIGO').AsString;
  iD := strtoint(EdVenc.Text);
  if iDia > iD then
  begin
    if iMes = 12 then
    begin
      iAno := iAno + 1;
      iMes := 0;
    end;
    //endi
    iMes := iMes + 1;
  end;
  //endi

  if copy(floattostr(frac(dValor)),3,2) <> '' then
    sMsg := 'Deseja gerar '+inttostr(iVezes)+' parcelas no valor de R$'+floattostr(trunc(dValor))+','+ copy(floattostr(frac(dValor)),3,2) + ' com vencimento todo dia '+inttostr(iD)+'?'
  else
    sMsg := 'Deseja gerar '+inttostr(iVezes)+' parcelas no valor de R$'+floattostr(trunc(dValor))+',00 com vencimento todo dia '+inttostr(iD)+'?';
  if MessageDlg(sMsg,mtWarning, [mbYes,mbNo], 0) = 6 then
  begin
    with FrmDados do
    begin
      count := 1;
      while count <= ivezes do
      begin
        CDS_ContasRecNubia.Append;
        if CBTpEvento.Checked = True then
        begin
          CDS_ContasRecNubia.FieldByName('CODEVENTO').AsString := sCodEvento;
          CDS_ContasRecNubia.FieldByName('TIPO').AsString := 'EVENTO';
        end
        else
        begin
          CDS_ContasRecNubia.FieldByName('TIPO').AsString := EdTipo.Text;
        end;
        //endi

        if CBEtapa.Checked = True then
        begin
          CDS_ContasRecNubia.FieldByName('ETAPA').AsString := 'T';
        end
        else
        begin
          CDS_ContasRecNubia.FieldByName('ETAPA').AsString := 'F';
        end;
        //endi

        CDS_ContasRecNubia.FieldByName('CODALU').AsString := sCodAlu;
        CDS_ContasRecNubia.FieldByName('VALOR').AsFloat := dValor;
        CDS_ContasRecNubia.FieldByName('EMISSAO').AsDateTime := date;
        CDS_ContasRecNubia.FieldByName('DATA').AsString := inttostr(iD) + '/' + inttostr(iMes) + '/' + inttostr(iAno);
        CDS_ContasRecNubia.FieldByName('RECIBO').AsString := 'F';
        CDS_ContasRecNubia.FieldByName('OBS').AsString := MemoObs.Lines.GetText;
        CDS_ContasRecNubia.FieldByName('ANO').AsString := EdAno.Text;
        CDS_ContasRecNubia.FieldByName('ENTRADA').AsFloat := dEntrada;
        CDS_ContasRecNubia.FieldByName('SAIDA').AsFloat := dSaida;
        //CDS_ContasRecNubia.FieldByName('RECIBO').AsString := ;

        CDS_ContasRecNubia.Post;

        if (CBPgtoVista.Checked = true) then
        begin
          if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
          begin
            sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] + '/' + RGPTipo.Items.Strings[RGPTipo.ItemIndex] + '/' + RGPCartao.Items.Strings[RGPCartao.ItemIndex];
          end
          else
          begin
            sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex];
          end;
          //endi

          if sFormaPgto = 'Cheque' then
          begin
            FrmDadosCheque := TFrmDadosCheque.Create(self);
            FrmDadosCheque.EdData.Text := CDS_ContasRecNubia.FieldByName('DATA').AsString;
            FrmDadosCheque.ShowModal;
            FrmDadosCheque.Free;
            sCodConta := inttostr(CDS_ContasRecNubia.FieldByName('CODIGO').AsInteger);
            CDS_DadosCheque.Append;
            CDS_DadosCheque.FieldByName('CODCONTANUBIA').AsString := sCodConta;
            CDS_DadosCheque.FieldByName('Numero').AsString := sNumCheque;
            CDS_DadosCheque.FieldByName('Banco').AsString := sBancoCheque;
            CDS_DadosCheque.FieldByName('Data').AsString := sDataCheque;
            CDS_DadosCheque.Post;

            CDS_ContasRecNubia.Edit;
            CDS_ContasRecNubia.FieldByName('TipoPgto').AsString := 'Cheque';
            //CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := CDS_DadosCheque.FieldByName('DATA').AsDateTime;
            CDS_ContasRecNubia.Post;
          end;
          //endi

          CDS_ContasRecNubia.Edit;
          if sFormaPgto <> 'Cheque' then
            CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := date;
          //endi
          CDS_ContasRecNubia.FieldByName('TIPOPGTO').AsString := sFormaPgto;
          CDS_ContasRecNubia.Post;
        end;
        //endi

        iMes := iMes + 1;
        if iMes = 13 then
        begin
          iMes := 1;
          iAno := iAno + 1;
        end;
        //endi
        count := count + 1;
      end;
      //endwh
    end;
    //endth
  end;
  //endi
  showmessage('Contas geradas com sucesso!');
  EdData.Text := datetostr(date);
  decodedate(date,iAno,iMes,iDia);
  EdAno.Text := inttostr(iAno);
  EdQntd.Text := '';
  EdValor.Text := '0,00';
  EdEntrada.Text := '0,00';
  EdSaida.Text := '0,00';
  EdTipo.Text := '';
  EdVenc.Text := '';
  CBTpEvento.Checked := False;
  CBEtapa.Checked := False;
  CBPgtoVista.Checked := False;
  edentrada.Visible := false;
  edsaida.Visible := false;
  lbltitentrada.Visible := false;
  lbltitsaida.Visible := false;
  rgptipo.Visible := false;
  rgpcartao.Visible := false;


 except
  showmessage('Falha ao gerar as contas!');
 end;
 //endtry
end;

procedure TFrmGeraContas.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmGeraContas.BtnProcEventoClick(Sender: TObject);
begin
  FrmProcEvento := TFrmProcEvento.Create(self);
  FrmProcEvento.ShowModal;
  FrmProcEvento.Free;
end;

procedure TFrmGeraContas.CBTpEventoClick(Sender: TObject);
begin
  if CBTpEvento.Checked = True then
  begin
    EdTipo.Visible := False;
    CBXEvento.Visible := True;
    BtnProcEvento.Visible := True;
  end
  else
  begin
    EdTipo.Visible := True;
    CBXEvento.Visible := False;
    BtnProcEvento.Visible := False;
  end;
  //endi
end;

procedure TFrmGeraContas.CBPgtoVistaClick(Sender: TObject);
begin
  if CBPgtoVista.Checked = true then
  begin
    RGPFormaPgto.Visible := true;
  end
  else
  begin
    RGPFormaPgto.Visible := False;
  end;
  //endi
end;

procedure TFrmGeraContas.RGPFormaPgtoClick(Sender: TObject);
begin

  edentrada.Text := '0,00';
  edsaida.Text := '0,00';

  edentrada.Visible := true;
  lbltitentrada.Visible := true;

  lbltitsaida.Visible := true;
  edsaida.Visible := true;

  RGPTipo.Visible := false;
  RgpCartao.Visible := false;

  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
  begin
     edentrada.Text := edvalor.Text;

     edsaida.Visible := false;
     lbltitsaida.Visible := false;

     RGPTipo.Visible := True;
     RgpCartao.Visible := True;
  end;
  //endi

  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cheque' then
  begin
     edentrada.Text := edvalor.Text;

     edsaida.Visible := false;
     lbltitsaida.Visible := false;

  end;
  //endi

  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Boleto' then
  begin



     edentrada.Visible := false;
     lbltitentrada.Visible := false;

     edsaida.Visible := false;
     lbltitsaida.Visible := false;

  end;
  //endi

  frmgeracontas.Update; 

end;

procedure TFrmGeraContas.FormShow(Sender: TObject);
var
  iAno,
  iMes,
  iDia:word;
begin
  EdData.Text := datetostr(date);
  decodedate(date,iAno,iMes,iDia);
  EdAno.Text := inttostr(iAno);

  lbltitentrada.Visible := false;
  edentrada.Visible := false;

  lbltitsaida.Visible := false;
  edsaida.Visible := false;


  edvalor.Text := '0,00';
  edentrada.Text := '0,00';
  edsaida.Text := '0,00';




end;

procedure TFrmGeraContas.CBEtapaClick(Sender: TObject);
begin
  if CBEtapa.Checked = True then
  begin
    if EdTipo.Text = '' then
      EdTipo.Text := 'ETAPA';
    //endi
  end;
  //endi
end;

procedure TFrmGeraContas.edentradaExit(Sender: TObject);
begin
try
  if strtofloat(tirapontos(edentrada.Text)) > 0 then
     begin
       edentrada.Text := formatfloat('###,##0.00',strtofloat(tirapontos(edentrada.Text)));
       edsaida.Text :=  formatfloat('###,##0.00',strtofloat(tirapontos( edentrada.Text )) - strtofloat(tirapontos( edvalor.Text))  );
     end;
  //endi
except
  edentrada.Text := '0,00';
  edentrada.SetFocus;
end;



end;

procedure TFrmGeraContas.EdValorExit(Sender: TObject);
begin
try
  edvalor.Text := formatfloat('###,##0.00',strtofloat(tirapontos(edvalor.Text)));
except
  edvalor.Text := '';
  edvalor.SetFocus;
end;
end;

procedure TFrmGeraContas.edsaidaExit(Sender: TObject);
begin
try
  edsaida.Text := formatfloat('###,##0.00',strtofloat(tirapontos(edsaida.Text)));
except
  edsaida.Text := '0,00';
  edsaida.SetFocus;
end;
end;

procedure TFrmGeraContas.edentradaKeyPress(Sender: TObject; var Key: Char);
begin
  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
  begin
    key := #0;
  end;
  //endi
  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cheque' then
  begin
    key := #0;
  end;
  //endi

end;

end.

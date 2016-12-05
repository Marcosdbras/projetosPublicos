unit UBaixaConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmBaixaConta = class(TForm)
    CBXCampo1: TComboBox;
    EdInfo1: TEdit;
    CBXCampo2: TComboBox;
    EdInfo2: TEdit;
    CBXCampo3: TComboBox;
    EdInfo3: TEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RGPFormaPgto: TRadioGroup;
    Label1: TLabel;
    EdValor: TEdit;
    RGPCartao: TRadioGroup;
    EdVezes: TEdit;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RGPFormaPgtoClick(Sender: TObject);
    procedure EdInfo1Enter(Sender: TObject);
    procedure EdInfo2Enter(Sender: TObject);
    procedure EdInfo3Enter(Sender: TObject);
    procedure RGPCartaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixaConta: TFrmBaixaConta;

implementation

uses UDados, uGeral, UDadosCheque, UMsgRecibo, uPesqRecibo;

{$R *.dfm}

procedure TFrmBaixaConta.BtnConfirmarClick(Sender: TObject);
var
  CONDICAO:INTEGER;
  sCampo1,
  sCampo2,
  sCampo3,
  OPERACAO,
  ORDEM,
  sMsg,
  sql,
  sFormaPgto,
  sTipo,
  sCodAlu,
  sData,
  sEmissao,
  sCodConta : STRING;
  bCampo1,
  bCampo2,
  bCampo3 : boolean;
  dValor,
  dValorConta : double;
begin
  bCampo1 := False;
  bCampo2 := False;
  bCampo3 := False;
  Sql := '';
  dValor := strtofloat(EdValor.Text);

  if not bBaixaContasA then
  begin
    showmessage('Este usuário não possui privilégios para alterar uma conta');
    Exit;
  end;
  //endi

  bContasRecNubiaA := True;

  if (EdInfo1.Text <> 'DIGITE O TEXTO PARA PESQUISA') AND (EdInfo1.Text <> '') then
  begin
    bCampo1 := True;
  end;
  //endi

  if (EdInfo2.Text <> 'DIGITE O TEXTO PARA PESQUISA') AND (EdInfo2.Text <> '') then
  begin
    bCampo2 := True;
  end;
  //endi

  if (EdInfo3.Text <> 'DIGITE O TEXTO PARA PESQUISA') AND (EdInfo3.Text <> '') then
  begin
    bCampo3 := True;
  end;
  //endi

  if bCampo1 then
  BEGIN
    CONDICAO := CBXCampo1.ItemIndex;
    CASE CONDICAO OF
      0:sCAMPO1 := ' AND R.CODIGO ';
      1:sCAMPO1 := ' AND C.NOME ';
      2:sCAMPO1 := ' AND R.DATA ';
      3:sCampo1 := ' AND R.EMISSAO ';
      4:sCampo1 := ' AND R.TIPO ';
      5:sCAMPO1 := ' AND R.VALOR ';
    ELSE
      //EXIT;
    END;
    //endcase
  end;
  //endi

  if bCampo2 then
  BEGIN
    CONDICAO := CBXCampo2.ItemIndex;
    CASE CONDICAO OF
      0:sCAMPO2 := ' AND R.CODIGO ';
      1:sCAMPO2 := ' AND C.NOME ';
      2:sCampo2 := ' AND R.DATA ';
      3:sCampo2 := ' AND R.EMISSAO ';
      4:sCampo2 := ' AND R.TIPO ';
      5:sCAMPO2 := ' AND R.VALOR ';
    ELSE
      //EXIT;
    END;
    //endcase
  end;
  //endi

  if bCampo3 then
  BEGIN
    CONDICAO := CBXCampo3.ItemIndex;
    CASE CONDICAO OF
      0:sCAMPO3 := ' AND R.CODIGO ';
      1:sCAMPO3 := ' AND C.NOME ';
      2:sCampo3 := ' AND R.DATA ';
      3:sCampo3 := ' AND R.EMISSAO ';
      4:sCampo3 := ' AND R.TIPO ';
      5:sCAMPO3 := ' AND R.VALOR ';
    ELSE
      //EXIT;
    END;
    //endcase
  end;
  //endi

  if bCampo1 then
  begin
    OPERACAO := 'LIKE '+QUOTEDSTR('%'+EDInfo1.Text+'%');
    SQL := SQL + sCAMPO1 + OPERACAO;
  end;
  //endi

  if bCampo2 then
  begin
    OPERACAO := 'LIKE '+QUOTEDSTR('%'+EDInfo2.Text+'%');
    SQL := SQL + sCAMPO2 + OPERACAO;
  end;
  //endi

  if bCampo3 then
  begin
    OPERACAO := 'LIKE '+QUOTEDSTR('%'+EDInfo3.Text+'%');
    SQL := SQL + sCAMPO3 + OPERACAO;
  end;
  //endi

  WITH FrmDados do
  begin
    CDS_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNUBIA R INNER JOIN CADALUNO C ON R.CODAlu = C.CODIGO AND pago is null ' + SQL + ' order by R.DATA');
    DBX_ContasRecNubia.Active := True;
    CDS_ContasRecNubia.Active := True;

    dValorConta := CDS_ContasRecNubia.FieldByName('VALOR').AsFloat;
    sTipo := CDS_ContasRecNubia.FieldByName('TIPO').AsString;
    sData := CDS_ContasRecNubia.FieldByName('DATA').AsString;
    sCodAlu := CDS_ContasRecNubia.FieldByName('CODALU').AsString;
    sEmissao := CDS_ContasRecNubia.FieldByName('EMISSAO').AsString;

    if CDS_ContasRecNubia.RecordCount = 0 then
    begin
      showmessage('Nenhuma conta encontrada com as informações passadas!');
      Exit;
    end;
    //endi

    if copy(floattostr(frac(dValor)),3,2) <> '' then
      sMsg := 'Tem Certeza que deseja debitar o valor de R$'+floattostr(trunc(dValor))+','+ copy(floattostr(frac(dValor)),3,2) + ' nesta conta? Nome do aluno: ' + CDS_ContasRec.FieldByName('NomeAlu').AsString + ', Valor: ' + CDS_ContasRec.FieldByName('VALOR').AsString + ', Tipo: ' + CDS_ContasRec.FieldByName('TIPO').AsString + ' e data de vencimento: ' + CDS_ContasRec.FieldByName('DATA').AsString
    else
      sMsg := 'Tem Certeza que deseja debitar o valor de R$'+floattostr(trunc(dValor))+',00 nesta conta? Nome do aluno: ' + CDS_ContasRec.FieldByName('NomeAlu').AsString + ', Valor: ' + CDS_ContasRec.FieldByName('VALOR').AsString + ', Tipo: ' + CDS_ContasRec.FieldByName('TIPO').AsString + ' e data de vencimento: ' + CDS_ContasRec.FieldByName('DATA').AsString;

    if MessageDlg(sMsg,mtWarning, [mbYes,mbNo], 0) = 6 then
    BEGIN
     try
      if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
      begin
        sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] + '/' + RGPCartao.Items.Strings[RGPFormaPgto.ItemIndex];
      end
      else
      begin
        sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex];
      end;
      //endi

      //recebe os dados do cheque
      if sFormaPgto = 'Cheque' then
      begin
        DBX_DadosCheque.Active := True;
        CDS_DadosCheque.Active := True;
        FrmDadosCheque := TFrmDadosCheque.Create(self);
        FrmDadosCheque.EdData.Text := CDS_ContasRecNubia.FieldByName('DATA').AsString;
        FrmDadosCheque.ShowModal;
        FrmDadosCheque.Free;
        sCodConta := inttostr(CDS_ContasRecNubia.FieldByName('CODIGO').AsInteger);
        CDS_DadosCheque.Append;
        CDS_DadosCheque.FieldByName('CODCONTA').AsString := sCodConta;
        CDS_DadosCheque.FieldByName('Numero').AsString := sNumCheque;
        CDS_DadosCheque.FieldByName('Banco').AsString := sBancoCheque;
        CDS_DadosCheque.FieldByName('Data').AsString := sDataCheque;
        CDS_DadosCheque.Post;
      end;
      //endi

      if bContasRecNubiaA then
      begin
        if dValor = dValorConta then
        begin
          CDS_ContasRecNubia.Edit;
          CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := date;
          CDS_ContasRecNubia.FieldByName('TIPOPGTO').AsString := sFormaPgto;
          CDS_ContasRecNubia.Post;
          showmessage('Conta debitada com sucesso!');
        end
        else if dValor < dValorConta then
        begin
          CDS_ContasRecNubia.Edit;
          CDS_ContasRecNubia.FieldByName('VALOR').AsFloat := dValorConta - dValor;
          CDS_ContasRecNubia.Post;

          if copy(floattostr(frac(dValor)),3,2) <> '' then
            showmessage('Foram debitados R$' + floattostr(trunc(dValor))+','+ copy(floattostr(frac(dValor)),3,2) + ' e ainda faltam R$' + floattostr(trunc(dValorConta - dValor))+','+ copy(floattostr(frac(dValorConta - dValor)),3,2) + ' a serem pagos.')
          else
            showmessage('Foram debitados R$' + floattostr(trunc(dValor))+',00 e ainda faltam R$' + floattostr(trunc(dValorConta - dValor))+',00 a serem pagos.');

          CDS_ContasRecNubia.Append;
          CDS_ContasRecNubia.FieldByName('TIPO').AsString := sTipo;
          CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := date;
          CDS_ContasRecNubia.FieldByName('TIPOPGTO').AsString := sFormaPgto;
          CDS_ContasRecNubia.FieldByName('CODALU').AsString := sCodAlu;
          CDS_ContasRecNubia.FieldByName('VALOR').AsFloat := dValor;
          CDS_ContasRecNubia.FieldByName('EMISSAO').AsString := sEmissao;
          CDS_ContasRecNubia.FieldByName('DATA').AsString := sData;
          CDS_ContasRecNubia.Post;
        end
        else
        begin
          CDS_ContasRecNubia.Edit;
          CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := date;
          CDS_ContasRecNubia.FieldByName('TIPOPGTO').AsString := sFormaPgto;
          CDS_ContasRecNubia.Post;

          dValor := dValor - dValorConta;
          if copy(floattostr(frac(dValor)),3,2) <> '' then
            showmessage('Conta debitada com sucesso! Troco no valor de R$' + floattostr(trunc(dValor))+','+ copy(floattostr(frac(dValor)),3,2))
          else
            showmessage('Conta debitada com sucesso! Troco no valor de R$' + floattostr(trunc(dValor))+',00');
        end;
        //endi

        //recibo
        FrmMsgRecibo := TFrmMsgRecibo.Create(self);
        FrmMsgRecibo.ShowModal;
        FrmMsgRecibo.Free;

        if FrmMsgRecibo.Resp then
        begin
          FrmPesqRecibo := TFrmPesqRecibo.Create(self);
          FrmPesqRecibo.Show;
        end;
        //endi

        EdInfo1.Text := 'DIGITE O TEXTO PARA PESQUISA';
        EdInfo2.Text := 'DIGITE O TEXTO PARA PESQUISA';
        EdInfo3.Text := 'DIGITE O TEXTO PARA PESQUISA';
        EdValor.Text := '';
        EdInfo1.SetFocus;
      end
      else
      begin
        showmessage('Este usuário não possui privilégios para alterar uma conta!');
      end;
      //endi
     except
      showmessage('Falha ao dar baixa na conta!');
     end;
     //endtry
    END;
    //endi
  END;
  //endth
end;

procedure TFrmBaixaConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmBaixaConta := nil;
end;

procedure TFrmBaixaConta.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBaixaConta.RGPFormaPgtoClick(Sender: TObject);
begin
  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
  begin
    RGPCartao.Visible := True;
  end
  else
  begin
    RGPCartao.Visible := False;
  end;
  //endi
end;

procedure TFrmBaixaConta.EdInfo1Enter(Sender: TObject);
begin
  If EdInfo1.Text = 'Digite o texto para pesquisa' then
    EdInfo1.Clear;
  //endi
end;

procedure TFrmBaixaConta.EdInfo2Enter(Sender: TObject);
begin
  If EdInfo2.Text = 'Digite o texto para pesquisa' then
    EdInfo2.Clear;
  //endi
end;

procedure TFrmBaixaConta.EdInfo3Enter(Sender: TObject);
begin
  If EdInfo3.Text = 'Digite o texto para pesquisa' then
    EdInfo3.Clear;
  //endi
end;

procedure TFrmBaixaConta.RGPCartaoClick(Sender: TObject);
begin
  {if RGPCartao.Items.Strings[RGPFormaPgto.ItemIndex] = 'Crédito' then
  begin
    EdVezes.Visible := True;
  end
  else
  begin
    EdVezes.Visible := False;
  end;
  //endi}
end;

end.

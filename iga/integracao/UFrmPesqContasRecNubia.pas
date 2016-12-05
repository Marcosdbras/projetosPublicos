unit UFrmPesqContasRecNubia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask,DB, ExtCtrls;

type
  TFrmPesqContasRecNubia = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    EdInicio: TMaskEdit;
    EdFim: TMaskEdit;
    CBXData: TComboBox;
    CBXOrdem: TComboBox;                  
    Label3: TLabel;
    LblTotal: TLabel;
    BtnMenu: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnRecebido: TBitBtn;
    BtnLimpar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnRetornar: TBitBtn;
    BtnGerarRecibo: TBitBtn;
    BtnObs: TBitBtn;
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnRecebidoClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure EdFimEnter(Sender: TObject);
    procedure CBXDataChange(Sender: TObject);
    procedure CBXOrdemChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnRetornarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnGerarReciboClick(Sender: TObject);
    procedure BtnObsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SQL,
    sFormaPgto: String;
    ordem:String;
  end;

var
  FrmPesqContasRecNubia: TFrmPesqContasRecNubia;

implementation

uses UDados, UFiltroContas, uGeral, UEscFormPgto, UDadosCheque, UMsgRecibo,
  uPesqRecibo, UPesqContasRec, UFIltroContasNubia, UMenuPrincipal,
  UObsConta;

{$R *.dfm}

procedure TFrmPesqContasRecNubia.BtnExcluirClick(Sender: TObject);
begin
  if BtnRecebido.Visible = True then
  begin
    if not bContasRecNubiaE then
    begin
      showmessage('Este usuário não possui privilégios para excluir este registro!');
      Exit;
    end;
    //endi
  end
  else
  begin
    if not bContasRecebidasNubiaE then
    begin
      showmessage('Este usuário não possui privilégios para excluir este registro!');
      Exit;
    end;
    //endi
  end;
  //endi
  if MessageDlg('Deseja realmente excluir esta nota dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_ContasRecNubia.Delete;
  //endi
end;

procedure TFrmPesqContasRecNubia.BtnMenuClick(Sender: TObject);
begin
  //showmessage(datetostr(25/12/2009-24/11/2009);
  EDInicio.Clear;
  EDFim.Clear;
  Close;
end;

procedure TFrmPesqContasRecNubia.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroContas := TFrmFiltroContas.Create(self);
  FrmFiltroContas.ShowModal;
  FrmFiltroContas.Free;
end;

procedure TFrmPesqContasRecNubia.BitBtn1Click(Sender: TObject);
begin
  FrmFiltroContasNubia := TFrmFiltroContasNubia.Create(self);
  FrmFiltroContasNubia.ShowModal;
  FrmFiltroContasNubia.Free;
end;

procedure TFrmPesqContasRecNubia.BtnRecebidoClick(Sender: TObject);
var
  iano,
  imes,
  idia:word;
  sMes,
  sCodConta,
  SQLConta:String;
begin
  if not bContasRecNubiaA then
  begin
    showmessage('Este usuário não possui privilégios para alterar uma conta!');
    Exit;
  end;
  //endi
  with FrmDados do
  begin
    decodedate(CDS_ContasRecNubia.FieldByName('Data').AsDateTime,iano,imes,idia);

    case imes of
      1:sMes := 'JAN';
      2:sMes := 'FEV';
      3:sMes := 'MAR';
      4:sMes := 'ABR';
      5:sMes := 'MAI';
      6:sMes := 'JUN';
      7:sMes := 'JUL';
      8:sMes := 'AGO';
      9:sMes := 'SETE';
      10:sMes := 'OUT';
      11:sMes := 'NOV';
      12:sMes := 'DEZ';
    end;
    //endcase

    if (CDS_ContasRecNubia.State <> dsEdit) and (CDS_ContasRecNubia.State <> dsInsert) then
      CDS_ContasRecNubia.Edit;

    CDS_ContasRecNubia.FieldByName('PAGO').AsDateTime := date;
    CDS_ContasRecNubia.FieldByName('PAGO').AsString := inputbox('Data de pagamento','Confirme a data de pagamento desta conta.',datetostr(date));
    FrmEscFormPgto := TFrmEscFormPgto.Create(self);
    with FrmEscFormPgto do
    begin
      ShowModal;
      Free;
    end;
    //endth

    if sFormaPgto = '' then
    begin
      CDS_ContasRecNubia.Cancel;
      Exit;
    end;
    //endi

    //recebe os dados do cheque
    if sFormaPgto = 'Cheque' then
    begin
      CDS_DAdosCheque.Active := False;
      CDS_DadosChequeCodContaNubia.DefaultExpression := CDS_ContasRecNubia.FieldByName('CODIGO').AsString;
      DBX_DadosCheque.Active := False;
      DBX_DadosCheque.SQL.Clear;
      DBX_DadosCheque.SQL.Add('select * from Dados_Cheque where codcontanubia = ' + CDS_ContasRecNubia.fieldByName('CODIGO').AsString);
      DBX_DadosCheque.Active := True;
      CDS_DadosCheque.Active := True;

      FrmDadosCheque := TFrmDadosCheque.Create(self);
      if CDS_DadosCheque.RecordCount <> 0 then
      begin
        FrmDadosCheque.EdNumero.Text := CDS_DadosCheque.FieldByName('NUMERO').AsString;
        FrmDadosCheque.EdData.Text := CDS_DadosCheque.FieldByName('DATA').AsString;
        FrmDadosCheque.EdBanco.Text := CDS_DadosCheque.FieldByName('BANCO').AsString;
      end
      else
      begin
        FrmDadosCheque.EdData.Text := CDS_ContasRecNubia.FieldByName('DATA').AsString;
      end;
      //endi
      FrmDadosCheque.ShowModal;
      FrmDadosCheque.Free;
      sCodConta := inttostr(CDS_ContasRecNubia.FieldByName('CODIGO').AsInteger);
      CDS_DadosCheque.Append;
      CDS_DadosCheque.FieldByName('CODCONTANUBIA').AsString := sCodConta;
      CDS_DadosCheque.FieldByName('Numero').AsString := sNumCheque;
      CDS_DadosCheque.FieldByName('Banco').AsString := sBancoCheque;
      CDS_DadosCheque.FieldByName('Data').AsString := sDataCheque;
      CDS_DadosCheque.Post;
    end;
    //endi

    CDS_ContasRecNubia.FieldByName('TipoPgto').AsString := sFormaPgto;
    CDS_ContasRecNubia.Post;
    
    //recibo
    FrmMsgRecibo := TFrmMsgRecibo.Create(self);
    FrmMsgRecibo.ShowModal;
    FrmMsgRecibo.Free;

    if FrmMsgRecibo.Resp then
    begin
      CDS_ContasRecNubia.Edit;

      if CDS_ContasRecNubia.State in [dsedit,dsinsert] then
      begin
        CDS_ContasRecNubia.FieldByName('RECIBO').AsString := 'T';
        CDS_ContasRecNubia.Post;
      end;
      //endi
      
      FrmPesqRecibo := TFrmPesqRecibo.Create(self);
      FrmPesqRecibo.Show;
    end;
    //endi

    CDS_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.Active := False;
    SQLConta := DBX_ContasRecNubia.SQL.Text;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add(SQLConta);
    DBX_ContasRecNubia.Active := True;
    CDS_ContasRecNubia.Active := True;

    {CDS_Mensalidade.Active := False;
    DBX_Mensalidade.Active := False;
    DBX_Mensalidade.SQL.Clear;
    DBX_Mensalidade.SQL.Add('Select * from mensalidade where codaluno = ' + CDS_ContasRecNubia.FieldByName('CODALU').AsString + ' and anoletivo = ' + quotedstr(inttostr(iano)));
    DBX_Mensalidade.Active := True;
    CDS_Mensalidade.Active := True;

    CDS_Mensalidade.Edit;
    CDS_Mensalidade.FieldByName(sMes).AsString := 'S';
    CDS_Mensalidade.Post;}
  end;
  //endth
end;

procedure TFrmPesqContasRecNubia.BtnLimparClick(Sender: TObject);
begin
  EDInicio.Clear;
  EDFim.Clear;
  SQL:='';
  FrmDados.CDS_ContasRecNubia.Active:=False;
  FrmDados.DBX_ContasRecNubia.Active:=False;
  FrmDados.DBX_ContasRecNubia.SQL.Clear;

  if(CBXOrdem.ItemIndex = 0)then
  begin
    ordem:='Nome';
  end
  else if(CBXOrdem.ItemIndex = 1) then
  begin
    ordem:='CODIGO';
  end
  else if(CBXOrdem.ItemIndex = 2) then
  begin
    ORDEM:='VALOR';
  end
  else if(CBXOrdem.ItemIndex = 3) then
  begin
    ORDEM:='DATA';
  end
  else
  begin
    ORDEM:='PAGO';
  end;

  if Caption = 'Pesquisa de contas a receber' then
  begin
    FrmDados.DBX_ContasRecNubia.SQL.Add('select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM);
  end
  else
  begin
    FrmDados.DBX_ContasRecNubia.SQL.Add('select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NOT NULL ORDER BY '+ORDEM);
  end;
  FrmDados.DBX_ContasRecNubia.Active:=True;
  FrmDados.CDS_ContasRecNubia.Active:=True;
end;

procedure TFrmPesqContasRecNubia.EdFimEnter(Sender: TObject);
var
  sql:String;
begin
  if(CBXOrdem.ItemIndex = 0)then
  begin
    ordem:='Nome';
  end
  else if(CBXOrdem.ItemIndex = 1) then
  begin
    ordem:='CODIGO';
  end
  else if(CBXOrdem.ItemIndex = 2) then
  begin
    ORDEM:='VALOR';
  end
  else if(CBXOrdem.ItemIndex = 3) then
  begin
    ORDEM:='DATA';
  end
  else
  begin
    ORDEM:='PAGO';
  end;

  if(Caption = 'Pesquisa de contas a receber') then
  begin
    sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL ORDER BY '+ORDEM;
  end
  else
  begin
    sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NOT NULL '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND DATA IS NOT NULL ORDER BY '+ORDEM;
      end
      else
      begin
        sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL ORDER BY '+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRecNubia.Active:=False;
    DBX_ContasrecNubia.Active:=False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add(sql);
    //showmessage(sql);
    DBX_ContasRecNubia.Active:=True;
    CDS_ContasRecNubia.Active:=True;
  end;
end;

procedure TFrmPesqContasRecNubia.CBXDataChange(Sender: TObject);
var
  sql:String;
begin
  if(CBXOrdem.ItemIndex = 0)then
  begin
    ordem:='Nome';
  end
  else if(CBXOrdem.ItemIndex = 1) then
  begin
    ordem:='CODIGO';
  end
  else if(CBXOrdem.ItemIndex = 2) then
  begin
    ORDEM:='VALOR';
  end
  else if(CBXOrdem.ItemIndex = 3) then
  begin
    ORDEM:='DATA';
  end
  else
  begin
    ORDEM:='PAGO';
  end;

  if(Caption = 'Pesquisa de contas a receber') then
  begin
    sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODALU = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      sql:='select R.* FROM contasareceberNubia R INNER JOIN CADAluno C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL ORDER BY '+ORDEM;
  end
  else
  begin
    sql:='select R.* FROM contasareceberNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NOT NULL '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        sql:='select R.* FROM contasareceberNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND DATA IS NOT NULL ORDER BY '+ORDEM;
      end
      else
      begin
        sql:='select R.* FROM contasareceberNUbia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL ORDER BY '+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRecNubia.Active:=False;
    DBX_ContasRecNubia.Active:=False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add(sql);
    //showmessage(sql);
    DBX_ContasRecNubia.Active:=True;
    CDS_ContasRecNubia.Active:=True;
  end;
end;

procedure TFrmPesqContasRecNubia.CBXOrdemChange(Sender: TObject);
var
  TxtSql:String;
begin
  {if(sql='')then
  begin}
    if(CBXOrdem.ItemIndex = 0)then
    begin
      ordem:=' order by Nome';
    end
    else if(CBXOrdem.ItemIndex = 1) then
    begin
      ordem:=' order by CODIGO';
    end
    else if(CBXOrdem.ItemIndex = 2) then
    begin
      ORDEM:=' order by VALOR';
    end
    else if(CBXOrdem.ItemIndex = 3) then
    begin
      ORDEM:=' order by DATA';
    end
    else
    begin
      ORDEM:=' order by PAGO';
    end;
  {end
  else
  begin
    ordem:='';
  end;
  //endi}

  if(Caption = 'Pesquisa de contas a receber') then
  begin
    Txtsql:='select R.* FROM contasareceberNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NULL '+SQL+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      Txtsql:='select R.* FROM contasareceberNubia R INNER JOIN CADaLUNO C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL '+SQL+ORDEM;
  end
  else
  begin
    TXtsql:='select R.* FROM contasareceberNUbia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NOT NULL '+SQL+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        TXtsql:='select R.* FROM contasareceberNUbia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL+ORDEM;
      end
      else
      begin
        Txtsql:='select R.* FROM contasareceberNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRecNubia.Active:=False;
//    FrmDados.CDS_ContasDiferena.AsInteger := subDatas(CDS_Contas.fieldByName('DATA').AsDateTime, CDS_Contas.fieldByName('PAGO').AsDateTime);
    DBX_ContasRecNubia.Active:=False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add(TXtsql);
    //showmessage(TXtsql);
    DBX_ContasRecNubia.Active:=True;
    CDS_ContasRecNubia.Active:=True;
  end;
end;

procedure TFrmPesqContasRecNubia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmPesqContasRecNubia := nil;
end;

procedure TFrmPesqContasRecNubia.FormCreate(Sender: TObject);
begin
  SQL:='';
end;

procedure TFrmPesqContasRecNubia.BtnRetornarClick(Sender: TObject);
var
  sCodConta,
  sqlConta:String;
begin
  if not bContasRecebidasNubiaA then
  begin
    showmessage('Este usuário não possui privilégios para alterar uma conta!');
    Exit;
  end;
  //endi
  if MessageDlg('Deseja retornar esta conta às contas a receber?',mtWarning, [mbYes,mbNo], 0) = 6 then
  begin
    with FrmDados do
    begin
      {CDS_ContasRecNubia.Edit;
      CDS_ContasRecNubia.FieldByName('PAGO').AsString set null;
      CDS_ContasRecNubia.Post;}
      sCodConta := CDS_ContasRecNubia.FieldByName('CODIGO').AsString;
      sqlConta := DBX_ContasRecNubia.SQL.Text;

      CDS_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.SQL.Clear;
      iniciaTransacao;
      DBX_ContasRecNubia.SQL.Add('UPDATE CONTASARECEBERNubia SET PAGO = NULL WHERE CODIGO = ' + sCodConta);
      DBX_ContasRecNubia.ExecSQL;
      finalizaTransacao;
      DBX_ContasRecNubia.SQL.Clear;
      DBX_ContasRecNubia.SQL.Add(sqlConta);
      DBX_ContasRecNubia.Active := True;
      CDS_ContasRecNubia.Active := True;

      CDS_ContasRecNubia.Edit;
      CDS_ContasRecNubia.FieldByName('TIPOPGTO').AsString := '';
      CDS_ContasRecNubia.Post;

      CDS_DadosCheque.Active := False;
      DBX_DadosCheque.Active := False;
      DBX_DadosCheque.SQL.Clear;
      DBX_DadosCheque.SQL.Add('SELECT * FROM DADOS_CHEQUE WHERE CODCONTA = ' + CDS_ContasRecNubia.FieldByName('CODIGO').AsString);
      DBX_DadosCheque.Active := True;
      CDS_DadosCheque.Active := True;

      if CDS_DadosCheque.RecordCount <> 0 then
        CDS_DadosCheque.Delete;
      //endi
    end;
    //endth
  end;
  //endi
end;

procedure TFrmPesqContasRecNubia.DBGrid1DblClick(Sender: TObject);
begin
//  if FrmPesqContasRecNubia.Caption = 'Pesquisa de contas recebidas' then
  //begin
    with FrmDados do
    begin
      if CDS_COntasRecNubia.FieldByName('TIpoPgto').AsString = 'Cheque' then
      begin
        CDS_DadosCheque.Active := False;
        DBX_DadosCheque.Active := False;
        DBX_DadosCheque.SQL.Clear;
        DBX_DadosCheque.SQL.Add('SELECT * FROM DADOS_CHEQUE WHERE CODCONTANUBIA = ' + CDS_ContasRecNUBIA.FieldByName('CODIGO').AsString);
        DBX_DadosCheque.Active := True;
        CDS_DadosCheque.Active := True;
        showmessage('O número do cheque é ' + CDS_DadosCheque.FieldByName('NUMERO').AsString + ', a data é ' + CDS_DadosCheque.FieldByName('DATA').AsString + ' e o banco é ' + CDS_DadosCheque.FieldByName('BANCO').AsString);
      end;
      //endi
    end;
    //endth
  //end;
  //endi
end;

procedure TFrmPesqContasRecNubia.BtnGerarReciboClick(Sender: TObject);
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
    if CDS_ContasRecNubia.FieldByName('RECIBO').AsString = 'T' then
    begin
      if MessageDlg('Este recibo ja foi gerado. Deseja gerar novamente?',mtWarning, [mbYes,mbNo], 0) = 7 then
        Exit;
    end;
    //endi

    DBX_Exec.Active := False;
    DBX_Exec.SQL.Clear;
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
    //endi

    CDS_Recibo.Active := False;
    DBX_Recibo.Active := False;
    DBX_Recibo.SQL.Clear;
    DBX_Recibo.SQL.Add('select * from recibo order by num');
    DBX_Recibo.Active := True;
    CDS_Recibo.Active := True;

    CDS_Recibo.Last;
    num := CDS_Recibo.FieldByName('Num').AsInteger;

    CDS_Recibo.Append;
    CDS_Recibo.FieldByName('NUM').AsInteger := num + 1;
    CDS_Recibo.FieldByName('CODALU').AsInteger := CDS_ContasRecNubia.FieldBYNAme('CODALU').AsInteger;
    CDS_Recibo.FieldByName('VALOR').AsString := CDS_ContasRecNubia.FieldByName('VALOR').AsString;
    CDS_Recibo.FieldByName('DATA').AsDateTime := date;
    CDS_Recibo.FieldByName('NOME').AsString := Nome;
    CDS_Recibo.FieldByName('TIPO').AsString := CDS_ContasRecNubia.FieldByName('TIPO').AsString;
    CDS_Recibo.FieldByName('ACORDO').AsString := 'recibo.';
    CDS_Recibo.Post;

    CDS_ContasRecNubia.Edit;
    if CDS_ContasRecNubia.State in [dsedit,dsinsert] then
    begin
      CDS_ContasRecNubia.FieldByName('RECIBO').AsString := 'T';
      CDS_ContasRecNubia.Post;
    end;
    //endi
  end;
  //endth

  FrmPesqRecibo := TFrmPesqRecibo.Create(self);
  FrmPesqRecibo.Show;
end;

procedure TFrmPesqContasRecNubia.BtnObsClick(Sender: TObject);
begin
  FrmObsContas := TFrmObsContas.Create(self);
  FrmObsContas.MemoObs.Lines.Add(FrmDados.CDS_ContasRecNubia.FieldByName('OBS').AsString);
  FrmObsContas.ShowModal;
  FrmObsContas.Free;
end;

end.

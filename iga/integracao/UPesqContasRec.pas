unit UPesqContasRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask,DB, ExtCtrls;

type
  TFrmPesqContasRec = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
    SQL,
    sFormaPgto: String;
  end;

var
  FrmPesqContasRec: TFrmPesqContasRec;
  ordem:String;

implementation

uses UDados, UFiltroContas, uGeral, UEscFormPgto, UDadosCheque, UMsgRecibo,
  uPesqRecibo;

{$R *.dfm}

procedure TFrmPesqContasRec.BtnExcluirClick(Sender: TObject);
begin
  if BtnRecebido.Visible = True then
  begin
    if not bContasRecE then
    begin
      showmessage('Este usuário não possui privilégios para excluir este registro!');
      Exit;
    end;
    //endi
  end
  else
  begin
    if not bContasRecebidasE then
    begin
      showmessage('Este usuário não possui privilégios para excluir este registro!');
      Exit;
    end;
    //endi
  end;
  //endi
  if MessageDlg('Deseja realmente excluir esta nota dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_ContasRec.Delete;
  //endi
end;

procedure TFrmPesqContasRec.BtnMenuClick(Sender: TObject);
begin
  //showmessage(datetostr(25/12/2009-24/11/2009);
  EDInicio.Clear;
  EDFim.Clear;
  Close;
end;

procedure TFrmPesqContasRec.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroContas := TFrmFiltroContas.Create(self);
  FrmFiltroContas.ShowModal;
  FrmFiltroContas.Free;
end;

procedure TFrmPesqContasRec.BitBtn1Click(Sender: TObject);
begin
  FrmFiltroContas:=TFrmFiltroContas.Create(self);
  FrmFiltroContas.ShowModal;
  FrmFiltroContas.Free;
end;

procedure TFrmPesqContasRec.BtnRecebidoClick(Sender: TObject);
var
  iano,
  imes,
  idia:word;
  sMes,
  sCodConta,
  SQLConta:String;
begin
  if not bContasRecA then
  begin
    showmessage('Este usuário não possui privilégios para alterar uma conta!');
    Exit;
  end;
  //endi
  with FrmDados do
  begin
    decodedate(CDS_ContasRec.FieldByName('Data').AsDateTime,iano,imes,idia);

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

    if (CDS_ContasRec.State <> dsEdit) and (CDS_ContasRec.State <> dsInsert) then
      CDS_ContasRec.Edit;

    CDS_ContasRec.FieldByName('PAGO').AsDateTime := date;
    FrmEscFormPgto := TFrmEscFormPgto.Create(self);
    with FrmEscFormPgto do
    begin
      ShowModal;
      Free;
    end;
    //endth

    if sFormaPgto = '' then
    begin
      CDS_ContasRec.Cancel;
      Exit;
    end;
    //endi

    //recebe os dados do cheque
    if sFormaPgto = 'Cheque' then
    begin
      DBX_DadosCheque.Active := True;
      CDS_DadosCheque.Active := True;
      FrmDadosCheque := TFrmDadosCheque.Create(self);
      FrmDadosCheque.EdData.Text := CDS_ContasRec.FieldByName('DATA').AsString;
      FrmDadosCheque.ShowModal;
      FrmDadosCheque.Free;
      sCodConta := inttostr(CDS_ContasRec.FieldByName('CODIGO').AsInteger);
      CDS_DadosCheque.Append;
      CDS_DadosCheque.FieldByName('CODCONTA').AsString := sCodConta;
      CDS_DadosCheque.FieldByName('Numero').AsString := sNumCheque;
      CDS_DadosCheque.FieldByName('Banco').AsString := sBancoCheque;
      CDS_DadosCheque.FieldByName('Data').AsString := sDataCheque;
      CDS_DadosCheque.Post;
    end;
    //endi

    CDS_ContasRec.FieldByName('TipoPgto').AsString := sFormaPgto;
    CDS_ContasRec.Post;
    
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

    CDS_ContasRec.Active := False;
    DBX_ContasRec.Active := False;
    SQLConta := DBX_ContasRec.SQL.Text;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add(SQLConta);
    DBX_ContasRec.Active := True;
    CDS_ContasRec.Active := True;

    CDS_Mensalidade.Active := False;
    DBX_Mensalidade.Active := False;
    DBX_Mensalidade.SQL.Clear;
    DBX_Mensalidade.SQL.Add('Select * from mensalidade where codaluno = ' + CDS_ContasRec.FieldByName('CODALU').AsString + ' and anoletivo = ' + quotedstr(inttostr(iano)));
    DBX_Mensalidade.Active := True;
    CDS_Mensalidade.Active := True;

    CDS_Mensalidade.Edit;
    CDS_Mensalidade.FieldByName(sMes).AsString := 'S';
    CDS_Mensalidade.Post;
  end;
  //endth
end;

procedure TFrmPesqContasRec.BtnLimparClick(Sender: TObject);
begin
  EDInicio.Clear;
  EDFim.Clear;
  SQL:='';
  FrmDados.CDS_ContasRec.Active:=False;
  FrmDados.DBX_ContasRec.Active:=False;
  FrmDados.DBX_ContasRec.SQL.Clear;

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
    FrmDados.DBX_ContasRec.SQL.Add('select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM);
  end
  else
  begin
    FrmDados.DBX_ContasRec.SQL.Add('select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NOT NULL ORDER BY '+ORDEM);
  end;
  FrmDados.DBX_ContasRec.Active:=True;
  FrmDados.CDS_ContasRec.Active:=True;
end;

procedure TFrmPesqContasRec.EdFimEnter(Sender: TObject);
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
    sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL ORDER BY '+ORDEM;
  end
  else
  begin
    sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO IS NOT NULL '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND DATA IS NOT NULL ORDER BY '+ORDEM;
      end
      else
      begin
        sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODAlu = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL ORDER BY '+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRec.Active:=False;
    DBX_Contasrec.Active:=False;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add(sql);
    //showmessage(sql);
    DBX_ContasRec.Active:=True;
    CDS_ContasRec.Active:=True;
  end;
end;

procedure TFrmPesqContasRec.CBXDataChange(Sender: TObject);
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
    sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODALU = C.CODIGO AND PAGO IS NULL ORDER BY '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      sql:='select R.* FROM contasareceber R INNER JOIN CADAluno C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL ORDER BY '+ORDEM;
  end
  else
  begin
    sql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NOT NULL '+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        sql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND DATA IS NOT NULL ORDER BY '+ORDEM;
      end
      else
      begin
        sql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL ORDER BY '+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRec.Active:=False;
    DBX_ContasRec.Active:=False;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add(sql);
    //showmessage(sql);
    DBX_ContasRec.Active:=True;
    CDS_ContasRec.Active:=True;
  end;
end;

procedure TFrmPesqContasRec.CBXOrdemChange(Sender: TObject);
var
  TxtSql:String;
begin
 if(sql='')then
 begin
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
 end
 else
 begin
  ordem:='';
 end;

  if(Caption = 'Pesquisa de contas a receber') then
  begin
    Txtsql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NULL '+SQL+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
      Txtsql:='select R.* FROM contasareceber R INNER JOIN CADaLUNO C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL '+SQL+ORDEM;
  end
  else
  begin
    TXtsql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NOT NULL '+SQL+ORDEM;
    if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
    begin
      if (CBXData.ItemIndex = 0) then
      begin
        TXtsql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL+ORDEM;
      end
      else
      begin
        Txtsql:='select R.* FROM contasareceber R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL+ORDEM;
      end;
      //endi
    end;
    //endi
  end;
  //endi
  with FrmDados do
  begin
    CDS_ContasRec.Active:=False;
//    FrmDados.CDS_ContasDiferena.AsInteger := subDatas(CDS_Contas.fieldByName('DATA').AsDateTime, CDS_Contas.fieldByName('PAGO').AsDateTime);
    DBX_ContasRec.Active:=False;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add(TXtsql);
    //showmessage(TXtsql);
    DBX_ContasRec.Active:=True;
    CDS_ContasRec.Active:=True;
  end;
end;

procedure TFrmPesqContasRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmPesqContasRec := nil;
end;

procedure TFrmPesqContasRec.FormCreate(Sender: TObject);
begin
  SQL:='';
end;

procedure TFrmPesqContasRec.BtnRetornarClick(Sender: TObject);
var
  sCodConta,
  sqlConta:String;
begin
  if not bContasRecebidasA then
  begin
    showmessage('Este usuário não possui privilégios para alterar uma conta!');
    Exit;
  end;
  //endi
  if MessageDlg('Deseja retornar esta conta às contas a receber?',mtWarning, [mbYes,mbNo], 0) = 6 then
  begin
    with FrmDados do
    begin
      {CDS_ContasRec.Edit;
      CDS_ContasRec.FieldByName('PAGO').AsString set null;
      CDS_ContasRec.Post;}
      sCodConta := CDS_ContasRec.FieldByName('CODIGO').AsString;
      sqlConta := DBX_ContasRec.SQL.Text;

      CDS_ContasRec.Active := False;
      DBX_ContasRec.Active := False;
      DBX_ContasRec.SQL.Clear;
      iniciaTransacao;
      DBX_ContasRec.SQL.Add('UPDATE CONTASARECEBER SET PAGO = NULL WHERE CODIGO = ' + sCodConta);
      DBX_ContasRec.ExecSQL;
      finalizaTransacao;
      DBX_ContasRec.SQL.Clear;
      DBX_ContasRec.SQL.Add(sqlConta);
      DBX_ContasRec.Active := True;
      CDS_ContasRec.Active := True;

      CDS_ContasRec.Edit;
      CDS_ContasRec.FieldByName('TIPOPGTO').AsString := '';
      CDS_ContasRec.Post;

      CDS_DadosCheque.Active := False;
      DBX_DadosCheque.Active := False;
      DBX_DadosCheque.SQL.Clear;
      DBX_DadosCheque.SQL.Add('SELECT * FROM DADOS_CHEQUE WHERE CODCONTA = ' + CDS_ContasRec.FieldByName('CODIGO').AsString);
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

procedure TFrmPesqContasRec.DBGrid1DblClick(Sender: TObject);
begin
  if FrmPesqContasRec.Caption = 'Pesquisa de contas recebidas' then
  begin
    with FrmDados do
    begin
      if CDS_COntasRec.FieldByName('TIpoPgmto').AsString = 'Cheque' then
      begin
        CDS_DadosCheque.Active := False;
        DBX_DadosCheque.Active := False;
        DBX_DadosCheque.SQL.Clear;
        DBX_DadosCheque.SQL.Add('SELECT * FROM DADOS_CHEQUE WHERE CODCONTA = ' + CDS_ContasRec.FieldByName('CODIGO').AsString);
        DBX_DadosCheque.Active := True;
        CDS_DadosCheque.Active := True;
        showmessage('O número do cheque é ' + CDS_DadosCheque.FieldByName('NUMERO').AsString + ', a data é ' + CDS_DadosCheque.FieldByName('DATA').AsString + ' e o banco é ' + CDS_DadosCheque.FieldByName('BANCO').AsString);
      end;
      //endi
    end;
    //endth
  end;
  //endi
end;

end.

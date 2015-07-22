unit UPesqAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB;

type
  TFrmPesqAluno = class(TForm)
    DBGrid1: TDBGrid;
    BtnInserir: TBitBtn;
    BtnMenu: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnLimpFiltro: TBitBtn;
    BtnAdcAltTurma: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    edinome: TDBEdit;
    DBEEndereco: TDBEdit;
    DBEBairro: TDBEdit;
    DBETelefone: TDBEdit;
    DBEEmail: TDBEdit;
    DBECep: TDBEdit;
    DBEDtNasc: TDBEdit;
    o: TDBMemo;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBRDGPeriodo: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBRGProjeto: TDBRadioGroup;
    DBEdit12: TDBEdit;
    DBRDGDP: TDBRadioGroup;
    BtnObsPai: TBitBtn;
    BtnObsMae: TBitBtn;
    CHBRecibo: TCheckBox;
    CHBNota: TCheckBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BtnMensalidade: TBitBtn;
    BtnPeriodo: TBitBtn;
    BtnDP: TBitBtn;
    BtnProjeto: TBitBtn;
    PnlOpcao: TPanel;
    BtnImprimir: TBitBtn;
    Panel1: TPanel;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label9: TLabel;
    BtnProximo: TBitBtn;
    BtnAnterior: TBitBtn;
    BtnNovo: TBitBtn;
    BtnConfirma: TBitBtn;
    BtnCancela: TBitBtn;
    DBEdAno: TDBEdit;
    Panel3: TPanel;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    BtnAtualizar: TBitBtn;
    EdAno: TEdit;
    BtnTransfAnual: TBitBtn;
    BtnExclui: TBitBtn;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label32: TLabel;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnLimpFiltroClick(Sender: TObject);
    procedure BtnAdcAltTurmaClick(Sender: TObject);
    procedure BtnPeriodoClick(Sender: TObject);
    procedure BtnDPClick(Sender: TObject);
    procedure BtnProjetoClick(Sender: TObject);
    procedure BtnMensalidadeClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure edinomeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edinomeClick(Sender: TObject);
    procedure BtnObsPaiClick(Sender: TObject);
    procedure BtnObsMaeClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdAnoChange(Sender: TObject);
    procedure DBEdAnoClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure DBEdAnoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure atualizaDadosAnual;
    procedure verificaBtn;
    procedure BtnTransfAnualClick(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExcluiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdAnoEnter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sopcao:string;
  end;

var
  FrmPesqAluno: TFrmPesqAluno;
  cod:integer;

implementation

uses UCadAluno, UMenuPrincipal, UFiltrarAluno, UDados, UCadAluTurma,
  UPeriEspecial, UDP, UProjeto, UMensalidade, uGeral, UObsPai, UObsMae,
  URelAlunos, UAluProjeto;

{$R *.dfm}

procedure TFrmPesqAluno.BtnMenuClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqAluno.BtnInserirClick(Sender: TObject);
begin
  if not bAlunosI then
  begin
    showmessage('Você não possui privilégios para inserir dados nesta tela!');
    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_CadAluno.Cancel;
    Exit;
  end;
  //endi
  sopcao := 'I';
  FrmDados.CDS_CadAluno.Append;
end;

procedure TFrmPesqAluno.BtnEditarClick(Sender: TObject);
begin
  sopcao := 'A';
  FrmDados.CDS_CadAluno.Edit;
  FrmCadAluno:=TFrmCadAluno.Create(Self);
  FrmCadAluno.ShowModal;
  FrmCadAluno.Free;
end;

procedure TFrmPesqAluno.BtnFiltrarClick(Sender: TObject);
begin
  FrmFiltroAluno:=TFrmFiltroAluno.Create(Self);
  FrmFiltroAluno.ShowModal;
  FrmFiltroAluno.Free;
end;

procedure TFrmPesqAluno.BtnExcluirClick(Sender: TObject);
begin
  sopcao := 'E';
  if not bAlunosE then
  begin
    showmessage('Você não possui privilégios para excluir os dados desta tela!');
    Exit;
  end;
  //endi
  if  MessageDlg('Deseja realmente excluir este aluno dos registros?',mtWarning, [mbYes,mbNo], 0) = 6 then
    FrmDados.CDS_CadAluno.Delete;
end;

procedure TFrmPesqAluno.BtnLimpFiltroClick(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_CadAluno.Active:=False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO');
    DBX_CadAluno.Active:=True;
    CDS_CadAluno.Refresh;
  end;
end;

procedure TFrmPesqAluno.BtnAdcAltTurmaClick(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODALUNO = '+CDS_CadAluno.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = ' + CDS_CadAluAnual.fieldByName('ANO').AsString);
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;
    cod := CDS_RelTurmaSerieAlu.FieldByName('CODserie').AsInteger;

    if CDS_RelTurmaSerieAlu.RecordCount <> 0 then
    begin
      CDS_Serie.Active:=False;
      DBX_Serie.Active:=False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE CODIGO = ' + inttostr(cod) + ' and ano = '+ CDS_CadAluAnual.FieldByName('Ano').AsString + ' order by ordem');
      DBX_Serie.Active:=True;
      CDS_Serie.Active:=True;
      showmessage('Último Ano Letivo Matriculado '+CDS_CadAluAnual.FieldByName('Ano').AsString+#13+'Aluno(a) matriculado(a) no '+CDS_Serie.fieldByName('GRAU').AsString+' na '+CDS_Serie.fieldByName('SERIE').AsString+' '+CDS_Serie.fieldByName('TURMA').AsString);
    end;


  CDS_Serie.Active:=False;
  DBX_Serie.Active:=False;
  DBX_Serie.SQL.Clear;
  DBX_Serie.SQL.Add('SELECT * FROM SERIE where ano = '+ CDS_CadAluAnual.FieldByName('Ano').AsString + ' order by ordem');
  DBX_Serie.Active := True;
  CDS_Serie.Active := True;

  end;
  //endth

  FrmCadAluTurma := TFrmCadAluTurma.Create(self);
  FrmCadAluTurma.ShowModal;
  FrmCadAluTurma.Free;
end;

procedure TFrmPesqAluno.BtnPeriodoClick(Sender: TObject);
begin
  if(DBRDGPeriodo.ItemIndex=4)then
  begin
    FrmPerEspecial:=TFrmPerEspecial.Create(self);
    FrmPerEspecial.ShowModal;
    FrmPerEspecial.Free;
  end;
end;

procedure TFrmPesqAluno.BtnDPClick(Sender: TObject);
begin
  if(DBRDGDP.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_DP.Active:=False;
      CDS_DPCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_DP.Active:=False;
      DBX_DP.SQL.Clear;
      DBX_DP.SQL.Add('SELECT * FROM DP WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_DP.Active:=True;
      CDS_DP.Active:=True;
    end;
    FrmDP := TFrmDP.Create(self);
    FrmDP.ShowModal;
    FrmDP.Free;
  end;
end;

procedure TFrmPesqAluno.BtnProjetoClick(Sender: TObject);
begin
  if(DBRGProjeto.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_AluProjeto.Active := False;
      CDS_AluProjetoCODALU.DefaultExpression := CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_AluProjeto.Active:=False;
      DBX_AluProjeto.SQL.Clear;
      DBX_AluProjeto.SQL.Add('SELECT * FROM ALUPROJETO WHERE CODALU = ' + CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_AluProjeto.Active := True;
      CDS_AluProjeto.Active := True;
    end;
    FrmAluProjeto := TFrmAluProjeto.Create(self);
    FrmAluProjeto.ShowModal;
    FrmAluProjeto.Free;
  end;
end;

procedure TFrmPesqAluno.BtnMensalidadeClick(Sender: TObject);
var
  zerar:boolean;
begin
with FrmDados do
begin
  CDS_Mensalidade.Active:=False;
  CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
  CDS_MensalidadeANOLETIVO.DefaultExpression := CDS_CadAluAnual.FieldByName('ANO').AsString;
  CDS_MensalidadeCOdprojeto.DefaultExpression := '';
  CDS_MensalidadeCODDP.DefaultExpression := '';
  DBX_Mensalidade.Active:=False;
  DBX_Mensalidade.SQL.Clear;
  DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = ' + CDS_CadAluAnual.FieldByName('ANO').AsString + ' AND CODDP IS NULL AND CODPROJETO IS NULL');
  DBX_Mensalidade.Active:=True;
  CDS_Mensalidade.Active:=True;

  if FrmDados.CDS_Mensalidade.RecordCount <> 0 then
  begin
    CDS_Mensalidade.Edit;
    zerar:=false;
  end
  else
  begin
    CDS_Mensalidade.Append;
    zerar:=true;
  end;

  FrmMensalidade:=TFrmMensalidade.Create(self);
  FrmMensalidade.EDAno.Text := FrmDados.CDS_CadAluAnual.fieldByName('ANO').AsString;
  if zerar then
  begin
    with FrmMensalidade do
    begin
      CDS_Mensalidade.FieldByName('JAN').AsString:='N';
      CDS_Mensalidade.FieldByName('FEV').AsString:='N';
      CDS_Mensalidade.FieldByName('MAR').AsString:='N';
      CDS_Mensalidade.FieldByName('ABR').AsString:='N';
      CDS_Mensalidade.FieldByName('MAI').AsString:='N';
      CDS_Mensalidade.FieldByName('JUN').AsString:='N';
      CDS_Mensalidade.FieldByName('JUL').AsString:='N';
      CDS_Mensalidade.FieldByName('AGO').AsString:='N';
      CDS_Mensalidade.FieldByName('SETE').AsString:='N';
      CDS_Mensalidade.FieldByName('OUT').AsString:='N';
      CDS_Mensalidade.FieldByName('NOV').AsString:='N';
      CDS_Mensalidade.FieldByName('DEZ').AsString:='N';
    end;
  end;
  UGeral.geraContas;
  FrmMensalidade.ShowModal;
  FrmMensalidade.Free;
end;
//endth
end;

procedure TFrmPesqAluno.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_CadAluno.State = dsEdit) or (FrmDados.CDS_CadAluno.State = dsInsert) then
  begin
    if CHBRecibo.Checked=True then
    begin
      FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString:='S';
    end
    else
    begin
      FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString:='N';
    end;
    //endi

    if CHBNota.Checked=True then
    begin
      FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString:='S';
    end
    else
    begin
      FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString:='N';
    end;
    //endi

    DBEdit10Exit(Sender);

    if (FrmDados.CDS_CadAluno.State = dsInsert) or (FrmDados.CDS_CadAluno.State = dsEdit) then
      FrmDados.CDS_CadAluno.Post;
    //endi
  end;
  //endi


  {if frmpesqaluno.sopcao = 'I' then
  begin
    FrmDados.CDS_CadAluno.Append;
    edinome.SetFocus;
  end;
  //endi}
end;

procedure TFrmPesqAluno.BtnCancelarClick(Sender: TObject);
begin
  if (FrmDados.CDS_CadAluno.State = dsEdit) or (FrmDados.CDS_CadAluno.State = dsInsert) then
  begin
    FrmDados.CDS_CadAluno.Cancel;
  end;
  //endi
end;

procedure TFrmPesqAluno.edinomeChange(Sender: TObject);
begin
{if FrmDados.CDS_CadAluno.RecordCount = 0 then
begin
  if not bAlunosI then
  begin
    //showmessage('Você não possui privilégios para inserir dados nesta tela!');
    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_CadAluno.Cancel;
    Exit;
  end;
end
else
begin
  if not bAlunosA then
  begin
    showmessage('Você não possui privilégios para editar os dados desta tela!');
    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_CadAluno.Cancel;
    Exit;
  end;
  //endi
end;
//endi  }

 { if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
  begin
    if FrmDados.CDS_CadAluno.RecordCount = 0 then
      FrmDados.CDS_CadAluno.Append
    else
      FrmDados.CDS_CadAluno.Edit;
  end;
  //endi }
end;

procedure TFrmPesqAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BtnLimpFiltro.Click;
  Action := caFree;
  FrmPesqAluno := nil;
  {WITH fRMdADOS DO
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endth }
end;

procedure TFrmPesqAluno.edinomeClick(Sender: TObject);
begin
if FrmDados.CDS_CadAluno.RecordCount = 0 then
begin
  if not bAlunosI then
  begin
    showmessage('Você não possui privilégios para inserir dados nesta tela!');
    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_CadAluno.Cancel;
    Exit;
  end;
end
else
begin
  if not bAlunosA then
  begin
    showmessage('Você não possui privilégios para editar os dados desta tela!');
    if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
      FrmDados.CDS_CadAluno.Cancel;
    Exit;
  end;
  //endi
end;
//endi

  if not (FrmDados.CDS_CadAluno.State in [dsinsert,dsedit]) then
  begin
    if FrmDados.CDS_CadAluno.RecordCount = 0 then
      FrmDados.CDS_CadAluno.Append
    else
      FrmDados.CDS_CadAluno.Edit;
  end;
  //endi
end;


procedure TFrmPesqAluno.BtnObsPaiClick(Sender: TObject);
begin
  FrmObsPai:=TFrmObsPai.Create(self);
  FrmObsPai.MemoObs.Text:=FrmDados.CDS_CadAluno.fieldByName('OBS_Pai').AsString;
  FrmObsPai.ShowModal;
  FrmObsPai.Free;
end;

procedure TFrmPesqAluno.BtnObsMaeClick(Sender: TObject);
begin
  FrmObsMae:=TFrmObsMae.Create(self);
  FrmObsMae.MemoObs.Text:=FrmDados.CDS_CadAluno.fieldByName('OBS_MAE').AsString;
  FrmObsMae.ShowModal;
  FrmObsMae.Free;
end;

procedure TFrmPesqAluno.BtnImprimirClick(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_AluProjeto.Active:=False;
    DBX_AluProjeto.Active:=False;
    DBX_AluProjeto.SQL.Clear;
    DBX_AluProjeto.SQL.Add('SELECT * FROM ALUPROJETO WHERE CODALU = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
    DBX_AluProjeto.Active:=True;
    CDS_AluProjeto.Active:=True;

    CDS_DP.Active:=False;
    DBX_DP.Active:=False;
    DBX_DP.SQL.Clear;
    DBX_DP.SQL.Add('SELECT * FROM DP WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
    DBX_DP.Active:=True;
    CDS_DP.Active:=True;
  end;
  //endth

  FrmRelAlunos := TFrmRelAlunos.Create(self);
  with FrmRelAlunos do
  begin
    MemoObs.Lines.Add(FrmDados.CDS_CadAluno.FieldByName('OBSERVACAO').AsString);
    if FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString = 'S' then
      LblRecibo.Caption := 'Sim.'
    else
      LblRecibo.Caption := 'Não.';

 if FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString = 'S' then
  LblNotaFiscal.Caption := 'Sim.'
 else
  LblNotaFiscal.Caption := 'Não.';
    QuickRep1.Preview;
    Free;
  end;
  //endth
end;

procedure TFrmPesqAluno.DBEdit11Exit(Sender: TObject);
var
  sValor,
  sDesconto:String;
  iQntd : integer;
  dValorFinal:double;
begin
TRY
begin
 with FrmDados do
 begin
  if (CDS_CadAluno.FieldByName('Valor').AsString <> '') and (CDS_CadAluno.FieldByName('DESCONTO').AsString <> '') then
  begin
    sDesconto := CDS_CadAluno.FieldByName('DESCONTO').AsString;
    sDesconto := '0';
    sValor := CDS_CadAluno.FieldByName('Valor').AsString;
    sDesconto := trim(sDesconto);
    iQntd := length(sDesconto);

    dValorFinal := strtofloat(sValor) - (strtofloat(copy(sDesconto,0,2))/100)* strtofloat(sValor);

    if iQntd = 5 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 8 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 11 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,10,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 14 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,10,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,13,2))/100) * dValorFinal;
    end;
    //endi

    CDS_CadAlunoValorCDesc.Value := strtofloat(formatfloat('###,###,##0.00',dValorFinal));
  end;
  //endi
  BtnConFirmar.Enabled := True;
 end;
 //endth
end
EXCEPT
  showmessage('Preencha o campo desconto de maneira correta! Exemplo: 10+10, 10, 50...');
  DBEdit1.SetFocus;
  BtnConfirmar.Enabled := False;
  Exit;
end;
end;

procedure TFrmPesqAluno.DBEdit10Exit(Sender: TObject);
begin
  with FrmDados do
  begin
    if CDS_CadAluAnual.RecordCount <> 0 then
    begin
      CDS_RelTurmaSerieAlu.Active := False;
      DBX_RelTurmaSerieAlu.Active := False;
      DBX_RelTurmaSerieAlu.SQL.Clear;
      DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODALUno = ' + CDS_CadAluno.FieldByName('CODIGO').AsString + ' and R.anoletivo = ' + CDS_CadAluAnual.FieldByName('ANO').AsString);
      DBX_RelTurmaSerieAlu.Active := True;
      CDS_RelTurmaSerieAlu.Active := True;
    end
    else
    begin
      Exit;
    end;
    //endi

    if CDS_CadAluAnual.FieldByName('Dt_CANCEL').AsString = '' then
    begin
      CDS_RelTurmaSerieAlu.Edit;
      CDS_RelTurmaSerieAlu.FieldByName('Cancel_Matricula').AsString := 'F';
      CDS_RelTurmaSerieAlu.Post;
    end
    else
    begin
      CDS_RelTurmaSerieAlu.Edit;
      CDS_RelTurmaSerieAlu.FieldByName('Cancel_Matricula').AsString := 'V';
      CDS_RelTurmaSerieAlu.Post;
    end;
    //endi

    CDS_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo');
    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;
  end;
  //endth
end;

procedure TFrmPesqAluno.DBEdit18Enter(Sender: TObject);
begin
    if FrmDados.CDS_CadAlunoDATA_CANCEL.AsString = '' then
      FrmDados.CDS_CadAlunoDATA_CANCEL.EditMask := '00/00/0000;1;_'
    else
      FrmDados.CDS_CadAlunoDATA_CANCEL.EditMask := '';
end;

procedure TFrmPesqAluno.DBEdAnoChange(Sender: TObject);
begin
{  if not (FrmDados.CDS_CadAluAnual.State in [dsinsert,dsedit]) then
  begin
    if FrmDados.CDS_CadAluno.RecordCount = 0 then
      FrmDados.CDS_CadAluAnual.Append
    else
      FrmDados.CDS_CadAluAnual.Edit;
  end;
  //endi  }
end;

procedure TFrmPesqAluno.DBEdAnoClick(Sender: TObject);
begin
if FrmDados.CDS_CadAluno.RecordCount = 0 then
begin
  if not bAlunosI then
  begin
    showmessage('Você não possui privilégios para inserir dados nesta tela!');
  end;
end
else
begin
  if not bAlunosA then
  begin
    showmessage('Você não possui privilégios para editar os dados desta tela!');
  end;
  //endi
end;
//endi
end;

procedure TFrmPesqAluno.BtnNovoClick(Sender: TObject);
begin
  dbedit10.Enabled := false;
  dbedit13.Enabled := false;

  if bAlunosI then
  begin
    if FrmDados.CDS_CadAluno.State in [dsedit,dsinsert] then
      FrmDados.CDS_CadAluno.Post;
    //endi
    FrmDados.CDS_CadAluAnual.Append;
    EdAno.Text := FrmDados.CDS_Indices.FieldByName('ANO').AsString;
    FrmDados.CDS_CadAluAnual.FieldByName('DT_Matricula').AsDateTime := date;
    FrmDados.CDS_CadAluAnual.FieldByName('CODALU').AsString := FrmDados.CDS_CadAluno.FieldByName('CODIGO').AsString;
   
  end
  else
  begin
    showmessage('Este usuário não possui privilégios para inserir um novo registro para o aluno!');
  end;
  //endi
end;

procedure TFrmPesqAluno.BtnConfirmaClick(Sender: TObject);
begin
  dbedit10.Enabled := true;
  dbedit13.Enabled := true;


  if FrmDados.CDS_CadAluAnual.State in [dsedit,dsinsert] then
  begin
    FrmDados.CDS_CadAluAnual.FieldByName('ANO').AsString := EdAno.Text;
    FrmDados.CDS_CadAluAnual.Post;
    VerificaBtn;
  end;
  //endi
end;

procedure TFrmPesqAluno.BtnCancelaClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluAnual.Cancel;
  verificaBtn;
end;

procedure TFrmPesqAluno.BtnAnteriorClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluAnual.Prior;
  verificaBtn;
  EdAno.Text := FrmDados.CDS_CAdAluAnual.FieldByName('ANO').AsString;
end;

procedure TFrmPesqAluno.BtnProximoClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluAnual.Next;
  verificaBtn;
  EdAno.Text := FrmDados.CDS_CAdAluAnual.FieldByName('ANO').AsString;
end;

procedure TFrmPesqAluno.DBEdAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    atualizaDadosAnual();
  end;
  //endi
end;

procedure TFrmPesqAluno.BtnAtualizarClick(Sender: TObject);
begin
  atualizaDadosAnual();
end;

procedure TFrmPesqAluno.atualizaDadosAnual;
var
  iAno : integer;
  bAchei : boolean;
begin
  with FrmDados do
  begin
    if CDS_CadAluAnual.RecordCount = 0 then
    begin
      showmessage('Este aluno não possui cadastros anuais!');
      Exit;
    end;
    //endi
    bAchei := True;
    iAno := strtoint(FrmPesqAluno.EdAno.Text);
    while bAchei do
    begin
      if iAno = CDS_CadAluAnual.FieldByName('ANO').AsInteger then
      begin
        bAchei := False;
        showmessage('Dados atualizados com sucesso!');
      end
      else if iAno < CDS_CadAluAnual.FieldByName('ANO').AsInteger then
      begin
        if not CDS_CadAluAnual.Bof then
        begin
          CDS_CadAluAnual.Prior;
          if iAno > CDS_CadAluAnual.FieldByName('ANO').AsInteger then
          begin
            FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
            showmessage('Não existe nenhum registro com o ano procurado!');
            Exit;
          end;
          //endi
        end
        else
        begin
          FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
          showmessage('Não existe nenhum registro com ano inferior a este!');
          bAchei := False;
        end;
        //endi
      end
      else
      begin
        if not CDS_CadAluAnual.Eof then
        begin
          CDS_CadAluAnual.Next;
          if iAno < CDS_CadAluAnual.FieldByName('ANO').AsInteger then
          begin
            FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
            showmessage('Não existe nenhum registro com o ano procurado!');
            Exit;
          end;
          //endi
        end
        else
        begin
          FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
          showmessage('Não existe nenhum registro com ano superior a este!');
          bAchei := False;
        end;
        //endi
      end;
      //endi
    end;
    //endwh
  end;
  //endth
end;

procedure TFrmPesqAluno.BtnTransfAnualClick(Sender: TObject);
var
  iPgmto:integer;
  sPgmto:String;
begin
  with FrmDados do
  begin
    DBX_CadAluAnual.Active := True;
    CDS_CadAluAnual.Active := True;
    CDS_CadAluno.First;
    while not (CDS_CadAluno.Eof) do
    begin
      try
        iPgmto := strtoint(CDS_CadAluno.FieldByName('Data_Pgmto').AsString);
      except
        sPgmto := CDS_CadAluno.FieldByName('Data_Pgmto').AsString;
        if length(sPgmto) = 10 then
        begin
          CDS_CadAluno.Edit;
          CDS_CadAluno.FieldByName('Data_Pgmto').AsString := '8';
          CDS_CadAluno.Post;
        end
        else
        begin
          sPgmto := trim(sPgmto);
          sPgmto := copy(SPgmto,5,2);
          CDS_CadAluno.Edit;
          CDS_CadAluno.FieldByName('Data_Pgmto').AsString := sPgmto;
          CDS_CadAluno.Post;
        end;
        //endi

        if length(sPgmto) = 0 then
        begin
          CDS_CadAluno.Edit;
          CDS_CadAluno.FieldByName('Data_Pgmto').AsString := '10';
          CDS_CadAluno.Post;
        end;
        //endi
      end;
      //endtry
     try
      CDS_CadAluAnual.Append;
      CDS_CadAluAnual.FieldByName('CodAlu').AsString := CDS_CadAluno.FieldByName('CODIGO').AsString;
      CDS_CadAluAnual.FieldByName('DT_Matricula').AsString := CDS_CadAluno.FieldByName('Data_Matricula').AsString;
      CDS_CadAluAnual.FieldByName('Valor').AsString := CDS_CadAluno.FieldByName('VALOR').AsString;
      CDS_CadAluAnual.FieldByName('DT_Cancel').AsString := CDS_CadAluno.FieldByName('Data_Cancel').AsString;
      CDS_CadAluAnual.FieldByName('MotivoCancel').AsString := CDS_CadAluno.FieldByName('Motivo_Cancel').AsString;
      CDS_CadAluAnual.FieldByName('DT_Pgmto').AsString := CDS_CadAluno.FieldByName('Data_Pgmto').AsString;
      CDS_CadAluAnual.FieldByName('ANO').AsString := '2009';
      CDS_CadAluAnual.Post;
     except
      showmessage('Dados do aluno(a) ' + CDS_CadAluno.FieldByName('NOME').AsString + ' não pode ser atualizado!');
     end;
     //endtry

      CDS_CadAluno.Next;
    end;
    //endwh
  end;
  //endth
end;

procedure TFrmPesqAluno.verificaBtn;
begin
  with FrmDados do
  begin
    if CDS_CadAluAnual.RecordCount <= 1 then
    begin
      BtnProximo.Enabled := False;
      BtnAnterior.Enabled := False;
    end
    else if (CDS_CadAluAnual.Bof) then
    begin
      BtnProximo.Enabled := True;
      BtnAnterior.Enabled := False;
    end
    else if (CDS_CadAluAnual.Eof) then
    begin
      BtnProximo.Enabled := False;
      BtnAnterior.Enabled := True;
    end
    else
    begin
      BtnProximo.Enabled := True;
      BtnAnterior.Enabled := True;
    end;
    //endi
  end;
  //endth
end;

procedure TFrmPesqAluno.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

  end;
  //endi
end;

procedure TFrmPesqAluno.BtnExcluiClick(Sender: TObject);
begin
  if bAlunosE then
  begin
    if  MessageDlg('Deseja realmente excluir os registros deste do aluno?',mtWarning, [mbYes,mbNo], 0) = 6 then
      FrmDados.CDS_CadAluAnual.Delete;
    //endi
    verificaBtn;
  end
  else
  begin
    showmessage('Este usuário não possui privilégios para excluir este registro!');
  end;
  //endi
end;

procedure TFrmPesqAluno.FormShow(Sender: TObject);
begin
  //FrmPEsqAluno.verificaBtn;
end;

procedure TFrmPesqAluno.EdAnoEnter(Sender: TObject);
begin
  if not (FrmDados.CDS_CadAluAnual.State in [dsinsert,dsedit]) then
  begin
    if FrmDados.CDS_CadAluno.RecordCount = 0 then
      FrmDados.CDS_CadAluAnual.Append
    else
      FrmDados.CDS_CadAluAnual.Edit;
  end;
  //endi
end;

procedure TFrmPesqAluno.DBEdit22Enter(Sender: TObject);
begin
if dbedit22.Text = '' then
   begin
     
     dbedit22.Text := dbedit7.Text;
   end;

end;

procedure TFrmPesqAluno.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dbedit23.SetFocus;
end;

procedure TFrmPesqAluno.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dbedit24.SetFocus;
end;

procedure TFrmPesqAluno.DBEdit23Exit(Sender: TObject);
begin


frmdados.CDS_CadAluAnual.Edit;
frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat   :=  frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat      *   frmdados.CDS_CadAluAnual.FieldByName('porcdesconto').AsFloat  / 100      ;
frmdados.CDS_CadAluAnual.FieldByName('valor').AsFloat   :=  frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat - frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat;


end;

procedure TFrmPesqAluno.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dbedit7.SetFocus;
end;

procedure TFrmPesqAluno.DBEdit24Exit(Sender: TObject);
begin
//if frmdados.CDS_CadAluAnual.FieldByName('porcdesconto').AsFloat = 0 then
//  begin
    frmdados.CDS_CadAluAnual.Edit;
    frmdados.CDS_CadAluAnual.FieldByName('porcdesconto').AsFloat   :=   frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat /  frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat * 100;
    frmdados.CDS_CadAluAnual.FieldByName('valor').AsFloat   :=  frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat - frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat;
//  end;

end;

procedure TFrmPesqAluno.DBEdit7Exit(Sender: TObject);
begin
//if frmdados.CDS_CadAluAnual.FieldByName('porcdesconto').AsFloat = 0 then
//  begin
    frmdados.CDS_CadAluAnual.Edit;
    frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat   :=   frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat -  frmdados.CDS_CadAluAnual.FieldByName('valor').AsFloat;
    frmdados.CDS_CadAluAnual.FieldByName('porcdesconto').AsFloat   :=   frmdados.CDS_CadAluAnual.FieldByName('vlrdesconto').AsFloat /  frmdados.CDS_CadAluAnual.FieldByName('vlrnormal').AsFloat * 100;

//  end;

end;

end.

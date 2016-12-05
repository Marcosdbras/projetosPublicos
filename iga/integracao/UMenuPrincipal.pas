unit UMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, Buttons;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Bancodedados1: TMenuItem;
    ConfigBD: TMenuItem;
    Label1: TLabel;
    Abrir1: TMenuItem;
    Alunos1: TMenuItem;
    PesqSeries: TMenuItem;
    Matrias1: TMenuItem;
    N1: TMenuItem;
    AnoLetivo1: TMenuItem;
    DTImp: TMenuItem;
    Arquivos1: TMenuItem;
    Sair1: TMenuItem;
    Usurio1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    EDLogin: TEdit;
    EDSenha: TEdit;
    PnlLogin: TPanel;
    BtnLogin: TButton;
    Projetos1: TMenuItem;
    N2: TMenuItem;
    Impresses1: TMenuItem;
    Impressao1: TMenuItem;
    Impressao2: TMenuItem;
    Impressao3: TMenuItem;
    Impressao4: TMenuItem;
    Impressao5: TMenuItem;
    Impressao6: TMenuItem;
    Impressao7: TMenuItem;
    Impressao8: TMenuItem;
    Impressao9: TMenuItem;
    Impressao10: TMenuItem;
    Impressao11: TMenuItem;
    Impressao12: TMenuItem;
    Impressao13: TMenuItem;
    Impressao14: TMenuItem;
    Impressao15: TMenuItem;
    Porsrie1: TMenuItem;
    Impressao16: TMenuItem;
    Impressao17: TMenuItem;
    AluPedInf: TMenuItem;
    Impressao18: TMenuItem;
    Impressao19: TMenuItem;
    Impressao20: TMenuItem;
    Button1: TButton;
    FichaIndividualdoaluno1: TMenuItem;
    BitBtn1: TBitBtn;
    Cursos1: TMenuItem;
    Gradecurricular1: TMenuItem;
    Calendario1: TMenuItem;
    Controlefinanceito1: TMenuItem;
    Contasareceber1: TMenuItem;
    Contasrecebidas1: TMenuItem;
    Impressao24: TMenuItem;
    Historico1: TMenuItem;
    Impressao21: TMenuItem;
    Impressao22: TMenuItem;
    Impressao23: TMenuItem;
    Gerarcontas1: TMenuItem;
    Darbaixanaconta1: TMenuItem;
    N3: TMenuItem;
    Eventos1: TMenuItem;
    Impressao25: TMenuItem;
    Impressao27: TMenuItem;
    Impressao26: TMenuItem;
    Bevel1: TBevel;
    N4: TMenuItem;
    Recibos1: TMenuItem;
    Nubia1: TMenuItem;
    N5: TMenuItem;
    Contasareceber2: TMenuItem;
    Contasrecebidas2: TMenuItem;
    Financeiro1: TMenuItem;
    Impressao28: TMenuItem;
    Impressao29: TMenuItem;
    Impressao30: TMenuItem;
    Impressao31: TMenuItem;
    Impressao32: TMenuItem;
    Troco1: TMenuItem;
    Sangria1: TMenuItem;
    Caixa1: TMenuItem;
    N6: TMenuItem;
    MostraSangria1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    RelacaoSangria1: TMenuItem;
    Matriculas1: TMenuItem;
    RelaodeAlunosporSriePiloto1: TMenuItem;
    R1: TMenuItem;
    imagem: TImage;
    procedure Alunos1Click(Sender: TObject);


    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure PesqSeriesClick(Sender: TObject);
    procedure Matrias1Click(Sender: TObject);
    procedure Anoletivo1Click(Sender: TObject);
    procedure ConfigBDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTImpClick(Sender: TObject);
    procedure EDLoginKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLoginClick(Sender: TObject);
    procedure EDSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Usurio1Click(Sender: TObject);
    procedure Bloqueio;
    procedure FormShow(Sender: TObject);
    procedure Projetos1Click(Sender: TObject);
    procedure Impressao1Click(Sender: TObject);
    procedure Impressao2Click(Sender: TObject);
    procedure Impressao3Click(Sender: TObject);
    procedure Impressao4Click(Sender: TObject);
    procedure Impressao5Click(Sender: TObject);
    procedure Impressao6Click(Sender: TObject);
    procedure Impressao7Click(Sender: TObject);
    procedure Impressao8Click(Sender: TObject);
    procedure Impressao9Click(Sender: TObject);
    procedure Impressao10Click(Sender: TObject);
    procedure Impressao11Click(Sender: TObject);
    procedure Impressao12Click(Sender: TObject);
    procedure Impressao13Click(Sender: TObject);
    procedure Impressao14Click(Sender: TObject);
    procedure Impressao15Click(Sender: TObject);
    procedure Impressao16Click(Sender: TObject);
    procedure Impressao17Click(Sender: TObject);
    procedure AluPedInfClick(Sender: TObject);
    procedure Impressao18Click(
      Sender: TObject);
    procedure Impressao19Click(Sender: TObject);
    procedure Impressao20Click(Sender: TObject);
    procedure FichaIndividualdoaluno1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Cursos1Click(Sender: TObject);
    procedure Gradecurricular1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure Contasareceber1Click(Sender: TObject);
    procedure Contasrecebidas1Click(Sender: TObject);
    procedure Impressao24Click(Sender: TObject);
    procedure Historico1Click(Sender: TObject);
    procedure Impressao21Click(Sender: TObject);
    procedure Impressao22Click(Sender: TObject);
    procedure Impressao23Click(Sender: TObject);
    procedure Gerarcontas1Click(Sender: TObject);
    procedure Darbaixanaconta1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure Impressao25Click(Sender: TObject);
    procedure Impressao27Click(Sender: TObject);
    procedure Impressao26Click(Sender: TObject);
    procedure Recibos1Click(Sender: TObject);
    procedure Contasareceber2Click(Sender: TObject);
    procedure Contasrecebidas2Click(Sender: TObject);
    procedure Impressao28Click(Sender: TObject);
    procedure Impressao29Click(Sender: TObject);
    procedure Impressao30Click(Sender: TObject);
    procedure Impressao31Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Impressao32Click(Sender: TObject);
    procedure Troco1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure MostraSangria1Click(Sender: TObject);
    procedure RelacaoSangria1Click(Sender: TObject);
    procedure Matriculas1Click(Sender: TObject);
    procedure RelaodeAlunosporSriePiloto1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  public
    sData:String;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UCadAluno, UPesqAluno, USobre, UDados, UPesqSerie,
 UPesqMat, UIndices, uconfbcofb, uGeral, UPesqUsuEAcesso, UProjeto,
  URelNotas, URelAlunosAbaixoMedia, URelEmails, URelMatriculadosAte,
  URelAluProj, UEscSerieEProj, URelBoletos, URelMatriculadosMes,
  URelCancelMatriculaMes, URelAluDocPendentes, URelAluPerIntegral,
  URelAluPerEspecial, URelAluAlmocoCol, URelPagApostilas,
  URelEntregaApostilas, URelNF, URelRecibo, UAluPedInf,
  URelEmailsAluPedInf, URelAluDevemSec, URelAluDevemAdv, UFichaIndAlu,
  UPesqGradCur, UPesqCurso, UPesqCalendario, UPesqContasRec, URelAssejt,
  UPesqHistorico, URelHistFund, URelHistInf, URelHistMedio, UBaixaConta,
  UGeraContas, UPesqEvento, URelAlunosSerie, URelAluPorSerie, URelNotaDet,
  URelReciboMes, uPesqRecibo, UFrmPesqContasRecNubia, URelContasDiaria,
  URelPgmtos, UEscSerie, URelContasRecebidas, UEscSerieEEvento, uingestao,
  usangria, ucaixaap, upesqsangria, urelsangria, ufiltrolistamatricula,
  URelAluPorSeriePiloto, UAlunoPiloto;

{$R *.dfm}



procedure TFrmPrincipal.Alunos1Click(Sender: TObject);
begin
  FrmDados.DBX_CadAluno.Active:=True;
  FrmDados.CDS_CadAluno.Active:=True;

  FrmDados.DBX_CadAluAnual.Active := True;
  FrmDados.CDS_CadAluAnual.Active := True;

  FrmDados.DBX_AluProjeto.Active := True;
  FrmDados.CDS_AluProjeto.Active := True;

  FrmDados.DBX_DP.Active := True;
  FrmDados.CDS_DP.Active := True;

  if Localiza_DetItens_Usuario(Alunos1.Tag,Icusu,'V') > 0 then
    bAlunosV := True
  else
    bAlunosV := False;

  if Localiza_DetItens_Usuario(Alunos1.Tag,Icusu,'A') > 0 then
    bAlunosA := True
  else
    bAlunosA := False;

  if Localiza_DetItens_Usuario(Alunos1.Tag,Icusu,'E') > 0 then
    bAlunosE := True
  else
    bAlunosE := False;

  if Localiza_DetItens_Usuario(Alunos1.Tag,Icusu,'I') > 0 then
    bAlunosI := True
  else
    bAlunosI := False;

  if not bAlunosV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

    if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'V') > 0 then
    bContasRecV := True
  else
    bContasRecV := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'A') > 0 then
    bContasRecA := True
  else
    bContasRecA := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'E') > 0 then
    bContasRecE := True
  else
    bContasRecE := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'I') > 0 then
    bContasRecI := True
  else
    bContasRecI := False;
  //endi



  if (FrmPesqAluno = nil) then
  begin
    fechatodos;
    LockWindowUpdate(Handle);
    FrmPesqAluno := TFrmPesqAluno.Create(self);

    with FrmDados do
    begin
      CDS_CadAluAnual.Active := False;
      FrmDados.CDS_CadAluAnualCODALU.DefaultExpression := CDS_CadAluno.FieldByName('codigo').AsString;
      DBX_CadAluAnual.Active := False;
      DBX_CadAluAnual.SQL.Clear;
      DBX_CadAluAnual.SQL.Add('SELECT * FROM CADALUNOANUAL WHERE CODALU = ' + CDS_CadAluno.FieldByName('codigo').AsString + ' order by ANO');
      DBX_CadAluAnual.Active := True;
      CDS_CadAluAnual.Active := True;

      if FrmPesqAluno <> nil then
      begin
        FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
      end;
      //endi
    end;
    //endth

    FrmPesqAluno.Show;
    LockWindowUpdate(0);
  end;
  //endi
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
begin
  FrmSobre:=TFrmSobre.Create(Self);
  FrmSobre.ShowModal;
  FrmSobre.Free;
end;


procedure TFrmPrincipal.PesqSeriesClick(Sender: TObject);
var
  sAno:String;
  iAno,
  iMes,
  iDia:word;
  iOrdem:integer;
begin
  if Localiza_DetItens_Usuario(PesqSeries.Tag,Icusu,'V') > 0 then
    bSeriesV := True
  else
    bSeriesV := False;

  if Localiza_DetItens_Usuario(PesqSeries.Tag,Icusu,'A') > 0 then
    bSeriesA := True
  else
    bSeriesA := False;

  if Localiza_DetItens_Usuario(PesqSeries.Tag,Icusu,'A') > 0 then
    bReorganizaAlu := True
  else
    bReorganizaAlu := False;

  if Localiza_DetItens_Usuario(PesqSeries.Tag,Icusu,'E') > 0 then
    bSeriesE := True
  else
    bSeriesE := False;

  if Localiza_DetItens_Usuario(PesqSeries.Tag,Icusu,'I') > 0 then
    bSeriesI := True
  else
    bSeriesI := False;

  if not bSeriesV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  if FrmPesqSerie = nil then
  begin
    fechatodos;

    with FrmDados do
    begin
      decodedate(date,iAno,iMes,iDia);
      sAno := inttostr(iAno);
      
      CDS_Serie.Active := False;
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE ANO = ' + sAno + ' and ordem is not null' );
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;

      if CDS_Serie.RecordCount = 0 then
      begin
        CDS_Serie.Active := False;
        DBX_Serie.Active := False;
        DBX_Serie.SQL.Clear;
        DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE ANO = ' + sAno + ' order by codigo');
        DBX_Serie.Active := True;
        CDS_Serie.Active := True;
        iOrdem := 0;

        while not CDS_Serie.Eof do
        begin
          iOrdem := iOrdem + 1;
          CDS_Serie.Edit;
          CDS_Serie.FieldByName('ordem').AsInteger := iOrdem;
          CDS_Serie.Post;
          CDS_Serie.Next;
        end;
        //endth
      end;
      //endi
      //endi

      DBX_Indices.Active := True;
      CDS_Indices.Active := True;

      CDS_Serie.Active := False;
      CDS_SerieANO.DefaultExpression := quotedstr(sAno);
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE ANO = ' + sAno + ' order by ordem');
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;

      DBX_CadAluno.Active := True;
      CDS_CadAluno.Active := True;
    end;
    //endth

    LockWindowUpdate(Handle);
    FrmPesqSerie := TFrmPesqSerie.Create(self);
    decodedate(date,iAno,iMes,iDia);
    FrmPesqSerie.EdGeralAno.Text := inttostr(iAno);
    //FrmPesqSerie.EDAno.Text := inttostr(iAno);
    FrmPesqSerie.Show;
    LockWindowUpdate(0);
  end;
  //endi
end;

procedure TFrmPrincipal.Matrias1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Matrias1.Tag,Icusu,'V') > 0 then
    bMateriasV := True
  else
    bMateriasV := False;

  if Localiza_DetItens_Usuario(Matrias1.Tag,Icusu,'A') > 0 then
    bMateriasA := True
  else
    bMateriasA := False;

  if Localiza_DetItens_Usuario(Matrias1.Tag,Icusu,'E') > 0 then
    bMateriasE := True
  else
    bMateriasE := False;

  if Localiza_DetItens_Usuario(Matrias1.Tag,Icusu,'I') > 0 then
    bMateriasI := True
  else
    bMateriasI := False;

  if not bMateriasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

if FrmPesqMat = nil then
begin
  fechatodos;
  with FrmDados do
  begin
    DBX_CadMateria.Active:=True;
    CDS_CadMateria.Active:=True;
  end;
  //endth
  LockWindowUpdate(Handle);
  FrmPesqMat := TFrmPesqMat.Create(self);
  FrmPesqMat.Show;
  LockWindowUpdate(0);
end;
//endi
end;

procedure TFrmPrincipal.Anoletivo1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(AnoLetivo1.Tag,Icusu,'V') > 0 then
    bAnoLetivoV := True
  else
    bAnoLetivoV := False;

  if Localiza_DetItens_Usuario(AnoLetivo1.Tag,Icusu,'A') > 0 then
    bAnoLetivoA := True
  else
    bAnoLetivoA := False;

  if Localiza_DetItens_Usuario(AnoLetivo1.Tag,Icusu,'E') > 0 then
    bAnoLetivoE := True
  else
    bAnoLetivoE := False;

  if Localiza_DetItens_Usuario(AnoLetivo1.Tag,Icusu,'I') > 0 then
    bAnoLetivoI := True
  else
    bAnoLetivoI := False;

  if not bAnoLetivoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  FrmDados.DBX_Indices.Active:=True;
  FrmDados.CDS_Indices.Active:=True;

  FrmIndices:=TFrmIndices.Create(self);
  if FrmDados.CDS_Indices.RecordCount = 0 then
  begin
    FrmDados.CDS_Indices.Append;
  end
  else
  begin
    FrmDados.CDS_Indices.Edit;
  end;
  FrmIndices.LblData.Visible := False;
  FrmIndices.EDData.Visible := False;
  FrmIndices.ShowModal;
  FrmIndices.Free;
end;

procedure TFrmPrincipal.ConfigBDClick(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(ConfigBD.Tag,Icusu,'V') > 0 then
    bConfigV := True
  else
    bConfigV := False;

  if Localiza_DetItens_Usuario(ConfigBD.Tag,Icusu,'A') > 0 then
    bConfigA := True
  else
    bConfigA := False;

  if Localiza_DetItens_Usuario(ConfigBD.Tag,Icusu,'E') > 0 then
    bConfigE := True
  else
    bConfigE := False;

  if Localiza_DetItens_Usuario(ConfigBD.Tag,Icusu,'I') > 0 then
    bConfigI := True
  else
    bConfigI := False;

  if not bConfigV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  if Frmconfbcofb = nil then
  begin
    fechatodos;
    Frmconfbcofb := Tfrmconfbcofb.Create(self);
    Frmconfbcofb.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FrmDados.DBX_Indices.Active:=True;
  FrmDados.CDS_Indices.Active:=True;
  iniciavarglobal;
end;

procedure TFrmPrincipal.DTImpClick(Sender: TObject);
begin
  FrmDados.DBX_Indices.Active:=True;
  FrmDados.CDS_Indices.Active:=True;

  if Localiza_DetItens_Usuario(DtImp.Tag,Icusu,'V') > 0 then
    bDataV := True
  else
    bDataV := False;
  //endi

  if Localiza_DetItens_Usuario(DtImp.Tag,Icusu,'A') > 0 then
    bDataA := True
  else
    bDataA := False;
  //endi

  if Localiza_DetItens_Usuario(DtImp.Tag,Icusu,'E') > 0 then
    bDataE := True
  else
    bDataE := False;
  //endi

  if Localiza_DetItens_Usuario(DtImp.Tag,Icusu,'I') > 0 then
    bDataI := True
  else
    bDataI := False;
  //endi

  if not bDataV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmIndices:=TFrmIndices.Create(self);
  IF FrmDados.CDS_Indices.RecordCount = 0 then
  begin
    FrmDados.CDS_Indices.Append;
  end
  else
  begin
    FrmDados.CDS_Indices.Edit;
  end;
  //endi

  FrmINdices.LblAno.Visible:=False;
  FrmIndices.EDAno.Visible:=False;
  FrmIndices.ShowModal;
  FrmIndices.Free;
end;

procedure TFrmPrincipal.EDLoginKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TFrmPrincipal.BtnLoginClick(Sender: TObject);
begin
if blogin then
    begin
      edlogin.SetFocus;
      pnllogin.Visible := false;
      pnllogin.Caption := '';
      fechatodos;
      bloqueio;
      BtnLogin.Caption := 'Login';
      exit;
    end;
  //endi

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'login';
       sqp_dados.ParamByName('VARNOME').AsString := Edlogin.Text;
       sqp_dados.ParamByName('VARSENHA').AsString := Edsenha.Text;
       sqp_dados.ExecProc;
       if sqp_dados.ParamByName('NOME').AsString <>'' then
          begin
            blogin := true;
            icusu := sqp_dados.ParamByName('codigo').Asinteger;

            pnllogin.Visible := true;
            pnllogin.Caption := 'Acesso Liberado: '+sqp_dados.ParamByName('NOME').AsString;

            //Módulo Cadastro
            if Localiza_Itens_Usuario(Alunos1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 Alunos1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(PesqSeries,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 PesqSeries.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Matrias1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 Matrias1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(AnoLetivo1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 AnoLetivo1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(DTImp,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 DTImp.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Usurio1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Abrir1.Visible := true;
                 Usurio1.Visible := true;
               end;
            //endi
            if Localiza_Itens_Usuario(Projetos1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              Projetos1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(AluPedInf,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              AluPedInf.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(FichaIndividualdoaluno1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              FichaIndividualdoaluno1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Cursos1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              Cursos1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(GradeCurricular1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              GradeCurricular1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Calendario1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              Calendario1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Historico1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              Historico1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Eventos1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Abrir1.Visible := True;
              Eventos1.Visible := True;
            end;
            //endi

            //Modulo Controle Financeiro

            if Localiza_Itens_Usuario(Troco1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              Troco1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Sangria1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              Sangria1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(MostraSangria1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              MostraSangria1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(RelacaoSangria1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              RelacaoSangria1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Caixa1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              Caixa1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(ContasAReceber1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              ContasaReceber1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(ContasRecebidas1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              ContasRecebidas1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(DarBaixaNaConta1,sqp_dados.ParamByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              DarBAixaNaConta1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(GerarContas1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              GerarContas1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Recibos1,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Recibos1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(ContasAReceber2,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              ContasAReceber2.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(ContasRecebidas2,sqp_Dados.paramByName('CODIGO').AsString) > 0 then
            begin
              ControleFinanceito1.Visible := True;
              Nubia1.Visible := True;
              ContasRecebidas2.Visible := True;
            end;
            //endi

            //Modulo Arquivo
            if Localiza_Itens_Usuario(Sair1,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 Arquivos1.Visible := true;
                 Sair1.Visible := true;
               end;
            //endi

            //Modulo de impressões
            if Localiza_Itens_Usuario(Impressao1,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao1.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao2,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao2.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao3,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao3.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao4,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao4.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao5,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao5.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao6,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao6.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao7,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao7.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao8,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao8.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao9,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao9.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao10,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao10.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao11,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao11.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao12,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao12.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao13,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao13.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao14,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao14.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao15,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              PorSrie1.Visible := True;
              Impressao15.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao16,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao16.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao17,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao17.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao18,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao18.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao19,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao19.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao20,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao20.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao21,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao21.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao22,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao22.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao23,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao23.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao24,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao24.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao25,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao25.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao26,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao26.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao27,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Impressao27.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao28,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              Impressao28.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao29,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              Impressao29.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao30,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              Impressao30.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao31,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              Impressao31.Visible := True;
            end;
            //endi

            if Localiza_Itens_Usuario(Impressao32,sqp_dados.paramByName('CODIGO').AsString) > 0 then
            begin
              Impresses1.Visible := True;
              Financeiro1.Visible := True;
              Impressao32.Visible := True;
            end;
            //endi

            //Modulo do Banco De Dados
            if Localiza_Itens_Usuario(ConfigBD,sqp_dados.ParamByName('codigo').AsString) > 0 then
               begin
                 BancodeDados1.Visible := true;
                 ConfigBD.Visible := true;
               end;
            //endi


            Dbx_InvSysf.Active := false;
            Dbx_InvSysf.SQL.Clear;
            Dbx_InvSysf.SQL.Add('Select * from invsysf where codusu = '+sqp_dados.ParamByName('codigo').AsString);
            Dbx_Invsysf.Active := true;


            edsenha.Text := '';
            edlogin.SetFocus;
            BtnLogin.Caption := 'Logout';
          end
       else
       begin
       if sqp_dados.ParamByName('NOME').AsString ='' then
       begin
        showmessage('Senha ou Usuário Incorreto');
        edlogin.SetFocus;
       end;
       //endi
     end;
     //endi
   end;
   //endth
end;

procedure TFrmPrincipal.EDSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnLogin.Click;
  //endi
end;

procedure TFrmPrincipal.Usurio1Click(Sender: TObject);
begin
  FrmDados.DBX_InvSysP.Active := True;
  FrmDados.CDS_InvSysP.Active := True;

  FrmDados.DBX_InvSys.Active := True;
  FrmDados.CDS_InvSys.Active := True;

  FrmDados.DBX_InvSysF.Active := True;
  FrmDados.CDS_InvSysF.Active := True;

  FrmDados.DBX_Usuario.Active := True;
  FrmDados.CDS_Usuario.Active := True;

  if Localiza_DetItens_Usuario(Usurio1.Tag,Icusu,'V') > 0 then
    bUsuariosV := True
  else
    bUsuariosV := False;
  //endi

  if Localiza_DetItens_Usuario(Usurio1.Tag,Icusu,'A') > 0 then
    bUsuariosA := True
  else
    bUsuariosA := False;
  //endi

  if Localiza_DetItens_Usuario(Usurio1.Tag,Icusu,'E') > 0 then
    bUsuariosE := True
  else
    bUsuariosE := False;
  //endi

  if Localiza_DetItens_Usuario(Usurio1.Tag,Icusu,'I') > 0 then
    bUsuariosI := True
  else
    bUsuariosI := False;
  //endi

  if not bUsuariosV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi


  if FrmPnivelace = nil then
  begin
    fechatodos;
    LockWindowUpdate(Handle);
    Frmpnivelace := Tfrmpnivelace.Create(self);
    Frmpnivelace.Show;
    LockWindowUpdate(0);
  end;
  //endi
end;

procedure TFrmPrincipal.Bloqueio;
begin
  bLogin := False;
  DTImp.Visible := False;
  AnoLetivo1.Visible := False;
  Usurio1.Visible := False;
  Matrias1.Visible := False;
  PesqSeries.Visible := False;
  Alunos1.Visible := False;
  Abrir1.Visible := False;
  BancoDeDados1.Visible := False;
  ConfigBD.Visible := False;
  Projetos1.Visible := False;
  Impresses1.Visible := False;
  Impressao1.Visible := False;
  Impressao2.Visible := False;
  Impressao3.Visible := False;
  Impressao4.Visible := False;
  Porsrie1.Visible := False;
  Financeiro1.Visible := False;
  Impressao5.Visible := False;
  Impressao6.Visible := False;
  Impressao7.Visible := False;
  Impressao8.Visible := False;
  Impressao9.Visible := False;
  Impressao10.Visible := False;
  Impressao11.Visible := False;
  Impressao12.Visible := False;
  Impressao13.Visible := False;
  Impressao14.Visible := False;
  Impressao15.Visible := False;
  Impressao16.Visible := False;
  Impressao17.Visible := False;
  Impressao18.Visible := False;
  Impressao19.Visible := False;
  Impressao20.Visible := False;
  Impressao21.Visible := False;
  Impressao22.Visible := False;
  Impressao23.Visible := False;
  Impressao24.Visible := False;
  Impressao25.Visible := False;
  Impressao26.Visible := False;
  Impressao27.Visible := False;
  Impressao28.Visible := False;
  Impressao29.Visible := False;
  Impressao30.Visible := False;
  Impressao31.Visible := False;
  Impressao32.Visible := False;
  AluPedInf.Visible := False;
  FichaIndividualdoaluno1.Visible := False;
  Cursos1.Visible := False;
  Troco1.Visible := false;
  Sangria1.Visible := false;
  Caixa1.Visible := false;
  mostrasangria1.Visible := false;
  relacaosangria1.Visible := false;

  GradeCurricular1.Visible := False;
  Calendario1.Visible := False;
  ControleFinanceito1.Visible := False;
  ContasaReceber1.Visible := False;
  ContasRecebidas1.Visible := False;
  Historico1.Visible := False;
  GerarContas1.Visible := False;
  Darbaixanaconta1.Visible := False;
  Eventos1.Visible := False;
  Recibos1.Visible := False;
  Nubia1.Visible := False;
  ContasAReceber2.Visible := False;
  ContasRecebidas2.Visible := False;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Bloqueio;
  EdLogin.SetFocus;
  if not FrmDados.SQL_Dados.Connected then
  begin
    frmconfbcofb := Tfrmconfbcofb.Create(self);
    frmconfbcofb.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Projetos1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Projetos1.Tag,Icusu,'V') > 0 then
    bProjetoV := True
  else
    bProjetoV := False;
  //endi

  if Localiza_DetItens_Usuario(Projetos1.Tag,Icusu,'A') > 0 then
    bProjetoA := True
  else
    bProjetoA := False;
  //endi

  if Localiza_DetItens_Usuario(Projetos1.Tag,Icusu,'E') > 0 then
    bProjetoE := True
  else
    bProjetoE := False;
  //endi

  if Localiza_DetItens_Usuario(Projetos1.Tag,Icusu,'I') > 0 then
    bProjetoI := True
  else
    bProjetoI := False;
  //endi

  if not bProjetoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmProjeto = nil then
  begin
    fechatodos;
    FrmDados.DBX_Projeto.Active := True;
    FrmDados.CDS_Projeto.Active := True;
    FrmProjeto := TFrmProjeto.Create(self);
    FrmProjeto.Show;
  end;
  //endi


end;

procedure TFrmPrincipal.Impressao1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao1.Tag,Icusu,'V') > 0 then
    bBoletimV := True
  else
    bBoletimV := False;
  //endi

  if not bBoletimV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqSerie <> nil) and (FrmPesqSerie.PnlAlunos.Visible = True) then
  begin
    with FrmDados do
    begin
      codSerie:=CDS_SerieMat.FieldByName('CODIGO').AsInteger;
      DBX_SerieMaster.Active:=True;
      CDS_SerieMaster.Active:=True;
    end;
    //endth
    FrmRelNotas:=TFrmRelNotas.Create(self);
    FrmRelNotas.QuickRep1.PreviewModal;
    FrmRelNotas.Free;
  end
  else
  begin
    showmessage('Escolha o aluno para impressão do boletim!');
    FrmPrincipal.PesqSeries.Click;
    FrmPesqSerie.BtnAlunos.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao2Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao2.Tag,Icusu,'V') > 0 then
    bNotaSerieMatV := True
  else
    bNotaSerieMatV := False;
  //endi

  if not bNotaSerieMatV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqSerie <> nil) and (FrmPesqSerie.PnlAlunos.Visible = False) then
  begin
    FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
    FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
    FrmRelAlunosAbaixoMedia.Free;
  end
  else if (FrmPesqSerie = nil) then
  begin
    showmessage('Selecione a turma e materia!');
    FrmPrincipal.PesqSeries.Click;
//    FrmPesqSerie.BtnAlunos.Click;
  end
  else if(FrmPesqSerie.PnlAlunos.Visible = True) then
  begin
    if (FrmPesqSerie.DBLookupComboBox1.Text = '') then
    begin
      showmessage('Selecione a materia desejada!');
      FrmPesqSerie.DBLookupComboBox1.SetFocus;
    end
    else
    begin
      FrmRelAlunosAbaixoMedia := TFrmRelAlunosAbaixoMedia.Create(self);
      FrmRelAlunosAbaixoMedia.QuickRep1.PreviewModal;
      FrmRelAlunosAbaixoMedia.Free;
    end;
    //endi
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao3Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao3.Tag,Icusu,'V') > 0 then
    bEmailV := True
  else
    bEmailV := False;
  //endi

  if not bEmailV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelEmails := TFrmRelEmails.Create(self);
    FrmRelEmails.QuickRep2.PreviewModal;
    FrmRelEmails.Free;
  end
  else
  begin
    showmessage('Selecione a turma desejada para relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao4Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao4.Tag,Icusu,'V') > 0 then
    bMatriculaAteV := True
  else
    bMatriculaAteV := False;
  //endi

  if not bMatriculaAteV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelMatriculadosAte := TFrmRelMatriculadosAte.Create(self);
  FrmRelMatriculadosAte.QuickRep2.PreviewModal;
  FrmRelMatriculadosAte.Free;
end;

procedure TFrmPrincipal.Impressao5Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao5.Tag,Icusu,'V') > 0 then
    bAluProV := True
  else
    bAluProV := False;
  //endi

  if not bAluProV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmProjeto <> nil then
  begin
    FrmRelAluProj := TFrmRelAluProj.Create(self);
    FrmRelAluProj.QuickRep1.PreviewModal;
    FrmRelAluProj.Free;
  end
  else
  begin
    showmessage('Escolha o projeto desejado para listagem!');
    FrmPrincipal.Projetos1.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao6Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao6.Tag,Icusu,'V') > 0 then
    bSerProV := True
  else
    bSerProV := False;
  //endi

  if not bSerProV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmEscSerieEProj = nil then
  begin
    fechatodos;
    FRMDados.DBX_Projeto.Active := True;
    FrmDados.CDS_Projeto.Active := True;
    FrmDados.DBX_Serie.Active := True;
    FrmDados.CDS_Serie.Active := True;
    FrmEscSerieEProj := TFrmEscSerieEProj.Create(self);
    FrmEscSerieEProj.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao7Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao7.Tag,Icusu,'V') > 0 then
    bBoletosV := True
  else
    bBoletosV := False;
  //endi

  if not bBoletosV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmDados.CDS_Serie.Active = True then
  begin
    FrmRelBoletos := TFrmRelBoletos.Create(self);
    FrmRelBoletos.QuickRep1.PreviewModal;
    FrmRelBoletos.Free;
  end
  else
  begin
    showmessage('Escolha a série desejada!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao8Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao8.Tag,Icusu,'V') > 0 then
    bMatMesV := True
  else
    bMatMesV := False;
  //endi

  if not bMatMesV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelMatriculadosMes := TFrmRelMatriculadosMes.Create(self);
  FrmRelMatriculadosMes.QuickRep2.PreviewModal;
  FrmRelMatriculadosMes.Free;
end;

procedure TFrmPrincipal.Impressao9Click(
  Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao9.Tag,Icusu,'V') > 0 then
    bCancelMatMesV := True
  else
    bCancelMatMesV := False;
  //endi

  if not bCancelMatMesV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelCancelMatriculaMes := TFrmRelCancelMatriculaMes.Create(self);
  FrmRelCancelMatriculaMes.QuickRep2.PreviewModal;
  FrmRelCancelMatriculaMes.Free;
end;

procedure TFrmPrincipal.Impressao10Click(
  Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao10.Tag,Icusu,'V') > 0 then
    bDocPendentesV := True
  else
    bDocPendentesV := False;
  //endi

  if not bDocPendentesV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelAluDocPendentes := TFrmRelAluDocPendentes.Create(self);
    FrmRelAluDocPendentes.QuickRep1.PreviewModal;
    FrmRelAluDocPendentes.Free;
  end
  else
  begin
    showmessage('Escolha a série desejada!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao11Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao11.Tag,Icusu,'V') > 0 then
    bPerIntV := True
  else
    bPerIntV := False;
  //endi

  if not bPerIntV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelAluPerIntegral := TFrmRelAluPerIntegral.Create(self);
    FrmRelAluPerIntegral.QuickRep1.PreviewModal;
    FrmRelAluPerIntegral.Free;
  end
  else
  begin
    showmessage('Selecione a série para a relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao12Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao12.Tag,Icusu,'V') > 0 then
    bPerEspV := True
  else
    bPerEspV := False;
  //endi

  if not bPerEspV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelAluPerEspecial := TFrmRelAluPerEspecial.Create(self);
    FrmRelAluPerEspecial.QuickRep1.PreviewModal;
    FrmRelAluPerEspecial.Free;
  end
  else
  begin
    showmessage('Selecione a série para a relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao13Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao13.Tag,Icusu,'V') > 0 then
    bAluAlmocoV := True
  else
    bAluAlmocoV := False;
  //endi

  if not bAluAlmocoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelAluAlmocoCol := TFrmRelAluAlmocoCol.Create(self);
  FrmRelAluAlmocoCol.QuickRep1.PreviewModal;
  FrmRelAluAlmocoCol.free;
end;

procedure TFrmPrincipal.Impressao14Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao14.Tag,Icusu,'V') > 0 then
    bPagApostV := True
  else
    bPagApostV := False;
  //endi

  if not bPagApostV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelPagApostilas := TFrmRelPagApostilas.Create(self);
    FrmRelPagApostilas.QuickRep1.PreviewModal;
    FrmRelPagApostilas.Free;
  end
  else
  begin
    showmessage('Selecione a sala desejada para relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao15Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao15.Tag,Icusu,'V') > 0 then
    bEntApostV := True
  else
    bEntApostV := False;
  //endi

  if not bEntApostV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelEntregaApostilas := TFrmRelEntregaApostilas.Create(self);
    FrmRelEntregaApostilas.QuickRep1.PreviewModal;
    FrmRelEntregaApostilas.Free;
  end
  else
  begin
    showmessage('Selecione a sala desejada para relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao16Click(
  Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao16.Tag,Icusu,'V') > 0 then
    bAluNFV := True
  else
    bAluNFV := False;
  //endi

  if not bAluNFV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelNF := TFrmRelNF.Create(self);
  FrmRelNF.quickRep1.PreviewModal;
  FrmRelNF.Free;
end;

procedure TFrmPrincipal.Impressao17Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao17.Tag,Icusu,'V') > 0 then
    bAluReciboV := True
  else
    bAluReciboV := False;
  //endi

  if not bAluReciboV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelReciboMes := TFrmRelReciboMes.Create(self);
  FrmRelReciboMes.quickRep1.PreviewModal;
  FrmRelReciboMes.Free;
end;

procedure TFrmPrincipal.AluPedInfClick(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(AluPedInf.Tag,Icusu,'V') > 0 then
    bAluPedInfV := True
  else
    bAluPedInfV := False;
  //endi

  if Localiza_DetItens_Usuario(AluPedInf.Tag,Icusu,'A') > 0 then
    bAluPedInfA := True
  else
    bAluPedInfA := False;
  //endi

  if Localiza_DetItens_Usuario(AluPedInf.Tag,Icusu,'E') > 0 then
    bAluPedInfE := True
  else
    bAluPedInfE := False;
  //endi

  if Localiza_DetItens_Usuario(AluPedInf.Tag,Icusu,'I') > 0 then
    bAluPedInfI := True
  else
    bAluPedInfI := False;
  //endi

  if not bAluPedInfV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmAluPedInf = nil then
  begin
    FrmDados.DBX_AluPedInf.Active := True;
    FrmDados.CDS_AluPedInf.Active := True;
    FrmAluPedInf := TFrmAluPedInf.Create(Self);
    FrmAluPedInf.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao18Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao18.Tag,Icusu,'V') > 0 then
    bEmailAluPedInfV := True
  else
    bEmailAluPedInfV := False;
  //endi

  if not bEmailAluPedInfV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelEmailsAluPedInf := TFrmRelEmailsAluPedInf.Create(self);
  FrmRelEmailsAluPedInf.QuickRep2.previewModal;
  FrmRelEmailsAluPedInf.free;
end;

procedure TFrmPrincipal.Impressao19Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao19.Tag,Icusu,'V') > 0 then
    bAluDevSecV := True
  else
    bAluDevSecV := False;
  //endi

  if not bAluDevSecV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelAluDevemSec := TFrmRelAluDevemSec.Create(self);
  FrmRelAluDevemSec.QuickRep1.PreviewModal;
  FrmRelAluDevemSec.Free;
end;

procedure TFrmPrincipal.Impressao20Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao20.Tag,Icusu,'V') > 0 then
    bAluDevAdvV := True
  else
    bAluDevAdvV := False;
  //endi

  if not bAluDevAdvV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  FrmRelAluDevemAdv := TFrmRelAluDevemAdv.Create(self);
  FrmRelAluDevemAdv.QuickRep1.PreviewModal;
  FrmRelAluDevemAdv.Free;
end;

procedure TFrmPrincipal.FichaIndividualdoaluno1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(FichaIndividualDoAluno1.Tag,Icusu,'V') > 0 then
    bFichaIndAluV := True
  else
    bFichaIndAluV := False;
  //endi

  if Localiza_DetItens_Usuario(FichaIndividualDoAluno1.Tag,Icusu,'A') > 0 then
    bFichaIndAluA := True
  else
    bFichaIndAluA := False;
  //endi

  if Localiza_DetItens_Usuario(FichaIndividualDoAluno1.Tag,Icusu,'E') > 0 then
    bFichaIndAluE := True
  else
    bFichaIndAluE := False;
  //endi

  if Localiza_DetItens_Usuario(FichaIndividualDoAluno1.Tag,Icusu,'I') > 0 then
    bFichaIndAluI := True
  else
    bFichaIndAluI := False;
  //endi

  if not bFichaIndAluV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmFichaIndAlu = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_CadAluno.Active := True;
      CDS_CadAluno.Active := True;
      DBX_FichaIndAlu.Active := True;
      CDS_FichaIndAlu.Active := True;
      DBX_CadMateria.Active := True;
      CDS_CadMAteria.Active := True;
    end;
    //endth
    FrmFichaIndAlu := TFrmFichaIndAlu.Create(self);
    FrmFichaIndAlu.show;
  end;
  //endi
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  FrmDados.DBX_ContasRec.Active := True;
  FrmDados.CDS_ContasRec.Active := True;
  FrmDados.DBX_CadAluno.Active:=True;
  FrmDados.CDS_CadAluno.Active:=True;
  FrmDados.DBX_DadosCheque.Active := True;
  FrmDados.CDS_DadosCheque.Active := True;

  FrmGeraContas := TFrmGeraContas.Create(self);
  FrmGeraContas.Show;
end;

procedure TFrmPrincipal.Cursos1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Cursos1.Tag,Icusu,'V') > 0 then
    bCursoV := True
  else
    bCursoV := False;
  //endi

  if Localiza_DetItens_Usuario(Cursos1.Tag,Icusu,'A') > 0 then
    bCursoA := True
  else
    bCursoA := False;
  //endi

  if Localiza_DetItens_Usuario(Cursos1.Tag,Icusu,'E') > 0 then
    bCursoE := True
  else
    bCursoE := False;
  //endi

  if Localiza_DetItens_Usuario(Cursos1.Tag,Icusu,'I') > 0 then
    bCursoI := True
  else
    bCursoI := False;
  //endi

  if not bCursoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqCurso = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Curso.Active := True;
      CDS_Curso.Active := True;
    end;
    //endth
    FrmPesqCurso := TFrmPesqCurso.Create(self);
    FrmPesqCurso.show;
  end;
  //endi
end;

procedure TFrmPrincipal.Gradecurricular1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(GradeCurricular1.Tag,Icusu,'V') > 0 then
    bGradCurV := True
  else
    bGradCurV := False;
  //endi

  if Localiza_DetItens_Usuario(GradeCurricular1.Tag,Icusu,'A') > 0 then
    bGradCurA := True
  else
    bGradCurA := False;
  //endi

  if Localiza_DetItens_Usuario(GradeCurricular1.Tag,Icusu,'E') > 0 then
    bGradCurE := True
  else
    bGradCurE := False;
  //endi

  if Localiza_DetItens_Usuario(GradeCurricular1.Tag,Icusu,'I') > 0 then
    bGradCurI := True
  else
    bGradCurI := False;
  //endi

  if not bGradCurV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqGradCur = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_GradCur.Active := True;
      CDS_GradCur.Active := True;
      DBX_Curso.Active := True;
      CDS_Curso.Active := True;
      DBX_CadMateria.Active := True;
      CDS_CadMAteria.Active := True;
    end;
    //endth
    FrmPesqGradCur := TFrmPesqGradCur.Create(self);
    FrmPesqGradCur.show;
  end;
  //endi
end;

procedure TFrmPrincipal.Calendario1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Calendario1.Tag,Icusu,'V') > 0 then
    bCalendarioV := True
  else
    bCalendarioV := False;
  //endi

  if Localiza_DetItens_Usuario(Calendario1.Tag,Icusu,'A') > 0 then
    bCalendarioA := True
  else
    bCalendarioA := False;
  //endi

  if Localiza_DetItens_Usuario(Calendario1.Tag,Icusu,'E') > 0 then
    bCalendarioE := True
  else
    bCalendarioE := False;
  //endi

  if Localiza_DetItens_Usuario(Calendario1.Tag,Icusu,'I') > 0 then
    bCalendarioI := True
  else
    bCalendarioI := False;
  //endi

  if not bCalendarioV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqCalendario = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Calendario.Active := True;
      CDS_Calendario.Active := True;
      DBX_Curso.Active := True;
      CDS_Curso.Active := True;
    end;
    //endth
    FrmPesqCalendario := TFrmPesqCalendario.Create(self);
    FrmPesqCalendario.show;
  end;
  //endi
end;

procedure TFrmPrincipal.Contasareceber1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'V') > 0 then
    bContasRecV := True
  else
    bContasRecV := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'A') > 0 then
    bContasRecA := True
  else
    bContasRecA := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'E') > 0 then
    bContasRecE := True
  else
    bContasRecE := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber1.Tag,Icusu,'I') > 0 then
    bContasRecI := True
  else
    bContasRecI := False;
  //endi

  if not bContasRecV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqContasRec = nil) or ((FrmPesqContasRec <> nil) and (FrmPesqContasRec.Caption = 'Pesquisa de contas recebidas')) then
  begin
    fechatodos;
    FrmPesqContasRec := TFrmPesqContasRec.Create(self);
    WITH FrmPesqContasRec do
    begin
      BtnRecebido.Visible:=True;
      DBGrid1.Columns[6].Visible:=False; 
      DBGrid1.Columns[7].Visible:=False;
      Caption:='Pesquisa de contas a receber';
      CBXData.Visible:=False;
      BtnRetornar.Visible := False;
    end;
    //endth
    FrmDados.CDS_ContasRec.Active:=False;
    FrmDados.DBX_ContasRec.Active:=False;
    FrmDados.DBX_ContasRec.SQL.Clear;
    FrmDados.DBX_ContasRec.SQL.Add('SELECT R.* FROM CONTASARECEBER R INNER JOIN CADALUNO C ON C.CODIGO = R.CODAlu AND PAGO IS NULL ORDER BY NOME');
    FrmDados.DBX_ContasRec.Active:=True;
    FrmDados.CDS_ContasRec.Active:=True;
    FrmPesqContasRec.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Contasrecebidas1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(ContasRecebidas1.Tag,Icusu,'V') > 0 then
    bContasRecebidasV := True
  else
    bContasRecebidasV := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas1.Tag,Icusu,'A') > 0 then
    bContasRecebidasA := True
  else
    bContasRecebidasA := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas1.Tag,Icusu,'E') > 0 then
    bContasRecebidasE := True
  else
    bContasRecebidasE := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas1.Tag,Icusu,'I') > 0 then
    bContasRecebidasI := True
  else
    bContasRecebidasI := False;
  //endi

  if not bContasRecebidasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqContasRec = nil) or ((FrmPesqContasRec <> nil) and (FrmPesqContasRec.Caption = 'Pesquisa de contas a receber'))  then
  begin
    fechatodos;
    FrmPesqContasRec:=TFrmPesqContasRec.Create(self);
    WITH FrmPesqContasRec do
    begin
      BtnRecebido.Visible:=False;
      DBGrid1.Columns[6].Visible:=True;
      Caption:= 'Pesquisa de contas recebidas';
      CBXData.Visible:=True;
      CBXOrdem.Items.Add('Data pagamento');
    end;
    //endth
    FrmDados.CDS_ContasRec.Active:=False;
    FrmDados.DBX_ContasRec.Active:=False;
    FrmDados.DBX_ContasRec.SQL.Clear;
    FrmDados.DBX_ContasRec.SQL.Add('SELECT R.*  FROM CONTASARECEBER R INNER JOIN CADALUNO C ON C.CODIGO = R.CODALU AND PAGO IS NOT NULL ORDER BY NOME');
    FrmDados.DBX_ContasRec.Active:=True;
    FrmDados.CDS_ContasRec.Active:=True;
    FrmPesqContasRec.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao24Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao24.Tag,Icusu,'V') > 0 then
    bAssejtV := True
  else
    bAssejtV := False;
  //endi

  if not bAssejtV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqSerie <> nil then
  begin
    FrmRelAssejt := TFrmRelAssejt.Create(self);
    FrmRelAssejt.QuickRep2.PreviewModal;
    FrmRelAssejt.Free;
  end
  else
  begin
    showmessage('Selecione a turma desejada para relação!');
    FrmPrincipal.PesqSeries.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Historico1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'V') > 0 then
    bHistoricoV := True
  else
    bHistoricoV := False;
  //endi

  if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'A') > 0 then
    bHistoricoA := True
  else
    bHistoricoA := False;
  //endi

  if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'E') > 0 then
    bHistoricoE := True
  else
    bHistoricoE := False;
  //endi

  if Localiza_DetItens_Usuario(Historico1.Tag,Icusu,'I') > 0 then
    bHistoricoI := True
  else
    bHistoricoI := False;
  //endi

  if not bHistoricoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqHistorico = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Historico.Active := True;
      CDS_Historico.Active := True;
      DBX_NotasAnteriores.Active := True;
      CDS_NotasAnteriores.Active := True;
      DBX_CadALuno.Active := True;
      CDS_CadAluno.Active := True;
    end;
    //endth
    FrmPesqHistorico := TFrmPesqHistorico.Create(self);
    FrmPesqHistorico.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao21Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao21.Tag,Icusu,'V') > 0 then
    bHistEFV := True
  else
    bHistEFV := False;
  //endi

  if not bHistEFV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqAluno <> nil then
  begin
    FrmDados.DBX_CadMateria.Active := True;
    FrmDados.CDS_CadMateria.Active := True;

    FrmRelhistFund := TFrmRelHistFund.Create(self);
    FrmRelHistFund.QuickRep1.PreviewModal;
    FrmRelHistFund.Free;
  end
  else
  begin
    showmessage('Selecione o aluno que deseja ver o histórico!');
    alunos1.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao22Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao22.Tag,Icusu,'V') > 0 then
    bHistEIV := True
  else
    bHistEIV := False;
  //endi

  if not bHistEIV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqAluno <> nil then
  begin
    FrmDados.DBX_CadMateria.Active := True;
    FrmDados.CDS_CadMateria.Active := True;

    FrmRelhistInf := TFrmRelHistInf.Create(self);
    FrmRelHistInf.QuickRep1.PreviewModal;
    FrmRelHistInf.Free;
  end
  else
  begin
    showmessage('Selecione o aluno que deseja ver o histórico!');
    alunos1.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao23Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao23.Tag,Icusu,'V') > 0 then
    bHistEMV := True
  else
    bHistEMV := False;
  //endi

  if not bHistEMV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqAluno <> nil then
  begin
    FrmDados.DBX_CadMateria.Active := True;
    FrmDados.CDS_CadMateria.Active := True;

    FrmRelHistMedio := TFrmRelHistMedio.Create(self);
    FrmRelHistMedio.QuickRep1.PreviewModal;
    FrmRelHistMedio.Free;
  end
  else
  begin
    showmessage('Selecione o aluno que deseja ver o histórico!');
    alunos1.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Gerarcontas1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(GerarContas1.Tag,Icusu,'V') > 0 then
    bGeraContasV := True
  else
    bGeraContasV := False;

  if Localiza_DetItens_Usuario(GerarContas1.Tag,Icusu,'A') > 0 then
    bGeraContasA := True
  else
    bGeraContasA := False;

  if Localiza_DetItens_Usuario(GerarContas1.Tag,Icusu,'E') > 0 then
    bGeraContasE := True
  else
    bGeraContasE := False;

  if Localiza_DetItens_Usuario(GerarContas1.Tag,Icusu,'I') > 0 then
    bGeraContasI := True
  else
    bGeraContasI := False;

  if not bGeraContasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;

  if FrmGeraContas = nil then
  begin
    fechatodos;
    FrmDados.DBX_ContasRecNubia.Active := True;
    FrmDados.CDS_ContasRecNubia.Active := True;
    FrmDados.DBX_CadAluno.Active:=True;
    FrmDados.CDS_CadAluno.Active:=True;
    FrmDados.DBX_DadosCheque.Active := True;
    FrmDados.CDS_DadosCheque.Active := True;
    FrmDados.DBX_Evento.Active := True;
    FrmDados.CDS_Evento.Active := True;

    FrmGeraContas := TFrmGeraContas.Create(self);
    FrmGeraContas.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Darbaixanaconta1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Darbaixanaconta1.Tag,Icusu,'V') > 0 then
    bBaixaContasV := True
  else
    bBaixaContasV := False;

  if Localiza_DetItens_Usuario(Darbaixanaconta1.Tag,Icusu,'A') > 0 then
    bBaixaContasA := True
  else
    bBaixaContasA := False;

  if Localiza_DetItens_Usuario(Darbaixanaconta1.Tag,Icusu,'E') > 0 then
    bBaixaContasE := True
  else
    bBaixaContasE := False;

  if Localiza_DetItens_Usuario(Darbaixanaconta1.Tag,Icusu,'I') > 0 then
    bBaixaContasI := True
  else
    bBaixaContasI := False;

  if not bBaixaContasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;


  if FrmBaixaConta = nil then
  begin
    fechatodos;
    FrmBaixaConta := TFrmBaixaConta.Create(self); 
    FrmBaixaConta.EdInfo1.SetFocus;
    FrmBaixaConta.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Eventos1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Eventos1.Tag,Icusu,'V') > 0 then
    bEventoV := True
  else
    bEventoV := False;
  //endi

  if Localiza_DetItens_Usuario(Eventos1.Tag,Icusu,'A') > 0 then
    bEventoA := True
  else
    bEventoA := False;
  //endi

  if Localiza_DetItens_Usuario(Eventos1.Tag,Icusu,'E') > 0 then
    bEventoE := True
  else
    bEventoE := False;
  //endi

  if Localiza_DetItens_Usuario(Eventos1.Tag,Icusu,'I') > 0 then
    bEventoI := True
  else
    bEventoI := False;
  //endi

  if not bEventoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmPesqEvento = nil then
  begin
    fechatodos;

    FrmDados.DBX_Evento.Active := True;
    FrmDados.CDS_Evento.Active := True;

    FrmPesqEvento := TFrmPesqEvento.Create(self);
    FrmPesqEvento.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao25Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao25.Tag,Icusu,'V') > 0 then
    bRelAluSerieV := True
  else
    bRelAluSerieV := False;
  //endi

  if not bRelAluSerieV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqSerie <> nil) then
  begin
    FrmRelAlunosSerie := TFrmRelAlunosSerie.Create(self);
    FrmRelAlunosSerie.QuickRep1.PreviewModal;
    FrmRelAlunosSerie.Free;
  end
  else if (FrmPesqSerie = nil) then
  begin
    showmessage('Selecione a turma!');
    FrmPrincipal.PesqSeries.Click;
    FrmPesqSerie.BtnAlunos.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao27Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao27.Tag,Icusu,'V') > 0 then
    bRelAluPorSerieV := True
  else
    bRelAluPorSerieV := False;
  //endi

  if not bRelAluPorSerieV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if bRelAluPorSerieV then//(FrmPesqSerie <> nil) then
  begin
    with FrmDados do
    begin
      DBX_Indices.Active := True;
      CDS_Indices.Active := True;

      CDS_Serie.Active := False;
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE ANO = ' + CDS_Indices.FieldByName('ANO').AsString + ' order by ordem');
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;
    end;
    //endth

    FrmRelAlunosPorSerie := TFrmRelAlunosPorSerie.Create(self);
    FrmRelAlunosPorSerie.QuickRep1.PreviewModal;
    FrmRelAlunosPorSerie.Free;
  end
  else
  begin
    showmessage('Selecione a turma!');
    FrmPrincipal.PesqSeries.Click;
    //FrmPesqSerie.BtnAlunos.Click;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao26Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao26.Tag,Icusu,'V') > 0 then
    bRelNotaDetV := True
  else
    bRelNotaDetV := False;
  //endi

  if not bRelNotaDetV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

 if (FrmPesqSerie <> nil) and (FrmPesqSerie.PnlAlunos.Visible = True) then
  begin
    FrmRelNotaDet := TFrmRelNotaDet.Create(self);
    FrmRelNotaDet.QuickRep1.PreviewModal;
    FrmRelNotaDet.Free;
  end
  else if (FrmPesqSerie = nil) then
  begin
    showmessage('Selecione a turma e aluno desejado!');
    FrmPrincipal.PesqSeries.Click;
    FrmPesqSerie.BtnAlunos.Click;
  end


end;

procedure TFrmPrincipal.Recibos1Click(Sender: TObject);
begin
 if FrmPesqRecibo = nil then
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
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('select * from cadaluno');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;

    CDS_Recibo.Active := False;
    DBX_Recibo.Active := False;
    DBX_Recibo.SQL.Clear;
    DBX_Recibo.SQL.Add('Select * from recibo order by num');
    DBX_Recibo.Active := True;
    CDS_Recibo.Active := True;

    fechatodos;

    FrmPesqRecibo := TFrmPEsqRecibo.Create(self);
    FrmPesqRecibo.Show;
  end;
  //endth
 end;
 //endi
end;

procedure TFrmPrincipal.Contasareceber2Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(ContasaReceber2.Tag,Icusu,'V') > 0 then
    bContasRecNubiaV := True
  else
    bContasRecNubiaV := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber2.Tag,Icusu,'A') > 0 then
    bContasRecNubiaA := True
  else
    bContasRecNubiaA := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber2.Tag,Icusu,'E') > 0 then
    bContasRecNubiaE := True
  else
    bContasRecNubiaE := False;
  //endi

  if Localiza_DetItens_Usuario(ContasaReceber2.Tag,Icusu,'I') > 0 then
    bContasRecNubiaI := True
  else
    bContasRecNubiaI := False;
  //endi

  if not bContasRecNubiaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqContasRecNubia = nil) or ((FrmPesqContasRecNubia <> nil) and (FrmPesqContasRecNubia.Caption = 'Pesquisa de contas recebidas')) then
  begin
    fechatodos;
    FrmPesqContasRecNubia := TFrmPesqContasRecNubia.Create(self);
    WITH FrmPesqContasRecNubia do
    begin
      BtnRecebido.Visible:=True;
      BtnGerarRecibo.Visible := False;
      DBGrid1.Columns[6].Visible:=False;
      DBGrid1.Columns[7].Title.Caption := 'Pagamento previsto';
      Caption:='Pesquisa de contas a receber';
      CBXData.Visible:=False;
      BtnRetornar.Visible := False;
    end;
    //endth
    FrmDados.CDS_ContasRecNubia.Active:=False;
    FrmDados.DBX_ContasRecNubia.Active:=False;
    FrmDados.DBX_ContasRecNubia.SQL.Clear;
    FrmDados.DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON C.CODIGO = R.CODAlu AND PAGO IS NULL ORDER BY NOME');
    FrmDados.DBX_ContasRecNubia.Active:=True;
    FrmDados.CDS_ContasRecNubia.Active:=True;
    FrmPesqContasRecNubia.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Contasrecebidas2Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(ContasRecebidas2.Tag,Icusu,'V') > 0 then
    bContasRecebidasNubiaV := True
  else
    bContasRecebidasNubiaV := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas2.Tag,Icusu,'A') > 0 then
    bContasRecebidasNubiaA := True
  else
    bContasRecebidasNubiaA := False;
  //endi

  if bContasRecebidasNubiaA then
    bContasRecNubiaA := True
  else
    bContasRecNubiaA := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas2.Tag,Icusu,'E') > 0 then
    bContasRecebidasNubiaE := True
  else
    bContasRecebidasNubiaE := False;
  //endi

  if bContasRecebidasNubiaE then
    bContasRecNubiaE := True
  else
    bContasRecNubiaE := False;
  //endi

  if Localiza_DetItens_Usuario(ContasRecebidas2.Tag,Icusu,'I') > 0 then
    bContasRecebidasNubiaI := True
  else
    bContasRecebidasNubiaI := False;
  //endi

  if not bContasRecebidasNubiaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if (FrmPesqContasRecNubia = nil) or ((FrmPesqContasRecNubia <> nil) and (FrmPesqContasRecNubia.Caption = 'Pesquisa de contas a receber'))  then
  begin
    fechatodos;
    FrmPesqContasRecNubia := TFrmPesqContasRecNubia.Create(self);
    WITH FrmPesqContasRecNubia do
    begin
      BtnRecebido.Visible := False;
      BtnGerarRecibo.Visible := True;
      DBGrid1.Columns[6].Visible := True;
      DBGrid1.Columns[7].Title.Caption := 'Tipo de pagamento';
      Caption := 'Pesquisa de contas recebidas';
      CBXData.Visible := True;
      CBXOrdem.Items.Add('Data pagamento');
    end;
    //endth
    FrmDados.CDS_ContasRecNubia.Active:=False;
    FrmDados.DBX_ContasRecNubia.Active:=False;
    FrmDados.DBX_ContasRecNubia.SQL.Clear;
    FrmDados.DBX_ContasRecNubia.SQL.Add('SELECT R.*  FROM CONTASARECEBERNUBIA R INNER JOIN CADALUNO C ON C.CODIGO = R.CODALU AND PAGO IS NOT NULL ORDER BY NOME');
    FrmDados.DBX_ContasRecNubia.Active:=True;
    FrmDados.CDS_ContasRecNubia.Active:=True;
    FrmPesqContasRecNubia.Show;
  end;
  //endi
end;

procedure TFrmPrincipal.Impressao28Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao28.Tag,Icusu,'V') > 0 then
    bRelContasDiariaV := True
  else
    bRelContasDiariaV := False;
  //endi

  if not bRelContasDiariaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    sData := inputbox('Data da impressão','Confirme a data de impressão deste relatório.',datetostr(date));
    //showmessage(sData);
    CDS_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add('select * from contasareceberNubia where emissao = ' + quotedstr(bar_is_point(sData)));
    DBX_ContasRecNubia.Active := True;
    CDS_ContasRecNubia.Active := True;

    FrmRelContasDiaria := TFrmRelContasDiaria.Create(self);
    FrmRelContasDiaria.LblData.Caption := sData;
    FrmRelContasDiaria.QuickRep1.PreviewModal;
    FrmRelContasDiaria.Free;
  end;
  //endth
end;

procedure TFrmPrincipal.Impressao29Click(Sender: TObject);
var
  iDia,
  iMes,
  iAno : word;
begin
  if Localiza_DetItens_Usuario(Impressao29.Tag,Icusu,'V') > 0 then
    bRelEtapaV := True
  else
    bRelEtapaV := False;
  //endi

  if not bRelEtapaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    decodedate(date,iAno,iMes,iDia);
    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select * from serie where ano = ' + quotedstr(inttostr(iAno)) + ' order by ordem');
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;
  end;
  //endth

  fechatodos;
  FrmEscSerie := TFrmEscSerie.Create(self);
  FrmEscSerie.EdAno.Text := inttostr(iAno);
  FrmEscSerie.sRel := 'RelPgmto';
  FrmEscSerie.Show;
end;

procedure TFrmPrincipal.Impressao30Click(Sender: TObject);
var
  iDia,
  iMes,
  iAno : word;
begin
  if Localiza_DetItens_Usuario(Impressao30.Tag,Icusu,'V') > 0 then
    bRelEtapaAssV := True
  else
    bRelEtapaAssV := False;
  //endi

  if not bRelEtapaAssV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    decodedate(date,iAno,iMes,iDia);
    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select * from serie where ano = ' + quotedstr(inttostr(iAno)) + ' order by ordem');
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;
  end;
  //endth

  fechatodos;
  FrmEscSerie := TFrmEscSerie.Create(self);
  FrmEscSerie.EdAno.Text := inttostr(iAno);
  FrmEscSerie.sRel := '';
  FrmEscSerie.Show;
end;

procedure TFrmPrincipal.Impressao31Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Impressao28.Tag,Icusu,'V') > 0 then
    bRelContasDiariaV := True
  else
    bRelContasDiariaV := False;
  //endi

  if not bRelContasDiariaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    sData := inputbox('Data da impressão','Confirme a data de impressão deste relatório.',datetostr(date));
    //showmessage(sData);
    {if strptr(sData) = 0 then
      Exit;
    //endi }
    CDS_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add('select * from contasareceberNubia where PAGO = ' + quotedstr(bar_is_point(sData)));
    DBX_ContasRecNubia.Active := True;
    CDS_ContasRecNubia.Active := True;

    FrmRelContasRecebidas := TFrmRelContasRecebidas.Create(self);
    FrmRelContasRecebidas.LblData.Caption := sData;
    FrmRelContasRecebidas.QuickRep1.PreviewModal;
    FrmRelContasRecebidas.Free;
  end;
  //endth
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  iDia,
  iMes,
  iAno : word;
begin
  with FrmDados do
  begin
    decodedate(date,iAno,iMes,iDia);
    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select * from serie where ano = ' + quotedstr(inttostr(iAno)) + ' order by ordem');
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;

    CDS_Evento.Active := False;
    DBX_Evento.Active := False;
    DBX_Evento.SQL.Clear;
    DBX_Evento.SQL.Add('Select * From eventos');
    DBX_Evento.Active := True;
    CDS_Evento.Active := True;
  end;
  //endth

  FrmEscSerieEEvento := TFRMEscSerieEEvento.Create(self);
  FrmEscSerieEEvento.EdAno.Text := inttostr(iAno);
  FrmEscSerieEEvento.show;
end;

procedure TFrmPrincipal.Impressao32Click(Sender: TObject);
var
  iDia,
  iMes,
  iAno : word;
begin
  if Localiza_DetItens_Usuario(Impressao32.Tag,Icusu,'V') > 0 then
    bRelEventosV := True
  else
    bReleventosV := False;
  //endi

  if not bRelEventosV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi
  
  with FrmDados do
  begin
    decodedate(date,iAno,iMes,iDia);
    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select * from serie where ano = ' + quotedstr(inttostr(iAno)) + ' order by ordem');
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;

    CDS_Evento.Active := False;
    DBX_Evento.Active := False;
    DBX_Evento.SQL.Clear;
    DBX_Evento.SQL.Add('Select * From eventos');
    DBX_Evento.Active := True;
    CDS_Evento.Active := True;
  end;
  //endth

  fechatodos;
  FrmEscSerieEEvento := TFRMEscSerieEEvento.Create(self);
  FrmEscSerieEEvento.EdAno.Text := inttostr(iAno);
  FrmEscSerieEEvento.show;
end;

procedure TFrmPrincipal.Troco1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Troco1.Tag,Icusu,'V') > 0 then
    bTrocoV := True
  else
    bTrocoV := False;
  //endi

  if Localiza_DetItens_Usuario(Troco1.Tag,Icusu,'A') > 0 then
    bTrocoA := True
  else
    bTrocoA := False;
  //endi

  if Localiza_DetItens_Usuario(Troco1.Tag,Icusu,'E') > 0 then
    bTrocoE := True
  else
    bTrocoE := False;
  //endi

  if Localiza_DetItens_Usuario(Troco1.Tag,Icusu,'I') > 0 then
    bTrocoI := True
  else
    bTrocoI := False;
  //endi

  if not bTrocoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmIngestao = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Ingestao.Active := True;
      CDS_Ingestao.Active := True;
    end;
    //endth
    FrmIngestao := TFrmIngestao.Create(self);
    FrmIngestao.show;
  end;
  //endi
end;

procedure TFrmPrincipal.Sangria1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'V') > 0 then
    bSangriaV := True
  else
    bSangriaV := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'A') > 0 then
    bSangriaA := True
  else
    bSangriaA := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'E') > 0 then
    bSangriaE := True
  else
    bSangriaE := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'I') > 0 then
    bSangriaI := True
  else
    bSangriaI := False;
  //endi

  if not bSangriaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmSangria = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Sangria.Active := True;
      CDS_Sangria.Active := True;
    end;
    //endth
    FrmSangria := TFrmSangria.Create(self);
    FrmSangria.show;
  end;
  //endi

end;

procedure TFrmPrincipal.Caixa1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Caixa1.Tag,Icusu,'V') > 0 then
    bCaixaV := True
  else
    bCaixaV := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'A') > 0 then
    bCaixaA := True
  else
    bCaixaA := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'E') > 0 then
    bCaixaE := True
  else
    bCaixaE := False;
  //endi

  if Localiza_DetItens_Usuario(Sangria1.Tag,Icusu,'I') > 0 then
    bCaixaI := True
  else
    bCaixaI := False;
  //endi

  if not bCaixaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if FrmCaixaap = nil then
  begin
    fechatodos;
    //with FrmDados do
    //begin
    //  DBX_Caixa.Active := True;
    //  CDS_Caixa.Active := True;
    //end;
    //endth
    FrmCaixaap := TFrmCaixaap.Create(self);
    FrmCaixaap.show;
  end;
  //endi

end;

procedure TFrmPrincipal.MostraSangria1Click(Sender: TObject);
begin



  if Localiza_DetItens_Usuario(Mostrasangria1.Tag,Icusu,'V') > 0 then
    bSangriaV := True
  else
    bSangriaV := False;
  //endi

  if Localiza_DetItens_Usuario(Mostrasangria1.Tag,Icusu,'A') > 0 then
    bSangriaA := True
  else
    bSangriaA := False;
  //endi

  if Localiza_DetItens_Usuario(Mostrasangria1.Tag,Icusu,'E') > 0 then
    bSangriaE := True
  else
    bSangriaE := False;
  //endi

  if Localiza_DetItens_Usuario(Mostrasangria1.Tag,Icusu,'I') > 0 then
    bSangriaI := True
  else
    bSangriaI := False;
  //endi

  if not bSangriaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if frmpesqsangria = nil then
  begin
    fechatodos;
    with FrmDados do
    begin
      DBX_Sangria.Active := True;
      CDS_Sangria.Active := True;
    end;
    //endth
    frmpesqsangria := Tfrmpesqsangria.Create(self);
    frmpesqsangria.show;
  end;
  //endi



end;

procedure TFrmPrincipal.RelacaoSangria1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(relacaosangria1.Tag,Icusu,'V') > 0 then
    bsangriaV := True
  else
    bsangriaV := False;
  //endi

  if not bsangriaV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  with FrmDados do
  begin
    sData := inputbox('Data da impressão','Confirme a data de impressão deste relatório.',datetostr(date));
    //showmessage(sData);
    {if strptr(sData) = 0 then
      Exit;
    //endi }
    CDS_sangria.Active := False;
    DBX_sangria.Active := False;
    DBX_sangria.SQL.Clear;
    DBX_sangria.SQL.Add('select * from sangria where Data = ' + quotedstr(bar_is_point(sData)));
    DBX_sangria.Active := True;
    CDS_sangria.Active := True;

    FrmRelsangria := TFrmRelsangria.Create(self);
    FrmRelsangria.LblData.Caption := sData;
    FrmRelsangria.QuickRep1.PreviewModal;
    FrmRelsangria.Free;
  end;
  //endth

end;

procedure TFrmPrincipal.Matriculas1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(Matriculas1.Tag,Icusu,'V') > 0 then
    bRelMatriculasV := True
  else
    bRelMatriculasV := False;
  //endi

  if not bRelMatriculasV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi



  frmfiltrolistamatricula := tfrmfiltrolistamatricula.create(self);
  frmfiltrolistamatricula.showmodal;
  frmfiltrolistamatricula.free;
end;

procedure TFrmPrincipal.RelaodeAlunosporSriePiloto1Click(Sender: TObject);
begin
  if Localiza_DetItens_Usuario(RelaodeAlunosporSriePiloto1.Tag,Icusu,'V') > 0 then
    bRelAluPorSeriePilotoV := True
  else
    bRelAluPorSeriePilotoV := False;
  //endi

  if not bRelAluPorSeriePilotoV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if bRelAluPorSeriePilotoV then//(FrmPesqSerie <> nil) then
  begin
    with FrmDados do
    begin
      DBX_Indices.Active := True;
      CDS_Indices.Active := True;

      CDS_Serie.Active := False;
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE ANO = ' + CDS_Indices.FieldByName('ANO').AsString + ' order by ordem');
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;
    end;
    //endth

    FrmRelAlunosPorSeriePiloto := TFrmRelAlunosPorSeriePiloto.Create(self);
    FrmRelAlunosPorSeriePiloto.QuickRep1.PreviewModal;
    
    FrmRelAlunosPorSeriePiloto.Free;

  end
  else
  begin
    showmessage('Selecione a turma!');
    FrmPrincipal.PesqSeries.Click;
    //FrmPesqSerie.BtnAlunos.Click;
  end;
  //endi

end;

procedure TFrmPrincipal.R1Click(Sender: TObject);
begin


  if Localiza_DetItens_Usuario(R1.Tag,Icusu,'V') > 0 then
    brelalunogV:= True
  else
    brelalunogV := False;
  //endi

  if not brelalunogV then
  begin
    showmessage('Este usuário não tem privilégios para ver esta tela!');
    Exit;
  end;
  //endi

  if brelalunogV then//(FrmPesqSerie <> nil) then
  begin

    with FrmDados do
    begin
      CDS_Rel.Active := False;
      DBX_Rel.Active := False;
      DBX_Rel.SQL.Clear;
      DBX_Rel.SQL.Add('SELECT * FROM CADALUNO');
      DBX_Rel.Active := True;
      CDS_Rel.Active := True;
    end;

    FrmrelAlunoPiloto := TFrmrelAlunoPiloto.Create(self);
    FrmrelAlunoPiloto.QuickRep1.PreviewModal;

    FrmrelAlunoPiloto.Free;

  end


end;

end.

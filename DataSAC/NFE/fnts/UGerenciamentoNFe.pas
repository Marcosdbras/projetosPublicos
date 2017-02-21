unit UGerenciamentoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, pcnConversao, DB,
  IBCustomDataSet, IBDatabase, IBQuery;

type
  TFrmGerenciamentoNFe = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    BtnConsultarServico: TButton;
    BtnEnviar: TButton;
    BtnInutilizar: TButton;
    BtnCancelamento: TButton;
    BtnEnviarEmail: TButton;
    BtnImprimir: TButton;
    GroupBox1: TGroupBox;
    EdtDataIni: TDateTimePicker;
    EdtDataFin: TDateTimePicker;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Combo: TComboBox;
    BtnOk: TButton;
    BtnSair: TButton;
    QConsNfe: TIBQuery;
    DSConsNFe: TDataSource;
    IBTRNfe: TIBTransaction;
    QConsNfeCOD_NF: TIntegerField;
    QConsNfeDATA_EMISSAO_NF: TDateField;
    QConsNfeVALOR_TOTAL_NF: TIBBCDField;
    QConsNfeNOME_CLI: TIBStringField;
    QConsNfeRAZAO_FOR: TIBStringField;
    QConsNfeNUMERO_NOTA_NF: TIntegerField;
    QConsNfeSTATUS_TRANSMITIDA: TIBStringField;
    QConsNfeSTATUS_CANCELADO: TIBStringField;
    QConsNfeSTATUS_INUTILIZADO: TIBStringField;
    QConsNfeSTATUS_EMAIL: TIBStringField;
    QConsNfeCALC_TRANSMITIDO: TStringField;
    QConsNfeCALC_CANCELADO: TStringField;
    QConsNfeCALC_INUTILIZADO: TStringField;
    QConsNfeCALC_EMAIL: TStringField;
    QConsNfeCALC_DESTINATARIO: TStringField;
    QConsNfeCOD_CLI: TIntegerField;
    QConsNfeCOD_FOR: TIntegerField;
    QConsNfeCHAVE_ACESSO_NFE: TIBStringField;
    QConsNfePROTOCOLO_NFE: TIBStringField;
    BtnConsultaNFe: TButton;
    procedure BtnConsultarServicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QConsNfeCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEnviarEmailClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnInutilizarClick(Sender: TObject);
    procedure BtnCancelamentoClick(Sender: TObject);
    procedure BtnConsultaNFeClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGerenciamentoNFe: TFrmGerenciamentoNFe;

implementation
uses UDM, Ubibli1, USendEmail,  UImprimeNotaFiscal;
var sAmbienteNfe : string;
    sSql : string;

{$R *.dfm}

procedure TFrmGerenciamentoNFe.BtnConsultarServicoClick(Sender: TObject);
begin
   dm.ACBrNFe1.WebServices.StatusServico.Executar;
end;

procedure TFrmGerenciamentoNFe.FormCreate(Sender: TObject);
begin
   sSql:= QConsNfe.SQL.Text;

   {busca parametros}
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.Add('SELECT CAMINHO_CERTIFICADO, SENHA_CERTIFICADO, NUMERO_SERIE_CERTIFICADO,     ' +
                     'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, CAMINHO_LOGOMARCA_DANFE,          ' +
                     'SALVAR_LOG_DANFE, CAMINHO_LOG_DANFE, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE, ' +
                     'PASTA_INUTILIZADAS_DANFE, PASTA_TRANSMITIDAS_DANFE, CAMINHO_ARQUIVOS_PDF,    ' +
                     'CAMINHO_RELATORIO_DANFE, ESTADO_NFE ' +
                     'FROM PARAMETROS ' +
                     'WHERE COD_EMP = :CODEMP');
             Parambyname('codemp').AsInteger:= iEmp;
             Open;

             { Configurando a NFe }
             dm.ACBrNFe1.Configuracoes.Certificados.Senha          := trim(fieldbyname('senha_certificado').AsString);
             dm.ACBrNFe1.Configuracoes.Certificados.NumeroSerie    := trim(fieldbyname('numero_serie_certificado').AsString);

             if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
                dm.ACBrNFe1.DANFE.TipoDANFE:= tiRetrato
             else
                dm.ACBrNFe1.DANFE.TipoDANFE:= tiPaisagem;

             case fieldbyname('forma_emissao_danfe').AsInteger of
                1: dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= teNormal;
                2: dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= teContingencia;
                3: dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= teSCAN;
                4: dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= teDPEC;
                5: dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= teFSDA;
             end;

             dm.ACBrNFe1.DANFE.Logo:= trim(fieldbyname('caminho_logomarca_danfe').AsString);

             if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
                dm.ACBrNFe1.Configuracoes.Geral.Salvar:= true
             else
                dm.ACBrNFe1.Configuracoes.Geral.Salvar:= false;

             dm.ACBrNFe1.Configuracoes.Geral.PathSalvar:= trim(fieldbyname('caminho_log_danfe').AsString);

             sAmbienteNfe:= trim(fieldbyname('ambiente_danfe').AsString);

             if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
                dm.ACBrNFe1.Configuracoes.WebServices.Ambiente:= taProducao
             else
                dm.ACBrNFe1.Configuracoes.WebServices.Ambiente:= taHomologacao;

             dm.ACBrNFe1.Configuracoes.WebServices.UF         := trim(fieldbyname('estado_nfe').AsString);;
             dm.ACBrNFe1.Configuracoes.WebServices.Visualizar := False;

             dm.ACBrNFe1.Configuracoes.Arquivos.PathCan:= trim(fieldbyname('pasta_canceladas_danfe').AsString);
             dm.ACBrNFe1.Configuracoes.Arquivos.PathInu:= trim(fieldbyname('pasta_inutilizadas_danfe').AsString);
             dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe:= trim(fieldbyname('pasta_transmitidas_danfe').AsString);
             dm.ACBrNFeDANFERave1.PathPDF              := trim(fieldbyname('caminho_arquivos_pdf').AsString);
             dm.ACBrNFeDANFERave1.RavFile              := trim(fieldbyname('caminho_relatorio_danfe').AsString);
         end;

      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao buscar os parâmetros');
    end;
  finally
    dm.QConsulta.Close;
  end;
end;

procedure TFrmGerenciamentoNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if IBTRNfe.Active then
      IBTRNfe.Commit;

   Action:= caFree;
end;

procedure TFrmGerenciamentoNFe.QConsNfeCalcFields(DataSet: TDataSet);
begin
   if trim(QConsNfeSTATUS_TRANSMITIDA.AsString) = 'S' then
      QConsNfeCALC_TRANSMITIDO.AsString:= 'TRANSMITIDA OK'
   else
      QConsNfeCALC_TRANSMITIDO.AsString:= '';

   if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
      QConsNfeCALC_CANCELADO.AsString:= 'CANCELADA'
   else
      QConsNfeCALC_CANCELADO.AsString:= '';

   if trim(QConsNfeSTATUS_INUTILIZADO.AsString) = 'S' then
      QConsNfeCALC_INUTILIZADO.AsString:= 'INUTILIZADO'
   else
      QConsNfeCALC_INUTILIZADO.AsString:= '';

   if trim(QConsNfeSTATUS_EMAIL.AsString) = 'S' then
      QConsNfeCALC_EMAIL.AsString:= 'EMAIL OK'
   else
      QConsNfeCALC_EMAIL.AsString:= '';

   if QConsNfeRAZAO_FOR.IsNull then
      QConsNfeCALC_DESTINATARIO.AsString:= QConsNfeNOME_CLI.AsString
   else
      QConsNfeCALC_DESTINATARIO.AsString:= QConsNfeRAZAO_FOR.AsString;
end;

procedure TFrmGerenciamentoNFe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
      begin
         DBGrid1.Canvas.Font.Color:= clRed;
         Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      end;
end;

procedure TFrmGerenciamentoNFe.BtnOkClick(Sender: TObject);
begin
   if IBTRNfe.Active then
      IBTRNfe.Commit;
   IBTRNfe.StartTransaction;
   with QConsNfe do
      begin
         close;
         sql.Clear;
         sql.Text:= sSql;
         sql.Add(' WHERE N.DATA_EMISSAO_NF BETWEEN :DATAINI AND :DATAFIN ' +
                 ' AND N.CODIFICACAO_FISCAL = ' + #39 + '55' + #39 +  
                 ' ORDER BY N.DATA_EMISSAO_NF, N.COD_NF');
         Parambyname('dataini').AsDate:= EdtDataIni.Date;
         Parambyname('datafin').AsDate:= EdtDataFin.Date;
         open;
      end;
end;

procedure TFrmGerenciamentoNFe.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmGerenciamentoNFe.FormShow(Sender: TObject);
begin
   EdtDataIni.Date:= date;
   EdtDataFin.Date:= date;
   EdtDataIni.SetFocus;
end;

procedure TFrmGerenciamentoNFe.BtnEnviarEmailClick(Sender: TObject);
var sCaminhoXML, sCaminhoPDF, sEmail : string;
tempdata: string;
begin
   if not (QConsNfe.State = dsbrowse) then
      exit;

   if trim(QConsNfeSTATUS_TRANSMITIDA.AsString) = 'N' then
      begin
         showmessage('NFe não transmitida');
         exit;
      end;

   if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem chave de acesso');
         exit;
      end;

   if trim(QConsNfePROTOCOLO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem protocolo');
         exit;
      end;

   iCodigoNfe:= QConsNfeCOD_NF.AsInteger;

    tempData := formatdatetime( 'yyyy', QConsNfeDATA_EMISSAO_NF.AsDateTime ) + formatdatetime( 'mm', QConsNfeDATA_EMISSAO_NF.AsDateTime );
   { verifica se o arquivo xml da nota existe no caminho especificado }
   sCaminhoXML:= dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +tempdata +'\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
   sCaminhoPDF:= dm.ACBrNFeDANFERave1.PathPDF + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '.pdf';

   if not FileExists(sCaminhoXML) then
      begin
         showmessage('XML da NFe não encontrada');
         exit;
      end;

   if not FileExists(sCaminhoPDF) then
      begin
         showmessage('PDF da NFe não encontrada');
         exit;
      end;

   { verifica se existe email cadastrado no cliente ou fornecedor }
   if not (QConsNfeCOD_CLI.IsNull) then
      sEmail:= trim(DM.RetornaStringTabela('email_cli', 'cliente', 'cod_cli', QConsNfeCOD_CLI.AsInteger))
   else
      if not (QConsNfeCOD_FOR.IsNull) then
         sEmail:= trim(DM.RetornaStringTabela('email_for', 'fornecedor', 'cod_for', QConsNfeCOD_FOR.AsInteger))
      else
         sEmail:= '';  

   Application.CreateForm(TFrmSendEmail, FrmSendEmail);
   FrmSendEmail.EdtPara.Text:= sEmail;
   FrmSendEmail.LbAnexos.Items.Add(sCaminhoXML);
   FrmSendEmail.LbAnexos.Items.Add(sCaminhoPDF);
   FrmSendEmail.ShowModal;

   BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnImprimirClick(Sender: TObject);
var sCaminhoArquivo : string;
tempdata: string;
begin
   { verifica se a nota foi transmitida e tem protocolo e chave }
   if trim(QConsNfeSTATUS_TRANSMITIDA.AsString) = 'N' then
      begin
         showmessage('NFe não transmitida');
         exit;
      end;

   if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem chave de acesso');
         exit;
      end;

   if trim(QConsNfePROTOCOLO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem protocolo');
         exit;
      end;
    tempData := formatdatetime( 'yyyy', QConsNfeDATA_EMISSAO_NF.AsDateTime ) + formatdatetime( 'mm', QConsNfeDATA_EMISSAO_NF.AsDateTime );
   { verifica se o arquivo xml da nota existe no caminho especificado }
   sCaminhoArquivo:= dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +tempdata + '\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

   if not FileExists(sCaminhoArquivo) then
      begin
         showmessage('NFe não encontrada');
         exit;
      end;

   dm.ACBrNFe1.NotasFiscais.Clear;
   dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);

   if dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
      begin
         dm.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := dm.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
         dm.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
         dm.ACBrNFe1.DANFE.ProtocoloNFe := dm.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(dm.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
      end;
   dm.ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure TFrmGerenciamentoNFe.BtnInutilizarClick(Sender: TObject);
var sModelo, sSerie, sAno, sNumeroInicial, sNumeroFinal : String;
    sCNPJ : string;
begin
   sCNPJ   := RetiraCaracter(dm.RetornaStringTabela('cnpj_emp', 'empresa', 'cod_emp', iEmp));
   sModelo := '55';

   if not(InputQuery('WebServices Inutilização ', 'Ano',    sAno)) then
      exit;
   if not(InputQuery('WebServices Inutilização ', 'Serie',  sSerie)) then
      exit;
   if not(InputQuery('WebServices Inutilização ', 'Número Inicial', sNumeroInicial)) then
      exit;
   if not(InputQuery('WebServices Inutilização ', 'Número Inicial', sNumeroFinal)) then
      exit;
   if not(InputQuery('WebServices Inutilização ', 'Justificativa', sJustifNFe)) then
      exit;

   iCodigoNfe:= QConsNfeCOD_NF.AsInteger;

  dm.ACBrNFe1.WebServices.Inutiliza(sCNPJ, sJustifNFe, StrToInt(sAno), StrToInt(sModelo), StrToInt(sSerie), StrToInt(sNumeroInicial), StrToInt(sNumeroFinal));
  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnCancelamentoClick(Sender: TObject);
var sCaminhoArquivo : string;
tempdata:string;
begin
   { verifica se a nota foi transmitida e tem protocolo e chave }
   if trim(QConsNfeSTATUS_TRANSMITIDA.AsString) = 'N' then
      begin
         showmessage('NFe não transmitida');
         exit;
      end;

   if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
      begin
         showmessage('NFe Cancelada');
         exit;
      end;

   if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem chave de acesso');
         exit;
      end;

   if trim(QConsNfePROTOCOLO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem protocolo');
         exit;
      end;

   iCodigoNfe:= QConsNfeCOD_NF.AsInteger;
   tempData := formatdatetime( 'yyyy', QConsNfeDATA_EMISSAO_NF.AsDateTime ) + formatdatetime( 'mm', QConsNfeDATA_EMISSAO_NF.AsDateTime );
   { verifica se o arquivo xml da nota existe no caminho especificado }
   sCaminhoArquivo:= dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe+ '\' +tempdata + '\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

   if not FileExists(sCaminhoArquivo) then
      begin
         showmessage('NFe não encontrada');
         exit;
      end;

   dm.ACBrNFe1.NotasFiscais.Clear;
   dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);

   if not (InputQuery('WebServices Cancelamento', 'Justificativa', sJustifNFe)) then
      exit;

   dm.ACBrNFe1.Cancelamento(sJustifNFe);
   //ShowMessage(IntToStr(dm.ACBrNFe1.WebServices.Cancelamento.cStat));
   //ShowMessage(dm.ACBrNFe1.WebServices.Cancelamento.Protocolo);
   BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnConsultaNFeClick(Sender: TObject);
var sCaminhoArquivo : string;
tempdata: string;
begin
   { verifica se a nota foi transmitida e tem protocolo e chave }
   if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem chave de acesso');
         exit;
      end;

   if trim(QConsNfePROTOCOLO_NFE.AsString) = '' then
      begin
         showmessage('NFe sem protocolo');
         exit;
      end;

   { verifica se o arquivo xml da nota existe no caminho especificado }
   tempData := formatdatetime( 'yyyy', QConsNfeDATA_EMISSAO_NF.AsDateTime ) + formatdatetime( 'mm', QConsNfeDATA_EMISSAO_NF.AsDateTime );
   sCaminhoArquivo:= dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +tempdata +'\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

   if not FileExists(sCaminhoArquivo) then
      begin
         showmessage('NFe não encontrada');
         exit;
      end;

   dm.ACBrNFe1.NotasFiscais.Clear;
   //dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);
   dm.ACBrNFe1.WebServices.Consulta.NFeChave:= trim(QConsNfeCHAVE_ACESSO_NFE.AsString);
   dm.ACBrNFe1.WebServices.Consulta.Executar;
   showmessage(dm.ACBrNFe1.WebServices.Consulta.XMotivo);
end;

procedure TFrmGerenciamentoNFe.BtnEnviarClick(Sender: TObject);
begin
   iCodigoNfe:=QConsNfeCOD_NF.AsInteger;
   NotaFiscalEletronica( QConsNfeCOD_NF.AsInteger );
end;

end.

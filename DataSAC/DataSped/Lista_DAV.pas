unit Lista_DAV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DB, MemDS, DBAccess, IBC;

type
  TfrmLista_DAV = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    query: TIBCQuery;
    GroupBox1: TGroupBox;
    rb_gerencial: TRadioButton;
    rb_arquivo: TRadioButton;
    qrDAV: TIBCQuery;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rb_gerencialKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLista_DAV: TfrmLista_DAV;

implementation

  uses modulo, principal, funcoes, unECF, msg_Operador, Constantes;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.bt_okClick(Sender: TObject);
var
  txt: textfile;
  sNOme_arquivo: string;
  iqtde: INTEGER;
  rtotal: real;

begin
  // testando a conexao com o servidor
  try
    frmModulo.Conexao_Servidor.Connected := false;
    frmModulo.Conexao_Servidor.Connected := true;
    bServidor_Conexao := true;
  except
    bServidor_Conexao := false;
  end;

  if rb_arquivo.Checked then
  begin
    frmMsg_operador.lb_msg.Caption := 'Aguarde! Gerando Arquivo de DAVs Emitidos...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    try
      // Inciando a criacao do arquivo
      sNome_Arquivo := 'c:\DATASAC\paf\txt\DAV_Emitidos.txt';
      assignfile(txt, sNOme_arquivo);
      rewrite(txt);
      // Registro D1 - Identificação do Estabelecimento
      //01 D1
      Write(txt,'D1');
      //02 CNPJ do Usuario
      write(txt,texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda));
      //03 IE do usuario
      write(txt,texto_justifica(somenteNumero(sEmpresa_IE),14,' ',taEsquerda));
      //15 IM do Usuario
      write(txt,texto_justifica(somenteNumero(sEmpresa_IM),14,' ',taEsquerda));
      //16 Nome da Desenvolvedora
      writeln(txt,texto_justifica(sEmpresa_Nome,50,' ',taEsquerda));
      // OS emitido pelo ECF
      //Codigos 6000 (7+nº do caixa do ecf);

      qrdav.close;
      qrdav.sql.clear;
      qrdav.sql.add('select * from DAV');
  //      qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
      qrdav.sql.add('where data between :datai and :dataf');
      qrdav.sql.add('order by numero, data');
      qrdav.parambyname('datai').asdatetime := ed_data_ini.Date;
      qrdav.parambyname('dataf').asdatetime := ed_data_fim.Date;
      qrdav.open;

      // rodar os davs emitidos pelo ecf
      iqtde := 0;
      qrDav.first;
      while not qrdav.eof do
      begin
        // Registro D2 - Relação dos Dav Emitidos
        //01 D2
        Write(txt,'D2');
        //02 CNPJ do Usuario
        write(txt,texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda));
        //03 Numero de Serie/Fabricacao
        Write(txt,texto_justifica(sECF_Serial,20,' ',taEsquerda));
        //04 MF Adicional
        write(txt,texto_justifica(sECF_MF_Adicional,1,' ',taEsquerda));
        //05 Tipo de ECF
        write(txt,texto_justifica(sECF_Tipo,7,' ',taEsquerda));
        //06 Marca do ECF
        write(txt,texto_justifica(sECF_Marca,20,' ',taEsquerda));
        //07 Modelo do ECF
        write(txt,texto_justifica(sECF_Modelo,20,' ',taEsquerda));
        (**********DADOS DA TABELA*************)
        //08 COO - 6
        write(txt,texto_justifica(qrDAV.fieldbyname('COO').asstring,6,'0',taDireita));
        //09 DAV - 6
        write(txt,texto_justifica(qrDAV.fieldbyname('NUMERO').asstring,13,'0',taDireita));
        //10 Data - 8 - AAAAMMDD
        write(txt,troca_data(QRDAV.fieldbyname('DATA').asstring));
        //11 TITULO
        write(txt,texto_justifica(qrDAV.fieldbyname('TITULO').asstring,30,' ',taEsquerda));
        //12 Valor
        writeln(txt,texto_justifica(somenteNumero(formatfloat('##########0.00',qrdav.fieldbyname('valor').asfloat)),8,'0',taDireita));
        inc(iqtde);
        qrdav.next;
      end;

      // Registo D9 - Totalização do Arquivo
      //01 Registro D9
      write(txt,'D9');
      //02 CNPJ do Usuario
      write(txt,texto_justifica(somenteNumero(sEmpresa_CNPJ),14,' ',taEsquerda));
      //03 IE do usuario
      write(txt,texto_justifica(somenteNumero(sEmpresa_IE),14,' ',taEsquerda));
      //04 Totalizacao de registro D2
      writeln(txt,texto_justifica(inttostr(iqtde),6,'0',taDireita));
      closefile(txt);

      // assinatura digital
      assinatura_digital(snome_arquivo);
    finally
      frmMsg_Operador.Hide;
    end;

    application.MessageBox(pansichar('Arquivo criado com sucesso!'+#13+
                                     'Local: '+snome_arquivo),'Aviso',mb_ok+MB_ICONINFORMATION);
  END
  else
  begin
    frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Relatório de DAVs Emitidos...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    try

    // impressao em relatorio gerencial
    repeat
      // COO

      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'DAV EMITIDOS');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);

      if sMsg <> OK then
      begin
        frmMsg_Operador.Hide;

        if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',
                                            mb_yesno+mb_iconerror ) = idno
        then
        begin
          break;
        end;

        frmMsg_Operador.Show;
      end
      else
      begin
        // extrair GNF E GRG

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;

    if sMsg = OK then
    begin
      repeat
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Numero        Data       Titulo         Valor-R$');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;
          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;
      until sMsg = OK;
    end;

    // davs emitidos pelo ecf
    if sMsg = OK then
    begin
      qrdav.close;
      qrdav.sql.clear;
      qrdav.sql.add('select * from DAV');
//        qrdav.sql.add('where ECF = '''+sECF_Serial+'''');
      qrdav.sql.add('WHERE data between :datai and :dataf');
      qrdav.sql.add('order by numero, data');
      qrdav.parambyname('datai').asdatetime := ed_data_ini.Date;
      qrdav.parambyname('dataf').asdatetime := ed_data_fim.Date;
      qrdav.open;
      // rodar os davs emitidos pelo ecf
      iqtde := 0;
      rtotal := 0;

      qrDav.first;

      while not qrdav.eof do
      begin
        repeat
          SMsg := cECF_Usa_Gerencial(iECF_Modelo,
          {Numero } texto_justifica(qrDAV.fieldbyname('NUMERO').asstring,13,'0',taDireita)+' '+
          {Emissao} texto_justifica(qrDAV.fieldbyname('data').asstring,10,' ',taEsquerda)+' '+
          {titulo } texto_justifica(qrDAV.fieldbyname('titulo').asstring,13,' ',taEsquerda)+'  '+
          {Valor  } texto_justifica(formatfloat('###,###,##0.00',qrdav.fieldbyname('valor').asfloat),8,' ',taDireita));

          if sMsg <> OK then
          begin
            frmMsg_Operador.Hide;

            if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
            begin
              break;
            end;

            frmMsg_Operador.Show;
          end
          else
          begin
            inc(iqtde);
            rtotal := rtotal + qrdav.FieldByName('valor').asfloat;
            qrdav.next;
          end;
        until sMsg = OK;
      end;
    end;

    if sMsg = OK then
    begin
      repeat
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Qtde: '+Zerar(inttostr(iqtde),6)+
                '                     Total: '+
                texto_justifica(formatfloat('###,###,##0.00',rtotal),8,' ',taDireita));
        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Show;
        end;

      until sMsg = OK;
    end;

    if sMsg = OK then
    begin
      repeat
        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);

        if sMsg <> OK then
        begin
          frmMsg_Operador.Hide;

          if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;

          frmMsg_Operador.Hide;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;

        end;
      until sMsg = OK;
    end;

    finally
      frmMsg_Operador.Hide;
    end;
  end;

  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.ed_data_iniKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.FormShow(Sender: TObject);
begin
  ed_data_ini.Date := dData_Sistema;
  ed_data_fim.Date := dData_Sistema;
  rb_Gerencial.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLista_DAV.rb_gerencialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(wm_nextdlgctl,0,0);
end;

end.

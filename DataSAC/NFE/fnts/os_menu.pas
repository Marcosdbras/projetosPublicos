unit os_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Buttons, Mask, rxtooledit,
  TFlatPanelUnit, Wwkeycb, Menus, Grids, Wwdbigrd, Wwdbgrid, ImgList, DB,
  AdvGlowButton, RzEdit, RzBtnEdt, AdvMenus, AdvMenuStylers, AdvToolBar,
  AdvShapeButton, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmOs_menu = class(TForm)
    dsos: TDataSource;
    ImageList1: TImageList;
    wwDBGrid1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    LocalizarNmero1: TMenuItem;
    Relatrios2: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ecliente: TRzButtonEdit;
    dateedit1: TDateEdit;
    dateedit2: TDateEdit;
    bfiltrar: TAdvGlowButton;
    combosituacao: TComboBox;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    Bevel3: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    loc: TwwIncrementalSearch;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label1: TLabel;
    Bevel4: TBevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    bcupomfiscal: TAdvGlowMenuButton;
    Bevel5: TBevel;
    qrcliente2: TZQuery;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    bperiodico: TAdvGlowButton;
    qros_servico: TZQuery;
    qros_servicoCODSERVICO: TStringField;
    qros_servicoSERVICO: TStringField;
    qros_servicoCOMPLEMENTO: TStringField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCODTECNICO: TStringField;
    qros_servicoTECNICO: TStringField;
    qros_servicoDATA: TDateTimeField;
    qros_servicoCODOS: TStringField;
    qros_servicoCODCLIENTE: TStringField;
    Excluir1: TMenuItem;
    bExcluir: TAdvGlowButton;
    bRelatorio: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure LocalizarNmero1Click(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure wwIncrementalSearch1Enter(Sender: TObject);
    procedure dateedit2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure LMDButton1Click(Sender: TObject);
    procedure dateedit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bperiodicoClick(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOs_menu: TfrmOs_menu;

implementation

uses modulo, principal, os, os_auto,
  xloc_cliente, os_servicosperiodicos, lista_os;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  FRMMODULO.QRCLIENTE.OPEN;


  FRMMODULO.QRSERVICO.CLOSE;
  FRMMODULO.QRSERVICO.SQL.CLEAR;
  FRMMODULO.QRSERVICO.SQL.ADD('select * from c000011');
  FRMMODULO.QRSERVICO.OPEN;

  DATEEDIT1.TEXT := '01/01/0001';
  DATEEDIT2.TEXT := '01/01/9999';

  ecliente.text := '';
  COMBOSITUACAO.ItemIndex := 0;

  FRMMODULO.QRos.Close;
  FRMMODULO.QRos.SQL.CLEAR;
  FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODIGO');
  frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRos.open;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.combosituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN DATEEDIT1.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.ECLIENTEKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
      qrcliente2.close;
      qrcliente2.sql.Clear;
      qrcliente2.sql.add('select * from c000007 where codigo = '''+frmprincipal.zerarcodigo(copy(ecliente.Text,1,6),6)+'''');
      qrcliente2.Open;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
          combosituacao.SetFocus;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
              combosituacao.SetFocus;

          end;
        end;
      end
      else
      begin
        application.messagebox('Cliente não encontrado!','Atenção',mb_ok+mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            combosituacao.SetFocus;

        end;
      end;
    end
    else
      eclienteButtonClick(FRMOS_MENU);

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  IF DATEEDIT1.Text = '  /  /    ' THEN DATEEDIT1.DATE := DATE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
    IF DATEEDIT2.Text = '  /  /    ' THEN DATEEDIT2.DATE := DATE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bincluirClick(Sender: TObject);
begin
  frmmodulo.qros.insert;
  frmmodulo.qros.fieldbyname('codigo').asstring       := frmprincipal.codifica('000051');
  frmmodulo.qros.FieldByName('data').asdatetime       := date;
  frmmodulo.qros.FieldByName('situacao').asstring     := 'ABERTA - Aguardando Confirmação';
  frmmodulo.qros.FieldByName('cupomfiscal').asinteger := 0;
  frmmodulo.qros.FieldByName('TIPO').asSTRING         := 'INTERNA';
  frmmodulo.qros.FieldByName('ATENDIMENTO').asSTRING  := 'AVULSO';
  cupom_fiscal := false;
  lancando_contasreceber := false;

  if ramo = 1 then frmos := tfrmos.create(self);
  if ramo = 3 then frmos_auto := tfrmos_auto.create(self);
  if ramo = 1 then frmos.showmodal;
  if ramo = 3 then frmos_auto.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.locKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN WWDBGRID1.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.LocalizarNmero1Click(Sender: TObject);
begin
  loc.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.balterarClick(Sender: TObject);
begin
  if frmmodulo.qros.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    Application.MessageBox('Esta Ordem de Serviço está fechada! Impossível alterá-la','Atenção',mb_ok+MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end
  else
  begin
    cupom_fiscal := false;
    if ramo = 1 then
    begin
      frmos := tfrmos.create(self);
      frmmodulo.qros.edit;
      frmos.ShowModal;
    end;

    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      frmmodulo.qros.edit;
      frmos_auto.ShowModal;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.Filtro1Click(Sender: TObject);
begin
  dateedit1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1DblClick(Sender: TObject);
begin
    if frmmodulo.qros.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    if ramo = 1 then
    begin
      frmmodulo.qros.edit;
      frmos := tfrmos.create(self);
      FRMOS.BGRAVAR.VISIBLE := FALSE;
      FRMOS.BCANCELAR.CAPTION := 'Fechar';
      frmos.ShowModal;
    end
    else
    if ramo = 3 then
    begin
      frmmodulo.qros.edit;
      frmos_AUTO := tfrmos_AUTO.create(self);
      FRMOS_AUTO.BGRAVAR.VISIBLE := FALSE;
      FRMOS_AUTO.BCANCELAR.CAPTION := 'Fechar';
      frmos_AUTO.ShowModal;
    end;
  end
  else
  begin
    if ramo = 1 then
    begin
      frmos := tfrmos.create(self);
      frmmodulo.qros.edit;
      frmos.ShowModal;
    end
    else
    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      frmmodulo.qros.edit;
      frmos_auto.ShowModal;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then wwDBGrid1DblClick(frmos_menu);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.locEnter(Sender: TObject);
begin
  FRMMODULO.QROS.INDEXFIELDNAMES := 'CODIGO';
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwIncrementalSearch1Enter(Sender: TObject);
begin
  FRMMODULO.QROS.INDEXFIELDNAMES := 'SERIAL';
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.dateedit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        combosituacao.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bfiltrarClick(Sender: TObject);
begin
  FRMMODULO.QRos.Close;
  FRMMODULO.QRos.SQL.CLEAR;
  if combosituacao.text = 'TODAS' then
  begin
    if ecliente.text = '' then
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
    else
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODIGO');
  end
  else
  begin
    if ecliente.text = '' then
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODIGO')
    else
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODIGO');
  end;

  frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRos.open;

  wwdbgrid1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.LMDButton1Click(Sender: TObject);
begin
  frmos_servicosperiodicos := tfrmos_servicosperiodicos.create(self);
  frmos_servicosperiodicos.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.dateedit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
  var fornecedor, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('codigo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('numero_cupom_fiscal'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('conclusao_data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serial'))then

   begin
     FRMMODULO.QRos.Close;
     FRMMODULO.QRos.SQL.CLEAR;
     if combosituacao.text = 'TODAS' then
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER by '+afieldname);
     end
     else
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY '+afieldname)
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY '+afieldname);
     end;

     frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
     frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     FRMMODULO.QRos.open;
   end;

   if ansiuppercase(afieldname) = 'CLIENTE' then
   begin
     FRMMODULO.QRos.Close;
     FRMMODULO.QRos.SQL.CLEAR;
     if combosituacao.text = 'TODAS' then
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER by CODCLIENTE');
     end
     else
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODCLIENTE')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODCLIENTE');
     end;

     frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
     frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     FRMMODULO.QRos.open;
   end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bperiodicoClick(Sender: TObject);
var vstatus : string;
begin

   qros_servico.close;
   qros_servico.sql.clear;
   qros_servico.sql.add('select * from c000053 where codos = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'''');
   qros_servico.open;

      frmmodulo.qrservicos_periodicos.close;
      frmmodulo.qrservicos_periodicos.sql.clear;
      frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
      frmmodulo.qrservicos_periodicos.sql.add('codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
      frmmodulo.qrservicos_periodicos.sql.add('serie      = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
      frmmodulo.qrservicos_periodicos.open;
      frmmodulo.qrservicos_periodicos.Last;

      if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
        vstatus := inttostr(strtoint(frmmodulo.qrservicos_periodicos.FieldByName('status').AsString)+1)
      else
        vstatus := '1';

      frmmodulo.qrservicos_periodicos.Insert;
      frmmodulo.qrservicos_periodicos.FieldByName('codcliente').AsString  := frmmodulo.qrosCODCLIENTE.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('codservico').AsString  := qros_servicoCODSERVICO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('codtecnico').AsString  := qros_servicoCODTECNICO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('marca').AsString       := frmmodulo.qrosMARCA.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('modelo').AsString      := frmmodulo.qrosMODELO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('serie').AsString       := frmmodulo.qrosSERIAL.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('primeira_manutencao').AsDateTime := frmmodulo.qrosDATA.AsDateTime;
      frmmodulo.qrservicos_periodicos.FieldByName('ultima_manutencao').AsDateTime   := frmmodulo.qrosDATA.AsDateTime;
      frmmodulo.qrservicos_periodicos.FieldByName('periodo').AsInteger    := strtoint(inputbox('Serviços Periódicos','Quantidade de Dias:','30'));

      frmmodulo.qrservicos_periodicos.FieldByName('status').AsString      := vstatus;  // primeira manutenção
      frmmodulo.qrservicos_periodicos.Post;

      frmmodulo.conexao.commit;

      showmessage('Lançado com sucesso!');
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1RowChanged(Sender: TObject);
begin
  if frmmodulo.qros.fieldbyname('st').asinteger = 4 then bperiodico.visible := true else
  bperiodico.visible := false;
end;


procedure TfrmOs_menu.bExcluirClick(Sender: TObject);
var caixa : boolean;
begin

try

            if not frmPrincipal.autentica('Excluir O.S.',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              caixa := true;
              frmmodulo.qrcaixa_operador.open;
              frmmodulo.qrcaixa_operador.Locate('codigo',frmmodulo.qrOS.fieldbyname('codcaixa').asstring,[loCaseInsensitive]);
              if frmmodulo.qros.FieldByName('st').asinteger = 4 then
              begin
                if frmmodulo.qrOS.FieldByName('CONCLUSAO_DATA').asstring <> frmmodulo.qrcaixa_operador.FieldByName('data').asstring then
                begin
                  if application.messagebox('Esta O.S. não foi feita nesta data! Não será possível fazer lançamento no caixa. Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
                  begin
                    caixa := false;
                  end
                  else
                    exit;
                END;
              end;

           IF FRMMODULO.QROS.FieldByName('COMBUSTIVEL').ASSTRING <> 'CAIXA_NAO' THEN
           BEGIN
                if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 4 then
                begin
                  application.messagebox('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!','Atenção',mb_oK+MB_ICONerror);
                  exit;
                end;


                if caixa then
                begin

                (*------lançamento no caixa------*)





                ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT*(-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AV').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 18; // venda em dinheiro
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;

                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AV').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 20; // venda CHEQUE AV
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 21; // venda CHEQUE AP
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 22; // VENDA CARTAO CRED
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 23; // venda CARTAO DEB
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.qrOS.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.qrOS.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.qrOS.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 19; // venda CREDIARIO
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO O.S. No. '+FRMMODULO.qrOS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.qrOS.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                end;
           END;

                (*------final lancto  caixa------*)


                frmmodulo.qrcontasreceber.Close;
                frmmodulo.qrcontasreceber.SQL.Clear;
                frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrOS.fieldbyname('codigo').asstring+'s''');
                frmmodulo.qrcontasreceber.open;
                frmmodulo.qrcontasreceber.First;
                while frmmodulo.qrcontasreceber.recordcount <> 0 do
                begin
                  frmmodulo.qrcontasreceber_pgto.close;
                  frmmodulo.qrcontasreceber_pgto.SQL.Clear;
                  frmmodulo.qrcontasreceber_pgto.SQL.Add('select * from c000050 where codconta = '''+frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring+'''');
                  frmmodulo.qrcontasreceber_pgto.open;
                  if frmmodulo.qrcontasreceber_pgto.RecordCount > 0 then
                  begin
                    application.MessageBox('Esta venda possue prestações que foram efetuados recebimentos! Impossível continuar com o cancelamento!','Atenção',mb_ok+MB_ICONERROR);
                    frmmodulo.Conexao.Rollback;
                    exit;
                  end;
                  frmmodulo.qrcontasreceber.delete;
                end;

                frmmodulo.qrproduto_mov.close;
                frmmodulo.qrproduto_mov.SQL.Clear;
                frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrOS.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrOS.fieldbyname('codcliente').asstring+''' and movimento = 9');
                frmmodulo.qrproduto_mov.Open;
                frmmodulo.qrproduto_mov.First;
                frmmodulo.qrproduto.open;
                frmmodulo.qrgrade_produto.Open;
                frmmodulo.qrserial_produto.open;
                while frmmodulo.qrproduto_mov.recordcount <> 0 do
                begin
                  if frmmodulo.qrproduto.Locate('codigo',frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring,[loCaseInsensitive]) then
                  begin

                          // grade
                          if frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString <> '' then
                          begin
                            if frmmodulo.qrgrade_produto.Locate('codigo',frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString,[loCaseInsensitive]) then
                            begin
                              frmmodulo.qrgrade_produto.edit;
                              frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat + frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
                              frmmodulo.qrgrade_produto.post;
                            end;
                          end
                          else
                          begin  // serial
                            if frmmodulo.qrproduto_mov.FieldByName('serial').AsString <> '' then
                            begin
                              if frmmodulo.qrserial_produto.Locate('serial',frmmodulo.qrproduto_mov.FieldByName('serial').AsString,[loCaseInsensitive]) then
                              begin
                                frmmodulo.qrserial_produto.edit;
                                frmmodulo.qrserial_produto.fieldbyname('situacao').asfloat := 1;
                                frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := '';
                                frmmodulo.qrserial_produto.fieldbyname('codcliente').asstring := '';
                                frmmodulo.qrserial_produto.FieldByName('DATAVENDA').ASSTRING := '';
                                frmmodulo.qrserial_produto.fieldbyname('codvenda').asstring := '';
                                frmmodulo.qrserial_produto.fieldbyname('precovenda').asstring := '';
                                frmmodulo.qrserial_produto.post;
                              end;
                            end;
                          end;


                  end;
                  frmmodulo.qrproduto_mov.delete;
                end;

                frmmodulo.qrOS.Delete;
                frmmodulo.Conexao.Commit;
            end;
  except
    showmessage('A operação gerou erros! O processamento foi interrompido.');
    frmmodulo.Conexao.Rollback;
  end;

end;


procedure TfrmOs_menu.bRelatorioClick(Sender: TObject);
begin
  frmlista_os := tfrmlista_os.create(self);
  frmlista_os.show;
end;

end.

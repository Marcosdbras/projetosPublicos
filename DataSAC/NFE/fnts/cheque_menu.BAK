unit cheque_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ToolEdit, StdCtrls,
  Mask, RzEdit, RzBtnEdt, AdvGlowButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, AdvMenus, DBCtrls, RXDBCtrl;

type
  Tfrmcheque_menu = class(TForm)
    Panel3: TPanel;
    Label10: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    bfiltrar: TAdvGlowButton;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    dscheque: TDataSource;
    qrcheque: TZQuery;
    Bevel2: TBevel;
    qrchequeCODIGO: TStringField;
    qrchequeEMISSAO: TDateTimeField;
    qrchequeVENCIMENTO: TDateTimeField;
    qrchequeDATA_DEPOSITO1: TDateTimeField;
    qrchequeDATA_DEPOSITO2: TDateTimeField;
    qrchequeDATA_DEVOLUCAO1: TDateTimeField;
    qrchequeDATA_DEVOLUCAO2: TDateTimeField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TStringField;
    qrchequeTITULAR: TStringField;
    qrchequeCODBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA: TStringField;
    qrchequeDATA_CONTA: TDateTimeField;
    qrchequeNUMERO: TStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TStringField;
    qrchequeOBS1: TStringField;
    qrchequeOBS2: TStringField;
    qrchequeCODCONTAS_PAGAR: TStringField;
    qrchequeDESTINO: TStringField;
    qrchequeDATA_BAIXA: TDateTimeField;
    qrchequecliente: TStringField;
    qrchequeBANCO: TStringField;
    qrchequeCODCONTA_CORRENTE: TStringField;
    qrchequeCODCONTA: TStringField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bbaixar: TAdvGlowButton;
    pop_usuario: TAdvPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Baixar1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Localizar1: TMenuItem;
    Label3: TLabel;
    combo_situacao: TComboBox;
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
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    Bevel4: TBevel;
    btotaliza_cheque: TButton;
    qrchequesituacaoa: TStringField;
    Panel4: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit5: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBDateEdit2: TDBDateEdit;
    Bevel3: TBevel;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bbaixarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure btotaliza_chequeClick(Sender: TObject);
    procedure qrchequeCalcFields(DataSet: TDataSet);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_menu: Tfrmcheque_menu;

implementation

uses modulo, principal, xloc_cliente, cheque, Cheque_baixa, lista_cheque2;

{$R *.dfm}

procedure Tfrmcheque_menu.bincluirClick(Sender: TObject);
begin
  CHEQUE_CODCLIENTE := '';
  CHEQUE_VENDA := '';

  qrcheque.insert;
  qrcheque.FIELDBYNAME('CODCLIENTE').ASSTRING := CHEQUE_CODCLIENTE;
  qrcheque.FIELDBYNAME('CODVENDA').ASSTRING := CHEQUE_VENDA;
  qrcheque.fieldbyname('codigo').asstring := frmprincipal.codifica('000040');
  qrcheque.FIELDBYNAME('SITUACAO').ASSTRING := '1';


  frmcheque := tfrmcheque.create(self);
  frmcheque.showmodal;

  bfiltrarClick(frmcheque_menu);


end;

procedure Tfrmcheque_menu.balterarClick(Sender: TObject);
begin
  IF qrcheque.RecordCount > 0  THEN
  BEGIN
    qrcheque.Edit;
    frmcheque := tfrmcheque.create(self);
    frmcheque.showmodal;
    bfiltrarClick(frmcheque_menu);
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

procedure Tfrmcheque_menu.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cheque',4) then
  begin
    qrcheque.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcheque_menu.blocalizarClick(Sender: TObject);
begin
//
end;

procedure Tfrmcheque_menu.bbaixarClick(Sender: TObject);
begin
  if frmprincipal.autentica('Baixar cheque',4) then
  begin
      qrcheque.Edit;
      frmcheque_baixa := tfrmcheque_baixa.create(self);
      frmcheque_baixa.showmodal;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcheque_menu.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_CHEQUE2 := TFRMLISTA_CHEQUE2.CREATE(SELF);
  FRMLISTA_CHEQUE2.SHOWMODAL;
end;

procedure Tfrmcheque_menu.bfecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcheque_menu.Localizar1Click(Sender: TObject);
begin
  ecliente.setfocus;
end;

procedure Tfrmcheque_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque_menu.eclienteEnter(Sender: TObject);
begin
     ecliente.Text := '';
end;

procedure Tfrmcheque_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  ecliente.text;
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        enumero.setfocus;
end;

procedure Tfrmcheque_menu.eclienteKeyPress(Sender: TObject; var Key: Char);
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
        perform(wm_nextdlgctl,0,0);
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
          perform(wm_nextdlgctl,0,0);
        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado! Favor verificar!','Atenção',mb_ok+mb_iconerror);
      ecliente.setfocus;

    end;
    end
    else
      perform(wm_nextdlgctl,0,0);
  end;

end;

procedure Tfrmcheque_menu.FormShow(Sender: TObject);
begin
  bfiltrarclick(frmcheque_menu);
end;

procedure Tfrmcheque_menu.bfiltrarClick(Sender: TObject);
var cliente, cheque, situacao : string;
begin
  if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
  if (enumero.text = '000000') or (enumero.text = '') then cheque := '' else cheque := ' and numero = '''+enumero.text+'''';


  if combo_situacao.itemindex = 0 then situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao > 1 ';
  if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 3 then situacao := ' and situacao = 3 ';
  if combo_situacao.itemindex = 4 then situacao := ' and situacao = 4 ';
  if combo_situacao.itemindex = 5 then situacao := ' and situacao = 5 ';
  if combo_situacao.itemindex = 6 then situacao := ' and situacao = 6 ';
  if combo_situacao.itemindex = 7 then situacao := ' and situacao = 7 ';
  if combo_situacao.itemindex = 8 then situacao := ' and situacao = 8 ';
  if combo_situacao.itemindex = 9 then situacao := ' and situacao = 9 ';
  if combo_situacao.itemindex = 10 then situacao := '';


  qrcheque.close;
  qrcheque.sql.clear;
  qrcheque.SQL.add('select * from c000040 where vencimento BETWEEN :datai and :dataf '+cliente+cheque+situacao+' order by vencimento');
  qrcheque.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrcheque.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrcheque.open;

  rqde.Value   := qrcheque.RecordCount;

  btotaliza_chequeClick(frmcheque_menu);
end;

procedure Tfrmcheque_menu.btotaliza_chequeClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dscheque.DataSet := nil;
  qrcheque.first;
  while not qrcheque.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrcheque.fieldbyname('valor').asfloat;

    qrcheque.next;
  end;
  dscheque.DataSet := qrcheque;
end;

procedure Tfrmcheque_menu.qrchequeCalcFields(DataSet: TDataSet);
begin
  if qrchequesituacao.AsInteger = 1 then
     qrchequesituacaoa.asstring := 'Ativo' else
     qrchequesituacaoa.asstring := 'Baixado' ;

end;

procedure Tfrmcheque_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dateedit1.setfocus;
end;

procedure Tfrmcheque_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcheque_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then combo_situacao.setfocus;
end;

procedure Tfrmcheque_menu.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

end.

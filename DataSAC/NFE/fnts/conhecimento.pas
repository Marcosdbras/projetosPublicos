unit conhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Collection, Buttons, rxtooledit, RXDBCtrl,
  Mask, ExtCtrls, TFlatPanelUnit, PageView, wwdblook, DB, Menus, wwdbedit,
  Wwdotdot, Wwdbcomb, RzEdit, RzDBEdit, RzDBBnEd, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton;

type
  Tfrmconhecimento = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label4: TLabel;
    edata_cadastro: TDBDateEdit;
    DBEdit21: TDBEdit;
    enomefilial: TDBEdit;
    Label17: TLabel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    Label3: TLabel;
    COMBOCARGA: TwwDBLookupCombo;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Bevel1: TBevel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Bevel2: TBevel;
    Label24: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    DBEdit26: TDBEdit;
    Label26: TLabel;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    Label28: TLabel;
    DBEdit29: TDBEdit;
    eveiculo: TDBEdit;
    blocveiculo: TBitBtn;
    DBEdit31: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit32: TDBEdit;
    Label31: TLabel;
    DBEdit33: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label32: TLabel;
    etransportador: TDBEdit;
    DBEdit35: TDBEdit;
    bloctransportador: TBitBtn;
    Label34: TLabel;
    DBEdit36: TDBEdit;
    Label35: TLabel;
    DBEdit37: TDBEdit;
    Label36: TLabel;
    DBEdit38: TDBEdit;
    Label37: TLabel;
    DBEdit39: TDBEdit;
    Label38: TLabel;
    Label40: TLabel;
    DBEdit41: TDBEdit;
    Label41: TLabel;
    DBEdit42: TDBEdit;
    Label42: TLabel;
    DBEdit43: TDBEdit;
    Label43: TLabel;
    DBEdit44: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit45: TDBEdit;
    DBMemo1: TDBMemo;
    dsconhecimento: TDataSource;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    CancelarNF1: TMenuItem;
    Localizar1: TMenuItem;
    Imprimir1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    Finalizar1: TMenuItem;
    DBEdit40: TDBEdit;
    Label39: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    DBCOMBOBOX2: TwwDBComboBox;
    DBCOMBOBOX4: TwwDBComboBox;
    Label50: TLabel;
    qrmodelo: TZQuery;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    Label52: TLabel;
    DBEdit1: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bitbtn8: TAdvGlowButton;
    BCANCELARNF: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    Bevel7: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    BCANCELAR: TAdvGlowButton;
    pcancel: THeaderView;
    DBText2: TDBText;
    Label33: TLabel;
    efilial: TRzDBButtonEdit;
    ecfop: TRzDBButtonEdit;
    Label53: TLabel;
    ecliente: TRzDBButtonEdit;
    DBEdit23: TDBEdit;
    edestinatario: TRzDBButtonEdit;
    DBEdit14: TDBEdit;
    Label54: TLabel;
    Bevel3: TBevel;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    ecodmodelo: TRzDBButtonEdit;
    DBEdit34: TDBEdit;
    Label51: TLabel;
    eserie: TDBEdit;
    Label5: TLabel;
    Label55: TLabel;
    DBEdit24: TDBEdit;
    Label2: TLabel;
    Bevel4: TBevel;
    Shape1: TShape;
    Shape2: TShape;
    Label9: TLabel;
    Shape3: TShape;
    Label56: TLabel;
    Label49: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    ___nf: TDBEdit;
    edata_nf: TDBDateEdit;
    emodelo_nf: TDBEdit;
    DBEdit4: TDBEdit;
    evalor_nf: TDBEdit;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    DBEdit3: TDBEdit;
    Shape12: TShape;
    Shape13: TShape;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit5: TDBEdit;
    Shape14: TShape;
    Label6: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Label8: TLabel;
    Label59: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Shape18: TShape;
    Label10: TLabel;
    Shape19: TShape;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBEdit49: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bcancelarnfClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure efilialExit(Sender: TObject);
    procedure efilialEnter(Sender: TObject);
    procedure efilialKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopExit(Sender: TObject);
    procedure ecfopEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure ___nfEnter(Sender: TObject);
    procedure ___nfExit(Sender: TObject);
    procedure ___nfKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure EDESTINATARIOExit(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure blocveiculoClick(Sender: TObject);
    procedure eveiculoExit(Sender: TObject);
    procedure bloctransportadorClick(Sender: TObject);
    procedure etransportadorExit(Sender: TObject);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure edata_nfEnter(Sender: TObject);
    procedure evalor_nfExit(Sender: TObject);
    procedure emodelo_nfExit(Sender: TObject);
    procedure efilialButtonClick(Sender: TObject);
    procedure ecfopButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure edestinatarioButtonClick(Sender: TObject);
    procedure DBCOMBOBOX2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50Exit(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconhecimento: Tfrmconhecimento;

implementation

uses modulo, principal, loc_cfop, loc_filial, loc_cliente, loc_veiculo,
  loc_transportador, relnf, loc_conhecimento, conhecimento_impressao,
  xloc_modelo, compra, lista_conhecimento;

{$R *.dfm}

procedure Tfrmconhecimento.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrconhecimento.insert;
  frmmodulo.qrconhecimento.fieldbyname('codigo').asstring := frmprincipal.codifica('000068');
  pficha.Enabled := true;

  efilial.setfocus;
  pgravar.Visible := true;


  PopupMenu := pop2;
end;

procedure Tfrmconhecimento.balterarClick(Sender: TObject);
begin
  IF dbedit2.Text <> '' THEN
  BEGIN

     frmmodulo.qrcfop.Locate('cfop',frmmodulo.qrconhecimento.fieldbyname('cfop').asstring,[loCaseInsensitive]);



    frmmodulo.qrconhecimento.Edit;
    pficha.Enabled := true;
    dbedit2.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

procedure Tfrmconhecimento.bexcluirClick(Sender: TObject);
begin
 if frmprincipal.autentica('Excluir NF',4) then
  begin
      frmmodulo.qrconhecimento.Delete;
      frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmconhecimento.bcancelarnfClick(Sender: TObject);
begin
 if frmprincipal.autentica('Cancelar/Ativar',4) then
  begin
    if frmmodulo.qrconhecimento.fieldbyname('situacao').AsInteger = 1 then
    begin
      if application.messagebox('Confirma o cancelamento deste conhecimento?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
      begin
        frmmodulo.qrconhecimento.edit;
        frmmodulo.qrconhecimento.FieldByName('motivo').asstring := inputbox('Cancelar','Informe o motivo do Cancelamento:','');
        frmmodulo.qrconhecimento.fieldbyname('situacao').AsInteger := 2;
        frmmodulo.qrconhecimento.post;
        frmmodulo.Conexao.Commit;
        pcancel.Visible := true;
      end;
    end
    else
    begin
      if application.messagebox('Este conhecimento está CANCELADO! Deseja ativá-lo?','Atenção',mb_yesno+mb_iconquestion) = idyes then
      begin
        frmmodulo.qrconhecimento.edit;
        frmmodulo.qrconhecimento.FieldByName('motivo').asstring := '';
        frmmodulo.qrconhecimento.fieldbyname('situacao').AsInteger := 1;
        frmmodulo.qrconhecimento.post;
        frmmodulo.Conexao.Commit;
        pcancel.Visible := false;
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmconhecimento.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrconhecimento.first;
end;

procedure Tfrmconhecimento.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrconhecimento.prior;
end;

procedure Tfrmconhecimento.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrconhecimento.next;
end;

procedure Tfrmconhecimento.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrconhecimento.last;
end;

procedure Tfrmconhecimento.BitBtn8Click(Sender: TObject);
begin
  frmconhecimento_impressao := tfrmconhecimento_impressao.create(self);
  frmconhecimento_impressao.showmodal;


end;

procedure Tfrmconhecimento.BitBtn6Click(Sender: TObject);
begin
  frmlista_conhecimento := tfrmlista_conhecimento.create(self);
  frmlista_conhecimento.showmodal;
end;

procedure Tfrmconhecimento.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmconhecimento.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
    if ecfop.text = '' then
    begin
      application.messagebox('Favor informar o CFOP!','Erro',mb_ok+mb_iconerror);
      ecfop.setfocus;
      exit;
    end;

    if (dbedit2.text = '') or (dbedit2.text = '000000') then
    begin
      application.messagebox('Favor informar o Número!','Erro',mb_ok+mb_iconerror);
      dbedit2.setfocus;
      exit;
    end;

    if edata_cadastro.text = '  /  /    ' then
    begin
      application.messagebox('Favor informar a data!','Erro',mb_ok+mb_iconerror);
      edata_cadastro.setfocus;
      exit;
    end;


    if ecodmodelo.text = '' then
    begin
      application.messagebox('Favor informar o modelo!','Erro',mb_ok+mb_iconerror);
      ecodmodelo.setfocus;
      exit;
    end;

    if (ecliente.text = '') or (ecliente.text = '000000') then
    begin
      application.messagebox('Favor informar o remetente!','Erro',mb_ok+mb_iconerror);
      ecliente.setfocus;
      exit;
    end;

    if (edestinatario.text = '') or (edestinatario.text = '000000') then
    begin
      application.messagebox('Favor informar o destinatário!','Erro',mb_ok+mb_iconerror);
      edestinatario.setfocus;
      exit;
    end;


    if (frmmodulo.qrconhecimento.State = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
    begin
      if frmmodulo.qrconhecimento.State = dsinsert then
      begin
        frmmodulo.qrconhecimento.FieldByName('situacao').asinteger := 1;
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('CONHECIMENTO').asinteger := frmmodulo.qrfilial.fieldbyname('CONHECIMENTO').asinteger + 1;
        frmmodulo.qrfilial.post;
      end;

      //SHOWMESSAGE(FRMMODULO.qrconhecimentoREDE_TIPO.AsString);

        frmmodulo.qrconhecimento.post;
    end;
    frmmodulo.Conexao.Commit;
    pficha.Enabled := false;
    pgravar.Visible := false;
    PopupMenu := pop1;
    bincluir.setfocus;

//     panel2.Enabled := false;
//     panel1.Enabled := false;
//     panel_item.visible := true;



     PageView1.ActivePageIndex := 0;


     BitBtn8Click(frmconhecimento);


end;

procedure Tfrmconhecimento.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrconhecimento.State = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
      frmmodulo.qrconhecimento.cancel;


  frmmodulo.Conexao.Rollback;

  FRMMODULO.qrconhecimento.Refresh;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


//     panel2.Enabled := false;
//     panel1.Enabled := false;
//     panel_item.visible := true;

   PageView1.ActivePageIndex := 0;


end;

procedure Tfrmconhecimento.efilialExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    if efilial.text <> '' then
    begin
      frmmodulo.qrconhecimento.FieldByName('CODFILIAL').asstring := FRMPRINCIPAL.zerarcodigo(frmmodulo.qrconhecimento.FieldByName('CODFILIAL').asstring,6);

      if not FrmPrincipal.Locregistro(frmmodulo.qrfilial,frmmodulo.qrconhecimento.FieldByName('CODFILIAL').asstring,'codigo') then
      begin
        efilialbuttonclick(frmconhecimento);
      end
      else
      begin

          FRMMODULO.QRCONHECIMENTO.FIELDBYNAME('LOCAL').ASSTRING := FRMMODULO.QRFILIAL.FIELDBYNAME('CIDADE').ASSTRING+'/'+
                                                                    FRMMODULO.QRFILIAL.FIELDBYNAME('UF').ASSTRING;



        if frmmodulo.qrconhecimento.State = dsinsert then
        begin
          frmmodulo.qrconhecimento.FieldByName('numero').asstring :=
          frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('conhecimento').asstring,6);
        end;
        ECFOP.setfocus;
      end;
    end
    else
      efilialbuttonclick(frmconhecimento);
  end;
end;

procedure Tfrmconhecimento.efilialEnter(Sender: TObject);
begin
tedit(sender).Color := $00A8FFFF;
end;

procedure Tfrmconhecimento.efilialKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    if ecfop.text <> '' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop,ecfop.text,'cfop') then ecfopbuttonclick(frmconhecimento)
      else
      BEGIN

        FRMMODULO.qrconhecimento.FieldByName('INF1').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS1').ASSTRING;
        FRMMODULO.qrconhecimento.FieldByName('INF2').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS2').ASSTRING;
        FRMMODULO.qrconhecimento.FieldByName('INF3').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS3').ASSTRING;
        FRMMODULO.qrconhecimento.FieldByName('INF4').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS4').ASSTRING;

        ECLIENTE.setfocus;
      END;
    END
    else
      ecfopButtonClick(frmconhecimento);

  end;
end;

procedure Tfrmconhecimento.ecfopEnter(Sender: TObject);
begin
tedit(sender).Color := $00A8FFFF;
end;

procedure Tfrmconhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconhecimento.FormShow(Sender: TObject);
begin
//  panel_item.top := 194;
//  panel_item.left := 4;


  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.SQL.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 where tipo = 2 order by NATUREZA');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrconhecimento.close;
  frmmodulo.qrconhecimento.SQL.clear;
  frmmodulo.qrconhecimento.SQL.add('select * from c000068 order by numero');
  frmmodulo.qrconhecimento.open;
  frmmodulo.qrconhecimento.last;


  pficha.Enabled := false;
  bincluir.SetFocus;

end;

procedure Tfrmconhecimento.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    frmmodulo.qrconhecimento.fieldbyname('CODREMETENTE').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
      begin
        eclientebuttonclick(frmconhecimento)
      end
      else
      begin
        eDESTINATARIO.SetFocus;
      end;
    end
    else
      eclientebuttonclick(frmconhecimento);
  end;
end;

procedure Tfrmconhecimento.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.eclienteEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmconhecimento.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmconhecimento.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmconhecimento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.edata_cadastroEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A8FFFF;
  if edata_cadastro.text = '  /  /    ' then edata_cadastro.date := date;
end;

procedure Tfrmconhecimento.edata_cadastroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmconhecimento.edata_cadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.___nfEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmconhecimento.___nfExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmconhecimento.___nfKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconhecimento.DBComboBox2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  IF TEDIT(SENDER).Text <> '' THEN
    if tedit(sender).Text <> 'PAGO' then
      if tedit(sender).Text <> 'A PAGAR' THEN
      BEGIN
        Showmessage('Favor informar PAGO ou A PAGAR!');
      END;
end;

procedure Tfrmconhecimento.EDESTINATARIOExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    frmmodulo.qrconhecimento.fieldbyname('CODDESTINATARIO').asstring := frmprincipal.zerarcodigo(EDESTINATARIO.text,6);
    if EDESTINATARIO.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente,EDESTINATARIO.text,'codigo') then
      begin
        edestinatariobuttonclick(frmconhecimento)
      end
      else
      begin
  PAGEVIEW1.ActivePageIndex := 0;
    COMBOCARGA.SETFOCUS;
      end;
    end
    else
     edestinatariobuttonclick(frmconhecimento);
  end;
end;

procedure Tfrmconhecimento.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    PageView1.ActivePageIndex := 1;
    DBEDIT10.SETFOCUS;
  END;  
end;

procedure Tfrmconhecimento.DBEdit11Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  frmmodulo.qrconhecimento.fieldbyname('frete_total').asfloat :=
  frmmodulo.qrconhecimento.fieldbyname('frete_valor').asfloat +
  frmmodulo.qrconhecimento.fieldbyname('frete_adicional').asfloat +
  frmmodulo.qrconhecimento.fieldbyname('frete_seguro').asfloat +
  frmmodulo.qrconhecimento.fieldbyname('frete_despacho').asfloat +
  frmmodulo.qrconhecimento.fieldbyname('frete_outros').asfloat;



end;

procedure Tfrmconhecimento.DBEdit19Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
  if frmmodulo.qrconhecimento.FieldByName('frete_base').asfloat = 0 then
  begin
    frmmodulo.qrconhecimento.FieldByName('frete_base').asfloat :=
    frmmodulo.qrconhecimento.FieldByName('frete_valor').asfloat;

  end;
  TEDIT(SENDER).SELECTALL;
end;

procedure Tfrmconhecimento.DBEdit20Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if frmmodulo.qrconhecimento.FieldByName('frete_aliquota').asinteger <> 0 then
  begin
    frmmodulo.qrconhecimento.FieldByName('frete_icms').asfloat :=
    frmmodulo.qrconhecimento.FieldByName('frete_base').asfloat *
        (frmmodulo.qrconhecimento.FieldByName('frete_aliquota').asfloat / 100);

  end;


end;

procedure Tfrmconhecimento.DBEdit29KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageindex := 2 ;
    eveiculo.setfocus;
  end;
end;

procedure Tfrmconhecimento.blocveiculoClick(Sender: TObject);
begin
  frmloc_veiculo := tfrmloc_veiculo.create(self);
  frmloc_veiculo.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('CODveiCulo').asstring := frmmodulo.qrveiculo.fieldbyname('CODIGO').asstring;
  frmmodulo.qrconhecimento.fieldbyname('VEICULO_UF').asstring := frmmodulo.qrveiculo.fieldbyname('UFPLACA').asstring;
  frmmodulo.qrconhecimento.fieldbyname('VEICULO_LOCAL').asstring := frmmodulo.qrveiculo.fieldbyname('CIDADE').asstring;

  dbedit32.setfocus;
end;

procedure Tfrmconhecimento.eveiculoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    frmmodulo.qrconhecimento.fieldbyname('CODveiculo').asstring := frmprincipal.zerarcodigo(eveiculo.text,6);
    if eveiculo.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrveiculo,eveiculo.text,'codigo') then
      begin
        blocveiculoclick(frmconhecimento)
      end
      else
      begin
        frmmodulo.qrconhecimento.fieldbyname('VEICULO_UF').asstring := frmmodulo.qrveiculo.fieldbyname('UFPLACA').asstring;
        frmmodulo.qrconhecimento.fieldbyname('VEICULO_LOCAL').asstring := frmmodulo.qrveiculo.fieldbyname('CIDADE').asstring;
        dbedit32.SetFocus;
      end;
    end
    else
      blocveiculo.SetFocus;
  end;
end;

procedure Tfrmconhecimento.bloctransportadorClick(Sender: TObject);
begin
  frmloc_transportador := tfrmloc_transportador.create(self);
  frmloc_transportador.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('CODTRANSPORTADOR').asstring := frmmodulo.qrtransportador.fieldbyname('CODIGO').asstring;

  pageview1.ActivePageIndex := 3;
  dbedit36.setfocus;
end;

procedure Tfrmconhecimento.etransportadorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrconhecimento.state = dsinsert) or (frmmodulo.qrconhecimento.State = dsedit) then
  begin
    frmmodulo.qrconhecimento.fieldbyname('CODtransportador').asstring := frmprincipal.zerarcodigo(etransportador.text,6);
    if etransportador.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrtransportador,etransportador.text,'codigo') then
      begin
        bloctransportadorclick(frmconhecimento)
      end
      else
      begin
        pageview1.ActivePageIndex := 3;
        dbedit36.setfocus;
      end;
    end
    else
      bloctransportador.SetFocus;
  end;

end;

procedure Tfrmconhecimento.DBEdit40KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex :=  4;
    dbedit41.SetFocus;
  end;
end;

procedure Tfrmconhecimento.DBComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    pageview1.ActivePageIndex := 5;
    dbmemo1.SetFocus;
  end;
end;

procedure Tfrmconhecimento.DBEdit24Change(Sender: TObject);
begin
  try

   if frmmodulo.qrconhecimento.fieldbyname('situacao').asinteger = 2 then
      pcancel.Visible := true
    else
      pcancel.visible := false;
  except
  end;
end;

procedure Tfrmconhecimento.blocalizarClick(Sender: TObject);
begin
  frmloc_conhecimento := tfrmloc_conhecimento.create(self);
  frmloc_conhecimento.showmodal;
end;

procedure Tfrmconhecimento.DBEdit5Exit(Sender: TObject);
begin
    tedit(sender).color := clwindow;

    frmmodulo.qrconhecimento.FieldByName('FRETE_VALOR').asfloat :=
    frmmodulo.qrconhecimento.FieldByName('CARGA_QTDE').asfloat *
    frmmodulo.qrconhecimento.FieldByName('FRETE_PESO').asfloat;

    frmmodulo.qrconhecimento.fieldbyname('frete_total').asfloat :=
    frmmodulo.qrconhecimento.fieldbyname('frete_valor').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_adicional').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_seguro').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_despacho').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_outros').asfloat;
end;

procedure Tfrmconhecimento.DBEdit10Exit(Sender: TObject);
begin
    tedit(sender).color := clwindow;

    frmmodulo.qrconhecimento.FieldByName('FRETE_VALOR').asfloat :=
    frmmodulo.qrconhecimento.FieldByName('CARGA_QTDE').asfloat *
    frmmodulo.qrconhecimento.FieldByName('FRETE_PESO').asfloat;

    frmmodulo.qrconhecimento.fieldbyname('frete_total').asfloat :=
    frmmodulo.qrconhecimento.fieldbyname('frete_valor').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_adicional').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_seguro').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_despacho').asfloat +
    frmmodulo.qrconhecimento.fieldbyname('frete_outros').asfloat;

end;

procedure Tfrmconhecimento.DBComboBox1Enter(Sender: TObject);
begin
//  IF DBCOMBOBOX1.TEXT = '' THEN
 //   FRMMODULO.qrconhecimento.FieldBYNAME('LOCAL').AsString :=  emitente_cidade;
end;

procedure Tfrmconhecimento.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := '';
  frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;
  if resultado_pesquisa1 <>'' then
  begin

     qrmodelo.close;
     qrmodelo.sql.clear;
     qrmodelo.sql.add('select * from c000082 where sintegra = '''+resultado_pesquisa1+'''');
     qrmodelo.open;
     frmmodulo.qrconhecimento.fieldbyname('modelo').asstring := resultado_pesquisa1;
     frmmodulo.qrconhecimento.fieldbyname('especie').asstring := qrmodelo.fieldbyname('sigla').asstring;
     eSERIE.setfocus;
  end;
end;

procedure Tfrmconhecimento.ecodmodeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrconhecimento.State <> dsedit then if frmmodulo.qrconhecimento.State <> dsinsert then exit;

    frmmodulo.qrconhecimento.fieldbyname('modelo').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,2);
    if tedit(sender).Text <> '00' then
    begin
      qrmodelo.close;
      qrmodelo.sql.clear;
      qrmodelo.sql.add('select * from c000082 where sintegra = '''+ecodmodelo.text+'''');
      qrmodelo.open;

      qrmodelo.close;
      qrmodelo.sql.clear;
      qrmodelo.sql.add('select * from c000082 where sintegra = '''+ecodmodelo.text+'''');
      qrmodelo.open;

      if qrmodelo.recordcount > 0 then
      begin
        frmmodulo.qrconhecimento.fieldbyname('especie').asstring := qrmodelo.fieldbyname('sigla').asstring;
        Perform(wm_nextdlgctl,0,0);
        eserie.SetFocus;
      end
      else
      begin
        application.messagebox('Modelo não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodmodelo.setfocus;
      end;

    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
    end;
  end;

end;

procedure Tfrmconhecimento.edata_nfEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A8FFFF;
  if edata_nf.text = '  /  /    ' then edata_nf.date := date;

end;

procedure Tfrmconhecimento.evalor_nfExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmmodulo.qrconhecimento.FieldByName('valor_conhecimento').AsFloat = 0 then
    begin
      Application.messagebox('Não Informado o Valor da Nota Fiscal, Verifique!','Conecimento!',mb_ok+MB_ICONWARNING);
      evalor_nf.SetFocus;
      exit;
    end;
end;

procedure Tfrmconhecimento.emodelo_nfExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmmodulo.qrconhecimento.FieldByName('modelo_nf').AsString = '' then
    begin
      Application.messagebox('Não Informado o  Modelo da Nota Fiscal, Verifique!','Conecimento!',mb_ok+MB_ICONWARNING);
      emodelo_nf.SetFocus;
      exit;
    end;

end;

procedure Tfrmconhecimento.efilialButtonClick(Sender: TObject);
begin
  frmloc_filial := tfrmloc_filial.create(self);
  frmloc_filial.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('codfilial').asstring := frmmodulo.qrfilial.fieldbyname('codigo').asstring;

    FRMMODULO.QRCONHECIMENTO.FIELDBYNAME('LOCAL').ASSTRING := FRMMODULO.QRFILIAL.FIELDBYNAME('CIDADE').ASSTRING+'/'+
                                                              FRMMODULO.QRFILIAL.FIELDBYNAME('UF').ASSTRING;

  if frmmodulo.qrconhecimento.State = dsinsert then
  begin
    frmmodulo.qrconhecimento.FieldByName('numero').asstring :=
    frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('CONHECIMENTO').asstring,6);

  end;
  ECFOP.setfocus;
end;

procedure Tfrmconhecimento.ecfopButtonClick(Sender: TObject);
begin
  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;
  ECLIENTE.setfocus;
end;

procedure Tfrmconhecimento.eclienteButtonClick(Sender: TObject);
begin
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('CODREMETENTE').asstring := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
  eDESTINATARIO.setfocus;
end;

procedure Tfrmconhecimento.edestinatarioButtonClick(Sender: TObject);
begin
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;
  frmmodulo.qrconhecimento.fieldbyname('CODDESTINATARIO').asstring := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;

end;

procedure Tfrmconhecimento.DBCOMBOBOX2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
  PAGEVIEW1.ActivePageIndex := 0;
    COMBOCARGA.SETFOCUS;
  END;
end;

procedure Tfrmconhecimento.DBEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmconhecimento.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmconhecimento.DBEdit48KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmconhecimento.DBEdit50Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmconhecimento.DBEdit52Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

end.

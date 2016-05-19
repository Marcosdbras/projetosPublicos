unit empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdatsrc,
  RzEdit, RzDBEdit, RzCmboBx, RzDBCmbo, AdvGlowButton, wwdbedit, Wwdotdot,
  Wwdbcomb;

type
  Tfrmempresa = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsempresa2: TDataSource;
    Relatrios1: TMenuItem;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    eddesdobra: TRzDBComboBox;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox3: TRzDBComboBox;
    RzDBEdit1: TRzDBEdit;
    RzDBComboBox4: TRzDBComboBox;
    RzDBComboBox5: TRzDBComboBox;
    RzDBEdit2: TRzDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Bevel2: TBevel;
    FlatPanel1: TFlatPanel;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    euf: TwwDBComboBox;
    Label30: TLabel;
    ecnae: TDBEdit;
    bcnae: TAdvGlowButton;
    DBEdit7: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    rAtividade: TRzDBComboBox;
    Label29: TLabel;
    DBDateEdit2: TDBDateEdit;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    Label38: TLabel;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Label39: TLabel;
    DBEdit24: TDBEdit;
    Label40: TLabel;
    DBEdit26: TDBEdit;
    Label41: TLabel;
    DBEdit29: TDBEdit;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    ecodmunicipio: TDBEdit;
    RzDBComboBox6: TRzDBComboBox;
    Label45: TLabel;
    Label46: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    DBEdit31: TDBEdit;
    Label47: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    CBCreditoICMS: TDBCheckBox;
    Label50: TLabel;
    RzDBComboBox7: TRzDBComboBox;
    DBEdit33: TDBEdit;
    Label51: TLabel;
    Label53: TLabel;
    DBEdit34: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure RzDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure bcnaeClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ecnaeExit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure RzDBComboBox6Change(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmempresa: Tfrmempresa;
  comando : string;

implementation

uses ufuncoes, modulo, principal, loc_regiao, regiao, loc_funci, xloc_EMPRESA,
  xloc_cidade, xloc_cnae;

{$R *.dfm}




procedure Tfrmempresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure Tfrmempresa.FormShow(Sender: TObject);
begin


  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.QRFILIAL.close;
  frmmodulo.qrFILIAL.SQL.clear;
  frmmodulo.qrFILIAL.SQL.add('select * from c000004 order by codigo');
  frmmodulo.qrFILIAL.open;
  frmmodulo.qrFILIAL.first;
  pficha.Enabled := false;
  balterar.SetFocus;
end;

procedure Tfrmempresa.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmempresa.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmempresa.bincluirClick(Sender: TObject);
begin
  frmmodulo.QRFILIAL.insert;
  FRMMODULO.QRFILIAL.FIELDBYNAME('TIPO').ASINTEGER := 1;
  frmmodulo.QRFILIAL.fieldbyname('codigo').asstring := frmprincipal.codifica('000004');
  frmmodulo.qrfilial.fieldbyname('EMPRESA_ESTADUAL').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('CONTRIBUINTE_IPI').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('OPTANTE_SIMPLES').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('ECF').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('SUBSTITUTO_TRIBUTARIO').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('OPTANTE_SUPER_SIMPLES').asstring := 'N';
  frmmodulo.qrfilial.fieldbyname('IPI').asFLOAT := 0;
  frmmodulo.qrfilial.fieldbyname('ISS').asFLOAT := 0;




  pficha.Enabled := true;
  dbedit2.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmempresa.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    frmmodulo.QRFILIAL.Edit;
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

procedure Tfrmempresa.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir EMPRESA',4) then
  begin
    frmmodulo.QRFILIAL.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmempresa.blocalizarClick(Sender: TObject);
begin
  frmxloc_EMPRESA := tfrmxloc_EMPRESA.create(self);
  frmxloc_EMPRESA.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.QRFILIAL.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmempresa.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmempresa.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA, cnpj: STRING;
begin
  if dbedit2.text = '' then
  begin
    application.messagebox('Favor informar um nome válido para esta empresa!','Aviso',mb_ok+mb_iconerror);
    dbedit2.setfocus;
    exit;
  end;

  if DBEdit15.Text = '' then
     begin
       showmessage('É necessário preenchimento do CNPJ');
       DBEdit15.SetFocus;
       exit;
     end
  else
     begin
       cnpj := tirapontos(tirabarras(tiratracos( DBEdit15.Text )));
       if not ValidaCNPJ(cnpj) then
          if not ValidaCPF(cnpj) then
             begin
               //showmessage(DBEdit15.Text+' não é CNPJ ou CPF válido');
               DBEdit15.SetFocus;
               exit;
             end;

     end;
  //


  if (frmmodulo.QRFILIAL.State = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin
      frmmodulo.QRFILIAL.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  balterar.setfocus;





end;

procedure Tfrmempresa.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.QRFILIAL.State = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
      frmmodulo.QRFILIAL.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

end;

procedure Tfrmempresa.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmempresa.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmempresa.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmempresa.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmempresa.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmempresa.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmempresa.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmempresa.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN
  if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin

    if frmprincipal.TestaCnpj(dbedit15.Text) then
    begin
     // frmmodulo.QRFILIAL.fieldbyname('CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

     if pos('/',dbedit15.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
    end
    else
    begin
      Showmessage('CNPJ Inválido!');
      dbedit15.SetFocus;
    end;
  end;
  END;
end;

procedure Tfrmempresa.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmempresa.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT26.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit26.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('CONTADOR_FAX').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit26.text);
    END;
  END;

end;

procedure Tfrmempresa.edata_cadastroExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    tdbdateedit(sender).SetFocus;
  END;
 end;


end;

procedure Tfrmempresa.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmempresa.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmempresa.BitBtn5Click(Sender: TObject);
begin
//
end;

procedure Tfrmempresa.RzDBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmempresa.AdvGlowButton1Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.QRFILIAL.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.QRFILIAL.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.QRFILIAL.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.QRFILIAL.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;

procedure Tfrmempresa.bcnaeClick(Sender: TObject);
begin

  parametro_pesquisa := '';
  frmxloc_cnae := tfrmxloc_cnae.create(self);
  frmxloc_cnae.showmodal;

  frmmodulo.QRFILIAL.FieldByName('CNAE').AsString := resultado_pesquisa2;

end;

procedure Tfrmempresa.DBEdit6Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
       AdvGlowButton1.OnClick (frmempresa);
   end;
end;

procedure Tfrmempresa.ecnaeExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin
    if ecnae.Text = '' then
       bcnae.OnClick (frmempresa);
   end;
end;

procedure Tfrmempresa.DBEdit30Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT30.Text <> '' THEN
  BEGIN
  if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin

    if frmprincipal.TestaCnpj(dbedit30.Text) then
    begin
     // frmmodulo.QRFILIAL.fieldbyname('CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit30.text);

     if pos('/',dbedit30.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('CONTADOR_CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit30.text);
    end
    else
    begin
      Showmessage('CNPJ Inválido!');
      dbedit30.SetFocus;
    end;
  end;
  END;
end;

procedure Tfrmempresa.RzDBComboBox6Change(Sender: TObject);
begin
  if RzDBComboBox6.Value = '1' then
  begin
     RzDBComboBox1.Value := 'S';
     CBCreditoICMS.Enabled := True;
  end
  else
  if RzDBComboBox6.Value = '2' then
  begin
     RzDBComboBox1.Value := 'S';
     CBCreditoICMS.Enabled := True;
  end
  else
  if RzDBComboBox6.Value = '3' then
  begin
     RzDBComboBox1.Value := 'N';
     CBCreditoICMS.Enabled := False;
  end;
end;

procedure Tfrmempresa.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrFILIAL.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(dbedit3.text,5);
end;

procedure Tfrmempresa.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT10.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit10.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('TELEFONE').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit10.text);
    END;
  END;
end;

procedure Tfrmempresa.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT11.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit11.text) = 0 then
       frmmodulo.qrFILIAL.fieldbyname('FAX').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit11.text);
    END;
  END;
end;

procedure Tfrmempresa.DBEdit25Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT25.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit25.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('CONTADOR_FONE').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit25.text);
    END;
  END;
end;

procedure Tfrmempresa.DBEdit24Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT24.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
     if pos('-',dbedit24.text) = 0 then
       frmmodulo.QRFILIAL.fieldbyname('CONTADOR_CEP').asstring := FormatMaskText('99999-999;0;_',dbedit24.text);

    END;
  END;
end;

procedure Tfrmempresa.DBEdit29Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN
    if (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
    begin
      if pos('-',DBEdit29.text) = 0 then
        frmmodulo.QRFILIAL.fieldbyname('CONTADOR_CPF').asstring := FormatMaskText('999.999.999-99;0;_',DBEdit29.text);
    end
    else
    begin
      Showmessage('CPF Inválido!');
      DBEdit29.SetFocus;
      exit;
    end;
  end;
end;

procedure Tfrmempresa.DBEdit20Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrFILIAL.fieldbyname('CONTADOR_NUMERO').asstring := frmprincipal.zerarcodigo(dbedit20.text,5);
end;

procedure Tfrmempresa.DBEdit31Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.QRFILIAL.state = dsinsert) or (frmmodulo.QRFILIAL.State = dsedit) then
  begin
    if DBEdit31.Text = '' then
       AdvGlowButton2.OnClick (frmempresa);
   end;
end;

procedure Tfrmempresa.AdvGlowButton2Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.QRFILIAL.FieldByName('CONTADOR_COD_MUNICIPIO').AsString := resultado_pesquisa6;
  frmmodulo.QRFILIAL.FieldByName('CONTADOR_COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa5;
  frmmodulo.QRFILIAL.FieldByName('CONTADOR_CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.QRFILIAL.FieldByName('CONTADOR_UF').AsString := resultado_pesquisa3;
  DBEdit31.SetFocus;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

unit convenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, AdvGlowButton,
  wwdbedit, Wwdotdot, Wwdbcomb;

type
  Tfrmconvenio = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsconvenio2: TDataSource;
    qrconvenio: TZQuery;
    Relatrios1: TMenuItem;
    dsconvenio: TDataSource;
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
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label3: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    qrloc: TZQuery;
    euf: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio: Tfrmconvenio;
  comando : string;
  valorx : real;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_convenio;

{$R *.dfm}


procedure Tfrmconvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconvenio.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmconvenio.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmconvenio.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.insert;
  frmmodulo.qrCONVENIO.fieldbyname('codigo').asstring := frmprincipal.codifica('000071');
  pficha.Enabled := true;
  EDATA_CADASTRO.setfocus;
  pgravar.Visible := true;

  PopupMenu := pop2;
end;

procedure Tfrmconvenio.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


    frmmodulo.qrCONVENIO.Edit;
    pficha.Enabled := true;
    EDATA_CADASTRO.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmconvenio.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir CONVENIO',4) then
  begin

    qrloc.close;
    qrloc.sql.clear;
    qrloc.sql.add('select * from c000007 where codconvenio = '''+dbedit1.text+'''');
    qrloc.open;

    if qrloc.recordcount > 0 then
    begin
      application.messagebox('Existem clientes cadastrados para este convênio! Impossível prosseguir com exclusão!','Aviso',mb_ok+MB_ICONerror);
      exit;
    end;


    frmmodulo.qrCONVENIO.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmconvenio.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_convenio := tfrmxloc_convenio.create(self);
  frmxloc_convenio.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrconvenio.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmconvenio.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin



  if dbedit2.text = '' then
  begin
   application.messagebox('Favor informar o nome do convênio!','Erro',mb_ok+mb_iconerror);
   dbedit2.setfocus;
   exit;

  end;

  if (frmmodulo.qrCONVENIO.State = dsinsert) or (frmmodulo.qrCONVENIO.State = dsedit) then
  begin
      frmmodulo.qrCONVENIO.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;



end;

procedure Tfrmconvenio.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrCONVENIO.State = dsinsert) or (frmmodulo.qrCONVENIO.State = dsedit) then
      frmmodulo.qrCONVENIO.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

end;

procedure Tfrmconvenio.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmconvenio.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.first;
end;

procedure Tfrmconvenio.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.last;

end;

procedure Tfrmconvenio.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.prior;

end;

procedure Tfrmconvenio.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.next;

end;

procedure Tfrmconvenio.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmconvenio.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrCONVENIO.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmconvenio.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmconvenio.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmconvenio.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconvenio.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN
  if (frmmodulo.qrCONVENIO.state = dsinsert) or (frmmodulo.qrCONVENIO.State = dsedit) then
  begin

    if frmprincipal.TestaCnpj(dbedit15.Text) then
    begin
     // frmmodulo.qrCONVENIO.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

     if pos('/',dbedit15.text) = 0 then
       frmmodulo.qrCONVENIO.fieldbyname('CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
    end
    else
    begin
      Showmessage('CNPJ Inválido!');
      dbedit15.SetFocus;
    end;





  end;
  END;
end;

procedure Tfrmconvenio.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrCONVENIO.state = dsinsert) or (frmmodulo.qrCONVENIO.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrCONVENIO.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmconvenio.edata_cadastroExit(Sender: TObject);
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

procedure Tfrmconvenio.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    bGRAVAR.setfocus;
  END;
end;

procedure Tfrmconvenio.BitBtn5Click(Sender: TObject);
begin
//
end;

procedure Tfrmconvenio.FormShow(Sender: TObject);
begin
  frmmodulo.qrconvenio.close;
  frmmodulo.qrconvenio.sql.clear;
  frmmodulo.qrconvenio.sql.add('select * from c000071 order by codigo');
  frmmodulo.qrconvenio.open;

  pgravar.Align := alClient;
end;

procedure Tfrmconvenio.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconvenio.DBEdit16Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
if frmmodulo.qrconvenio.state = dsedit then
begin
  if valorx <> frmmodulo.qrconvenio.fieldbyname('limite').asfloat then
  begin
    if frmprincipal.autentica('Alterar Convênio',3) then
   begin
      //
    end
    else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
      frmmodulo.qrconvenio.fieldbyname('limite').asfloat := valorx;
    end;
  end;
end;
end;

procedure Tfrmconvenio.DBEdit9Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
if frmmodulo.qrconvenio.state = dsedit then
begin
  if valorx <> frmmodulo.qrconvenio.fieldbyname('desconto').asfloat then
  begin
    if frmprincipal.autentica('Alterar Convênio',3) then
   begin
      //
    end
    else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
      frmmodulo.qrconvenio.fieldbyname('desconto').asfloat := valorx;
    end;
  end;
end;
end;

procedure Tfrmconvenio.DBEdit16Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
valorx := frmmodulo.qrconvenio.fieldbyname('LIMITE').asfloat;
end;

procedure Tfrmconvenio.DBEdit9Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
valorx := frmmodulo.qrconvenio.fieldbyname('desconto').asfloat;
end;

procedure Tfrmconvenio.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este registro!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

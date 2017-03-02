unit Emitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, ExtCtrls, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  ExtDlgs, Menus, AdvGlowButton;

type
  Tfrmemitente = class(TForm)
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label37: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    dsemitente: TDataSource;
    DBImage1: TDBImage;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    DBEdit53: TDBEdit;
    Label55: TLabel;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    Label44: TLabel;
    ecodmunicipio: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    Label27: TLabel;
    DBEdit1: TDBEdit;
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmemitente: Tfrmemitente;

implementation

uses modulo, principal, ativacao2, xloc_cidade;

{$R *.dfm}

procedure Tfrmemitente.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmemitente.BitBtn9Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmemitente.BitBtn10Click(Sender: TObject);
begin
  FRMMODULO.QRemitente.FIELDBYNAME('logo').Value := null;
end;

procedure Tfrmemitente.Fechar1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmemitente.FormShow(Sender: TObject);
begin
  frmmodulo.qremitente.Open;
  if frmmodulo.qremitente.RecordCount = 0 then frmmodulo.qremitente.Insert else frmmodulo.qremitente.Edit;
  dbedit3.setfocus;
end;

procedure Tfrmemitente.DBEdit3Exit(Sender: TObject);
begin
  frmmodulo.qremitente.FieldByName('codigo').asstring :=frmprincipal.texto_justifica(dbedit3.text,6,'0','E');

end;

procedure Tfrmemitente.BitBtn4Click(Sender: TObject);
begin

  res_empresa := frmmodulo.qremitenteCODIGO.AsString;
  res_rsocial  := frmmodulo.qremitenteNOME.AsString;
  res_cnpj   := frmmodulo.qremitenteCNPJ.AsString;

  if (dbedit3.text = '000000') or (dbedit3.text = '') then
  begin
    application.messagebox('Código inválido! Favor entrar em contato com o suporte!','Atenção',mb_ok+MB_ICONERROR);
    DBEdit3.SetFocus;
    exit;
  end;
  frmmodulo.qremitente.Post;
  frmmodulo.Conexao.Commit;
  continuacao := true;

  close;
end;

procedure Tfrmemitente.AdvGlowButton1Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qremitente.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qremitente.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qremitente.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qremitente.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit8.SetFocus;
end;

end.

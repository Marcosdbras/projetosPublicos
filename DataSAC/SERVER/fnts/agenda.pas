unit agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScrollView, CustomGridViewControl, CustomGridView,
  GridView, ImgList, DB, Grids, DBGrids, DBGridView, Buttons, Collection,
  ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdbigrd,
  Wwdbgrid, Menus, DBCtrls, Mask, shellapi, AdvGlowButton;

type
  Tfrmagenda = class(TForm)
    dsagenda: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    N1: TMenuItem;
    LocalizarpeloInciodoNome1: TMenuItem;
    LocalizarporPartedoNome1: TMenuItem;
    Panel2: TPanel;
    bitbtn1: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    bitbtn29: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn28: TBitBtn;
    info: THeaderView;
    SpeedButton27: TSpeedButton;
    DBText3: TDBText;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    loc: TEdit;
    Panel1: TPanel;
    rinicio: TRadioButton;
    rparte: TRadioButton;
    Label7: TLabel;
    Bevel1: TBevel;
    Panel4: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel2: TBevel;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure LocalizarpeloInciodoNome1Click(Sender: TObject);
    procedure LocalizarporPartedoNome1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn28Exit(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagenda: Tfrmagenda;

implementation

uses modulo, agenda_ficha, principal;

{$R *.dfm}

procedure Tfrmagenda.bincluirClick(Sender: TObject);
begin
  frmagenda_ficha := tfrmagenda_ficha.create(self);
  frmmodulo.qragenda.insert;
  frmmodulo.qragenda.fieldbyname('codigo').asstring := frmprincipal.codifica('000034');
  frmagenda_ficha.showmodal;
  WWDBGRID1.SETFOCUS;
end;

procedure Tfrmagenda.FormShow(Sender: TObject);
begin
  frmmodulo.qragenda.close;
  frmmodulo.qragenda.sql.clear;
  frmmodulo.qragenda.sql.add('select * from c000034 order by nome');
  frmmodulo.qragenda.open;
  frmmodulo.qragenda.first;
  WWDBGRID1.SETFOCUS;
end;

procedure Tfrmagenda.blocalizarClick(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmagenda.locChange(Sender: TObject);
begin

  FRMMODULO.qragenda.Close;
  FRMMODULO.qragenda.sql.clear;
  if loc.text <> '' then
  begin
    if rinicio.Checked then FRMMODULO.qragenda.sql.add('select * from c000034 where upper(NOME) like '''+ansiuppercase(loc.text)+'%'' order by nome');
    if rparte.Checked  then FRMMODULO.qragenda.sql.add('select * from c000034 where upper(NOME) like ''%'+ansiuppercase(loc.text)+'%'' order by nome');
  end
  else
  begin
    FRMMODULO.qragenda.sql.add('select * from c000034 order by nome');
  end;
  FRMMODULO.qragenda.Open;

end;

procedure Tfrmagenda.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmagenda.balterarClick(Sender: TObject);
begin
  frmagenda_ficha := tfrmagenda_ficha.create(self);
  frmmodulo.qragenda.edit;
  frmagenda_ficha.showmodal;
  WWDBGRID1.SETFOCUS;
end;

procedure Tfrmagenda.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir contato',2) then
  begin
    frmmodulo.qragenda.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmagenda.brelatoriosClick(Sender: TObject);
begin
//
end;

procedure Tfrmagenda.LocalizarpeloInciodoNome1Click(Sender: TObject);
begin
  rinicio.Checked := true;
end;

procedure Tfrmagenda.LocalizarporPartedoNome1Click(Sender: TObject);
begin
  rparte.Checked := true;
end;

procedure Tfrmagenda.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if afieldname = 'TIPOI' then
  begin
    plegenda.Visible := true;
    bitbtn28.setfocus;
  end
  else
  begin
    frmmodulo.qragenda.close;
    frmmodulo.qragenda.sql.Clear;
    frmmodulo.qragenda.SQL.add('select * from c000034 order by '+afieldname);
    frmmodulo.qragenda.open;
  end;
end;

procedure Tfrmagenda.BitBtn28Click(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmagenda.BitBtn28Exit(Sender: TObject);
begin
  plegenda.Visible := false;
end;

procedure Tfrmagenda.SpeedButton27Click(Sender: TObject);
begin
  ShellExecute(ValidParentForm(Self).Handle, 'open', PChar('mailto:'+Dbtext3.caption), nil, nil, SW_SHOW);
end;

procedure Tfrmagenda.DBEdit1Change(Sender: TObject);
begin
  if frmmodulo.qragenda.FieldByName('email').asstring <> '' then info.visible := true else info.Visible := false;
end;

procedure Tfrmagenda.BitBtn1Click(Sender: TObject);
begin
  FRMMODULO.QRagenda.close;
  FRMMODULO.QRagenda.SQL.clear;
  FRMMODULO.QRagenda.sql.Add('select * from C000034 where UPPER(nome) like '''+copy(tSpeedButton(sender).caption,2,1)+'%'' order by nome');
  FRMMODULO.QRagenda.open;

end;

procedure Tfrmagenda.BitBtn29Click(Sender: TObject);
begin
  FRMMODULO.QRagenda.close;
  FRMMODULO.QRagenda.SQL.clear;
  FRMMODULO.QRagenda.sql.Add('select * from C000034 order by nome');
  FRMMODULO.QRagenda.open;
end;

procedure Tfrmagenda.wwDBGrid1DblClick(Sender: TObject);
begin
  BALTERARCLICK(FRMAGENDA);
end;

end.

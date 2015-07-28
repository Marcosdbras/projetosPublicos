unit filial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  Tfrmfilial = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    pficha: TFlatPanel;
    Label1: TLabel;
    ecodigo: TEdit;
    Label2: TLabel;
    enome: TEdit;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    BLOC: TBitBtn;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dsfilial: TDataSource;
    qrFilial: TZQuery;
    FlatPanel1: TFlatPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label3: TLabel;
    Edit1: TEdit;
    procedure mostra_registros;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfilial: Tfrmfilial;
  comando : string;

implementation

uses modulo, principal, principal2;

{$R *.dfm}

procedure tfrmfilial.mostra_registros;
begin
  ecodigo.text := frmmodulo.qrfilial.Fieldbyname('codigo').asstring;
  enome.text := frmmodulo.qrfilial.Fieldbyname('filial').asstring;
  eDIT1.text := frmmodulo.qrfilial.Fieldbyname('NOTAFISCAL').asstring;

end;

procedure Tfrmfilial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfilial.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;
  

  frmmodulo.qrFilial.close;
  frmmodulo.qrFilial.SQL.clear;
  frmmodulo.qrFilial.SQL.add('select * from c000004 order by codigo');
  frmmodulo.qrFilial.open;
  frmmodulo.qrFilial.first;

  mostra_registros;
  pficha.Enabled := false;

  bincluir.SetFocus;
end;

procedure Tfrmfilial.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmfilial.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmfilial.bincluirClick(Sender: TObject);
begin
  frmprincipal2.limpaedit(frmfilial);
  ecodigo.text := frmprincipal2.codifica('000004');

  pficha.Enabled := true;
  enome.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;

  comando := 'INSERT';


end;

procedure Tfrmfilial.balterarClick(Sender: TObject);
begin

  IF ECODIGO.Text <> '' THEN
  BEGIN
    pficha.Enabled := true;
    enome.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
    comando := 'EDIT';
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmfilial.bexcluirClick(Sender: TObject);
begin
  if frmprincipal2.autentica('Excluir Filial',4) then
  begin
    frmmodulo.qrFilial.close;
    frmmodulo.qrfilial.SQL.clear;
    frmmodulo.qrFilial.sql.add('delete from c000004 where codigo = '''+ecodigo.text+'''');
    frmmodulo.qrFilial.ExecSQL;
    frmmodulo.qrFilial.sql.clear;
    frmmodulo.qrfilial.sql.add('select * from c000004 order by codigo');
    frmmodulo.qrFilial.Open;
    frmmodulo.qrfilial.refresh;
    mostra_registros;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmfilial.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  radiobutton1.setfocus;
end;

procedure Tfrmfilial.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfilial.bgravarClick(Sender: TObject);
begin

  if comando = 'INSERT' then
  begin
    try
      frmmodulo.qrFilial.close;
      FRMMODULO.qrFilial.SQL.clear;
      frmmodulo.qrFilial.SQL.add('insert into c000004 (codigo,filial,NOTAFISCAL) values ('''+ecodigo.text+''','''+enome.text+''','+EDIT1.TEXT+')');
      frmmodulo.qrFilial.ExecSQL;
      frmmodulo.Conexao.Commit;

      frmmodulo.qrFilial.SQL.clear;
      frmmodulo.qrFilial.SQL.Add('select * from c000004 order by codigo');
      frmmodulo.qrFilial.Open;
      frmmodulo.qrFilial.Refresh;
      frmmodulo.qrFilial.Last;

      mostra_registros;
    except
       application.MessageBox('Não foi possível gravar o registro! Favor verificar','Aviso',mb_ok+mb_iconerror);
       frmmodulo.Conexao.Rollback;
    end;
  end
  else
  begin
      frmmodulo.qrFilial.close;
      FRMMODULO.qrFilial.SQL.clear;
      frmmodulo.qrFilial.SQL.add('update c000004 set filial ='''+enome.text+''', NOTAFISCAL = '+EDIT1.TEXT+' where codigo = '''+ecodigo.text+'''');
      frmmodulo.qrFilial.ExecSQL;

      frmmodulo.Conexao.Commit;
      frmmodulo.qrFilial.SQL.clear;
      frmmodulo.qrFilial.SQL.Add('select * from c000004 order by codigo');
      frmmodulo.qrFilial.Open;
      frmmodulo.qrFilial.Refresh;
      frmmodulo.qrFilial.locate('codigo',ecodigo.text,[]);
      mostra_registros;
  end;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  mostra_registros;
end;

procedure Tfrmfilial.bcancelarClick(Sender: TObject);
begin
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  mostra_registros;
end;

procedure Tfrmfilial.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfilial.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrfilial.first;
  mostra_registros;
end;

procedure Tfrmfilial.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrfilial.last;
  mostra_registros;
end;

procedure Tfrmfilial.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrfilial.prior;
  mostra_registros;
end;

procedure Tfrmfilial.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrfilial.next;
  mostra_registros;
end;

procedure Tfrmfilial.RadioButton1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SetFocus
end;

procedure Tfrmfilial.RadioButton2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SETFOCUS;
end;

procedure Tfrmfilial.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BLOC.SETFOCUS;
End;

procedure Tfrmfilial.BLOCClick(Sender: TObject);
begin
  qrfilial.close;
  qrfilial.sql.clear;
  if radiobutton1.Checked then
  qrfilial.sql.add('select * from c000004 where upper(filial) like '''+ansiuppercase(loc.text)+'%'' order by filial');
  if radiobutton2.Checked then
  qrfilial.sql.add('select * from c000004 where filial = '''+loc.text+''' order by codigo');
  qrfilial.open;
  dbgrid1.setfocus;

end;

procedure Tfrmfilial.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    frmmodulo.qrFilial.Locate('codigo',qrfilial.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    mostra_registros;
    qrfilial.close;
    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure Tfrmfilial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

end.

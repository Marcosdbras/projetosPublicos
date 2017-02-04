unit regiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  TfrmRegiao = class(TForm)
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
    dsregiao: TDataSource;
    qrregiao: TZQuery;
    FlatPanel1: TFlatPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegiao: TfrmRegiao;
  comando : string;

implementation

uses modulo, principal;

{$R *.dfm}

procedure tfrmRegiao.mostra_registros;
begin
  ecodigo.text := frmmodulo.qrREGIAO.Fieldbyname('codigo').asstring;
  enome.text := frmmodulo.qrREGIAO.Fieldbyname('REGIAO').asstring;
end;

procedure TfrmRegiao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRegiao.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;
  

  frmmodulo.qrREGIAO.close;
  frmmodulo.qrREGIAO.SQL.clear;
  frmmodulo.qrREGIAO.SQL.add('select * from c000005 order by codigo');
  frmmodulo.qrREGIAO.open;
  frmmodulo.qrREGIAO.first;

  mostra_registros;
  pficha.Enabled := false;

  bincluir.SetFocus;
end;

procedure TfrmRegiao.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure TfrmRegiao.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmRegiao.bincluirClick(Sender: TObject);
begin
  frmprincipal.limpaedit(frmREGIAO);
  ecodigo.text := frmprincipal.codifica('000005',6);

  pficha.Enabled := true;
  enome.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;

  comando := 'INSERT';


end;

procedure TfrmRegiao.balterarClick(Sender: TObject);
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

procedure TfrmRegiao.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir REGIAO',4) then
  begin
    frmmodulo.qrREGIAO.close;
    frmmodulo.qrREGIAO.SQL.clear;
    frmmodulo.qrREGIAO.sql.add('delete from c000005 where codigo = '''+ecodigo.text+'''');
    frmmodulo.qrREGIAO.ExecSQL;
    frmmodulo.qrREGIAO.sql.clear;
    frmmodulo.qrREGIAO.sql.add('select * from c000005 order by codigo');
    frmmodulo.qrREGIAO.Open;
    frmmodulo.qrREGIAO.refresh;
    mostra_registros;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmRegiao.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  radiobutton1.setfocus;
end;

procedure TfrmRegiao.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRegiao.bgravarClick(Sender: TObject);
begin

  if comando = 'INSERT' then
  begin
    try
      frmmodulo.qrREGIAO.close;
      FRMMODULO.qrREGIAO.SQL.clear;
      frmmodulo.qrREGIAO.SQL.add('insert into c000005 (codigo,REGIAO) values ('''+ecodigo.text+''','''+enome.text+''')');
      frmmodulo.qrREGIAO.ExecSQL;
      frmmodulo.Conexao.Commit;

      frmmodulo.qrREGIAO.SQL.clear;
      frmmodulo.qrREGIAO.SQL.Add('select * from c000005 order by codigo');
      frmmodulo.qrREGIAO.Open;
      frmmodulo.qrREGIAO.Refresh;
      frmmodulo.qrREGIAO.Last;

      mostra_registros;
    except
       application.MessageBox('Não foi possível gravar o registro! Favor verificar','Aviso',mb_ok+mb_iconerror);
       frmmodulo.Conexao.Rollback;
    end;
  end
  else
  begin
      frmmodulo.qrREGIAO.close;
      FRMMODULO.qrREGIAO.SQL.clear;
      frmmodulo.qrREGIAO.SQL.add('update c000005 set REGIAO ='''+enome.text+''' where codigo = '''+ecodigo.text+'''');
      frmmodulo.qrREGIAO.ExecSQL;

      frmmodulo.Conexao.Commit;
      frmmodulo.qrREGIAO.SQL.clear;
      frmmodulo.qrREGIAO.SQL.Add('select * from c000005 order by codigo');
      frmmodulo.qrREGIAO.Open;
      frmmodulo.qrREGIAO.Refresh;
      frmmodulo.qrREGIAO.locate('codigo',ecodigo.text,[]);
      mostra_registros;
  end;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  mostra_registros;
end;

procedure TfrmRegiao.bcancelarClick(Sender: TObject);
begin
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  mostra_registros;
end;

procedure TfrmRegiao.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure TfrmRegiao.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrREGIAO.first;
  mostra_registros;
end;

procedure TfrmRegiao.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrREGIAO.last;
  mostra_registros;
end;

procedure TfrmRegiao.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrREGIAO.prior;
  mostra_registros;
end;

procedure TfrmRegiao.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrREGIAO.next;
  mostra_registros;
end;

procedure TfrmRegiao.RadioButton1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SetFocus
end;

procedure TfrmRegiao.RadioButton2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN LOC.SETFOCUS;
end;

procedure TfrmRegiao.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BLOC.SETFOCUS;
End;

procedure TfrmRegiao.BLOCClick(Sender: TObject);
begin
  qrREGIAO.close;
  qrREGIAO.sql.clear;
  if radiobutton1.Checked then
  qrREGIAO.sql.add('select * from c000005 where upper(REGIAO) like '''+ansiuppercase(loc.text)+'%'' order by REGIAO');
  if radiobutton2.Checked then
  qrREGIAO.sql.add('select * from c000005 where REGIAO like '''+loc.text+'%'' order by codigo');
  qrREGIAO.open;
  dbgrid1.setfocus;

end;

procedure TfrmRegiao.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    frmmodulo.qrREGIAO.Locate('codigo',qrREGIAO.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    mostra_registros;
    qrREGIAO.close;
    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

end.

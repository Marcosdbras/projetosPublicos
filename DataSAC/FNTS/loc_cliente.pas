unit loc_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  Collection, TFlatGroupBoxUnit, Buttons, DB, Menus, jpeg;

type
  Tfrmloc_cliente = class(TForm)
    FlatPanel1: TFlatPanel;
    FlatGroupBox1: TFlatGroupBox;
    rnome: TRadioButton;
    rcpf: TRadioButton;
    FlatGroupBox2: TFlatGroupBox;
    rinicio: TRadioButton;
    rparte: TRadioButton;
    FlatGroupBox3: TFlatGroupBox;
    Edit1: TEdit;
    wwDBGrid1: TwwDBGrid;
    bcancelar: TBitBtn;
    bgravar: TBitBtn;
    dscliente: TDataSource;
    PopupMenu1: TPopupMenu;
    ProcurarporNOME1: TMenuItem;
    ProcurarporCPFCNPJ1: TMenuItem;
    N1: TMenuItem;
    BuscarPeloIncio1: TMenuItem;
    BurcarporParte1: TMenuItem;
    N2: TMenuItem;
    Cancelar1: TMenuItem;
    FlatGroupBox4: TFlatGroupBox;
    Edit2: TEdit;
    Image1: TImage;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ProcurarporNOME1Click(Sender: TObject);
    procedure ProcurarporCPFCNPJ1Click(Sender: TObject);
    procedure BuscarPeloIncio1Click(Sender: TObject);
    procedure BurcarporParte1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_cliente: Tfrmloc_cliente;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmloc_cliente.Edit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_cliente.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmloc_cliente.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  BEGIN
    if edit1.text <> '' then
    begin
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      IF RNOME.CHECKED THEN
      BEGIN
        IF RINICIO.CHECKED THEN
        BEGIN
          FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE UPPER(NOME) LIKE '''+ANSIUPPERCASE(EDIT1.TEXT)+'%'' ORDER BY NOME');
        END
        ELSE
        BEGIN
          FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE UPPER(NOME) LIKE ''%'+ANSIUPPERCASE(EDIT1.TEXT)+'%'' ORDER BY NOME');
        END;
      END;
      IF RCPF.CHECKED THEN
      BEGIN
        IF RINICIO.CHECKED THEN
        BEGIN
           FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE UPPER(CPF) LIKE '''+ANSIUPPERCASE(EDIT1.TEXT)+'%'' ORDER BY NOME');
        END
        ELSE
        BEGIN
           FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE UPPER(CPF) LIKE ''%'+ANSIUPPERCASE(EDIT1.TEXT)+'%'' ORDER BY NOME');
        END;
      END;
      FRMMODULO.QRCLIENTE.OPEN;
      IF FRMMODULO.QRCLIENTE.RecordCount = 0 THEN
      BEGIN
        SHOWMESSAGE('Não foi encontrado nenhum cliente!');
        edit1.setfocus;
      END
      ELSE
        wwdbgrid1.setfocus;
    end
    else
      edit2.setfocus;
  END;

end;

procedure Tfrmloc_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmloc_cliente.FormShow(Sender: TObject);
begin
  frmmodulo.qrcliente.close;
  edit1.setfocus;
end;

procedure Tfrmloc_cliente.ProcurarporNOME1Click(Sender: TObject);
begin
  rnome.checked := true;
end;

procedure Tfrmloc_cliente.ProcurarporCPFCNPJ1Click(Sender: TObject);
begin
  rcpf.checked := true;
end;

procedure Tfrmloc_cliente.BuscarPeloIncio1Click(Sender: TObject);
begin
  rinicio.checked := true;
end;

procedure Tfrmloc_cliente.BurcarporParte1Click(Sender: TObject);
begin
  rparte.checked := true;
end;

procedure Tfrmloc_cliente.bcancelarClick(Sender: TObject);
begin
  codcliente := '';
  close;
end;

procedure Tfrmloc_cliente.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmloc_cliente);
end;

procedure Tfrmloc_cliente.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    bgravarClick(frmloc_cliente);
  end;
end;

procedure Tfrmloc_cliente.bgravarClick(Sender: TObject);
begin
  codcliente := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
  close;
end;

procedure Tfrmloc_cliente.wwDBGrid1DblClick(Sender: TObject);
begin
bgravarClick(frmloc_cliente);
end;

procedure Tfrmloc_cliente.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  BEGIN
    if edit2.text <> '' then
    begin
      edit2.Text := frmprincipal.zerarcodigo(edit2.text,6);
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE UPPER(codigo) = '''+ANSIUPPERCASE(EDIT2.TEXT)+''' ORDER BY NOME');
      FRMMODULO.QRCLIENTE.OPEN;
      IF FRMMODULO.QRCLIENTE.RecordCount = 0 THEN
      BEGIN
        SHOWMESSAGE('Não foi encontrado nenhum cliente!');
        edit2.setfocus;
      END
      ELSE
        wwdbgrid1.setfocus;
    end
    else
    begin
      edit1.setfocus;
    end;
  end;
end;

end.

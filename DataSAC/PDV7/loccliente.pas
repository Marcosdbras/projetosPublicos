unit loccliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, Menus, jpeg;

type
  Tfrmloccliente = class(TForm)
    Image1: TImage;
    LOC: TFlatEdit;
    lpesquisa: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    grid: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Image3: TImage;
    dscliente: TDataSource;
    FlatPanel2: TFlatPanel;
    Image2: TImage;
    FlatPanel3: TFlatPanel;
    Image4: TImage;
    Label4: TLabel;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloccliente: Tfrmloccliente;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmloccliente.LOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   IF LOC.TEXT <> '' THEN
   BEGIN
    frmmodulo.qrcliente.Close;
    frmmodulo.qrcliente.sql.clear;
    if lpesquisa.Caption = 'F3 | NOME:' THEN     frmmodulo.qrcliente.sql.add('select * from c000007 where upper(nome) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by nome');
    if lpesquisa.Caption = 'F3 | CÓDIGO:' THEN   frmmodulo.qrcliente.sql.add('select * from c000007 where upper(CODIGO) like '''+LOC.text+'%'' order by nome');
    if lpesquisa.Caption = 'F3 | CPF/CNPJ:' THEN frmmodulo.qrcliente.sql.add('select * from c000007 where upper(CPF) like '''+LOC.text+'%'' order by nome');
    frmmodulo.qrcliente.open;
    if frmmodulo.qrcliente.RecordCount > 0 then
    begin
      grid.setfocus;
    end
    else
    begin
      frmprincipal.msg('LOCE','Resgistro não encontrado!',false,false,true,'');
      LOC.SelectAll;
      LOC.SetFocus;
    end;
   END;
  end;
  if key = #27 then close;
end;

procedure Tfrmloccliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure Tfrmloccliente.FormShow(Sender: TObject);
begin
    frmmodulo.qrcliente.Close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''xxxxxx''');
    frmmodulo.qrcliente.open;
    LOC.setfocus;

end;

procedure Tfrmloccliente.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrcliente.RecordCount > 0 then
    begin
      resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := frmmodulo.qrcliente.fieldbyname('nome').asstring;
      close;
    end;
  end;
  if key = #27 then close;
end;

procedure Tfrmloccliente.ipodePesquisa1Click(Sender: TObject);
begin
  if lpesquisa.Caption = 'F3 | NOME:' THEN BEGIN lpesquisa.Caption := 'F3 | CÓDIGO:';EXIT;END;
  if lpesquisa.Caption = 'F3 | CÓDIGO:' THEN BEGIN lpesquisa.Caption := 'F3 | CPF/CNPJ:';EXIT;END;
  if lpesquisa.Caption = 'F3 | CPF/CNPJ:' THEN BEGIN lpesquisa.Caption := 'F3 | NOME:';EXIT;END;

end;

procedure Tfrmloccliente.gridDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := frmmodulo.qrcliente.fieldbyname('nome').asstring;
      close;
end;

end.

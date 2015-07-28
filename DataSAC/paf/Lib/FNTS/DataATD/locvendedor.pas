unit locvendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, jpeg;

type
  Tfrmlocvendedor = class(TForm)
    dsvendedor: TDataSource;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    Bevel1: TBevel;
    grid: TwwDBGrid;
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlocvendedor: Tfrmlocvendedor;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmlocvendedor.LOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   IF LOC.TEXT <> '' THEN
   BEGIN
    frmmodulo.qrfunci.Close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 where upper(nome) like '''
      +ANSIUPPERCASE(LOC.text)+'%'' and F_VENDEDOR = 1 AND SITUACAO = 1 order by nome');
    frmmodulo.qrfunci.open;

    if frmmodulo.qrfunci.RecordCount > 0 then
    begin
      if frmmodulo.qrfunci.RecordCount = 1 then
      begin
        resultado_pesquisa1 := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
        resultado_pesquisa2 := frmmodulo.qrfunci.fieldbyname('nome').asstring;
      end
      else
      begin
        grid.setfocus;
      end;
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

procedure Tfrmlocvendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure Tfrmlocvendedor.FormShow(Sender: TObject);
begin
    frmmodulo.qrfunci.Close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 where F_VENDEDOR = 1 AND SITUACAO = 1 order by nome');
    frmmodulo.qrfunci.open;
    grid.setfocus;

end;

procedure Tfrmlocvendedor.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrfunci.RecordCount > 0 then
    begin
      resultado_pesquisa1 := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := frmmodulo.qrfunci.fieldbyname('nome').asstring;
      close;
    end;
  end;
  if key = #27 then close;
end;

procedure Tfrmlocvendedor.gridDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := frmmodulo.qrfunci.fieldbyname('nome').asstring;
      close;
end;

end.

unit venda_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, TFlatEditUnit, Buttons,
  TFlatComboBoxUnit;

type
  Tfrmvenda_inicio = class(TForm)
    Image1: TImage;
    evendedor: TFlatEdit;
    ecliente: TFlatEdit;
    bvendedor: TBitBtn;
    enomevendedor: TFlatEdit;
    bcliente: TBitBtn;
    enomecliente: TFlatEdit;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure bvendedorClick(Sender: TObject);
    procedure bclienteClick(Sender: TObject);
    procedure combopgtoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_inicio: Tfrmvenda_inicio;

implementation

uses principal, modulo, locvendedor, loccliente;

{$R *.dfm}

procedure Tfrmvenda_inicio.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_inicio.evendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    evendedor.Text := frmprincipal.zerarcodigo(evendedor.text,6);
    if (evendedor.Text <> '') and (evendedor.Text <> '000000') then
    begin
      frmmodulo.qrfunci.close;
      frmmodulo.qrfunci.sql.clear;
      frmmodulo.qrfunci.sql.add('select * from c000008 where codigo = '''+evendedor.text+''' and F_VENDEDOR = 1 AND SITUACAO = 1 order by nome');
      frmmodulo.qrfunci.open;
      if frmmodulo.qrfunci.RecNo = 1 then
      begin
        enomevendedor.text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
        ecliente.setfocus;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        enomevendedor.text := '';
        evendedor.SetFocus;
        evendedor.SelectAll;
      end;
    end
    else
    begin
      bvendedorClick(frmvenda_inicio);
    end;
  end;
end;

procedure Tfrmvenda_inicio.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    ecliente.Text := frmprincipal.zerarcodigo(ecliente.text,6);
    if (ecliente.Text <> '') and (ecliente.Text <> '000000') then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+''' order by nome');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.RecNo = 1 then
      begin
        enomecliente.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        enomecliente.text := '';
        ecliente.SetFocus;
        ecliente.SelectAll;
      end;
    end
    else
    begin
      bclienteClick(frmvenda_inicio);
    end;
  end;
end;

procedure Tfrmvenda_inicio.bgravarClick(Sender: TObject);
begin
  IF (EVENDEDOR.Text = '') OR (EVENDEDOR.Text = '000000') THEN
  begin
    frmprincipal.msg('ERRO','Favor informar o vendedor!',false,false,true,'');
  end;
end;

procedure Tfrmvenda_inicio.bvendedorClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  IF resultado_pesquisa1 <> '' THEN
  BEGIN
    EVENDEDOR.TEXT := RESULTADO_PESQUISA1;
    ENOMEVENDEDOR.TEXT := RESULTADO_PESQUISA2;
    ECLIENTE.SETFOCUS;
  END
  ELSE
  BEGIN
    EVENDEDOR.SETFOCUS;
  END;
end;

procedure Tfrmvenda_inicio.bclienteClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  IF resultado_pesquisa1 <> '' THEN
  BEGIN
    Ecliente.TEXT := RESULTADO_PESQUISA1;
    ENOMEcliente.TEXT := RESULTADO_PESQUISA2;
  END
  ELSE
  BEGIN
    Ecliente.SETFOCUS;
  END;
end;

procedure Tfrmvenda_inicio.combopgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

end.

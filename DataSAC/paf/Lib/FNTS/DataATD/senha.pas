unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ExtDlgs,
  CellEditors, jpeg,
  ExtCtrls, Buttons;

type
  Tfrmsenha = class(TForm)
    Label1: TLabel;
    dsusuario: TDataSource;
    ds: TDataSource;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TComboBox;
    Panel1: TPanel;
    bt_ok: TBitBtn;
    bt_cancelar: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    lfuncao: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Exit(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses Principal, modulo;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsenha.FormShow(Sender: TObject);
begin
//  dbimage1.DataSource := ds;

  frmmodulo.qrUsuario.open;
  frmmodulo.qrUsuario.IndexFieldNames := 'usuario';
  frmmodulo.qrUsuario.first;
  frmsenha.ComboBox1.Items.clear;
  while not frmmodulo.qrUsuario.eof do
  begin
    IF frmmodulo.qrUsuario.fieldbyname('usuario').asstring <> '' THEN
    frmsenha.ComboBox1.Items.Add(frmmodulo.qrUsuario.fieldbyname('usuario').asstring);
    frmmodulo.qrUsuario.Next;
  end;




end;

procedure Tfrmsenha.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN EDIT2.SETFOCUS;
  IF KEY = #27 THEN bt_cancelarClick(FRMSENHA);
end;

procedure Tfrmsenha.ComboBox1Exit(Sender: TObject);
begin

  if combobox1.Text <> '' then
  begin

  IF frmmodulo.qrUsuario.LOCATE('usuario',COMBOBOX1.TEXT,[LOPARTIALKEY]) THEN
  BEGIN
    if frmmodulo.qrUsuario.FieldByName('nivel').asinteger < strtoint(copy(lfuncao.caption,1,1)) then
    begin
      IF APPLICATION.MESSAGEBOX('Nível não permitido!           '+#13+'Deseja tentar outra vez?        ','Atenção',mb_yesno+mb_iconerror) = idYes then
      begin
        combobox1.text :='';
        combobox1.setfocus;
      end
      else
      begin
        bt_cancelarClick(frmsenha);
      end;
    end
    else
    begin
//      dbimage1.Datasource := dsusuario;
      frmmodulo.qrUsuario.open;
    end;
  END
  ELSE
  BEGIN
    IF APPLICATION.MESSAGEBOX('Usuário não cadastrado!            '+#13+'Deseja tentar outra vez?         ','Atenção',mb_yesno+mb_iconerror) = idYes then
    begin
      combobox1.text :='';
      combobox1.setfocus;
    end
    else
    begin
      bt_cancelarclick(frmsenha);
    end;
  END;
  end
  else
  begin
    combobox1.SetFocus;
  end;
end;

procedure Tfrmsenha.edit2KeyPress(Sender: TObject; var Key: Char);
VAR SENHA : STRING;
begin
  if key = #13 then
  begin
  TRY
  SENHA := Frmprincipal.Cript('D',frmmodulo.qrUsuario.fieldbyname('senha').asstring);
  if edit2.text = SENHA then
  begin
      autenticado := true;
      bt_okClick(frmsenha);
  end
  else
  begin
    IF APPLICATION.MESSAGEBOX('Senha inválida!'+#13+'Deseja tentar outra vez?          ','Atenção',mb_yesno+mb_iconerror) = idYes then
    begin
      edit2.text :='';
      edit2.setfocus;
    end
    else
    begin
      bt_cancelarclick(frmsenha);
    end;
  end;
  EXCEPT
    IF APPLICATION.MESSAGEBOX('Senha inválida!'+#13+'Deseja tentar outra vez?          ','Atenção',mb_yesno+mb_iconerror) = idYes then
    begin
      edit2.text :='';
      edit2.setfocus;
    end
    else
    begin
      bt_cancelarclick(frmsenha);
    end;
  END;
  end;

  IF KEY = #27 THEN bt_cancelarCLICK(FRMSENHA);
end;

procedure Tfrmsenha.bt_okClick(Sender: TObject);
VAR SENHA : STRING;
begin
  TRY
  SENHA := Frmprincipal.Cript('D',frmmodulo.qrUsuario.fieldbyname('senha').asstring);
  if edit2.text = SENHA then
  begin
      autenticado := true;
  end
  else
  begin
    IF APPLICATION.MESSAGEBOX('Senha inválida!'+#13+'Deseja tentar outra vez?          ','Atenção',mb_yesno+mb_iconerror) = idYes then
    begin
      edit2.text :='';
      edit2.setfocus;
      exit;
    end
    else
    begin
      bt_cancelarclick(frmsenha);
    end;
  end;
  EXCEPT
    IF APPLICATION.MESSAGEBOX('Senha inválida!'+#13+'Deseja tentar outra vez?          ','Atenção',mb_yesno+mb_iconerror) = idYes then
    begin
      edit2.text :='';
      edit2.setfocus;
      exit;
    end
    else
    begin
      bt_cancelarclick(frmsenha);
    end;
  END;

  CLOSE;

end;

procedure Tfrmsenha.bt_cancelarClick(Sender: TObject);
begin
    autenticado := false;
    close;
end;

end.

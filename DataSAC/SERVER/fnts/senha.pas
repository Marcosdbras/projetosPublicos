unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ExtDlgs,
  CellEditors, jpeg,
  ExtCtrls, VrControls, VrButtons, AdvGlowButton, RxGIF;

type
  Tfrmsenha = class(TForm)
    Label1: TLabel;
    dsusuario: TDataSource;
    ds: TDataSource;
    lfuncao: TLabel;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TComboBox;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    Image2: TImage;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Exit(Sender: TObject);
    procedure BUTTON2KeyPress(Sender: TObject; var Key: Char);
    procedure BUTTON1KeyPress(Sender: TObject; var Key: Char);
    procedure BUTTON2Click(Sender: TObject);
    procedure BUTTON1Click(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
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
  AUTENTICADO := FALSE;

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
  IF KEY = #27 THEN BUTTON2CLICK(FRMSENHA);
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
        button2click(frmsenha);
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
      button2click(frmsenha);
    end;
  END;
  end
  else
  begin
    combobox1.SetFocus;
  end;
end;

procedure Tfrmsenha.BUTTON2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN TVrDemoButton(SENDER).ONCLICK(FRMSENHA);
end;

procedure Tfrmsenha.BUTTON1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN TVrDemoButton(SENDER).ONCLICK(FRMSENHA);
end;

procedure Tfrmsenha.BUTTON2Click(Sender: TObject);
begin
    autenticado := false;
    close;
end;

procedure Tfrmsenha.BUTTON1Click(Sender: TObject);
VAR SENHA : STRING;
begin
  TRY
  SENHA := Frmprincipal.Cript('D',frmmodulo.qrUsuario.fieldbyname('senha').asstring);
  if edit2.text = SENHA then
  begin
      usuario_temp := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
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
      button2click(frmsenha);
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
      button2click(frmsenha);
    end;
  END;

  CLOSE;
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
      BUTTON1Click(frmsenha);
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
      button2click(frmsenha);
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
      button2click(frmsenha);
    end;
  END;
  end;

  IF KEY = #27 THEN BUTTON2CLICK(FRMSENHA);
end;

end.

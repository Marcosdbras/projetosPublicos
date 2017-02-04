unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ExtDlgs,
   CellEditors,  LMDCustomButton, LMDButton, jpeg,
  ExtCtrls, VrControls, VrButtons;

type
  Tfrmsenha = class(TForm)
    Label1: TLabel;
    dsusuario: TDataSource;
    ds: TDataSource;
    Image1: TImage;
    lfuncao: TLabel;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TComboBox;
    BUTTON1: TVrDemoButton;
    BUTTON2: TVrDemoButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
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

uses Principal, modulo, ecf_daruma;

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
      IF APPLICATION.MESSAGEBOX('N�vel n�o permitido!           '+#13+'Deseja tentar outra vez?        ','Aten��o',mb_yesno+mb_iconerror) = idYes then
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
    IF APPLICATION.MESSAGEBOX('Usu�rio n�o cadastrado!            '+#13+'Deseja tentar outra vez?         ','Aten��o',mb_yesno+mb_iconerror) = idYes then
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

procedure Tfrmsenha.Edit2Exit(Sender: TObject);
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
    IF APPLICATION.MESSAGEBOX('Senha inv�lida!'+#13+'Deseja tentar outra vez?          ','Aten��o',mb_yesno+mb_iconerror) = idYes then
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
    IF APPLICATION.MESSAGEBOX('Senha inv�lida!'+#13+'Deseja tentar outra vez?          ','Aten��o',mb_yesno+mb_iconerror) = idYes then
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
begin
  CLOSE;
end;

procedure Tfrmsenha.edit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BUTTON1.SETFOCUS;
  IF KEY = #27 THEN BUTTON2CLICK(FRMSENHA);
end;

end.

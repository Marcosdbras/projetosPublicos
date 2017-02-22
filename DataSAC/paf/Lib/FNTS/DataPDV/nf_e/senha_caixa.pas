unit senha_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ExtDlgs, 
  CellEditors, jpeg,
  ExtCtrls, VrControls, VrButtons, AdvGlowButton;

type
  Tfrmsenha_caixa = class(TForm)
    Label1: TLabel;
    dscaixa_operador: TDataSource;
    ds: TDataSource;
    Image1: TImage;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TEdit;
    lfuncao: TLabel;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
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
  frmsenha_caixa: Tfrmsenha_caixa;

implementation

uses Principal, modulo_nfe;

{$R *.dfm}

procedure Tfrmsenha_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsenha_caixa.FormShow(Sender: TObject);
begin

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 order by codigo');
  frmmodulo.qrcaixa_operador.open;
  autenticado := false;
end;

procedure Tfrmsenha_caixa.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN EDIT2.SETFOCUS;
  IF KEY = #27 THEN BUTTON2CLICK(frmsenha_caixa);
end;

procedure Tfrmsenha_caixa.ComboBox1Exit(Sender: TObject);
begin
  combobox1.Text := frmprincipal.zerarcodigo(combobox1.text,6);
  if combobox1.Text <> '000000' then
  begin
      IF frmmodulo.qrcaixa_operador.LOCATE('codigo',COMBOBOX1.TEXT,[loCaseInsensitive]) THEN
      BEGIN
       IF COMBOBOX1.Text <> '000099' THEN
       BEGIN
         FRMMODULO.QRCAIXA_OPERADOR.Locate('CODIGO','000099',[loCaseInsensitive]);
         IF FRMMODULO.QRCAIXA_OPERADOR.FieldByName('SITUACAO').ASINTEGER = 1 THEN
         BEGIN
           frmmodulo.qrcaixa_operador.LOCATE('codigo',COMBOBOX1.TEXT,[loCaseInsensitive]);
           edit2.setfocus;
         END
         else
         begin

           APPLICATION.MessageBox('O Caixa Geral está fechado! Impossível acessar caixa individual!','Aviso',mb_ok+MB_ICONWARNING);
           combobox1.setfocus;
         end;
       END;
      END
      ELSE
      BEGIN
        IF APPLICATION.MESSAGEBOX('Caixa não cadastrado!            '+#13+'Deseja tentar outra vez?         ','Atenção',mb_yesno+mb_iconerror) = idYes then
        begin
          combobox1.text :='';
          combobox1.setfocus;
        end
        else
        begin
          button2click(frmsenha_caixa);
        end;
      END;
  end
  else
  begin
    combobox1.SetFocus;
  end;
end;

procedure Tfrmsenha_caixa.Edit2Exit(Sender: TObject);
VAR SENHA : STRING;
begin
  TRy
  SENHA := Frmprincipal.Cript('D',frmmodulo.qrcaixa_operador.fieldbyname('senha').asstring);
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
    end
    else
    begin
      button2click(frmsenha_caixa);
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
      button2click(frmsenha_caixa);
    end;
  END;

end;

procedure Tfrmsenha_caixa.BUTTON2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN TVrDemoButton(SENDER).ONCLICK(frmsenha_caixa);
end;

procedure Tfrmsenha_caixa.BUTTON1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN TVrDemoButton(SENDER).ONCLICK(frmsenha_caixa);
end;

procedure Tfrmsenha_caixa.BUTTON2Click(Sender: TObject);
begin
    autenticado := false;
    close;
end;

procedure Tfrmsenha_caixa.BUTTON1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmsenha_caixa.edit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BUTTON1.SETFOCUS;
  IF KEY = #27 THEN BUTTON2CLICK(frmsenha_caixa);
end;

end.

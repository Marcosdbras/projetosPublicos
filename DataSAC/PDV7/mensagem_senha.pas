unit mensagem_senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TFlatEditUnit, TFlatComboBoxUnit,
  DB, TFlatPanelUnit, jpeg;

type
  Tfrmmensagem_senha = class(TForm)
    Image1: TImage;
    bsim: TBitBtn;
    bnao: TBitBtn;
    Label1: TLabel;
    bok: TBitBtn;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    combobox1: TFlatComboBox;
    edit2: TFlatEdit;
    lfuncao: TLabel;
    procedure bsimClick(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure bnaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combobox1KeyPress(Sender: TObject; var Key: Char);
    procedure combobox1Exit(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensagem_senha: Tfrmmensagem_senha;
  AUTENTICADO : BOOLEAN;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmmensagem_senha.bsimClick(Sender: TObject);
begin
  if autenticado then
  begin
    resultado_mensagem := 'SIM';
    close;
  end
  else
  begin
    IF frmprincipal.msg('ERRO','Acesso não permitido!'+#13+'Tentar outra vez?',true,true,false,'') = 'SIM' THEN
    BEGIN
      COMBOBOX1.SETFOCUS;
    END
    ELSE
    BEGIN
      RESULTADO_MENSAGEM := 'NAO';
      close;
    END;
  end;


end;

procedure Tfrmmensagem_senha.bokClick(Sender: TObject);
begin
 resultado_mensagem := 'OK';
 close;
end;

procedure Tfrmmensagem_senha.bnaoClick(Sender: TObject);
begin
 resultado_mensagem := 'NAO';
 close;
end;

procedure Tfrmmensagem_senha.FormShow(Sender: TObject);
begin
    AUTENTICADO := FALSE;
    combobox1.CharCase := ecUpperCase;

    frmmodulo.qrUsuario.open;
    frmmodulo.qrUsuario.IndexFieldNames := 'usuario';
    frmmodulo.qrUsuario.first;
    ComboBox1.Items.clear;
    while not frmmodulo.qrUsuario.eof do
    begin
      IF frmmodulo.qrUsuario.fieldbyname('usuario').asstring <> '' THEN
      ComboBox1.Items.Add(frmmodulo.qrUsuario.fieldbyname('usuario').asstring);
      frmmodulo.qrUsuario.Next;
    end;
    combobox1.text := '';
    edit2.text := '';
    combobox1.setfocus;


end;

procedure Tfrmmensagem_senha.combobox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN EDIT2.SETFOCUS;
  IF KEY = #27 THEN BNAOCLICK(frmMENSAGEM_senha);
end;

procedure Tfrmmensagem_senha.combobox1Exit(Sender: TObject);
begin
  if combobox1.Text <> '' then
  begin

    IF frmmodulo.qrUsuario.LOCATE('usuario',COMBOBOX1.TEXT,[LOPARTIALKEY]) THEN
    BEGIN
      if frmmodulo.qrUsuario.FieldByName('nivel').asinteger < strtoint(copy(lfuncao.caption,1,1)) then
      begin
        if frmprincipal.msg('ERRO','Nível não permitido!'+#13+'Tentar outra vez?',true,true,false,'') = 'SIM' Then
        begin
          combobox1.text :='';
          combobox1.setfocus;
        end
        else
        begin
          bNAOclick(frmMENSAGEM_senha);
        end;
      end
      else
      begin
        frmmodulo.qrUsuario.open;
      end;
    END
    ELSE
    BEGIN
      if frmprincipal.msg('ERRO','Usuário não cadastrado!'+#13+'Tentar outra vez?',true,true,false,'') = 'SIM' Then
      begin
        combobox1.text :='';
        combobox1.setfocus;
      end
      else
      begin
        bnaoclick(frmMENSAGEM_senha);
      end;
    END;
  end
  else
  begin
    combobox1.SetFocus;
  end;
end;

procedure Tfrmmensagem_senha.edit2KeyPress(Sender: TObject; var Key: Char);
VAR SENHA : STRING;
begin
  if key = #13 then
  begin
  TRY
  SENHA := Frmprincipal.Cript('D',frmmodulo.qrUsuario.fieldbyname('senha').asstring);
  if edit2.text = SENHA then
  begin
      autenticado := true;
      RESULTADO_MENSAGEM := 'SIM';
      CLOSE;
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
      bnaoclick(frmMENSAGEM_senha);
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
      bnaoclick(frmMENSAGEM_senha);
    end;
  END;
  end;

  IF KEY = #27 THEN bnaoCLICK(frmMENSAGEM_senha);

end;

end.

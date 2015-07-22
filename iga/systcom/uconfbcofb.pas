unit uconfbcofb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmconfbcofb = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnldir: TPanel;
    Bevel2: TBevel;
    ScrollBox5: TScrollBox;
    Label62: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edicaminhobco: TEdit;
    edisenha: TEdit;
    btntestar: TButton;
    Label4: TLabel;
    ediuser_name: TEdit;
    Label3: TLabel;
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btntestarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfbcofb: Tfrmconfbcofb;

implementation
   uses uDados, uGeral, uprincipal;
{$R *.dfm}

procedure Tfrmconfbcofb.spdconfirmaClick(Sender: TObject);
var
  log: textfile;
  vardir:string;
begin
  vardir := extractfilepath(application.ExeName);

  AssignFile(log, vardir+'DataBaseName.inf');
  Rewrite(log,vardir+'DataBaseName.inf');
  Append(log);
  WriteLn(log, edicaminhobco.text);
  CloseFile(log);

  AssignFile(log, vardir+'User.inf');
  Rewrite(log,vardir+'User.inf');
  Append(log);
  WriteLn(log, ediuser_name.text);
  CloseFile(log);

  AssignFile(log, vardir+'UserPass.inf');
  Rewrite(log,vardir+'UserPass.inf');
  Append(log);
  WriteLn(log, EnDecryptString(edisenha.text,236));
  CloseFile(log);

  close;
end;

procedure Tfrmconfbcofb.FormShow(Sender: TObject);
var
  log: textfile;
  vardir, sDataBase, sUser_Name, sUserPass:string;
  linha: String;
begin
  vardir := extractfilepath(application.ExeName);

  sDataBase := lerarqtexto(vardir+'DataBaseName.inf');
  sUser_Name := lerarqtexto(vardir+'User.inf');
  sUserPass := EnDecryptString(lerarqtexto(vardir+'UserPass.inf'),236);


  edicaminhobco.Text := sDataBase;
  ediuser_name.Text  := sUser_Name;
  edisenha.Text := sUserPass;


end;

procedure Tfrmconfbcofb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmconfbcofb:=nil;
  form_ativo := '';
end;

procedure Tfrmconfbcofb.btntestarClick(Sender: TObject);
begin

  with frmdados do
    begin
      Sql_Dados.Connected := false;
      Sql_Dados.ConnectionName := 'UIB FireBird15 Connection';
      Sql_Dados.DriverName := 'UIB FireBird15';
      Sql_Dados.GetDriverFunc := 'getSQLDriverINTERBASE';
      Sql_Dados.LibraryName := 'dbexpUIBfire15.dll';
      Sql_Dados.VendorLib := 'fbclient.dll';
      Sql_Dados.Params.Values['DriverName'] := 'UIB FireBird15';
      Sql_Dados.Params.Values['DataBase'] := edicaminhobco.Text;
      Sql_Dados.Params.Values['User_Name'] := ediuser_name.Text;
      Sql_Dados.Params.Values['Password'] := edisenha.Text;
      Sql_Dados.Params.Values['SQLDialect'] := '3';
      Sql_Dados.Params.Values['ServerCharSet'] := 'WIN1252';

      try
        Sql_Dados.Connected := true;
        showmessage('Conexão efetivada com sucesso!!!');
      except
        showmessage('Conexão falhou!!!');
      end;
    end;
  //endth
end;

procedure Tfrmconfbcofb.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

end.

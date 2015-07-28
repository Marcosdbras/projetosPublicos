unit config_balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, registry;

type
  Tfrmconfig_balanca = class(TForm)
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cb_bal_porta: TComboBox;
    cb_bal_modelo: TComboBox;
    cb_bal_baudrate: TComboBox;
    cb_bal_databits: TComboBox;
    cb_bal_hand: TComboBox;
    cb_bal_stop: TComboBox;
    cb_bal_time_out: TEdit;
    cb_parity: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_balanca: Tfrmconfig_balanca;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmconfig_balanca.BitBtn1Click(Sender: TObject);
var Registro: TRegistry;
begin

  // Abrindo Registro do Windows para buscar configuracoes
  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;

  Registro.OpenKey('SOFTWARE',false);
  Registro.OpenKey('DataPDV',false);
  Registro.OpenKey('PDV',false);
  if Registro.OpenKey('Balanca',true) then
  begin
    Registro.WriteString('Modelo',inttostr(cb_bal_modelo.ItemIndex));
    Registro.WriteString('Handshaking',inttostr(cb_bal_hand.ItemIndex));
    Registro.WriteString('Parity',inttostr(cb_parity.ItemIndex));
    Registro.WriteString('Stopbits',inttostr(cb_parity.ItemIndex));
    Registro.WriteString('Porta',cb_bal_porta.Text);
    Registro.WriteString('Databits',cb_bal_databits.Text);
    Registro.WriteString('Baudrate',cb_bal_baudrate.Text);
    Registro.WriteString('Timeout',cb_bal_time_out.text);
  end;
  Registro.CloseKey;
  Registro.Free;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!','Aviso',
  mb_ok+MB_ICONINFORMATION);


  close;


end;

procedure Tfrmconfig_balanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig_balanca.FormShow(Sender: TObject);
var  Registro: TRegistry;
begin

//  bHabilita_msg := true;

  // Abrindo Registro do Windows para buscar configuracoes
  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE',false) then
  begin
     if Registro.OpenKey('DataPDV',false) then
     begin
       if Registro.openkey('PDV',false) then
       begin
         (*************** BALANCA ******************)
         if Registro.OpenKey('Balanca',false) then
         begin
           frmModulo.Balanca.Desativar;
           // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
           IF strtoint(Registro.ReadString('Modelo')) <> 0 THEN
           BEGIN
              cb_bal_modelo.itemindex :=  strtoint(Registro.ReadString('Modelo'));

             cb_bal_hand.itemindex :=  strtoint(Registro.ReadString('Handshaking')) ;

             cb_parity.itemindex := strtoint(Registro.ReadString('Parity'));

             cb_bal_stop.itemindex := strtoint(Registro.ReadString('Stopbits'));

             cb_bal_porta.text  := Registro.ReadString('Porta');

             cb_bal_databits.ItemIndex :=  strtoint(Registro.ReadString('Databits'));

             cb_bal_baudrate.ItemIndex :=  strtoint(Registro.ReadString('Baudrate'));

             cb_bal_time_out.text :=  Registro.ReadString('Timeout');
           END;
         end
         else
         begin
           application.messagebox('Houve falha na leitura do resgistro da Balança!'+
           ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
         Registro.CloseKey;
       end
       else
       begin
          application.messagebox('Houve falha na leitura do resgistro do PDV!'+
          ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       end;
     end
     else
     begin
       application.messagebox('Houve falha na leitura do registro de configurações!'+
       ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);

     end;
  end
  else
  begin
    application.messagebox('Houve falha na leitura do registro de configurações!'+
    ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
  end;
  Registro.Free;
end;

procedure Tfrmconfig_balanca.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.

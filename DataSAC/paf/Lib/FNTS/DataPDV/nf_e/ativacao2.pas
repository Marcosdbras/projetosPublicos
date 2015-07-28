unit ativacao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, TFlatPanelUnit, Collection,
  AdvShapeButton, AdvGlowButton, jpeg;

type
  Tfrmativacao2 = class(TForm)
    Label3: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label1: TLabel;
    label2: TFlatPanel;
    Bevel2: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lcodigo: TLabel;
    lempresa: TLabel;
    lcnpj: TLabel;
    Bevel5: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitbtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmativacao2: Tfrmativacao2;
  resultado : string;
  continuacao : boolean;

implementation

uses principal, modulo, Emitente;

{$R *.dfm}

procedure Tfrmativacao2.FormShow(Sender: TObject);
var X : STRING;
senha : integer;
begin

   lcodigo.Caption := frmmodulo.qremitenteCODIGO.AsString;
   lempresa.Caption := frmmodulo.qremitenteNOME.AsString;
   lcnpj.Caption := frmmodulo.qremitenteCNPJ.AsString;

   senha := ((strtoint(copy(timetostr(time),7,2)+copy(timetostr(time),1,2))*13)*8+16) ;
   label2.caption := inttostr(senha);
   resultado := inttostr(senha *19+31);
   X := Frmprincipal.Cript('C','20');
   
//   LABEL6.CAPTION := COPY(X,1,3)+resultado+COPY(X,4,3);
end;


procedure Tfrmativacao2.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmativacao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmativacao2.bitbtn1Click(Sender: TObject);
var
  dias, chave, chave_recebida , dias_chave_recebida: string;
  i : integer;
  datax : string;
begin
  TRY

    chave := edit1.text;
    chave_recebida := FRMPRINCIPAL.CRIPT('D',EDIT1.TEXT);
    dias_chave_recebida := copy(chave_recebida,11,3);

    i := length(chave);
    dias := copy(chave,1,3)+copy(chave,i-2,3);

    dias := frmprincipal.Cript('D',dias);

    chave := copy(chave,4,i-6);

    if resultado = chave then

      begin

        ativa_sistema := true;
        qtde_dias_ativacao := strtoint(dias);

        if qtde_dias_ativacao <> 0 then
          begin
            FRMMODULO.qremitente.Open;
            if dias_chave_recebida = '' then
              begin
                if frmprincipal.zerarcodigo(FRMMODULO.qremitente.FIELDBYNAME('DIA_VENCIMENTO_CHAVE').AsString,2) = '00' then
                  datax := '15'+copY(datetostr(incmonth(date,1)),3,8)
                else
                  datax := frmprincipal.zerarcodigo(FRMMODULO.QREMITENTE.FIELDBYNAME('DIA_VENCIMENTO_CHAVE').ASSTRING,2)+copY(datetostr(incmonth(date,1)),3,8);
              end
            else
              begin
                datax := datetostr(date+strtoint(dias_chave_recebida));
              end;
            qtde_dias_ativacao := trunc(strtodate(datax)-date);

            application.messagebox('Sistema Ativado com sucesso!','DataSAC!',mb_ok+MB_ICONINFORMATION);
            continuacao := false;

            frmemitente := tfrmemitente.create(self);
            frmemitente.showmodal;

            if not continuacao then application.terminate;
            close;
          end
        else
          begin
            if dias = '00' then
              begin
                application.messagebox('Sistema Ativado com sucesso!','DataSAC',mb_ok+MB_ICONINFORMATION);
                continuacao := false;

                frmemitente := tfrmemitente.create(self);
                frmemitente.showmodal;

                if not continuacao then application.terminate;
                close;

              end
            else
              application.messagebox('Chave inválida!','Atenção',mb_ok+MB_ICONERROR);
          end;
      end
    else
      begin
        application.messagebox('Verifique se a Chave passada foi de Instalação!','Atenção',mb_ok+MB_ICONERROR);
      end;
  EXCEPT
    application.messagebox('Chave inválida!','Atenção',mb_ok+MB_ICONERROR);
  END;
end;

end.

unit Tef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, AdvGlowButton, ExtCtrls;

type
  TfrmTef = class(TForm)
    GroupBox1: TGroupBox;
    check_visa: TRadioButton;
    check_tecban: TRadioButton;
    GroupBox2: TGroupBox;
    check_adm: TRadioButton;
    check_cancel: TRadioButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Ok1: TMenuItem;
    Cancelar1: TMenuItem;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTef: TfrmTef;

implementation

uses unCancelarTEF, modulo, principal, unFuncoesTEF;
{$R *.dfm}

procedure TfrmTef.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmTef.bgravarClick(Sender: TObject);
var f : textfile;
begin
  if check_adm.Checked then
  begin
    if check_visa.Checked then
    begin
      IF USA_TEF THEN
      BEGIN
        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'REDECARD');
        closefile(f);
        iTEFTecban := 0;
        TEFLimpaVariaveis;
        TEFModoAdministrativo;
        if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
            TEFNaoConfirmaOperacao;
        end;
      END
      ELSE
      BEGIN
        application.messagebox('ADM - O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
      END;
    end
    else
    begin
        if check_tecban.Checked then
        begin
          if usa_tef then
          begin
            assignfile(f,sTEFKoneKPath+'gp.tmp');
            rewrite(f);
            writeln(f,'TECBAN');
            closefile(f);
            iTEFTecban := 1;
            TEFLimpaVariaveis;
            TEFModoAdministrativo;
            if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
            begin
              TEFImprimeTransacao('R');
              if sTEFRetorno = '0' then
                TEFFechaOperacao
              else
                TEFNaoConfirmaOperacao;
            end;
          END
          ELSE
          BEGIN
            application.messagebox('ADM - O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
          END;
        end;
    end;
  end
  else
  begin
      if check_cancel.Checked then
      begin
        if check_visa.Checked then
        begin
          if usa_tef then
          begin
            FRMCANCELARTEF := TFRMCANCELARTEF.CREATE(SELF);
            FRMCANCELARTEF.SHOWMODAL;
          END
          ELSE
          BEGIN
            application.messagebox('CNC - O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
          END;
        end;
        if check_tecban.Checked then
        begin
          if usa_tef then
          begin
            FRMCANCELARTEF := TFRMCANCELARTEF.CREATE(SELF);
            FRMCANCELARTEF.SHOWMODAL;
          END
          ELSE
          BEGIN
            application.messagebox('CNC - O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
          END;

        end;
      end;
  end;

end;

procedure TfrmTef.FormShow(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure TfrmTef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

end.

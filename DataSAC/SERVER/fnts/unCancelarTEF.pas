unit unCancelarTEF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rxtooledit, rxcurredit, Mask, Menus, ExtCtrls,
  AdvGlowButton;

type
  TfrmCancelarTEF = class(TForm)
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edNSUTransacao: TEdit;
    Label1: TLabel;
    cboRede: TComboBox;
    eddatatransacao: TMaskEdit;
    edvalortotalc: TRxCalcEdit;
    edhoratransacao: TMaskEdit;
    Panel1: TPanel;
    bsim: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Ok1: TMenuItem;
    Cancelar1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure bsimClick(Sender: TObject);
    procedure cboRedeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelarTEF: TfrmCancelarTEF;

implementation

uses unFuncoesTEF;

{$R *.dfm}

procedure TfrmCancelarTEF.FormShow(Sender: TObject);
begin
  cboRede.SetFocus;
end;

procedure TfrmCancelarTEF.bsimClick(Sender: TObject);
var f : textfile;
begin



    if edNSUTransacao.Text <> '' then
    begin
      itefTecban := 0;
      TEFLimpaVariaveis;
      sTEFValorTotal := FORMATFLOAT('########0.00',edValorTotalC.VALUE);
      sTEFNomeDaRede := cboRede.Text;
      sTEFNSUTransacao := edNSUTransacao.Text;
      sTEFDataTransacao := edDataTransacao.Text;
      sTEFHoraTransacao := edHoraTransacao.Text;
      IF POS(',',STEFVALORTOTAL) > 0 THEN DELETE(STEFVALORTOTAL,POS(',',STEFVALORTOTAL),1);
      IF (sTEFNomeDaRede = 'VISANET') THEN
      BEGIN
        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);
        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'VISANET');
        closefile(f);
      END;

      IF (sTEFNomeDaRede = 'AMEX') THEN
      BEGIN
        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);
        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'VISANET');
        closefile(f);
      END;


      IF (sTEFNomeDaRede = 'REDECARD') THEN
      BEGIN
//        DELETE(STEFDATATRANSACAO,7,2);
//        DELETE(STEFHORATRANSACAO,6,3);

        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);

        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'REDECARD');
        closefile(f);
      END;
      IF sTEFNomeDaRede = 'TECBAN' THEN
      BEGIN
        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);
        iTEFTecban := 1;



        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'TECBAN');
        closefile(f);
      END;

      if iTEFTecban = 0 then
      begin
        sTEFPath := 'C:\TEF_DIAL\';
      end
      else
      begin
        sTEFPath := 'C:\TEF_DISC\';
      end;


      TEFCancelaTransacao;
      if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
            TEFNaoConfirmaOperacao;
        end;
    end
  else
    ShowMessage('Número da transação inválido');
  close;

end;

procedure TfrmCancelarTEF.cboRedeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      bsim.setfocus;
    end
end;

procedure TfrmCancelarTEF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCancelarTEF.bcancelarClick(Sender: TObject);
begin
  close;
end;

end.

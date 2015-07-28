unit TEF_Cancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolEdit, CurrEdit, Mask, ExtCtrls, Menus,
  AdvMenus, ComCtrls;

type
  TfrmTEF_cancelamento = class(TForm)
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edNSUTransacao: TEdit;
    Label1: TLabel;
    cboRede: TComboBox;
    edvalortotalc: TRxCalcEdit;
    edhoratransacao: TMaskEdit;
    Panel1: TPanel;
    BSIM: TButton;
    DXBUTTON1: TButton;
    eddatatransacao: TDateEdit;
    Bevel1: TBevel;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure bsimClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure cboRedeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure edNSUTransacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTEF_cancelamento: TfrmTEF_cancelamento;

implementation

uses unTEF, menu_fiscal;

{$R *.dfm}

procedure TfrmTEF_cancelamento.FormShow(Sender: TObject);
begin
  cboRede.SetFocus;
end;

procedure TfrmTEF_cancelamento.bsimClick(Sender: TObject);
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
        assignfile(f,sTEFTemp_Path+'gp.tmp');
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
        assignfile(f,sTEFTemp_Path+'gp.tmp');
        rewrite(f);
        writeln(f,'VISANET');
        closefile(f);
      END;


      IF (sTEFNomeDaRede = 'REDECARD') THEN
      BEGIN
        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);

        assignfile(f,sTEFTemp_Path+'gp.tmp');
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
        assignfile(f,sTEFTemp_Path+'gp.tmp');
        rewrite(f);
        writeln(f,'TECBAN');
        closefile(f);
      END;

      IF sTEFNomeDaRede = 'HIPERCARD' THEN
      BEGIN
        DELETE(STEFDATATRANSACAO,3,1);
        DELETE(STEFDATATRANSACAO,5,1);
        DELETE(STEFHORATRANSACAO,3,1);
        DELETE(STEFHORATRANSACAO,5,1);
        iTEFTecban := 2;
        assignfile(f,sTEFTemp_Path+'gp.tmp');
        rewrite(f);
        writeln(f,'HIPERCARD');
        closefile(f);
      END;





      case iTEFTecban of
      0 : sTEFPath := 'C:\TEF_DIAL\';
      1 : sTEFPath := 'C:\TEF_DISC\';
      2 : sTEFPath := 'C:\HiperTEF\HiperLINK\';
      end;


      TEFCancelaTransacao;
      if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
          begin
            TEFVerificaGerenciadorAtivo;
            TEFNaoConfirmaOperacao;
          end;
        end;
    end
  else
    application.messagebox('Número de transação inválido!','Erro',mb_ok+mb_iconerror);
  close;

end;

procedure TfrmTEF_cancelamento.dxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTEF_cancelamento.cboRedeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edNSUTransacao.setfocus;
end;

procedure TfrmTEF_cancelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTEF_cancelamento.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmTEF_cancelamento.edNSUTransacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.

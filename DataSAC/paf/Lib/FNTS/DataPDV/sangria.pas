unit sangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, Menus, AdvMenus, ComCtrls;

type
  TfrmSangria = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    ed_valor: TRzNumericEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    StatusBar1: TStatusBar;
    MenuFiscal1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSangria: TfrmSangria;

implementation

uses principal, modulo, unECF, funcoes, menu_fiscal;

{$R *.dfm}

procedure TfrmSangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSangria.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSangria.bt_okClick(Sender: TObject);
begin
  if ed_valor.value <= 0 then
  begin
    Application.MessageBox('Favor informar um valor MAIOR que ZERO!','Erro',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;

  repeat
    sMsg := cECF_Sangria(iECF_Modelo,ed_valor.Value);

    // extrair do ecf
    sNumero_cupom := cECF_COO_Nao_Fiscal(iECF_Modelo);
    if sMsg <> 'OK' then
    begin
      if application.MessageBox(pansichar('Erro a lançar a sangria no ECF!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                          idno then
                                                break;
    end
    else
    begin
      // extrair o numero dos contadores
      sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
      with frmModulo do
      begin
        spNao_Fiscal.close;
        spNao_Fiscal.ParamByName('codigo').asstring := codifica_cupom;
        spNao_Fiscal.ParamByName('ecf').AsString := sECF_Serial;
        spNao_Fiscal.ParamByName('data').asdatetime := dData_Sistema;
        spNao_Fiscal.ParamByName('indice').asstring := sIndice_Sangria;
        spNao_Fiscal.ParamByName('descricao').asstring := 'SANGRIA';
        spNao_Fiscal.ParamByName('valor').asfloat := ed_valor.value;
        spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
        spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
        spNao_fiscal.ParamByName('GNF').asstring := sGNF;
        spNao_fiscal.ParamByName('CDC').Clear;
        spNao_fiscal.ParamByName('GRG').clear;
        spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
        spNao_Fiscal.Prepare;
        spNao_Fiscal.Execute;
      end;
    end;
  until sMsg = 'OK';

  close;
end;

procedure TfrmSangria.Cancelar1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmSangria.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.

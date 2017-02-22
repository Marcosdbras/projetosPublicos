unit suprimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, Menus, AdvMenus, ComCtrls;

type
  TfrmSuprimento = class(TForm)
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
    list_Forma: TListBox;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    MenuFiscal1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure list_FormaKeyPress(Sender: TObject; var Key: Char);
    procedure MenuFiscal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuprimento: TfrmSuprimento;

implementation

uses principal, modulo, unECF, funcoes, menu_fiscal;

{$R *.dfm}

procedure TfrmSuprimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSuprimento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSuprimento.bt_okClick(Sender: TObject);
begin
  if ed_valor.value <= 0 then
  begin
    Application.MessageBox('Favor informar um valor MAIOR que ZERO!','Erro',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;
  if list_forma.ItemIndex < 0 then
  begin
    Application.MessageBox('Favor selecionar uma forma!','Erro',mb_ok+mb_iconerror);
    list_forma.setfocus;
    exit;
  end;


  repeat
    // extrair o coo

    sMsg := cECF_Suprimento(iECF_Modelo,ed_valor.Value,
                            list_forma.Items.Strings[list_Forma.ItemIndex]);

    sNumero_cupom := cECF_COO_Nao_Fiscal(iECF_Modelo);

    if sMsg <> 'OK' then
    begin
      if application.MessageBox(pansichar('Erro a lançar o suprimento no ECF!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                          idno then
                                                break;
    end
    else
    begin
      // extrair o gnf
      sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);

      with frmModulo do
      begin
        spNao_Fiscal.close;
        spNao_fiscal.parambyname('codigo').asstring := codifica_cupom;
        spNao_Fiscal.ParamByName('ecf').AsString := sECF_Serial;
        spNao_Fiscal.ParamByName('data').asdatetime := dData_Sistema;
        spNao_Fiscal.ParamByName('indice').asstring := sIndice_Suprimento;
        spNao_Fiscal.ParamByName('descricao').asstring := 'SUPRIMENTO';
        spNao_Fiscal.ParamByName('valor').asfloat := ed_valor.value;
        spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
        spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
        spNao_fiscal.ParamByName('GNF').asstring := sGNF;
        spNao_fiscal.ParamByName('CDC').Clear;
        spNao_fiscal.ParamByName('GRG').clear;
        spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
        spNao_Fiscal.Prepare;
        spNao_Fiscal.Execute;

        spCupom_Forma.close;
        spCupom_Forma.ParamByName('codigo').asstring     := codifica_forma(1);
        spCupom_Forma.ParamByName('cod_cupom').asstring  := codifica_cupom;
        spCupom_Forma.ParamByName('forma').asstring      := list_forma.Items.Strings[list_Forma.ItemIndex];
        spCupom_Forma.ParamByName('valor').asfloat       := ed_valor.value;
        spCupom_Forma.ParamByName('prestacao').asinteger := 1;
        spCupom_Forma.ParamByName('tipo').asstring       := 'SUPRIMENTO';
        spCupom_Forma.Prepare;
        spCupom_Forma.Execute;

      end;
    end;
  until sMsg = 'OK';

  close;
end;

procedure TfrmSuprimento.Cancelar1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmSuprimento.FormShow(Sender: TObject);
begin
  list_forma.Clear;
  frmmodulo.tbforma_pgto.open;
  frmmodulo.tbForma_Pgto.First;
  while not frmModulo.tbForma_Pgto.Eof do
  begin
    sMsg := TrimLeft(TrimRight(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring));
    if (sMsg = '') or
       (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
       (ansiuppercase(sMsg) = 'TROCO') Then
    begin
       // nao copiar
    end
    else
    begin
      list_Forma.Items.Add(sMsg);
    end;
    frmModulo.tbForma_Pgto.Next;
  end;
end;

procedure TfrmSuprimento.list_FormaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;

procedure TfrmSuprimento.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.

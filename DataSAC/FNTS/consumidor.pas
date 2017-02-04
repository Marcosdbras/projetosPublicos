unit consumidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, Buttons, TFlatPanelUnit, Menus,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton;

type
  TfrmConsumidor = class(TForm)
    Label1: TLabel;
    enome: TEdit;
    Label2: TLabel;
    eendereco: TEdit;
    Label3: TLabel;
    ecidade: TEdit;
    Label4: TLabel;
    euf: TEdit;
    Label5: TLabel;
    ecpf: TEdit;
    FlatPanel1: TFlatPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ViewSplit1: TViewSplit;
    PopupMenu1: TPopupMenu;
    LocalizarCliente1: TMenuItem;
    BitBtn3: TBitBtn;
    Cancelar1: TMenuItem;
    qrcontasreceber: TZQuery;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumidor: TfrmConsumidor;

implementation

uses modulo, loc_cliente, principal, venda_fechamento;

{$R *.dfm}

procedure TfrmConsumidor.BitBtn2Click(Sender: TObject);
var texto : pchar;

begin
  if enome.text = '' then
  begin
    consumidor_nome := 'CLIENTE ESPECIAL';
    consumidor_endereco := '';
    consumidor_cidade := '';
    consumidor_uf := '';
    consumidor_cpf := '';
  end
  else
  begin
    consumidor_nome := enome.Text;
    consumidor_endereco := eendereco.text;
    consumidor_cidade := ecidade.Text;
    consumidor_uf := euf.text;
    consumidor_cpf := ecpf.text;
  end;


  if CODCLIENTE <> '' then
  begin

    FRMMODULO.QRCONFIG_complus.OPEN;
    IF FRMMODULO.QRCONFIG_complus.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
      IF FRMVENDA_FECHAMENTO.rcrediario.VALUE > 0 THEN
      BEGIN
        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
        qrcontasreceber.Open;
        limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - qrCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
        IF frmvenda_fechamento.rcrediario.Value > limite_disponivel then
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',limite_disponivel)+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              close;
              exit;
            end;
          end
          else
          begin
            close;
            exit;
          end;
        END;
      END;
    END;
  end;





  sel_cliente := true;
  CLOSE;
end;

procedure TfrmConsumidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmConsumidor.BitBtn1Click(Sender: TObject);
begin

  


  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;

  if codcliente <> '' then
  begin
    enome.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    eendereco.text := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    ecidade.text := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
    euf.text := frmmodulo.qrcliente.fieldbyname('uf').asstring;
    ecpf.text := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
  end;
end;

procedure TfrmConsumidor.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmConsumidor.enomeExit(Sender: TObject);
begin


  tedit(sender).color := clwindow;

  if enome.text = '' then bitbtn2.setfocus;


end;

procedure TfrmConsumidor.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmConsumidor.BitBtn3Click(Sender: TObject);
begin
  sel_cliente := false;
  codcliente := '';
  close;
end;

end.

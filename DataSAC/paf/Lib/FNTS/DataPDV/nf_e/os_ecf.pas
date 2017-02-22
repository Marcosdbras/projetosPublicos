unit os_ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit, Menus,
  DB;

type
  Tfrmos_ecf = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    FlatPanel1: TFlatPanel;
    Image1: TImage;
    ViewSplit1: TViewSplit;
    FlatPanel2: TFlatPanel;
    bfechar: TBitBtn;
    ViewSplit2: TViewSplit;
    GroupBox1: TGroupBox;
    lecf: TLabel;
    lmodelo: TLabel;
    lversao: TLabel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DataSource1: TDataSource;
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_ecf: Tfrmos_ecf;

implementation

uses modulo, ecf, principal, os_ecf_leituraMemoria;

{$R *.dfm}

procedure Tfrmos_ecf.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmos_ecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmos_ecf.BitBtn1Click(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
ncupom : string;
begin
  TRY
    IF FRMMODULO.QROS.FieldByName('CUPOMFISCAL').ASINTEGER = 1 THEN
    BEGIN
      if APPLICATION.MESSAGEBOX('Esta O.S. já foi emitida um cupom fiscal! Deseja continuar?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
      begin
        exit;
      end;
    end;

      if not frmmodulo.qrcliente.Locate('codigo',frmmodulo.QROS.fieldbyname('CODCLIENTE').asstring,[loCaseInsensitive]) then
      begin
        showmessage('Cliente não econtrado! O procedimento foi abortado!');
        exit;
      end;

      frmmodulo.qrproduto_mov.close;
      frmmodulo.qrproduto_mov.SQL.Clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.QROS.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.QROS.fieldbyname('codcliente').asstring+''' and movimento = 9');
      frmmodulo.qrproduto_mov.Open;
      frmmodulo.qrproduto_mov.First;
      frmmodulo.qrproduto.open;
      ncupom := ecf_numero_cupom(ECF_MODELO);
      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;



      while not frmmodulo.qrproduto_mov.Eof do
      begin
        if frmmodulo.qrproduto.Locate('codigo',frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring,[loCaseInsensitive]) then
        begin
          desconto_acrescimo := frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat - frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';
          
          ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  FRMPRINCIPAL.texto_justifica(frmprincipal.RemoveAcentos(frmmodulo.qrproduto.fieldbyname('PRODUTO').asstring),29,' ','E'),
                                  frmmodulo.qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0);



        end;
        frmmodulo.qrproduto_mov.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)
      desconto_acrescimo := frmmodulo.QROS.fieldbyname('desconto').asfloat -
                            frmmodulo.QROS.fieldbyname('acrescimo').asfloat;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
      if frmmodulo.QROS.fieldbyname('meio_dinheiro').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmmodulo.QROS.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.QROS.fieldbyname('meio_chequeav').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmmodulo.QROS.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.QROS.fieldbyname('meio_chequeap').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmmodulo.QROS.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.QROS.fieldbyname('meio_cartaocred').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.QROS.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.QROS.fieldbyname('meio_cartaodeb').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.QROS.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.QROS.fieldbyname('meio_crediario').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmmodulo.QROS.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)









      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,48,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

    FRMMODULO.QROS.EDIT;
    FRMMODULO.QROS.FieldByName('CUPOMFISCAL').ASINTEGER := 1;
    frmmodulo.QROS.fieldbyname('NUMERO_cupom_fiscal').asstring :=   ncupom;
    FRMMODULO.QROS.Post;
    FRMMODULO.Conexao.Commit;
  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;
  close;
end;

procedure Tfrmos_ecf.BitBtn3Click(Sender: TObject);
begin
  ecf_leitura_x(ecf_modelo);
end;

procedure Tfrmos_ecf.BitBtn5Click(Sender: TObject);
var texto : pansichar;
begin
  if frmprincipal.autentica('Redução Z',nivel_exclusao) then
  begin
    texto := pansichar('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'+#13+'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto,'Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmos_ecf.BitBtn4Click(Sender: TObject);
begin
  frmOS_ecf_leituramemoria := tfrMOS_ecf_leituramemoria.create(self);
  frmOS_ecf_leituramemoria.showmodal;

end;

procedure Tfrmos_ecf.BitBtn2Click(Sender: TObject);
var texto : pansichar;
i : integer;
begin

  if frmprincipal.autentica('Cancel.Cupom',4) then
  begin

    i := strtoint(ecf_numero_cupom(ecf_modelo));
    i := i - 1;
    texto := pansichar(frmprincipal.zerarcodigo(inttostr(i),6));
    texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');
    if application.messagebox(texto,'Cancelamento de Cupom',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
       ecf_cancela_cupom(ecf_modelo,'');
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmos_ecf.FormShow(Sender: TObject);
begin
  lecf.Caption := ecf_modelo;
  lmodelo.Caption := '';
  lversao.Caption := '';
end;

end.

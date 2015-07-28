unit venda_farma_final;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrControls, VrButtons, StdCtrls, Collection, ExtCtrls,
  TFlatPanelUnit, Menus, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, Wwdbigrd, Wwdbgrid, Mask, ToolEdit, CurrEdit, wwdbedit,
  Wwdotdot, Wwdbcomb, AdvGlowButton;

type
  Tfrmvenda_farma_final = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    PDINHEIRO: TFlatPanel;
    PNOME: THeaderView;
    LNOME: TLabel;
    PX: TFlatPanel;
    Label2: TLabel;
    edinheiro_cliente: TEdit;
    Label3: TLabel;
    edinheiro_endereco: TEdit;
    Label4: TLabel;
    edinheiro_cidade: TEdit;
    edinheiro_uf: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edinheiro_codigo: TEdit;
    Label8: TLabel;
    edinheiro_cpf: TEdit;
    N1: TMenuItem;
    LocalizarCliente1: TMenuItem;
    QUERY1: TZQuery;
    PopupMenu2: TPopupMenu;
    fdinheiro: TMenuItem;
    pcrediario: TFlatPanel;
    HeaderView2: THeaderView;
    Label10: TLabel;
    FlatPanel5: TFlatPanel;
    Label15: TLabel;
    ecrediario_codcliente: TEdit;
    bcrediario_cliente: TBitBtn;
    ecrediario_cliente: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    RQTDE: TRxCalcEdit;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    dsvenda_contasreceber: TDataSource;
    combor_retirado: TwwDBComboBox;
    fcrediario: TMenuItem;
    pconvenio: TFlatPanel;
    HeaderView3: THeaderView;
    Label13: TLabel;
    FlatPanel7: TFlatPanel;
    Label16: TLabel;
    econvenio_codcliente: TEdit;
    bconvenio_cliente: TBitBtn;
    econvenio_cliente: TEdit;
    Label17: TLabel;
    convenio_combo: TwwDBComboBox;
    FlatPanel4: TFlatPanel;
    Label14: TLabel;
    Label19: TLabel;
    econvenio_codconvenio: TEdit;
    econvenio_convenio: TEdit;
    rconvenio_desconto: TRxCalcEdit;
    query2: TZQuery;
    CadastrarDocumento1: TMenuItem;
    Label1: TLabel;
    rconvenio_liquido: TRxCalcEdit;
    query3: TZQuery;
    qrcontasreceber: TZQuery;
    Panel1: TPanel;
    rchequeap: TAdvGlowButton;
    rchequeav: TAdvGlowButton;
    rconvenio: TAdvGlowButton;
    rcrediario: TAdvGlowButton;
    rdinheiro: TAdvGlowButton;
    rcartaod: TAdvGlowButton;
    rcartaoc: TAdvGlowButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel3: TPanel;
    Label9: TLabel;
    FlatPanel10: TFlatPanel;
    lcliente_limite: TLabel;
    Bevel3: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel4: TBevel;
    bitbtn3: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    Bevel5: TBevel;
    Bevel6: TBevel;
    bitbtn2: TAdvGlowButton;
    bgrava_fiscal: TButton;
    bgerar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure edinheiro_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure edinheiro_rgKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure edinheiro_codigoEnter(Sender: TObject);
    procedure edinheiro_clienteExit(Sender: TObject);
    procedure edinheiro_rgExit(Sender: TObject);
    procedure edinheiro_codigoExit(Sender: TObject);
    procedure edinheiro_enderecoExit(Sender: TObject);
    procedure fdinheiroClick(Sender: TObject);
    procedure bcrediario_clienteClick(Sender: TObject);
    procedure ecrediario_codclienteExit(Sender: TObject);
    procedure combor_retiradoEnter(Sender: TObject);
    procedure combor_retiradoExit(Sender: TObject);
    procedure RQTDEKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure fcrediarioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bconvenio_clienteClick(Sender: TObject);
    procedure econvenio_codclienteExit(Sender: TObject);
    procedure convenio_comboKeyPress(Sender: TObject; var Key: Char);
    procedure CadastrarDocumento1Click(Sender: TObject);
    procedure edinheiro_cpfKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton5Enter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocEnter(Sender: TObject);
    procedure rcartaodEnter(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure rcartaocClick(Sender: TObject);
    procedure rcartaodClick(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_farma_final: Tfrmvenda_farma_final;
  DESCONTO_TOTAL : REAL;
  numero_cupom : string;

implementation

uses xloc_cliente, modulo, venda_farma_fechamento, principal, venda_farma,
  xloc_convenio, ecf, venda_farma_impressao, Math;

{$R *.dfm}

procedure Tfrmvenda_farma_final.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure Tfrmvenda_farma_final.FormShow(Sender: TObject);
begin
  wwdbgrid1.DataSource := dsvenda_contasreceber;
  dsvenda_contasreceber.DataSet := frmvenda_farma.qrvenda_contasreceber;

    frmvenda_farma.refresh;

    wwdbgrid1.DataSource := dsvenda_contasreceber;

        FRmvenda_farma.qrvenda_contasreceber.close;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('delete from cl00002 where  terminal = '''+numero_terminal+'''');
        FRmvenda_farma.qrvenda_contasreceber.execsql;


        FRmvenda_farma.qrvenda_contasreceber.close;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+''' order by prestacao');
        FRmvenda_farma.qrvenda_contasreceber.open;

    frmmodulo.qrcaixa_operador.Open;
    frmmodulo.qrcaixa_operador.Locate('codigo','000099',[loCaseInsensitive]);

    pdinheiro.Align := alclient;
    pcrediario.Align := alclient;
    pconvenio.Align := alclient;

    numero_cupom := ecf_numero_cupom(ECF_MODELO);

    rdinheiro.setfocus;
end;

procedure Tfrmvenda_farma_final.BGRAVARClick(Sender: TObject);
var
texto : pansichar;
Data: TDateTime;
dia, mes, ano: Word;
dias : integer;

begin




  if rcrediario.down then
  begin
     if ecrediario_codcliente.Text = '' then
    begin
      application.messagebox('Favor informar o cliente!','Erro',mb_ok+mb_iconerror);
      ecrediario_codcliente.setfocus;
      exit;
    end;
    if frmvenda_farma.qrvenda_contasreceber.recordcount = 0 then
    begin
      application.messagebox('Favor gerar as prestações!','Erro',mb_ok+mb_iconerror);
      rqtde.setfocus;
      exit;

    end;

  end;
  if rconvenio.down then
  begin

    if econvenio_codcliente.Text = '' then
    begin
      application.messagebox('Favor informar o cliente!','Erro',mb_ok+mb_iconerror);
      econvenio_codcliente.setfocus;
      exit;
    end;

  end;





 if (rcrediario.Down) or (rchequeav.Down) or (rchequeap.down) or (rconvenio.down) then
 begin

   frmmodulo.qrcliente.close;
   frmmodulo.qrcliente.SQL.clear;
   if rcrediario.down then
     frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+ecrediario_codcliente.text+'''');

   if rconvenio.down then
     frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+econvenio_codcliente.text+'''');

   if (rchequeav.down) or (rchequeap.down) then
     frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+edinheiro_codigo.text+'''');

   frmmodulo.qrcliente.open;
   

   qrcontasreceber.close;
   qrcontasreceber.sql.clear;
   qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
   qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
   qrcontasreceber.Open;
   if verifica_prestacao_atrazo = '1' then // prestação em atrazo
   begin
     while not qrcontasreceber.Eof do
     begin
       dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
       if dias >= frmmodulo.qrconfig.FieldByName('contasreceber_bloqueio').AsInteger then
       begin
         texto := pansichar('Cliente com Prestação vencida a ' + FloatToStr(dias)+' Dias!, Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
           if not frmPrincipal.autentica('Liberar venda',4) then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             BGRAVAR.SetFocus;
             exit;
           end;
         end
         else
         begin
           BGRAVAR.SetFocus;
           exit;
         end;
         Break;
       end;
       qrcontasreceber.Next;
     end;
   end;

   FRMMODULO.QRCONFIG.OPEN;
   IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
   BEGIN
     if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3 then
     begin
       application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
       bgravar.setfocus;
       exit;
     end;
     if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2 then
     begin
        texto := pansichar('Cliente está com cadastro em observação: '+#13+
                 frmmodulo.qrcliente.fieldbyname('obs1').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs2').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs3').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs4').asstring+#13+
                 ''+#13+
                 'Deseja prosseguir com a venda?');


       if application.messagebox(Texto,'Crédito em Observação',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
       begin
         BGRAVAR.setfocus;
         exit;
       end;
     end;

     if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 4 then
     begin
       texto := pansichar('Cliente INATIVO!, Deseja continuar?');
       if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
       begin
         if not frmPrincipal.autentica('Liberar venda',4) then
         begin
           application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
           exit;
         end;
       end;
     end;
     if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5 then
     begin
       application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
       exit;
     end;
     if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
     begin
       IF frmvenda_farma_fechamento.rtotal.Value > limite_disponivel  THEN
       BEGIN
         texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
           if not frmPrincipal.autentica('Liberar venda',4) then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             BGRAVAR.SetFocus;
             exit;
           end;
         end
         else
         begin
           BGRAVAR.SetFocus;
           exit;
         end;
       END;
     end;
   END;
 end;



  if rconvenio.down then
    begin
        FRmvenda_farma.qrvenda_contasreceber.close;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('delete from cl00002 where  terminal = '''+numero_terminal+'''');
        FRmvenda_farma.qrvenda_contasreceber.ExecSQL;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+''' order by prestacao');
        FRmvenda_farma.qrvenda_contasreceber.open;

        FRmvenda_farma.qrvenda_contasreceber.Insert;
        FRmvenda_farma.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  1;
        FRmvenda_farma.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME,1);
        FRmvenda_farma.qrvenda_contasreceber.fieldbyname('valor').asfloat := rconvenio_liquido.Value;
        FRmvenda_farma.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CONVENIO';
        frmvenda_farma.qrvenda_contasreceber.FieldByName('documento').asstring := frmvenda_farma.lvenda_codigo.Caption;
        frmvenda_farma.qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;

        FRmvenda_farma.qrvenda_contasreceber.post;

        FRmvenda_farma.qrvenda_contasreceber.Refresh;
    end;

  DESCONTO_TOTAL := 0;
  IF rconvenio_desconto.value+frmvenda_farma_fechamento.rdesconto1.value > 0 THEN
  BEGIN
    DESCONTO_TOTAL :=  (rconvenio_desconto.value+frmvenda_farma_fechamento.rdesconto1.value)/100;
  END;

  IF RDINHEIRO.down then fdinheiroClick(frmvenda_farma_final);
  IF Rchequeav.down then fdinheiroClick(frmvenda_farma_final);
  IF Rchequeap.down then fdinheiroClick(frmvenda_farma_final);
  IF Rcartaoc.down then fdinheiroClick(frmvenda_farma_final);
  IF Rcartaod.down then fdinheiroClick(frmvenda_farma_final);
  IF Rcrediario.down then fcrediarioClick(frmvenda_farma_final);
  IF Rconvenio.down then fcrediarioClick(frmvenda_farma_final);








  FRMMODULO.Conexao.Commit;




  frmvenda_farma_impressao := Tfrmvenda_farma_impressao.CREATE(SELF);
  frmvenda_farma_impressao.SHOWMODAL;


  nova_venda := true;
  close;
  frmvenda_farma_fechamento.CLOSE;
  frmvenda_farma.CLOSE;






end;

procedure Tfrmvenda_farma_final.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;
procedure Tfrmvenda_farma_final.edinheiro_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmvenda_farma_final.edinheiro_rgKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF KEY = #13 THEN BGRAVARClick(FRMVENDA_FARMA_FINAL);
end;

procedure Tfrmvenda_farma_final.BitBtn3Click(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    if PDINHEIRO.Visible then
    begin
      Edinheiro_codigo.text := resultado_pesquisa1;
      Edinheiro_cliente.text := resultado_pesquisa2;
      Edinheiro_endereco.text := resultado_pesquisa3;
      Edinheiro_cidade.text := resultado_pesquisa4;
      Edinheiro_uf.text := resultado_pesquisa5;
      Edinheiro_cpf.text := resultado_pesquisa6;
      Edinheiro_CLIENTe.SETFOCUS;
    end;
  end
  else
  begin
    if PDINHEIRO.Visible then
    begin
      edinheiro_codigo.Text := 'S/CLIE';
      edinheiro_cliente.setfocus;
    end;
  end;
end;

procedure Tfrmvenda_farma_final.edinheiro_codigoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_farma_final.edinheiro_clienteExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if tedit(sender).Text = '' then bgravar.setfocus;
end;

procedure Tfrmvenda_farma_final.edinheiro_rgExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmvenda_farma_final.edinheiro_codigoExit(Sender: TObject);
begin
   tedit(sender).color := clwindow;
   if edinheiro_codigo.text = '' then


end;

procedure Tfrmvenda_farma_final.edinheiro_enderecoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmvenda_farma_final.fdinheiroClick(Sender: TObject);
var cod_venda : string;
begin
  try
    frmmodulo.qrconfig.Open;


    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from c000007 where upper(nome) = '''+edinheiro_cliente.text+'''');
    query1.open;
    if query1.recno = 0 then edinheiro_codigo.text := 'S/CLIE';

    //cod_venda := frmPrincipal.codifica('000048');
    cod_venda := frmvenda_farma.lvenda_codigo.Caption;

    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from c000048 where codigo = '''+cod_venda+'''');
    query1.open;
    while query1.RecNo <> 0 do
    begin
      cod_venda := frmprincipal.codifica(cod_venda);

      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from c000048 where codigo = '''+cod_venda+'''');
      query1.open;
    end;

    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := cod_venda;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := edinheiro_codigo.Text;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := '000099';
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := frmvenda_farma_fechamento.rtotal.value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := frmvenda_farma_fechamento.rsubtotal.value;
    If rdinheiro.down then
    begin
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := frmvenda_farma_fechamento.rtotal.value;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    end;
    If rchequeav.down then
    begin
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := frmvenda_farma_fechamento.rtotal.value;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    end;
    If rchequeap.down then
    begin
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := frmvenda_farma_fechamento.rtotal.value;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    end;
    If rcartaoc.down then
    begin
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := frmvenda_farma_fechamento.rtotal.value;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    end;
    If rcartaod.down then
    begin
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := frmvenda_farma_fechamento.rtotal.value;
      FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    end;

    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := frmvenda_farma_fechamento.rdesconto2.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := 0;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';
    frmmodulo.qrvenda.post;

    frmmodulo.qrcaixa_mov.OPEN;
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
      frmmodulo.qrconfig.open;
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
      if rdinheiro.down then
      begin
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 3; // venda em dinheiro
      end;
      if rchequeav.down then
      begin
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 5; // cheque a vista
      end;
      if rchequeap.down then
      begin
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 6; // cheque a prazo
      end;
      if rcartaoc.down then
      begin
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 7; // carta de credito
      end;
      if rcartaod.down then
      begin
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 8; // cartao de debito
      end;


      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+cod_venda+' - '+edinheiro_cliente.text;
      frmmodulo.qrcaixa_mov.post;



    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda_farma.qrvenda_produto.First;
      while not frmvenda_farma.qrvenda_produto.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring;



            frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('CST').asSTRING ;




            frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('item').asstring,3);
            frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupom;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
            if ecf_modelo <> '' then
            begin
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.panels[11].text;
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.panels[9].text;

            end;



        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat;

        IF DESCONTO_TOTAL <> 0 THEN
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat -
                                                                (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL)
        ELSE
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat;

        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL);
        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat :=0;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('numeracao').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := edinheiro_CODIGO.Text;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrproduto_mov.Post;
        frmvenda_farma.qrvenda_produto.next;
      end;

  except
    application.messagebox('Houve erro no processamento! Toda Venda será cancelada!','Atenção',mb_ok+MB_ICONERROR);
    frmmodulo.Conexao.Rollback;
    close;
    frmvenda_farma_fechamento.close;
    frmvenda_farma.close;
  end;

end;

procedure Tfrmvenda_farma_final.bcrediario_clienteClick(Sender: TObject);
var texto : pansichar;
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa7 := '';
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
    frmmodulo.qrcliente.open;
    query1.close;
    query1.sql.clear;
    query1.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
    query1.Open;

    limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - query1.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
    lcliente_limite.Caption := formatfloat('###,###,##0.00',limite_disponivel);





       if resultado_pesquisa7 <> '' then
       begin
         query1.close;
         query1.sql.clear;
         query1.sql.add('select * from c000071 where codigo = '''+resultado_pesquisa7+'''');
         query1.open;

         if query1.recordcount = 0 then
         begin


             ecrediario_codcliente.text := resultado_pesquisa1;
             ecrediario_cliente.text := resultado_pesquisa2;
             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
             COMBOR_RETIRADO.ItemIndex := 0;
             COMBOR_RETIRADO.SetFocus;
         end
         else
         begin



           texto := pansichar('Este cliente possue convênio: '+#13+query1.fieldbyname('codigo').asstring+' - '+query1.fieldbyname('nome').asstring+#13+'Deseja reverter este fechamento para o CONVÊNIO?');
           if Application.MessageBox(TEXTO,'Atenção',mb_yesno+mb_iconwarning) = idyes then
           begin
             pcrediario.visible := false;
             pconvenio.visible := true;
             econvenio_codcliente.text := resultado_pesquisa1;
             econvenio_cliente.TEXT := resultado_pesquisa2;
             econvenio_codconvenio.text := query1.fieldbyname('codigo').asstring;
             econvenio_convenio.text := query1.fieldbyname('nome').asstring;
             rconvenio.down := true;
             rcrediario.Down := false;
             econvenio_codcliente.SetFocus;
           end
           else
           begin



             ecrediario_codcliente.text := resultado_pesquisa1;
             ecrediario_cliente.text := resultado_pesquisa2;
             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
             COMBOR_RETIRADO.ItemIndex := 0;
             COMBOR_RETIRADO.SetFocus;
           end;
         end;
       end
       else
       begin

             ecrediario_codcliente.text := resultado_pesquisa1;
             ecrediario_cliente.text := resultado_pesquisa2;
             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
             COMBOR_RETIRADO.ItemIndex := 0;
             COMBOR_RETIRADO.SetFocus;
       end;











  end
  else
  begin
    ecrediario_codcliente.setfocus;
  end;

end;

procedure Tfrmvenda_farma_final.ecrediario_codclienteExit(Sender: TObject);
var texto : pansichar;
begin
if pcrediario.Visible = false then exit;
  tedit(sender).Color := clwindow;
  ecrediario_coDcliente.text := frmprincipal.zerarcodigo(ecrediario_codcliente.text,6);
  if ecrediario_coDcliente.text <> '000000' then
  begin
     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+ecrediario_codcliente.text+'''');
     query2.open;
     if query2.RecordCount = 0 then
     begin
        application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        bcrediario_clienteclick(Frmvenda_farma_final);
     end
     else
     begin
       query1.close;
       query1.sql.clear;
       query1.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
       query1.Open;
       limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - query1.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
       lcliente_limite.Caption := formatfloat('###,###,##0.00',limite_disponivel);







       if query2.FieldByName('codconvenio').asstring <> '' then
       begin
         query1.close;
         query1.sql.clear;
         query1.sql.add('select * from c000071 where codigo = '''+query2.fieldbyname('codconvenio').asstring+'''');
         query1.open;



         if query1.RecNo = 0 then
         begin
           ecrediario_codcliente.text := query2.fieldbyname('codigo').asstring;
           ecrediario_cliente.TEXT := query2.fieldbyname('nome').asstring;


             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
             combor_retirado.ItemIndex := 0;
             COMBOR_RETIRADO.SetFocus;
         end
         else
         begin
           texto := pansichar('Este cliente possue convênio: '+#13+query1.fieldbyname('codigo').asstring+' - '+query1.fieldbyname('nome').asstring+#13+'Deseja reverter este fechamento para o CONVÊNIO?');
           if Application.MessageBox(TEXTO,'Atenção',mb_yesno+mb_iconwarning) = idyes then
           begin
             econvenio_codcliente.text := query2.fieldbyname('codigo').asstring;
             econvenio_cliente.TEXT := query2.fieldbyname('nome').asstring;
             econvenio_codconvenio.text := query1.fieldbyname('codigo').asstring;
             econvenio_convenio.text := query1.fieldbyname('nome').asstring;
             rconvenio.down := true;
             rcrediario.Down := false;


              rdinheiro.down  := false;
              rcrediario.down := false;
              rconvenio.down  := true;
              rchequeav.down  := false;
              rchequeap.down  := false;
              rcartaoc.down   := false;
              rcartaod.down   := false;

              rconvenioEnter(Frmvenda_farma_final);
              if pconvenio.Visible then
             
             econvenio_codcliente.SetFocus;

           end
           else
           begin
             ecrediario_codcliente.text := query2.fieldbyname('codigo').asstring;
             ecrediario_cliente.TEXT := query2.fieldbyname('nome').asstring;

             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
             combor_retirado.ItemIndex := 0;
             COMBOR_RETIRADO.SetFocus;
           end;
         end;
       end
       else
       begin
         ecrediario_codcliente.text := query2.fieldbyname('codigo').asstring;
         ecrediario_cliente.TEXT := query2.fieldbyname('nome').asstring;
             query3.Close;
             query3.SQL.clear;
             query3.SQL.add('select * from c000070 where codcliente = '''+ecrediario_codcliente.Text+''' order by nome');
             query3.open;
             query3.First;
             combor_retirado.items.Clear;
             combor_retirado.Items.Add('O MESMO');
             while not query3.eof do
             begin
               combor_retirado.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
               query3.NEXT;
             end;
         combor_retirado.ItemIndex := 0;
         COMBOR_RETIRADO.SetFocus;
       end;
     end;
  end
  else
  begin
    bcrediario_cliente.setfocus;
  end;
end;

procedure Tfrmvenda_farma_final.combor_retiradoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_farma_final.combor_retiradoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_farma_final.RQTDEKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN bgerar.setfocus;
end;

procedure Tfrmvenda_farma_final.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmvenda_farma_final.fcrediarioClick(Sender: TObject);
var cod_venda : string;
desc : real;
begin



  cod_venda := frmvenda_farma.lvenda_codigo.Caption;

  if rconvenio.down then
  begin






  try
    frmmodulo.qrconfig.Open;


    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := cod_venda;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := econvenio_codcliente.Text;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := '000099';
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := rconvenio_liquido.Value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := frmvenda_farma_fechamento.rsubtotal.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_convenio').asfloat := rconvenio_liquido.Value;

    desc := frmvenda_farma_fechamento.rdesconto1.value + rconvenio_desconto.value;
    if desc <> 0 then desc := frmvenda_farma_fechamento.rsubtotal.Value * (desc/100);

    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := desc;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := 0;
    frmmodulo.qrvenda.FieldByName('retirado').asstring := combor_retirado.Text;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';
    frmmodulo.qrvenda.post;

      frmmodulo.qrcaixa_mov.OPEN;
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
      frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rconvenio_liquido.value;
      frmmodulo.qrconfig.open;
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 40; // venda convenio
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda Convenio No. '+cod_venda+' - '+econvenio_cliente.text;
      frmmodulo.qrcaixa_mov.post;



    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda_farma.qrvenda_produto.First;
      while not frmvenda_farma.qrvenda_produto.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring;


            frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('CST').asSTRING ;




            frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('item').asstring,3);
            frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupom;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
            if ecf_modelo <> '' then
            begin
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.panels[11].text;
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.panels[9].text;

            end;


        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat;

        IF DESCONTO_TOTAL <> 0 THEN
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat -
                                                                (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL)
        ELSE
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat;

        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL);

        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('numeracao').AsString;
        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := econvenio_codcliente.Text;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrproduto_mov.Post;
        frmvenda_farma.qrvenda_produto.next;
      end;
    // lancamento do contas a receber

    frmmodulo.qrcontasreceber.open;
    query1.close;
    query1.Sql.clear;
    query1.sql.add('select * from c000007 where codigo ='''+econvenio_codcliente.text+'''');
    query1.open;

      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := cod_venda+'/'+'01';
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := cod_venda;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := econvenio_codcliente.text;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asdatetime := incmonth(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime,1);
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := rconvenio_liquido.value;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := rconvenio_liquido.value;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := '';
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := 'CONVENIO';
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.post;
  except
    application.messagebox('Houve erro no processamento! Toda Venda será cancelada!','Atenção',mb_ok+MB_ICONERROR);
    frmmodulo.Conexao.Rollback;
    close;
    frmvenda_farma_fechamento.close;
    frmvenda_farma.close;
  end;





















  end
  else
  begin


  try
    frmmodulo.qrconfig.Open;







    //cod_venda := frmPrincipal.codifica('000048');
    cod_venda := frmvenda_farma.lvenda_codigo.Caption;


    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := cod_venda;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := ecrediario_codcliente.Text;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := '000099';
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := frmvenda_farma_fechamento.rtotal.value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := frmvenda_farma_fechamento.rsubtotal.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_convenio').asfloat := 0;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := frmvenda_farma_fechamento.rtotal.value;

    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := frmvenda_farma_fechamento.rdesconto2.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := 0;
    frmmodulo.qrvenda.FieldByName('retirado').asstring := combor_retirado.Text;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';
    frmmodulo.qrvenda.post;

      frmmodulo.qrcaixa_mov.OPEN;
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := '000099';
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
      frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := frmvenda_farma_fechamento.rtotal.value;
      frmmodulo.qrconfig.open;
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 4; // venda em crediario
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+cod_venda+' - '+ecrediario_cliente.text;
      frmmodulo.qrcaixa_mov.post;



    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda_farma.qrvenda_produto.First;
      while not frmvenda_farma.qrvenda_produto.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := cod_venda;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring;


            frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING := FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('CST').asSTRING ;




            frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(FRMVENDA_farma.QRVENDA_PRODUTO.fieldbyname('item').asstring,3);
            frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupom;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
            if ecf_modelo <> '' then
            begin
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.panels[11].text;
//              frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.panels[9].text;

            end;



        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat;

        IF DESCONTO_TOTAL <> 0 THEN
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat -
                                                                (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL)
        ELSE
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat;

        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := (frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat *DESCONTO_TOTAL);



        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := frmvenda_farma.qrvenda_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := frmvenda_farma.qrvenda_produto.fieldbyname('numeracao').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := ecrediario_codcliente.Text;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrproduto_mov.Post;
        frmvenda_farma.qrvenda_produto.next;
      end;
    // lancamento do contas a receber

    frmmodulo.qrcontasreceber.open;
    query1.close;
    query1.Sql.clear;
    query1.sql.add('select * from c000007 where codigo ='''+ecrediario_codcliente.text+'''');
    query1.open;

    FRmvenda_farma.qrvenda_contasreceber.First;
    while not FRmvenda_farma.qrvenda_contasreceber.eof do
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := cod_venda+'/'+frmprincipal.zerarcodigo(FRmvenda_farma.qrvenda_contasreceber.fieldbyname('prestacao').asstring,2);
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := cod_venda;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := ecrediario_codcliente.text;
      frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := query1.fieldbyname('codregiao').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := FRmvenda_farma.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := FRmvenda_farma.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := FRmvenda_farma.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := FRmvenda_farma.qrvenda_contasreceber.fieldbyname('documento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := FRmvenda_farma.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.post;
      FRmvenda_farma.qrvenda_contasreceber.next;
    end;


  except
    application.messagebox('Houve erro no processamento! Toda Venda será cancelada!','Atenção',mb_ok+MB_ICONERROR);
    frmmodulo.Conexao.Rollback;
    close;
    frmvenda_farma_fechamento.close;
    frmvenda_farma.close;
  end;

  end;



end;




procedure Tfrmvenda_farma_final.SpeedButton1Click(Sender: TObject);
begin
//
end;

procedure Tfrmvenda_farma_final.bconvenio_clienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    econvenio_codcliente.text := resultado_pesquisa1;
    econvenio_cliente.text := resultado_pesquisa2;
    if resultado_pesquisa7 <> '' then
    begin
      econvenio_codconvenio.text := resultado_pesquisa7;
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('select * from c000071 where codigo = '''+resultado_pesquisa7+'''');
      query1.open;

         if query1.RecNo > 0 then
           econvenio_convenio.text := query1.fieldbyname('nome').asstring
         else
         begin
           application.MessageBox('Convênio não encontrado!','Atenção!',mb_ok+MB_ICONERROR);
           econvenio_codcliente.setfocus;
           exit;
         end;
    end
    else
    begin
      application.MessageBox('Este cliente não pertence a nenhum convênio!','Atenção!',mb_ok+MB_ICONERROR);
      econvenio_codcliente.setfocus;
      exit;
    end;
    IF frmvenda_farma_fechamento.rdesconto1.value > 0 then
    begin
        if application.messagebox('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          rconvenio_desconto.Value := query1.fieldbyname('desconto').asfloat
        else
          rconvenio_desconto.Value := 0;
    end
    else
      rconvenio_desconto.Value   := query1.fieldbyname('desconto').asfloat;


    if rconvenio_desconto.Value <> 0 then
    begin
      rconvenio_liquido.value := frmvenda_farma_fechamento.rsubtotal.Value - (frmvenda_farma_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmvenda_farma_fechamento.rdesconto1.value)/100));
    end
    else
      rconvenio_liquido.value := frmvenda_farma_fechamento.rtotal.Value;



    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+econvenio_codcliente.Text+''' order by nome');
    query3.open;
    query3.First;
    convenio_combo.items.Clear;
    convenio_combo.Items.Add('O MESMO');
    while not query3.eof do
    begin
      convenio_combo.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
      query3.NEXT;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
  end
  else
  begin
    econvenio_codcliente.setfocus;
  end;

end;

procedure Tfrmvenda_farma_final.econvenio_codclienteExit(Sender: TObject);
begin

if pconvenio.Visible = false then exit;

  tedit(sender).Color := clwindow;
  econvenio_coDcliente.text := frmprincipal.zerarcodigo(econvenio_codcliente.text,6);
  if econvenio_coDcliente.text <> '000000' then
  begin
     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+econvenio_codcliente.text+'''');
     query2.open;
     if query2.RecordCount = 0 then
     begin
        application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        bconvenio_clienteclick(Frmvenda_farma_final);
     end
     else
     begin
       econvenio_codcliente.text  := query2.fieldbyname('codigo').asstring;
       econvenio_cliente.TEXT     := query2.fieldbyname('nome').asstring;
       if query2.fieldbyname('codconvenio').asstring <> '' then
       begin
         econvenio_codconvenio.text := query2.fieldbyname('codconvenio').asstring;
         query1.Close;
         query1.SQL.clear;
         query1.SQL.add('select * from c000071 where codigo = '''+query2.fieldbyname('codconvenio').asstring+'''');
         query1.open;
         if query1.RecNo > 0 then
           econvenio_convenio.text := query1.fieldbyname('nome').asstring
         else
         begin
           application.MessageBox('Convênio não encontrado!','Atenção!',mb_ok+MB_ICONERROR);
           econvenio_codcliente.setfocus;
           exit;
         end;
       end
       else
       begin
         application.MessageBox('Este cliente não pertence a nenhum convênio!','Atenção!',mb_ok+MB_ICONERROR);
         econvenio_codcliente.setfocus;
         exit;
       end;
       IF frmvenda_farma_fechamento.rdesconto1.value > 0 then
       begin
          if application.messagebox('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            rconvenio_desconto.Value := query1.fieldbyname('desconto').asfloat
          else
            rconvenio_desconto.Value := 0;
       end
       else
         rconvenio_desconto.Value   := query1.fieldbyname('desconto').asfloat;


       if rconvenio_desconto.Value <> 0 then
       begin
         rconvenio_liquido.value := frmvenda_farma_fechamento.rsubtotal.Value - (frmvenda_farma_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmvenda_farma_fechamento.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmvenda_farma_fechamento.rtotal.Value;

       convenio_combo.SetFocus;
     end;
  end
  else
  begin
    bconvenio_cliente.setfocus;
  end;

end;

procedure Tfrmvenda_farma_final.convenio_comboKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_farma_final.CadastrarDocumento1Click(Sender: TObject);
begin
 //
end;

procedure Tfrmvenda_farma_final.edinheiro_cpfKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF KEY = #13 THEN BGRAVARClick(FRMVENDA_FARMA_FINAL);
end;

procedure Tfrmvenda_farma_final.AdvGlowButton5Enter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := TRUE;
    pcrediario.visible := false;
    pconvenio.visible := false;

    edinheiro_codigo.text := 'S/CLIE';
    edinheiro_cliente.text := 'CLIENTE ESPECIAL';

    BITBTN2.VISIBLE := FALSE;
//  BITBTN2.CAPTION := 'Cadastrar Cheques';

    LNOME.CAPTION := ' À VISTA / DINHEIRO';
    PNOME.HeaderColor := CLRED;
end;

procedure Tfrmvenda_farma_final.rcrediarioEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := false;
    pcrediario.visible := true;
    pconvenio.Visible := false;
end;

procedure Tfrmvenda_farma_final.rconvenioEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := false;
    pcrediario.visible := false;
    pconvenio.Visible := true;
end;

procedure Tfrmvenda_farma_final.rchequeavEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := TRUE;
    pcrediario.visible := false;
    pconvenio.visible := false;

    edinheiro_codigo.text := 'S/CLIE';
    edinheiro_cliente.text := 'CLIENTE ESPECIAL';

    BITBTN2.VISIBLE := TRUE;
    BITBTN2.CAPTION := 'F3 | Cadastrar Cheques';
    LNOME.CAPTION := 'CHEQUE À VISTA';
    PNOME.HeaderColor := $000DBAD9;
end;

procedure Tfrmvenda_farma_final.rchequeapEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := TRUE;
    pcrediario.visible := false;
    pconvenio.visible := false;

    edinheiro_codigo.text := 'S/CLIE';
    edinheiro_cliente.text := 'CLIENTE ESPECIAL';

    BITBTN2.VISIBLE := TRUE;
    BITBTN2.CAPTION := 'F3 | Cadastrar Cheques';
    LNOME.CAPTION := 'CHEQUE À PRAZO';
    PNOME.HeaderColor := $000080FF;
end;

procedure Tfrmvenda_farma_final.rcartaocEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := TRUE;
    pcrediario.visible := false;
    pconvenio.visible := false;

    edinheiro_codigo.text := 'S/CLIE';
    edinheiro_cliente.text := 'CLIENTE ESPECIAL';

    BITBTN2.VISIBLE := TRUE;
    BITBTN2.CAPTION := 'F3 | Cadastrar Cartão';
    LNOME.CAPTION := 'CARTÃO DE CRÉDITO';
    PNOME.HeaderColor := $00004080;
end;

procedure Tfrmvenda_farma_final.rcartaodEnter(Sender: TObject);
begin
    PDINHEIRO.VISIBLE := TRUE;
    pcrediario.visible := false;
    pconvenio.visible := false;

    edinheiro_codigo.text := 'S/CLIE';
    edinheiro_cliente.text := 'CLIENTE ESPECIAL';

    BITBTN2.VISIBLE := TRUE;
    BITBTN2.CAPTION := 'F3 | Cadastrar Cartão';
    LNOME.CAPTION := 'CARTÃO DE DÉBITO';
    PNOME.HeaderColor := $00A0A0A0;
end;

procedure Tfrmvenda_farma_final.AdvGlowButton5Click(Sender: TObject);
begin
rdinheiro.down  := true;
rcrediario.down := false;
rconvenio.down  := false;
rchequeav.down  := false;
rchequeap.down  := false;
rcartaoc.down   := false;
rcartaod.down   := false;

AdvGlowButton5Enter(frmvenda_farma_final);
if pdinheiro.Visible then
edinheiro_cliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.AdvGlowButton4Click(Sender: TObject);
begin


rdinheiro.down  := false;
rcrediario.down := true;
rconvenio.down  := false;
rchequeav.down  := false;
rchequeap.down  := false;
rcartaoc.down   := false;
rcartaod.down   := false;
rcrediarioEnter(frmvenda_farma_final);
if pcrediario.Visible then
ecrediario_codcliente.setfocus;
end;

procedure Tfrmvenda_farma_final.AdvGlowButton3Click(Sender: TObject);
begin
rdinheiro.down  := false;
rcrediario.down := false;
rconvenio.down  := true;
rchequeav.down  := false;
rchequeap.down  := false;
rcartaoc.down   := false;
rcartaod.down   := false;

rconvenioEnter(Frmvenda_farma_final);
if pconvenio.Visible then
econvenio_codcliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.AdvGlowButton2Click(Sender: TObject);
begin
rdinheiro.down  := false;
rcrediario.down := false;
rconvenio.down  := false;
rchequeav.down  := true;
rchequeap.down  := false;
rcartaoc.down   := false;
rcartaod.down   := false;

 rchequeavEnter(frmvenda_farma_final);
if pdinheiro.visible then
edinheiro_cliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.AdvGlowButton1Click(Sender: TObject);
begin
rdinheiro.down  := false;
rcrediario.down := false;
rconvenio.down  := false;
rchequeav.down  := false;
rchequeap.down  := true;
rcartaoc.down   := false;
rcartaod.down   := false;

rchequeapEnter(frmvenda_farma_final);
if pdinheiro.visible then
  edinheiro_cliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.rcartaocClick(Sender: TObject);
begin
rdinheiro.down  := false;
rcrediario.down := false;
rconvenio.down  := false;
rchequeav.down  := false;
rchequeap.down  := false;
rcartaoc.down   := true;
rcartaod.down   := false;

rcartaocEnter(frmvenda_farma_final);
if pdinheiro.visible then
edinheiro_cliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.rcartaodClick(Sender: TObject);
begin
rdinheiro.down  := false;
rcrediario.down := false;
rconvenio.down  := false;
rchequeav.down  := false;
rchequeap.down  := false;
rcartaoc.down   := false;
rcartaod.down   := true;

rcartaodEnter(frmvenda_farma_final);
if pdinheiro.visible then
edinheiro_cliente.SetFocus;
end;

procedure Tfrmvenda_farma_final.bgerarClick(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin

        prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := frmvenda_FARMA_fechamento.rTOTAL.value / qtde;

        FRmvenda_farma.qrvenda_contasreceber.close;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('delete from cl00002 where  terminal = '''+numero_terminal+'''');
        FRmvenda_farma.qrvenda_contasreceber.ExecSQL;
        FRmvenda_farma.qrvenda_contasreceber.sql.clear;
        FRmvenda_farma.qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = '''+numero_terminal+''' order by prestacao');
        FRmvenda_farma.qrvenda_contasreceber.open;
        while QTDE <> 0 do
        begin
          FRmvenda_farma.qrvenda_contasreceber.Insert;
          FRmvenda_farma.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          FRmvenda_farma.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME,prestacao);
          FRmvenda_farma.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          FRmvenda_farma.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          frmvenda_farma.qrvenda_contasreceber.FieldByName('documento').asstring := frmvenda_farma.lvenda_codigo.Caption;
          frmvenda_farma.qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
          FRmvenda_farma.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;
        FRmvenda_farma.qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;
  end;
end;

end.

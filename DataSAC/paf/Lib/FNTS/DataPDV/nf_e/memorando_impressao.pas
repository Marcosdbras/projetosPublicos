unit memorando_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmmemorando_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxnotafiscal: TfrxReport;
    fsmemorando: TfrxDBDataset;
    fsnotafiscal_item: TfrxDBDataset;
    fsnotafiscal_fornecedor: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsmemorando_entrada: TfrxDBDataset;
    combo_modelo: TComboBox;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmemorando_impressao: Tfrmmemorando_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, memorando, notafiscal, memorando_menu;

{$R *.dfm}

procedure Tfrmmemorando_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmmemorando_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmmemorando_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4 - Com Logomarca
02 - Papel A4 - Sem Logomarca
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}


  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(frmmemorando_impressao);
  1 : TPrazaoClick(frmmemorando_impressao);
  END;






  close;
end;

procedure Tfrmmemorando_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmemorando_menu.qrmemorando.fieldbyname('codfornecedor').asstring,[loCaseInsensitive]);


   IF frmmemorando_menu.qrmemorando.FIELDBYNAME('codfornecedor').ASSTRING = 'S/CLIE' THEN
   BEGIN
     CLIENTE_NOME := 'CLIENTE ESPECIAL' ;
     CLIENTE_ENDERECO := '';
     CLIENTE_BAIRRO := '';
     CLIENTE_CIDADE := '';
     CLIENTE_UF := '';
     CLIENTE_CEP := '';
     CLIENTE_TELEFONE := '';
     CLIENTE_CPF := '';
     CLIENTE_RG := '';
     CLIENTE_CODIGO := 'S/CLIE';
   END
   ELSE
   BEGIN
     CLIENTE_NOME := frmmemorando_menu.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmmemorando_menu.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmmemorando_menu.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmmemorando_menu.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmmemorando_menu.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmmemorando_menu.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmmemorando_menu.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmmemorando_menu.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmmemorando_menu.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmmemorando_menu.qrcliente.fieldbyname('CODIGO').asstring;
   END;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('nf_IMPRESSORA').asstring;

end;

procedure Tfrmmemorando_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmmemorando_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmmemorando_impressao.tpa4logoClick(Sender: TObject);
begin
   frmmodulo.qrrelatorio.open;
   frmmodulo.qrrelatorio.edit;
   IF FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('movimento').ASSTRING = 'E' then
   begin
      frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := '';
      frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := 'X';
   end
   else
   begin
     frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := 'X';
     frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := '';
   end;



   FRMMODULO.QRRELATORIO.POST;





   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000100.fr3');
   fXnotafiscal.ShowReport;

end;

procedure Tfrmmemorando_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmmemorando_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000100.fr3');
   fXnotafiscal.designreport;
  end;
end;

procedure Tfrmmemorando_impressao.tprazaoClick(Sender: TObject);
var arquivo : textfile;
texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50



  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  IF FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
    WRITELN(arquivo,'                                                                                                  X')
  ELSE
    WRITELN(arquivo,'                                                                                   X');

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,38,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmnotafiscal.qrapoio.Open;
  frmnotafiscal.qrapoio.first;
  while not frmnotafiscal.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmnotafiscal.qrapoio.next;
  end;

  if frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');



  CLOSEFILE(arquivo);
end;

end.








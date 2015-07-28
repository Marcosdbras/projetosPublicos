unit notafiscal_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmnotafiscal_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fsnotafiscal: TfrxDBDataset;
    fsnotafiscal_item: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    frxDBDataset2: TfrxDBDataset;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    Label2: TLabel;
    combo_modelo: TComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    fxnotafiscal: TfrxReport;
    Personalizado1: TMenuItem;
    qrcliente: TZQuery;
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
    procedure Personalizado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscal_impressao: Tfrmnotafiscal_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo_nfe, principal, notafiscal, notafiscal_menu, rel_nf;

{$R *.dfm}

procedure Tfrmnotafiscal_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmnotafiscal_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4 - Com Logomarca
02 - Papel A4 - Sem Logomarca
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}


  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(frmnotafiscal_impressao);
  1 : TPrazaoClick(frmnotafiscal_impressao);
  2 : Personalizado1click(frmnotafiscal_impressao);
  END;






  close;
end;

procedure Tfrmnotafiscal_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrorcamento.fieldbyname('codcliente').asstring,[loCaseInsensitive]);


   IF FRMMODULO.QRorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
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
     CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
   END;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('nf_IMPRESSORA').asstring;

end;

procedure Tfrmnotafiscal_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmnotafiscal_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmnotafiscal_impressao.tpa4logoClick(Sender: TObject);
begin
   frmmodulo.qrrelatorio.open;
   frmmodulo.qrrelatorio.edit;
   IF frmnotafiscal_menu.qrnota.FIELDBYNAME('movimento').ASSTRING = 'E' then
   begin
      frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := '';
      frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := 'X';
   end
   else
   begin
     frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := 'X';
     frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := '';
   end;


  // soma as quantidades de itens na nota fiscal
  frmmodulo.qrrelatorio.FieldByName('VALOR1').AsFloat := frmnotafiscal.qtde_total_item;
  //frmmodulo.qrrelatorio.FieldByName('VALOR2').AsFloat := frmnotafiscal.qtde_total_item+(frmnotafiscal.qtde_total_item*0,001);

  FRMMODULO.QRRELATORIO.POST;

   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000061.fr3');
   fXnotafiscal.ShowReport;

end;

procedure Tfrmnotafiscal_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmnotafiscal_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000061.fr3');
   fXnotafiscal.designreport;
  end;
end;

procedure Tfrmnotafiscal_impressao.tprazaoClick(Sender: TObject);
var arquivo : textfile;
texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
begin

  (* moto suzuki*)
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50

{

  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  IF frmnotafiscal_menu.qrnota.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring,10,' ','D'));
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
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
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

  if frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('BASE_SUB').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmnotafiscal_menu.qrnota.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
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
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF5').asstring,80,' ','D'));
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
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
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



};



// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50

{
  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  IF FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
    WRITELN(arquivo,'                                                                                                         X')
  ELSE
    WRITELN(arquivo,'                                                                                          X');

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


  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+'        '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
//  writeln(arquivo,'');
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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+'        '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,22,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+'      '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,33,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
 // writeln(arquivo,'');
 // writeln(arquivo,'');
 // writeln(arquivo,'');

  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,10,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,15,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,10,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,12,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,10,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,15,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,10,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,12,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  frmnotafiscal.qrapoio.Open;
  frmnotafiscal.qrapoio.first;
  while not frmnotafiscal.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('codproduto').asstring,6,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('Produto').asstring,53,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('UNITARIO').asstring,15,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmnotafiscal.qrapoio.next;
  end;
  writeln(arquivo,'   '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('obs1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'   '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('obs2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'   '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('obs3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');




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
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,77,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,69,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,35,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,6,' ','D')+' ');
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
  writeln(arquivo,'                                 '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'                                 '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'                                 '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'                                 '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'                                 '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
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


}
//var arquivo : textfile;
//texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
//begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50



   (* P A S S A R E L A*)



  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  IF frmnotafiscal_menu.qrnota.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring,10,' ','D'));
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
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
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

  if frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('BASE_SUB').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmnotafiscal_menu.qrnota.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
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
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('INF5').asstring,80,' ','D'));
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
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
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

procedure Tfrmnotafiscal_impressao.Personalizado1Click(Sender: TObject);
var i,A : integer;
begin

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from c000007 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring+'''');
  qrcliente.open;

  frmnotafiscal.qrapoio.close;
  frmnotafiscal.qrapoio.sql.clear;
  frmnotafiscal.qrapoio.sql.add('delete from cl00004');
  frmnotafiscal.qrapoio.execsql;
  frmnotafiscal.qrapoio.close;
  frmnotafiscal.qrapoio.sql.clear;
  frmnotafiscal.qrapoio.sql.add('select * from cl00004 order by texto10');
  frmnotafiscal.qrapoio.open;


  IF VENDA_VEICULO THEN
  BEGIN

     a := 1;
     for i := 0 to frmNOTAFISCAL.Memo1.Lines.Count - 1 do
     begin
      FRMNOTAFISCAL.QRAPOIO.insert;
      if i = 0 then
       FRMNOTAFISCAL.QRAPOIO.fieldbyname('codproduto').asstring :=    frmnotafiscal.qrnotafiscal_item.fieldbyname('codproduto').asstring
      else
      FRMNOTAFISCAL.QRAPOIO.fieldbyname('codproduto').asstring :=    '';
      FRMNOTAFISCAL.QRAPOIO.fieldbyname('produto').asstring :=       FRMNOTAFISCAL.Memo1.Lines[i];
      if i = (FRMNOTAFISCAL.Memo1.Lines.Count - 1) then
      begin

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
        begin
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('qtde').asstring := formatfloat(mascara_qtde,frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat);
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('unitario').asstring := formatfloat(mascara_valor,frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat);
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('total').asstring := formatfloat(mascara_valor,frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat);
        end
      else
        begin
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat);
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat);
          FRMNOTAFISCAL.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat);
        end;

        FRMNOTAFISCAL.QRAPOIO.fieldbyname('cf').asstring :=   frmnotafiscal.qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
        FRMNOTAFISCAL.QRAPOIO.fieldbyname('str').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('cst').asstring;
        FRMNOTAFISCAL.QRAPOIO.fieldbyname('un').asstring :=   frmnotafiscal.qrnotafiscal_item.fieldbyname('unidade').asstring;
        FRMNOTAFISCAL.QRAPOIO.fieldbyname('icms').asstring := frmnotafiscal.qrnotafiscal_item.fieldbyname('icms').asstring;
        FRMNOTAFISCAL.QRAPOIO.fieldbyname('ipi').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('ipi').asstring;
       end;
       FRMNOTAFISCAL.QRAPOIO.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(a),6);
       a := a + 1;
       FRMNOTAFISCAL.QRAPOIO.post;
     end;
  END
  ELSE
  BEGIN

  I := 1;
  frmnotafiscal.qrnotafiscal_item.FIRST;
  WHILE NOT frmnotafiscal.qrnotafiscal_item.EOF DO
  BEGIN
    IF frmnotafiscal.qrnotafiscal_item.FIELDBYNAME('CODPRODUTO').ASSTRING <> '777777' THEN
    BEGIN
      frmnotafiscal.qrapoio.insert;
      frmnotafiscal.qrapoio.fieldbyname('codproduto').asstring :=    frmnotafiscal.qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmnotafiscal.qrapoio.fieldbyname('produto').asstring :=       frmnotafiscal.qrnotafiscal_item.fieldbyname('produto').asstring;

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
        begin
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmnotafiscal.qrapoio.fieldbyname('qtde').asstring := formatfloat(mascara_qtde,frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmnotafiscal.qrapoio.fieldbyname('unitario').asstring := formatfloat(mascara_valor,frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmnotafiscal.qrapoio.fieldbyname('total').asstring := formatfloat(mascara_valor,frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat);
        end
      else
        begin
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmnotafiscal.qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmnotafiscal.qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',frmnotafiscal.qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmnotafiscal.qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',frmnotafiscal.qrnotafiscal_item.fieldbyname('total').asfloat);
        end;

      frmnotafiscal.qrapoio.fieldbyname('cf').asstring :=   frmnotafiscal.qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmnotafiscal.qrapoio.fieldbyname('str').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('cst').asstring;
      frmnotafiscal.qrapoio.fieldbyname('un').asstring :=   frmnotafiscal.qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmnotafiscal.qrapoio.fieldbyname('icms').asstring := frmnotafiscal.qrnotafiscal_item.fieldbyname('icms').asstring;
      frmnotafiscal.qrapoio.fieldbyname('ipi').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmnotafiscal.qrapoio.fieldbyname('texto8').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('cfop').asstring;
      frmnotafiscal.qrapoio.fieldbyname('texto7').asstring :=  frmnotafiscal.qrnotafiscal_item.fieldbyname('codgrade').asstring;
      frmnotafiscal.qrapoio.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
      frmnotafiscal.qrapoio.post;
      I := I + 1;
    END;


    frmnotafiscal.qrnotafiscal_item.NEXT;
  END;

  END;


   frmnotafiscal.qrapoio.REFRESH;



   IF frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat > 0 THEN
   BEGIN
      frmnotafiscal.qrapoio.insert;
      frmnotafiscal.qrapoio.fieldbyname('codproduto').asstring :=    '';
      frmnotafiscal.qrapoio.fieldbyname('produto').asstring :=       'D E S C O N T O ';
      frmnotafiscal.qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat);
      frmnotafiscal.qrapoio.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
      frmnotafiscal.qrapoio.post;
      I := I + 1;

   END;



  frmrel_nf := tfrmrel_nf.create(self);
  frmrel_nf.QuickRep1.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText1.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText2.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText3.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText4.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText5.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText6.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText7.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText8.DataSet := frmnotafiscal.qrapoio;
  frmrel_nf.qrDBText9.DataSet := frmnotafiscal.qrapoio;


  with frmrel_nf do
  begin



    lsaida.Caption := 'X';
    lentrada.Caption := '';

    lnumero1.caption := frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E');
    lnumero2.caption := frmprincipal.Texto_Justifica(frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring,6,'0','E');

    lcfop1.Caption := '';
    lcfop2.caption := '';
    lnatureza1.Caption := '';
    lnatureza2.caption := '';


      lcfop1.Caption := frmnotafiscal_menu.qrnota.fieldbyname('cfop').asstring;
      lnatureza1.Caption := frmnotafiscal_menu.qrnota.fieldbyname('natureza').asstring;



    lcliente.Caption := qrcliente.fieldbyname('codigo').asstring+' - '+qrcliente.fieldbyname('nome').asstring;
    lcpf.Caption := qrcliente.fieldbyname('cpf').asstring;
    lendereco.Caption := qrcliente.fieldbyname('endereco').asstring;
    lbairro.Caption := qrcliente.fieldbyname('bairro').asstring;
    lcep.Caption := qrcliente.fieldbyname('cep').asstring;
    lcidade.Caption := qrcliente.fieldbyname('cidade').asstring;
    luf.Caption := qrcliente.fieldbyname('uf').asstring;
    lrg.Caption :=  qrcliente.fieldbyname('rg').asstring;
    ltelefone.Caption := qrcliente.fieldbyname('telefone1').asstring;

    ldata_emissao.Caption := frmnotafiscal_menu.qrnota.fieldbyname('data').asstring;
    ldata_saida.Caption := frmnotafiscal_menu.qrnota.fieldbyname('data_saida').asstring;

          if frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat > 0 then
          begin
            lfat_n1.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring;
            lfat_data1.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asstring;
            lfat_valor1.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat);
          end;

          if frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat > 0 then
          begin
            lfat_n2.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring;
            lfat_data2.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asstring;
            lfat_valor2.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat);
          end;

          if frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat > 0 then
          begin
            lfat_n3.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring;
            lfat_data3.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asstring;
            lfat_valor3.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat);
          end;

          if frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat > 0 then
          begin
            lfat_n4.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring;
            lfat_data4.caption := frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asstring;
            lfat_valor4.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat);
          end;







    lobs1.CAPTION := frmnotafiscal_menu.qrnota.fieldbyname('INF1').asstring;
    LOBS2.CAPTION := frmnotafiscal_menu.qrnota.fieldbyname('INF2').asstring;
    LOBS3.Caption := frmnotafiscal_menu.qrnota.fieldbyname('INF3').asstring;

    lobs4.CAPTION := frmnotafiscal_menu.qrnota.fieldbyname('INF4').asstring;
    LOBS5.CAPTION := frmnotafiscal_menu.qrnota.fieldbyname('INF5').asstring;



    ltransp.Caption :=  frmnotafiscal_menu.qrnota.fieldbyname('TRANSPORTADOR').asstring;
    lfrete_conta.caption := frmnotafiscal_menu.qrnota.fieldbyname('FRETE_CONTA').asstring;

    lplaca.caption := frmnotafiscal_menu.qrnota.fieldbyname('placa').asstring;
    ltransp_uf.caption := frmnotafiscal_menu.qrnota.fieldbyname('placa_uf').asstring;
    lqtde.caption := frmnotafiscal_menu.qrnota.fieldbyname('vol_qtde').asstring;
    lespecie.caption := frmnotafiscal_menu.qrnota.fieldbyname('vol_especie').asstring;
    lmarca.caption := frmnotafiscal_menu.qrnota.fieldbyname('vol_marca').asstring;
    ltransp_numero.caption := frmnotafiscal_menu.qrnota.fieldbyname('vol_numero').asstring;
    lbruto.caption := frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asstring;
    lliquido.caption := frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asstring;



    ltransp_cpf.caption := frmnotafiscal_menu.qrnota.fieldbyname('transP_cpf').asstring;
    ltrans_endereco.caption := frmnotafiscal_menu.qrnota.fieldbyname('transp_endereco').asstring;
    ltransp_cidade.caption := frmnotafiscal_menu.qrnota.fieldbyname('transp_cidade').asstring;
    ltransp_uf2.caption := frmnotafiscal_menu.qrnota.fieldbyname('transp_uf').asstring;
    ltransp_rg.caption := frmnotafiscal_menu.qrnota.fieldbyname('transp_rg').asstring;




    lbase_icms.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat);
    lvalor_icms.caption := FormatFloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('valor_icms').asfloat);

    lbase_subst.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('base_sub').asfloat);
    lvalor_subst.caption := FormatFloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat);

    lFRETE.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat);
    lSEGURO.caption := FormatFloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat);

    loutras.caption := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat);
    lipi.caption := FormatFloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat);




    ltotal_produtos.caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat);
    ltotal_nota.caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat);

    // SERVIÇOS

    los_tit_codigo.Caption := frmnotafiscal_menu.qrnotaOS_COD1.AsString;
    los_cod1.Caption := frmnotafiscal_menu.qrnotaOS_COD2.AsString;
    los_cod2.Caption := frmnotafiscal_menu.qrnotaOS_COD3.AsString;
    los_cod3.Caption := frmnotafiscal_menu.qrnotaOS_COD4.AsString;
    los_cod4.Caption := frmnotafiscal_menu.qrnotaOS_COD5.AsString;
    los_cod5.Caption := frmnotafiscal_menu.qrnotaOS_COD6.AsString;

    los_tit_descricao.Caption := frmnotafiscal_menu.qrnotaOS_SERV1.AsString;
    los_desc1.Caption := frmnotafiscal_menu.qrnotaOS_SERV2.AsString;
    los_desc2.Caption := frmnotafiscal_menu.qrnotaOS_SERV3.AsString;
    los_desc3.Caption := frmnotafiscal_menu.qrnotaOS_SERV4.AsString;
    los_desc4.Caption := frmnotafiscal_menu.qrnotaOS_SERV5.AsString;
    los_desc5.Caption := frmnotafiscal_menu.qrnotaOS_SERV6.AsString;

    los_tit_descricao.Caption := frmnotafiscal_menu.qrnotaOS_SERV1.AsString;
    los_desc1.Caption := frmnotafiscal_menu.qrnotaOS_SERV2.AsString;
    los_desc2.Caption := frmnotafiscal_menu.qrnotaOS_SERV3.AsString;
    los_desc3.Caption := frmnotafiscal_menu.qrnotaOS_SERV4.AsString;
    los_desc4.Caption := frmnotafiscal_menu.qrnotaOS_SERV5.AsString;
    los_desc5.Caption := frmnotafiscal_menu.qrnotaOS_SERV6.AsString;

    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT1').asfloat > 0 then
      los_tit_qtde.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE1').AsInteger);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT2').asfloat > 0 then
      los_qtde1.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE2').AsInteger);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT3').asfloat > 0 then
      los_qtde2.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE3').AsInteger);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT4').asfloat > 0 then
      los_qtde3.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE4').AsInteger);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT5').asfloat > 0 then
      los_qtde4.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE5').AsInteger);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT6').asfloat > 0 then
      los_qtde5.Caption := inttostr(frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE6').AsInteger);

    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT1').asfloat > 0 then
      los_tit_unitario.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT1').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT2').asfloat > 0 then
      los_unit1.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT2').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT3').asfloat > 0 then
      los_unit2.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT3').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT4').asfloat > 0 then
      los_unit3.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT4').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT5').asfloat > 0 then
      los_unit4.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT5').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT6').asfloat > 0 then
      los_unit5.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT6').asfloat);

    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL1').asfloat > 0 then
      los_tit_total.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL1').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL2').asfloat > 0 then
      los_total1.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL2').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL3').asfloat > 0 then
      los_total2.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL3').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL4').asfloat > 0 then
      los_total3.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL4').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL5').asfloat > 0 then
      los_total4.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL5').asfloat);
    if frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL6').asfloat > 0 then
      los_total5.Caption := FormatFloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL6').asfloat);


 end;



  frmrel_nf.quickrep1.Preview;

end;

end.








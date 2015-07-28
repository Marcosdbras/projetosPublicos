unit prevenda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmprevenda_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    tpcarta: TMenuItem;
    fsprevenda: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsitemprevenda: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    combo_modelo: TComboBox;
    fxorcamento: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
    procedure tpcartaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_impressao: Tfrmprevenda_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, venda, venda_fechamento, ecf, orcamento,
  orcamento_impressao, baixa_estoque, prevenda;

{$R *.dfm}

procedure Tfrmprevenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprevenda_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4 - Com Logomarca
02 - Papel A4 - Sem Logomarca
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}


  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(frmprevenda_impressao);
  1 : TPrazaoClick(frmprevenda_impressao);
  2 : TPcartaClick(frmprevenda_impressao);
  END;






  close;
end;

procedure Tfrmprevenda_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring,[loCaseInsensitive]);

    frmprevenda.qrorcamento_produto.Close;
    frmprevenda.qrorcamento_produto.SQL.Clear;
    frmprevenda.qrorcamento_produto.SQL.Add('select * from c000075 where numeronota = '''+frmprevenda.qrorcamento.fieldbyname('codigo').asstring+'''');
    frmprevenda.qrorcamento_produto.SQL.Add('and data = :vdat');
    frmprevenda.qrorcamento_produto.params.ParamByName('vdat').AsDateTime := frmprevenda.qrorcamento.fieldbyname('data').AsDateTime;
    frmprevenda.qrorcamento_produto.Open;

   IF frmPrevenda.qrorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
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
    if frmPrevenda.qrcliente.RecordCount = 0 then
      begin
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
     end
    else
      begin
        CLIENTE_NOME := frmPrevenda.qrcliente.fieldbyname('nome').asstring;
        CLIENTE_ENDERECO := frmPrevenda.qrcliente.fieldbyname('endereco').asstring;
        CLIENTE_BAIRRO := frmPrevenda.qrcliente.fieldbyname('bairro').asstring;
        CLIENTE_CIDADE := frmPrevenda.qrcliente.fieldbyname('cidade').asstring;
        CLIENTE_UF := frmPrevenda.qrcliente.fieldbyname('uf').asstring;
        CLIENTE_CEP := frmPrevenda.qrcliente.fieldbyname('cep').asstring;
        CLIENTE_TELEFONE := frmPrevenda.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
        CLIENTE_CPF := frmPrevenda.qrcliente.fieldbyname('cpf').asstring;
        CLIENTE_RG := frmPrevenda.qrcliente.fieldbyname('rg').asstring;
        CLIENTE_CODIGO := frmPrevenda.qrcliente.fieldbyname('CODIGO').asstring;
     end;

   END;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('orcamento_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('orcamento_PORTA_IMPRESSORA').asstring;

end;

procedure Tfrmprevenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmprevenda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;


procedure Tfrmprevenda_impressao.tpa4logoClick(Sender: TObject);
begin

      frmmodulo.qrrelatorio.open;
      frmmodulo.qrrelatorio.edit;
      if frmprevenda.qrorcamento_produto.RecordCount > 28 then
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
      else
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
      frmmodulo.qrrelatorio.post;

      fxorcamento.LoadFromFile('\DATASAC\server\rel\f000131.fr3');
      fxorcamento.ShowReport;

end;

procedure Tfrmprevenda_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmprevenda_impressao.tprazaoClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;
   frmPrevenda.qrorcamento_produto.first;
   while not frmPrevenda.qrorcamento_produto.eof do
   begin
     texto1 := '';

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmPrevenda.qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmPrevenda.qrorcamento_produto.Next;
     I := I + 1;
     if i = 16 then
     begin
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'                                                            **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 16 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
    formapgto := 'COND. DE PAGAMENTO: ';

    y := 0;
    v1 := '';
    v2 := '';


     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   END;




   closefile(arquivo);

end;

procedure Tfrmprevenda_impressao.tpcartaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;
   frmPrevenda.qrorcamento_produto.first;
   while not frmPrevenda.qrorcamento_produto.eof do
   begin
     texto1 := '';

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmPrevenda.qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmPrevenda.qrorcamento_produto.Next;
     I := I + 1;
     if i = 40 then
     begin
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'                                                            **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 40 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmPrevenda.qrorcamento.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');


    y := 0;
    v1 := '';
    v2 := '';


     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');


     VIAS := VIAS -1;
     WRITELN(ARQUIVO,#12);

   END;




   closefile(arquivo);

end;

procedure Tfrmprevenda_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
    fxorcamento.LoadFromFile('\DATASAC\server\rel\f000131.fr3');
    fxorcamento.designreport;
  end;
end;

end.








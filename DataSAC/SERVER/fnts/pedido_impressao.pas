unit pedido_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmpedido_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    tpcarta: TMenuItem;
    fspedido: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fspedido_produto: TfrxDBDataset;
    fspedido_receber: TfrxDBDataset;
    fspedido_cliente: TfrxDBDataset;
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
    fxpedido: TfrxReport;
    ECF1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
    procedure tpcartaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ECF1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedido_impressao: Tfrmpedido_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, venda, venda_fechamento, ecf, pedido;

{$R *.dfm}

procedure Tfrmpedido_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpedido_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}


 case combo_modelo.ItemIndex of
  0 : ECF1Click(frmpedido_impressao);
  1 : TPa4logoClick(frmpedido_impressao);//TPrazaoClick(frmpedido_impressao);
  2 : TPcartaClick(frmpedido_impressao);
  3 : TPbobinaClick(frmpedido_impressao);
  END;






  close;
end;

procedure Tfrmpedido_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrPedido.fieldbyname('codcliente').asstring,[loCaseInsensitive]);


   IF FRMMODULO.QRpedido.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
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
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('orcamento_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('orcamento_PORTA_IMPRESSORA').asstring;
  impressora_venda := 'C:\TEXTE.TXT';
end;

procedure Tfrmpedido_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
//if key = #13 then evias.SetFocus;  
end;

procedure Tfrmpedido_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin

  //if key = #13 then bgravar.setfocus;
end;

procedure Tfrmpedido_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmpedido_impressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20



   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;


   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(frmmodulo.QRpedido.fieldbyname('codigo').asstring,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(frmmodulo.QRpedido.fieldbyname('data').asstring,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd: '+frmprincipal.Texto_Justifica(frmmodulo.QRpedido.fieldbyname('vendedor').asstring,13,' ','D'));

   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Tefones...: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(CLIENTE_rg,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O     QTDE.   X   UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

   frmpedido.qrpedido_produto.first;
   while not frmpedido.qrpedido_produto.eof do
   begin
     texto1 := '';

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,44-length(texto1),' ','D')+' '+texto1);

     writeln(arquivo,#15+#27#72+#20,'         '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmpedido.qrpedido_produto.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'OBSERVACOES                  | SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRpedido.fieldbyname('subtotal').asfloat),10,' ','E'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.QRpedido.FIELDBYNAME('OBS1').ASSTRING,29,' ','D')+'| DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRpedido.fieldbyname('desconto').asfloat),10,' ','E'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.QRpedido.FIELDBYNAME('OBS2').ASSTRING,29,' ','D')+'| ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRpedido.fieldbyname('acrescimo').asfloat),10,' ','E'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.QRpedido.FIELDBYNAME('OBS3').ASSTRING,29,' ','D')+'|----------------------');
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(FRMMODULO.QRpedido.FIELDBYNAME('OBS4').ASSTRING,29,' ','D')+'| T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.QRpedido.fieldbyname('total').asfloat),10,' ','E'));
   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'                COND. DE PAGAMENTO                  ');
   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento                 Tipo        Valor-R$');
   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     frmpedido.qrpedido_contasreceber.First;
     prestacao := 1;
     while not frmpedido.qrpedido_contasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(inttostr(prestacao),3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica('',13,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat),10,' ','E'));


       prestacao := prestacao + 1;
       frmpedido.qrpedido_contasreceber.next;
     end;




   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'         ------------------------------------       ');
   WRiteln(arquivo,#15+#27#72+#20,'                      Assinatura');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);























end;

procedure Tfrmpedido_impressao.tpa4logoClick(Sender: TObject);
begin
      frmmodulo.qrrelatorio.open;
      frmmodulo.qrrelatorio.edit;
      if frmpedido.qrpedido_produto.RecordCount > 28 then
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
      else
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
      frmmodulo.qrrelatorio.post;

      fxpedido.LoadFromFile('\DATASAC\server\rel\f000220_1.fr3');
      fxpedido.ShowReport;

end;

procedure Tfrmpedido_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmpedido_impressao.tprazaoClick(Sender: TObject);
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
                   #27#77+#18+#27#72+#20+' pedido: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;
   frmpedido.qrpedido_produto.first;
   while not frmpedido.qrpedido_produto.eof do
   begin
     texto1 := '';

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmpedido.qrpedido_produto.Next;
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
                   #27#77+#18+#27#72+#20+' pedido: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('vendedor').asstring,16,' ','D'));
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
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
    formapgto := 'COND. DE PAGAMENTO: ';

    y := 0;
    v1 := '';
    v2 := '';


      frmpedido.qrpedido_contasreceber.Open;
      frmpedido.qrpedido_contasreceber.first;
      while not frmpedido.qrpedido_contasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
          y := y + 1;
        end;
        frmpedido.qrpedido_contasreceber.next;
      end;
     writeln(arquivo,#27#77+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   END;




   closefile(arquivo);

end;

procedure Tfrmpedido_impressao.tpcartaClick(Sender: TObject);
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
                   #27#77+#18+#27#72+#20+' pedido: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;
   frmpedido.qrpedido_produto.first;
   while not frmpedido.qrpedido_produto.eof do
   begin
     texto1 := '';

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmpedido.qrpedido_produto.Next;
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
                   #27#77+#18+#27#72+#20+' pedido: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('vendedor').asstring,16,' ','D'));
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
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'Observacoes: '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('obs1').asstring,60,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'             '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('obs2').asstring,60,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'             '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('obs3').asstring,60,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'             '+frmprincipal.Texto_Justifica(frmmodulo.qrpedido.fieldbyname('obs4').asstring,60,' ','D'));



    formapgto := 'COND. DE PAGAMENTO: ';

    y := 0;
    v1 := '';
    v2 := '';


      frmpedido.qrpedido_contasreceber.Open;
      frmpedido.qrpedido_contasreceber.first;
      while not frmpedido.qrpedido_contasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
          y := y + 1;
        end;
        frmpedido.qrpedido_contasreceber.next;
      end;
     writeln(arquivo,#27#77+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');


     VIAS := VIAS -1;
     WRITELN(ARQUIVO,#12);

   END;




   closefile(arquivo);

end;

procedure Tfrmpedido_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
    fxpedido.LoadFromFile('\DATASAC\server\rel\f000220.fr3');
    fxpedido.designreport;
  end;
end;

procedure Tfrmpedido_impressao.ECF1Click(Sender: TObject);
var formapgto, v1, v2 : string;
    y, xx : integer;
begin

   xx := trunc(evias.Value);

   while xx <> 0 do
   begin

   ecf_relatorio_gerencial(ecf_modelo,'               O R C A M E N T O ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Número: '+frmmodulo.qrpedido.fieldbyname('codigo').asstring+'  Data: '+frmmodulo.qrpedido.fieldbyname('data').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Cliente: '+copy(CLIENTE_CODIGO+'  '+CLIENTE_NOME,1,38));
   ecf_relatorio_gerencial(ecf_modelo,'CPF....: '+CLIENTE_CPF);
   ecf_relatorio_gerencial(ecf_modelo,'Vended.: '+frmmodulo.qrpedido.fieldbyname('vendedor').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'P R O D U T O   QTDE.   X  UNITARIO  = VLR.TOTAL');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   frmpedido.qrpedido_produto.first;
   while not frmpedido.qrpedido_produto.eof do
   begin
     ecf_relatorio_gerencial(ecf_modelo,frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,41,' ','D'));

     ecf_relatorio_gerencial(ecf_modelo,'       '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmpedido.qrpedido_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),9,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmpedido.qrpedido_produto.fieldbyname('total').asfloat),9,' ','E'));
     frmpedido.qrpedido_produto.Next;
   end;



   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'                           Subtotal : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('subtotal').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           Desconto : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('desconto').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           T O T A L: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrpedido.fieldbyname('total').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');

   formapgto := '';
   y := 0;
   v1 := '';
   v2 := '';


  frmpedido.qrpedido_contasreceber.Open;
  frmpedido.qrpedido_contasreceber.first;
  while not frmpedido.qrpedido_contasreceber.Eof do
  begin
    if y > 5 then
    begin
      v2 := v2 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
    end
    else
    begin
      v1 := v1 + frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat)+' | ';
      y := y + 1;
    end;
    frmpedido.qrpedido_contasreceber.next;
  end;


   ecf_relatorio_gerencial(ecf_modelo,'Condição de Pagamento: '+FORMAPGTO+'  '+V1);
   ecf_relatorio_gerencial(ecf_modelo,'Observações:');
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRpedido.FIELDBYNAME('OBS1').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRpedido.FIELDBYNAME('OBS2').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRpedido.FIELDBYNAME('OBS3').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRpedido.FIELDBYNAME('OBS4').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'           Assinatura do Funcionário');

   ecf_fecha_relatorio_gerencial(ecf_modelo);

     xx := xx - 1;
   end;
end;

procedure Tfrmpedido_impressao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.








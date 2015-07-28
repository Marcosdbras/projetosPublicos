unit venda_fechamento_especial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, Mask, ToolEdit, CurrEdit, Spin,
  AdvGlowButton, ExtCtrls, TFlatPanelUnit;

type
  Tfrmvenda_fechamento_especial = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox2: TGroupBox;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    rcredito: TRxCalcEdit;
    bimprime: TBitBtn;
    GroupBox3: TGroupBox;
    evias: TSpinEdit;
    Label3: TLabel;
    rrazao: TRadioButton;
    rbobina: TRadioButton;
    Bevel1: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure rcreditoEnter(Sender: TObject);
    procedure rcreditoExit(Sender: TObject);
    procedure rcreditoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bimprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_especial: Tfrmvenda_fechamento_especial;

implementation

uses modulo, venda, principal, notas_venda_impressao, venda_impressao,
  venda_relrazao;

{$R *.dfm}

procedure Tfrmvenda_fechamento_especial.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_especial.bgravarClick(Sender: TObject);
begin

    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda.qrvenda_produto.First;
      while not frmvenda.qrvenda_produto.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmvenda.lvenda_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmvenda.lvenda_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda.qrvenda_produto.fieldbyname('total').asfloat;

        //if frmmodulo.qrproduto_mov.FieldByName('qtde').asfloat < 0 then frmmodulo.qrproduto_mov.FieldByName('qtde').asfloat := frmmodulo.qrproduto_mov.FieldByName('qtde').asfloat* (-1);
        //if frmmodulo.qrproduto_mov.FieldByName('total').asfloat < 0 then frmmodulo.qrproduto_mov.FieldByName('total').asfloat := frmmodulo.qrproduto_mov.FieldByName('total').asfloat* (-1);



        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmvenda.lcliente_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmvenda.lvendedor_codigo.Caption;

        CASE FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger of
        0 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        1 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        2 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA

        10: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// devolucao de VENDA
        11: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// devolucao de VENDA
        12: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// devolucao de VENDA

        20: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        21: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        22: frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        end;


        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmvenda.lvenda_data.Caption;
        frmmodulo.qrproduto_mov.Post;
        frmvenda.qrvenda_produto.next;
      end;






  if radiobutton1.Checked then
  begin
    frmmodulo.Conexao.Commit;
  end;

  if radiobutton2.Checked then
  begin
    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := frmvenda.lvenda_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmvenda.lvenda_data.Caption;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmvenda.lvendedor_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := frmvenda.lcaixa_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := rcredito.value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := rcredito.value;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := 'TROCA DE MERCAD.- CREDIT.VALOR';
    frmmodulo.qrvenda.post;

    frmmodulo.qrcontasreceber.open;
    frmmodulo.qrcontasreceber.insert;
    frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := frmvenda.lvenda_codigo.Caption+'/01';
    frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := frmvenda.lvenda_codigo.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := frmvenda.lcliente_codigo.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmvenda.lvendedor_codigo.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmvenda.lcaixa_codigo.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := frmvenda.lvenda_data.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := frmvenda.lvenda_data.Caption;
    frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := rcredito.value*(-1);
    frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := rcredito.value*(-1);
    frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := 'CRED.TROCA';
    frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := 'CREDIARIO';
    frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
    frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
    frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
    frmmodulo.qrcontasreceber.post;

    frmmodulo.qrcaixa_mov.open;
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := RCREDITO.VALUE*(-1);

    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 4; // venda CREDIARIO
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Crédito Troca - Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption;
    frmmodulo.qrcaixa_mov.post;
    frmmodulo.Conexao.commit;
  end;

  if radiobutton3.Checked then
  begin
    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := frmvenda.lvenda_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmvenda.lvenda_data.Caption;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmvenda.lvendedor_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := frmvenda.lcaixa_codigo.Caption;
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := rcredito.value*(-1);
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := rcredito.value*(-1);
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := 'TROCA DE MERCAD.- DEVOL. VALOR';
    frmmodulo.qrvenda.post;
    frmmodulo.qrcaixa_mov.open;
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := RCREDITO.VALUE;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := RCREDITO.VALUE*(-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 3; // venda dinheiro
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Devol. Valor Troca - Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption;
    frmmodulo.qrcaixa_mov.post;



    frmmodulo.Conexao.commit;
  end;

  bimprimeClick(frmvenda_fechamento_especial);

  close;
  frmvenda.close;


end;

procedure Tfrmvenda_fechamento_especial.rcreditoEnter(Sender: TObject);
begin
  rcredito.Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_especial.rcreditoExit(Sender: TObject);
begin
 rcredito.Color := clwindow;
end;

procedure Tfrmvenda_fechamento_especial.rcreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then radiobutton1.setfocus;
end;

procedure Tfrmvenda_fechamento_especial.RadioButton1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_especial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_fechamento_especial.bimprimeClick(Sender: TObject);
var formapgto, v1, v2 : string;
    y : integer;

    arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas,vias : integer;
    credito : real;

begin

  if rrazao.Checked = true then
    begin
      frmvenda_relrazao := tfrmvenda_relrazao.create(self);
      with frmvenda_relrazao do begin

          rempresa.Caption := emitente_fantasia;
          remissao.Caption := frmvenda.lvenda_data.caption+' '+timetostr(time);
          rcodcliente.Caption := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
          rcliente.Caption := frmmodulo.qrcliente.fieldbyname('nome').asstring;
          rendereco.Caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+', '+frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+' ('+frmmodulo.qrcliente.fieldbyname('uf').asstring+')   Cep: '+frmmodulo.qrcliente.fieldbyname('cep').asstring;
          rtelefone.Caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring;
          rcpf.Caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          rrg.Caption := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          rcodigo.Caption := frmvenda.lvenda_codigo.caption ;
          rvendedor.caption := frmvenda.lvendedor_nome.caption ;
          lretirado.caption := frmvenda.LRETIRADO.caption;
          robs.caption := observ;

          rsubtotal.Caption := formatfloat(mascara_valor,frmvenda.rtotal.value);
          ritens.Caption := frmvenda.ritem.Text;
          rdesconto.Caption := '';
          rtotal.Caption := formatfloat(mascara_valor,frmvenda.rtotal.value);

          formapgto := '';

          F1.Caption := '';
          F2.CAPTION := '';
          F3.CAPTION := '';
          F4.Caption := '';

          QRLabel3.Caption := 'DEVOLUÇÃO DE MERCADORIA';
          rprazo.Caption := '';
          rvencimento1.Caption := '';
          rvencimento2.Caption := '';
          QRLabel25.Caption := '';

          y := evias.Value;

          while y <> 0 do begin
            relatorio.Print;
            y := y - 1;
          end;
      end;
    end

  else
    begin

        frmmodulo.qrconfig.open;
        subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;

        VIAS := EVIAS.Value;

        WHILE VIAS <> 0 DO

          BEGIN

            assignfile(arquivo,impressora_venda);

            rewrite(arquivo);
            writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
            writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
            writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
            writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
            writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
            writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(frmvenda.lvenda_codigo.Caption,6,'0','E')+
                                           '  Emis: '+frmprincipal.Texto_Justifica(frmvenda.lvenda_data.Caption,10,' ','E')+
                                           ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                           '  Vd: '+frmprincipal.Texto_Justifica(frmvenda.lvendedor_nome.Caption,13,' ','D'));

            // informacoes do cliente
            writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
            if frmvenda.lcliente_codigo.caption = '999999' then
              writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(frmvenda.lcliente_codigo.Caption,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmvenda.LRETIRADO.Caption,32,' ','D'))
            else
              writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(frmvenda.lcliente_codigo.Caption,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmvenda.lcliente_nome.Caption,32,' ','D'));

            writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('bairro').asstring,39,' ','D'));
            writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring+'  '+frmmodulo.qrcliente.fieldbyname('cep').asstring,39,' ','D'));
            //writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring,39,' ','D'));
            //writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,39,' ','D'));
            //writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,39,' ','D'));
            writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
            writeln(arquivo,#18+#27#71+#20,'   DEVOLUCAO DE MERCADORIA');
            writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
            writeln(arquivo,#15+#27#72+#20,'CODIGO PRODUTO                  QUANTIDADE     TOTAL');
            writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

            frmvenda.qrvenda_produto.Refresh;
            frmvenda.qrvenda_produto.first;

   while not frmvenda.qrvenda_produto.eof do
   begin
     texto1 := frmvenda.qrvenda_produto.fieldbyname('serial').asstring;

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('produto').asstring,21,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(formatfloat('###,##0.00',frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat),10,' ','E')+' '+
                                    frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                    frmprincipal.Texto_Justifica(formatfloat('###,##0.00',frmvenda.qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmvenda.qrvenda_produto.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'                             | SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat('###,##0.00',frmvenda.rtotal.value),10,' ','E'));
   writeln(arquivo,#15+#27#72+#20,'                             | CREDITO   |'+frmprincipal.Texto_Justifica(formatfloat('###,##0.00',rcredito.value),10,' ','E'));

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

    subir_papel := 14;

    VIAS := VIAS -1;

   {
    writeln(arquivo,'');
    writeln(arquivo,'');
    writeln(arquivo,'');
    writeln(arquivo,'');
   }

    closefile(arquivo);



      end;


  end;

end;

end.

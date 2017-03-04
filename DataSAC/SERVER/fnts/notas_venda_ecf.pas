unit notas_venda_ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit, Menus,
  DB;

type
  Tfrmnotas_venda_ecf = class(TForm)
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
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    function formata_valor(valor:string):string;
  public
    { Public declarations }
  end;

var
  frmnotas_venda_ecf: Tfrmnotas_venda_ecf;

implementation

uses modulo, ecf, principal, notas_venda_ecf_leituraMemoria,
  suprimentocaixa, sangriacaixa;

{$R *.dfm}
function tfrmNOTAS_VENDA_ECF.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;


procedure Tfrmnotas_venda_ecf.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmnotas_venda_ecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmnotas_venda_ecf.BitBtn1Click(Sender: TObject);
var desconto_acrescimo : real;
produto, numero_cupom, tp_desconto_acrescimo, ALIQUOTA : string;
begin
//  TRY
    IF FRMMODULO.QRVENDA.FieldByName('CUPOM_FISCAL').ASINTEGER = 1 THEN
    BEGIN
      if APPLICATION.MESSAGEBOX('Esta venda já foi emitida um cupom fiscal! Deseja continuar?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
      begin
        exit;
      end;
    end;

      if not frmmodulo.qrcliente.Locate('codigo',frmmodulo.qrvenda.fieldbyname('CODCLIENTE').asstring,[loCaseInsensitive]) then
      begin
        showmessage('Cliente não econtrado! O procedimento foi abortado!');
        exit;
      end;




      frmmodulo.qrproduto_mov.close;
      frmmodulo.qrproduto_mov.SQL.Clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+''' and movimento <> 9');
      frmmodulo.qrproduto_mov.Open;
      frmmodulo.qrproduto_mov.First;

     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := frmmodulo.qrcliente.fieldbyname('cpf').asstring ;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := frmmodulo.qrcliente.fieldbyname('convenio').asstring ;
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom

        while not frmmodulo.qrproduto_mov.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmmodulo.qrproduto_mov.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmmodulo.qrproduto_mov.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          frmmodulo.qrproduto_mov.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin
      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupom := ecf_numero_cupom(ECF_MODELO);
      while not frmmodulo.qrproduto_mov.Eof do
      begin
        FRMMODULO.QRPRODUTO.Close;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        if frmmodulo.qrproduto.RECORDCOUNT > 0 THEN
        begin
          desconto_acrescimo := frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat - frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';



          if frmmodulo.qrproduto_mov.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmmodulo.qrproduto_mov.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end;

          if (frmmodulo.qrproduto.fieldbyname('cst').asstring = '060') then aliquota := 'FF' else
          if (frmmodulo.qrproduto.fieldbyname('cst').asstring = '000') then aliquota := 'II' else
          if (frmmodulo.qrproduto.fieldbyname('cst').asstring = '041') then aliquota := 'NN' else
          begin
            aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
          end;

          ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  ALIQUOTA,
                                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat,
                                  frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0);


{


          ecf_vende_item(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  produto,
                                  frmmodulo.qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  'F',
                                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat,
                                  2,
                                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat,
                                  '$',
                                  desconto_acrescimo,
                                  tp_desconto_acrescimo,0);
}
        end;
        frmmodulo.qrproduto_mov.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)
      desconto_acrescimo := frmmodulo.qrvenda.fieldbyname('desconto').asfloat -
                            frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
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
      if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeav').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeap').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_crediario').AsFloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)









      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

    FRMMODULO.QRVENDA.EDIT;
    FRMMODULO.QRVENDA.FieldByName('CUPOM_FISCAL').ASINTEGER := 1;
    frmmodulo.qrvenda.fieldbyname('NUMERO_cupom_fiscal').asstring := numero_cupom;
    FRMMODULO.QRVENDA.Post;
    FRMMODULO.Conexao.Commit;  
  END;


  close;
end;

procedure Tfrmnotas_venda_ecf.BitBtn3Click(Sender: TObject);
begin
     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'LEITURAX';
       FRMMODULO.QRECF_COMANDO.POST;
       FRMMODULO.CONEXAO.COMMIT;
       frmmodulo.conexao_ecfserver.Commit;


     END
     ELSE
     BEGIN
       ecf_leitura_x(ecf_modelo);
     END;
end;

procedure Tfrmnotas_venda_ecf.BitBtn5Click(Sender: TObject);
var texto : pansichar;
TXT : TEXTFILE;
cnpj_cpf, ie_rg, TEXTOS : STRING;
i : integer;
begin
  if frmprincipal.autentica('Redução Z',nivel_exclusao) then
  begin
    texto := pansichar('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'+#13+'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto,'Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    END;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;


end;

procedure Tfrmnotas_venda_ecf.BitBtn4Click(Sender: TObject);
begin


  frmnotas_venda_ecf_leituramemoria := tfrmnotas_venda_ecf_leituramemoria.create(self);
  frmnotas_venda_ecf_leituramemoria.showmodal;


end;

procedure Tfrmnotas_venda_ecf.BitBtn2Click(Sender: TObject);
var texto : pansichar;
i : integer;
begin
     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'CANCELARCUPOM';
       FRMMODULO.QRECF_COMANDO.POST;
       FRMMODULO.CONEXAO.COMMIT;
       frmmodulo.conexao_ecfserver.Commit;
     END
     ELSE
     BEGIN
       if frmprincipal.autentica('Cancel.Cupom',4) then
       begin
        TRY
         i := strtoint(ecf_numero_cupom(ecf_modelo));
         IF (ecf_modelo = 'URANO') then
          //
         else
         i := i - 1;
         texto := pansichar(frmprincipal.zerarcodigo(inttostr(i),6));
         texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');
         EXCEPT
          TEXTO := 'Confirma o Cancelamento do Cupom?';
         END;
         if application.messagebox(texto,'Cancelamento de Cupom',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
         begin
            ecf_cancela_cupom(ecf_modelo,'');
         end;
       end
       else
       begin
         Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
       end;
  END;
end;

procedure Tfrmnotas_venda_ecf.FormShow(Sender: TObject);
begin
  lecf.Caption := ecf_modelo;
  lmodelo.Caption := '';
  lversao.Caption := '';
end;

procedure Tfrmnotas_venda_ecf.BitBtn6Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Suprimento',0) then
  begin
    frmsuprimentocaixa := tfrmsuprimentocaixa.create(self);
    frmsuprimentocaixa.Edit1.text := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').ASSTRING;
    frmsuprimentocaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmnotas_venda_ecf.BitBtn7Click(Sender: TObject);
begin

  if frmprincipal.autentica_caixa('Sangria',0) then
  begin
    frmsangriacaixa := tfrmsangriacaixa.create(self);
    frmsangriacaixa.Edit1.text := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmsangriacaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;


end;

end.

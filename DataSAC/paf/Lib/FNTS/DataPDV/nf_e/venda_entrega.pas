unit venda_entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, MemDS,
  VirtualTable, DBAccess, IBC, Menus, StdCtrls, Mask, wwdbedit, Spin,
  frxClass, frxDBSet, frxDesgn, IBDatabase, IBCustomDataSet, IBQuery,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBClient;

type
  TfrmVenda_Entrega = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Pop1: TPopupMenu;
    Cancelar1: TMenuItem;
    Imprimir1: TMenuItem;
    ed_entregue: TwwDBEdit;
    Panel2: TPanel;
    bt_razao: TButton;
    Bevel2: TBevel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    evias: TSpinEdit;
    bt_bobina: TButton;
    bt_carta: TButton;
    bt_laser: TButton;
    fxdesenhar: TfrxDesigner;
    rel_entrega: TfrxReport;
    fs_entrega: TfrxDBDataset;
    fscliente: TfrxDBDataset;
    qrentrega2: TZQuery;
    dsEntrega: TDataSource;
    qrEntrega: TClientDataSet;
    qrEntregaItem: TStringField;
    qrEntregaCodigo: TStringField;
    qrEntregaProduto: TStringField;
    qrEntregaUnidade: TStringField;
    qrEntregaqtde_vendida: TFloatField;
    qrEntregaqtde_entregue: TFloatField;
    qrEntregaqtde_saldo: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEntregaBeforeInsert(DataSet: TDataSet);
    procedure ed_vendidoExit(Sender: TObject);
    procedure ed_entregueExit(Sender: TObject);
    procedure bt_razaoClick(Sender: TObject);
    procedure bt_bobinaClick(Sender: TObject);
    procedure bt_cartaClick(Sender: TObject);
    procedure bt_laserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda_Entrega: TfrmVenda_Entrega;
  NAO_incluir : boolean;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;
implementation

uses modulo_nfe, principal, venda;

{$R *.dfm}

procedure TfrmVenda_Entrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //IBTrans_entrega.Active := true;
     //frmmodulo.Conexao.StartTransaction;
     qrentrega.first;
     while not qrentrega.eof do
     begin
       qrentrega2.close;
       qrentrega2.sql.clear;
       qrentrega2.sql.add('insert into c000115');
       qrentrega2.sql.add('(CODVENDA,CODPRODUTO,QTDE_ENTREGUE,qtde_vendida,codcliente,data_venda,data_entrega)');
       qrentrega2.sql.Add('values');
       qrentrega2.sql.add('(:CODVENDA,:CODPRODUTO,:QTDE_ENTREGUE,:qtde_vendida,:codcliente,:data_venda,:data_entrega)');
       qrentrega2.Params.ParamByName('codvenda').asstring     := frmvenda.lvenda_codigo.caption;
       qrentrega2.Params.ParamByName('codproduto').asstring := qrentrega.fieldbyname('codigo').asstring;
       qrentrega2.params.parambyname('qtde_entregue').asfloat := qrentrega.fieldbyname('qtde_entregue').asfloat;
       qrentrega2.params.parambyname('qtde_vendida').asfloat := qrentrega.fieldbyname('qtde_vendida').asfloat;
       qrentrega2.params.parambyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;
       qrentrega2.params.ParamByName('data_venda').asdatetime := strtodate(frmvenda.lvenda_data.Caption);
       qrentrega2.Params.ParamByName('data_entrega').asdatetime := strtodate(frmvenda.lvenda_data.Caption);
       qrentrega2.ExecSQL;
       qrentrega.Next;
     end;
     //IBTrans_entrega.Commit;
     //frmmodulo.Conexao.commit;



  NAO_incluir := FALSE;
  action := cafree;
end;

procedure TfrmVenda_Entrega.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVenda_Entrega.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmVenda_Entrega.bgravarClick(Sender: TObject);
begin
     CLIENTE_NOME := frmvenda.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmvenda.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmvenda.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmvenda.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmvenda.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmvenda.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmvenda.qrcliente.fieldbyname('telefone1').asstring+'/'+frmvenda.qrcliente.fieldbyname('celular').asstring+'/'+frmvenda.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmvenda.qrcliente.fieldbyname('COMPLEMENTO').asstring;
     CLIENTE_RG := frmvenda.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmvenda.qrcliente.fieldbyname('CODIGO').asstring;


     case combobox1.ItemIndex of
     0 : bt_bobinaClick(frmvenda_entrega);
     1 : bt_razaoClick(frmvenda_entrega);
     2 : bt_cartaClick(frmvenda_entrega);
     3 : bt_laserClick(frmvenda_entrega);
     end;





  close;
end;

procedure TfrmVenda_Entrega.FormShow(Sender: TObject);
begin
  NAO_incluir := TRUE;

  qrentrega.filtered := false;

  frmmodulo.qrconfig.open;
  combobox1.ItemIndex := frmmodulo.qrconfig.fieldbyname('entrega_impressao').asinteger;
  evias.Value := frmmodulo.qrconfig.fieldbyname('entrega_vias').asinteger;


end;

procedure TfrmVenda_Entrega.qrEntregaBeforeInsert(DataSet: TDataSet);
begin
  if NAO_incluir then abort;
end;

procedure TfrmVenda_Entrega.ed_vendidoExit(Sender: TObject);
begin
qrEntrega.fieldbyname('saldo')
end;

procedure TfrmVenda_Entrega.ed_entregueExit(Sender: TObject);
begin
  if qrentrega.fieldbyname('qtde_entregue').asfloat <=  qrentrega.fieldbyname('qtde_vendida').asfloat then
  begin
    qrentrega.fieldbyname('qtde_saldo').asfloat :=
    qrentrega.fieldbyname('qtde_vendida').asfloat -
    qrentrega.fieldbyname('qtde_entregue').asfloat;
  end
  else
  begin
    qrentrega.fieldbyname('qtde_entregue').asfloat :=
    qrentrega.fieldbyname('qtde_vendida').asfloat;
    qrentrega.fieldbyname('qtde_saldo').asfloat := 0;
  end;
end;

procedure TfrmVenda_Entrega.bt_razaoClick(Sender: TObject);
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




   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' GUIA DE ENTREGA --> VENDA NR.: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(FRMVENDA.lvenda_codigo.CAPTION,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(DATETOSTR(DATE),10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' Ponto Referencia: '+frmprincipal.Texto_Justifica(CLIENTE_CPF,40,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                                                   UN   QUANTIDADE');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   I := 0;


   qrentrega.first;
   while not qrentrega.eof do
   begin

     if qrentrega.fieldbyname('qtde_entregue').asfloat > 0 then
     begin


     writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(qrentrega.fieldbyname('codigo').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('produto').asstring,58,' ','D')+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('unidade').asstring,2,'  ','D')+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrentrega.fieldbyname('qtde_entregue').asfloat),11,' ','E'));
          I := I + 1;
     end;

     qrentrega.Next;

     if i = 18 then
     begin
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' GUIA DE ENTREGA --> VENDA NR.: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(FRMVENDA.lvenda_codigo.CAPTION,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(DATETOSTR(DATE),10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' Ponto Referencia: '+frmprincipal.Texto_Justifica(CLIENTE_CPF,40,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                                                   UN   QUANTIDADE');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 18 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
     writeln(arquivo,'Reconhe‡o que recebi a(s) mercadoria(s) acima relacionada(s) em perfeito estado.');
     writeln(arquivo,'');
     writeln(arquivo,'');
     writeln(arquivo,#27#80+#18+#27#72+#20,'Data:     /     /                    Assinatura: -----------------------------');



     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');


   END;




   closefile(arquivo);

end;

procedure TfrmVenda_Entrega.bt_bobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao, SUBIR_PAPEL : integer;

begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80

   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;

   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN

   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'GUIA DE ENTREGA - No. '+frmprincipal.Texto_Justifica(frmvenda.lvenda_codigo.Caption,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(frmvenda.lvenda_data.Caption,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(frmvenda.lcliente_codigo.Caption,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmvenda.lcliente_nome.Caption,32,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+frmvenda.qrcliente.fieldbyname('bairro').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmvenda.qrcliente.fieldbyname('uf').asstring+'  '+frmvenda.qrcliente.fieldbyname('cep').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('telefone1').asstring+'/'+frmvenda.qrcliente.fieldbyname('celular').asstring+'/'+frmvenda.qrcliente.fieldbyname('telefone2').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Ponto. Ref: '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('complemento').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O                          UN QUANTIDADE');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   I := 0;


   qrentrega.first;
   while not qrentrega.eof do
   begin

     if qrentrega.fieldbyname('qtde_entregue').asfloat > 0 then
     begin


     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrentrega.fieldbyname('codigo').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('produto').asstring,31,' ','D')+' '+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('unidade').asstring,2,'  ','D')+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrentrega.fieldbyname('qtde_entregue').asfloat),10,' ','E'));
     end;

     qrentrega.Next;
   end;


     writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     writeln(arquivo,               'Reconhe‡o   que   recebi  a(s)  mercadoria(s)  acima ');
     writeln(arquivo,               'relacionada(s) em perfeito estado.');
     writeln(arquivo,'');
     writeln(arquivo,'');
     writeln(arquivo,#15+#27#72+#20,'Data: -----/-----/----------');
     writeln(arquivo,#15+#27#72+#20,'');
     writeln(arquivo,#15+#27#72+#20,'');
     writeln(arquivo,#15+#27#72+#20,'         -----------------------------              ');
     writeln(arquivo,#15+#27#72+#20,'                  ASSINATURA');
   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');



   END;




   closefile(arquivo);
end;

procedure TfrmVenda_Entrega.bt_cartaClick(Sender: TObject);
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




   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' GUIA DE ENTREGA --> VENDA NR.: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(FRMVENDA.lvenda_codigo.CAPTION,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(DATETOSTR(DATE),10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' Ponto Referencia: '+frmprincipal.Texto_Justifica(CLIENTE_CPF,40,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                                                   UN   QUANTIDADE');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   I := 0;


   qrentrega.first;
   while not qrentrega.eof do
   begin

     if qrentrega.fieldbyname('qtde_entregue').asfloat > 0 then
     begin


     writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(qrentrega.fieldbyname('codigo').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('produto').asstring,58,' ','D')+
                                    frmprincipal.Texto_Justifica(qrentrega.fieldbyname('unidade').asstring,2,'  ','D')+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrentrega.fieldbyname('qtde_entregue').asfloat),11,' ','E'));
          I := I + 1;
     end;

     qrentrega.Next;

     if i = 51 then
     begin
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' GUIA DE ENTREGA --> VENDA NR.: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(FRMVENDA.lvenda_codigo.CAPTION,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(DATETOSTR(DATE),10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' Ponto Referencia: '+frmprincipal.Texto_Justifica(CLIENTE_CPF,40,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                                                   UN   QUANTIDADE');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 51 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
     writeln(arquivo,'Reconhe‡o que recebi a(s) mercadoria(s) acima relacionada(s) em perfeito estado.');
     writeln(arquivo,'');
     writeln(arquivo,'');
     writeln(arquivo,#27#80+#18+#27#72+#20,'Data:     /     /                    Assinatura: -----------------------------');



     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');


   END;




   closefile(arquivo);

end;

procedure TfrmVenda_Entrega.bt_laserClick(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha10').asstring := frmvenda.lvenda_codigo.Caption;
  frmmodulo.qrrelatorio.FieldByName('linha6').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrrelatorio.FieldByName('linha9').asstring := frmvenda.lcaixa_codigo.caption;
  frmmodulo.qrrelatorio.FieldByName('linha8').asstring := frmvenda.lvendedor_nome.Caption;

  qrEntrega.filtered := false;
  qrentrega.filter := 'qtde_entregue > 0';
  qrentrega.Filtered := true;
  

  rel_entrega.Report.LoadFromFile('\DATASAC\server\rel\F000048_2.fr3');
//  rel_entrega.Report.LoadFromFile('c:\tempo.fr3');
  rel_entrega.ShowReport;

end;

end.

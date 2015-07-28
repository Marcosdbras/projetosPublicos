unit inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, AdvGlowButton, StdCtrls, Mask,
  RzEdit, RzSpnEdt, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, RzCmboBx, ToolEdit, RzPrgres, wwdbedit, Wwkeycb, Menus,
  frxDesgn, frxClass, frxDBSet;

type
  TfrmInventario = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    rano: TRzSpinEdit;
    bfiltrar: TAdvGlowButton;
    grid: TwwDBGrid;
    qrinventario: TZQuery;
    dsinventario: TDataSource;
    qrinventarioCODPRODUTO: TStringField;
    qrinventarioDATA: TDateTimeField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioPRODUTO: TStringField;
    qrinventarioUNIDADE: TStringField;
    qrinventarioCST: TStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    pinventario: TPanel;
    Label2: TLabel;
    Bevel3: TBevel;
    bgerar: TAdvGlowButton;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    rgano: TRzSpinEdit;
    qrproduto: TZQuery;
    Label5: TLabel;
    combo_estoque: TRzComboBox;
    bar: TRzProgressBar;
    Panel3: TPanel;
    Bevel2: TBevel;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Label6: TLabel;
    Label7: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel4: TPanel;
    Bevel4: TBevel;
    RQTDE: TRzNumericEdit;
    Label8: TLabel;
    Label9: TLabel;
    RTOTAL: TRzNumericEdit;
    eestoque: TwwDBEdit;
    ecusto: TwwDBEdit;
    Bevel5: TBevel;
    Label10: TLabel;
    combo_ordem: TComboBox;
    LOC: TwwIncrementalSearch;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsinventario: TfrxDBDataset;
    qrinventarioTIPO: TStringField;
    qrinventarionome_aliquota: TStringField;
    qrgrupo_aliquota: TZQuery;
    qrgrupo_tipo: TZQuery;
    fstotal_TIPO: TfrxDBDataset;
    fstotal: TfrxDBDataset;
    qrgrupo_tipoTOTAL: TFloatField;
    qrgrupo_tipoTIPO: TStringField;
    lcodigo: TLabel;
    qrinventarioANO: TIntegerField;
    Label4: TLabel;
    Label11: TLabel;
    rmes: TRzSpinEdit;
    rgmes: TRzSpinEdit;
    qrinventarioMES: TIntegerField;
    Label12: TLabel;
    DateEdit2: TDateEdit;
    Label13: TLabel;
    qrinventarioDATA_POSTERIOR: TDateTimeField;
    AdvGlowButton2: TAdvGlowButton;
    ED_BARRA: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    Query: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure ranoKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltrarClick(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure rganoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_estoqueKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure qrinventarioBeforeInsert(DataSet: TDataSet);
    procedure eestoqueExit(Sender: TObject);
    procedure LOCEnter(Sender: TObject);
    procedure qrinventarioBeforeEdit(DataSet: TDataSet);
    procedure qrinventarioBeforePost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure qrinventarioBeforeDelete(DataSet: TDataSet);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure ranoEnter(Sender: TObject);
    procedure qrinventarioCalcFields(DataSet: TDataSet);
    procedure rgmesKeyPress(Sender: TObject; var Key: Char);
    procedure rmesKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure combo_ordemChange(Sender: TObject);
    procedure ED_BARRAKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function nao_arredonda(valor:real):real;
  end;

var
  frmInventario: TfrmInventario;
  ano, mes, dia : word;
  pode_incluir : boolean;
  total_anterior : real;

implementation

uses modulo, principal, dados_inventario, inventario_ficha;

{$R *.dfm}
function tfrminventario.nao_arredonda(valor:real):real;
var txt_desconto : string;
i : integer;
begin
  txt_desconto := formatfloat('#############0.00000000000',valor);
  i := pos(',',txt_desconto);
  if i > 0 then
  begin
    txt_desconto :=
    copy(txt_desconto,1,i-1)+','+
    copy(txt_desconto,i+1,2);

    result := strtofloat(txt_desconto);

  end
  else
    result := valor;


end;


procedure TfrmInventario.FormShow(Sender: TObject);
begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from inventario');
  qrinventario.sql.add('where ano = 99999');
  qrinventario.open;

  decodedate(date,ano,mes,dia);


  rano.value := ano;
  rmes.value := mes;
  dateedit1.text:= '31/'+frmprincipal.texto_justifica(inttostr(mes),2,'0','E')+'/'+frmprincipal.texto_justifica(inttostr(ano),4,'0','E');



  FRMMODULO.QRCONFIG.OPEN;
  case FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER of
    1,3,4:BEGIN // FULL
        combo_ordem.ItemIndex := 1;
        ED_BARRA.Visible := false;
        loc.Visible := true;

      END;
    2:BEGIN // SUPERMERCADO
        combo_ordem.ItemIndex := 2;
        ED_BARRA.Visible := true;
        loc.Visible := false;

      END;
  end;
  

end;

procedure TfrmInventario.ranoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

procedure TfrmInventario.bfiltrarClick(Sender: TObject);
var t : real;
q : integer;
begin

  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from inventario');
  qrinventario.sql.add('where ano = '+rano.text+' and mes = '+rmes.text);
  qrinventario.sql.add('order by produto');
  qrinventario.open;


  if qrinventario.recordcount > 0 then
  begin
    grid.DataSource := nil;
    t := 0;
    q := 0;
    qrinventario.first;
    while not qrinventario.eof do
    begin
      t := t + qrinventario.fieldbyname('total').asfloat;
      q := q + 1;
      qrinventario.next;
    end;

    rtotal.value := t;
    rqtde.value := q;
    grid.datasource := dsinventario;

    grid.setfocus;

    bincluir.enabled := true;
    bexcluir.enabled := true;

  end
  else
  begin
    if application.messagebox('Inventário não cadastrado! Deseja criá-lo?','Aviso',mb_yesno+mb_iconwarning) = idyes then
    begin
      pinventario.visible := true;
      rgano.value := rano.Value;
      rgmes.value := rmes.value;
      rgmes.setfocus;
     
    end;
  end;

end;

procedure TfrmInventario.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  qrinventario.SortedFields := afieldname;
end;

procedure TfrmInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmmodulo.Conexao.Commit;
  qrinventario.close;
  action := cafree;
end;

procedure TfrmInventario.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmInventario.bgerarClick(Sender: TObject);
begin
       grid.DataSource := nil;
       qrproduto.close;
       qrproduto.sql.clear;
       qrproduto.sql.add('select prod.*, est.*');
       qrproduto.sql.add('from c000025 prod, c000100 est');
       qrproduto.sql.add('where prod.codigo = est.codproduto');
       qrproduto.sql.add('and situacao = 0');
       if combo_estoque.itemindex = 0 then
       qrproduto.sql.add('and est.estoque_atual > 0');
       qrproduto.sql.add('order by prod.produto');
       qrproduto.open;
       qrproduto.first;
       bar.TotalParts := qrproduto.recordcount;
       bar.PartsComplete := 0;
       pode_incluir := true;
       while not qrproduto.eof do
       begin
         lcodigo.caption :=  qrproduto.fieldbyname('codigo').asstring+' '+ qrproduto.fieldbyname('produto').asstring;
         application.processmessages;
         qrinventario.Close;
         qrinventario.sql.clear;
         qrinventario.sql.add('insert into inventario');
         qrinventario.sql.add('(data,data_posterior,ano,mes,tipo,codproduto,produto,unidade,cst,aliquota,estoque,custo,venda,total)');
         qrinventario.sql.add('values');
         qrinventario.sql.add('(:datax,:data_posteriorx,:anox,:mesx,:tipox,:codprodutox,:produtox,:unidadex,:cstx,:aliquotax,:estoquex,:custox,:vendax,:totalx)');
         qrinventario.params.ParamByName('datax').asdatetime := dateedit1.date;
         qrinventario.params.ParamByName('data_posteriorx').asdatetime := dateedit2.date;

         qrinventario.params.ParamByName('anox').asinteger := trunc(rgano.value);
         qrinventario.params.ParamByName('mesx').asinteger := trunc(rgmes.value);

         qrinventario.params.ParamByName('tipox').asstring  := qrproduto.fieldbyname('tipo').asstring;
         qrinventario.params.ParamByName('codprodutox').asstring := qrproduto.fieldbyname('codigo').asstring;
         qrinventario.params.ParamByName('produtox').asstring := qrproduto.fieldbyname('produto').asstring;
         qrinventario.params.ParamByName('unidadex').asstring := qrproduto.fieldbyname('unidade').asstring;
         qrinventario.params.ParamByName('cstx').asstring := qrproduto.fieldbyname('cst').asstring;
         qrinventario.params.ParamByName('aliquotax').asfloat := qrproduto.fieldbyname('aliquota').asfloat;
         qrinventario.params.ParamByName('custox').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
         qrinventario.params.ParamByName('estoquex').asfloat := qrproduto.fieldbyname('estoque_atual').asfloat;
         qrinventario.params.ParamByName('vendax').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
         qrinventario.params.ParamByName('totalx').asfloat := qrproduto.fieldbyname('precocusto').asfloat *
                                                              qrproduto.fieldbyname('estoque_atual').asfloat;
         qrinventario.execsql;
         bar.PartsComplete := bar.PartsComplete + 1;
         application.ProcessMessages;
         qrproduto.next;
       end;
       application.messagebox('Processamento concluído!','Aviso',mb_ok+mb_iconinformation);
       pinventario.visible := false;
       frmmodulo.conexao.commit;

       rano.Value := rgano.value;
       bfiltrarclick(frminventario);
       grid.DataSource := dsinventario;
       pode_incluir := false;
       bar.PartsComplete := 0;
       bincluir.enabled := true;
       bexcluir.enabled := true;



end;

procedure TfrmInventario.rganoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then combo_estoque.setfocus;
end;

procedure TfrmInventario.combo_estoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dateedit1.setfocus;
end;

procedure TfrmInventario.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dateedit2.setfocus;
end;

procedure TfrmInventario.qrinventarioBeforeInsert(DataSet: TDataSet);
begin
   total_anterior := 0;
  if not pode_incluir then abort;
end;

procedure TfrmInventario.eestoqueExit(Sender: TObject);
begin
  if qrinventario.state in [dsinsert,dsedit] then
  begin
    qrinventario.fieldbyname('total').asfloat :=
    qrinventario.fieldbyname('custo').asfloat *
    qrinventario.fieldbyname('estoque').asfloat;
  end;

end;

procedure TfrmInventario.LOCEnter(Sender: TObject);
begin
  IF COMBO_ORDEM.ITEMINDEX = 0 THEN
    LOC.SEARCHFIELD := 'CODPRODUTO'
   ELSE
    loc.SearchField := 'PRODUTO';
end;

procedure TfrmInventario.qrinventarioBeforeEdit(DataSet: TDataSet);
begin
  total_anterior := qrinventario.fieldbyname('total').asfloat;
end;

procedure TfrmInventario.qrinventarioBeforePost(DataSet: TDataSet);
begin
  rtotal.value := rtotal.value + qrinventario.fieldbyname('total').asfloat - total_anterior;
end;

procedure TfrmInventario.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão deste produto?','Aviso',mb_yesno+mb_iconquestion) = Idyes then
  begin
    qrinventario.Delete;
    frmmodulo.conexao.commit;
  end;
end;

procedure TfrmInventario.qrinventarioBeforeDelete(DataSet: TDataSet);
begin
   rtotal.value :=
  rtotal.value -
  qrinventario.fieldbyname('total').asfloat ;

  RQTDE.value := rqtde.value - 1;
end;

procedure TfrmInventario.AdvGlowButton1Click(Sender: TObject);
var ano, mes : string;
begin
  if frmprincipal.autentica('Zerar Inventário',4) then
  begin
     if application.messagebox('Confirma o zeramento do inventario?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
     begin
       if qrinventario.recordcount > 0 then
       begin
         ano := qrinventario.fieldbyname('ano').asstring;
         mes := qrinventario.fieldbyname('mes').asstring;


         qrinventario.close;
         qrinventario.sql.clear;
         qrinventario.sql.add('update inventario set estoque = 0, total = 0 where ano = '+ano+' and mes = '+mes);
         qrinventario.execsql;
         frmmodulo.conexao.commit;
         bfiltrarClick(frminventario);
       end;
     end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmInventario.AdvGlowButton3Click(Sender: TObject);
var ano : string;
mes : string;
begin
  if frmprincipal.autentica('Excluir Inventário',4) then
  begin
     if application.messagebox('Confirma a exclusão deste inventario?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
     begin
       if qrinventario.recordcount > 0 then
       begin
         ano := qrinventario.fieldbyname('ano').asstring;
         mes := qrinventario.fieldbyname('mes').asstring;

         qrinventario.close;
         qrinventario.sql.clear;
         qrinventario.sql.add('delete from inventario where ano = '+ano+' and mes = '+mes);
         qrinventario.execsql;
         frmmodulo.conexao.commit;
         rtotal.value := 0;
         rqtde.value := 0;

         qrinventario.close;
         qrinventario.sql.clear;
         qrinventario.sql.add('select * from inventario');
         qrinventario.sql.add('where ano = ''99999''');
         qrinventario.open;
       end;

     end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmInventario.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmInventario.bitbtn5Click(Sender: TObject);
begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from inventario');
  qrinventario.sql.add('where ano = '+rano.text+' and mes = '+rmes.text);
  qrinventario.sql.add('order by TIPO, CST, ALIQUOTA, PRODUTO');
  qrinventario.open;

  APPLICATION.ProcessMessages;


   qrgrupo_aliquota.CLOSE;
   qrgrupo_aliquota.SQL.CLEAR;
   qrgrupo_aliquota.SQL.ADD('SELECT SUM(total) TOTAL, TIPO, CST, ALIQUOTA');
   qrgrupo_aliquota.SQL.ADD('FROM inventario WHERE ANO = '+QRINVENTARIO.FIELDBYNAME('ANO').ASSTRING+' and mes = '+QRINVENTARIO.FIELDBYNAME('mes').ASSTRING);
   qrgrupo_aliquota.SQL.ADD('GROUP BY TIPO, CST, ALIQUOTA');
   qrgrupo_aliquota.sql.add('order by TIPO, CST, ALIQUOTA');
   qrgrupo_aliquota.OPEN;


    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(total) TOTAL, TIPO');
    qrgrupo_tipo.SQL.ADD('FROM inventario WHERE ano = '+QRINVENTARIO.FIELDBYNAME('ANO').ASSTRING+' and  mes = '+QRINVENTARIO.FIELDBYNAME('mes').ASSTRING);
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    frmdados_inventario := tfrmdados_inventario.create(self);
    frmdados_inventario.showmodal;

    if not cont_inventario then exit;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000126.fr3');
    fxproduto.ShowReport;
end;

procedure TfrmInventario.bincluirClick(Sender: TObject);
begin
  frminventario_ficha := tfrminventario_ficha.create(self);
  frminventario_ficha.eano.caption  := qrinventario.fieldbyname('ano').asstring;
  frminventario_ficha.edata.caption := qrinventario.fieldbyname('data').asstring;
  frminventario_ficha.emes.Caption  := qrinventario.fieldbyname('mes').asstring;
  if qrinventario.fieldbyname('data_posterior').asstring <> '' then
    frminventario_ficha.eposterior.caption := qrinventario.fieldbyname('data_posterior').asstring;

  frminventario_ficha.showmodal;
end;

procedure TfrmInventario.ranoEnter(Sender: TObject);
begin
  pinventario.visible := true;
end;

procedure TfrmInventario.qrinventarioCalcFields(DataSet: TDataSet);
begin
  QRinventario.FIELDBYNAME('NOME_ALIQUOTA').ASSTRING := QRinventario.FIELDBYNAME('TIPO').ASSTRING+QRinventario.FIELDBYNAME('CST').ASSTRING+FORMATFLOAT('##0.00%',QRinventario.FIELDBYNAME('ALIQUOTA').ASFLOAT);
end;

procedure TfrmInventario.rgmesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then rgano.setfocus;
end;

procedure TfrmInventario.rmesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then rano.setfocus;
end;

procedure TfrmInventario.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgerar.SetFocus;
end;

procedure TfrmInventario.DateEdit1Exit(Sender: TObject);
begin
  DATEEDIT2.DATE := DATEEDIT1.DATE+1;

end;

procedure TfrmInventario.AdvGlowButton2Click(Sender: TObject);
begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000126.fr3');
    fxproduto.DesignReport;
end;

procedure TfrmInventario.combo_ordemChange(Sender: TObject);
begin
  IF COMBO_ORDEM.ItemIndex < 2 THEN
  BEGIN
    LOC.Visible := TRUE;
    ED_BARRA.Visible := FALSE;
  END
  ELSE
  BEGIN
    LOC.Visible := FALSE;
    ED_BARRA.VISIBLE := TRUE;
  END;
end;

procedure TfrmInventario.ED_BARRAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT codigo FROM C000025 WHERE CODBARRA = '''+ED_BARRA.TEXT+'''');
    QRPRODUTO.OPEN;
    IF QRPRODUTO.RECORDCOUNT > 0 THEN
    BEGIN
      qrinventario.Locate('codproduto',qrproduto.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    END
    ELSE
    BEGIN
      APPLICATION.MESSAGEBOX('Produto não encontrado!','Aviso',mb_ok+mb_iconerror);
    END;
  END;
end;

procedure TfrmInventario.AdvGlowButton4Click(Sender: TObject);
var pcusto : string;
begin
  if application.messagebox('Esta função edita todos os registros do inventário'+#13+
                            'truncando o preço para 2 (duas) casas decimais!'+#13+
                            'Faça uma cópia de segurança antes de prosseguir!'+#13+
                            'Deseja continuar?','Atenção',mb_yesno+mb_iconwarning) = idyes then
                            begin
                              qrinventario.first;
                              while not qrinventario.Eof do
                              begin
                                qrinventario.edit;
                                qrinventario.fieldbyname('custo').asfloat := nao_arredonda(qrinventario.fieldbyname('custo').asfloat);
                                qrinventario.fieldbyname('total').asfloat :=
                                qrinventario.fieldbyname('estoque').asfloat * qrinventario.fieldbyname('custo').asfloat;
                                qrinventario.Post;
                                qrinventario.next;
                             end;
                              frmmodulo.conexao.commit;
                              bfiltrarclick(frminventario);
                              showmessage('Processamento concluído!');
                            end;
end;

end.

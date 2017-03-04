unit produto_pdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, Menus, StdCtrls, Buttons,
  ZConnection, ComCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  Mask, rxtooledit;

type
  Tfrmproduto_pdv = class(TForm)
    wwDBGrid1: TwwDBGrid;
    qrpdv: TZQuery;
    dspdv: TDataSource;
    ViewSplit1: TViewSplit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Atualizar1: TMenuItem;
    Cancelar1: TMenuItem;
    ConexaoPDV: TZConnection;
    produto: TZQuery;
    barra: TZQuery;
    ViewSplit2: TViewSplit;
    memo1: TRichEdit;
    bar: TProgressBar;
    qrpdvDESCRICAO: TStringField;
    qrpdvCAMINHO: TStringField;
    qrpdvATUALIZAR: TStringField;
    qrpdvHOSTNAME: TStringField;
    Memo2: TMemo;
    BitBtn3: TBitBtn;
    Geral1: TMenuItem;
    BitBtn4: TBitBtn;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    config: TZQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrpdvAfterPost(DataSet: TDataSet);
    procedure qrpdvAfterDelete(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_pdv: Tfrmproduto_pdv;

implementation

uses modulo, produto_ligth, principal;

{$R *.dfm}

procedure Tfrmproduto_pdv.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_pdv.BitBtn1Click(Sender: TObject);
VAR P : STRING;
continua : boolean;
ERRO : INTEGER;
i : integer;
texto : pansichar;
begin
    memo1.Text := '';
    memo2.Text := '';

    frmproduto_ligth.qroperator.close;
    frmproduto_ligth.qroperator.sql.clear;
    frmproduto_ligth.qroperator.sql.add('DELETE from c000058 WHERE SITUACAO = 2');
    frmproduto_ligth.qroperator.EXECSQL;


    frmproduto_ligth.qroperator.close;
    frmproduto_ligth.qroperator.sql.clear;
    frmproduto_ligth.qroperator.sql.add('SELECT * from c000058');
    frmproduto_ligth.qroperator.OPEN;

    frmproduto_ligth.qrproduto.Refresh;
    qrpdv.first;
    while not qrpdv.eof do
    begin
      IF ansiuppercase(qrpdv.FIELDBYNAME('ATUALIZAR').ASSTRING) = 'SIM' THEN
      BEGIN
         TRY
           ConexaoPDV.Connected := false;
           ConexaoPDV.HostName := QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING;
           ConexaoPDV.Database := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING;
           CONEXAOPDV.Connected := TRUE;

           memo1.Lines.Add('Conectado --> Terminal '+QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING+':'+ QRPDV.FIELDBYNAME('CAMINHO').ASSTRING);

           Application.ProcessMessages;

           produto.close;
           produto.sql.clear;
           produto.sql.add('select * from c000025');
           produto.open;

           barra.close;
           barra.SQL.clear;
           barra.SQL.Add('select * from c000055');
           barra.open;
           bar.position := 0;
           bar.Max := frmproduto_ligth.qroperator.RecordCount;
         EXCEPT
           memo1.Lines.Add('Não Conectado --> Terminal '+QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING+':'+ QRPDV.FIELDBYNAME('CAMINHO').ASSTRING);

           texto := pansichar('Não foi possível conectar no computador: '+qrpdv.fieldbyname('hostname').asstring+':'+qrpdv.fieldbyname('caminho').asstring);
           application.messagebox(texto,'Erro!',mb_ok+MB_ICONERROR);

           bar.position := 0;

           exit;
         END;


         frmproduto_ligth.qroperator.First;
         while not frmproduto_ligth.qroperator.eof do
         begin
           continua := true;
           ERRO := 0;
           REPEAT
           if frmproduto_ligth.qroperator.fieldbyname('tiporegistro').asinteger = 1 then // produto
           begin
              try
              case frmproduto_ligth.qroperator.FieldByName('movimento').asinteger of
              1 : begin // incluir produto
                    frmproduto_ligth.qrproduto.close;
                    frmproduto_ligth.qrproduto.sql.clear;
                    frmproduto_ligth.qrproduto.SQL.add('select * from c000025 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    frmproduto_ligth.qrproduto.open;
                    if frmproduto_ligth.qrproduto.RecordCount > 0 then
                    begin
                      memo2.Lines.Add('Incluindo Produto '+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
                      PRODUTO.insert;
                      PRODUTO.fieldbyname('codigo').asstring := frmproduto_ligth.qrproduto.fieldbyname('codigo').asstring;
                      PRODUTO.fieldbyname('produto').asstring := frmproduto_ligth.qrproduto.fieldbyname('produto').asstring;
                      PRODUTO.fieldbyname('codmarca').asstring := frmproduto_ligth.qrproduto.fieldbyname('codmarca').asstring;
                      PRODUTO.fieldbyname('estoque').asstring := frmproduto_ligth.qrproduto.fieldbyname('estoque').asstring;
                      PRODUTO.fieldbyname('precovenda').asstring := frmproduto_ligth.qrproduto.fieldbyname('precovenda').asstring;
                      PRODUTO.fieldbyname('codbarra').asstring := frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring;
                      PRODUTO.fieldbyname('unidade').asstring := frmproduto_ligth.qrproduto.fieldbyname('unidade').asstring;
                      PRODUTO.fieldbyname('codaliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('codaliquota').asstring;
                      PRODUTO.fieldbyname('aliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('aliquota').asstring;
                      PRODUTO.fieldbyname('cst').asstring := frmproduto_ligth.qrproduto.fieldbyname('cst').asstring;


                      ERRO := 1;
                      PRODUTO.post;
                      FRMPRODUTO_LIGTH.qroperator.Edit;
                      frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                      FRMPRODUTO_LIGTH.qroperator.POST;
                    end;
                  end;
              2 : begin // alterar produto

                    frmproduto_ligth.qrproduto.close;
                    frmproduto_ligth.qrproduto.sql.clear;
                    frmproduto_ligth.qrproduto.SQL.add('select * from c000025 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    frmproduto_ligth.qrproduto.open;
                    if frmproduto_ligth.qrproduto.RecordCount > 0 then


                    //if frmproduto_ligth.qrproduto.Locate('codigo',frmproduto_ligth.qroperator.fieldbyname('codregistro').AsString,[loCaseInsensitive]) then

                    begin


                      produto.close;
                      produto.sql.clear;
                      produto.SQL.add('select * from c000025 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                      produto.open;
                      if produto.RecordCount > 0 then


                      //if produto.Locate('codigo',frmproduto_ligth.qroperator.fieldbyname('codregistro').AsString,[loCaseInsensitive]) then

                      begin
                        memo2.Lines.Add('Alterando Produto '+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
                        PRODUTO.edit;
                        PRODUTO.fieldbyname('produto').asstring := frmproduto_ligth.qrproduto.fieldbyname('produto').asstring;
                        PRODUTO.fieldbyname('codmarca').asstring := frmproduto_ligth.qrproduto.fieldbyname('codmarca').asstring;
                        PRODUTO.fieldbyname('estoque').asstring := frmproduto_ligth.qrproduto.fieldbyname('estoque').asstring;
                        PRODUTO.fieldbyname('precovenda').asstring := frmproduto_ligth.qrproduto.fieldbyname('precovenda').asstring;
                        PRODUTO.fieldbyname('codbarra').asstring := frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring;
                        PRODUTO.fieldbyname('unidade').asstring := frmproduto_ligth.qrproduto.fieldbyname('unidade').asstring;
                        PRODUTO.fieldbyname('codaliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('codaliquota').asstring;
                        PRODUTO.fieldbyname('aliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('aliquota').asstring;
                        PRODUTO.fieldbyname('cst').asstring := frmproduto_ligth.qrproduto.fieldbyname('cst').asstring;

                        ERRO := 2;
                        PRODUTO.post;
                        FRMPRODUTO_LIGTH.qroperator.Edit;
                        frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                        FRMPRODUTO_LIGTH.qroperator.POST;
                      end
                      else
                      begin
                        memo2.Lines.Add('Incluindo Produto '+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
                        PRODUTO.insert;
                        PRODUTO.fieldbyname('codigo').asstring := frmproduto_ligth.qrproduto.fieldbyname('codigo').asstring;
                        PRODUTO.fieldbyname('produto').asstring := frmproduto_ligth.qrproduto.fieldbyname('produto').asstring;
                        PRODUTO.fieldbyname('codmarca').asstring := frmproduto_ligth.qrproduto.fieldbyname('codmarca').asstring;
                        PRODUTO.fieldbyname('estoque').asstring := frmproduto_ligth.qrproduto.fieldbyname('estoque').asstring;
                        PRODUTO.fieldbyname('precovenda').asstring := frmproduto_ligth.qrproduto.fieldbyname('precovenda').asstring;
                        PRODUTO.fieldbyname('codbarra').asstring := frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring;
                        PRODUTO.fieldbyname('unidade').asstring := frmproduto_ligth.qrproduto.fieldbyname('unidade').asstring;
                        PRODUTO.fieldbyname('codaliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('codaliquota').asstring;
                        PRODUTO.fieldbyname('aliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('aliquota').asstring;
                        PRODUTO.fieldbyname('cst').asstring := frmproduto_ligth.qrproduto.fieldbyname('cst').asstring;
                        ERRO := 1;
                        PRODUTO.post;
                        FRMPRODUTO_LIGTH.qroperator.Edit;
                        frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                        FRMPRODUTO_LIGTH.qroperator.POST;
                      end;
                    end;
                  end;
              3 : begin // excluir produto
                    memo2.Lines.Add('Excluindo Produto '+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
                    ERRO := 3;
                    produto.close;
                    produto.sql.Clear;
                    produto.SQL.add('delete from c000025 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    produto.execsql;
                    FRMPRODUTO_LIGTH.qroperator.Edit;
                    frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                    FRMPRODUTO_LIGTH.qroperator.POST;
                  end;
              end;


              except

                FRMPRODUTO_LIGTH.qroperator.Edit;
                frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 1;
                FRMPRODUTO_LIGTH.qroperator.POST;

                IF ERRO = 1 THEN CONTINUA := TRUE;
                IF ERRO = 2 THEN
                BEGIN
                    APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
                    CONTINUA := FALSE;
                END;
                IF ERRO = 3 THEN
                BEGIN
                    APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
                    continua := false;
                END;
              end;



           end; // PRODUTO
           UNTIL CONTINUA = TRUE;




            repeat
           if frmproduto_ligth.qroperator.fieldbyname('tiporegistro').asinteger = 2 then // CODBARRA
           begin


              try
              case frmproduto_ligth.qroperator.FieldByName('movimento').asinteger of
              1 : begin // incluir produto
                    ERRO := 1;
                    frmproduto_ligth.qrcodbarra.close;
                    frmproduto_ligth.qrcodbarra.sql.clear;
                    frmproduto_ligth.qrcodbarra.sql.add('select * from c000055 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    frmproduto_ligth.qrcodbarra.Open;
                    if frmproduto_ligth.qrcodbarra.RecordCount > 0 then
                    begin
                      memo2.Lines.Add('Incluindo Barras '+frmproduto_ligth.qrcodbarra.fieldbyname('codbarra').asstring);
                      barra.insert;
                      barra.fieldbyname('codigo').asstring := frmproduto_ligth.qrcodbarra.fieldbyname('codigo').asstring;
                      barra.fieldbyname('codproduto').asstring := frmproduto_ligth.qrcodbarra.fieldbyname('codproduto').asstring;
                      barra.fieldbyname('codbarra').asstring := frmproduto_ligth.qrcodbarra.fieldbyname('codbarra').asstring;
                      barra.post;
                      FRMPRODUTO_LIGTH.qroperator.Edit;
                      frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                      FRMPRODUTO_LIGTH.qroperator.POST;
                    end;
                  end;
              2 : begin // alterar produto
                    ERRO := 2;
                    frmproduto_ligth.qrcodbarra.close;
                    frmproduto_ligth.qrcodbarra.sql.clear;
                    frmproduto_ligth.qrcodbarra.sql.add('select * from c000055 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    frmproduto_ligth.qrcodbarra.Open;
                    if frmproduto_ligth.qrcodbarra.RecordCount > 0 then
                    begin
                      barra.close;
                      barra.sql.clear;
                      barra.sql.add('select * from c000055 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                      barra.open;
                      if barra.RecordCount > 0 then
                      begin
                        memo2.Lines.Add('Alterando Barras '+frmproduto_ligth.qrcodbarra.fieldbyname('codbarra').asstring);
                        barra.edit;
                        barra.fieldbyname('codproduto').asstring := frmproduto_ligth.qrcodbarra.fieldbyname('codproduto').asstring;
                        barra.fieldbyname('codbarra').asstring := frmproduto_ligth.qrcodbarra.fieldbyname('codbarra').asstring;
                        barra.post;
                        FRMPRODUTO_LIGTH.qroperator.Edit;
                        frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                        FRMPRODUTO_LIGTH.qroperator.POST;
                      end;
                    end;



                  end;
              3 : begin // excluir produto
                   memo2.Lines.Add('Excluindo Barras '+frmproduto_ligth.qrcodbarra.fieldbyname('codbarra').asstring);
                    ERRO := 3;
                    barra.close;
                    barra.sql.clear;
                    barra.SQL.add('delete from c000055 where codigo = '''+frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring+'''');
                    barra.ExecSQL;
                      FRMPRODUTO_LIGTH.qroperator.Edit;
                      frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 2;
                      FRMPRODUTO_LIGTH.qroperator.POST;

                  end;
              end;
              except

                    FRMPRODUTO_LIGTH.qroperator.Edit;
                    frmproduto_ligth.qroperator.FieldByName('SITUACAO').ASINTEGER := 1;
                    FRMPRODUTO_LIGTH.qroperator.POST;

                IF ERRO = 1 THEN  CONTINUA := TRUE;
                IF ERRO = 2 THEN
                BEGIN
                    APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
                    CONTINUA := FALSE;
                END;
                IF ERRO = 3 THEN
                BEGIN
                    APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
                    continua := false;
                END;
              end;
           end; // barras
           UNTIL CONTINUA = TRUE;
           frmproduto_ligth.qroperator.next;
           bar.Position := bar.position + 1;
         end;
         barra.close;
      end;

      IF ansiuppercase(qrpdv.FIELDBYNAME('ATUALIZAR').ASSTRING) = 'SIM' THEN
        ConexaoPDV.Commit;

      qrpdv.next;

    end;

    bar.position := bar.max;
    memo1.Lines.Add('Pronto!');

    frmmodulo.Conexao.Commit;

    frmproduto_ligth.qrproduto.close;
    frmproduto_ligth.qrproduto.sql.clear;
    frmproduto_ligth.qrproduto.sql.add('select * from c000025');
    frmproduto_ligth.qrproduto.open;

    frmproduto_ligth.qrcodbarra.Close;
    frmproduto_ligth.qrcodbarra.sql.clear;
    frmproduto_ligth.qrcodbarra.sql.add('select * from c000055');
    frmproduto_ligth.qrcodbarra.open;


    showmessage('Processamento concluído com sucesso!');

    memo1.Text := '';
    memo2.Text := '';

end;

procedure Tfrmproduto_pdv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_pdv.FormShow(Sender: TObject);
begin

  qrpdv.Open;
  memo1.Text := '';
  memo2.Text := '';

  dateedit1.text := '01/'+copy(datetostr(date),4,7);
  dateedit2.date := date;

end;

procedure Tfrmproduto_pdv.qrpdvAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.Commit;
end;

procedure Tfrmproduto_pdv.qrpdvAfterDelete(DataSet: TDataSet);
begin
  frmmodulo.conexao.Commit;
end;

procedure Tfrmproduto_pdv.BitBtn3Click(Sender: TObject);
VAR P : STRING;
continua : boolean;
ERRO : INTEGER;
i : integer;
texto : pansichar;

begin

    memo1.Text := '';
    memo2.Text := '';

    frmproduto_ligth.qroperator.close;
    frmproduto_ligth.qroperator.sql.clear;
    frmproduto_ligth.qroperator.sql.add('DELETE from c000058');
    frmproduto_ligth.qroperator.EXECSQL;

    frmproduto_ligth.qroperator.close;
    frmproduto_ligth.qroperator.sql.clear;
    frmproduto_ligth.qroperator.sql.add('SELECT * from c000058');
    frmproduto_ligth.qroperator.OPEN;

    memo1.Lines.Add('Adicionando Produtos...');

    Application.ProcessMessages;

    frmproduto_ligth.qrproduto.close;
    frmproduto_ligth.qrproduto.sql.clear;
    frmproduto_ligth.qrproduto.SQL.add('select * from c000025');
    frmproduto_ligth.qrproduto.open;

    bar.position := 0;
    bar.Max := frmproduto_ligth.qrproduto.RecordCount;

    if frmproduto_ligth.qrproduto.RecordCount > 0 then
    begin
      while not frmproduto_ligth.qrproduto.eof do
        begin
          memo2.Lines.Add(' '+frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring+'-'+frmprincipal.Texto_Justifica(frmproduto_ligth.qrproduto.fieldbyname('produto').asstring,40,' ','D')+'-  R$ '+formatfloat('###,###,##0.00',frmproduto_ligth.qrproduto.fieldbyname('precovenda').AsFloat));
          frmproduto_ligth.qroperator.Insert;
          frmproduto_ligth.qroperator.fieldbyname('tiporegistro').AsInteger := 1;
          frmproduto_ligth.qroperator.fieldbyname('movimento').AsInteger := 2;
          frmproduto_ligth.qroperator.fieldbyname('codregistro').asstring := frmproduto_ligth.qrproduto.fieldbyname('codigo').asstring;
          frmproduto_ligth.qroperator.fieldbyname('situacao').AsInteger := 0;
          frmproduto_ligth.qroperator.post;
          frmproduto_ligth.qrproduto.Next;
          bar.Position := bar.position + 1;
        end;
    end;
    bar.position := bar.max;
    memo1.Lines.Add('Pronto!');

    frmmodulo.Conexao.Commit;

    frmproduto_ligth.qrproduto.close;
    frmproduto_ligth.qrproduto.sql.clear;
    frmproduto_ligth.qrproduto.sql.add('select * from c000025');
    frmproduto_ligth.qrproduto.open;

    frmproduto_ligth.qrcodbarra.Close;
    frmproduto_ligth.qrcodbarra.sql.clear;
    frmproduto_ligth.qrcodbarra.sql.add('select * from c000055');
    frmproduto_ligth.qrcodbarra.open;

    if application.MessageBox('Foi Adicionado Todos os produtos, Deseja Atualizar os Caixas?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
      BitBtn1Click(frmproduto_pdv);

    memo1.Text := '';
    memo2.Text := '';

end;

procedure Tfrmproduto_pdv.BitBtn4Click(Sender: TObject);
VAR P : STRING;
continua : boolean;
ERRO : INTEGER;
i : integer;
texto : pansichar;

begin

  if frmprincipal.autentica('Carga Geral de produtos',3) then
  begin

  if application.MessageBox('Deseja Realmente da Carga de Produtos nos Terminais?','Atenção',mb_yesno+MB_ICONWARNING) = idno then
    exit;

    memo1.Text := '';
    memo2.Text := '';

    frmproduto_ligth.qrproduto.close;
    frmproduto_ligth.qrproduto.sql.clear;
    frmproduto_ligth.qrproduto.sql.add('select * from c000025 where ultima_alteracao BETWEEN :datai and :dataf order by ultima_alteracao');
    frmproduto_ligth.qrproduto.params.ParamByName('datai').asdatetime := dateedit1.date;
    frmproduto_ligth.qrproduto.params.ParamByName('dataf').asdatetime := dateedit2.date;
    frmproduto_ligth.qrproduto.open;

    if frmproduto_ligth.qrproduto.RecordCount > 0 then
    begin
    frmproduto_ligth.qrproduto.Refresh;
    qrpdv.first;
    while not qrpdv.eof do
    begin
      IF ansiuppercase(qrpdv.FIELDBYNAME('ATUALIZAR').ASSTRING) = 'SIM' THEN
      BEGIN
         TRY
           ConexaoPDV.Connected := false;
           ConexaoPDV.HostName := QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING;
           ConexaoPDV.Database := QRPDV.FIELDBYNAME('CAMINHO').ASSTRING;
           CONEXAOPDV.Connected := TRUE;

           memo1.Lines.Add('Conectado --> Terminal '+QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING+' : '+ QRPDV.FIELDBYNAME('CAMINHO').ASSTRING);

           Application.ProcessMessages;

           produto.close;
           produto.sql.clear;
           produto.sql.add('select * from c000025');
           produto.open;

           barra.close;
           barra.SQL.clear;
           barra.SQL.Add('select * from c000055');
           barra.open;

           bar.position := 0;
           bar.Max := frmproduto_ligth.qrproduto.RecordCount;

         EXCEPT

           memo1.Lines.Add('Não Conectado --> Terminal '+QRPDV.FIELDBYNAME('HOSTNAME').ASSTRING+':'+ QRPDV.FIELDBYNAME('CAMINHO').ASSTRING);

           texto := pansichar('Não foi possível conectar no computador: '+qrpdv.fieldbyname('hostname').asstring+':'+qrpdv.fieldbyname('caminho').asstring);
           application.messagebox(texto,'Erro!',mb_ok+MB_ICONERROR);

           bar.position := 0;

           exit;

         END;

         frmproduto_ligth.qrproduto.First;
         while not frmproduto_ligth.qrproduto.eof do
         begin
           continua := true;
           ERRO := 0;
           if produto.Locate('codigo',frmproduto_ligth.qrproduto.fieldbyname('codigo').AsString,[loCaseInsensitive]) then
             begin

                 memo2.Lines.Add('Alterando Produto => '+frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring+'-'+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
                 PRODUTO.edit;
                 PRODUTO.fieldbyname('produto').asstring := frmproduto_ligth.qrproduto.fieldbyname('produto').asstring;
                 PRODUTO.fieldbyname('codmarca').asstring := frmproduto_ligth.qrproduto.fieldbyname('codmarca').asstring;
                 PRODUTO.fieldbyname('estoque').asstring := frmproduto_ligth.qrproduto.fieldbyname('estoque').asstring;
                 PRODUTO.fieldbyname('precovenda').asstring := frmproduto_ligth.qrproduto.fieldbyname('precovenda').asstring;
                 PRODUTO.fieldbyname('codbarra').asstring := frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring;
                 PRODUTO.fieldbyname('unidade').asstring := frmproduto_ligth.qrproduto.fieldbyname('unidade').asstring;
                 PRODUTO.fieldbyname('codaliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('codaliquota').asstring;
                 PRODUTO.fieldbyname('aliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('aliquota').asstring;
                 PRODUTO.fieldbyname('cst').asstring := frmproduto_ligth.qrproduto.fieldbyname('cst').asstring;

                 ERRO := 1;
                 PRODUTO.post;

             end
           else
             begin
               memo2.Lines.Add('Incluindo Produto => '+frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring+'-'+frmproduto_ligth.qrproduto.fieldbyname('produto').asstring);
               PRODUTO.insert;
               PRODUTO.fieldbyname('codigo').asstring := frmproduto_ligth.qrproduto.fieldbyname('codigo').asstring;
               PRODUTO.fieldbyname('produto').asstring := frmproduto_ligth.qrproduto.fieldbyname('produto').asstring;
               PRODUTO.fieldbyname('codmarca').asstring := frmproduto_ligth.qrproduto.fieldbyname('codmarca').asstring;
               PRODUTO.fieldbyname('estoque').asstring := frmproduto_ligth.qrproduto.fieldbyname('estoque').asstring;
               PRODUTO.fieldbyname('precovenda').asstring := frmproduto_ligth.qrproduto.fieldbyname('precovenda').asstring;
               PRODUTO.fieldbyname('codbarra').asstring := frmproduto_ligth.qrproduto.fieldbyname('codbarra').asstring;
               PRODUTO.fieldbyname('unidade').asstring := frmproduto_ligth.qrproduto.fieldbyname('unidade').asstring;
               PRODUTO.fieldbyname('codaliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('codaliquota').asstring;
               PRODUTO.fieldbyname('aliquota').asstring := frmproduto_ligth.qrproduto.fieldbyname('aliquota').asstring;
               PRODUTO.fieldbyname('cst').asstring := frmproduto_ligth.qrproduto.fieldbyname('cst').asstring;
               ERRO := 1;
               PRODUTO.post;
             end;

           IF ERRO = 1 THEN CONTINUA := TRUE;
           IF ERRO = 2 THEN
           BEGIN
             APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
             CONTINUA := FALSE;
           END;
           IF ERRO = 3 THEN
           BEGIN
             APPLICATION.MessageBox('O item a ser atualizado está sendo utilizado neste momento! O Sistema irá repetir o processo...','Atenção!',MB_ok+MB_ICONWARNING);
             continua := false;
           END;
          frmproduto_ligth.qrproduto.next;
          bar.Position := bar.position + 1;
        end;
        barra.close;
      end;

      IF ansiuppercase(qrpdv.FIELDBYNAME('ATUALIZAR').ASSTRING) = 'SIM' THEN
        begin
          config.close;
          config.SQL.clear;
          config.SQL.Add('select * from SC00000');
          config.open;

          CONFIG.edit;
          CONFIG.fieldbyname('ultima_carga').asdatetime := date;
          ERRO := 1;
          CONFIG.post;

          ConexaoPDV.Commit;
        end;
      qrpdv.next;

    end;

    //bar.position := bar.max;

    memo2.Lines.Add('-----------------------------------------------------------------------------');
    memo2.Lines.Add('Quantidade de Produtos Alterados                        => ' + inttostr(frmproduto_ligth.qrproduto.RecordCount));
    memo2.Lines.Add('Última Carga de Produtos Efetuadas nos terminais => '+ datetostr(date));
    memo2.Lines.Add('-----------------------------------------------------------------------------');

    memo1.Lines.Add('Pronto!');

    frmmodulo.Conexao.Commit;

    frmproduto_ligth.qrproduto.close;
    frmproduto_ligth.qrproduto.sql.clear;
    frmproduto_ligth.qrproduto.sql.add('select * from c000025');
    frmproduto_ligth.qrproduto.open;

    frmproduto_ligth.qrcodbarra.Close;
    frmproduto_ligth.qrcodbarra.sql.clear;
    frmproduto_ligth.qrcodbarra.sql.add('select * from c000055');
    frmproduto_ligth.qrcodbarra.open;

    //bar.position := bar.max;
    bar.position := 0;

    showmessage('Processamento concluído com sucesso!');

    qrpdv.First;

    memo1.Text := '';
    memo2.Text := '';
    end

  else
    showmessage('Não houve alteração nos dados dos produtos nesse período!, Verifique...');


   end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

end.

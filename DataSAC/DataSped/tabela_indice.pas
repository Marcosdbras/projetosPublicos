unit tabela_indice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls, ExtCtrls, DB, MemDS,
  DBAccess, IBC;

type
  TfrmTabela_Indice = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    query: TIBCQuery;
    Panel3: TPanel;
    Bevel2: TBevel;
    Panel4: TPanel;
    grid_indice: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    Panel2: TPanel;
    Panel5: TPanel;
    Bevel3: TBevel;
    Panel6: TPanel;
    Panel7: TPanel;
    grid_insumo: TNextGrid;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    qrInsumo: TIBCQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_indiceHeaderClick(Sender: TObject; ACol: Integer);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure grid_indiceSelectCell(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabela_Indice: TfrmTabela_Indice;

implementation

uses Math, unECF, modulo, principal, funcoes;

{$R *.dfm}

procedure TfrmTabela_Indice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTabela_Indice.FormShow(Sender: TObject);
var i : integer;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select count(estoque_indice.cod_indice),');
  query.sql.add('estoque_indice.cod_produto, estoque.nome');
  query.sql.add('from estoque_indice, estoque');
  query.sql.add('where estoque_indice.cod_produto = estoque.codigo');
  query.sql.add('group by estoque_indice.cod_produto, estoque.nome');
  query.sql.add('order by estoque.nome');
  query.open;
  query.first;
  grid_indice.ClearRows;
  while not query.eof do
  begin
    i := grid_indice.AddRow(1);
    grid_indice.Cell[0,i].asboolean := false;
    grid_indice.Cell[1,i].Asinteger := query.fieldbyname('cod_produto').asinteger;
    grid_indice.cell[2,0].asstring := query.fieldbyname('nome').asstring;
    query.next;
  end;
  if grid_indice.RowCount > 0 then
  begin
    grid_indice.SetFocus;
    grid_indice.SelectedRow := 0;
  end;


end;

procedure TfrmTabela_Indice.grid_indiceHeaderClick(Sender: TObject;
  ACol: Integer);
  var i : integer;
begin
  if ACol = 0 then
  begin
    If grid_indice.rowcount = 0 then exit;
    If grid_indice.Cell[0,0].AsBoolean = true then
      for i := 0 to grid_indice.RowCount - 1 do grid_indice.cell[0,i].asboolean := false
    else
      for i := 0 to grid_indice.RowCount - 1 do grid_indice.cell[0,i].asboolean := true;
  end;
end;

procedure TfrmTabela_Indice.bt_okClick(Sender: TObject);
var i : integer;
 b : boolean;
begin
  b := false;
  for i := 0 to grid_indice.RowCount - 1 do
  begin
    If grid_indice.Cell[0,i].AsBoolean = true then
    begin
      b := true;
      break;
    end;
  end;

  if not b then
  begin
    application.messagebox('Favor selecionar um produto!','Erro',mb_ok+mb_iconerror);
    exit;
  end;


      repeat
        // COO

        sMsg := cECF_Abre_Gerencial(iECF_Modelo,'TAB. INDICE TECNICO DE PRODUCAO');
        sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;
        end
        else
        begin
          // extrair GNF E GRG

          sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
        end;
      until sMsg = 'OK';




      if sMsg = 'OK' then
      begin
        FOR I := 0 TO grid_indice.RowCount - 1 do
        begin
          if grid_indice.Cell[0,i].asboolean then
          begin
            repeat
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,'************************************************');
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              'Produto: '+Zerar( grid_indice.cell[1,i].asstring,6 )+' - '+
                          grid_indice.cell[2,i].asstring);

              SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Indice Descricao                      Quantidade');
              SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');

              query.close;
              query.sql.clear;
              query.sql.add('select');
              query.sql.add('estoque_indice.*, estoque.nome');
              query.sql.add('from estoque_indice, estoque');
              query.sql.add('where estoque_indice.cod_indice = estoque.codigo');
              query.sql.add('and cod_produto = '+grid_indice.cell[1,i].asstring);
              query.sql.add('order by estoque.nome');
              query.open;
              query.first;
              while not query.eof do
              begin
                SMsg := cECF_Usa_Gerencial(iECF_Modelo,zerar(query.fieldbyname('cod_indice').asstring,6)+' '+
                                           texto_justifica(query.fieldbyname('nome').asstring,30,' ',taEsquerda)+' '+
                                           texto_justifica(formatfloat('###,###,##0.000',query.fieldbyname('qtde').asfloat),10,' ',taDireita));

                if sMsg <> 'OK' then
                begin
                  if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                                      'Mensagem: '+sMsg+#13+
                                                      'Deseja tentar outra vez?'),'Erro',
                                                      mb_yesno+mb_iconerror ) = idno
                  then
                  begin
                    break;
                  end;
                end
                else
                begin
                  query.next;
                end;
              end;
            until sMsg = 'OK';
          end;
        end;
      end;

      if sMsg = 'OK' then
      begin
        repeat
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
            begin
              break;
            end;
          end
          else
          begin
            // registrar Gerencial no banco de dados
            with frmmodulo do
            begin
              spNao_Fiscal.Close;
              spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
              spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
              spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
              spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
              spNao_fiscal.ParamByName('indice').asstring := 'RG';
              spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
              spNao_fiscal.ParamByName('valor').asfloat := 0;
              spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
              spNao_fiscal.ParamByName('GNF').asstring := sGNF;
              spNao_fiscal.ParamByName('GRG').asstring := sGRG;
              spNao_fiscal.ParamByName('CDC').Clear;
              spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
              spNao_Fiscal.Prepare;
              spNao_Fiscal.Execute;
            end;

          end;
        until sMsg = 'OK';

      end;

end;

procedure TfrmTabela_Indice.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTabela_Indice.grid_indiceSelectCell(Sender: TObject; ACol,
  ARow: Integer);
  var i : integer;
begin
  i := grid_indice.SelectedRow;

  if i < 0 then exit;

  try
    query.close;
    query.sql.clear;
    query.sql.add('select');
    query.sql.add('estoque_indice.*, estoque.nome, estoque.unidade');
    query.sql.add('from estoque_indice, estoque');
    query.sql.add('where estoque_indice.cod_indice = estoque.codigo');
    query.sql.add('and cod_produto = '+grid_indice.cell[1,i].asstring);
    query.sql.add('order by estoque.nome');
    query.open;

    query.first;
    grid_insumo.ClearRows;
    while not query.eof do
    begin
      i := grid_insumo.AddRow(1);
      grid_insumo.Cell[0,i].asinteger := query.fieldbyname('cod_indice').asinteger;
      grid_insumo.cell[1,i].Asstring := query.fieldbyname('nome').asstring;
      grid_insumo.cell[2,i].asfloat := query.fieldbyname('qtde').asfloat;
      grid_insumo.cell[3,i].asstring := query.fieldbyname('unidade').asstring;
      query.next;
    end;
  except
  end;
end;

end.

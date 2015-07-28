unit posto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, MemDS, DBAccess, IBC,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid;

type
  TfrmPosto = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    sh_status_conexao: TShape;
    lb_status_conexao: TLabel;
    query: TIBCQuery;
    GroupBox1: TGroupBox;
    grid_bico: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    GroupBox2: TGroupBox;
    grid_abastecimento: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn7: TNxTextColumn;
    timer_bico: TTimer;
    NxNumberColumn4: TNxNumberColumn;
    timer_abastecimento: TTimer;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    qrAbastecimento: TIBCQuery;
    NxNumberColumn7: TNxNumberColumn;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure timer_bicoTimer(Sender: TObject);
    procedure timer_abastecimentoTimer(Sender: TObject);
    procedure grid_bicoCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosto: TfrmPosto;
  iQtde_bico : integer;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmPosto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPosto.FormShow(Sender: TObject);
var i : integer;
begin
  query.close;
  query.sql.clear;
  query.sql.Add('select * from posto_config');
  query.open;

  // Abrir a porta

  if InicializaSerial(query.fieldbyname('porta').asinteger) then
  begin
    sh_status_conexao.Brush.Color := clLime;
    lb_status_conexao.Caption := 'Concentrador '+query.fieldbyname('concentrador').asstring+
    ' conectado na COM'+query.FIELDBYNAME('PORTA').Asstring;


    // alimentação do grid dos BICOS
    query.close;
    query.sql.clear;
    query.sql.add('select * from posto_bico order by bomba, bico');
    query.open;
    query.First;

    grid_bico.ClearRows;
    grid_abastecimento.ClearRows;

    while not query.eof do
    begin
      i := grid_bico.AddRow(1);
      grid_bico.Cell[0,i].AsString := query.fieldbyname('bomba').asstring;
      grid_bico.Cell[1,i].asstring := query.fieldbyname('bico').asstring;
      grid_bico.Cell[2,i].asstring := 'PRONTA';
      grid_bico.cell[3,i].asinteger := query.fieldbyname('codigo').asinteger;
      query.next;
    end;
    iQtde_bico := query.RecordCount;

    qrabastecimento.close;
    qrabastecimento.sql.clear;
    qrabastecimento.sql.add('select posto_abastecimento.*, estoque.nome produto');
    qrabastecimento.sql.add('from posto_abastecimento, estoque');
    qrabastecimento.sql.add('where posto_abastecimento.cod_produto = estoque.codigo');
    qrabastecimento.sql.add('and posto_abastecimento.situacao = 0');
    qrabastecimento.sql.add('order by posto_abastecimento.codigo');
    qrabastecimento.Open;
    qrabastecimento.First;
    while not qrAbastecimento.Eof do
    begin
      i := grid_abastecimento.AddRow(1);
      // data
      grid_abastecimento.Cell[0,i].asstring := qrabastecimento.fieldbyname('data').asstring;
      // hora
      grid_abastecimento.cell[1,i].asstring := qrabastecimento.fieldbyname('hora').asstring;
      // bomba
      grid_abastecimento.cell[2,i].asstring := qrabastecimento.fieldbyname('bomba').asstring;
      // bico
      grid_abastecimento.cell[3,i].asstring := qrabastecimento.fieldbyname('bico').asstring;
      // produto
      grid_abastecimento.cell[4,i].asstring := qrabastecimento.fieldbyname('produto').asstring;
      // Quantidade
      grid_abastecimento.cell[5,i].asfloat  := qrabastecimento.fieldbyname('qtde').asfloat;
      // preco unitario
      grid_abastecimento.cell[6,i].asfloat  := qrabastecimento.fieldbyname('unitario').asfloat;
      // total
      grid_abastecimento.cell[7,i].asfloat  := qrabastecimento.fieldbyname('total').asfloat;
      // encerrante inicial
      grid_abastecimento.cell[8,i].asfloat  := qrabastecimento.fieldbyname('ei').asfloat;
      // encerrante final
      grid_abastecimento.cell[9,i].asfloat  := qrabastecimento.fieldbyname('ef').asfloat;
      // codigo
      grid_abastecimento.cell[10,i].asinteger  := qrabastecimento.fieldbyname('codigo').asinteger;
      qrAbastecimento.Next;
    end;







    TIMER_BICO.Enabled := true;
    timer_abastecimento.Enabled := true;
  end
  else
  begin
    sh_status_conexao.Brush.Color := clRed;
    lb_status_conexao.Caption := 'Erro na Conexão! Concentrador '+query.fieldbyname('concentrador').asstring+
    ' - Porta COM'+query.FIELDBYNAME('PORTA').Asstring;
    Destroy;
  end;
end;

procedure TfrmPosto.FormDestroy(Sender: TObject);
begin
  FechaSerial;
end;

procedure TfrmPosto.timer_bicoTimer(Sender: TObject);
var
  ms:multistatus;
  a:byte;
  x : integer;
begin
  ms:=LeStatus;
  for a:=1 to 32 do
  begin
    for x := 0 to grid_bico.RowCount - 1 do
    begin
      if a = grid_bico.Cell[3,x].Asinteger then
      begin
        case ms.Status[a] of
          Livre      : grid_bico.Cell[2,x].AsString := 'LIVRE';
          Pronta     : grid_bico.Cell[2,x].AsString := 'PRONTA';
          Falha      : grid_bico.Cell[2,x].AsString := 'FALHA';
          Concluiu   : grid_bico.Cell[2,x].AsString := 'CONCLUIU';
          Abastecendo: grid_bico.Cell[2,x].AsString := 'ABASTECENDO';
          Bloqueada  : grid_bico.Cell[2,x].AsString := 'BLOQUEDA';
          SolicitaLib: grid_bico.Cell[2,x].AsString := 'ESPERA';
        end;
      end;
    end;
  end;
end;

procedure TfrmPosto.timer_abastecimentoTimer(Sender: TObject);
var ab:abastFid;
i : integer;
begin
  // faz a leitura das bombas
  ab:=LeAbastecimentoFid;
  if ab.total_litros > 0 then
  begin

    query.close;
    query.sql.clear;
    query.sql.add('select posto_bico.bomba, posto_bico.cod_produto, estoque.nome produto ');
    query.sql.add('from posto_bico, estoque ');
    query.sql.add('where posto_bico.cod_produto = estoque.codigo');
    query.sql.add('and posto_bico.bico = '''+ab.canal+'''');
    query.Open;


    frmmodulo.St_Abastecimento_codigo.Prepare;
    frmModulo.St_Abastecimento_codigo.Execute;

    frmmodulo.St_Abastecimento.Close;
    frmmodulo.St_Abastecimento.ParamByName('codigo').AsInteger :=
      frmmodulo.St_Abastecimento_codigo.parambyname('codigo').asinteger;
    frmmodulo.St_Abastecimento.ParamByName('data').asdatetime := strtodate(ab.data);
    frmmodulo.St_Abastecimento.ParamByName('hora').asstring := ab.hora;
    frmmodulo.St_Abastecimento.ParamByName('bomba').asstring := query.fieldbyname('bomba').asstring;
    frmmodulo.St_Abastecimento.ParamByName('bico').asstring := ab.canal;
    frmmodulo.St_Abastecimento.ParamByName('cod_produto').asinteger := query.fieldbyname('cod_produto').asinteger;
    frmmodulo.St_Abastecimento.ParamByName('qtde').asfloat := ab.total_litros;
    frmmodulo.St_Abastecimento.ParamByName('unitario').asfloat := ab.PU;
    frmmodulo.St_Abastecimento.ParamByName('total').asfloat := ab.total_dinheiro;
    frmmodulo.St_Abastecimento.ParamByName('ei').asfloat := ab.encerrante - ab.total_litros;
    frmmodulo.St_Abastecimento.ParamByName('ef').asfloat := ab.encerrante;
    frmmodulo.St_Abastecimento.ParamByName('situacao').asinteger := 0;
    frmmodulo.St_Abastecimento.ExecProc;


    i := grid_abastecimento.AddRow(1);
    // data
    grid_abastecimento.Cell[0,i].asstring := ab.data;
    // hora
    grid_abastecimento.cell[1,i].asstring := ab.hora;
    // bomba
    grid_abastecimento.cell[2,i].asstring := query.fieldbyname('bomba').asstring;
    // bico
    grid_abastecimento.cell[3,i].asstring := ab.canal;
    // produto
    grid_abastecimento.cell[4,i].asstring := query.fieldbyname('produto').asstring;
    // Quantidade
    grid_abastecimento.cell[5,i].asfloat  := ab.total_litros;
    // preco unitario
    grid_abastecimento.cell[6,i].asfloat  := ab.PU;
    // total
    grid_abastecimento.cell[7,i].asfloat  := ab.total_dinheiro;
    // encerrante inicial
    grid_abastecimento.cell[8,i].asfloat  := ab.encerrante - ab.total_litros;
    // encerrante final
    grid_abastecimento.cell[9,i].asfloat  := ab.encerrante;
    // codigo
    grid_abastecimento.cell[10,i].asinteger  := frmmodulo.St_Abastecimento_codigo.parambyname('codigo').asinteger;


  end;
end;

procedure TfrmPosto.grid_bicoCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
{  if grid_bico.Cell[2,arow].AsString = 'ABASTECENDO' then
  begin
    textcolor := clWhite;
    grid_bico.Cell[2,arow].color := clRed;
  end;
  if grid_bico.Cell[2,arow].AsString = 'LIVRE' then
  begin
    textcolor := clWindowText;
    grid_bico.Cell[2,arow].color := clWindow;
  end;
{
          Pronta     : grid_bico.Cell[2,x].AsString := 'PRONTA';
          Falha      : grid_bico.Cell[2,x].AsString := 'FALHA';
          Concluiu   : grid_bico.Cell[2,x].AsString := 'CONCLUIU';
          Abastecendo: grid_bico.Cell[2,x].AsString := 'ABASTECENDO';
          Bloqueada  : grid_bico.Cell[2,x].AsString := 'BLOQUEDA';
          SolicitaLib: grid_bico.Cell[2,x].AsString := 'ESPERA';
}
end;

procedure TfrmPosto.Button2Click(Sender: TObject);
var st:encerrante;
begin
  if grid_bico.RowCount = 0 then exit;
  if grid_bico.SelectedRow < 0 then
  begin
    application.messagebox('Favor selecionar um Bico!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end;
  if grid_bico.cell[2,grid_bico.SelectedRow].asstring <> 'LIVRE' then
  begin
    application.MessageBox('A bico tem que estar com STATUS = LIVRE!','Erro',mb_ok+MB_ICONWARNING);
    exit;
  end;

  st:=ConsultaEncerrante('L',grid_bico.cell[1,grid_bico.selectedrow].asstring);
  Showmessage('Bico: ' + st.Bico +#13+'Litros: ' + floattostr(st.valor));

end;

end.




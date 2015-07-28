unit produto_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvShapeButton, ComCtrls, AdvGlowButton,
  Mask, RzEdit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  TFlatPanelUnit;

type
  Tfrmproduto_estoque = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label2: TLabel;
    ant_inicial: TRzEdit;
    Label3: TLabel;
    ant_final: TRzEdit;
    Label4: TLabel;
    novo_inicial: TRzEdit;
    Label5: TLabel;
    novo_final: TRzEdit;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    ProgressBar1: TProgressBar;
    qrproduto: TZQuery;
    ZQuery1: TZQuery;
    Label6: TLabel;
    BATUALIZA: TAdvGlowButton;
    FlatPanel1: TFlatPanel;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure BATUALIZAClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_estoque: Tfrmproduto_estoque;
  continuar1 : boolean;
  I : INTEGER;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmproduto_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if not continuar1 then
  begin
    if application.messagebox('Este processamento é fundamental para o funcionamento do sistema! Se cancelar o sistema será finalizado! Tem certeza?','Aviso',
                               mb_yesno+MB_ICONWARNING) = idyes then application.Terminate else abort;
  end;
end;

procedure Tfrmproduto_estoque.FormShow(Sender: TObject);
begin
  I := 0;
  continuar1 := false;
  label6.caption := '';
  if (strtodate(ant_final.text) - strtodate(ant_inicial.text)) > 31 then
  begin
    label6.caption := 'Este procedimento levará alguns minutos!'
  end;

  if ant_INICIAL.text = '01/01/1900' then
  begin
    TIMER1.Enabled := TRUE;
  end;

end;

procedure Tfrmproduto_estoque.bgravarClick(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000025 order by codigo');
  qrproduto.open;

  ProgressBar1.Position := 0;
  progressbar1.Step := 1;
  ProgressBar1.Max := qrproduto.recordcount;


  qrproduto.first;
  while not qrproduto.eof do
  begin
   zquery1.close;
    zquery1.sql.clear;
    zquery1.sql.add('select pro.*,');
    zquery1.SQL.add('(select sum(movimento_estoque) from c000032 where codproduto = pro.codigo and data >= :datai and data <= :dataf ) estoquex');
    zquery1.sql.add('from c000025 pro');
    zquery1.sql.add('where pro.codigo = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    zquery1.Params.ParamByName('datai').asdatetime := strtodate(ant_inicial.text);
    zquery1.Params.ParamByName('dataf').asdatetime := strtodate(ant_final.text);
    zquery1.open;


    qrproduto.edit;
    qrproduto.fieldbyname('estoque_anterior').asfloat := qrproduto.fieldbyname('estoque_anterior').asfloat  + zquery1.fieldbyname('estoquex').asfloat;
    qrproduto.post;

    qrproduto.next;

    progressbar1.StepIt;


  end;

    zquery1.close;
    zquery1.sql.clear;
    zquery1.sql.add('select * from c000045 where codigo = ''000099''');
    zquery1.open;
    zquery1.edit;
    zquery1.fieldbyname('situacao_atual').asstring := novo_inicial.text;
    zquery1.Post;

  frmmodulo.Conexao.Commit;



  application.messagebox('Processamento concluído com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);

  continuar1 := true;
  close;
end;

procedure Tfrmproduto_estoque.BATUALIZAClick(Sender: TObject);
begin

  zquery1.close;
  zquery1.sql.clear;
  zquery1.sql.add('select * from c000032');
  zquery1.Open;
  zquery1.First;

  ProgressBar1.Position := 0;
  progressbar1.Step := 1;
  ProgressBar1.Max := ZQUERY1.recordcount;

  while not zquery1.eof do
  begin
    zquery1.Edit;
    case zquery1.fieldbyname('movimento').asinteger of
    0,10 : zquery1.FieldByName('movimento_estoque').asfloat := zquery1.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : zquery1.FieldByName('movimento_estoque').asfloat := zquery1.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : zquery1.FieldByName('movimento_estoque').asfloat := zquery1.FieldByName('qtde').asfloat * (-1);
    end;
    zquery1.post;
    zquery1.next;
    PROGRESSBAR1.StepIt;
  end;
  frmmodulo.conexao.commit;
end;

procedure Tfrmproduto_estoque.Timer1Timer(Sender: TObject);
begin
  I := I + 1;
  IF I = 1 THEN
  BEGIN
    BGRAVAR.ENABLED := FALSE;
    APPLICATION.ProcessMessages;
    TIMER1.Enabled := FALSE;
    FlatPanel1.Visible := TRUE;

    FLATPANEL1.TOP := 67;
    FLATPANEL1.LEFT := 62;

    APPLICATION.ProcessMessages;
    BATUALIZAClick(FRMPRODUTO_ESTOQUE);
    FlatPanel1.Visible := FALSE;
    BGRAVAR.Enabled := TRUE;
    PROGRESSBAR1.Position := 0;
  END;
end;

end.

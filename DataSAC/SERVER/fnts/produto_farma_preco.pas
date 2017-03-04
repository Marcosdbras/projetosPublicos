unit produto_farma_preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, DB, Buttons,
  ExtCtrls, Collection, TFlatPanelUnit, ComCtrls, DBTables, Wwtable, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton, RzPrgres;

type
  Tfrmproduto_farma_preco = class(TForm)
    PopupMenu1: TPopupMenu;
    Iniciar1: TMenuItem;
    Fechar1: TMenuItem;
    qrproduto: TZQuery;
    abc: TQuery;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    MEMO1: TRichEdit;
    Label1: TLabel;
    combobalanca: TwwDBComboBox;
    barra: TRzProgressBar;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure combobalancaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_farma_preco: Tfrmproduto_farma_preco;

implementation

uses modulo, principal;

{$R *.dfm}

function complet(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := palavra+carac;
   result := palavra;
end;
function completat(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := carac +palavra;
   result := palavra;
end;



procedure Tfrmproduto_farma_preco.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  MEMO1.TEXT := '';
end;

procedure Tfrmproduto_farma_preco.BitBtn1Click(Sender: TObject);
var
posi : integer;

begin
    MEMO1.TEXT := '';

    qrproduto.close;
    qrproduto.SQL.Clear;
    qrproduto.sql.add('select * from c000025 order by codigo');
    qrproduto.open;






    try
      abc.close;
      abc.Databasename := 'c:\abcfarma\';
      abc.open;
    except
      application.messagebox('Não foi possível conectar ao arquivo "\abcfarma\tabela.dbf"! Favor verificar!','Atenção',mb_ok+MB_ICONError);
      exit;
    end;



     posi := 0;

    BARRA.partscomplete := 0;
    barra.TotalParts := qrproduto.RecordCount;
    qrproduto.First;
    while not qrproduto.eof do
    begin
        try
        abc.close;
        abc.sql.clear;
        abc.sql.add('SELECT * FROM TABELA WHERE MED_BARRA = "'+qrPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING+'"');
        abc.open;
        if abc.RecNo > 0 then
        begin
          qrPRODUTO.EDIT;
          IF qrPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT > 0 THEN
          BEGIN
            qrPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT := ABC.FIELDBYNAME('MED_PCO1').ASFLOAT/qrPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT;
            qrPRODUTO.FIELDBYNAME('PRECOCUSTO').ASFLOAT := ABC.FIELDBYNAME('MED_PLA1').ASFLOAT/qrPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT;
          END
          ELSE
          BEGIN
            qrPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT := ABC.FIELDBYNAME('MED_PCO1').ASFLOAT;
            qrPRODUTO.FIELDBYNAME('PRECOCUSTO').ASFLOAT := ABC.FIELDBYNAME('MED_PLA1').ASFLOAT;
          END;
          IF qrPRODUTO.FieldByName('AUTO_APLICACAO').ASSTRING = '' THEN qrPRODUTO.FIELDBYNAME('AUTO_APLICACAO').ASSTRING := copy(ABC.FIELDBYNAME('MED_PRINCI').AsString,1,60);
          qrPRODUTO.POST;
          memo1.Lines.Add(FRMPRINCIPAL.TEXTO_JUSTIFICA(qrPRODUTO.fieldbyname('codigo').asstring,6,'0','E')+' | '+FRMPRINCIPAL.texto_justifica(QRPRODUTO.fieldbyname('produto').asstring,40,' ','D')+'...  ATUALIZADO!');
          posi := posi + 1;
        end
        else
        begin
           memo1.Lines.Add(FRMPRINCIPAL.TEXTO_JUSTIFICA(qrPRODUTO.fieldbyname('codigo').asstring,6,'0','E')+' | '+FRMPRINCIPAL.texto_justifica(QRPRODUTO.fieldbyname('produto').asstring,40,' ','D')+'...  Não atualizado!');
        end;
        barra.partscomplete := barra.partscomplete + 1;
        Application.ProcessMessages;
        except
          memo1.Lines.Add(FRMPRINCIPAL.TEXTO_JUSTIFICA(qrPRODUTO.fieldbyname('codigo').asstring,6,'0','E')+' | '+FRMPRINCIPAL.texto_justifica(QRPRODUTO.fieldbyname('produto').asstring,40,' ','D')+'...  Barras inválida!');
        end;
        qrPRODUTO.next;
    end;
    frmmodulo.Conexao.Commit;
    SHOWMESSAGE('Atualização feita com sucesso!'+#13+
                'Quantidade: '+inttostr(posi));
    frmmodulo.qrproduto.refresh;
end;

procedure Tfrmproduto_farma_preco.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmproduto_farma_preco.combobalancaKeyPress(Sender: TObject;
  var Key: Char);
begin
  bitbtn1.setfocus;
end;

end.

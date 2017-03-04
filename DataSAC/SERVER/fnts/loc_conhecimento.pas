unit loc_conhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection,
  StdCtrls, Wwkeycb, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmloc_conhecimento = class(TForm)
    DBGRID1: TwwDBGrid;
    dsconhecimento: TDataSource;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    qrconhecimento: TZQuery;
    qrconhecimentoCODIGO: TStringField;
    qrconhecimentoDATA: TDateTimeField;
    qrconhecimentoremetente: TStringField;
    qrconhecimentodestinatario: TStringField;
    qrconhecimentoNUMERO: TStringField;
    qrconhecimentoCFOP: TStringField;
    qrconhecimentoCODREMETENTE: TStringField;
    qrconhecimentoCODDESTINATARIO: TStringField;
    qrconhecimentoSITUACAO: TIntegerField;
    qrconhecimentoTIPO: TStringField;
    qrconhecimentoCONSIG_NOME: TStringField;
    qrconhecimentoCONSIG_ENDERECO: TStringField;
    qrconhecimentoCONSIG_CIDADE: TStringField;
    qrconhecimentoCONSIG_UF: TStringField;
    qrconhecimentoCONSIG_TIPO: TStringField;
    qrconhecimentoCONSIG_CALCULADO: TStringField;
    qrconhecimentoREDE_NOME: TStringField;
    qrconhecimentoREDE_ENDERECO: TStringField;
    qrconhecimentoREDE_CIDADE: TStringField;
    qrconhecimentoREDE_UF: TStringField;
    qrconhecimentoREDE_TIPO: TStringField;
    qrconhecimentoREDE_CNPJ: TStringField;
    qrconhecimentoCARGA_NATUREZA: TStringField;
    qrconhecimentoCARGA_NF: TStringField;
    qrconhecimentoCARGA_VALOR: TFloatField;
    qrconhecimentoCARGA_QTDE: TFloatField;
    qrconhecimentoCARGA_VOL_QTDE: TFloatField;
    qrconhecimentoCARGA_MARCA1: TStringField;
    qrconhecimentoCARGA_MARCA2: TStringField;
    qrconhecimentoFRETE_PESO: TFloatField;
    qrconhecimentoFRETE_VALOR: TFloatField;
    qrconhecimentoFRETE_ADICIONAL: TFloatField;
    qrconhecimentoFRETE_SEGURO: TFloatField;
    qrconhecimentoFRETE_DESPACHO: TFloatField;
    qrconhecimentoFRETE_OUTROS: TFloatField;
    qrconhecimentoFRETE_TOTAL: TFloatField;
    qrconhecimentoFRETE_TARIFA: TFloatField;
    qrconhecimentoFRETE_BASE: TFloatField;
    qrconhecimentoFRETE_ALIQUOTA: TIntegerField;
    qrconhecimentoFRETE_ICMS: TFloatField;
    qrconhecimentoFRETE_PRONT: TStringField;
    qrconhecimentoFRETE_APOLICE: TStringField;
    qrconhecimentoFRETE_CIA: TStringField;
    qrconhecimentoCODVEICULO: TStringField;
    qrconhecimentoCODTRANSPORTADOR: TStringField;
    qrconhecimentoOBS: TBlobField;
    qrconhecimentoCARGA_VOL_ESPECIE: TStringField;
    qrconhecimentoCODFILIAL: TStringField;
    qrconhecimentoLOCAL: TStringField;
    qrconhecimentoFRETE_CARREGAR: TStringField;
    qrconhecimentoFRETE_DESCARREGAR: TStringField;
    qrconhecimentoMOTIVO: TStringField;
    qrconhecimentoVEICULO_LOCAL: TStringField;
    qrconhecimentoVEICULO_UF: TStringField;
    query1: TZQuery;
    dsquery1: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_conhecimento: Tfrmloc_conhecimento;

implementation

uses modulo, loc_cliente2;

{$R *.dfm}

procedure Tfrmloc_conhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  
end;

procedure Tfrmloc_conhecimento.Edit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_conhecimento.Edit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmloc_conhecimento.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.SetFocus;
end;

procedure Tfrmloc_conhecimento.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;
  if key = #13 then
  begin
    qrconhecimento.close;
    qrconhecimento.SQL.clear;
    if radiobutton1.Checked then qrconhecimento.SQL.Add('select * from c000068 where numero like ''%'+edit1.Text+'%'' order by numero');

    if radiobutton4.Checked then
    begin
      qrconhecimento.SQL.Add('select * from c000068 where data = :datax order by numero');
      qrconhecimento.Params.ParamByName('datax').asdatetime := strtodate(edit1.text);
    end;

    if radiobutton2.Checked then
    begin
      query1.close;
      query1.sql.clear;
      query1.SQL.add('select * from c000007 where upper(nome) like ''%'+edit1.text+'%'' order by nome');
      query1.open;
      if query1.RecordCount > 0 then
      begin
        IF QUERY1.RecordCount = 1 THEN
         qrconhecimento.SQL.Add('select * from c000068 where codremetente like ''%'+QUERY1.FIELDBYNAME('CODIGO').ASSTRING+'%'' order by numero')
        ELSE
        BEGIN
          frmloc_cliente2 := tfrmloc_cliente2.create(self);
          frmloc_cliente2.showmodal;
          qrconhecimento.SQL.Add('select * from c000068 where codremetente like ''%'+QUERY1.FIELDBYNAME('CODIGO').ASSTRING+'%'' order by numero')
        END;
      end
      else
      begin
         qrconhecimento.SQL.Add('select * from c000068 where codremetente like ''%xxxxxx%'' order by numero');
      end;
    end;
    if radiobutton3.Checked then
    begin
      query1.close;
      query1.sql.clear;
      query1.SQL.add('select * from c000007 where upper(nome) like ''%'+edit1.text+'%'' order by nome');
      query1.open;
      if query1.RecordCount > 0 then
      begin
        IF QUERY1.RecordCount = 1 THEN
         qrconhecimento.SQL.Add('select * from c000068 where codDESTINATARIO like ''%'+QUERY1.FIELDBYNAME('CODIGO').ASSTRING+'%'' order by numero')
        ELSE
        BEGIN
          frmloc_cliente2 := tfrmloc_cliente2.create(self);
          frmloc_cliente2.showmodal;
          qrconhecimento.SQL.Add('select * from c000068 where codDESTINATARIO like ''%'+QUERY1.FIELDBYNAME('CODIGO').ASSTRING+'%'' order by numero')
        END;
      end
      else
      begin
         qrconhecimento.SQL.Add('select * from c000068 where codDESTINATARIO like ''%xxxxxx%'' order by numero');
      end;
    end;
    qrconhecimento.open;
    if qrconhecimento.RecordCount > 0 then dbgrid1.SetFocus else showmessage('Nenhum registro localizado!');
  end;
end;

procedure Tfrmloc_conhecimento.DBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    frmmodulo.qrconhecimento.Locate('codigo',qrconhecimento.fieldbyname('codigo').asstring,[loCaseInsensitive]);
    close;
  end;
end;

end.

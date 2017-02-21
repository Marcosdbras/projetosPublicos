unit contaspagar_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, wwdbedit, Wwdotdot, Wwdbcomb,
  AdvGlowButton;

type
  Tfrmcontaspagar_ficha = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    efornecedor: TEdit;
    blocfornecedor: TBitBtn;
    enomefornecedor: TEdit;
    Label3: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    RVALOR: TRxCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrgrade: TZQuery;
    dsgrade: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    qrgradeVENCIMENTO: TDateTimeField;
    qrgradeDOCUMENTO: TStringField;
    qrgradeHISTORICO: TStringField;
    qrgradeVALOR: TFloatField;
    qrgradeC: TStringField;
    qrgradeE: TStringField;
    qrgradeESPECIE: TStringField;
    comboespecie: TwwDBComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label8: TLabel;
    RTOTAL: TRxCalcEdit;
    Bevel3: TBevel;
    query: TZQuery;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure qrgradeAfterInsert(DataSet: TDataSet);
    procedure qrgradeAfterEdit(DataSet: TDataSet);
    procedure qrgradeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_ficha: Tfrmcontaspagar_ficha;
  VALOR_A : REAL;

implementation

uses modulo, loc_fornecedor, loc_conta, principal, contaspagar;

{$R *.dfm}

procedure Tfrmcontaspagar_ficha.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.Date := date
end;

procedure Tfrmcontaspagar_ficha.DateEdit1Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
end;

procedure Tfrmcontaspagar_ficha.blocfornecedorClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  efornecedor.text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  enomefornecedor.text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;

  econta.setfocus;
end;

procedure Tfrmcontaspagar_ficha.bloccontaClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.text := frmmodulo.qrplano.fieldbyname('codigo').asstring;
  enomeconta.text := frmmodulo.qrplano.fieldbyname('conta').asstring;

  edit5.setfocus;

end;

procedure Tfrmcontaspagar_ficha.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontaspagar_ficha.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    efornecedor.text := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
      if not frmprincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then blocfornecedorclick(frmcontaspagar_ficha) else econta.setfocus
    else
      blocfornecedor.SetFocus;

end;

procedure Tfrmcontaspagar_ficha.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    econta.text := frmprincipal.zerarcodigo(econta.text,6);
    if econta.text <> '000000' then
      if not frmprincipal.Locregistro(frmmodulo.qrplano,econta.text,'codigo') then bloccontaclick(frmcontaspagar_ficha) else edit5.setfocus
    else
      blocconta.SetFocus;
end;

procedure Tfrmcontaspagar_ficha.Edit5Exit(Sender: TObject);
begin
  tedit(sender).color := clWINDOW;
  edit5.text := frmprincipal.zerarcodigo(edit5.text,6);
end;

procedure Tfrmcontaspagar_ficha.Edit5Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_ficha.BitBtn2Click(Sender: TObject);
var qtde, i : integer;
begin
  i := 1;
  try
      qrgrade.close;
      qrgrade.sql.clear;
      qrgrade.sql.add('delete from c000047');
      qrgrade.execsql;
      qrgrade.SQL.clear;
      qrgrade.sql.add('select * from c000047');
      qrgrade.open;
      qtde := strtoint(edit7.Text);
      while qtde <> 0 do
      begin
        qrgrade.Insert;
        qrgrade.FieldByName('vencimento').asdatetime := incmonth(dateedit1.date,i);
        qrgrade.fieldbyname('historico').asstring := edit6.text;
        qrgrade.fieldbyname('documento').asstring := edit5.Text+'/'+inttostr(i);
        if rvalor.value <> 0 then  qrgrade.FieldByName('valor').asfloat := RVALOR.VALUE / strtoint(edit7.text);
        qrgrade.post;
        I := I + 1;
        qtde := qtde - 1;
      end;
      QRGRADE.Refresh;
      RTOTAL.VALUE := RVALOR.VALUE;
      WWDBGRID1.SetFocus;
  except
    showmessage('Houve erro ao tentar gerar as presta��es! Verifique a quantidade informada ou o valor da nota fiscal!');
  end;
end;

procedure Tfrmcontaspagar_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontaspagar_ficha.FormShow(Sender: TObject);
begin
  qrgrade.close;
  qrgrade.sql.clear;
  qrgrade.sql.add('delete from c000047');
  qrgrade.execsql;
  qrgrade.SQL.clear;
  qrgrade.sql.add('select * from c000047');
  qrgrade.open;
end;

procedure Tfrmcontaspagar_ficha.bgravarClick(Sender: TObject);
var valor_c : real;
begin

  (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
  query.close;
  query.SQL.clear;
  query.SQL.Add('select * from c000046 where notafiscal = '''+Edit5.Text +''' and codfornecedor = '''+efornecedor.Text+''' and data_vencimento = :vdat');
  query.Params.ParamByName('vdat').AsDateTime := qrgradeVENCIMENTO.AsDateTime;
  query.open;
  if query.recordcount > 0 then
    begin
      if application.messagebox(pchar('J� existe uma NOTA FISCAL Cadastrada com este N�mero'+#13+
                                      'para este FORNECEDOR e com esse VENCIMENTO!'+#13+
                                      'Deseja Continuar Com a Opera��o?'),'Aviso',mb_yesno+MB_ICONWARNING) = idno then
        exit;
    end;


  if (qrgrade.State = dsedit) then
      qrgrade.post
  else
  begin
    if qrgrade.State = dsinsert then
    begin
      if qrgrade.FieldByName('valor').asfloat <> 0 then
        qrgrade.Post;
    end;
  end;



  if rvalor.value <> 0 then
     valor_c := rvalor.value else
     valor_c := rtotal.value;

  VALOR_C := RTOTAL.VALUE - VALOR_C;


  if (VALOR_C > 0.05) OR (VALOR_C < -0.05) THEN
  begin
    application.MessageBox('O valor total das presta��o n�o confere com o valor da Nota Fiscal! Favor verificar!','Aten��o',mb_ok+MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin

    qrgrade.Refresh;
    qrgrade.first;
    while not qrgrade.Eof do
    begin
      FRMCONTASPAGAR.qrcontaspagar.insert;
      FRMCONTASPAGAR.qrcontaspagar.FieldByName('codigo').asstring         := frmprincipal.codifica('000046');
      frmcontaspagar.qrcontaspagar.fieldbyname('data_emissao').asdatetime := dateedit1.date;
      frmcontaspagar.qrcontaspagar.fieldbyname('codfornecedor').asstring  := efornecedor.text;
      frmcontaspagar.qrcontaspagar.fieldbyname('codconta').asstring       := econta.text;
      frmcontaspagar.qrcontaspagar.fieldbyname('notafiscal').asstring     := edit5.text;
      frmcontaspagar.qrcontaspagar.fieldbyname('situacao').aSINTEGER      := 1;
      frmcontaspagar.qrcontaspagar.fieldbyname('filtro').aSINTEGER        := 0;
      frmcontaspagar.qrcontaspagar.fieldbyname('codnota').aSstring        := '';

      // lancamento pelo grade
      frmcontaspagar.qrcontaspagar.Fieldbyname('valor').asfloat              := qrgrade.fieldbyname('valor').asfloat;
      frmcontaspagar.qrcontaspagar.Fieldbyname('liquido').asfloat            := qrgrade.fieldbyname('valor').asfloat;
      frmcontaspagar.qrcontaspagar.Fieldbyname('documento').asstring         := qrgrade.fieldbyname('documento').asstring;
      frmcontaspagar.qrcontaspagar.Fieldbyname('historico').asstring         := qrgrade.fieldbyname('historico').asstring;
      frmcontaspagar.qrcontaspagar.Fieldbyname('especie').asstring           := qrgrade.fieldbyname('especie').asstring;
      frmcontaspagar.qrcontaspagar.Fieldbyname('C').asstring                 := qrgrade.fieldbyname('C').asstring;
      frmcontaspagar.qrcontaspagar.Fieldbyname('E').asstring                 := qrgrade.fieldbyname('E').asstring;
      frmcontaspagar.qrcontaspagar.Fieldbyname('data_vencimento').asdatetime := qrgrade.fieldbyname('vencimento').asdatetime;
      //
      frmcontaspagar.qrcontaspagar.post;
      qrgrade.next;
    end;
    FRMMODULO.Conexao.Commit;
    CLOSE;
  end;
end;

procedure Tfrmcontaspagar_ficha.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontaspagar_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontaspagar_ficha);
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterInsert(DataSet: TDataSet);
begin
  VALOR_A := 0;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterEdit(DataSet: TDataSet);
begin
  VALOR_A := QRGRADE.FIELDBYNAME('VALOR').ASFLOAT;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterPost(DataSet: TDataSet);
begin
  RTOTAL.VALUE :=
  RTOTAL.VALUE +
  QRGRADE.FIELDBYNAME('VALOR').ASFLOAT -
  VALOR_A;
end;

end.

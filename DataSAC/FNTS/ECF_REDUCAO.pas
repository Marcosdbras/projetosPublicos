unit ECF_REDUCAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DB, Wwdatsrc, RxLookup,
  Buttons, DBCtrls, PageView, Menus, Grids, DBGrids, Wwdotdot, Wwdbcomb,
  wwdbedit, RzBHints, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, TFlatListBoxUnit, RzButton,
  RzRadChk, RzEdit, RzDBEdit, TFlatSpeedButtonUnit, RzPanel, RzLabel,
  RzCmboBx, RzDBChk, RzDBCmbo, RxMemDS, CellEditors, CurrEdit, 
  Collection, TFlatPanelUnit, RXDBCtrl, AdvToolBar, AdvOfficeStatusBar,
  ImgList, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeStatusBarStylers, AdvGlowButton, RzDBNav;

type
  TFRMECF_REDUCAO = class(TForm)
    dsempresa: TwwDataSource;
    dssintegra60: TwwDataSource;
    dsfornecedor: TwwDataSource;
    pop_incluir: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Fechar1: TMenuItem;
    Excluir1: TMenuItem;
    LanamentodeCupons1: TMenuItem;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList2: TImageList;
    ImageList1: TImageList;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    Label1: TLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    Label4: TLabel;
    eddtmovimento: TDBDateEdit;
    AdvToolBar1: TAdvToolBar;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    AdvToolBar2: TAdvToolBar;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    AdvToolBar3: TAdvToolBar;
    Label2: TLabel;
    Label3: TLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit28: TRzDBEdit;
    RzDBEdit31: TRzDBEdit;
    RzDBEdit34: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    RzDBEdit27: TRzDBEdit;
    RzDBEdit25: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    Label5: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    AdvToolBar4: TAdvToolBar;
    RzDBEdit14: TRzDBEdit;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bprimeiro: TBitBtn;
    banterior: TBitBtn;
    bproximo: TBitBtn;
    bultimo: TBitBtn;
    bretorna: TAdvGlowButton;
    AdvToolBar5: TAdvToolBar;
    rliquido: TRzNumericEdit;
    rsoma: TRzNumericEdit;
    rdiferenca: TRzNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    procedure SpeedButton22Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edvlcontabilKeyPress(Sender: TObject; var Key: Char);
    procedure edcodKeyPress(Sender: TObject; var Key: Char);
    procedure edecfExit(Sender: TObject);
    procedure RzDBEdit8Exit(Sender: TObject);
    procedure RzDBEdit10Exit(Sender: TObject);
    procedure RzDBEdit17Exit(Sender: TObject);
    procedure RzDBEdit20Exit(Sender: TObject);
    procedure RzDBEdit27Exit(Sender: TObject);
    procedure RzDBEdit15Exit(Sender: TObject);
    procedure RzDBEdit14Exit(Sender: TObject);
    procedure RzDBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit11Exit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RzDBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure eddtmovimentoEnter(Sender: TObject);
    procedure bprimeiroClick(Sender: TObject);
    procedure banteriorClick(Sender: TObject);
    procedure bproximoClick(Sender: TObject);
    procedure bultimoClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bretornaClick(Sender: TObject);
    procedure dssintegra60DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
        function formata_valor(valor:string):string;
  public
    { Public declarations }
  end;

var
  FRMECF_REDUCAO: TFRMECF_REDUCAO;

implementation

uses modulo, principal;

{$R *.dfm}
function tfrmecf_reducao.formata_valor(valor:string):string;
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


procedure TFRMECF_REDUCAO.SpeedButton22Click(Sender: TObject);
begin
     close;
end;

procedure TFRMECF_REDUCAO.FormShow(Sender: TObject);
begin
  eddtmovimento.setfocus;

end;

procedure TFRMECF_REDUCAO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFRMECF_REDUCAO.bgravarClick(Sender: TObject);
var
  vliquido,vsoma : double;
begin
  if frmmodulo.QRSINTEGRA_R60.State in [dsedit,dsinsert] then
    begin

    vliquido := rliquido.Value;
    vsoma    := rsoma.Value;

      if (( vsoma - vliquido ) < 0.00 ) or (( vsoma - vliquido ) > 0.00 ) then
        begin
          application.MessageBox('O Valor da Venda Líquida Diária difere das somas das Bases de Cálculos!','Atenção',mb_ok+MB_ICONERROR );
          RzDBEdit11.SetFocus;
          exit;
        end;

      frmmodulo.qrsintegra_r60id.Value := 0;
      frmmodulo.QRSINTEGRA_R60DATA_EMISSAO.Value := eddtmovimento.Date;
      frmmodulo.QRSINTEGRA_R60.Post;
      frmmodulo.conexao.commit;
    end;
  bproximoClick(FRMECF_REDUCAO);
    // close;
end;

procedure TFRMECF_REDUCAO.edvlcontabilKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
          end;

end;

procedure TFRMECF_REDUCAO.edcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
          end;

end;

procedure TFRMECF_REDUCAO.edecfExit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60nro_serie_eqp.Value := frmmodulo.QRFISCAL_ECFSERIE_EQUIPAMENTO.Value;
     frmmodulo.QRSINTEGRA_R60nro_ordem_eqp.Value := STRTOINT(frmmodulo.QRFISCAL_ECFCODIGO.Value);
     frmmodulo.QRSINTEGRA_R60modelo_doc.Value    := '2D';
end;

procedure TFRMECF_REDUCAO.RzDBEdit8Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_tparcial01.Value := frmmodulo.QRSINTEGRA_R60base01.Value*frmmodulo.QRSINTEGRA_R60aliquota01.Value/100;
end;

procedure TFRMECF_REDUCAO.RzDBEdit10Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_tparcial02.Value := frmmodulo.QRSINTEGRA_R60base02.Value*frmmodulo.QRSINTEGRA_R60aliquota02.Value/100;

end;

procedure TFRMECF_REDUCAO.RzDBEdit17Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_tparcial03.Value := frmmodulo.QRSINTEGRA_R60base03.Value*frmmodulo.QRSINTEGRA_R60aliquota03.Value/100;

end;

procedure TFRMECF_REDUCAO.RzDBEdit20Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_tparcial04.Value := frmmodulo.QRSINTEGRA_R60base04.Value*frmmodulo.QRSINTEGRA_R60aliquota04.Value/100;

end;

procedure TFRMECF_REDUCAO.RzDBEdit27Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_tparcial04.Value := frmmodulo.QRSINTEGRA_R60base04.Value*frmmodulo.QRSINTEGRA_R60aliquota04.Value/100;

end;

procedure TFRMECF_REDUCAO.RzDBEdit15Exit(Sender: TObject);
begin
     frmmodulo.QRSINTEGRA_R60valor_venda_bruta.Value := frmmodulo.QRSINTEGRA_R60total_final_dia.Value-frmmodulo.QRSINTEGRA_R60total_inicio_dia.Value;
end;

procedure TFRMECF_REDUCAO.RzDBEdit14Exit(Sender: TObject);
var
     vval,vcan,vdes,viss,viof: double;
begin
     vval := frmmodulo.QRSINTEGRA_R60valor_venda_bruta.Value;
     vcan := frmmodulo.QRSINTEGRA_R60cancelamento.Value;
     vdes := frmmodulo.QRSINTEGRA_R60desconto.Value;
     viss := frmmodulo.QRSINTEGRA_R60issqn.Value;
     viof := frmmodulo.QRSINTEGRA_R60acrescimo_iof.Value;

     frmmodulo.QRSINTEGRA_R60valor_total_geral.Value := vval-(vcan+vdes+viss+viof);

end;

procedure TFRMECF_REDUCAO.RzDBEdit30KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
          begin
               rzdbedit1.setfocus;
          end;

end;

procedure TFRMECF_REDUCAO.RzDBEdit11Exit(Sender: TObject);
begin
  if (frmmodulo.qrsintegra_r60.State = dsinsert) or (frmmodulo.qrsintegra_r60.State = dsedit) then
  begin
    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_liquida').AsFloat :=
    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('desconto').AsFloat +
    frmmodulo.qrsintegra_r60.FieldByName('issqn').AsFloat ;
  end;
end;

procedure TFRMECF_REDUCAO.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrsintegra_r60.cancel;
  Close;
end;

procedure TFRMECF_REDUCAO.RzDBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TFRMECF_REDUCAO.eddtmovimentoEnter(Sender: TObject);
begin
  if eddtmovimento.text = '  /  /    ' then eddtmovimento.date := date;
end;

procedure TFRMECF_REDUCAO.bprimeiroClick(Sender: TObject);
begin
     frmmodulo.qrsintegra_r60.First;
     frmmodulo.qrsintegra_r60.Edit;
end;

procedure TFRMECF_REDUCAO.banteriorClick(Sender: TObject);
begin
     frmmodulo.qrsintegra_r60.Prior;
     frmmodulo.qrsintegra_r60.Edit;
end;

procedure TFRMECF_REDUCAO.bproximoClick(Sender: TObject);
begin
     frmmodulo.qrsintegra_r60.Next;
     frmmodulo.qrsintegra_r60.Edit;
end;

procedure TFRMECF_REDUCAO.bultimoClick(Sender: TObject);
begin
     frmmodulo.qrsintegra_r60.Last;
     frmmodulo.qrsintegra_r60.Edit;
end;

procedure TFRMECF_REDUCAO.Fechar1Click(Sender: TObject);
begin
  bretornaClick(FRMECF_REDUCAO);
end;

procedure TFRMECF_REDUCAO.bretornaClick(Sender: TObject);
begin
  Close;
end;

procedure TFRMECF_REDUCAO.dssintegra60DataChange(Sender: TObject;
  Field: TField);
begin

  rliquido.Value := frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat-
                    (frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat+
                    frmmodulo.qrsintegra_r60.FieldByName('DESCONTO').AsFloat+
                    frmmodulo.qrsintegra_r60.FieldByName('ISSQN').AsFloat);

  rsoma.Value := (frmmodulo.qrsintegra_r60.FieldByName('base01').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('base02').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('base03').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('base04').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('base05').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('SUBSTITUICAO_TRIBUTARIA').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('isento').AsFloat+
                frmmodulo.qrsintegra_r60.FieldByName('nao_incidencia').AsFloat);

  rdiferenca.Value := rliquido.Value-rsoma.Value;
end;

end.

unit produto_movimentar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, RzEdit, AdvGlowButton,
  TFlatPanelUnit, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmproduto_movimentar = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    LCODIGO: TLabel;
    LPRODUTO: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LESTOQUE: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    rqtde: TRzNumericEdit;
    Label7: TLabel;
    runitario: TRzNumericEdit;
    Label8: TLabel;
    rtotal: TRzNumericEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Label9: TLabel;
    lunidade: TLabel;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rqtdeExit(Sender: TObject);
    procedure rtotalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_movimentar: Tfrmproduto_movimentar;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmproduto_movimentar.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmproduto_movimentar.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_movimentar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_movimentar.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_movimentar.bgravarClick(Sender: TObject);
begin
        if rqtde.value = 0 then
        begin
          application.messagebox('Favor informar uma quantidade válida!','Atenção',mb_ok+mb_iconerror);
          exit;
        end;


          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.Add('insert into c000032');
          frmmodulo.qrproduto_mov.SQL.add('(codigo,codnota,serial,numeronota,');
          frmmodulo.qrproduto_mov.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          frmmodulo.qrproduto_mov.SQL.add('total,unidade,aliquota,');
          frmmodulo.qrproduto_mov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          frmmodulo.qrproduto_mov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          frmmodulo.qrproduto_mov.SQL.add('values');
          frmmodulo.qrproduto_mov.SQL.add('('''+frmprincipal.codifica('000032')+''',''000000'',''000000'',''000000'',');
          frmmodulo.qrproduto_mov.SQL.add(''''+lcodigo.caption+''',:QTDE,:UNITARIO,:movimento_estoque,');
          frmmodulo.qrproduto_mov.SQL.add(':TOTAL,'''+lunidade.caption +''',:ALIQUOTA,');
          frmmodulo.qrproduto_mov.SQL.add('''001'',''000000'','''',');
          frmmodulo.qrproduto_mov.SQL.add(''''','''',''000000'',''S/VEND'',10,:datax,''000'')');
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('datax').asdatetime := DATEEDIT1.DATE;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('UNITARIO').ASFLOAT := RUNITARIO.VALUE;
          if combobox1.itemindex = 0 then
          begin
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := rqtde.value;
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := RTOTAL.VALUE;
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := rqtde.value;

          end
          else
          begin
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := rqtde.value * (-1);
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := RTOTAL.VALUE * (-1);
            FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := rqtde.value * (-1);            
          end;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          frmmodulo.qrproduto_mov.ExecSQL;

          frmmodulo.conexao.commit;
          close;
end;

procedure Tfrmproduto_movimentar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_movimentar.rqtdeExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rtotal.value :=
  rqtde.value *
  runitario.value;

end;

procedure Tfrmproduto_movimentar.rtotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_movimentar.FormShow(Sender: TObject);
begin
  dateedit1.date := date;
  dateedit1.SetFocus;
end;

procedure Tfrmproduto_movimentar.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rqtde.setfocus;
end;

end.

unit caixa_abertura_individual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, StdCtrls, Mask, ToolEdit, RXDBCtrl, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton;

type
  Tfrmcaixa_abertura_individual = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TRxCalcEdit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    ViewSplit1: TViewSplit;
    edata: TDateEdit;
    DataSource1: TDataSource;
    qrdata: TZQuery;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_abertura_individual: Tfrmcaixa_abertura_individual;
  saldo_anterior : real;

implementation

uses principal, modulo, ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano,
  ecf_yanco;

{$R *.dfm}

procedure Tfrmcaixa_abertura_individual.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura_individual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_abertura_individual.bgravarClick(Sender: TObject);
var resultado : string;
begin
   try
         frmmodulo.qrcaixa_operador.Edit;
         frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 1;
         frmmodulo.qrcaixa_operador.FieldByName('data').asdatetime := edata.date;
         frmmodulo.qrcaixa_operador.post;

         if application.messagebox('Deseja imprimir a Leitura X?','Aviso',mb_yesno+mb_iconquestion) = idyes then
         BEGIN
           IF ECF_modelo = 'DARUMA'   THEN frmecf_daruma.ecf_leitura_x(ecf_modelo);
           IF ECF_modelo = 'BEMATECH' THEN frmecf_BEMATECH.ecf_leitura_x(ecf_modelo);
           IF ECF_modelo = 'SWEDA'    THEN frmecf_SWEDA.ecf_leitura_x(ecf_modelo);
           IF ECF_modelo = 'URANO'    THEN frmecf_URANO.ecf_leitura_x(ecf_modelo);
           IF ECF_modelo = 'YANCO'    THEN frmecf_YANCO.ecf_leitura_x(ecf_modelo);
         end;

         if rsaldo.Value > 0 then
         begin

           frmmodulo.qrcaixa_mov.OPEN;
           frmmodulo.qrcaixa_mov.insert;
           frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044',7);
           frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
           frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
           frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
           frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := RSALDO.VALUE;
           frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat := RSALDO.VALUE;
           frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := '199999';
           frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 1;
           frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Suprimento de Caixa';
           frmmodulo.qrcaixa_mov.post;

           IF ECF_MODELO = 'DARUMA' then resultado := frmecf_daruma.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'SWEDA' then resultado := frmecf_SWEDA.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'URANO' then resultado := frmecf_URANO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'YANCO' then resultado := frmecf_YANCO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');




           if resultado <> 'OK' Then
           begin
             Application.messagebox('Houve erro ao tentar fazer o suprimento no ecf! Todo procedimento será cancelado!','Atenção',mb_ok+mb_iconerror);
             frmmodulo.conexao.Rollback;
             situacao_caixa := 'FECHADO';
             Exit;
           end;
         end;

         // ecf_operador(ECF_MODELO,frmmodulo.qrcaixa_operador.fieldbyname('nome').asstring);



          frmmodulo.qrconfig.Edit;
          frmmodulo.qrconfig.FieldByName('caixa_atual').asstring := 'ABERTO';
          FRMMODULO.QRCONFIG.FieldByName('COD_CAIXA_ATUAL').ASSTRING := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          frmmODULO.qrconfig.post;



           data_caixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
           codigo_caixa := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;



          frmmodulo.ConexaoLocal.commit;
          frmmodulo.Conexao.Commit;

          frmmodulo.qrcaixa_operador.close;
          frmmodulo.qrcaixa_operador.SQL.clear;
          frmmodulo.qrcaixa_operador.SQL.add('select * from c000045 where codigo = '''+codigo_caixa+'''');
          frmmodulo.qrcaixa_operador.open;

          FRMPRINCIPAL.LOPERADOR.CAPTION := codigo_caixa + ' '+ FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING;
          frmprincipal.Ldata_caixa.Caption := data_caixa;

          situacao_caixa := 'ABERTO';
          frmprincipal.estatus.text := '...';
          continuar := true;



   EXCEPT
    SHOWMESSAGE('Houve falha nesta função! Este processo foi cancelado!');
    FRMMODULO.Conexao.Rollback;
   END;

   close;
end;

procedure Tfrmcaixa_abertura_individual.edataEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmcaixa_abertura_individual.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_abertura_individual.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmcaixa_abertura_individual.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmcaixa_abertura_individual);
end;

end.

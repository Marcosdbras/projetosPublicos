unit industrializacao_pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolEdit, RXDBCtrl, DBCtrls, RzDBEdit, RzDBBnEd,
  RzPrgres, StdCtrls, Mask, RzEdit, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid, AdvGlowButton,
  RzPanel, Buttons, PageView;

type
  Tfrmindustrializacao_pedido = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    dspedido_industria: TDataSource;
    dspedido_industria_item: TDataSource;
    qrpedido_industria_item: TZQuery;
    qrpedido_industria_itemCODIGO: TStringField;
    qrpedido_industria_itemPEDIDO: TStringField;
    qrpedido_industria_itemCODPRODUTO: TStringField;
    qrpedido_industria_itemREFERENCIA: TStringField;
    qrpedido_industria_itemTAMANHO: TStringField;
    qrpedido_industria_itemQUANTIDADE: TIntegerField;
    qrpedido_industria_itemVALOR: TFloatField;
    qrpedido_industria_itemCOR: TStringField;
    qrpedido_industria_itemTOTAL: TFloatField;
    qrpedido_industria_itemproduto: TStringField;
    qrpedido_industria_itemcodbarra: TStringField;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    lcodigo: TLabel;
    ritens: TRzNumericEdit;
    rtotal: TRzNumericEdit;
    bar: TRzProgressBar;
    rpecas: TRzNumericEdit;
    Label6: TLabel;
    ecodcliente: TRzDBButtonEdit;
    DBEdit23: TDBEdit;
    edata: TDBDateEdit;
    econd_pagamento: TDBEdit;
    erepresentante: TDBEdit;
    etelefone: TDBEdit;
    pop1: TPopupMenu;
    cancelar1: TMenuItem;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    qrpedido_industria_itemITEM: TIntegerField;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    ecodrepresentante: TRzDBButtonEdit;
    qrpedido_industria_itemDESCONTO: TFloatField;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    qrcliente: TZQuery;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteCPF: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrclienteCODREGIAO: TStringField;
    qrclienteCODCONVENIO: TStringField;
    qrclienteCODUSUARIO: TStringField;
    qrclienteSEXO: TStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateTimeField;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrclienteTAMANHO_CALCA: TStringField;
    qrclienteTAMANHO_BLUSA: TStringField;
    qrclienteTAMANHO_SAPATO: TStringField;
    qrclienteRG_ORGAO: TStringField;
    qrclienteRG_ESTADO: TStringField;
    qrclienteRG_EMISSAO: TDateTimeField;
    qrclienteCNAE: TStringField;
    qrclienteIBGE: TStringField;
    PageView3: TPageView;
    PageSheet7: TPageSheet;
    pprodutos: TPanel;
    PageSheet8: TPageSheet;
    pobservacoes: TPanel;
    DBEdit22: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit3: TDBEdit;
    grid: TwwDBGrid;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    batualiza: TBitBtn;
    gravar1: TMenuItem;
    procedure bcancelarClick(Sender: TObject);
    procedure cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ecodclienteButtonClick(Sender: TObject);
    procedure ecodclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ecodrepresentanteButtonClick(Sender: TObject);
    procedure ecodrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure batualizaClick(Sender: TObject);
    procedure gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    vopcao_pedido_item : integer;
    { Public declarations }
  end;

var
  frmindustrializacao_pedido: Tfrmindustrializacao_pedido;
  item : integer;

implementation

uses modulo, industrializacao, principal, xloc_cliente, xloc_funcionario,
  industrializacao_pedido_inclui;

{$R *.dfm}

procedure Tfrmindustrializacao_pedido.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrpedido_industria.Cancel;
  close;
end;

procedure Tfrmindustrializacao_pedido.cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmindustrializacao_pedido);
end;

procedure Tfrmindustrializacao_pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmindustrializacao_pedido.FormShow(Sender: TObject);
var
  vpedido : integer;
begin

  if frmindustrializacao.vopcao_pedido = 1 then
    begin

      frmmodulo.qrpedido_industria.Last;

      if frmmodulo.qrpedido_industria.FieldByName('pedido').Value = null then
        vpedido := 1
      else
        vpedido := strtoint(frmmodulo.qrpedido_industria.FieldByName('pedido').AsString)+1;

      frmmodulo.qrpedido_industria.Insert;
      frmmodulo.qrpedido_industria.FieldByName('pedido').AsString := frmprincipal.zerarcodigo(inttostr(vpedido),6);
      frmmodulo.qrpedido_industria.FieldByName('data_pedido').AsDateTime := date;

    end
  else
    begin
      frmmodulo.qrpedido_industria.Edit;
    end;

  qrpedido_industria_item.Close;
  qrpedido_industria_item.SQL.Clear;
  qrpedido_industria_item.SQL.Add('select * from c000127');
  qrpedido_industria_item.SQL.Add('where pedido = :vped');
  qrpedido_industria_item.Params.ParamByName('vped').AsString := frmmodulo.qrpedido_industria.fieldbyname('pedido').AsString;
  qrpedido_industria_item.SQL.Add('order by item');
  qrpedido_industria_item.Open;

  edata.SetFocus;

end;

procedure Tfrmindustrializacao_pedido.bgravarClick(Sender: TObject);
begin
  if ( frmmodulo.qrpedido_industria.State = dsInsert ) or ( frmmodulo.qrpedido_industria.State = dsEdit ) then
    begin
      if ( frmmodulo.qrpedido_industria.State = dsInsert ) then
        begin
          frmmodulo.qrpedido_industria.FieldByName('codigo').asstring := frmprincipal.codifica('000126');
          frmmodulo.qrpedido_industria.FieldByName('situacao').AsInteger := 1;
          frmmodulo.qrpedido_industria.FieldByName('lote').asstring := '';
        end;   
      frmmodulo.qrpedido_industria.Post;
      frmmodulo.Conexao.Commit;
    end;
  close;
end;

procedure Tfrmindustrializacao_pedido.ecodclienteButtonClick(
  Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;

  frmmodulo.qrpedido_industria.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  frmmodulo.qrpedido_industria.fieldbyname('cliente').asstring := RESULTADO_PESQUISA2;

  econd_pagamento.setfocus;

end;

procedure Tfrmindustrializacao_pedido.ecodclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrpedido_industria.State <> dsedit then if frmmodulo.qrpedido_industria.State <> dsinsert then exit;

    frmmodulo.qrpedido_industria.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecodcliente.Text,6);

    if ecodcliente.text <> '000000' then begin
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+ecodcliente.text+'''');
      qrcliente.open;
      if qrcliente.recordcount = 0 then
        begin
          application.messagebox('Cliente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
          ecodcliente.Text := '';
          ecodcliente.setfocus;
          exit;
        end
      else
      if (qrclienteCPF.Value = '') or
        (qrclienteUF.Value = '') or
        (qrclienteRG.Value = '') then
          begin
            if application.messagebox('Dados de Cliente Inconsistente, Deseja Continuar?','Aviso',mb_yesno+MB_ICONWARNING) = idno then
              begin
                exit;
              end;
          end;
          frmmodulo.qrpedido_industria.fieldbyname('codcliente').asstring := qrcliente.fieldbyname('codigo').asstring;
          frmmodulo.qrpedido_industria.fieldbyname('cliente').asstring := qrcliente.fieldbyname('nome').asstring;
          Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodclienteButtonClick(frmindustrializacao_pedido);
    end;
  end;
end;

procedure Tfrmindustrializacao_pedido.ecodrepresentanteButtonClick(
  Sender: TObject);
begin
  frmXloc_funcionario := tfrmXloc_funcionario.create(self);
  frmXloc_funcionario.showmodal;

  frmmodulo.qrpedido_industria.fieldbyname('CODREPRESENTANTE').asstring := RESULTADO_PESQUISA1;
  frmmodulo.qrpedido_industria.fieldbyname('REPRESENTANTE').asstring := RESULTADO_PESQUISA2;
  frmmodulo.qrpedido_industria.fieldbyname('REPRESENTANTE_FONE').asstring := RESULTADO_PESQUISA3;

  bincluir.setfocus;

end;

procedure Tfrmindustrializacao_pedido.ecodrepresentanteKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if frmmodulo.qrpedido_industria.State <> dsedit then if frmmodulo.qrpedido_industria.State <> dsinsert then exit;

      frmmodulo.qrpedido_industria.fieldbyname('codrepresentante').asstring := frmprincipal.zerarcodigo(ecodrepresentante.Text,6);

      if ecodrepresentante.text <> '000000' then begin
        frmmodulo.qrfunci.close;
        frmmodulo.qrfunci.sql.clear;
        frmmodulo.qrfunci.sql.add('select * from c000008 where codigo = '''+ecodrepresentante.text+'''');
        frmmodulo.qrfunci.open;
        if frmmodulo.qrfunci.recordcount = 0 then
          begin
            application.messagebox('Representante não cadastrado!','Aviso',mb_ok+mb_iconwarning);
            ecodrepresentante.Text := '';
            ecodrepresentante.setfocus;
            exit;
          end
        else
          begin
            frmmodulo.qrpedido_industria.fieldbyname('CODREPRESENTANTE').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
            frmmodulo.qrpedido_industria.fieldbyname('REPRESENTANTE').asstring := frmmodulo.qrfunci.fieldbyname('nome').asstring;
            frmmodulo.qrpedido_industria.fieldbyname('REPRESENTANTE_FONE').asstring := frmmodulo.qrfunci.fieldbyname('telefone').asstring;
            bincluir.SetFocus;
          end;
      end
      else
        begin
          ecodrepresentanteButtonClick(frmindustrializacao_pedido);
        end;
    end;
end;

procedure Tfrmindustrializacao_pedido.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmindustrializacao_pedido.bincluirClick(Sender: TObject);
begin
  vopcao_pedido_item := 1;

  qrpedido_industria_item.Last;

  frmindustrializacao_pedido_inclui := Tfrmindustrializacao_pedido_inclui.create(self);
  frmindustrializacao_pedido_inclui.Caption := 'Industrialização | Inclusão de Pedido';
  frmindustrializacao_pedido_inclui.showmodal;

  batualizaClick(frmindustrializacao_pedido);
end;

procedure Tfrmindustrializacao_pedido.balterarClick(Sender: TObject);
begin
{
  vopcao_pedido_item := 2;

  try
    frmindustrializacao_pedido_inclui := Tfrmindustrializacao_pedido_inclui.create(self);
    frmindustrializacao_pedido_inclui.Caption := 'Industrialização | Alteração de Pedido';
    frmindustrializacao_pedido_inclui.showmodal;
  finally
    batualizaClick(frmindustrializacao_pedido);
  end;  
}
end;

procedure Tfrmindustrializacao_pedido.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Item',4) then
    begin
      qrpedido_industria_item.Delete;
      batualizaClick(frmindustrializacao_pedido);
    end
  else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;
end;

procedure Tfrmindustrializacao_pedido.batualizaClick(Sender: TObject);
var
  qtde, total : real;
  item : integer;
begin
  qtde := 0; total := 0; item := 0;
  qrpedido_industria_item.First;
  while not qrpedido_industria_item.eof do
  begin
    qtde := qtde + qrpedido_industria_item.fieldbyname('quantidade').asfloat;
    total := total + qrpedido_industria_item.fieldbyname('total').asfloat;
    item := item + 1;
    qrpedido_industria_item.Edit;
    qrpedido_industria_item.FieldByName('ITEM').AsString := frmPrincipal.zerarcodigo(IntToStr(item),4);;
    qrpedido_industria_item.Post;
    qrpedido_industria_item.next;
  end;

  ritens.Value := item;
  rpecas.Value := qtde;
  rtotal.Value := total;

  qrpedido_industria_item.Close;
  qrpedido_industria_item.SQL.Clear;
  qrpedido_industria_item.SQL.Add('select * from c000127');
  qrpedido_industria_item.SQL.Add('where pedido = :vped');
  qrpedido_industria_item.Params.ParamByName('vped').AsString := frmmodulo.qrpedido_industria.fieldbyname('pedido').AsString;
  qrpedido_industria_item.SQL.Add('order by item');
  qrpedido_industria_item.Open;

end;

procedure Tfrmindustrializacao_pedido.gravar1Click(Sender: TObject);
begin
  bgravarClick(frmindustrializacao_pedido);
end;

end.

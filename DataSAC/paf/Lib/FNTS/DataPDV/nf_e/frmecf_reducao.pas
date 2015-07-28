unit frmecf_reducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DB, Wwdatsrc, RxLookup,
  Buttons, DBCtrls, PageView, Menus, Grids, DBGrids, Wwdotdot, Wwdbcomb,
  wwdbedit, HpHint, RzBHints, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, TFlatListBoxUnit, RzButton,
  RzRadChk, RzEdit, RzDBEdit, TFlatSpeedButtonUnit, RzPanel, RzLabel,
  RzCmboBx, RzDBChk, RzDBCmbo, RxMemDS, CellEditors, CurrEdit, XPMenu;

type
  Tfincecf = class(TForm)
    dsempresa: TwwDataSource;
    dssintegra60: TwwDataSource;
    dsfornecedor: TwwDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    edterceiros: TRxDBLookupCombo;
    Label11: TLabel;
    Label12: TLabel;
    label13: TLabel;
    gbicms: TGroupBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Cancela1: TMenuItem;
    Empresa1: TMenuItem;
    Retorna1: TMenuItem;
    Movimentao1: TMenuItem;
    Ajuda1: TMenuItem;
    btalterar: TBitBtn;
    btcancelar: TBitBtn;
    btretorna: TBitBtn;
    wwDBEdit9: TwwDBEdit;
    eddtmovimento: TDateEdit;
    btincluir: TBitBtn;
    edestado: TwwDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    edlocempresa: TFlatSpeedButton;
    edcod: TRzEdit;
    RzPanel1: TRzPanel;
    edempresa: TRzLabel;
    RzPanel2: TRzPanel;
    edcnpj: TRzLabel;
    RzPanel3: TRzPanel;
    edie: TRzLabel;
    gbst: TGroupBox;
    RzPanel10: TRzPanel;
    lbcfop: TRzLabel;
    edcfop: TRzComboBox;
    Grava1: TMenuItem;
    edsitespecial: TRzComboBox;
    Label54: TLabel;
    Label39: TLabel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    edecf: TRzComboBox;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    RzDBEdit3: TRzDBEdit;
    Label6: TLabel;
    RzDBEdit4: TRzDBEdit;
    Label8: TLabel;
    RzDBEdit5: TRzDBEdit;
    Label16: TLabel;
    RzDBEdit6: TRzDBEdit;
    Label18: TLabel;
    RzComboBox2: TRzComboBox;
    RzDBEdit7: TRzDBEdit;
    btimp1: TRzDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    bttotalgeral: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    RzDBEdit22: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    RzDBEdit24: TRzDBEdit;
    RzDBEdit25: TRzDBEdit;
    RzDBEdit26: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    btimp2: TRzDBEdit;
    RzDBEdit28: TRzDBEdit;
    btimp3: TRzDBEdit;
    RzDBEdit31: TRzDBEdit;
    btimp4: TRzDBEdit;
    RzDBEdit34: TRzDBEdit;
    btimp5: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    RzDBEdit27: TRzDBEdit;
    edmovimento: TRzDBComboBox;
    Label29: TLabel;
    BitBtn1: TBitBtn;
    procedure SpeedButton22Click(Sender: TObject);
    procedure btretornaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btalterarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure edterceirosExit(Sender: TObject);
    procedure edcfopExit(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Cancela1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edcodExit(Sender: TObject);
    procedure edlocempresaClick(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edvlcontabilKeyPress(Sender: TObject; var Key: Char);
    procedure Grava1Click(Sender: TObject);
    procedure edcodKeyPress(Sender: TObject; var Key: Char);
    procedure edecfExit(Sender: TObject);
    procedure RzDBEdit9Exit(Sender: TObject);
    procedure RzDBEdit28Exit(Sender: TObject);
    procedure RzDBEdit31Exit(Sender: TObject);
    procedure RzDBEdit34Exit(Sender: TObject);
    procedure RzDBEdit7Exit(Sender: TObject);
    procedure RzDBEdit8Exit(Sender: TObject);
    procedure RzDBEdit10Exit(Sender: TObject);
    procedure RzDBEdit17Exit(Sender: TObject);
    procedure RzDBEdit20Exit(Sender: TObject);
    procedure RzDBEdit27Exit(Sender: TObject);
    procedure RzDBEdit15Exit(Sender: TObject);
    procedure RzDBEdit14Exit(Sender: TObject);
    procedure dssintegra60DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fincecf: Tfincecf;

implementation

uses udtm, uprincipal, locempresa, usintegra, locmodelo, locproduto,
  modulo;

{$R *.dfm}

procedure Tfincecf.SpeedButton22Click(Sender: TObject);
begin
     close;
end;

procedure Tfincecf.btretornaClick(Sender: TObject);
begin
          frmmodulo.qrsintegra60.Cancel;
          frmmodulo.qrsintegra60.Open;
          close;
end;

procedure Tfincecf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_escape then
          btretorna.Click
     else if key = vk_f3 then
          btalterar.Click
     else if key = vk_f4 then
          btcancelar.Click;
end;

procedure Tfincecf.FormShow(Sender: TObject);
begin

     {abre o arquivo de empresas}
     frmmodulo.qrfilial.Close;
     frmmodulo.qrfilial.SQL.Clear;
     frmmodulo.qrfilial.SQL.Add('select * from A000004');
     frmmodulo.qrfilial.Open;
     frmmodulo.qrfilial.Edit;

     {abre o arquivo de fornecedor}
     frmmodulo.qrfornecedor.Close;
     frmmodulo.qrfornecedor.SQL.Clear;
     frmmodulo.qrfornecedor.SQL.Add('select * from A000009');
     frmmodulo.qrfornecedor.Open;

     {abre o arquivo de cfop}
     frmmodulo.qrcfop.Close;
     frmmodulo.qrcfop.open;
     edcfop.Items.Clear;
     while not frmmodulo.qrcfop.eof do
	     begin
       		edcfop.Items.add(frmmodulo.qrcfopCODIGO.Text);
      		frmmodulo.qrcfop.next;
	     end;
	//btformapaga.itemindex:=-1;

     {abre o arquivo de ecf}
     frmmodulo.qrecf.Close;
     frmmodulo.qrecf.open;
     edecf.Items.Clear;
     while not frmmodulo.qrecf.eof do
	     begin
       		edecf.Items.add(frmmodulo.qrecfCODIGO.Text);
      		frmmodulo.qrecf.next;
	     end;
	//edrecolhe.ItemIndex:=0;

     frmmodulo.qrsintegra60.Insert;
     eddtmovimento.Date := date;
     edcod.SetFocus;
end;

procedure Tfincecf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmmodulo.qrcfop.Close;
     frmmodulo.qrsintegra60.Close;
     frmmodulo.qrfilial.Close;
     frmmodulo.qrfornecedor.Close;
end;

procedure Tfincecf.btalterarClick(Sender: TObject);
begin
     if frmmodulo.qrsintegra60.State in [dsedit,dsinsert] then
          begin
               frmmodulo.qrsintegra60OBS1.Value := edempresa.Caption;
               frmmodulo.qrsintegra60DATA_EMISSAO.Value := eddtmovimento.Date;
               frmmodulo.qrsintegra60.Post;

               btincluir.Enabled  := false;
               btalterar.Enabled  := false;

               btcancelar.Click;
          end;
end;

procedure Tfincecf.btcancelarClick(Sender: TObject);
begin
     frmmodulo.qrfilial.Cancel;
     frmmodulo.qrfilial.Edit;

     frmmodulo.qrsintegra60.Cancel;
     frmmodulo.qrsintegra60.Insert;

     eddtmovimento.Date := date;
     edcod.Text := '';
     edempresa.Caption := '´';
     edcnpj.Caption := '';
     edie.Caption := '';
     edcod.SetFocus;

     panel1.Enabled := false;
end;

procedure Tfincecf.edterceirosExit(Sender: TObject);
begin

     if edterceiros.Text <> '' then
          begin
              if frmmodulo.qrfornecedor.locate('razaosocial',edterceiros.Text,[]) then
                    begin
                         if frmmodulo.qrsintegra60.State in [dsedit,dsinsert] then
                              begin
                              {
                                   frmmodulo.qrsintegra60CODIGO_CLIENTE.Value := frmmodulo.qrfornecedorCODIGO.Value;
                                   frmmodulo.qrsintegra60CNPJ_CLIENTE.Value   := fsintegra.sonumeros(frmmodulo.qrfornecedorCNPJ.Value);
                                   frmmodulo.qrsintegra60IE_CLIENTE.Value     := fsintegra.sonumeros(frmmodulo.qrfornecedorIE.Value);
                                   frmmodulo.qrsintegra60UF_IE_CLIENTE.Value  := frmmodulo.qrfornecedorESTADO.Value;
                              }
                              end;
                    end
               else
               begin
                    {
                     x:=pesquisacliente(wwDBEdit4.text);
                     if x>0 then
                     begin
                            if (frmmodulo.tabreceber.state<>dsedit) and (frmmodulo.tabreceber.state<>dsinsert) then
                                   frmmodulo.tabreceber.edit;
                            frmmodulo.tabrecebercliente.Value:=x;
                            frmmodulo.tabcliente.locate('codigo',x,[]);
                            frmmodulo.tabrecebercliente.value:=frmmodulo.tabclientecodigo.value;
                            frmmodulo.tabrecebernome.value:=frmmodulo.tabclientenome_razao.value;
                     end
                     ELSE
                            wwDBEdit4.setfocus;
                    }
              end;
       end;
end;

procedure Tfincecf.edcfopExit(Sender: TObject);
begin
     if edcfop.Text = '' then
          begin
               showmessage('Atenção, CFOP Não Informada...');
               edcfop.SetFocus;
          end
     else if frmmodulo.qrcfop.locate('codigo',edcfop.Text,[loPartialKey,loCaseInsensitive]) then
          begin
               if frmmodulo.qrsintegra60.State in [dsedit,dsinsert] then
                    begin
                         frmmodulo.qrsintegra60CFOP.Value := inttostr(frmmodulo.qrcfopCODIGO.Value);
                         lbcfop.Caption := frmmodulo.qrcfopDISCRICAO.Value;
                    end;
          end;
end;

procedure Tfincecf.Retorna1Click(Sender: TObject);
begin
     btretorna.Click;
end;

procedure Tfincecf.Novo1Click(Sender: TObject);
begin
     btincluir.Click;
end;

procedure Tfincecf.Cancela1Click(Sender: TObject);
begin
     btcancelar.Click;
end;

procedure Tfincecf.FormCreate(Sender: TObject);
begin
     top       := 85;
     left      := 152;
     width     := 864;
     //height    := 1021;
end;

procedure Tfincecf.edcodExit(Sender: TObject);
begin

     if edcod.Text = '' then
          edlocempresa.Click
     else
          begin
               //if frmmodulo.qrfilial.State in [dsedit,dsinsert] then
                    //begin
                         edcod.Text := FormatFloat('000000',StrToFloat(edcod.Text));
                         if frmmodulo.qrfilial.Locate('codigo',edcod.Text,[]) then
                              begin

                                   frmmodulo.qrsintegra60CODIGO_EMPRESA.Value := frmmodulo.qrfilialCODIGO.Value;
                                   //frmmodulo.qrsintegra60OBS1.Value := frmmodulo.qrfilialEMPRESA.Value;
                                   frmmodulo.qrsintegra60CNPJ.Value := fsintegra.sonumeros(frmmodulo.qrfilialCNPJ.Value);
                                   frmmodulo.qrsintegra60IE.Value := fsintegra.sonumeros(frmmodulo.qrfilialIE.Value);
                                   frmmodulo.qrsintegra60UF.Value := frmmodulo.qrfilialUF.Value;

                                   //frmmodulo.qrentra.qrsintegra60ID.Value := frmmodulo.qrfilialIE.Value;
                                   edempresa.Caption := frmmodulo.qrfilialEMPRESA.Value;
                                   edcnpj.Caption := frmmodulo.qrfilialCNPJ.Value;
                                   edie.Caption := frmmodulo.qrfilialIE.Value;
                                   panel1.Enabled := true;
                                   eddtmovimento.SetFocus;
                              end
                         else
                              begin
                                   showmessage('Empresa Não Encontrada, Verifique...');
                                   edcod.Text := '';
                                   edcod.SetFocus;
                         end;
                    //end;
          end;

end;

procedure Tfincecf.edlocempresaClick(Sender: TObject);
begin
     flocempresa := Tflocempresa.create ( application );
     try
          flocempresa.showmodal;
     finally
          edcod.Text  := FormatFloat('000000',frmmodulo.qrfilialCODIGO.Value);
          edempresa.Caption := frmmodulo.qrfilialEMPRESA.Value;
          edcnpj.Caption := frmmodulo.qrfilialCNPJ.Value;
          edie.Caption := frmmodulo.qrfilialIE.Value;
          //frmmodulo.qrsintegra60OBS1.Value := frmmodulo.qrfilialEMPRESA.Value;

          panel1.Enabled := true;
          eddtmovimento.SetFocus;
          flocempresa.Release;
          flocempresa := nil;
     end;

end;

procedure Tfincecf.btincluirClick(Sender: TObject);
begin
     frmmodulo.qrsintegra60.Insert;
     edcod.SetFocus;

end;

procedure Tfincecf.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
               btalterar.SetFocus;


               //pagecontrol2.ActivePageIndex := 1;
               //edcodproduto.SetFocus;
          end;

end;

procedure Tfincecf.edvlcontabilKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
          end;

end;

procedure Tfincecf.Grava1Click(Sender: TObject);
begin
     btalterar.Click;
end;

procedure Tfincecf.edcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
          end;

end;

procedure Tfincecf.edecfExit(Sender: TObject);
begin
     frmmodulo.qrsintegra60nro_serie_eqp.Value := frmmodulo.qrecfSERIE_EQUIPAMENTO.Value;
     frmmodulo.qrsintegra60nro_ordem_eqp.Value := frmmodulo.qrecfCODIGO.Value;
     frmmodulo.qrsintegra60modelo_doc.Value    := '2D';
end;

procedure Tfincecf.RzDBEdit9Exit(Sender: TObject);
begin
     if frmmodulo.qrsintegra60aliquota02.Value = 0 then
          bttotalgeral.SetFocus;

end;

procedure Tfincecf.RzDBEdit28Exit(Sender: TObject);
begin
if frmmodulo.qrsintegra60aliquota03.Value = 0 then
          bttotalgeral.SetFocus;

end;

procedure Tfincecf.RzDBEdit31Exit(Sender: TObject);
begin
if frmmodulo.qrsintegra60aliquota04.Value = 0 then
          bttotalgeral.SetFocus;

end;

procedure Tfincecf.RzDBEdit34Exit(Sender: TObject);
begin
if frmmodulo.qrsintegra60aliquota05.Value = 0 then
          bttotalgeral.SetFocus;

end;

procedure Tfincecf.RzDBEdit7Exit(Sender: TObject);
begin
     if frmmodulo.qrsintegra60aliquota01.Value = 0 then
          bttotalgeral.SetFocus;
end;

procedure Tfincecf.RzDBEdit8Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_tparcial01.Value := frmmodulo.qrsintegra60base01.Value*frmmodulo.qrsintegra60aliquota01.Value/100;
end;

procedure Tfincecf.RzDBEdit10Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_tparcial02.Value := frmmodulo.qrsintegra60base02.Value*frmmodulo.qrsintegra60aliquota02.Value/100;

end;

procedure Tfincecf.RzDBEdit17Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_tparcial03.Value := frmmodulo.qrsintegra60base03.Value*frmmodulo.qrsintegra60aliquota03.Value/100;

end;

procedure Tfincecf.RzDBEdit20Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_tparcial04.Value := frmmodulo.qrsintegra60base04.Value*frmmodulo.qrsintegra60aliquota04.Value/100;

end;

procedure Tfincecf.RzDBEdit27Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_tparcial04.Value := frmmodulo.qrsintegra60base04.Value*frmmodulo.qrsintegra60aliquota04.Value/100;

end;

procedure Tfincecf.RzDBEdit15Exit(Sender: TObject);
begin
     frmmodulo.qrsintegra60valor_venda_bruta.Value := frmmodulo.qrsintegra60total_final_dia.Value-frmmodulo.qrsintegra60total_inicio_dia.Value;
end;

procedure Tfincecf.RzDBEdit14Exit(Sender: TObject);
var
     vval,vcan,vdes,viss,viof: double;
begin
     vval := frmmodulo.qrsintegra60valor_venda_bruta.Value;
     vcan := frmmodulo.qrsintegra60cancelamento.Value;
     vdes := frmmodulo.qrsintegra60desconto.Value;
     viss := frmmodulo.qrsintegra60issqn.Value;
     viof := frmmodulo.qrsintegra60acrescimo_iof.Value;

     frmmodulo.qrsintegra60valor_total_geral.Value := vval-(vcan+vdes+viss+viof);

end;

procedure Tfincecf.dssintegra60DataChange(Sender: TObject; Field: TField);
begin
     btincluir.Enabled:=frmmodulo.qrsintegra60.State in [dsbrowse];
     btcancelar.Enabled:=frmmodulo.qrsintegra60.state in [dsedit,dsinsert];
     btalterar.Enabled:=frmmodulo.qrsintegra60.state in [dsedit,dsinsert];
end;

procedure Tfincecf.BitBtn1Click(Sender: TObject);
begin
     frmmodulo.qrsintegra60.edit;
     edcod.SetFocus;

end;

end.

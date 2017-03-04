unit memorando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, ImgList, AdvGlowButton, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, RzEdit, RzDBEdit, RzDBBnEd, Mask, DBCtrls, DB, Menus,
  rxtooledit, RXDBCtrl, RzBtnEdt, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, RzCmboBx, RxMemDS, ComCtrls, RzDTP, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, CellEditors;

type
  Tfrmmemorando = class(TForm)
    panel1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvPage5: TAdvPage;
    AdvPage2: TAdvPage;
    AdvOfficeStatusBar18: TAdvOfficeStatusBar;
    Label11: TLabel;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    AdvOfficeStatusBar4: TAdvOfficeStatusBar;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AdvOfficeStatusBar5: TAdvOfficeStatusBar;
    Label10: TLabel;
    AdvOfficeStatusBar8: TAdvOfficeStatusBar;
    Label6: TLabel;
    AdvOfficeStatusBar9: TAdvOfficeStatusBar;
    Label12: TLabel;
    AdvOfficeStatusBar10: TAdvOfficeStatusBar;
    Label13: TLabel;
    AdvOfficeStatusBar11: TAdvOfficeStatusBar;
    Label14: TLabel;
    GRID1: TwwDBGrid;
    GRID2: TwwDBGrid;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    bgravar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    ImageList1: TImageList;
    dsmemorando: TDataSource;
    AdvOfficeStatusBar6: TAdvOfficeStatusBar;
    Label1: TLabel;
    AdvOfficeStatusBar7: TAdvOfficeStatusBar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvPage3: TAdvPage;
    PopupMenu1: TPopupMenu;
    gravar1: TMenuItem;
    cancelar1: TMenuItem;
    retorna1: TMenuItem;
    Label5: TLabel;
    emodelo: TRzEdit;
    eserie: TRzEdit;
    ememorando: TRzEdit;
    esituacao: TRzEdit;
    edespacho: TRzEdit;
    eregistro: TRzEdit;
    econhecimento: TRzEdit;
    codfornecedor: TRzButtonEdit;
    codtransportador: TRzButtonEdit;
    efornecedor: TRzEdit;
    etransportador: TRzEdit;
    edatanf: TRzDateTimeEdit;
    enotafiscal_saida: TRzButtonEdit;
    AdvOfficeStatusBar12: TAdvOfficeStatusBar;
    Label15: TLabel;
    AdvOfficeStatusBar13: TAdvOfficeStatusBar;
    Label16: TLabel;
    AdvOfficeStatusBar14: TAdvOfficeStatusBar;
    Label17: TLabel;
    QUERY: TZQuery;
    AdvOfficeStatusBar15: TAdvOfficeStatusBar;
    Label18: TLabel;
    AdvOfficeStatusBar16: TAdvOfficeStatusBar;
    Label19: TLabel;
    enotafiscal_entrada: TRzButtonEdit;
    epais: TRzComboBox;
    rxnotas: TRxMemoryData;
    dsnotas: TDataSource;
    rxnotasnotafiscal: TStringField;
    rxnotasmodelo: TStringField;
    rxnotasquantidade: TFloatField;
    rxnotasunidade: TStringField;
    rxnotasdata: TDateField;
    rxnotascodfornecedor: TStringField;
    rxitem: TRxMemoryData;
    rxitemnotafiscal: TStringField;
    rxitemquantidade: TFloatField;
    rxitemunidade: TStringField;
    rxitemproduto: TStringField;
    rxitemunitario: TFloatField;
    rxitemtotal: TFloatField;
    dsitem: TDataSource;
    QUERY1: TZQuery;
    rxitemcodproduto: TStringField;
    rxnotasfornecedor: TStringField;
    eestado: TRzComboBox;
    AdvOfficeStatusBar17: TAdvOfficeStatusBar;
    Label20: TLabel;
    epais_transportadora: TRzComboBox;
    rxconhecimento: TRxMemoryData;
    rxconhecimentoctrc: TStringField;
    rxconhecimentomodelo: TStringField;
    rxconhecimentoserie: TStringField;
    rxconhecimentodata: TDateField;
    dsconhecimento: TDataSource;
    edata: TDateEdit;
    edespacho_data: TDateEdit;
    eregistro_data: TDateEdit;
    econhecimento_data: TDateEdit;
    AdvOfficeStatusBar19: TAdvOfficeStatusBar;
    Label21: TLabel;
    enumero_conhecimento: TRzEdit;
    AdvOfficeStatusBar20: TAdvOfficeStatusBar;
    Label22: TLabel;
    RzEdit2: TRzEdit;
    AdvOfficeStatusBar21: TAdvOfficeStatusBar;
    Label23: TLabel;
    AdvOfficeStatusBar22: TAdvOfficeStatusBar;
    Label24: TLabel;
    emodelo_conhecimento: TRzEdit;
    eserie_conhecimento: TRzEdit;
    edata_conhecimento: TDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure retorna1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure cancelar1Click(Sender: TObject);
    procedure gravar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ememorandoEnter(Sender: TObject);
    procedure ememorandoExit(Sender: TObject);
    procedure ememorandoKeyPress(Sender: TObject; var Key: Char);
    procedure enotafiscal_saidaExit(Sender: TObject);
    procedure enotafiscal_saidaEnter(Sender: TObject);
    procedure codfornecedorButtonClick(Sender: TObject);
    procedure enotafiscal_saidaButtonClick(Sender: TObject);
    procedure codfornecedorExit(Sender: TObject);
    procedure enotafiscal_entradaExit(Sender: TObject);
    procedure enotafiscal_entradaButtonClick(Sender: TObject);
    procedure codtransportadorExit(Sender: TObject);
    procedure codtransportadorButtonClick(Sender: TObject);
    procedure epais_transportadoraExit(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataExit(Sender: TObject);
    procedure eserie_conhecimentoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmemorando: Tfrmmemorando;

implementation

uses memorando_menu, principal, xloc_fornecedor, modulo,
  loc_transportador, xloc_cliente;

{$R *.dfm}

procedure Tfrmmemorando.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmmemorando.retorna1Click(Sender: TObject);
begin
  bfecharClick(frmmemorando);
end;

procedure Tfrmmemorando.bcancelarClick(Sender: TObject);
begin
  QUERY.Close;
  QUERY1.Close;
  frmmodulo.Conexao.Rollback;
  bfecharClick(frmmemorando);
end;

procedure Tfrmmemorando.bgravarClick(Sender: TObject);
begin

try

  //IF (dsmemorando.state = dsinsert) or (dsmemorando.State = dsedit) then
    begin

      if frmmemorando_menu.vopcao = 1 then
        begin
          frmmemorando_menu.qrmemorando.Open;
          frmmemorando_menu.qrmemorando.Last;
          if frmmemorando_menu.qrmemorando.RecordCount > 0 then
            ememorando.Text := frmprincipal.zerarcodigo(inttostr(strtoint(frmmemorando_menu.qrmemorandoCODIGO.AsString)+1),6)
          else
            ememorando.Text := '000001';

           frmmemorando_menu.qrmemorando.Append;
        end
      else
        frmmemorando_menu.qrmemorando.Edit;

       frmmemorando_menu.qrmemorando.FieldByName('codigo').AsString := ememorando.Text;
       frmmemorando_menu.qrmemorando.FieldByName('memorando').AsString := ememorando.Text;
       frmmemorando_menu.qrmemorando.FieldByName('data').AsDateTime := edata.Date;

       frmmemorando_menu.qrmemorando.FieldByName('notafiscal').AsString := enotafiscal_saida.Text;
       frmmemorando_menu.qrmemorando.FieldByName('notafiscal_modelo').AsString := emodelo.Text;
       frmmemorando_menu.qrmemorando.FieldByName('notafiscal_serie').AsString := eserie.Text;
       frmmemorando_menu.qrmemorando.FieldByName('notafiscal_data').AsDateTime := edatanf.Date;

       frmmemorando_menu.qrmemorando.FieldByName('codfornecedor').AsString := codfornecedor.Text;

       frmmemorando_menu.qrmemorando.FieldByName('despacho').AsString := edespacho.Text;
       frmmemorando_menu.qrmemorando.FieldByName('despacho_data').AsDateTime := edespacho_data.Date;
       frmmemorando_menu.qrmemorando.FieldByName('registro').AsString := eregistro.Text;
       frmmemorando_menu.qrmemorando.FieldByName('registro_data').AsDateTime := eregistro_data.Date;
       frmmemorando_menu.qrmemorando.FieldByName('conhecimento_embarque').AsString := econhecimento.Text;
       frmmemorando_menu.qrmemorando.FieldByName('conhecimento_embarque_data').AsDateTime := econhecimento_data.Date;
       frmmemorando_menu.qrmemorando.FieldByName('estado_fabricante').AsString := eestado.Text;
       frmmemorando_menu.qrmemorando.FieldByName('pais_destino').AsString := epais.Text;

       frmmemorando_menu.qrmemorando.FieldByName('conhecimento').AsString := enumero_conhecimento.Text;
       frmmemorando_menu.qrmemorando.FieldByName('conhecimento_modelo').AsString := emodelo_conhecimento.Text;
       frmmemorando_menu.qrmemorando.FieldByName('conhecimento_serie').AsString := eserie_conhecimento.Text;
       frmmemorando_menu.qrmemorando.FieldByName('conhecimento_data').AsDateTime := edata_conhecimento.Date;

       frmmemorando_menu.qrmemorando.FieldByName('transportador_codigo').AsString := codtransportador.Text;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_nome').AsString := etransportador.Text;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_endereco').AsString := frmmodulo.qrtransportador.fieldbyname('endereco').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_bairro').AsString := frmmodulo.qrtransportador.fieldbyname('bairro').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_cidade').AsString := frmmodulo.qrtransportador.fieldbyname('cidade').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_uf').AsString := frmmodulo.qrtransportador.fieldbyname('uf').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_pais').AsString := 'BRASIL';
       frmmemorando_menu.qrmemorando.FieldByName('transportador_cnpjcpf').AsString := frmmodulo.qrtransportador.fieldbyname('cpf').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('transportador_inscrg').AsString := frmmodulo.qrtransportador.fieldbyname('rg').asstring;
       frmmemorando_menu.qrmemorando.FieldByName('situacao').AsString := esituacao.Text;
       frmmemorando_menu.qrmemorando.post;

      frmmemorando_menu.qrmemorando_entrada.Open;

      if rxnotas.RecordCount > 0 then
        begin
          rxnotas.First;
          while not rxnotas.Eof do
            begin
              if frmmemorando_menu.vopcao = 1 then
                frmmemorando_menu.qrmemorando_entrada.Append
              else
                frmmemorando_menu.qrmemorando_entrada.Edit;

              frmmemorando_menu.qrmemorando_entrada.FieldByName('memorando').AsString := ememorando.Text;
              frmmemorando_menu.qrmemorando_entrada.FieldByName('notafiscal').AsString := enotafiscal_entrada.Text;
              frmmemorando_menu.qrmemorando_entrada.FieldByName('nf_data').AsDateTime := rxnotasdata.AsDateTime;
              frmmemorando_menu.qrmemorando_entrada.FieldByName('nf_modelo').AsString := rxnotasmodelo.AsString;
              frmmemorando_menu.qrmemorando_entrada.FieldByName('nf_quantidade').AsFloat := rxnotasquantidade.AsFloat;
              frmmemorando_menu.qrmemorando_entrada.FieldByName('nf_unidade').AsString := rxnotasunidade.AsString;
              frmmemorando_menu.qrmemorando_entrada.Post;
              rxnotas.Next;
            end;
        end;

      frmmodulo.Conexao.Commit;
      bfecharClick(frmmemorando);

    end;
  except
    begin
      application.MessageBox('Erro no processo de gravação do registro',
     'Atenção', mb_ok + mb_iconerror);
      frmmodulo.Conexao.Rollback;
    end;
  end;

end;

procedure Tfrmmemorando.cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmmemorando);
end;

procedure Tfrmmemorando.gravar1Click(Sender: TObject);
begin
  bgravarClick(frmmemorando);
end;

procedure Tfrmmemorando.FormShow(Sender: TObject);
VAR
  vprod , vuni : string;
begin
  if frmmemorando_menu.vopcao = 2 then
    begin
      //ememorando.Text         := frmmemorando_menu.qrmemorando.FieldByName('codigo').AsString;
      ememorando.Text         := frmmemorando_menu.qrmemorando.FieldByName('memorando').AsString;
      edata.Date              := frmmemorando_menu.qrmemorando.FieldByName('data').AsDateTime;
      enotafiscal_saida.Text  := frmmemorando_menu.qrmemorando.FieldByName('notafiscal').AsString;
      emodelo.Text            := frmmemorando_menu.qrmemorando.FieldByName('notafiscal_modelo').AsString ;
      eserie.Text             := frmmemorando_menu.qrmemorando.FieldByName('notafiscal_serie').AsString;
      edatanf.Date            := frmmemorando_menu.qrmemorando.FieldByName('notafiscal_data').AsDateTime;

      codfornecedor.Text      := frmmemorando_menu.qrmemorando.FieldByName('codfornecedor').AsString;
      efornecedor.Text        := frmmemorando_menu.qrmemorando.FieldByName('cliente').AsString;

      edespacho.Text          := frmmemorando_menu.qrmemorando.FieldByName('despacho').AsString;
      edespacho_data.Date     := frmmemorando_menu.qrmemorando.FieldByName('despacho_data').AsDateTime;
      eregistro.Text          := frmmemorando_menu.qrmemorando.FieldByName('registro').AsString;
      eregistro_data.Date     := frmmemorando_menu.qrmemorando.FieldByName('registro_data').AsDateTime;
      econhecimento.Text      := frmmemorando_menu.qrmemorando.FieldByName('conhecimento_embarque').AsString;
      econhecimento_data.Date := frmmemorando_menu.qrmemorando.FieldByName('conhecimento_embarque_data').AsDateTime;
      eestado.Text            := frmmemorando_menu.qrmemorando.FieldByName('estado_fabricante').AsString;
      epais.Text              := frmmemorando_menu.qrmemorando.FieldByName('pais_destino').AsString;

       enumero_conhecimento.Text := frmmemorando_menu.qrmemorando.FieldByName('conhecimento').AsString;
       emodelo_conhecimento.Text := frmmemorando_menu.qrmemorando.FieldByName('conhecimento_modelo').AsString;
       eserie_conhecimento.Text := frmmemorando_menu.qrmemorando.FieldByName('conhecimento_serie').AsString;
       edata_conhecimento.Date := frmmemorando_menu.qrmemorando.FieldByName('conhecimento_data').AsDateTime;

      codtransportador.Text   := frmmemorando_menu.qrmemorando.FieldByName('transportador_codigo').AsString;
      etransportador.Text     := frmmemorando_menu.qrmemorando.FieldByName('transportador_nome').AsString;
      epais_transportadora.Text := frmmemorando_menu.qrmemorando.FieldByName('transportador_pais').AsString;
      esituacao.Text          := frmmemorando_menu.qrmemorando.FieldByName('situacao').AsString;


      // produtos exportados
      QUERY.close;
      QUERY.sql.clear;
      QUERY.sql.add('select * from c000061 where numero = '''+enotafiscal_saida.Text+'''');
      QUERY.open;
      if QUERY.RecordCount > 0 then
        begin

         QUERY1.close;
         QUERY1.sql.clear;
         QUERY1.sql.add('select * from c000062 where codnota = '''+QUERY.fieldbyname('codigo').AsString+'''');
         QUERY1.open;

         if QUERY1.RecordCount > 0 then
            begin
              rxitem.Open;
              QUERY1.First;
              while not QUERY1.eof do
                begin

                 if frmmodulo.qrproduto.LOCATE('codigo',QUERY1.FieldByName('codproduto').AsString,[loCaseInsensitive]) THEN
                   begin
                     vprod := frmmodulo.qrprodutoPRODUTO.AsString;
                     vuni  := frmmodulo.qrprodutoUNIDADE.AsString;
                   end;

                  rxitem.Append;
                  rxitemnotafiscal.AsString := enotafiscal_saida.Text;
                  rxitemquantidade.AsFloat := QUERY1.FieldByName('qtde').AsFloat;
                  rxitemunidade.AsString   := vuni;
                  rxitemproduto.AsString   := vprod;
                  rxitemunitario.AsFloat   := QUERY1.FieldByName('unitario').AsFloat;
                  rxitemtotal.AsFloat      := QUERY1.FieldByName('total').AsFloat;
                  rxitem.Post;
                  QUERY1.Next;
                end;
            end;
        end;

      // documentos fiscais

      enotafiscal_entrada.Text := frmprincipal.zerarcodigo(enotafiscal_entrada.Text,6);

      QUERY.close;
      QUERY.sql.clear;
      QUERY.sql.add('select n.codigo,n.numero,n.data,n.modelo_nf,n.codcliente,n.movimento,i.codnota,sum(i.qtde) qtde ');
      QUERY.sql.add('from c000061 n, c000062 i');
      QUERY.sql.add('where n.numero = '''+enotafiscal_entrada.Text+'''');
      QUERY.sql.add('and i.codnota = n.codigo');
      QUERY.sql.add('and n.movimento= ''E''');
      QUERY.sql.add('and n.codcliente = '''+codfornecedor.Text+'''');
      QUERY.sql.add('group by n.codigo,n.numero,n.data,n.modelo_nf,n.codcliente,n.movimento,i.codnota');

      QUERY.open;
      if QUERY.RecordCount > 0 then
        begin

          rxnotas.Append;
          rxnotasnotafiscal.AsString := enotafiscal_entrada.Text;
          rxnotasmodelo.AsString     := QUERY.FieldByName('modelo_nf').AsString;
          rxnotasquantidade.AsFloat  := QUERY.FieldByName('qtde').AsFloat;
          rxnotascodfornecedor.AsString    := codfornecedor.Text;
          rxnotasfornecedor.AsString    := efornecedor.Text;
          rxnotasunidade.AsString    := '';  //QUERY.FieldByName('unidade').AsString;
          rxnotasdata.AsDateTime     := QUERY.FieldByName('data').AsDateTime;
          rxnotas.Post;
        end;

      ememorando.SetFocus;
    end
  else
      enotafiscal_saida.SetFocus;
end;

procedure Tfrmmemorando.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;

end;

procedure Tfrmmemorando.ememorandoEnter(Sender: TObject);
begin
  TRzEdit(sender).Color := $00A0FAF8;
end;

procedure Tfrmmemorando.ememorandoExit(Sender: TObject);
begin
  TRzEdit(sender).Color := clwindow;
end;

procedure Tfrmmemorando.ememorandoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmmemorando.enotafiscal_saidaExit(Sender: TObject);
var
 vcodigo,vprod,vuni : string;
begin
  TRzButtonEdit(sender).Color := clwindow;
  if enotafiscal_saida.Text = '' then
    begin
      //enotafiscal_saidaButtonClick(frmmemorando);
      Application.messagebox('Nota Fiscal Não Informada, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
      enotafiscal_saida.SetFocus;
      exit;
    end
  else
    begin
      enotafiscal_saida.Text := frmprincipal.zerarcodigo(enotafiscal_saida.Text,6);
      QUERY.close;
      QUERY.sql.clear;
      QUERY.sql.add('select * from c000061 where numero = '''+enotafiscal_saida.Text+'''');
      QUERY.open;
      if QUERY.RecordCount > 0 then
        begin
         if frmmemorando_menu.qrmemorando.LOCATE('notafiscal',enotafiscal_saida.Text,[loCaseInsensitive]) THEN
           begin
           if frmmemorando_menu.vopcao = 1 then
           begin

             if application.messagebox('Já Existe Memorando para essa Nota Fiscal, Continua?','Atenção',mb_yesno+MB_ICONQUESTION) = idyes then
             else
              begin
                enotafiscal_saida.Text := '';
                enotafiscal_saida.SetFocus;
                exit;
              end;
           end;
           end;

         vcodigo := QUERY.FieldByName('codigo').AsString;
         emodelo.Text := QUERY.FieldByName('modelo_nf').AsString;
         eserie.Text := QUERY.FieldByName('serie_nf').AsString;
         edatanf.Date := QUERY.FieldByName('data').AsDateTime;

         QUERY1.close;
         QUERY1.sql.clear;
         QUERY1.sql.add('select * from c000062 where codnota = '''+vcodigo+'''');
         QUERY1.open;
         if QUERY1.RecordCount > 0 then
            begin
              rxitem.First;
              while not rxitem.Eof do begin
                rxitem.Delete;
              end;  
              rxitem.Open;
              QUERY1.First;
              while not QUERY1.eof do
                begin

                 if frmmodulo.qrproduto.LOCATE('codigo',QUERY1.FieldByName('codproduto').AsString,[loCaseInsensitive]) THEN
                   begin
                     vprod := frmmodulo.qrprodutoPRODUTO.AsString;
                     vuni  := frmmodulo.qrprodutoUNIDADE.AsString;
                   end;

                  rxitem.Append;
                  rxitemnotafiscal.AsString := enotafiscal_saida.Text;
                  rxitemquantidade.AsFloat := QUERY1.FieldByName('qtde').AsFloat;
                  rxitemunidade.AsString   := vuni;
                  rxitemproduto.AsString   := vprod;
                  rxitemunitario.AsFloat   := QUERY1.FieldByName('unitario').AsFloat;
                  rxitemtotal.AsFloat      := QUERY1.FieldByName('total').AsFloat;
                  rxitem.Post;
                  QUERY1.Next;
                end;
            end;

         codfornecedor.SetFocus;
        end
      else
        begin
          Application.messagebox('Nota Fiscal de Saída Não Encontrada, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
          enotafiscal_saida.Text := '';
          enotafiscal_saida.SetFocus;
          exit;
        end;

    end;
end;

procedure Tfrmmemorando.enotafiscal_saidaEnter(Sender: TObject);
begin
  TRzButtonEdit(sender).Color := $00A0FAF8;

end;


procedure Tfrmmemorando.codfornecedorButtonClick(Sender: TObject);
begin

  resultado_pesquisa1 := '';
  frmxloc_cliente := Tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmemorando_menu.qrcliente.close;
     frmmemorando_menu.qrcliente.sql.clear;
     frmmemorando_menu.qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
     frmmemorando_menu.qrcliente.open;
     codfornecedor.Text := resultado_pesquisa1;
     efornecedor.Text := frmmemorando_menu.qrclienteNOME.Value;
     enotafiscal_entrada.setfocus;
  end;

end;

procedure Tfrmmemorando.enotafiscal_saidaButtonClick(Sender: TObject);
begin
{
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmemorando_menu.qrfornecedor.close;
     frmmemorando_menu.qrfornecedor.sql.clear;
     frmmemorando_menu.qrfornecedor.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
     frmmemorando_menu.qrfornecedor.open;
     frmmemorando_menu.qrnota.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;


     efornecedor.Text := frmmemorando_menu.qrfornecedorNOME.Value;
     enotafiscal.setfocus;
  end;

}
end;

procedure Tfrmmemorando.codfornecedorExit(Sender: TObject);
begin
  TRzButtonEdit(sender).Color := clwindow;
{
  if codfornecedor.Text = '' then
    begin
      codfornecedorButtonClick(frmmemorando);
      codfornecedor.Text := frmmemorando_menu.qrclienteCODIGO.AsString;
      efornecedor.Text := frmmemorando_menu.qrclienteNOME.AsString;
      enotafiscal_entrada.SetFocus;

      //Application.messagebox('Fornecedor Fiscal Não Informado, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
      //codfornecedor.SetFocus;
      exit;
    end
  else
    begin
}
  if codfornecedor.Text <> '' then
    begin
      codfornecedor.Text := frmprincipal.zerarcodigo(codfornecedor.Text,6);
      frmmemorando_menu.qrcliente.close;
      frmmemorando_menu.qrcliente.sql.clear;
      frmmemorando_menu.qrcliente.sql.add('select * from c000007 where codigo = '''+codfornecedor.Text+'''');
      frmmemorando_menu.qrcliente.open;
      if frmmemorando_menu.qrcliente.RecordCount > 0 then
        begin
          efornecedor.Text := frmmemorando_menu.qrclienteNOME.AsString;
          enotafiscal_entrada.SetFocus;
        end
      else
        begin
          codfornecedor.OnButtonClick(frmmemorando);
          exit;
        end;
    end;      
//    end;

end;

procedure Tfrmmemorando.enotafiscal_entradaExit(Sender: TObject);
begin
  TRzButtonEdit(sender).Color := clwindow;
  if enotafiscal_entrada.Text = '' then
    begin
      //enotafiscal_entradaButtonClick(frmmemorando);
      Application.messagebox('Nota Fiscal de Entrada Não Informada, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
      enotafiscal_entrada.SetFocus;
      exit;
    end
  else
    begin
      enotafiscal_entrada.Text := frmprincipal.zerarcodigo(enotafiscal_entrada.Text,6);
      QUERY.close;
      QUERY.sql.clear;
      QUERY.sql.add('select n.codigo,n.numero,n.data,n.modelo_nf,n.codcliente,n.movimento,i.codnota,sum(i.qtde) qtde ');
      QUERY.sql.add('from c000061 n, c000062 i');
      QUERY.sql.add('where n.numero = '''+enotafiscal_entrada.Text+'''');
      QUERY.sql.add('and i.codnota = n.codigo');
      QUERY.sql.add('and n.movimento= ''E''');
      QUERY.sql.add('and n.codcliente = '''+codfornecedor.Text+'''');
      QUERY.sql.add('group by n.codigo,n.numero,n.data,n.modelo_nf,n.codcliente,n.movimento,i.codnota');

      QUERY.open;
      if QUERY.RecordCount > 0 then
        begin

          rxnotas.Append;
          rxnotasnotafiscal.AsString := enotafiscal_entrada.Text;
          rxnotasmodelo.AsString     := QUERY.FieldByName('modelo_nf').AsString;
          rxnotasquantidade.AsFloat  := QUERY.FieldByName('qtde').AsFloat;
          rxnotascodfornecedor.AsString    := codfornecedor.Text;
          rxnotasfornecedor.AsString    := efornecedor.Text;
          rxnotasunidade.AsString    := '';  //QUERY.FieldByName('unidade').AsString;
          rxnotasdata.AsDateTime     := QUERY.FieldByName('data').AsDateTime;
          rxnotas.Post;

         //emodelo.Text := QUERY.FieldByName('modelo_nf').AsString;
         //eserie.Text := QUERY.FieldByName('serie_nf').AsString;
         //edatanf.Date := QUERY.FieldByName('data').AsDateTime;

         edespacho.SetFocus;
        end
      else
        begin
          Application.messagebox('Nota Fiscal de Entrada Não Encontrada para esse Cliente, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
          enotafiscal_entrada.Text := '';
          codfornecedor.SetFocus;
          exit;
        end;
    end;

end;


procedure Tfrmmemorando.enotafiscal_entradaButtonClick(Sender: TObject);
begin
{
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmemorando_menu.qrfornecedor.close;
     frmmemorando_menu.qrfornecedor.sql.clear;
     frmmemorando_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmmemorando_menu.qrfornecedor.open;
     frmmemorando_menu.qrnota.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;


     efornecedor.Text := frmmemorando_menu.qrfornecedorNOME.Value;
     enotafiscal.setfocus;
  end;

}

end;

procedure Tfrmmemorando.codtransportadorExit(Sender: TObject);
begin
  TRzButtonEdit(sender).Color := clwindow;
  if codtransportador.Text = '' then
    begin
      codtransportadorButtonClick(frmmemorando);
      codtransportador.Text := frmmodulo.qrtransportador.FieldByName('codigo').AsString;
      etransportador.Text := frmmodulo.qrtransportador.FieldByName('nome').AsString;
      epais_transportadora.SetFocus;

      //Application.messagebox('Transportador Não Informado, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
      //codtransportador.SetFocus;
      exit;
    end
  else
    begin


      codtransportador.Text := frmprincipal.zerarcodigo(codtransportador.Text,6);
      frmmodulo.qrtransportador.close;
      frmmodulo.qrtransportador.sql.clear;
      frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+codtransportador.Text+'''');
      frmmodulo.qrtransportador.open;
      if frmmodulo.qrtransportador.RecordCount > 0 then
        begin
         etransportador.Text := frmmodulo.qrtransportador.FieldByName('nome').AsString;
         epais_transportadora.SetFocus;
        end
      else
        begin
          Application.messagebox('Transportador Não Encontrado, Verifique!','Memorando!',mb_ok+MB_ICONWARNING);
          codtransportador.SetFocus;
          exit;
        end;

    end;

end;

procedure Tfrmmemorando.codtransportadorButtonClick(Sender: TObject);
begin

  resultado_pesquisa1 := '';
  frmloc_transportador := tfrmloc_transportador.create(self);
  frmloc_transportador.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrtransportador.close;
     frmmodulo.qrtransportador.sql.clear;
     frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+resultado_pesquisa1+'''');
     frmmodulo.qrtransportador.open;
     codtransportador.Text := resultado_pesquisa1;
     etransportador.Text := frmmodulo.qrtransportador.fieldbyname('nome').asstring;
     epais_transportadora.setfocus;
  end;

end;

procedure Tfrmmemorando.epais_transportadoraExit(Sender: TObject);
begin
  TRzEdit(sender).Color := clwindow;
  bgravar.SetFocus;
end;

procedure Tfrmmemorando.edataEnter(Sender: TObject);
begin
  TDateEdit(sender).Color := $00A0FAF8;

end;

procedure Tfrmmemorando.edataExit(Sender: TObject);
begin
  TDateEdit(sender).Color := clwindow;

end;

procedure Tfrmmemorando.eserie_conhecimentoExit(Sender: TObject);
begin
  TRzEdit(sender).Color := clwindow;
  tab_principal.ActivePageIndex := 0;
  bgravar.SetFocus;
end;

end.



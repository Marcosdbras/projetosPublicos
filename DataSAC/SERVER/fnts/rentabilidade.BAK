unit rentabilidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, AdvOfficeStatusBar, AdvGlowButton, AdvToolBar,
  AdvOfficeStatusBarStylers, ImgList, AdvToolBarStylers, ComCtrls;

type
  Tfrmrentabilidade = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Relatrios1: TMenuItem;
    dsrentabilidade: TDataSource;
    dsrentabilidade_item: TDataSource;
    pesconde: TFlatPanel;
    QUERY: TZQuery;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    poprendimento: TPopupMenu;
    Gravar2: TMenuItem;
    Retorna1: TMenuItem;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    dslote_rentabilidade: TDataSource;
    Padrao1: TMenuItem;
    Gravar3: TMenuItem;
    Cancelar2: TMenuItem;
    Processar1: TMenuItem;
    Cancelarprocessamento1: TMenuItem;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    eproduto: TEdit;
    blocproduto: TBitBtn;
    DBEdit30: TDBEdit;
    erentabilidade: TEdit;
    DBEdit2: TDBEdit;
    Label58: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    blocalizar: TAdvGlowButton;
    pgravar: TFlatPanel;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Panel3: TPanel;
    AdvOfficeStatusBar6: TAdvOfficeStatusBar;
    bexcluir: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    bpadrao: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel4: TPanel;
    GRID2: TwwDBGrid;
    Bevel3: TBevel;
    Panel5: TPanel;
    Panel6: TPanel;
    binclui_rendimento: TBitBtn;
    baltera_rendimento: TBitBtn;
    bexclui_rendimento: TBitBtn;
    btotal_rendimento: TBitBtn;
    GRID1: TwwDBGrid;
    Bevel4: TBevel;
    Panel7: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    lrendimento: TLabel;
    Bevel5: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure brelatorioClick(Sender: TObject);
    procedure erentabilidadeEnter(Sender: TObject);
    procedure erentabilidadeExit(Sender: TObject);
    procedure erentabilidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dsrentabilidadeDataChange(Sender: TObject; Field: TField);
    procedure bgravar_rendimentoClick(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure blocprodutoClick(Sender: TObject);
    procedure binclui_rendimentoClick(Sender: TObject);
    procedure bretorna_rendimentoClick(Sender: TObject);
    procedure eproduto1Exit(Sender: TObject);
    procedure blocproduto1Click(Sender: TObject);
    procedure erendimentoExit(Sender: TObject);
    procedure baltera_rendimentoClick(Sender: TObject);
    procedure eproduto1KeyPress(Sender: TObject; var Key: Char);
    procedure bretorna_padraoClick(Sender: TObject);
    procedure fdados_padraoClick(Sender: TObject);
    procedure ValorPadrao1Click(Sender: TObject);
    procedure bexclui_rendimentoClick(Sender: TObject);
    procedure btotal_rendimentoClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure eperdaExit(Sender: TObject);
    procedure Gravar2Click(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure batualiza_loteClick(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure bpadraoClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Padrao1Click(Sender: TObject);
    procedure Gravar3Click(Sender: TObject);
    procedure Cancelar2Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Processar1Click(Sender: TObject);
    procedure Cancelarprocessamento1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrentabilidade: Tfrmrentabilidade;
  comando : string;
  vopcao,vopcao_item : integer;
  vrendimento_anterior : double;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_grupo,
  loc_produto;

{$R *.dfm}


procedure Tfrmrentabilidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QUERY.Close;
  //frmmodulo.qrproduto.close;
  frmmodulo.qrrentabilidade.close;

  action := cafree;
end;

procedure Tfrmrentabilidade.FormShow(Sender: TObject);
begin


  //pgravar.visible := false;
  //pgravar.Align := alClient;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.SQL.clear;
  frmmodulo.qrproduto.SQL.add('select * from c000025');
  frmmodulo.qrproduto.open;

  frmmodulo.qrlote_rentabilidade.close;
  frmmodulo.qrlote_rentabilidade.SQL.clear;
  frmmodulo.qrlote_rentabilidade.SQL.add('select * from c000093');
  frmmodulo.qrlote_rentabilidade.SQL.add('ORDER BY lote');
  frmmodulo.qrlote_rentabilidade.open;
  frmmodulo.qrlote_rentabilidade.first;

  frmmodulo.qrrentabilidade.close;
  frmmodulo.qrrentabilidade.SQL.clear;
  frmmodulo.qrrentabilidade.SQL.add('select * from c000077 order by codigo');
  frmmodulo.qrrentabilidade.open;
  frmmodulo.qrrentabilidade.first;

  erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
  eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmrentabilidade.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmrentabilidade.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmrentabilidade.bfecharClick(Sender: TObject);
begin
  close;
end;


procedure Tfrmrentabilidade.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmrentabilidade.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmrentabilidade.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := clyellow;
 if frmmodulo.qrrentabilidade.state = dsinsert then
end;

procedure Tfrmrentabilidade.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmrentabilidade.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmrentabilidade.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmrentabilidade.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN balterar.SETFOCUS;
end;

procedure Tfrmrentabilidade.brelatorioClick(Sender: TObject);
begin
//
end;

procedure Tfrmrentabilidade.erentabilidadeEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;

end;

procedure Tfrmrentabilidade.erentabilidadeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  GRID2.SetFocus;
end;

procedure Tfrmrentabilidade.erentabilidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmrentabilidade.dsrentabilidadeDataChange(Sender: TObject;
  Field: TField);
begin

    btotal_rendimentoClick(frmrentabilidade);

    frmmodulo.qrrentabilidade_item.Close;
    frmmodulo.qrrentabilidade_item.SQL.clear;
    frmmodulo.qrrentabilidade_item.SQL.Add('select * from c000078 where rentabilidade = '''+frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring+''' order by produto');
    frmmodulo.qrrentabilidade_item.open;

    if frmmodulo.qrrentabilidade.state <> dsinsert then
      begin
        erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
        eproduto.Text       := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;
      end;
end;

procedure Tfrmrentabilidade.bgravar_rendimentoClick(Sender: TObject);
begin

  if frmmodulo.qrrentabilidade_itemRENDIMENTO.AsFloat = 0 then
    begin
      Application.messagebox('Rendimentos Inválido, Verifique!','Rendimentos!',mb_ok+mb_iconerror);
      erendimento.SetFocus;
      exit;
    end;

  if (frmmodulo.qrrentabilidade_item.State = dsinsert) or (frmmodulo.qrrentabilidade_item.State = dsedit) then
    begin
      frmmodulo.qrrentabilidade_item.fieldbyname('codigo').AsString := eproduto.Text;
      frmmodulo.qrrentabilidade_item.post;
      frmmodulo.Conexao.Commit;
    end;

  btotal_rendimentoClick(frmrentabilidade);

  if vopcao_item = 1 then
    begin
      frmmodulo.qrrentabilidade_item.Insert;
      frmmodulo.qrrentabilidade_item.fieldbyname('codigo').AsString := eproduto.Text;
      frmmodulo.qrrentabilidade_item.fieldbyname('rentabilidade').AsString := erentabilidade.Text;
      eproduto1.Text := '';
      eproduto1.SetFocus;
    end
  else
    bretorna_rendimentoClick(frmrentabilidade);

  //fdados_rendimento.visible := false;
  //balterar.SetFocus;

end;

procedure Tfrmrentabilidade.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;

end;

procedure Tfrmrentabilidade.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;


end;


procedure Tfrmrentabilidade.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);

     IF (dsrentabilidade.state = dsinsert) or (dsrentabilidade.State = dsedit) then
          begin
               if eproduto.text <> '' then
                    begin
                         IF frmmodulo.qrproduto.LOCATE('codbarra',eproduto.Text,[loCaseInsensitive]) THEN
                              begin
                                   dsrentabilidade.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                   dsrentabilidade.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                   dsrentabilidade.dataset.fieldbyname('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                                   dsrentabilidade.dataset.fieldbyname('embalagem').AsFloat := 1;
                                   //eembalagem.SetFocus;
                                   eperda.setfocus;
                              end

                         else
                              begin
                                   dsrentabilidade.dataset.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
                                   if eproduto.text <> '000000' then
                                        begin
                                             if not frmmodulo.qrproduto.LOCATE('codigo',eproduto.Text,[loCaseInsensitive]) THEN
                                                  begin
                                                       blocprodutoclick(frmrentabilidade);
                                                  end
                                             else
                                                  begin
                                                       dsrentabilidade.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                                       dsrentabilidade.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                                       dsrentabilidade.dataset.fieldbyname('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                                                       dsrentabilidade.dataset.fieldbyname('embalagem').AsFloat := 1;
                                                       //eembalagem.SetFocus;
                                                       eperda.setfocus;
                                                  end;

                                        end
                                   else
                                        blocproduto.SetFocus;
                              end;
                         end
               else
                    blocproduto.SetFocus;
          end;
  end;
end;

procedure Tfrmrentabilidade.blocprodutoClick(Sender: TObject);
begin
  frmloc_produto := tfrmloc_produto.create(self);
  frmloc_produto.showmodal;

  eproduto.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  dsrentabilidade.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
  dsrentabilidade.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
  dsrentabilidade.dataset.fieldbyname('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
  dsrentabilidade.dataset.fieldbyname('embalagem').AsFloat := 1;
  eperda.setfocus;

end;

procedure Tfrmrentabilidade.binclui_rendimentoClick(Sender: TObject);
begin
  vopcao_item := 1;

  frmrentabilidade.PopupMenu := poprendimento;

  fdados_rendimento.visible := true;
  fdados_rendimento.Left := 96;
  fdados_rendimento.Top := 164;


  frmmodulo.qrrentabilidade_item.Insert;

  eproduto1.Text := '';
  frmmodulo.qrrentabilidade_item.fieldbyname('rentabilidade').AsString := erentabilidade.Text;

  vrendimento_anterior := 0;
  
  eproduto1.SetFocus;

end;

procedure Tfrmrentabilidade.bretorna_rendimentoClick(Sender: TObject);
begin
  frmmodulo.qrrentabilidade_item.Cancel;
  frmmodulo.Conexao.Commit;
  fdados_rendimento.visible := false;

  frmrentabilidade.PopupMenu := Pop1;

  //balterar.SetFocus;
  GRID1.SetFocus;

end;

procedure Tfrmrentabilidade.eproduto1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmrentabilidade.blocproduto1Click(Sender: TObject);
begin
  frmloc_produto := tfrmloc_produto.create(self);
  frmloc_produto.showmodal;

  eproduto1.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  dsrentabilidade_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
  dsrentabilidade_item.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
  erendimento.setfocus;

end;

procedure Tfrmrentabilidade.erendimentoExit(Sender: TObject);
var
  vtotal_rendimento : double;

begin

  vtotal_rendimento := 0;

  QUERY.Close;
  QUERY.SQL.clear;
  QUERY.SQL.Add('select sum(rendimento) total from c000078 where rentabilidade = '''+frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring+'''');
  QUERY.open;

  vtotal_rendimento := (QUERY.FIELDBYNAME('total').ASFLOAT-vrendimento_anterior)+frmmodulo.qrrentabilidade_itemRENDIMENTO.AsFloat+frmmodulo.qrrentabilidadePERDA.AsFloat;

  //if (QUERY.FIELDBYNAME('total').ASFLOAT-vrendimento_anterior)+frmmodulo.qrrentabilidade_itemRENDIMENTO.AsFloat+frmmodulo.qrrentabilidadePERDA.AsFloat > 100 then
  if vtotal_rendimento > 100 then
    begin
      Application.messagebox('Total de Rendimentos Maior que 100%, Verifique!','Rendimentos!',mb_ok+mb_iconerror);
      btotal_rendimentoClick(frmrentabilidade);
      frmmodulo.qrrentabilidade_itemRENDIMENTO.AsFloat := vrendimento_anterior;
      erendimento.SetFocus;
      exit;
    end;

  bgravar_rendimento.SetFocus;
end;

procedure Tfrmrentabilidade.baltera_rendimentoClick(Sender: TObject);
begin
  vopcao_item := 2;

  fdados_rendimento.visible := true;
  fdados_rendimento.Left := 96;
  fdados_rendimento.Top := 164;

  frmmodulo.qrrentabilidade_item.Edit;

  eproduto1.Text := frmmodulo.qrrentabilidade_item.fieldbyname('codproduto').AsString;
  erentabilidade.Text := frmmodulo.qrrentabilidade_item.fieldbyname('rentabilidade').AsString;

  vrendimento_anterior :=  frmmodulo.qrrentabilidade_itemRENDIMENTO.AsFloat;

  eproduto1.SetFocus;

end;

procedure Tfrmrentabilidade.eproduto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
        perform(wm_nextdlgctl,0,0);


     IF (dsrentabilidade_item.state = dsinsert) or (dsrentabilidade_item.State = dsedit) then
          begin
               if eproduto1.text <> '' then
                    begin
                         IF frmmodulo.qrproduto.LOCATE('codbarra',eproduto1.Text,[loCaseInsensitive]) THEN
                              begin
                                   dsrentabilidade_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                   dsrentabilidade_item.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                   erendimento.SetFocus;
                                   //eperda.setfocus;
                              end

                         else
                              begin
                                   dsrentabilidade_item.dataset.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto1.Text,6);
                                   if eproduto1.text <> '000000' then
                                        begin
                                             if not frmmodulo.qrproduto.LOCATE('codigo',eproduto1.Text,[loCaseInsensitive]) THEN

                                                  begin
                                                       blocproduto1click(frmrentabilidade);
                                                  end
                                             else
                                                  begin
                                                       dsrentabilidade_item.dataset.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                                       dsrentabilidade_item.dataset.fieldbyname('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                                       erendimento.SetFocus;
                                                       //eperda.setfocus;
                                                  end;

                                        end
                                   else
                                        blocproduto1.SetFocus;
                              end;
                         end
               else
                    blocproduto1.SetFocus;
          end;
   end;
end;

procedure Tfrmrentabilidade.bretorna_padraoClick(Sender: TObject);
begin
  fdados_padrao.visible := false;
  bpadrao.SetFocus;

end;

procedure Tfrmrentabilidade.fdados_padraoClick(Sender: TObject);
begin
  bretorna_padraoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.ValorPadrao1Click(Sender: TObject);
begin
  bpadraoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.bexclui_rendimentoClick(Sender: TObject);
begin
  frmmodulo.qrrentabilidade_item.Delete;
  frmmodulo.Conexao.Commit;
  
  btotal_rendimentoClick(frmrentabilidade);

end;

procedure Tfrmrentabilidade.btotal_rendimentoClick(Sender: TObject);
begin
  QUERY.Close;
  QUERY.SQL.clear;
  QUERY.SQL.Add('select sum(rendimento) total from c000078 where rentabilidade = '''+frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring+'''');
  QUERY.open;

  lrendimento.Caption := FORMATFLOAT('###,###,##0.00',QUERY.FIELDBYNAME('total').ASFLOAT+frmmodulo.qrrentabilidadePERDA.AsFloat);
end;

procedure Tfrmrentabilidade.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.eperdaExit(Sender: TObject);
begin
  bgravar.SetFocus;
end;

procedure Tfrmrentabilidade.Gravar2Click(Sender: TObject);
begin
  bgravar_rendimentoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Retorna1Click(Sender: TObject);
begin
  bretorna_rendimentoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.batualiza_loteClick(Sender: TObject);
begin
  fdados_padrao.visible := true;
  fdados_padrao.Left := 0;
  fdados_padrao.Top := 63;
  bretorna_padrao.SetFocus;

end;

procedure Tfrmrentabilidade.AdvGlowButton8Click(Sender: TObject);
begin
  frmmodulo.qrrentabilidade.first;
  erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
  eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

end;

procedure Tfrmrentabilidade.AdvGlowButton9Click(Sender: TObject);
begin
  frmmodulo.qrrentabilidade.prior;
  erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
  eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

end;

procedure Tfrmrentabilidade.AdvGlowButton10Click(Sender: TObject);
begin
  frmmodulo.qrrentabilidade.next;
  erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
  eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

end;

procedure Tfrmrentabilidade.AdvGlowButton11Click(Sender: TObject);
begin
  frmmodulo.qrrentabilidade.last;
  erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
  eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

end;

procedure Tfrmrentabilidade.bpadraoClick(Sender: TObject);
begin
  fdados_padrao.visible := true;
  fdados_padrao.Left := 27;
  fdados_padrao.Top := 63;
  bretorna_padrao.SetFocus;
  //fdados_padraoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrrentabilidade.State = dsinsert) or (frmmodulo.qrrentabilidade.State = dsedit) then
      frmmodulo.qrrentabilidade.cancel;


  pficha.Enabled := false;
  //pgravar.Visible := false;
  frmrentabilidade.PopupMenu := pop1;


  //bincluir.setfocus;
  GRID2.SetFocus;

  comando := '';

  //pesconde.visible := true;

end;

procedure Tfrmrentabilidade.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin


  if (frmmodulo.qrrentabilidade.State = dsinsert) or (frmmodulo.qrrentabilidade.State = dsedit) then
  begin

    frmmodulo.qrrentabilidadeCODIGO.AsString := erentabilidade.Text;
    frmmodulo.qrrentabilidadeCODPRODUTO.AsString := eproduto.Text;
    frmmodulo.qrrentabilidade.post;
  end;



  frmmodulo.qrrentabilidade_item.Refresh;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  //pgravar.Visible := false;
  frmrentabilidade.PopupMenu := pop1;
  //bincluir.setfocus;
  //pesconde.visible := true;

  GRID2.SetFocus;


end;

procedure Tfrmrentabilidade.bincluirClick(Sender: TObject);
var
  vcodigo : integer;
begin

  frmmodulo.qrrentabilidade.Last;
  if frmmodulo.qrrentabilidade.FieldByName('codigo').AsString = '' then
    vcodigo := 1
  else
    vcodigo := strtoint(frmmodulo.qrrentabilidadeCODIGO.AsString)+1;


  //pgravar.Visible := true;


  //pesconde.visible := false;

  frmrentabilidade.PopupMenu := popedicao;

  frmmodulo.qrrentabilidade.insert;
  //frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring := frmprincipal.codifica('000077');
  frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring := erentabilidade.Text;

  erentabilidade.Text := frmPrincipal.zerarcodigo(inttostr(vcodigo),6);

  eproduto.Text := '';

  pficha.Enabled := true;
  eproduto.setfocus;

end;

procedure Tfrmrentabilidade.balterarClick(Sender: TObject);
begin

  IF erentabilidade.Text <> '' THEN
  BEGIN
    //pesconde.visible := false;

    frmmodulo.qrrentabilidade.Edit;
    erentabilidade.Text := frmmodulo.qrrentabilidadeCODIGO.AsString;
    eproduto.Text := frmmodulo.qrrentabilidadeCODPRODUTO.AsString;

    frmrentabilidade.PopupMenu := popedicao;

    pficha.Enabled := true;
    eproduto.setfocus;
    //pgravar.Visible := true;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmrentabilidade.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Rentabilidade',4) then
  begin

    frmmodulo.qrrentabilidade_item.Close;
    frmmodulo.qrrentabilidade_item.SQL.clear;
    frmmodulo.qrrentabilidade_item.SQL.Add('select * from c000078 where rentabilidade = '''+frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring+''' order by produto');
    frmmodulo.qrrentabilidade_item.open;

    if frmmodulo.qrrentabilidade_item.RecordCount <> 0 then
      begin
        frmmodulo.qrrentabilidade_item.Close;
        frmmodulo.qrrentabilidade_item.SQL.clear;
        frmmodulo.qrrentabilidade_item.SQL.Add('delete from c000078 where rentabilidade = '''+frmmodulo.qrrentabilidade.fieldbyname('codigo').asstring+'''');
        frmmodulo.qrrentabilidade_item.execsql;
      end;

    frmmodulo.qrrentabilidade.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmrentabilidade.Padrao1Click(Sender: TObject);
begin
  bpadraoClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Gravar3Click(Sender: TObject);
begin
  bgravarClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Cancelar2Click(Sender: TObject);
begin
  bcancelarClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Excluir1Click(Sender: TObject);
begin
  bexcluirClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Processar1Click(Sender: TObject);
begin
  bprocessaClick(frmrentabilidade);
end;

procedure Tfrmrentabilidade.Cancelarprocessamento1Click(Sender: TObject);
begin
  bcancela_processoClick(frmrentabilidade);
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

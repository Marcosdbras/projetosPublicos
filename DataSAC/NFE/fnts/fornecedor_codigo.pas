unit fornecedor_codigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RzPanel, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid, Menus, RzDBEdit,
  Mask, RzEdit, PageView, RzDBBnEd, AdvGlowButton;

type
  Tfrmfornecedor_codigo = class(TForm)
    RzPanel1: TRzPanel;
    dsfornecedor_codigo: TDataSource;
    pop1: TPopupMenu;
    ppagina: TPageView;
    PageSheet5: TPageSheet;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    PageSheet6: TPageSheet;
    grid: TwwDBGrid;
    pcadastro: TRzPanel;
    ereferencia: TRzDBEdit;
    epreco: TRzDBNumericEdit;
    RzDBEdit3: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Retornar1: TMenuItem;
    ECODFORNECEDOR: TRzDBButtonEdit;
    qrfornecedor: TZQuery;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    Gravar1: TMenuItem;
    RzPanel2: TRzPanel;
    Label4: TLabel;
    lproduto: TLabel;
    qrfornecedor_codigo: TZQuery;
    qrfornecedor_codigoCODFORNECEDOR: TStringField;
    qrfornecedor_codigofornecedor: TStringField;
    qrfornecedor_codigoCODIGO: TStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    qrfornecedor_codigoCODPRODUTO: TStringField;
    query: TZQuery;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bretornar: TAdvGlowButton;
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Retornar1Click(Sender: TObject);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ereferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure balterarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure dsfornecedor_codigoDataChange(Sender: TObject;
      Field: TField);
    procedure ppaginaChange(Sender: TObject);
    procedure eprecoExit(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor_codigo: Tfrmfornecedor_codigo;
  vOPcao , reg_atual : integer;
implementation

uses modulo, xloc_fornecedor, principal, produto;

{$R *.dfm}

procedure Tfrmfornecedor_codigo.bretornarClick(Sender: TObject);
begin
  if ( qrfornecedor_codigo.State = dsInsert ) or ( qrfornecedor_codigo.State = dsedit ) then
    frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmfornecedor_codigo.FormShow(Sender: TObject);
begin
  qrfornecedor_codigo.Close;
  qrfornecedor_codigo.SQL.Clear;
  qrfornecedor_codigo.SQL.Add('select * from fornecedor_codigo');
  //qrfornecedor_codigo.SQL.Add('where codproduto = '''+frmproduto.qrprodutoCODIGO.AsString+'''');
  qrfornecedor_codigo.SQL.Add('where codproduto = '''+copy(lproduto.Caption,1,6) +'''');
  qrfornecedor_codigo.Open;
end;

procedure Tfrmfornecedor_codigo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfornecedor_codigo.Retornar1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmfornecedor_codigo.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
    begin
     qrfornecedor.close;
     qrfornecedor.sql.clear;
     qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     qrfornecedor.open;
     qrfornecedor_codigo.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;
     ereferencia.setfocus;
  end;
end;

procedure Tfrmfornecedor_codigo.ECODFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    //if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    qrfornecedor_codigo.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      qrfornecedor.close;
      qrfornecedor.sql.clear;
      qrfornecedor.sql.add('select * from c000009 where codigo = '''+ecodfornecedor.text+'''');
      qrfornecedor.open;
      if qrfornecedor.recordcount = 0 then
        begin
          application.messagebox('Fornecedor não cadastrado!','Aviso',mb_ok+mb_iconwarning);
          ecodfornecedor.Text := '';
          ecodfornecedor.setfocus;
          exit;
        end;
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodfornecedorButtonClick(frmfornecedor_codigo);
    end;
  end;

end;

procedure Tfrmfornecedor_codigo.ereferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfornecedor_codigo.balterarClick(Sender: TObject);
begin
  vOpcao := 2;
  reg_atual := qrfornecedor_codigo.RecNo;
  if qrfornecedor_codigoCODPRODUTO.AsString <> '' then
    begin
      ppagina.ActivePageIndex := 1;
      qrfornecedor_codigo.Edit;
      pcadastro.Enabled := true;
      ECODFORNECEDOR.SetFocus;
    end
  else
    bincluirClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.bgravarClick(Sender: TObject);
begin

  if ( qrfornecedor_codigo.State = dsInsert ) or ( qrfornecedor_codigo.State = dsedit ) then
    begin
      if ( qrfornecedor_codigo.State = dsInsert ) then
        begin
          query.Close;
          query.SQL.Clear;
          query.SQL.Add('select * from fornecedor_codigo');
          query.SQL.Add('where codfornecedor = :vfor and codproduto = :vpro and codigo = :vcod');
          query.Params.ParamByName('vfor').AsString := ECODFORNECEDOR.Text;
          //query.Params.ParamByName('vpro').AsString := frmproduto.qrprodutoCODIGO.AsString;
          query.Params.ParamByName('vpro').AsString := Copy(lproduto.Caption,1,6);
          query.Params.ParamByName('vcod').AsString := ereferencia.Text;
          query.Open;
          if query.RecordCount > 0 then
            begin
              application.messagebox('Referência já cadastrada para este fornecedor!','Atenção',mb_ok+MB_ICONEXCLAMATION);
              ereferencia.SetFocus;
              exit;
            end;
          //qrfornecedor_codigo.FieldByName('codproduto').AsString := frmproduto.qrprodutoCODIGO.AsString;
          qrfornecedor_codigo.FieldByName('codproduto').AsString := Copy(lproduto.Caption,1,6);

        end;
      qrfornecedor_codigo.Post;
      frmmodulo.Conexao.Commit;
    end;
  pcadastro.Enabled := false;
  ppagina.ActivePageIndex := 0;
  grid.SetFocus;
  if ( qrfornecedor_codigo.State = dsInsert ) then
    qrfornecedor_codigo.RecNo := reg_atual+1
  else
    qrfornecedor_codigo.RecNo := reg_atual;
end;

procedure Tfrmfornecedor_codigo.bincluirClick(Sender: TObject);
begin
  vOpcao := 1;
  reg_atual := qrfornecedor_codigo.RecNo;
  ppagina.ActivePageIndex := 1;
  qrfornecedor_codigo.Insert;
  //qrfornecedor_codigoCODPRODUTO.AsString := frmproduto.qrprodutoCODIGO.AsString;
  qrfornecedor_codigoCODPRODUTO.AsString := copy(lproduto.Caption,1,6);
  qrfornecedor_codigoPRECO.AsFloat       := 0;
  pcadastro.Enabled := true;
  ECODFORNECEDOR.SetFocus;
end;

procedure Tfrmfornecedor_codigo.dsfornecedor_codigoDataChange(
  Sender: TObject; Field: TField);
begin
  if qrfornecedor_codigo.State = dsBrowse then
    begin
      bincluir.Enabled := true;
      balterar.Enabled := true;
      bexcluir.Enabled := true;
      bgravar.Enabled := false;
    end
  else
    begin
      bincluir.Enabled := false;
      balterar.Enabled := false;
      bexcluir.Enabled := false;
      bgravar.Enabled := true;
    end;
end;

procedure Tfrmfornecedor_codigo.ppaginaChange(Sender: TObject);
begin
  if ppagina.ActivePageIndex = 0 then
    begin
      if ( qrfornecedor_codigo.State = dsInsert ) or ( qrfornecedor_codigo.State = dsEdit ) then
        qrfornecedor_codigo.Cancel
    end;
end;

procedure Tfrmfornecedor_codigo.eprecoExit(Sender: TObject);
begin
  bgravar.SetFocus;
end;

procedure Tfrmfornecedor_codigo.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Referência',4) then
    begin
      qrfornecedor_codigo.Delete;
      frmmodulo.Conexao.commit;
    end
  else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;
end;

procedure Tfrmfornecedor_codigo.Excluir1Click(Sender: TObject);
begin
  bexcluirClick(frmfornecedor_codigo);
end;

end.

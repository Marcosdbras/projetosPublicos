unit plano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, wwdbedit, Wwdotdot,
  Wwdbcomb, PageView, ImgList, ComCtrls, AdvGlowButton;

type
  Tfrmplano = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsplano2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    query1: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    COMBOGRUPO: TwwDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit28: TDBEdit;
    bloc: TBitBtn;
    DBEdit30: TDBEdit;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Visualizaoemrvore1: TMenuItem;
    arvore: TTreeView;
    ImageList1: TImageList;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOGRUPOEnter(Sender: TObject);
    procedure COMBOGRUPOExit(Sender: TObject);
    procedure blocClick(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Visualizaoemrvore1Click(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplano: Tfrmplano;
  comando : string;

implementation

uses modulo, principal, xloc_conta, lista_planocontas2;

{$R *.dfm}


procedure Tfrmplano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmplano.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrplano.close;
  frmmodulo.qrplano.SQL.clear;
  frmmodulo.qrplano.SQL.add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  frmmodulo.qrplano.first;

  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmplano.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmplano.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmplano.bincluirClick(Sender: TObject);
begin
   if bincluir.enabled = false then exit;

   pageview1.activepageindex := 0;

    combogrupo.Enabled := true;
    bloc.enabled := true;
  frmmodulo.qrplano.insert;
  frmmodulo.qrplano.fieldbyname('codigo').asstring := frmprincipal.codifica('000035');
  pficha.Enabled := true;
  pgravar.Visible := true;
  PopupMenu := pop2;
  combogrupo.setfocus;

end;

procedure Tfrmplano.balterarClick(Sender: TObject);
begin

   if balterar.enabled = false then exit;
     pageview1.activepageindex := 0;
  IF dbedit1.Text <> '' THEN
  BEGIN
    combogrupo.Enabled := false;
    bloc.enabled := false;


    frmmodulo.qrplano.Edit;


    pficha.Enabled := true;

    dbedit2.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;


  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmplano.bexcluirClick(Sender: TObject);
begin
   if balterar.enabled = false then exit;


  if frmprincipal.autentica('Excluir plano',4) then
  begin
    IF frmmodulo.qrplano.FIELDBYNAME('NIVEL').ASINTEGER = 1 THEN
    BEGIN
      Application.MESSAGEBOX('Conta de Nível Superior do Sistema! Impossível excluir!','Atenção',mb_ok+MB_ICONerror);
      exit;
    END;
    IF frmmodulo.qrplano.FIELDBYNAME('NIVEL').ASINTEGER = 2 THEN
    BEGIN
      if Application.MESSAGEBOX('Esta conta é um subgrupo. Caso você exclua esta conta, todas as contas dentro dela serão excluídas! Deseja prosseguir?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
      begin
          query1.close;
          query1.sql.clear;
          query1.sql.add('delete from c000035 where codgrupo ='''+frmmodulo.qrplano.fieldbyname('codigo').asstring+'''');
          query1.ExecSQL;

           frmmodulo.qrplano.Delete;
           frmmodulo.Conexao.commit;
      END;
    end;
    IF frmmodulo.qrplano.FIELDBYNAME('NIVEL').ASINTEGER = 3 THEN
    BEGIN
           frmmodulo.qrplano.Delete;
           frmmodulo.Conexao.commit;

    end;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmplano.blocalizarClick(Sender: TObject);
begin
  frmxloc_CONTA := tfrmxloc_CONTA.create(self);
  frmxloc_CONTA.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrPLANO.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmplano.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmplano.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  if dbedit2.text = '' then
  begin
    application.messagebox('Favor informar o nome da conta!','Atenção',mb_ok+mb_iconerror);
    dbedit2.setfocus;
    exit;
  end;


  if frmmodulo.qrplano.State = dsinsert then
  begin
   IF COMBOGRUPO.ItemIndex = 0 THEN
    BEGIN
      FRMMODULO.QRPLANO.FIELDBYNAME('TIPO').ASINTEGER := 2;
    END
    ELSE
    BEGIN
      FRMMODULO.QRPLANO.FIELDBYNAME('TIPO').ASINTEGER := 1;
    END;
    IF Length(FRMMODULO.QRPLANO.FIELDBYNAME('CLASSIFICACAO').ASSTRING) > 4 THEN
      FRMMODULO.QRPLANO.FIELDBYNAME('NIVEL').ASINTEGER := 3 ELSE
      FRMMODULO.QRPLANO.FIELDBYNAME('NIVEL').ASINTEGER := 2 ;
  end;



  if (frmmodulo.qrplano.State = dsinsert) or (frmmodulo.qrplano.State = dsedit) then
  begin

      frmmodulo.qrplano.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmplano.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrplano.State = dsinsert) or (frmmodulo.qrplano.State = dsedit) then
    begin
        if (frmmodulo.qrplano.State = dsinsert) then
        begin
          //frmprincipal.transMestre.active := true;
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000035''');
          frmprincipal.qrmestre.execsql;
          //frmprincipal.transMestre.commit;
        end;

      frmmodulo.qrplano.cancel;
    end;

  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmplano.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmplano.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrplano.first;
end;

procedure Tfrmplano.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrplano.last;
end;

procedure Tfrmplano.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrplano.prior;
end;

procedure Tfrmplano.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrplano.next;
end;

procedure Tfrmplano.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmplano.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrplano.state = dsinsert then
end;

procedure Tfrmplano.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmplano.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmplano.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmplano.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmplano.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmplano.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmplano.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmplano.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmplano.COMBOGRUPOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure Tfrmplano.COMBOGRUPOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmplano.blocClick(Sender: TObject);
var conta : string;
begin
  if (frmmodulo.qrplano.State = dsinsert) or (frmmodulo.qrplano.State = dsedit) then
  begin
    if COMBOGRUPO.ItemIndex = 0 then  parametro_pesquisa := ' and tipo = 2 and nivel < 3 ' else parametro_pesquisa := ' and tipo = 1 and nivel < 3 ';
    frmxloc_conta := tfrmxloc_conta.create(self);
    frmxloc_conta.showmodal;
    if resultado_pesquisa1 <> '' then
    begin

      if resultado_pesquisa2 = '2' then
      begin
       frmmodulo.qrplano.fieldbyname('codgrupo').asstring :=   resultado_pesquisa1;
       query1.close;
       query1.sql.clear;
       query1.SQL.add('select * from c000035 where classificacao like '''+resultado_pesquisa3+'%'' and nivel = 3 order by classificacao');
       query1.Open;
       if query1.RecordCount > 0 then
       begin
          query1.Last;
          conta := copy(query1.fieldbyname('classificacao').asstring,6,3);
          conta := resultado_pesquisa3+'.'+frmprincipal.texto_justifica(inttostr(strtoint(conta)+1),3,'0','E');
       end
       else
       begin
         conta := resultado_pesquisa3+'.001';
       end;
        frmmodulo.qrplano.fieldbyname('classificacao').asstring := conta;

        dbedit2.setfocus;
      end
      else
      begin
        application.messagebox('Conta inválida para subgrupo!','Atenção',mb_ok+MB_ICONWARNING);
      end;



    end
    else
    begin


       query1.close;
       query1.sql.clear;
       if COMBOGRUPO.ItemIndex = 0 then query1.SQL.add('select * from c000035 where classificacao like ''2%'' and nivel = 2 order by classificacao');
       if COMBOGRUPO.ItemIndex = 1 then query1.SQL.add('select * from c000035 where classificacao like ''1%'' and nivel = 2 order by classificacao');
       query1.Open;
       if query1.RecordCount > 0 then
       begin
          query1.Last;
          conta := copy(query1.fieldbyname('classificacao').asstring,3,2);
          if COMBOGRUPO.ItemIndex = 0 then conta := '2.'+frmprincipal.texto_justifica(inttostr(strtoint(conta)+1),2,'0','E');
          if COMBOGRUPO.ItemIndex = 1 then conta := '1.'+frmprincipal.texto_justifica(inttostr(strtoint(conta)+1),2,'0','E');
       end
       else
       begin
         if COMBOGRUPO.ItemIndex = 0 then conta := '2.01';
         if COMBOGRUPO.ItemIndex = 1 then conta := '1.01';

       end;
        frmmodulo.qrplano.fieldbyname('classificacao').asstring := conta;
        DBEDIT2.SETFOCUS;
    end;
  end;
  parametro_pesquisa := '';
end;

procedure Tfrmplano.DBEdit28Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmplano.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmplano.Visualizaoemrvore1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmplano.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmplano.PageView1Change(Sender: TObject);
var item : integer;
texto : string;
topo : TTreeNode;
begin

  if pageview1.ActivePageIndex = 0 then
  begin
    bincluir.enabled := true;
    balterar.enabled := true;
    bexcluir.enabled := true;
    blocalizar.enabled := true;
    DBAdvGlowButton1.Enabled := true;
    DBAdvGlowButton2.Enabled := true;
    DBAdvGlowButton3.Enabled := true;
    DBAdvGlowButton4.Enabled := true;
  end;



  if PageView1.activepageIndex = 1 then
  begin
    bincluir.enabled := false;
    balterar.enabled := false;
    bexcluir.enabled := false;
    blocalizar.enabled := false;
    DBAdvGlowButton1.Enabled := false;
    DBAdvGlowButton2.Enabled := false;
    DBAdvGlowButton3.Enabled := false;
    DBAdvGlowButton4.Enabled := false;


    query1.close;
    query1.sql.clear;
    query1.SQL.Add('select * from c000035 order by classificacao');
    query1.Open;

    arvore.Items.Clear;

    query1.first;
    while not query1.eof do
    begin
      texto := query1.fieldbyname('classificacao').asstring;
      if length(Texto) = 1  then
      begin
         with arvore.Items.AddChild(nil,query1.fieldbyname('classificacao').asstring + ' ' + query1.fieldbyname('conta').asstring) do
    		 begin
             SelectedIndex := query1.fieldbyname('tipo').asinteger;
             ImageIndex := query1.fieldbyname('tipo').asinteger;
             Selected := true;
             topo := arvore.Selected;
         end;
      end;
      if length(Texto) = 4  then
      begin
         with arvore.Items.AddChild(  topo ,query1.fieldbyname('classificacao').asstring + ' ' + query1.fieldbyname('conta').asstring) do
         begin
             if query1.fieldbyname('tipo').asinteger = 1 then
             begin
               SelectedIndex := 6;
               ImageIndex := 6;
             end
             else
             begin
               SelectedIndex := 5;
               ImageIndex := 5;
             end;
             Selected := true;
         end;
      end;
      if length(Texto) = 8  then
      begin
         with arvore.Items.addchild(arvore.selected ,query1.fieldbyname('classificacao').asstring + ' ' + query1.fieldbyname('conta').asstring) do
         begin
             if query1.fieldbyname('tipo').asinteger = 1 then
             begin
               SelectedIndex := 3;
               ImageIndex := 3;
             end
             else
             begin
               SelectedIndex := 4;
               ImageIndex := 4;
             end;
         end;
      end;
      query1.Next;
    end;

  end;






end;

procedure Tfrmplano.BitBtn5Click(Sender: TObject);
begin
  frmlista_planocontas2 := tfrmlista_planocontas2.create(self);
  frmlista_planocontas2.showmodal;
end;

end.





unit uPesqVd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus;

type
  TfrmPesqVd = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    lbltitdatai: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    pnlficha: TPanel;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;            
    spdConsultar174: TSpeedButton;
    spdcodbar175: TSpeedButton;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    pnllocaliza: TPanel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label9: TLabel;
    spdilustracao177: TSpeedButton;
    SayPrint: TSayPrint;
    Panel1: TPanel;
    Label5: TLabel;
    cbxnfun: TDBLookupComboBox;
    Label6: TLabel;
    cbxnrep: TDBLookupComboBox;
    cbxncli: TDBLookupComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    rgbtipoop: TDBRadioGroup;
    pctficha: TPageControl;
    tbsDadosG: TTabSheet;
    Bevel5: TBevel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label46: TLabel;
    edivolumes: TDBEdit;
    edisaida: TDBEdit;
    ediresuni: TDBEdit;
    ediprazo_validade: TDBEdit;
    edida1: TDBEdit;
    edida2: TDBEdit;
    edida3: TDBEdit;
    edida4: TDBEdit;
    edida5: TDBEdit;
    edida6: TDBEdit;
    edida7: TDBEdit;
    edida8: TDBEdit;
    TbsProdutos: TTabSheet;
    Bevel4: TBevel;
    spdconsultaproduto: TSpeedButton;
    lbltotal: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblnuni: TLabel;
    Label29: TLabel;
    spdalterarparc: TSpeedButton;
    spdsalvarprod: TSpeedButton;
    spdexcluirparc: TSpeedButton;
    dbgdvenda: TDBGrid;
    edicpro: TEdit;
    ediqtde: TEdit;
    edinpro: TEdit;
    ediprve: TEdit;
    edisubtotal: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    cbxunid: TComboBox;
    dbgvenda: TDBGrid;
    Bevel3: TBevel;
    ckbimpnf: TCheckBox;
    Lista_img: TImageList;
    Label7: TLabel;
    cbxnfant: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    cbxnomecli: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    spdprinter: TSpeedButton;
    pnlop: TPanel;
    spdimp: TSpeedButton;
    spdimpnf: TSpeedButton;
    spdlanca: TSpeedButton;
    spdemail: TSpeedButton;
    spdconflan: TSpeedButton;
    spdcanclan: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    Label21: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    ediccli: TDBEdit;
    edicrep: TDBEdit;
    edicfun: TDBEdit;
    lbltotalc: TLabel;
    cbxnometab: TDBLookupComboBox;
    Label17: TLabel;
    spdrelatorios176: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaEnter(Sender: TObject);
    procedure dbgdvendaEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure edipdescExit(Sender: TObject);
    procedure spdIncluir171Click(Sender: TObject);
    procedure filtraproduto;
    procedure TbsProdutosShow(Sender: TObject);
    procedure limparprod;
    procedure edicproKeyPress(Sender: TObject; var Key: Char);
    procedure buscarproduto;
    procedure vestoqNv;
    procedure vestoqv;
    procedure ediqtdeExit(Sender: TObject);
    procedure edicproExit(Sender: TObject);
    procedure ediprveExit(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    function  AlinEdNumD(texto:TEdit; idec:integer):string;

    procedure ediprveEnter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure spdsalvarprodClick(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edisubtotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdalterarparcClick(Sender: TObject);
    procedure cbxnfunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnrepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure verifestq;
    procedure edivaldescExit(Sender: TObject);
    procedure spdconsultaprodutoClick(Sender: TObject);
    
    procedure cbxunidKeyPress(Sender: TObject; var Key: Char);
    procedure cbxunidExit(Sender: TObject);
    procedure cbxntranspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ediliquidoExit(Sender: TObject);
    procedure edisaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure edinproKeyPress(Sender: TObject; var Key: Char);
    procedure edivolumesKeyPress(Sender: TObject; var Key: Char);
    procedure ediresuniKeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo_validadeKeyPress(Sender: TObject; var Key: Char);
    procedure edida1KeyPress(Sender: TObject; var Key: Char);
    procedure edida2KeyPress(Sender: TObject; var Key: Char);
    procedure edida3KeyPress(Sender: TObject; var Key: Char);
    procedure edida4KeyPress(Sender: TObject; var Key: Char);
    procedure edida5KeyPress(Sender: TObject; var Key: Char);
    procedure edida6KeyPress(Sender: TObject; var Key: Char);
    procedure edida7KeyPress(Sender: TObject; var Key: Char);
    procedure edida8KeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup1KeyPress(Sender: TObject; var Key: Char);
    procedure ckbimpnfClick(Sender: TObject);
    procedure dbgdvendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgdvendaDblClick(Sender: TObject);
    procedure spdimpClick(Sender: TObject);
    procedure spdimpnfClick(Sender: TObject);
    procedure cbxnfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxncliKeyPress(Sender: TObject; var Key: Char);
    procedure edicfunKeyPress(Sender: TObject; var Key: Char);
    procedure edicrepKeyPress(Sender: TObject; var Key: Char);
    procedure ediccliKeyPress(Sender: TObject; var Key: Char);
    procedure limpar;
    procedure mostrar;
    procedure ediccliExit(Sender: TObject);
    procedure edicrepExit(Sender: TObject);
    procedure edicfunExit(Sender: TObject);
    procedure cbxcfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxccliKeyPress(Sender: TObject; var Key: Char);
    procedure spdexcluirparcClick(Sender: TObject);
    procedure cbxnfantKeyPress(Sender: TObject; var Key: Char);
    procedure spdlancaClick(Sender: TObject);
    procedure spdemailClick(Sender: TObject);
    procedure spdprinterClick(Sender: TObject);
    procedure bloqueiabotoesP;
    procedure bloqueiabotoesF;
    procedure desbloqueiabotoesP;
    procedure desbloqueiabotoesF;
    procedure AtivaDbotoes;
    procedure spdconflanClick(Sender: TObject);
    procedure spdcanclanClick(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure bloqueiadet;
    procedure desbloqueiadet;
    procedure habdedidesc;
    procedure cbxclassificarClick(Sender: TObject);
    procedure habproduto;
    procedure dbgvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomecliEnter(Sender: TObject);
    procedure cbxnomefunEnter(Sender: TObject);
    procedure cbxnomerepEnter(Sender: TObject);
    procedure edicproChange(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure buscarprve;
    procedure spdrelatorios176Click(Sender: TObject);
    procedure exportarped;
    procedure SpeedButton4Click(Sender: TObject);



  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo, sOPcao:string;
    icpro, icuni, iccf, icsita, icsitb, icicms, icipi, icMar, iccfop, icpis, iccofins, icmodbc,
    icirii, icvii, icoimp, icmodbcst, icgru:integer;
    fQtdeEstq:real;
    bMostrar:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf, bindtot:boolean;
    sncm:string;

  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqVd: TfrmPesqVd;

implementation

uses uGeral, uPrincipal, uDados, uImpOrcp, upesqprod, uimpnf, uFecPed, uemailped,
  uMRVD, uimpped;

{$R *.DFM}

procedure TfrmPesqVd.FormShow(Sender: TObject);
var
   vardir: String;
begin
   tabela := 'sVenda';
   sOpcaoP := 'I';
   sOpcao := 'I';

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Data');
   cbxclassificar.Items.Add('N.o Pedido');
   cbxclassificar.ItemIndex := 0;

   edidesc.Enabled := false;
   
   pctficha.ActivePageIndex := 0;

   vardir := ExtractFilePath(Application.ExeName);

   pnlsalvarficha.Top := pnllista.Top;
   pnlsalvarficha.Left := pnllista.Left;
   dbgvenda.Align := alclient;
   pnlficha.Align := alclient;

   pnlsalvarficha.Visible := false;


   with frmdados do
     begin

       Cds_AliqImpFis.Active := false;
       with  Dbx_AliqImpFis do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from AliqImpFis');
           Active := true;
         end;
       //endth
       Cds_AliqImpFis.Active := true;

       Cds_tipotab.Active := false;
       Dbx_tipotab.Active := false;
       Dbx_tipotab.SQL.Clear;
       Dbx_tipotab.SQL.Add('Select * from TipoTab');
       Dbx_tipotab.Active := true;
       Cds_tipotab.Active := true;

       Cds_Unidade.Active := false;
       Dbx_Unidade.Active := false;
       Dbx_Unidade.SQL.Clear;
       Dbx_Unidade.SQL.Add('Select * from Unidade');
       Dbx_Unidade.Active := true;
       Cds_Unidade.Active := true;

       cds_vProdutos.Active := false;
       dbx_vProdutos.Active := false;
       dbx_vProdutos.SQL.Clear;
       dbx_vProdutos.SQL.Add('select * from vProdutos order by descricao');
       dbx_vProdutos.Active := true;
       cds_vProdutos.Active := true;

       cds_Clientes.Active := false;
       dbx_Clientes.Active := false;
       dbx_Clientes.SQL.Clear;
       dbx_Clientes.SQL.Add('select * from Clientes order by nome');
       dbx_Clientes.Active := true;
       cds_Clientes.Active := true;

       cds_Representantes.Active := false;
       dbx_Representantes.Active := false;
       dbx_Representantes.SQL.Clear;
       dbx_Representantes.SQL.Add('select * from Representantes order by nome');
       dbx_Representantes.Active := true;
       cds_Representantes.Active := true;

       cds_Funcionarios.Active := false;
       dbx_Funcionarios.Active := false;
       dbx_Funcionarios.SQL.Clear;
       dbx_Funcionarios.SQL.Add('select * from Funcionarios order by nome');
       dbx_Funcionarios.Active := true;
       cds_Funcionarios.Active := true;

       while not cds_unidade.Eof do
         begin
           cbxunid.Items.Add(cds_Unidade.fieldbyname('descricao').asString);
           cds_unidade.Next;
         end;
       //endw

     end;
   //endth

   spdlimpar.Click;
   //bloqueiabotoesP;
   //bloqueiabotoesF;

end;

procedure TfrmPesqVd.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVd.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVd.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqVd.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqVd:=nil;
  form_ativo := '';

end;

procedure TfrmPesqVd.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqVd.dbgvendaKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmPesqVd.dbgvendaEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqVd.dbgdvendaEnter(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqVd.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVd.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVd.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqVd.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sDesc : String;
  ftotcusto, ftotpreco:real;
  iccli, icfun, icrep:integer;
begin

  with frmdados do
    begin
      Cds_sVenda.Active := false;
      Cds_sVendatpo.DefaultExpression := '0';
      Cds_sVendadatacad.DefaultExpression := quotedstr( datetostr( date ) );
      Cds_sVendahrcad.DefaultExpression := quotedstr(copy(timetostr(time),1,5));
      Cds_dVenda.Active := false;
      Cds_Vencto.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Data' then
     sClassificar := 'DataCad';
  //endi
  if cbxclassificar.Text = 'N.o Pedido' then
     sClassificar := 'nped';
  //endi


  // inicializando variáveis comuns
  sCompo := '(coalesce (nco,0) = 0) and (coalesce (tpo,0) = 0)';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sDesc := '';
  iccli := 0;
  icfun := 0;
  icrep := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := bar_is_point( sDataI  );


  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := bar_is_point( sDataF  );


  if cbxnomecli.Text <> '' then
     begin
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomefun.Text <> '' then
     begin
       icfun := frmdados.Cds_Funcionarios.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomeRep.Text <> '' then
     begin
       icRep := frmdados.Cds_Representantes.FieldByName('codigo').asInteger;
     end;
  //endi

  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if ( icCli <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + 'Cliente: ' + cbxnomecli.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + cbxnomecli.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icfun <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + 'Vend.: ' + cbxnomeFun.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + ' / Vend.: ' + cbxnomeFun.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icRep <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + 'Rep.: ' + cbxnomeRep.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + ' / Rep.: ' + cbxnomeRep.Text;
          end;
       //endif
     end;
  //endif
  
  // executando o filtro

  try
    with frmdados.Dbx_sVenda do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from sVenda where '+sCompo)
              else
                 sql.Add('select * from sVenda where '+sCompo+' order by '+sClassificar);
              //endi
            end
         else
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from sVenda')
              else
                 sql.Add('select * from sVenda order by '+sClassificar);
              //endi
            end;
         //endi
         active := true;
        
         if edidesc.Enabled then
            if recordcount = 0 then
               begin
                 if sDesc <> '' then
                    begin
                      active := false;
                      sql.Clear;
                      sql.Add('select * from sVenda where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                      active := true;
                    end;
                 //endi
               end;
            //endi
         //endi

       end;
    //endi

    frmdados.cds_sVendatipoop.DefaultExpression := frmdados.Cds_Indice.fieldbyname('qdonovopedint').asString;
    frmdados.cds_sVenda.Active := true;
    if frmdados.Cds_sVenda.RecordCount > 0 then
       begin
         AtivaDbotoes;
       end
    else
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         spdincluir171.Enabled := true;
       end;
    //endi
  
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

end;

procedure TfrmPesqVd.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;
  limparprod;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqVd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi
if (ssCtrl in Shift) and (chr(Key) in ['I', 'i']) then
begin
  if spdincluir171.Enabled then
     spdincluir171.Click;
  //endi
end;
if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
begin
  if spdAlterar172.Enabled then
     spdAlterar172.Click;
  //endi
end;

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['P', 'p']) then
        begin
          if spdimpnf.Enabled then
             spdimpnf.Click;
          //endi
        end;
     //endi
   end;
//endi

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['L', 'l']) then
        begin
          if spdlanca.Enabled then
             spdlanca.Click;
          //endi
        end;
     //endi
   end;
//endi

end;

procedure TfrmPesqVd.DBEdit1Exit(Sender: TObject);
begin
     with frmdados do
       begin
         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
       end;
     //endth

end;

procedure TfrmPesqVd.DBEdit1Enter(Sender: TObject);
begin
frmdados.cds_ClientesCPF.EditMask := '';
end;

procedure TfrmPesqVd.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
end;

procedure TfrmPesqVd.spdIncluir171Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
limpar;
frmdados.Cds_sVenda.Append;
if edicfun.Enabled then
   edicfun.SetFocus;
//endi
end;

procedure tfrmpesqvd.filtraproduto;
begin
  with frmdados do
    begin

      if Cds_svenda.State in [dsinsert, dsedit] then
         Cds_svenda.Post;
      //endi

      cds_dVenda.Active := false;
      cds_dVendacodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_dVendaImpNf.DefaultExpression := 'T';
      dbx_dVenda.Active := false;
      dbx_dVenda.SQL.Clear;
      dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) );
      dbx_dVenda.Active := true;
      cds_dVenda.Active := true;

      cds_dMobra.Active := false;
      cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      dbx_dMobra.Active := false;
      dbx_dMobra.SQL.Clear;
      dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )  and ( cmod = ' +inttostr(    cds_temp.fieldbyname('cod4').asInteger      )+')');
      dbx_dMobra.Active := true;
      cds_dMobra.Active := true;

      cds_vencto.Active := false;
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where ( c_svenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

      //ediccli.Text := cds_svenda.fieldbyname('ccli').asString;

      totalizafrmpesqvdprod;

      //if Cds_sVenda.RecordCount <> 0 then
      //   Cds_dVenda.Active := true;
      //endi
      //if Cds_sVenda.RecordCount <> 0 then
      //   Cds_Vencto.Active := true;
      //endi
    end;
  //end;


end;

procedure TfrmPesqVd.TbsProdutosShow(Sender: TObject);
begin
  habproduto;

end;



procedure tfrmpesqvd.limparprod;
begin
  edicpro.Text := '';
  ediqtde.Text := '0,000';
  fquaa        := 0;

  ediqtde.Text := AlinEdNumD(ediqtde,3);

  ediprve.Text := '0,00';
  ediprve.Text := AlinEdNumD(ediprve,2);

  edisubtotal.Text := '0,00';
  edisubtotal.Text := AlinEdNumD(edisubtotal,2);

  edinpro.Text := '';
  cbxunid.Text := '';
  //ediespecificacao.Text := '';
  lblnuni.Caption := '';


  ckbimpnf.Checked := true;
  bimpnf := true;

  icpro := 0;


end;

procedure TfrmPesqVd.edicproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;


procedure tfrmpesqvd.buscarproduto;
begin
if edicpro.Text = '' then
   begin
     icpro := 0;
     exit;
   end;
//endi
with frmdados do
  begin
    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where cBar = '+Quotedstr(edicpro.text));
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount = 0 then
       begin
         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where cAux = '+Quotedstr(edicpro.text));
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount = 0 then
            begin
              dbx_vProdutos.Active := false;
              dbx_vProdutos.SQL.Clear;
              dbx_vProdutos.SQL.Add('Select * from vProdutos Where Descricao = '+Quotedstr(edicpro.Text));
              dbx_vProdutos.Active := true;
              if dbx_vProdutos.RecordCount = 0 then
                 begin
                   try
                     dbx_vProdutos.Active := false;
                     dbx_vProdutos.SQL.Clear;
                     dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
                     dbx_vProdutos.Active := true;
                     if dbx_vProdutos.RecordCount = 0 then
                        begin
                          limparprod;
                          showmessage('Código Não Existe!!!');
                          icpro := 0;
                          icuni := 0;
                          bimpnf := true;

                          iccf   := 0;
                          icsita := 0;
                          icgru := 0;
                          icMar  := 0;
                          icsitb := 0;
                          icicms := 0;
                          icipi  := 0;
                          iccfop := 0;
                          icpis := 0;
                          iccofins := 0;
                          icmodbc := 0;
                          icirii := 0;
                          icvii := 0;
                          icoimp := 0;
                          icmodbcst := 0;
                          sncm := '';
                          bindtot := false;


                          fQtdeEstq := 0;
                          sActDesc := 'T';
                          bMostrar := false;
                          sTipoCod := '';
                          if edicpro.Enabled then
                             edicpro.SetFocus
                          else
                             ediqtde.SetFocus;
                          //endi
                        end
                     else
                        begin
                          edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                          //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                          icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                          icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                          bimpnf := true;

                          iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                          icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                          icgru := dbx_vProdutos.fieldbyname('cgru').asInteger;

                          icMar := dbx_vProdutos.fieldbyname('cmar').asInteger;

                          icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                          icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                          icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                          iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                          icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                          iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                          icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                          icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                          icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                          icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                          icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;
                          sncm := dbx_vProdutos.fieldbyname('ncm').asString;
                          if dbx_vProdutos.fieldbyname('indtot').asString = 'T' then
                             bindtot := true
                          else
                             bindtot := false;
                          //endi



                          //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                          //ediprve.Text := AlinEdNumD(ediprve,2);

                          buscarprve;

                          fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                          fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                          sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                          bMostrar := true;
                          sTipoCod := 'Codigo';

                          dbx_Exec.Active := false;
                          dbx_Exec.SQL.Clear;
                          dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                          dbx_Exec.Active := true;
                          cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                        end
                     //endi
                   except
                     begin
                       icpro := 0;
                       icuni := 0;
                       bimpnf := true;

                       iccf   := 0;
                       icsita := 0;
                       icgru := 0;
                       icMar  := 0;
                       icsitb := 0;
                       icicms := 0;
                       icipi  := 0;
                       iccfop := 0;

                       icpis := 0;
                       iccofins := 0;
                       icmodbc := 0;
                       icirii := 0;
                       icvii := 0;
                       icoimp := 0;
                       icmodbcst := 0;

                       sncm := '';
                       bindtot := false;



                       fQtdeEstq := 0;
                       sActDesc := 'T';
                       bMostrar := false;
                       sTipoCod := '';
                     end;
                   end
                 end
              else
                 begin
                   edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                   //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                   icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                   icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                   bimpnf := true;

                   iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                   icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                   icgru := dbx_vProdutos.fieldbyname('cgru').asInteger;

                   icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;
                   
                   icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                   icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                   icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                   iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                   icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                   iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                   icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                   icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                   icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                   icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                   icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;

                   sncm := dbx_vProdutos.fieldbyname('ncm').asString;

                   if dbx_vProdutos.fieldbyname('indtot').asString = 'T' then
                      bindtot := true
                   else
                      bindtot := false;
                   //endi



                   //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                   //ediprve.Text := AlinEdNumD(ediprve,2);

                   buscarprve;

                   fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                   fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                   sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                   bMostrar := true;
                   sTipoCod := 'Desc';

                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                   dbx_Exec.Active := true;
                   cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                 end
              //endi
            end
         else
            begin
              edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
              //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
              icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
              icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
              bimpnf := true;

              iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
              icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
              icgru := dbx_vProdutos.fieldbyname('cgru').asInteger;

              icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;

              icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
              icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
              icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
              iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

              icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
              iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
              icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
              icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
              icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
              icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
              icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;

              sncm := dbx_vProdutos.fieldbyname('ncm').asString;

              if dbx_vProdutos.fieldbyname('indtot').asString = 'T' then
                 bindtot := true
              else
                 bindtot := false;
              //endi

              //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
              //ediprve.Text := AlinEdNumD(ediprve,2);

              buscarprve;

              fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
              fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
              sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
              bMostrar := true;
              sTipoCod := 'cAux';

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
              dbx_Exec.Active := true;
              cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

            end
         //endi
       end
    else
       begin
         edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
         //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
         icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
         icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
         bimpnf := true;

         iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
         icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
         icgru := dbx_vProdutos.fieldbyname('cgru').asInteger;


         icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;


         icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
         icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
         icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
         iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

         icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
         iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
         icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
         icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
         icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
         icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
         icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;

         sncm := dbx_vProdutos.fieldbyname('ncm').asString;

         if dbx_vProdutos.fieldbyname('indtot').asString = 'T' then
            bindtot := true
         else
            bindtot := false;
         //endi

         //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
         //ediprve.Text := AlinEdNumD(ediprve,2);

         buscarprve;

         fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
         sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
         bMostrar := true;
         sTipoCod := 'cBar';

         dbx_Exec.Active := false;
         dbx_Exec.SQL.Clear;
         dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
         dbx_Exec.Active := true;
         cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

       end;
    //endi
    dbx_vProdutos.Active := false;
    dbx_exec.Active := false;
  end;
//end
end;

procedure tfrmpesqvd.vestoqNv;
var
  fprojecao, fqtde:real;
  icod:integer;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger )  +')');
        dbx_exec.Active := true;
        if sOpcaop = 'I' then
           begin
             //fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat
             fprojecao := fQtde;

           end
        else
           begin
             if sOpcaop = 'A' then
                fprojecao := fQtde;
             //endi
           end;
        //endi
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         icod := icpro;
         limparprod;

         sActDesc := 'T';
         bMostrar := false;
         sTipoCod := '';
         showmessage('Estoque Insuficiente, Contate o Gerente!!! Quantidade Atual No Estoque: '+Formatfloat('###,###,##0.000',fQtdeEstq));
         fQtdeEstq := 0;
         icpro := 0;
         icuni := 0;
         bimpnf := true;

         iccf   := 0;
         icsita := 0;
         icgru := 0;

         iCMar  := 0;

         icsitb := 0;
         icicms := 0;
         icipi  := 0;
         iccfop := 0;


         icpis := 0;
         iccofins := 0;
         icmodbc := 0;
         icirii := 0;
         icvii := 0;
         icoimp := 0;
         icmodbcst := 0;

         sncm := '';
         bindtot := false;



         if sOpcaop = 'I' then
            edicpro.Text := inttostr(icod);
         //endi

         edicpro.Enabled := true;
         spdconsultaproduto.Enabled := true;

         dbgdvenda.Enabled := true;
         sOpcaop := 'I';

         if edicpro.Enabled then
             edicpro.SetFocus;
         //endi

       end;
    //endi
end;

procedure tfrmpesqvd.vestoqV;
var
  fprojecao, fqtde:real;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
        dbx_exec.Active := true;
        //fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        fprojecao := fQtde;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         //gera relatorio venda com estoque insuficiente
         //com programação da entrega
       end;
    //endi
end;

procedure TfrmPesqVd.ediqtdeExit(Sender: TObject);
begin
try
verifestq;

edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediqtde.Text := AlinEdNumD(ediqtde,3);

except
  ediqtde.Text := '0,00';
  if ediqtde.Enabled then
     ediqtde.SetFocus;
  //endi
end;

end;

procedure TfrmPesqVd.edicproExit(Sender: TObject);
begin
  try

    buscarproduto;

    edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
    edisubtotal.Text := AlinEdNumD(edisubtotal,2);

    fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
    ediqtde.Text := AlinEdNumD(ediqtde,3);

  except
    if edicpro.Enabled then
       edicpro.SetFocus;
    //end   
  end;
end;

procedure TfrmPesqVd.ediprveExit(Sender: TObject);
begin
try
edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediprve.Text := AlinEdNumD(ediprve,2);

except
  ediprve.Text := '0,00';
  if ediprve.Enabled then
     ediprve.SetFocus;
  //endi   
end;

end;

procedure TfrmPesqVd.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi




end;

procedure TfrmPesqVd.ediprveKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif



  if (key <> ',') then
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi



end;

procedure TfrmPesqVd.edisubtotalKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       //SelectNext(ActiveControl,True,True);
       spdsalvarprod.Click; 
       exit;
     end;
  //endif

  key := #0;

end;


function TfrmPesqVd.AlinEdNumD(texto:TEdit; idec:integer):string;
var
  n: Integer;
  c: TCanvas;
  h: HWND;
  txt:string;
  // pode se usar Form1.Canvas se for a mesma fonte do Edit
begin
  if idec = 3 then
     texto.Text := formatfloat('###,###,##0.000',strtofloat(tirapontos(texto.Text)))
  else
     texto.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(texto.Text)));
  //endi

  c := TCanvas.Create;
  c.Handle := GetDeviceContext(h);
  c.Font := texto.Font;
  n := round((texto.Width - c.TextWidth(texto.Text) - 8) / c.TextWidth( ' '));
  texto.Text := stringofchar( ' ',n) + texto.Text;
  result := texto.Text;
end;


procedure TfrmPesqVd.ediprveEnter(Sender: TObject);
begin
//ediprve.Text := trim(ediprve.text);
end;

procedure TfrmPesqVd.DBLookupComboBox4Enter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVd.DBLookupComboBox4Exit(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqVd.spdsalvarprodClick(Sender: TObject);
var
  sprve, sQtde, sSubtotal, sSubtotalc, sEouS, sPrcu, sData:string;
  iccliente:integer;
begin

verifestq;


if edicpro.Text = '' then
   if edinpro.Text = '' then
      exit;
   //endi
//endi

tabela := 'dVenda';

sData := datetostr(date);
sPrve := tirapontos(trim(ediprve.Text));
sQtde := tirapontos(trim(ediqtde.Text));
sSubtotal := tirapontos(trim(edisubtotal.Text));
sPrcu := floattostr(fPrcu);
sSubtotalc := floattostr(fsubtotalc);
sEouS := 'S';
iccliente := strtoint(ediccli.Text);


with frmdados do
  begin

    sql_dados.StartTransaction(TD);

    if sOpcaop = 'I' then
       begin

         Dbx_Exec.Active := false;
         Dbx_Exec.SQL.Clear;
         Dbx_Exec.SQL.Add('Select * from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and (prve = '+decimal_is_point(sPrve)+')' );
         Dbx_Exec.Active := true;
         if dbx_Exec.RecordCount = 0 then
            begin

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Insert into dVenda(');

              //1
              if iccliente  > 0 then
                 dbx_Exec.SQL.Add('ccli, ');
              //endi

              //2
              if icpro > 0 then
                 dbx_Exec.SQL.Add('cpro, ');
              //endi

              //3
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add('npro, ');
              //endi

              //4
              if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or (rgbtipoop.ItemIndex > 0) then
                 dbx_Exec.SQL.Add('ehvenda, ');
              //endi

              //5
              if sQtde <> '' then
                 dbx_Exec.SQL.Add('qtde, ');
              //endi

              //6
              if sPrve <> '' then
                 dbx_Exec.SQL.Add('prve, ');
              //endi

              //7
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add('subtotal, ');
              //endi

              //8
              if sEouS <> '' then
                 dbx_Exec.SQL.Add('EouS, ');
              //endi

              //9
              if icuni > 0 then
                 dbx_Exec.SQL.Add('cuni, ');
              //endi

              //10
              if iccf > 0 then
                 dbx_Exec.SQL.Add('codcf, ');
              //endi

              //11
              if icsita > 0 then
                 dbx_Exec.SQL.Add('codsita, ');
              //endi

              //12
              if icMar > 0 then
                 dbx_Exec.SQL.Add('cMar, ');
              //endi

              //13
              if icsitb > 0 then
                 dbx_Exec.SQL.Add('codsitb, ');
              //endi

              //14
              if icicms > 0 then
                 dbx_Exec.SQL.Add('codicms, ');
              //endi

              //15
              if icipi > 0 then
                 dbx_Exec.SQL.Add('codipi, ');
              //endi

              //16
              if iccfop > 0 then
                 dbx_Exec.SQL.Add('codcfop, ');
              //endi

              // 14.04.2010

              //17
              if icpis > 0 then
                 dbx_Exec.SQL.Add('codpis, ');
              //endi

              //18
              if iccofins > 0 then
                 dbx_Exec.SQL.Add('codcofins, ');
              //endi

              //19
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add('codmodbc, ');
              //endi

              //20
              if icirii > 0 then
                 dbx_Exec.SQL.Add('codirii, ');
              //endi

              //21
              if icvii > 0 then
                 dbx_Exec.SQL.Add('codvii, ');
              //endi

              //22
              if icoimp > 0 then
                 dbx_Exec.SQL.Add('codoimp, ');
              //endi

              //23
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add('codmodbcst, ');
              //endi

              //24
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add('ActDesc, ');
              //endi

              //25
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add('prcu, ');
              //endi

              //26
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add('SubtotalC, ');
              //endi

              //27
              dbx_Exec.SQL.Add('Data_OP, ');

              //28
              dbx_Exec.SQL.Add('impnf, ');

              //29
              if sncm <> '' then
                 dbx_Exec.SQL.Add('ncm, ');
              //endi

              //30
              if icgru > 0 then
                 dbx_Exec.SQL.Add('cgru, ');
              //endi

              //31
              dbx_Exec.SQL.Add('indtot, ');

              //32
              dbx_Exec.SQL.Add('codsvenda');

              dbx_Exec.SQL.Add(')');

              dbx_Exec.SQL.Add(' values (');

              //1
              if iccliente > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccliente)+',');
              //endi

              //2
              if icpro > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpro)+',');
              //endi

              //3
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add(quotedstr(edinpro.Text)+',');
              //endi

              //4
              if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or (rgbtipoop.ItemIndex > 0) then
                  dbx_Exec.SQL.Add(Quotedstr('T')+',');
              //endi

              //5
              if sQtde <> '' then
                 dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
              //endi

              //6
              if sPrve <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
              //endi

              //7
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
              //endi

              //8
              if sEouS <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
              //endi

              //9
              if icuni > 0 then
                 dbx_Exec.SQL.Add(inttostr(icuni)+',');
              //endi

              //10
              if iccf > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccf)+',');
              //endi

              //11
              if icsita > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsita)+',');
              //endi

              //12
              if icMar > 0 then
                 dbx_Exec.SQL.Add(inttostr(icMar)+',');
              //endi

              //13
              if icsitb > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsitb)+',');
              //endi

              //14
              if icicms > 0 then
                 dbx_Exec.SQL.Add(inttostr(icicms)+',');
              //endi

              //15
              if icipi > 0 then
                 dbx_Exec.SQL.Add(inttostr(icipi)+',');
              //endi

              //16
              if iccfop > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccfop)+',');
              //endi

              // 14.04.2010

              // 17
              if icpis > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpis)+',');
              //endi

              //18
              if iccofins > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccofins)+',');
              //endi

              //19
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbc)+',');
              //endi

              //20
              if icirii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icirii)+',');
              //endi

              //21
              if icvii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icvii)+',');
              //endi

              //22
              if icoimp > 0 then
                 dbx_Exec.SQL.Add(inttostr(icoimp)+',');
              //endi

              //23
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbcst)+',');
              //endi

              //24
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
              //endi

              //25
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
              //endi

              //26
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
              //endi

              //27
              dbx_exec.SQL.Add(quotedstr(bar_is_point(sdata))+',');

              //28
              if bimpnf then
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('T')+',');
                 end
              else
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('F')+',');
                 end;
              //endi

              //29
              if sncm <> '' then
                 dbx_Exec.SQL.Add(sncm+',');
              //endi

              //30
              if icgru > 0 then
                 dbx_Exec.SQL.Add(inttostr(icgru)+',');
              //endi

              //31
              if bindtot then
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('T')+',');
                 end
              else
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('F')+',');
                 end;
              //endi

              //32
              dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

              dbx_Exec.SQL.Add(')');

              dbx_Exec.ExecSQL;

            end
         else
            begin
              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  qtde = qtde + '+decimal_is_pointf(sQtde)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Subtotal = Subtotal + '+decimal_is_point(sSubtotal)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  SubtotalC = SubtotalC + '+decimal_is_point(sSubtotalC)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cuni = '+inttostr(icuni)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bimpnf then
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('T')+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  )
              else
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('F')+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              //endi
              Dbx_Exec.ExecSQL;

            end;
         //endi

       end
    else
       begin
         if sOpcaop = 'A' then
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  npro = '+quotedstr(edinpro.Text)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              //Dbx_Exec.Active := false;
              //Dbx_Exec.SQL.Clear;
              //Dbx_Exec.SQL.Add('Update dvenda set  Especificacao = '+quotedstr(ediEspecificacao.Text)+' where (codigo = '+sCodigo+')');
              //Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  qtde = '+decimal_is_pointf(sQtde)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Prve = '+decimal_is_point(sPrve)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Subtotal = '+decimal_is_point(sSubtotal)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  EouS = '+quotedstr(sEous)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cuni = '+inttostr(icuni)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcf = '+inttostr(iccf)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codsita = '+inttostr(icsita)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cgru = '+inttostr(icgru)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cMar = '+inttostr(icMar)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codsitb = '+inttostr(icsitb)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codicms = '+inttostr(icicms)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codipi = '+inttostr(icipi)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcfop = '+inttostr(iccfop)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              // 14.04.2010
              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codpis = '+inttostr(icpis)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcofins = '+inttostr(iccofins)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codmodbc = '+inttostr(icmodbc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codirii = '+inttostr(icirii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codvii = '+inttostr(icvii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codoimp = '+inttostr(icoimp)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codmodbcst = '+inttostr(icmodbcst)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;
              //

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  ActDesc = '+QuotedStr(sActDesc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Prcu = '+decimal_is_point(sPrcu)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  SubtotalC = '+decimal_is_point(sSubtotalC)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bimpnf then
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('T')+' where (codigo = '+sCodigo+')')
              else
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+quotedstr('F')+' where (codigo = '+sCodigo+')');
              //endii
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  ncm = '+quotedstr(sncm)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bindtot then
                 Dbx_Exec.SQL.Add('Update dvenda set  indtot = '+Quotedstr('T')+' where (codigo = '+sCodigo+')')
              else
                 Dbx_Exec.SQL.Add('Update dvenda set  indtot = '+quotedstr('F')+' where (codigo = '+sCodigo+')');
              //endii
              Dbx_Exec.ExecSQL;

            end;
         //endi
       end;
    //endi
    dbx_exec.Active := false;

    sql_dados.Commit(TD);

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    totalizafrmpesqvdprod;
    cds_dVenda.Refresh;

    if sOpcaop = 'I' then
       cds_dVenda.Last;
    //endi

  end;
//endth
limparprod;
edicpro.Enabled := true;
dbgdvenda.Enabled := true;
spdconsultaproduto.Enabled := true;

sOpcaop := 'I';
if edicpro.Enabled then
   edicpro.SetFocus
else
   ediqtde.SetFocus;
//endi

end;



procedure TfrmPesqVd.spdAlterar172Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
Mostrar;
edicfun.SetFocus;

end;

procedure TfrmPesqVd.spdExcluir173Click(Sender: TObject);
begin
//AlternaF;
tabela := 'sVenda';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin
     //with frmdados do
     //  begin
     //    dbx_exec.Active := false;
     //    dbx_exec.SQL.Clear;
     //    dbx_exec.SQL.Add('Delete from NF where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
     //    dbx_exec.ExecSQL;
     //  end;
     //endi


     logTables(tabela, icusu, 'E', 'PEDIDO '+frmdados.Cds_sVenda.fieldbyname('nped').AsString+' CLIENTE '+frmdados.Cds_sVenda.fieldbyname('ncli').AsString +' VALOR TOTAL '+  formatfloat('###,###,##0.00', frmdados.Cds_sVenda.fieldbyname('totg').Asfloat)) ;

     frmdados.Cds_sVenda.Delete;

     if frmdados.cds_svenda.RecordCount = 0 then
        begin

          bloqueiabotoesP;
          bloqueiabotoesF;
          spdincluir171.Enabled := true;

        end;
     //endi

   end;
//endi
//Mostrar;
end;

procedure TfrmPesqVd.spdConsultar174Click(Sender: TObject);
begin
AlternaF;
sOpcao := 'C';
tabela  := 'sVenda';
Mostrar;
end;

procedure TfrmPesqVd.sPdGravarClick(Sender: TObject);
begin
tabela := 'sVenda';

with frmdados do
  begin

    if Cds_sVenda.FieldByName('ccli').asInteger = 0 then
       exit;
    //endi

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    alternaL;
    sOpcao := '';
    //Cds_sVenda.Refresh;

    cds_dvenda.Active := false;
    dbx_dvenda.Active := false;
    dbx_dvenda.SQL.Clear;
    dbx_dvenda.SQL.Add('Select * from dvenda where codsvenda = ' + inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dvenda.Active := true;
    cds_dvenda.Active := true;

    cds_dmobra.Active := false;
    dbx_dmobra.Active := false;
    dbx_dmobra.SQL.Clear;
    dbx_dmobra.SQL.Add('Select * from dmobra where codsvenda = ' + inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dmobra.Active := true;
    cds_dmobra.Active := true;

  end;
//endth

AtivaDbotoes;

dbgvenda.SetFocus;

end;

procedure TfrmPesqVd.AlternaF;
begin
if frmdados.Cds_sVenda.recordcount > 0 then
   begin
     filtraproduto;
   end;
//endi
dbgvenda.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
pctficha.ActivePageIndex := 0;

end;

procedure TfrmPesqVd.AlternaL;
begin
dbgvenda.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;

end;


procedure TfrmPesqVd.spdcancelar2310Click(Sender: TObject);
begin

alternaL;

with frmdados do
  begin

    if Cds_sVenda.FieldByName('lancado').asString = 'T' then
       begin
         spdcanclan.Enabled := true;
         //spdrel.Enabled := true;
         spdimpnf.Enabled := true;
         spdimp.Enabled := true;
       end
    else
       begin
         if cds_sVenda.RecordCount > 0 then
            begin
              spdcanclan.Enabled := false;
              //spdrel.Enabled := true;
              spdimpnf.Enabled := true;
              spdconflan.Enabled := true;
              //spdrel.Enabled := true;
              spdimpnf.Enabled := true;
              spdimp.Enabled := true;
            end
         else
            begin
              bloqueiabotoesP;
              bloqueiabotoesF;
              spdincluir171.Enabled := true;
            end;
         //endi
       end;
    //endi

    Cds_svenda.Cancel;

    sOpcao := '';

    //Cds_sVenda.Refresh;

    //if cds_svenda.RecordCount > 0 then
    //   begin

    cds_dvenda.Active := false;
    dbx_dvenda.Active := false;
    dbx_dvenda.SQL.Clear;
    dbx_dvenda.SQL.Add('Select * from dvenda where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dvenda.Active := true;
    cds_dvenda.Active := true;

    cds_dmobra.Active := false;
    dbx_dmobra.Active := false;
    dbx_dmobra.SQL.Clear;
    dbx_dmobra.SQL.Add('Select * from dmobra where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dmobra.Active := true;
    cds_dmobra.Active := true;

    //   end;
    //endi


  end;
//endth


end;

procedure TfrmPesqVd.FormCreate(Sender: TObject);
begin
pctficha.ActivePage.PageIndex := 0;
end;

procedure TfrmPesqVd.edisubtotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqVd.spdalterarparcClick(Sender: TObject);
begin
sOpcaop                := 'A';
edicpro.Enabled        := false;
spdconsultaproduto.Enabled := false;


dbgdvenda.Enabled       := false;
icpro                  := frmdados.Cds_dVenda.fieldbyname('cpro').asInteger;
if  frmdados.Cds_dVenda.fieldbyname('cpro').asInteger > 0 then
    edicpro.Text       := frmdados.Cds_dVenda.fieldbyname('cpro').asString;
//endi
sCodigo                := frmdados.Cds_dVenda.fieldbyname('codigo').asString;
edinpro.Text           := frmdados.Cds_dVenda.fieldbyname('npro').asString;
//ediEspecificacao.Text  := frmdados.Cds_dVenda.fieldbyname('especificacao').asString;
ediqtde.Text           := formatfloat('###,###,##0.000',frmdados.Cds_dVenda.fieldbyname('qtde').asfloat);
ediqtde.Text := AlinEdNumD(ediqtde,3);

fquaa           := frmdados.Cds_dVenda.fieldbyname('qtde').asfloat;

ediprve.Text           := formatfloat('###,###,##0.00',frmdados.Cds_dVenda.fieldbyname('prve').asfloat);
ediprve.Text := AlinEdNumD(ediprve,2);
edisubtotal.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dVenda.fieldbyname('subtotal').asfloat);
edisubtotal.Text := AlinEdNumD(edisubtotal,2);
icuni                   := frmdados.Cds_dVenda.fieldbyname('cuni').asInteger;

if frmdados.Cds_dVenda.fieldbyname('impnf').asString = 'T' then
   begin
     ckbimpnf.Checked := true
   end
else
   begin
     ckbimpnf.Checked := false;
   end;
//endi

iccf                    := frmdados.Cds_dVenda.fieldbyname('codcf').asInteger;
icsita                  := frmdados.Cds_dVenda.fieldbyname('codsita').asInteger;
icgru                  := frmdados.Cds_dVenda.fieldbyname('cgru').asInteger;

icMar                   := frmdados.Cds_dVenda.fieldbyname('cMar').asInteger;

icsitb                  := frmdados.Cds_dVenda.fieldbyname('codsitb').asInteger;
icicms                  := frmdados.Cds_dVenda.fieldbyname('codicms').asInteger;
icipi                   := frmdados.Cds_dVenda.fieldbyname('codipi').asInteger;
iccfop                   := frmdados.Cds_dVenda.fieldbyname('codcfop').asInteger;

icpis                   := frmdados.Cds_dVenda.fieldbyname('codpis').asInteger;
iccofins                   := frmdados.Cds_dVenda.fieldbyname('codcofins').asInteger;
icmodbc                   := frmdados.Cds_dVenda.fieldbyname('codmodbc').asInteger;
icirii                   := frmdados.Cds_dVenda.fieldbyname('codirii').asInteger;
icvii                   := frmdados.Cds_dVenda.fieldbyname('codvii').asInteger;
icoimp                   := frmdados.Cds_dVenda.fieldbyname('codoimp').asInteger;
icmodbcst                   := frmdados.Cds_dVenda.fieldbyname('codmodbcst').asInteger;

sncm                   := frmdados.Cds_dVenda.fieldbyname('ncm').asString;

if frmdados.Cds_dVenda.fieldbyname('indtot').asString = 'T' then
   bindtot := true
else
   bindtot := false;
//endi   

sActDesc               := frmdados.Cds_dVenda.fieldbyname('ActDesc').asString;
fPrcu                  := frmdados.Cds_dVenda.fieldbyname('prcu').asfloat;
fSubTotalc             := frmdados.Cds_dVenda.fieldbyname('Subtotalc').asfloat;


with frmdados do
  begin

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount > 0 then
       begin
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
       end;
    //endi
    dbx_vProdutos.Active := false;

    dbx_Exec.Active := false;
    dbx_Exec.SQL.Clear;
    dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
    dbx_Exec.Active := true;
    cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;
    dbx_Exec.Active := false;
  end;
//endth
ediqtde.SetFocus;

end;

procedure TfrmPesqVd.cbxnfunKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
   end;
//endi
end;

procedure TfrmPesqVd.cbxnrepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqVd.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;

end;

procedure TfrmPesqVd.cbxclassificarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  key := 0;

end;

procedure TfrmPesqVd.edidescChange(Sender: TObject);
begin
try
if edidesc.Text <> '' then
   frmdados.cds_sVenda.Locate(frmpesqVd.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
except
edidesc.Clear;
if edidesc.Enabled then
   edidesc.SetFocus;
//endi     
end;
end;

procedure TfrmPesqVd.edidescKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi

end;

procedure tfrmPesqvd.verifestq;
var
  fquat:real;
begin
fquat := strtofloat(tirapontos(ediqtde.Text));

if sOpcaop = 'A' then
   if fquaa >= fquat then
      exit;
   //endi
//endi

if (not bVSEstq) and (rgbtipoop.ItemIndex > 0) then
   begin
     if (icpro > 0) then
        begin
          vestoqNv;
        end;
     //endi
   end
else
   begin
     if (icpro > 0) then
        begin
          vestoqv;
        end;
     //endi
   end;
//endi

end;
procedure TfrmPesqVd.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin

end;

procedure TfrmPesqVd.spdconsultaprodutoClick(Sender: TObject);
begin
edicpro.SetFocus;
frmpesqprodd := tfrmpesqprodd.create(self);
frmpesqprodd.showmodal;
frmpesqprodd.free;

end;

procedure TfrmPesqVd.cbxunidKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  key := #0;
end;


procedure TfrmPesqVd.cbxunidExit(Sender: TObject);
begin
  if cbxunid.Text = '' then
     begin
       icuni :=0;
       exit;
     end;
  //endi

  with frmdados do
    begin
      dbx_Exec.Active := false;
      dbx_Exec.SQL.Clear;
      dbx_Exec.SQL.Add('Select * from unidade where Descricao = '+Quotedstr(cbxunid.text));
      dbx_Exec.Active := true;
      icuni := dbx_Exec.Fieldbyname('codigo').asInteger;
      dbx_Exec.Active := false;
    end;
  //endth

end;

procedure TfrmPesqVd.cbxntranspKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('ctransp').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqVd.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin

end;

procedure TfrmPesqVd.edisaidaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.cbxnaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edinproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqVd.edivolumesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ediresuniKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ediprazo_validadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edida8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ckbimpnfClick(Sender: TObject);
begin
bimpnf := ckbimpnf.Checked;

end;

procedure TfrmPesqVd.dbgdvendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
  Icon: TBitmap;

begin
  Icon := TBitmap.Create;
  if (Column.FieldName = 'IMPNF') then
  begin
    with dbgdvenda.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_dVenda.FieldByName('IMPNF').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

end;

procedure TfrmPesqVd.dbgdvendaDblClick(Sender: TObject);
begin
  if frmdados.Cds_dVenda.RecordCount = 0 then
     exit;
  //endi
  FrmDados.Cds_dVenda.Edit;
  if FrmDados.Cds_dVenda.FieldByName('IMPNF').asString = 'F' then
     FrmDados.Cds_dVenda.FieldByName('IMPNF').asString := 'T'
  else
     FrmDados.Cds_dVenda.FieldByName('IMPNF').asString := 'F';
  //endi
  FrmDados.Cds_dVenda.post;

end;

procedure TfrmPesqVd.spdimpClick(Sender: TObject);
begin

     if frmdados.Cds_Indice.FieldByName('tpimpvi').asInteger = 2 then
        begin
          frmimpped := tfrmimpped.Create(self);
          frmimpped.relatorio.Preview;
          frmimpped.Free;
        end;
     //endi
end;

procedure TfrmPesqVd.spdimpnfClick(Sender: TObject);
begin
  frmdados.totalizafrmpesqvdprod;
  frmfecped := tfrmfecped.create(self);
  frmfecped.showmodal;
  frmfecped.free;

  //frmdados.totalizafrmpesqvdprod;
  //frmimpnf := tfrmimpnf.create(self);
  //frmimpnf.showmodal;
  //frmimpnf.free;
end;

procedure TfrmPesqVd.cbxnfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.cbxnrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.cbxncliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure TfrmPesqVd.edicfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.edicrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.ediccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmpesqvd.limpar;
begin
  //edicfun.Text := '';
  //edicrep.Text := '';
  //ediccli.Text := '';
end;

procedure tfrmpesqvd.mostrar;
begin
  //edicfun.Text := frmdados.Cds_Funcionarios.fieldbyname('codigo').asString;
  //edicrep.Text := frmdados.Cds_Representantes.fieldbyname('codigo').asString;
  //ediccli.Text := frmdados.Cds_clientes.fieldbyname('codigo').asString;

   
end;


procedure TfrmPesqVd.ediccliExit(Sender: TObject);
begin
if strtoint(ediccli.Text) = 0 then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('ccli').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Clientes.Locate('codigo',ediccli.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_Clientes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('ccli').asInteger := 0;
       //ediccli.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqVd.edicrepExit(Sender: TObject);
begin
if strtoint(edicrep.Text) = 0 then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Representantes.Locate('codigo',edicrep.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cRep').asInteger := frmdados.Cds_Representantes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
       //edicRep.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqVd.edicfunExit(Sender: TObject);
begin
if strtoint(edicfun.Text) = 0 then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Funcionarios.Locate('codigo',edicfun.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cfun').asInteger := frmdados.Cds_Funcionarios.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
       //edicfun.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqVd.cbxcfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.cbxcrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.cbxccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.spdexcluirparcClick(Sender: TObject);
begin
  if dbgdvenda.Focused then
     begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_dVenda.Delete;
            if frmdados.Cds_dVenda.RecordCount = 0 then
               begin
                 //desativabotoes;
                 //spdincluir231.Enabled := true;
                 //cbxnomefun.Enabled := true;
               end;
            //endi
          end
       //endi
     end
  else
     begin
       Showmessage('Nenhum Item do Pedido foi Selecionado');
     end;
  //endi

end;

procedure TfrmPesqVd.cbxnfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.spdlancaClick(Sender: TObject);
begin
frmdados.totalizafrmpesqvdprod;
frmfecped := tfrmfecped.create(self);
frmfecped.showmodal;
frmfecped.free;

end;

procedure TfrmPesqVd.spdemailClick(Sender: TObject);
begin
frmemailped := tfrmemailped.Create(self);
frmemailped.ShowModal;
frmemailped.Free;
end;

procedure TfrmPesqVd.spdprinterClick(Sender: TObject);
begin
  frmMRVD := tfrmMRVD.Create(self);
  frmMRVD.ShowModal;
  frmMRVD.Free;
end;

procedure TfrmPesqVd.bloqueiabotoesP;
begin
spdincluir171.Enabled := false;
spdalterar172.Enabled := false;
spdexcluir173.Enabled := false;
spdconsultar174.Enabled := false;
spdcodbar175.Enabled := false;
spdilustracao177.Enabled := false;
end;

procedure TfrmPesqVd.bloqueiabotoesF;
begin
spdgravar.Enabled := false;
spdcancelar2310.Enabled := false;
//spdrel.Enabled := false;
spdimpnf.Enabled := false;
spdimp.Enabled := false;
spdconflan.Enabled := false;
spdcanclan.Enabled := false;
spdemail.Enabled := false;
end;

procedure TfrmPesqVd.desbloqueiabotoesP;
begin
spdincluir171.Enabled := true;
spdalterar172.Enabled := true;
spdexcluir173.Enabled := true;
spdconsultar174.Enabled := true;
spdcodbar175.Enabled := true;
spdilustracao177.Enabled := true;
end;

procedure TfrmPesqVd.desbloqueiabotoesF;
begin
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
//spdrel.Enabled := true;
spdimpnf.Enabled := true;
spdimp.Enabled := true;
spdconflan.Enabled := true;
spdcanclan.Enabled := true;
spdemail.Enabled := true;
spdconflan.Enabled := true;
spdlanca.Enabled := true;
end;


procedure tfrmpesqvd.AtivaDbotoes;
begin
    {


    if sOpcao = 'C' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         bloqueiadet;
         spdcancelar2310.Enabled := true;
         exit;
       end;
    //endi


    }

    if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;

         spdincluir171.Enabled := true;
         spdconsultar174.Enabled := true;
         spdcancelar2310.Enabled := true;
         spdcanclan.Enabled := true;
         //spdrel.Enabled := true;
         spdimpnf.Enabled := true;
         spdimp.Enabled := true;
         spdconflan.Enabled := false;
         spdlanca.Enabled := true;
         bloqueiadet;
       end
    else
       begin


         desbloqueiadet;
         if frmdados.cds_svenda.RecordCount > 0 then
            begin
              desbloqueiabotoesP;
              desbloqueiabotoesF;
            end
         else
            begin
              spdlanca.Enabled := false;
            end;
         //endi

         spdcanclan.Enabled := false;
         spdcancelar2310.Enabled := true;

       end;
    //endi


end;



procedure TfrmPesqVd.spdconflanClick(Sender: TObject);
begin

  with frmdados do
    begin

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select * from Vencimentos where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
      dbx_exec.Active := true;
      if dbx_exec.RecordCount = 0 then
         begin
           Showmessage('Valores não foram digitados para posterior lançamento');
           exit;
         end;
      //endi

      if application.MessageBox('Deseja Realmente Lançar pedido?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      Cds_sVenda.Edit;
      Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
      Cds_sVenda.FieldByName('lancado').asString := 'T';
      Cds_sVenda.Post;

    end;
  //endi

end;

procedure TfrmPesqVd.spdcanclanClick(Sender: TObject);
begin
  with frmdados do
    begin

      tabela := 'sVenda';

      if application.MessageBox('Cancela Lançamento?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('F')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from comissao where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from comissaor where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from nf where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      Cds_sVenda.Edit;
      Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
      Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
      Cds_sVenda.FieldByName('liquido_p').asfloat := 0;
      Cds_sVenda.FieldByName('din_p').asfloat := 0;
      Cds_sVenda.FieldByName('parc_p').asInteger := 0;
      Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
      Cds_sVenda.FieldByName('lancado').asString := 'F';
      Cds_sVenda.Post;

    end;
  //endi

end;

procedure TfrmPesqVd.spdantClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Prior;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqVd.spdproxClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Next;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqVd.bloqueiadet;
begin
edisaida.Enabled := false;
edivolumes.Enabled := false;
ediresuni.Enabled := false;
ediprazo_validade.Enabled := false;
edida1.Enabled := false;
edida2.Enabled := false;
edida3.Enabled := false;
edida4.Enabled := false;
edida5.Enabled := false;
edida6.Enabled := false;
edida7.Enabled := false;
edida8.Enabled := false;
edicfun.Enabled := false;
edicrep.Enabled := false;
ediccli.Enabled := false;
edicpro.Enabled := false;
ediqtde.Enabled := false;
cbxunid.Enabled := false;
edinpro.Enabled := false;
ediprve.Enabled := false;
edisubtotal.Enabled := false;
ckbimpnf.Enabled := false;
spdconsultaproduto.Enabled := false;
spdalterarparc.Enabled := false;
spdsalvarprod.Enabled := false;
spdexcluirparc.Enabled := false;
cbxnfun.Enabled := false;
cbxnrep.Enabled := false;
cbxncli.Enabled := false;
cbxnfant.Enabled := false;
cbxnometab.Enabled := false;
end;

procedure TfrmPesqVd.desbloqueiadet;
begin
edisaida.Enabled := true;
edivolumes.Enabled := true;
ediresuni.Enabled := true;
ediprazo_validade.Enabled := true;
edida1.Enabled := true;
edida2.Enabled := true;
edida3.Enabled := true;
edida4.Enabled := true;
edida5.Enabled := true;
edida6.Enabled := true;
edida7.Enabled := true;
edida8.Enabled := true;
edicfun.Enabled := true;
edicrep.Enabled := true;
ediccli.Enabled := true;
edicpro.Enabled := true;
ediqtde.Enabled := true;
cbxunid.Enabled := true;
edinpro.Enabled := true;
ediprve.Enabled := true;
edisubtotal.Enabled := true;
ckbimpnf.Enabled := true;
spdconsultaproduto.Enabled := true;
spdalterarparc.Enabled := true;
spdsalvarprod.Enabled := true;
spdexcluirparc.Enabled := true;
cbxnfun.Enabled := true;
cbxnrep.Enabled := true;
cbxncli.Enabled := true;
cbxnfant.Enabled := true;
cbxnometab.Enabled := true;

end;

procedure tfrmPesqVd.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := True;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
end;



procedure TfrmPesqVd.cbxclassificarClick(Sender: TObject);
begin
  spdfiltrar.Click;
  habdedidesc;
end;


procedure tfrmpesqvd.habproduto;
begin
tabela := 'sVenda';
if frmdados.Cds_svenda.State in [dsinsert, dsedit] then
   frmdados.Cds_svenda.Post;
//endi


limparprod;
filtraproduto;

if edicpro.Enabled then
   edicpro.SetFocus;
//endi
end;

procedure TfrmPesqVd.dbgvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVd.dbgdvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVd.cbxnomecliEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVd.cbxnomefunEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVd.cbxnomerepEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVd.edicproChange(Sender: TObject);
begin
if edicpro.Text <> '' then
   frmdados.cds_dvenda.Locate('cpro',edicpro.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure TfrmPesqVd.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVd.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmpesqvd.buscarprve;
begin

with frmdados do
  begin

    if cds_svenda.FieldByName('ctab').AsInteger > 0 then
       begin
         cds_tabPrP.Active := false;
         dbx_tabPrp.Active := false;
         dbx_tabPrP.SQL.Clear;
         dbx_tabPrP.SQL.Add('Select * from TabPrP where (cpro = '+inttostr(icpro)+') and (ctab = '+inttostr(cds_svenda.FieldByName('ctab').AsInteger)+')'   );
         dbx_tabPrP.Active := true;
         cds_tabPrP.Active := true;

         ediprve.Text := formatfloat('###,###,##0.00',cds_tabPrP.fieldbyname('prve').asfloat);
         ediprve.Text := AlinEdNumD(ediprve,2);

       end
    else
       begin

         ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
         ediprve.Text := AlinEdNumD(ediprve,2);

       end
    //endi

  end;
//endth

end;



procedure TfrmPesqVd.spdrelatorios176Click(Sender: TObject);
begin
  frmMRVD := tfrmMRVD.Create(self);
  frmMRVD.ShowModal;
  frmMRVD.Free;
end;


procedure tfrmpesqvd.exportarped;
var f:textfile;
vardir:string;
codigo, nome:string;
begin

  vardir := extractfilepath(application.ExeName);

  codigo := '';
  nome := '';


  if frmdados.Cds_Clientes.Locate('codigo',frmdados.Cds_sVenda.fieldbyname('ccli').asString,[]) then
     begin
       codigo := frmdados.Cds_Clientes.fieldbyname('codigo').AsString;
       nome := frmdados.Cds_Clientes.fieldbyname('nome').AsString;;

     end;

  AssignFile(f,vardir+'venda_nro' + inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger ) + nome + codigo +'.txt');
  rewrite(f);

  if frmdados.Cds_Clientes.Locate('codigo',frmdados.Cds_sVenda.fieldbyname('ccli').asString,[]) then
     begin
       Writeln(f,'[cliente'+formatfloat('00000',frmdados.cds_clientes.fieldbyname('codigo').asfloat)+']');
       Writeln(f,'CNPJ='+frmdados.cds_clientes.fieldbyname('cpf').asString);
       Writeln(f,'IE='+frmdados.cds_clientes.fieldbyname('ie').asString);
       Writeln(f,'NomeRazao='+frmdados.cds_clientes.fieldbyname('nome').asString);
       Writeln(f,'Fantasia='+frmdados.cds_clientes.fieldbyname('fantasia').asString);
       Writeln(f,'Fone='+frmdados.cds_clientes.fieldbyname('telefones').asString);
       Writeln(f,'CEP='+frmdados.cds_clientes.fieldbyname('cepent').asString);
       Writeln(f,'Logradouro='+frmdados.cds_clientes.fieldbyname('endent').asString);
       Writeln(f,'Numero='+frmdados.cds_clientes.fieldbyname('nroent').asString);
       Writeln(f,'Complemento='+frmdados.cds_clientes.fieldbyname('complent').asString);
       Writeln(f,'Bairro='+frmdados.cds_clientes.fieldbyname('bairroent').asString);
     end;
  //endi

  frmdados.cds_produtos.Active := true;

  frmdados.cds_dVenda.Active := false;
  frmdados.cds_dVendacodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
  frmdados.cds_dVendaImpNf.DefaultExpression := 'T';
  frmdados.dbx_dVenda.Active := false;
  frmdados.dbx_dVenda.SQL.Clear;
  frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+ inttostr( frmdados.cds_sVenda.fieldbyname('codigo').asInteger ) );
  frmdados.dbx_dVenda.Active := true;
  frmdados.cds_dVenda.Active := true;


  while not frmdados.cds_dvenda.Eof do
    begin

      Writeln(f,'[produto'+formatfloat('00000',frmdados.Cds_dVenda.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'CPRO='+frmdados.cds_dvenda.fieldbyname('cpro').asString);
      Writeln(f,'NPRO='+frmdados.cds_dvenda.fieldbyname('npro').asString);
      Writeln(f,'QTDE='+floattostr(frmdados.cds_dvenda.fieldbyname('qtde').asfloat));
      Writeln(f,'PRVE='+floattostr(frmdados.cds_dvenda.fieldbyname('prve').asfloat));
      Writeln(f,'SUBTOTAL='+floattostr(frmdados.cds_dvenda.fieldbyname('subtotal').asfloat));
      //Writeln(f,'CAUX='+frmdados.cds_dvenda.fieldbyname('caux').asString);

      if frmdados.Cds_vprodutos.Locate('cdescprod',frmdados.cds_dvenda.fieldbyname('cpro').AsInteger,[]) then
         begin
           Writeln(f,'NCM='+frmdados.cds_vprodutos.fieldbyname('ncm').asString);
         end;
      //endi

      if frmdados.Cds_AliqImpFis.Locate('codigo',frmdados.cds_dvenda.fieldbyname('codicms').AsInteger,[]) then
         begin
           Writeln(f,'ICMS='+frmdados.cds_aliqimpfis.fieldbyname('sigla').asString);
         end;
      //endi

      if frmdados.Cds_unidade.Locate('codigo',frmdados.cds_dvenda.fieldbyname('cuni').AsInteger,[]) then
         begin
           Writeln(f,'UNIDADE='+frmdados.cds_unidade.fieldbyname('descricao').asString);
         end;
      //endi


      frmdados.Cds_dVenda.Next;

    end;
  //endi

  CloseFile(f);



end;


procedure TfrmPesqVd.SpeedButton4Click(Sender: TObject);
begin
exportarped;
end;

end.

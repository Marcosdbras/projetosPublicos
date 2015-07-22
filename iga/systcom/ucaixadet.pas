unit ucaixadet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus;

type
  TfrmCaixaDet = class(TForm)
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
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    pnlficha: TPanel;
    SayPrint: TSayPrint;
    DBGrid1: TDBGrid;
    cbxnomecli: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    spdprinter: TSpeedButton;
    pnlvenda: TPanel;
    dbgvenda: TDBGrid;
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
  frmCaixaDet: TfrmCaixaDet;

implementation

uses uGeral, uPrincipal, uDados, uImpOrcp, upesqprod, uimpnf, uFecPed, uemailped,
  uMRVD, uimpped;

{$R *.DFM}

procedure TfrmCaixaDet.FormShow(Sender: TObject);
var
   vardir: String;
begin
   tabela := 'sVenda';
   sOpcaoP := 'I';
   sOpcao := 'I';


   vardir := ExtractFilePath(Application.ExeName);



   with frmdados do
     begin

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


     end;
   //endth

   spdlimpar.Click;
   //bloqueiabotoesP;
   //bloqueiabotoesF;

end;

procedure TfrmCaixaDet.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaDet.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaDet.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmCaixaDet.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCaixadet:=nil;
  form_ativo := '';

end;

procedure TfrmCaixaDet.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmCaixaDet.dbgvendaKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmCaixaDet.dbgvendaEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmCaixaDet.dbgdvendaEnter(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmCaixaDet.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmCaixaDet.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmCaixaDet.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmCaixaDet.spdfiltrarClick(Sender: TObject);
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

     sClassificar := 'DataCad';


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
              sql.Add('select * from sVenda where '+sCompo+' order by '+sClassificar);
            end
         else
            begin
              sql.Add('select * from sVenda order by '+sClassificar);
            end;
         //endi
         active := true;



       end;
    //endi

    frmdados.cds_sVendatipoop.DefaultExpression := frmdados.Cds_Indice.fieldbyname('qdonovopedint').asString;
    frmdados.cds_sVenda.Active := true;

  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

end;

procedure TfrmCaixaDet.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  spdfiltrar.Click;
end;

end.

unit uCaixaapa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, SayPrint, TeeProcs, TeEngine, Chart,
  jpeg, Series;

type
  TfrmCaixaApa = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    DtpDataI: TDateTimePicker;
    DtpDataF: TDateTimePicker;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    imgfichadetalhe: TImageList;
    lbltitdatai: TLabel;
    Label7: TLabel;
    Bevel4: TBevel;
    PrintCaixa: TSayPrint;
    lblcodigo: TLabel;
    lblpecas: TLabel;
    lblmao: TLabel;
    lblimp: TLabel;
    lblmostrar: TLabel;
    Label1: TLabel;
    lblparc: TLabel;
    mmocaixa: TMemo;
    lstrotulo: TListBox;
    lstvalor: TListBox;
    GraGrafico: TChart;
    lblcab2: TLabel;
    cbxtipo: TComboBox;
    Label2: TLabel;
    spdsangria: TSpeedButton;
    spdtroco: TSpeedButton;
    SayPrint1: TSayPrint;
    spdimpcaixa: TSpeedButton;
    spdgrafico: TSpeedButton;
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgrecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure CriaSeries;
    procedure MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
    procedure spdlimparClick(Sender: TObject);
    procedure cbxtipoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxtipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdsangriaClick(Sender: TObject);
    procedure spdtrocoClick(Sender: TObject);
    procedure spdimpcaixaClick(Sender: TObject);
    procedure spdgraficoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
    pNumPag,pNumItem,aCodMod,aCodFun, formcolt, formcold1, formcolts, formcold2, formcold3, formcold4:Integer;
    pTotPeca, pTotMao:Real;
    sSerie : tpieseries;
    iNum:integer;

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sClassificar:string;
  end;

var
  frmCaixaApa: TfrmCaixaApa;

implementation

uses uGeral, uPrincipal, uDados, uMRrec, usangriap, uingesp, urelmovprod;

{$R *.DFM}

procedure TfrmCaixaApa.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaApa.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaApa.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmCaixaApa.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmCaixaApa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCaixaApa:=nil;
  form_ativo := '';

end;

procedure TfrmCaixaApa.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmCaixaApa.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmCaixaApa.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmCaixaApa.dbgrecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmCaixaApa.FormShow(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
  Var
    dia,mes,ano:word;

begin
VarDir := Extractfilepath(Application.exename);
lblCab2.Caption := frmdados.Cds_Config.FieldByName('Campo2').asString;

gragrafico.Visible := false;

with frmdados do
  begin
    cds_tipo_pgto.Active := false;
    dbx_tipo_pgto.Active := false;
    dbx_tipo_pgto.SQL.Clear;
    dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto order by codigo');
    dbx_tipo_pgto.Active := true;
    cds_tipo_pgto.Active := true;
  end;
//endi


spdlimpar.Click;



end;

procedure TfrmCaixaApa.spdfiltrarClick(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto, col1, col2, col3, col4, col5, sDataI, sDataf:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
      ano, mes, dia :word;
      aTotTipo, aTotTipoRecdo, atottipopaglq, atottipoa:array of real;
      aLinha:array of string;
      i, x:integer;
  Var
    totpagas, totpagar, totdinOS, totparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    totdin, totliq, fvlr, fperc1, fperc2, ftotingestao, ftotsangria, totgpagl, ftotp, ftotorc:real;
begin

if iNum = 1 then
  begin


    for x := 0 to frmcaixaapa.ControlCount - 1 do
      begin
        if frmcaixaapa.Controls[x].Tag = 1 then
           begin
             frmcaixaapa.Controls[x].Visible := false;
           end;
        //endi
      end;
    //endf


  end;
//endi



with frmdados do
  begin

    formcolts := 220;
    formcolt  := 220;
    formcold1  := 350;
    formcold2 := 500;
    formcold3 := 650;
    formcold4 := 800;

    GraGrafico.Title.Text.Clear;
    GraGrafico.Title.Text.Add('Movimento');
    GraGrafico.SeriesList.Clear;
    GraGrafico.Legend.Visible := false;

    lstvalor.Items.Clear;
    lstrotulo.Items.Clear;

    totvendac := 0;
    totpagas := 0;
    totpagar := 0;
    totdinOS := 0;
    totparcOs := 0;
    totGparcOs := 0;
    totrecparc := 0;
    totpagparc := 0;
    totcuspecas := 0;
    totcusdevpecas := 0;
    totmo := 0;
    totvenda := 0;
    totvendapecas := 0;
    totvdescp := 0;
    totvdescv := 0;
    totGrec := 0;
    totgpagl := 0;
    ftotorc :=0;

    col1 := '';
    col2 := '';
    col3 := '';
    col4 := '';
    col5 := '';

    mmocaixa.Lines.Clear;

    VarDir := Extractfilepath(Application.exename);

    sDataI := datetostr(dtpdatai.Date);
    sDataI := bar_is_point( sDataI  );

    sDataF := datetostr(dtpdataF.Date);
    sDataF := bar_is_point( sDataF  );

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select Max(codigo) as MaiorCodigo from tipo_pgto');
    dbx_exec.Active := true;

    setlength(aTottipo,dbx_exec.fieldbyname('MaiorCodigo').asInteger );
    setlength(aTottiporecdo,dbx_exec.fieldbyname('MaiorCodigo').asInteger );
    setlength(aTottipopaglq,dbx_exec.fieldbyname('MaiorCodigo').asInteger );

    frmprincipal.Update;
    //frmcaixaapa.update;

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;

    if cbxtipo.ItemIndex = 0 then
       dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+')');
    //endi
    if cbxtipo.ItemIndex = 1 then
       dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and (coalesce (nco,0) > 0)');
    //endi
    if cbxtipo.ItemIndex = 2 then
       dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( nco is null ) and (nos is null)');
    //endi
    if cbxtipo.ItemIndex = 3 then
       dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and (coalesce (nos,0) > 0)');
    //endi

    dbx_exec.Active := true;

    ftotarecber := dbx_exec.fieldbyname('totarecber').asfloat;

    cds_pagar.Active := false;
    dbx_pagar.Active := false;
    dbx_pagar.SQL.Clear;
    dbx_pagar.SQL.Add('Select * from pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (csit = 2)');
    dbx_pagar.Active := true;
    cds_pagar.Active := true;

    while not cds_pagar.Eof do
      begin
        totpagas := totpagas + cds_pagar.fieldbyname('valor').asfloat;
        cds_pagar.Next;
      end;
    //endi

    cds_pagar.Active := false;
    dbx_pagar.Active := false;
    dbx_pagar.SQL.Clear;
    dbx_pagar.SQL.Add('Select * from pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (csit = 1)');
    dbx_pagar.Active := true;
    cds_pagar.Active := true;

    while not cds_pagar.Eof do
      begin
        totpagar := totpagar + cds_pagar.fieldbyname('valor').asfloat;
        cds_pagar.Next;
      end;
    //endi

    cds_pedcanc.Active := false;
    dbx_pedcanc.Active := false;
    dbx_pedcanc.SQL.Clear;
    dbx_pedcanc.SQL.Add('Select * from pedcanc where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+')');
    dbx_pedcanc.Active := true;
    cds_pedcanc.Active := true;

    while not cds_pedcanc.Eof do
      begin
        totvendac := totvendac + cds_pedcanc.fieldbyname('total').asfloat;
        cds_pedcanc.Next;
      end;
    //endi

    //Venda
    cds_svenda.Active := false;
    dbx_svenda.Active := false;
    dbx_svenda.SQL.Clear;
    if cbxtipo.ItemIndex = 0 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (tipoop > 0)');
       end;
    //endi
    if cbxtipo.ItemIndex = 1 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (coalesce (nco,0) > 0) and (tipoop > 0)');
       end;
    //endi
    if cbxtipo.ItemIndex = 2 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (nco is null) and (nos is null) and (tipoop > 0)');
       end;
    //endi
    if cbxtipo.ItemIndex = 3 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (coalesce (nos,0) > 0) and (tipoop > 0)');
       end;
    //endi
    dbx_svenda.Active := true;
    cds_svenda.Active := true;

    while not cds_svenda.Eof do
      begin

        ftotp := cds_svenda.fieldbyname('ftotp').asfloat;
        totvendapecas := totvendapecas + ftotp;
        totmo := totmo + cds_svenda.fieldbyname('ftotm').asfloat;
        totcuspecas := totcuspecas + cds_svenda.fieldbyname('custopecas').asfloat;
        totvdescp := totvdescp + (  cds_svenda.fieldbyname('pdesc_p').asfloat / 100 * cds_svenda.fieldbyname('ftotp').asfloat );
        totvdescp := totvdescp + (  cds_svenda.fieldbyname('pdesc').asfloat / 100 * cds_svenda.fieldbyname('ftotp').asfloat );

        totvdescv := totvdescv + (  cds_svenda.fieldbyname('pdesc_p').asfloat / 100 * cds_svenda.fieldbyname('ftotm').asfloat );

        totcusdevpecas := totcusdevpecas + cds_svenda.fieldbyname('custopecae').asfloat;

        if cbxtipo.ItemIndex = 0 then
           begin
             totdin := cds_svenda.fieldbyname('din').asfloat+cds_svenda.fieldbyname('din_p').asfloat;
             totliq :=  cds_svenda.fieldbyname('totgpagar').asfloat+cds_svenda.fieldbyname('liquido_p').asfloat;

             if totdin > totliq then
                totdinOS := totdinOS + totliq
             else
                totdinOS := totdinOS + totdin;
             //endi

           end;
        //endi

        if cbxtipo.ItemIndex = 1 then
           begin

             if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totgpagar').asfloat then
                totdinOS := totdinOS + cds_svenda.fieldbyname('totgpagar').asfloat
             else
                totdinOS := totdinOS + cds_svenda.fieldbyname('din').asfloat;
             //endi

           end;
        //endi

        if cbxtipo.ItemIndex = 2 then
           begin

             if cds_svenda.fieldbyname('din_p').asfloat > cds_svenda.fieldbyname('liquido_p').asfloat then
                totdinOS := totdinOS + cds_svenda.fieldbyname('liquido_p').asfloat
             else
                totdinOS := totdinOS + cds_svenda.fieldbyname('din_p').asfloat;
             //endi

           end;
        //endi


        if cbxtipo.ItemIndex = 3 then
           begin

             if cds_svenda.fieldbyname('din_p').asfloat > cds_svenda.fieldbyname('liquido_p').asfloat then
                totdinOS := totdinOS + cds_svenda.fieldbyname('liquido_p').asfloat
             else
                totdinOS := totdinOS + cds_svenda.fieldbyname('din_p').asfloat;
             //endi

           end;
        //endi


        cds_svenda.Next;

      end;
    //endi




    //Orçamento
    cds_svenda.Active := false;
    dbx_svenda.Active := false;
    dbx_svenda.SQL.Clear;
    if cbxtipo.ItemIndex = 0 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datacad >= '+quotedstr(sDataI)+') and (datacad <= '+quotedstr(sDataF)+') and (tipoop = 0)');
       end;
    //endi
    if cbxtipo.ItemIndex = 1 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datacad >= '+quotedstr(sDataI)+') and (datacad <= '+quotedstr(sDataF)+')  and (tipoop = 0) and (tipodoc=1)');
       end;
    //endi
    if cbxtipo.ItemIndex = 2 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datacad >= '+quotedstr(sDataI)+') and (datacad <= '+quotedstr(sDataF)+')  and (tipoop = 0) and (tipodoc=2)');
       end;
    //endi
    if cbxtipo.ItemIndex = 3 then
       begin
         dbx_svenda.SQL.Add('Select * from svenda where ('+'datacad >= '+quotedstr(sDataI)+') and (datacad <= '+quotedstr(sDataF)+')  and (tipoop = 0) and (tipodoc = 3)');
       end;
    //endi
    dbx_svenda.Active := true;
    cds_svenda.Active := true;

    while not cds_svenda.Eof do
      begin

        ftotorc := ftotorc + cds_svenda.fieldbyname('total').asfloat;


        cds_svenda.Next;

      end;
    //endi


    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        totParcOs := 0;

        cds_exec.Active := false;
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        if cbxtipo.ItemIndex = 0 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+')');
        //endi
        if cbxtipo.ItemIndex = 1 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nco,0) > 0)');
        //endi
        if cbxtipo.ItemIndex = 2 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (nco is null)  and (nos is null)');
        //endi
        if cbxtipo.ItemIndex = 3 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nos,0) > 0)');
        //endi

        dbx_exec.Active := true;
        cds_exec.Active := true;

        while not cds_exec.Eof do
          begin
            totParcOs := totParcOs + cds_exec.fieldbyname('valorreal').asfloat;
            totGParcOs := totGParcOs + cds_exec.fieldbyname('valorreal').asfloat;
            Cds_exec.Next;
          end;
        //endw
        atottipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + totparcOs;
        cds_tipo_pgto.Next;
      end;
    //endw

    cds_sangria.Active := false;
    dbx_sangria.Active := false;
    dbx_sangria.SQL.Clear;
    if cbxtipo.ItemIndex = 0 then
       dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+')');
    //endi
    if cbxtipo.ItemIndex = 1 then
       dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and (origem = 1)');
    //endi
    if cbxtipo.ItemIndex = 2 then
       dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and (origem = 2)');
    //endi
    if cbxtipo.ItemIndex = 3 then
       dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and (origem = 2)');
    //endi
    dbx_sangria.Active := true;
    cds_sangria.Active := true;

    while not cds_sangria.Eof do
      begin
        ftotsangria := ftotsangria + cds_sangria.fieldbyname('valor').asfloat;
        cds_sangria.Next;
      end;
    //endi

    cds_ingestao.Active := false;
    dbx_ingestao.Active := false;
    dbx_ingestao.SQL.Clear;
    if cbxtipo.ItemIndex = 0 then
       dbx_ingestao.SQL.Add('Select * from ingestao');
    //endi
    if cbxtipo.ItemIndex = 1 then
       dbx_ingestao.SQL.Add('Select * from ingestao where (origem = 1)');
    //endi
    if cbxtipo.ItemIndex = 2 then
       dbx_ingestao.SQL.Add('Select * from ingestao where (origem = 2)');
    //endi
    if cbxtipo.ItemIndex = 3 then
       dbx_ingestao.SQL.Add('Select * from ingestao where (origem = 2)');
    //endi
    dbx_ingestao.Active := true;
    cds_ingestao.Active := true;

    while not cds_ingestao.Eof do
      begin
        ftotingestao := ftotingestao + cds_ingestao.fieldbyname('valor').asfloat;
        cds_ingestao.Next;
      end;
    //endi

    //recedidos
    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        totrecparc := 0;

        cds_exec.Active := false;
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        if cbxtipo.ItemIndex = 0 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (csit = 2)');
        //endi
        if cbxtipo.ItemIndex = 1 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nco,0) > 0) and (csit = 2)');
        //endi
        if cbxtipo.ItemIndex = 2 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (nco is null) and (csit = 2)  and (nos is null)');
        //endi
        if cbxtipo.ItemIndex = 3 then
           dbx_exec.SQL.Add('Select * from Vencimentos where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nos,0) > 0) and csit = 2');
        //endi

        dbx_exec.Active := true;
        cds_exec.Active := true;

        while not cds_exec.Eof do
          begin
            totrecparc := totrecparc + cds_exec.fieldbyname('valor').asfloat;
            totGrec := totGrec + cds_exec.fieldbyname('valor').asfloat;
            Cds_exec.Next;
          end;
        //endw
        atottiporecdo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottiporecdo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + totrecparc;
        cds_tipo_pgto.Next;
      end;
    //endw

    //showmessage(    floattostr(    atottiporecdo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1]  )     ) ;

    //pagos
    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        totpagparc := 0;

        cds_exec.Active := false;
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        if cbxtipo.ItemIndex = 0 then
           dbx_exec.SQL.Add('Select * from Pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehentrega = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (csit = 2)');
        //endi
        if cbxtipo.ItemIndex = 1 then
           dbx_exec.SQL.Add('Select * from Pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehentrega = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nco,0) > 0) and (csit = 2)');
        //endi
        if cbxtipo.ItemIndex = 2 then
           dbx_exec.SQL.Add('Select * from Pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehentrega = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (nco is null) and (csit = 2)  and (nos is null)');
        //endi
        if cbxtipo.ItemIndex = 3 then
           dbx_exec.SQL.Add('Select * from Pagar where ('+'dtl >= '+quotedstr(sDataI)+') and (dtl <= '+quotedstr(sDataF)+') and (ehentrega = '+Quotedstr('T')+') and ( codtipop = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nos,0) > 0) and csit = 2');
        //endi

        dbx_exec.Active := true;
        cds_exec.Active := true;

        while not cds_exec.Eof do
          begin
            totpagparc := totpagparc + cds_exec.fieldbyname('valor').asfloat;
            totGpagl := totGpagl + cds_exec.fieldbyname('valor').asfloat;
            Cds_exec.Next;
          end;
        //endw
        atottipopaglq[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipopaglq[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + totpagparc;
        cds_tipo_pgto.Next;
      end;
    //endw

    saldovpecas := totvendapecas-totvdescp;
    saldocpecas :=  totcuspecas - totcusdevpecas;
    saldomobra := totmo - totvdescv;

    A := 70;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := formcolts;
       top := A;
       lblbase.Caption := 'Caixa de '+datetostr(dtpdatai.Date)+ ' até '+ datetostr(dtpdataf.date);
       parent := self;
       tag := 1;
    end;
    mmocaixa.Lines.Add(lblbase.caption);

    A := A + 32;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := formcolts;
       top := A;
       lblbase.Caption := 'FINANÇA';
       parent := self;
       tag := 1;
    end;
    mmocaixa.Lines.Add('');
    mmocaixa.Lines.Add(lblbase.caption);

    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := formcold1;
       top := A;
       lblbase.Caption := '(+)VENDAS(1)';
       parent := self;
       tag := 1;
    end;

    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := formcold2;
       top := A;
       lblbase.Caption := '(+)RECEBIDAS(2)';
       parent := self;
       tag := 1;
    end;

    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := formcold3;
       top := A;
       lblbase.Caption := '(-)PAGAS(3)';
       parent := self;
       tag := 1;
    end;

    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := formcold4;
       top := A;
       lblbase.Caption := '(=)TOTAL(4)';
       parent := self;
       tag := 1;
    end;


    mmocaixa.Lines.Add('                  (+)VENDAS');
    //                  xxxxxxxxxxxx xxx,xxx,xxx.xx

    i := 0;

    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin

        A := A + 16;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := tarightjustify;
           left := formcold1;
           top := A;
           lblbase.Caption := '';
           parent := self;
           tag := 1;
        end;

        if cds_indice.fieldbyname('codavista').asInteger = cds_tipo_pgto.fieldbyname('codigo').asInteger  then
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',totdinos);
                parent := self;
                tag := 1;
             end;

             if totdinos > 0 then
                begin
                  lstvalor.Items.Add( floattostr( totdinos )  );
                  fperc1 :=  totdinos/(totdinos+ftotarecber)*100  ;
                end;
             //endi



             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold2;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold2;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipoRecdo[ Cds_tipo_pgto.FieldByName('codigo').AsInteger-1  ]);
                parent := self;
                tag := 1;
             end;



             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold3;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold3;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipoPaglq[ Cds_tipo_pgto.FieldByName('codigo').AsInteger-1 ]);
                parent := self;
                tag := 1;
             end;


             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold4;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold4;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',totdinos+atotTipoRecdo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] - atotTipoPaglq[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1]);
                parent := self;
                tag := 1;
             end;



           end
        else
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);
                parent := self;
                tag := 1;
             end;

             if atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1] > 0 then
                begin
                  lstvalor.Items.Add(      floattostr(atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1])     );
                  fperc2 :=  atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]/(totdinos+ftotarecber)*100 ;
                end;
             //endi



             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold2;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold2;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipoRecdo[ Cds_tipo_pgto.FieldByName('codigo').AsInteger-1  ]);
                parent := self;
                tag := 1;
             end;



             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold3;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold3;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipoPaglq[ Cds_tipo_pgto.FieldByName('codigo').AsInteger-1 ]);
                parent := self;
                tag := 1;
             end;



             lblbase := tlabel.Create(self);
             with lblbase do begin
               alignment := tarightjustify;
               left := formcold4;
               top := A;
               lblbase.Caption := '';
               parent := self;
               tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
               alignment := tarightjustify;
               left := formcold4;
               top := A;
               lblbase.Caption := formatfloat('###,###,##0.00',atotTipoRecdo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + atotTipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] - atotTipoPaglq[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1]);
               parent := self;
               tag := 1;
             end;



           end;
        //endi

        lblbase := tlabel.Create(self);
        with lblbase do begin
          alignment := taleftjustify;
          left := formcolt;
          top := A;
          lblbase.Caption := chr(65+i)+') '+cds_tipo_pgto.fieldbyname('descricao').asString;
          parent := self;
          tag := 1;
        end;
        col1 := lblbase.Caption;

        if cds_indice.fieldbyname('codavista').asInteger = cds_tipo_pgto.fieldbyname('codigo').asInteger  then
           begin

             if (totdinos > 0) then
                 begin
                   lstRotulo.Items.Add(col1+' ('+formatfloat('##',fperc1)+'%)');
                 end;
             //endi

             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := formcolt+10;
                top := A;
                lblbase.Caption := '(+)Troco(2)';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',ftotingestao);
                parent := self;
                tag := 1;
             end;

             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := formcolt+10;
                top := A;
                lblbase.Caption := '(-)Sangria(3)';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',ftotsangria);
                parent := self;
                tag := 1;
             end;


             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := formcolt+10;
                top := A;
                lblbase.Caption := '(=)SubTotal(S1)';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := '';
                parent := self;
                tag := 1;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := formcold1;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotingestao-ftotsangria);
                parent := self;
                tag := 1;
             end;

           end
        else
           begin
             if (atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1] > 0) then
                 begin
                   lstRotulo.Items.Add(col1+' ('+formatfloat('##',fperc2)+'%)');
                 end;
             //endi

           end;
        //endi

        i := i + 1;
        cds_tipo_pgto.Next;
        if cds_tipo_pgto.eof   then
           break;
        //endi

      end;
    //endw

end;
//endth


A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt;
   top := A;
   lblbase.Caption :=     chr(65+i)+') VENDAS CANCELADAS:';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totvendac);
   parent := self;
   tag := 1;
end;

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt;
   top := A;
   lblbase.Caption :=     chr(65+i)+') ORÇAMENTO(S):';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',ftotorc);
   parent := self;
   tag := 1;
end;



A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1)';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber);
   parent := self;
   tag := 1;
end;

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1+2-3)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber+ftotingestao-ftotsangria);
   parent := self;
   tag := 1;
end;






A := A + 32;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt;
   top := A;
   lblbase.Caption := 'Lucro com Peças e Mão de Obra';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold2;
   top := A;
   lblbase.Caption := 'Realizado(1A+2-T3-I)';
   parent := self;
   tag := 1;
end;

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(+)Peças';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totvendapecas);
   parent := self;
   tag := 1;
end;




lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold2;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold2;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+totGrec-totpagas);
   parent := self;
   tag := 1;
end;


A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(-)Descontos';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totvdescp);
   parent := self;
   tag := 1;
end;





A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)Total(5)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',saldovpecas);
   parent := self;
   tag := 1;
end;



A := A + 32;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(+)Custos';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totcuspecas);
   parent := self;
   tag := 1;
end;


A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(-)Devoluções';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totcusdevpecas);
   parent := self;
   tag := 1;
end;

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)Total(6)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00', saldocpecas);
   parent := self;
   tag := 1;
end;




A := A + 32;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(+)Mão de Obra';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totmo);
   parent := self;
   tag := 1;
end;


A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(-)Desconto';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totvdescv);
   parent := self;
   tag := 1;
end;




A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)Total(7)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',saldomobra);
   parent := self;
   tag := 1;
end;


A := A + 32;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(+)Receita (2+5+7-6)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totGrec+saldovpecas-saldocpecas+saldomobra);
   parent := self;
   tag := 1;
end;



A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(-)Despesa(T3+I)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totpagas);
   parent := self;
   tag := 1;
end;



A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := formcolt+10;
   top := A;
   lblbase.Caption := '(=)Total(8)';
   parent := self;
   tag := 1;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := '';
   parent := self;
   tag := 1;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := formcold1;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totGrec+saldovpecas-saldocpecas+saldomobra-totpagas);
   parent := self;
   tag := 1;
end;


CriaSeries;
MontaSerie(sSerie, LstValor.Items, lstRotulo.Items);

iNum := 1;


end;

Procedure Tfrmcaixaapa.CriaSeries;
begin

  sSerie := tPieSeries.Create(Self);
  sSerie.ParentChart := GraGrafico;
  sSerie.Title := 'Movimento';



end;

procedure Tfrmcaixaapa.MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
var
  K: Integer;
begin
  SR.Clear;
  for K := 0 to LR.Count - 1 do
    SR.Add(StrTofloat(LR[K]), RR[K], clTeeColor);


  //S.Add(StrToInt(L[I]), inttostr(StrToInt(R[I])), clTeeColor);
  //S.Add(StrToInt(L[I]), ShortMonthNames[I+1], clTeeColor)

end;


procedure TfrmCaixaApa.spdlimparClick(Sender: TObject);
var
  x:integer;

begin


  cbxtipo.ItemIndex := 0;

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  spdfiltrar.Click;

end;

procedure TfrmCaixaApa.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure TfrmCaixaApa.cbxtipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmCaixaApa.spdsangriaClick(Sender: TObject);
begin
frmsangriap := tfrmsangriap.create(self);
frmsangriap.showmodal;
frmsangriap.free;

end;

procedure TfrmCaixaApa.spdtrocoClick(Sender: TObject);
begin
frmingestaop := tfrmingestaop.create(self);
frmingestaop.showmodal;
frmingestaop.free;

end;

procedure TfrmCaixaApa.spdimpcaixaClick(Sender: TObject);
begin

  sgdataib := datetostr(dtpdatai.Date);
  sgdatai  := datetostr(dtpdatai.Date);
  sgdatai  := bar_is_point(sgdatai);

  sgdatafb := datetostr(dtpdataf.Date);
  sgdataf  := datetostr(dtpdataf.Date);
  sgdataf  := bar_is_point(sgdataf);

  with frmdados do
    begin
      cds_vendab.Active := false;
      dbx_vendab.Active := false;
      dbx_vendab.SQL.Clear;
      dbx_vendab.SQL.Add('Select * from vendab where (data_op >= '+quotedstr(sgdatai)+') and (data_op <= '+quotedstr(sgdataf)+') and (ehvenda = '+quotedstr('T')+')' );
      dbx_vendab.Active := true;
      cds_vendab.Active := true;

      //showmessage(inttostr(cds_vendab.RecordCount));

      cds_dvenda.Active := false;
      dbx_dvenda.Active := false;
      dbx_dvenda.SQL.Clear;
      dbx_dvenda.SQL.Add('Select * from dvenda where (data_op >= '+quotedstr(sgdatai)+') and (data_op <= '+quotedstr(sgdataf)+') and (ehvenda = '+quotedstr('T')+')' );
      dbx_dvenda.Active := true;
      cds_dvenda.Active := true;

      cds_ent_prod.Active := false;
      dbx_ent_prod.Active := false;
      dbx_ent_prod.SQL.Clear;
      dbx_ent_prod.SQL.Add('Select * from ent_prod where (data_ent >= '+quotedstr(sgdatai)+') and (data_ent <= '+quotedstr(sgdataf)+') and (ehentrega = '+quotedstr('T')+')' );
      dbx_ent_prod.Active := true;
      cds_ent_prod.Active := true;

    end;
  //endi
  frmrelmovprod := tfrmrelmovprod.Create(self);
  frmrelmovprod.relatorio.Preview;
  frmrelmovprod.Free;
end;

procedure TfrmCaixaApa.spdgraficoClick(Sender: TObject);
begin
if gragrafico.Visible then
   gragrafico.Visible := false
else
   gragrafico.Visible := true;
//endi
end;

procedure TfrmCaixaApa.FormCreate(Sender: TObject);
begin
iNum := 0;
end;

end.


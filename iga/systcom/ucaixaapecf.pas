unit ucaixaapecf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, ExtCtrls, jpeg, Mask, ComCtrls, SayPrint,
  TeeProcs, TeEngine, Chart, Series;

type
  Tfrmcaixaapecf = class(TForm)
    lblcodigo: TLabel;
    pnlsuperior: TPanel;
    sPdGravar: TSpeedButton;
    spdcancela: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    spdFiltrar: TSpeedButton;
    spdLimpar: TSpeedButton;
    lblpecas: TLabel;
    lblmao: TLabel;
    lblimp: TLabel;
    lblmostrar: TLabel;
    Label1: TLabel;
    lblparc: TLabel;
    dtpdataI: TDateTimePicker;
    dtpdataf: TDateTimePicker;
    PrintCaixa: TSayPrint;
    lblcab2: TLabel;
    mmocaixa: TMemo;
    lstrotulo: TListBox;
    lstvalor: TListBox;
    GraGrafico: TChart;
    procedure FormShow(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdFiltrarClick(Sender: TObject);
    procedure spdLimparClick(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CriaSeries;
    procedure MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);


  private
    { Private declarations }
    pNumPag,pNumItem,aCodMod,aCodFun:Integer;
    pTotPeca, pTotMao:Real;
    sSerie : tpieseries;


  public
    { Public declarations }
  end;

var
  frmcaixaapecf: Tfrmcaixaapecf;

implementation

uses uDados, uGeral;

{$R *.DFM}

procedure Tfrmcaixaapecf.FormShow(Sender: TObject);
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

dtpdatai.Enabled := false;
dtpdataf.Enabled := false;

lblCab2.Caption := frmdados.Cds_Config.FieldByName('Campo2').asString;
spdlimpar.Click;

if bCaixaApsVendabP then
   begin
     dtpdatai.Enabled := true;
     dtpdataf.Enabled := true;
   end;
//endi

end;

procedure Tfrmcaixaapecf.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcaixaapecf.spdFiltrarClick(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto, col1, col2, col3, col4, col5, sDataI, sDataf:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
      ano, mes, dia :word;
      aTotTipo, aTotTipoRecdo, atottipopaglq:array of real;
      aLinha:array of string;
      i:integer;
  Var
    totpagas, totpagar, totdinOS, totparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao:real;
begin
with frmdados do
  begin
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

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and (coalesce (nco,0) > 0)');
    dbx_exec.Active := true;

    ftotarecber := dbx_exec.fieldbyname('totarecber').asfloat;

    cds_tipo_pgto.Active := false;
    dbx_tipo_pgto.Active := false;
    dbx_tipo_pgto.SQL.Clear;
    dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto order by codigo');
    dbx_tipo_pgto.Active := true;
    cds_tipo_pgto.Active := true;

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

    cds_svenda.Active := false;
    dbx_svenda.Active := false;
    dbx_svenda.SQL.Clear;
    dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (coalesce (nco,0) > 0)');
    dbx_svenda.Active := true;
    cds_svenda.Active := true;

    while not cds_svenda.Eof do
      begin

        //showmessage(cds_svenda.fieldbyname('liquido').asString);

        if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totgpagar').asfloat then
           totdinOS := totdinOS + cds_svenda.fieldbyname('totgpagar').asfloat
        else
           totdinOS := totdinOS + cds_svenda.fieldbyname('din').asfloat;
        //endi

        cds_svenda.Next;


      end;
    //endi

    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        totParcOs := 0;

        cds_Vencto.Active := false;
        dbx_Vencto.Active := false;
        dbx_Vencto.SQL.Clear;
        dbx_Vencto.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nco,0) > 0)');
        dbx_Vencto.Active := true;
        cds_Vencto.Active := true;

        while not cds_vencto.Eof do
          begin
            totParcOs := totParcOs + cds_Vencto.fieldbyname('valorreal').asfloat;
            totGParcOs := totGParcOs + cds_Vencto.fieldbyname('valorreal').asfloat;
            Cds_Vencto.Next;
          end;
        //endw
        atottipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + totparcOs;
        cds_tipo_pgto.Next;
      end;
    //endw

    cds_sangria.Active := false;
    dbx_sangria.Active := false;
    dbx_sangria.SQL.Clear;
    dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and (origem = 1)');
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
    dbx_ingestao.SQL.Add('Select * from ingestao where (origem = 1)');
    dbx_ingestao.Active := true;
    cds_ingestao.Active := true;

    while not cds_ingestao.Eof do
      begin
        ftotingestao := ftotingestao + cds_ingestao.fieldbyname('valor').asfloat;
        cds_ingestao.Next;
      end;
    //endi


    //showmessage(floattostr(ftotingestao));


    A := 70;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'Caixa de '+datetostr(dtpdatai.Date)+ ' até '+ datetostr(dtpdataf.date);
       parent := self;
    end;
    mmocaixa.Lines.Add(lblbase.caption);

    A := A + 32;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'FINANÇAS';
       parent := self;
    end;
    mmocaixa.Lines.Add('');
    mmocaixa.Lines.Add(lblbase.caption);


    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := 120;
       top := A;
       lblbase.Caption := '(+)VENDAS(1)';
       parent := self;
    end;


    mmocaixa.Lines.Add('                  (+)VENDAS');
    //                  xxxxxxxxxxxx xxx,xxx,xxx.xx


    i := 0;

    cds_tipo_pgto.First;
    while not cds_tipo_pgto.eof do
      begin

        A := A + 16;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := tarightjustify;
           left := 80;
           top := A;
           lblbase.Caption := '';
           parent := self;
        end;
        lblbase := tlabel.Create(self);
        with lblbase do begin
          alignment := taleftjustify;
          left := 8;
          top := A;
          lblbase.Caption := chr(65+i)+') '+cds_tipo_pgto.fieldbyname('descricao').asString;
          parent := self;
        end;
        col1 := lblbase.Caption;
        lstRotulo.Items.Add(col1);



        if cds_indice.fieldbyname('codavista').asInteger = cds_tipo_pgto.fieldbyname('codigo').asInteger  then
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',totdinos);
                parent := self;
             end;

             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(+)Troco(2)';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',ftotingestao);
                parent := self;
             end;

             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(-)Sangria(3)';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',ftotsangria);
                parent := self;
             end;


             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(=)SubTotal(S1)';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotingestao-ftotsangria);
                parent := self;
             end;


             lstvalor.Items.Add( floattostr( totdinos )  );

           end
        else
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := formatfloat('###,###,##0.00',atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);
                parent := self;
             end;

             lstvalor.Items.Add(      floattostr(atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1])     );

           end;
        //endi

        i := i + 1;
        cds_tipo_pgto.Next;
      end;
    //endw

end;
//endth

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 16;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1)';
   parent := self;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := '';
   parent := self;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber);
   parent := self;
end;

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 16;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1+2-3)';
   parent := self;
end;

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := '';
   parent := self;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber+ftotingestao-ftotsangria);
   parent := self;
end;







CriaSeries;
MontaSerie(sSerie, LstValor.Items, lstRotulo.Items);

end;

procedure Tfrmcaixaapecf.spdLimparClick(Sender: TObject);
begin
dtpdatai.Date := date;
dtpdataf.Date := date;
spdfiltrar.Click;
end;

procedure Tfrmcaixaapecf.sPdGravarClick(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto, col1, col2, col3, col4, col5, sDataI, sDataf, S1, simp:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
      ano, mes, dia :word;
      aTotTipo, aTotTipoRecdo, atottipopaglq:array of real;
      aLinha:array of string;
      i, L, x:integer;



  Var
    totpagas, totpagar, totdinOS, totparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao:real;
begin

printcaixa.BeginPrn;



with frmdados do
  begin


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

    col1 := '';
    col2 := '';
    col3 := '';
    col4 := '';
    col5 := '';

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

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select coalesce(sum(valorreal),0) as totarecber from Vencimentos where (dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and (coalesce (nco,0) > 0)');
    dbx_exec.Active := true;

    ftotarecber := dbx_exec.fieldbyname('totarecber').asfloat;

    cds_tipo_pgto.Active := false;
    dbx_tipo_pgto.Active := false;
    dbx_tipo_pgto.SQL.Clear;
    dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto order by codigo');
    dbx_tipo_pgto.Active := true;
    cds_tipo_pgto.Active := true;

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

    cds_svenda.Active := false;
    dbx_svenda.Active := false;
    dbx_svenda.SQL.Clear;
    dbx_svenda.SQL.Add('Select * from svenda where ('+'datafec >= '+quotedstr(sDataI)+') and (datafec <= '+quotedstr(sDataF)+') and (lancado = '+Quotedstr('T')+') and (coalesce (nco,0) > 0)');
    dbx_svenda.Active := true;
    cds_svenda.Active := true;

    while not cds_svenda.Eof do
      begin

        //showmessage(cds_svenda.fieldbyname('liquido').asString);

        if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totgpagar').asfloat then
           totdinOS := totdinOS + cds_svenda.fieldbyname('totgpagar').asfloat
        else
           totdinOS := totdinOS + cds_svenda.fieldbyname('din').asfloat;
        //endi

        cds_svenda.Next;


      end;
    //endi

    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        totParcOs := 0;

        cds_Vencto.Active := false;
        dbx_Vencto.Active := false;
        dbx_Vencto.SQL.Clear;
        dbx_Vencto.SQL.Add('Select * from Vencimentos where ('+'dte >= '+quotedstr(sDataI)+') and (dte <= '+quotedstr(sDataF)+') and (ehvenda = '+Quotedstr('T')+') and ( c_tipo_pgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and (coalesce (nco,0) > 0)');
        dbx_Vencto.Active := true;
        cds_Vencto.Active := true;

        while not cds_vencto.Eof do
          begin
            totParcOs := totParcOs + cds_Vencto.fieldbyname('valorreal').asfloat;
            totGParcOs := totGParcOs + cds_Vencto.fieldbyname('valorreal').asfloat;
            Cds_Vencto.Next;
          end;
        //endw
        atottipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + totparcOs;
        cds_tipo_pgto.Next;
      end;
    //endw

    cds_sangria.Active := false;
    dbx_sangria.Active := false;
    dbx_sangria.SQL.Clear;
    dbx_sangria.SQL.Add('Select * from sangria where ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and (origem = 1)');
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
    dbx_ingestao.SQL.Add('Select * from ingestao where (origem = 1)');
    dbx_ingestao.Active := true;
    cds_ingestao.Active := true;

    while not cds_ingestao.Eof do
      begin
        ftotingestao := ftotingestao + cds_ingestao.fieldbyname('valor').asfloat;
        cds_ingestao.Next;
      end;
    //endi


    //showmessage(floattostr(ftotingestao));


    printcaixa.Condensed(false);
    printcaixa.Expand(True);

    for x := 1 to (( 24  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
       begin
         s1 := (s1 + ' ');
       end;
    //endfor
    sImp := s1+Cds_Config.fieldbyname('campo2').asString;
    printcaixa.Say(0,0,sImp);
    printcaixa.Expand(false);

    A := 70;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'Caixa de '+datetostr(dtpdatai.Date)+ ' até '+ datetostr(dtpdataf.date);
       parent := self;
    end;
    printcaixa.Say(2,1,lblbase.caption);


    A := A + 32;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'APURACAO';
       parent := self;
    end;
    printcaixa.Say(3,1,'');
    printcaixa.Say(4,1,lblbase.caption);

    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := 120;
       top := A;
       lblbase.Caption := '(+)VENDAS(1)';
       parent := self;
    end;
    printcaixa.Say(5,1,'');
    printcaixa.Say(6,34,lblbase.caption);


    i := 0;
    L:= 7;


    cds_tipo_pgto.First;
    while not cds_tipo_pgto.eof do
      begin

        A := A + 16;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := tarightjustify;
           left := 80;
           top := A;
           lblbase.Caption := '';
           parent := self;
        end;
        lblbase := tlabel.Create(self);
        with lblbase do begin
          alignment := taleftjustify;
          left := 8;
          top := A;
          lblbase.Caption := chr(65+i)+') '+cds_tipo_pgto.fieldbyname('descricao').asString;
          parent := self;
        end;
        col1 := lblbase.Caption;
        printcaixa.Say(L,1,lblbase.caption);



        if cds_indice.fieldbyname('codavista').asInteger = cds_tipo_pgto.fieldbyname('codigo').asInteger  then
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                //lblbase.Caption := formatfloat('###,###,##0.00',totdinos);
                lblbase.Caption := AlinNumD(10,totdinos);
                parent := self;
             end;
             printcaixa.Say(L,36,lblbase.caption);

             L := L + 1;
             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(+)Troco(2)';
                parent := self;
             end;
             printcaixa.Say(L,5,lblbase.caption);

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                //lblbase.Caption := formatfloat('###,###,##0.00',ftotingestao);
                lblbase.Caption := AlinNumD(10,ftotingestao);
                parent := self;
             end;
             printcaixa.Say(L,36,lblbase.caption);


             L := L + 1;
             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(-)Sangria(3)';
                parent := self;
             end;
             printcaixa.Say(L,5,lblbase.caption);


             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                //lblbase.Caption := formatfloat('###,###,##0.00',ftotsangria);
                lblbase.Caption := AlinNumD(10,ftotsangria);


                parent := self;
             end;
             printcaixa.Say(L,36,lblbase.caption);


             L := L + 1;
             A := A + 16;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := taleftjustify;
                left := 20;
                top := A;
                lblbase.Caption := '(=)SubTotal(S1)';
                parent := self;
             end;
             printcaixa.Say(L,5,lblbase.caption);

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                //lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotingestao-ftotsangria);
                lblbase.Caption := AlinNumD(10,totdinos+ftotingestao-ftotsangria);

                parent := self;
             end;
             printcaixa.Say(L,36,lblbase.caption);



           end
        else
           begin

             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                lblbase.Caption := '';
                parent := self;
             end;
             lblbase := tlabel.Create(self);
             with lblbase do begin
                alignment := tarightjustify;
                left := 120;
                top := A;
                //lblbase.Caption := formatfloat('###,###,##0.00',atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);
                lblbase.Caption := AlinNumD(10,atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);

                parent := self;
             end;


             printcaixa.Say(L,36,lblbase.caption);



           end;
        //endi

        L := L + 1;
        i := i + 1;

        cds_tipo_pgto.Next;
      end;
    //endw

end;
//endth

A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 16;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1)';
   parent := self;
end;
printcaixa.Say(L,5,lblbase.caption);

lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := '';
   parent := self;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber);
   lblbase.Caption := AlinNumD(10,totdinos+ftotarecber);

   parent := self;
end;

printcaixa.Say(L,36,lblbase.caption);



L := L + 1;
A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 16;
   top := A;
   lblbase.Caption := '(=)TOTAL(T1+2-3)';
   parent := self;
end;
printcaixa.Say(L,5,lblbase.caption);



lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   lblbase.Caption := '';
   parent := self;
end;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := tarightjustify;
   left := 120;
   top := A;
   //lblbase.Caption := formatfloat('###,###,##0.00',totdinos+ftotarecber+ftotingestao-ftotsangria);

   lblbase.Caption := AlinNumD(10,totdinos+ftotarecber+ftotingestao-ftotsangria);
   parent := self;
end;

printcaixa.Say(L,36,lblbase.caption);

L := L + 2;
printcaixa.Say(L,1,'Impresso em '+datetimetostr(now));

for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
  begin
     L := L + 1;
     printcaixa.Say(L,0,'');
  end;
//endi





printcaixa.EndPrn;






end;

procedure Tfrmcaixaapecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

Procedure Tfrmcaixaapecf.CriaSeries;
begin

  sSerie := tPieSeries.Create(Self);
  sSerie.ParentChart := GraGrafico;
  sSerie.Title := 'Movimento';
  


end;

procedure Tfrmcaixaapecf.MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
var
  K: Integer;
begin
  SR.Clear;
  for K := 0 to LR.Count - 1 do
    SR.Add(StrTofloat(LR[K]), RR[K], clTeeColor);


  //S.Add(StrToInt(L[I]), inttostr(StrToInt(R[I])), clTeeColor);
  //S.Add(StrToInt(L[I]), ShortMonthNames[I+1], clTeeColor)

end;



end.

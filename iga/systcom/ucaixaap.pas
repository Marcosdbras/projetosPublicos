unit ucaixaap;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, ExtCtrls, jpeg, Mask, ComCtrls, SayPrint,
  TeeProcs, TeEngine, Chart, Series, FMTBcd, SqlExpr;

type
  Tfrmcaixaap = class(TForm)
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
    sql_itensvendidos: TSQLQuery;
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

    canal_impressora:string;


  public
    { Public declarations }
  end;

var
  frmcaixaap: Tfrmcaixaap;

implementation

uses uDados, uGeral;

{$R *.DFM}

procedure Tfrmcaixaap.FormShow(Sender: TObject);
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
spdlimpar.Click;


case itipoimpf of
       0:begin
           // Nenhuma

           canal_impressora := frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString;

           if pos('\\',frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString) > 0 then
              begin

                printcaixa.Porta :=    PrnNet;
                printcaixa.NetImpress := frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString;

              end
           else
              begin

                 if pos(':',frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString) > 0 then
                    begin

                      printcaixa.Porta :=    PrnFile;
                      printcaixa.OutputFile := frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString;

                    end
                 else
                    begin


                      printcaixa.Porta :=    Lpt1;



                    end;
                 //endi


              end;


           //endi



           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;

       else exit;

  end;



end;

procedure Tfrmcaixaap.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcaixaap.spdFiltrarClick(Sender: TObject);
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
       lblbase.Caption := 'APURACAO';
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

procedure Tfrmcaixaap.spdLimparClick(Sender: TObject);
begin
dtpdatai.Date := date;
dtpdataf.Date := date;
spdfiltrar.Click;
end;

procedure Tfrmcaixaap.sPdGravarClick(Sender: TObject);

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

      s_titulo, s_espaco, s_valor:string;
      s_espaco1, s_espaco2, s_espaco3, s_espaco4, s_espaco5, s_espaco6:string;
      F:textfile;




  Var
    totpagas, totpagar, totdinOS, totparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao:real;

  Var
    sfun,nprod,cprod:string;
    qtde,preco,precototal,seous:string;



begin


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


    for x := 1 to (( 24  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
       begin
         s1 := (s1 + ' ');
       end;
    //endfor
    sImp := s1+Cds_Config.fieldbyname('campo2').asString;

    AssignFile(F, canal_impressora);
    Rewrite(F);

    Write(F,#27,#77,1);

    Writeln(F,sImp);

    Writeln(F,  'Caixa de '+datetostr(dtpdatai.Date)+ ' até '+ datetostr(dtpdataf.date)  );

    writeln(F,'APURACAO');

    writeln(F,'(+)VENDAS(1)');

    cds_tipo_pgto.First;
    while not cds_tipo_pgto.eof do
      begin

        s_titulo := chr(65+i)+') '+cds_tipo_pgto.fieldbyname('descricao').asString;

        s_espaco := '';

        for x := 0 to ( 30 - length(s_titulo) ) do
           begin

             s_espaco := s_espaco + ' ';

           end;
        //endfor

        if cds_indice.fieldbyname('codavista').asInteger = cds_tipo_pgto.fieldbyname('codigo').asInteger  then
           begin


             s_valor := AlinNumD(10,totdinos);

             writeln(F,s_titulo + s_espaco + s_valor);

             s_valor := AlinNumD(10,ftotingestao);

             writeln(F,'   (+)Troco(2).....: '+s_valor);

             s_valor := AlinNumD(10,ftotsangria);

             writeln(F,'   (-)Sangria(3)...: '+s_valor);

             s_valor := AlinNumD(10,totdinos+ftotingestao-ftotsangria);

             writeln(F,'   (=)SubTotal(S1).: '+s_valor);

           end
        else
           begin

             s_valor := AlinNumD(10,atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);

             writeln(F,s_titulo + s_espaco + s_valor);


           end;
        //endi

        i := i + 1;

        cds_tipo_pgto.Next;
      end;
    //endw

end;
//endth

writeln(F,'');

s_valor := AlinNumD(10,totdinos+ftotarecber);

writeln(F,'(=)TOTAL(T1)......: '+s_valor);

s_valor := AlinNumD(10,totdinos+ftotarecber+ftotingestao-ftotsangria);

writeln(F,'(=)TOTAL(T1+2-3)..: '+s_valor);


    sql_itensvendidos.Active := false;
    sql_itensvendidos.SQL.Clear;
    sql_itensvendidos.SQL.Add('select f.nome as nomefun, s.cfun, b.npro as nomeproduto, b.qtde as quantidade, b.prve as preco, b.subtotal as precototal, b.cpro as codprod, s.datafec, b.eous from svenda s  ');
    sql_itensvendidos.SQL.Add('inner join vendab b on s.codigo=b.codsvenda inner join funcionarios f on s.cfun = f.codigo ');
    sql_itensvendidos.SQL.Add('where (s.datafec >= '+quotedstr(sDataI)+') and (s.datafec <= '+  quotedstr(sDataF)+') '  );
    sql_itensvendidos.SQL.Add('order by s.cfun' );


    sql_itensvendidos.Active := true;


    writeln(F,'');
    writeln(F,'Itens Vendidos');
    writeln(F,'Vendedor       Qtde Descrição        Codigo    Preço    Total');
    //         xxxxxxxxxx xxxxxxxx xxxxxxxxxxxxxxxx xxxxxx xxxxxxxx xxxxxxxx x

    while not sql_itensvendidos.Eof do
      begin

        sfun :=  copy(sql_itensvendidos.fieldbyname('nomefun').asstring,1,10);
        nprod :=  copy(sql_itensvendidos.fieldbyname('nomeproduto').asstring,1,16);
        cprod :=  copy(sql_itensvendidos.fieldbyname('codprod').asstring,1,6);
        qtde := AlinNumD(8,sql_itensvendidos.fieldbyname('quantidade').asfloat);
        preco := AlinNumD(8,sql_itensvendidos.fieldbyname('preco').asfloat);
        precototal := AlinNumD(8,sql_itensvendidos.fieldbyname('precototal').asfloat);
        seous :=  copy(sql_itensvendidos.fieldbyname('eous').asstring,1,1);


        s_espaco1 := '';
        s_espaco2 := '';
        s_espaco3 := '';
        s_espaco4 := '';
        s_espaco5 := '';
        s_espaco6 := '';


        for x := 0 to (10 - length(   sfun     ) ) do
            begin
              s_espaco1 := s_espaco1 + ' ';
            end;

        for x := 0 to (8 - length(   qtde     ) ) do
            begin
              s_espaco2 :=  ' ' + s_espaco2;
            end;

        for x := 0 to (16 - length(   nprod     ) ) do
            begin
              s_espaco3 := s_espaco3 + ' ';
            end;

        for x := 0 to (6 - length(   cprod     ) ) do
            begin
              s_espaco4 := s_espaco4 + ' ';
            end;

        for x := 0 to (8 - length(   preco     ) ) do
            begin
              s_espaco5 := ' ' + s_espaco5;
            end;

        for x := 0 to (8 - length(   precototal     ) ) do
            begin
              s_espaco6 := ' ' + s_espaco6;
            end;


        writeln(F,sfun + s_espaco1 + qtde + ' ' + nprod + s_espaco3 + cprod + s_espaco4 + preco +' '+ precototal + ' '+seous);



        sql_itensvendidos.Next;


      end;
   //endw




writeln(F,'Impresso em '+datetimetostr(now));

for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
  begin

    writeln(F,'');

  end;
//endi

closefile(F);


end;

procedure Tfrmcaixaap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

Procedure Tfrmcaixaap.CriaSeries;
begin

  sSerie := tPieSeries.Create(Self);
  sSerie.ParentChart := GraGrafico;
  sSerie.Title := 'Movimento';



end;

procedure Tfrmcaixaap.MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
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

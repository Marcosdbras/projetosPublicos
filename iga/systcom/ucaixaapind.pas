unit ucaixaapind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, ExtCtrls, jpeg, Mask, ComCtrls, SayPrint,
  TeeProcs, TeEngine, Chart, Series, Grids, DBGrids, DBCtrls, FMTBcd,
  SqlExpr;

type
  Tfrmcaixaapind = class(TForm)
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
    DBGrid1: TDBGrid;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    Label2: TLabel;
    cbxusucai: TDBLookupComboBox;
    sql_itensvendidos: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdFiltrarClick(Sender: TObject);
    procedure spdLimparClick(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CriaSeries;
    procedure MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);


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
  frmcaixaapind: Tfrmcaixaapind;

implementation

uses uDados, uGeral;

{$R *.DFM}

procedure Tfrmcaixaapind.FormShow(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
  Var
    dia,mes,ano:word;
begin

  cbxusucai.Enabled := false;
  dtpdatai.Enabled:= false;
  dtpdataf.Enabled:= false;



  frmdados.Cds_Usuarios.Active := false;
  frmdados.Dbx_Usuarios.Active := false;
  frmdados.Dbx_Usuarios.SQL.Clear;
  frmdados.Dbx_Usuarios.SQL.Add('Select * from usuarios');
  frmdados.Dbx_Usuarios.Active := true;
  frmdados.Cds_Usuarios.Active := true;

  frmdados.Cds_temp.Active := false;
  frmdados.Dbx_temp.Active := false;
  frmdados.Dbx_temp.SQL.Clear;
  frmdados.Dbx_temp.SQL.Add('Select * from temp');
  frmdados.Dbx_temp.Active := true;
  frmdados.Cds_temp.Active := true;


  VarDir := Extractfilepath(Application.exename);


  frmdados.cds_caixa.Active := true;


  tabela := 'Temp';

  frmdados.cds_temp.Edit;
  frmdados.cds_temp.fieldbyname('cod').AsInteger := icusu;


  tabela := 'Vendab';

  lblCab2.Caption := frmdados.Cds_Config.FieldByName('Campo2').asString;
  edincopias.Text := frmdados.Cds_Indice.fieldbyname('ncopiasv').asString;
  spdlimpar.Click;

  if bvisuaoutrocaixa then
     cbxusucai.Enabled := true;

  if bcaixaperiodo then
     begin
       dtpdatai.Enabled:= true;
       dtpdataf.Enabled:= true;
     end;


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

procedure Tfrmcaixaapind.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcaixaapind.spdFiltrarClick(Sender: TObject);
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
      iccaixa:integer;
  Var
    totpagas, totpagar, totdinOS, ftotparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao, ftotAbertura, ftotcredg, ftotcanc:real;
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
    ftotparcOs := 0;
    ftotcredg := 0;
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
    ftotAbertura := 0;
    ftotcredg := 0;
    ftotcanc := 0;

    col1 := '';
    col2 := '';
    col3 := '';
    col4 := '';
    col5 := '';

    mmocaixa.Lines.Clear;

    VarDir := Extractfilepath(Application.exename);

    dbgrid1.SetFocus;


    sDataI := datetostr(dtpdatai.Date);
    //sDataI := bar_is_point( sDataI  );

    sDataF := datetostr(dtpdataF.Date);
    //sDataF := bar_is_point( sDataF  );


    iccaixa := cds_temp.fieldbyname('cod').AsInteger;

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select Max(codigo) as MaiorCodigo from tipo_pgto');
    dbx_exec.Active := true;

    setlength(aTottipo,dbx_exec.fieldbyname('MaiorCodigo').asInteger );



    cds_tipo_pgto.Active := false;
    dbx_tipo_pgto.Active := false;
    dbx_tipo_pgto.SQL.Clear;
    dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto order by codigo');
    dbx_tipo_pgto.Active := true;
    cds_tipo_pgto.Active := true;



    cds_caixa.Filtered := false;
    cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99990 ) and ( op = '+ quotedstr('D') +') and ( cusu = '+ inttostr(iccaixa) +')';
    cds_caixa.Filtered := true;

    while not cds_caixa.Eof do
      begin
        ftotcanc := ftotcanc + cds_caixa.fieldbyname('valor').asfloat;
        Cds_caixa.Next;
      end;
    //endw



    cds_caixa.Filtered := false;
    cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99999 ) and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
    cds_caixa.Filtered := true;

    while not cds_caixa.Eof do
      begin
        ftotAbertura := ftotAbertura + cds_caixa.fieldbyname('valor').asfloat;
        Cds_caixa.Next;
      end;
    //endw


    cds_caixa.Filtered := false;
    cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99998 ) and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
    cds_caixa.Filtered := true;

    while not cds_caixa.Eof do
      begin
        ftotIngestao := ftotIngestao + cds_caixa.fieldbyname('valor').asfloat;
        Cds_caixa.Next;
      end;
    //endw


    cds_caixa.Filtered := false;
    cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99997 ) and ( op = '+ quotedstr('D') +') and ( cusu = '+ inttostr(iccaixa) +')';
    cds_caixa.Filtered := true;

    while not cds_caixa.Eof do
      begin
        ftotSangria := ftotSangria + cds_caixa.fieldbyname('valor').asfloat;
        Cds_caixa.Next;
      end;
    //endw



    cds_tipo_pgto.First;
    while not cds_tipo_pgto.Eof do
      begin
        ftotParcOs := 0;


        cds_caixa.Filtered := false;
        cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
        cds_caixa.Filtered := true;

        while not cds_caixa.Eof do
          begin
            ftotParcOs := ftotParcOs + cds_caixa.fieldbyname('valor').asfloat;
            ftotcredg := ftotcredg + cds_caixa.fieldbyname('valor').asfloat;
            Cds_caixa.Next;
          end;
        //endw
        atottipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + ftotparcOs;
        cds_tipo_pgto.Next;
      end;
    //endw
    
    


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


    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'ABERTURA';
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
       lblbase.Caption := formatfloat('###,###,##0.00',ftotAbertura);
       parent := self;
    end;


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
   left := 8;
   top := A;
   lblbase.Caption := 'SUPRIMENTO';
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
   lblbase.Caption := formatfloat('###,###,##0.00',ftotIngestao);
   parent := self;
end;


A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 8;
   top := A;
   lblbase.Caption := 'SANGRIA';
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
   lblbase.Caption := formatfloat('###,###,##0.00',ftotSangria);
   parent := self;
end;




A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 8;
   top := A;
   lblbase.Caption := 'CANCELADO';
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
   lblbase.Caption := formatfloat('###,###,##0.00',ftotcanc);
   parent := self;
end;





A := A + 16;
lblbase := tlabel.Create(self);
with lblbase do begin
   alignment := taleftjustify;
   left := 8;
   top := A;
   lblbase.Caption := 'TOTAL';
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
   lblbase.Caption := formatfloat('###,###,##0.00',ftotAbertura+ftotcredg+ftotingestao-ftotsangria-ftotcanc);
   parent := self;
end;

CriaSeries;
MontaSerie(sSerie, LstValor.Items, lstRotulo.Items);

frmdados.cds_caixa.Filtered := false;
frmdados.cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( cusu = '+ inttostr(iccaixa) +')';
frmdados.cds_caixa.Filtered := true;

end;

procedure Tfrmcaixaapind.spdLimparClick(Sender: TObject);
begin
dtpdatai.Date := date;
dtpdataf.Date := date;
spdfiltrar.Click;
end;

procedure Tfrmcaixaapind.sPdGravarClick(Sender: TObject);

  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto, col1, col2, col3, col4, col5, sDataI, sDataf, S1, simp:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
      ano, mes, dia :word;
      aTotTipo, aTotTipoRecdo, atottipopaglq:array of real;
      aLinha:array of string;
      i, L, x, z:integer;
      iccaixa:integer;

      s_titulo, s_espaco, s_valor:string;
      s_espaco1, s_espaco2, s_espaco3, s_espaco4, s_espaco5, s_espaco6:string;
      F:textfile;




  Var
    totpagas, totpagar, totdinOS, ftotparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao, ftotAbertura, ftotcredg:real;

  Var
    sfun,nprod,cprod:string;
    qtde,preco,precototal,seous:string;
    s_anterior:string;


begin


z:= 0;

iccaixa := frmdados.Cds_Temp.fieldbyname('cod').AsInteger;

while z < strtoint(edincopias.Text) do
  begin

    with frmdados do
      begin

        totvendac := 0;
        totpagas := 0;
        totpagar := 0;
        totdinOS := 0;
        ftotparcOs := 0;
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


        sDataF := datetostr(dtpdataF.Date);


        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select Max(codigo) as MaiorCodigo from tipo_pgto');
        dbx_exec.Active := true;

        setlength(aTottipo,dbx_exec.fieldbyname('MaiorCodigo').asInteger );

        cds_tipo_pgto.Active := false;
        dbx_tipo_pgto.Active := false;
        dbx_tipo_pgto.SQL.Clear;
        dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto order by codigo');
        dbx_tipo_pgto.Active := true;
        cds_tipo_pgto.Active := true;

        s_anterior := cds_caixa.Filter;

        cds_caixa.Filtered := false;
        cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99999 ) and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
        cds_caixa.Filtered := true;

        while not cds_caixa.Eof do
          begin
            ftotAbertura := ftotAbertura + cds_caixa.fieldbyname('valor').asfloat;
            Cds_caixa.Next;
          end;
        //endw


        cds_caixa.Filtered := false;
        cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99998 ) and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
        cds_caixa.Filtered := true;

        while not cds_caixa.Eof do
          begin
            ftotIngestao := ftotIngestao + cds_caixa.fieldbyname('valor').asfloat;
            Cds_caixa.Next;
          end;
        //endw


        cds_caixa.Filtered := false;
        cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = 99997 ) and ( op = '+ quotedstr('D') +') and ( cusu = '+ inttostr(iccaixa) +')';
        cds_caixa.Filtered := true;

        while not cds_caixa.Eof do
          begin
            ftotSangria := ftotSangria + cds_caixa.fieldbyname('valor').asfloat;
            Cds_caixa.Next;
          end;
        //endw



        cds_tipo_pgto.First;
        while not cds_tipo_pgto.Eof do
          begin
            ftotParcOs := 0;


            cds_caixa.Filtered := false;
            cds_caixa.Filter :=   '(data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+') and ( codformapgto = '+cds_tipo_pgto.fieldbyname('codigo').asString+') and ( op = '+ quotedstr('C') +') and ( cusu = '+ inttostr(iccaixa) +')';
            cds_caixa.Filtered := true;

            while not cds_caixa.Eof do
              begin
                ftotParcOs := ftotParcOs + cds_caixa.fieldbyname('valor').asfloat;
                ftotcredg := ftotcredg + cds_caixa.fieldbyname('valor').asfloat;
                Cds_caixa.Next;
              end;
            //endw
            atottipo[Cds_tipo_pgto.FieldByName('codigo').AsInteger-1] := atottipo[cds_tipo_pgto.FieldByName('codigo').AsInteger-1] + ftotparcOs;
            cds_tipo_pgto.Next;
          end;
        //endw

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

        Writeln(F,'');

        s_espaco := StringOfChar(' ', 23);

        writeln(F,'ABERTURA'+s_espaco+AlinNumD(10, ftotAbertura ) );

        writeln(F,'APURACAO');

        writeln(F,'(+)VENDAS(1)');


        cds_tipo_pgto.First;
        while not cds_tipo_pgto.eof do
          begin


              s_titulo :=  chr(65+i)+') '+cds_tipo_pgto.fieldbyname('descricao').asString;


              s_espaco := '';
              for x := 0 to (30 -  length(s_titulo) ) do
                begin

                  s_espaco := s_espaco + ' ';

                end;


              s_valor := AlinNumD(10,atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);


              writeln(F,  s_titulo + s_espaco + s_valor );

              i := i + 1;

              cds_tipo_pgto.Next;

          end;
        //endw

       end;
    //endth

    writeln(F,'');

    writeln(F,'TROCO   '+AlinNumD(10,ftotingestao));
    writeln(F,'SANGRIA '+AlinNumD(10,ftotSangria ));
    writeln(F,'TOTAL   '+AlinNumD(10,ftotAbertura+ftotcredg+ftotingestao-ftotsangria) );

    sDataI := StringReplace(  sDataI, '/', '.', [rfReplaceAll, rfIgnoreCase]);
    sDataF := StringReplace(  sDataF, '/', '.', [rfReplaceAll, rfIgnoreCase]);


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

    writeln(F,'');
    writeln(F,  'Impresso em '+datetimetostr(now));

    for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
      begin
         writeln(F,'');
      end;
    //endi


   closefile(F);

   z := z + 1;
   

   end;
//endi

frmdados.cds_caixa.Filtered := false;
frmdados.cds_caixa.Filter := s_anterior;
frmdados.cds_caixa.Filtered := true;

end;

procedure Tfrmcaixaapind.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
frmdados.cds_caixa.Active := false;
ThreadStatus.Suspended := false;
end;

Procedure Tfrmcaixaapind.CriaSeries;
begin

  sSerie := tPieSeries.Create(Self);
  sSerie.ParentChart := GraGrafico;
  sSerie.Title := 'Movimento';



end;

procedure Tfrmcaixaapind.MontaSerie(SR: TPieSeries; LR: TStrings; RR:TStrings);
var
  K: Integer;
begin
  SR.Clear;
  for K := 0 to LR.Count - 1 do
    SR.Add(StrTofloat(LR[K]), RR[K], clTeeColor);


  //S.Add(StrToInt(L[I]), inttostr(StrToInt(R[I])), clTeeColor);
  //S.Add(StrToInt(L[I]), ShortMonthNames[I+1], clTeeColor)

end;



procedure Tfrmcaixaapind.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

end.

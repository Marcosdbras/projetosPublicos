unit ucaixaapind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, ExtCtrls, jpeg, Mask, ComCtrls, SayPrint,
  TeeProcs, TeEngine, Chart, Series, Grids, DBGrids, DBCtrls;

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



  Var
    totpagas, totpagar, totdinOS, ftotparcOs, totGparcOs, totrecparc, totpagparc,
    totcusto, totvenda, totcuspecas, totcusdevpecas, totmo, totvendapecas, totvdescp,
    totvdescv, saldovpecas, saldocpecas, saldomobra, totGrec, totvendac, ftotarecber,
    ftotsangria, ftotingestao, ftotAbertura, ftotcredg:real;


begin


z:= 0;

iccaixa := frmdados.Cds_Temp.fieldbyname('cod').AsInteger;

while z < strtoint(edincopias.Text) do
  begin


    printcaixa.BeginPrn;



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
        //sDataI := bar_is_point( sDataI  );

        sDataF := datetostr(dtpdataF.Date);
        //sDataF := bar_is_point( sDataF  );

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



        A := A + 16;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := taleftjustify;
           left := 8;
           top := A;
           lblbase.Caption := 'ABERTURA';
           parent := self;
        end;

        printcaixa.Say(3,1,lblbase.caption);


        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := tarightjustify;
           left := 120;
           top := A;
           lblbase.Caption := formatfloat('###,###,##0.00',ftotAbertura);
           parent := self;
        end;

        printcaixa.Say(3,12,lblbase.caption);


        A := A + 32;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := taleftjustify;
           left := 8;
           top := A;
           lblbase.Caption := 'APURACAO';
           parent := self;
        end;
        printcaixa.Say(5,1,'');
        printcaixa.Say(6,1,lblbase.caption);

        A := A + 16;
        lblbase := tlabel.Create(self);
        with lblbase do begin
           alignment := tarightjustify;
           left := 120;
           top := A;
           lblbase.Caption := '(+)VENDAS(1)';
           parent := self;
        end;
        printcaixa.Say(7,1,'');
        printcaixa.Say(8,34,lblbase.caption);


        i := 0;
        L:= 9;


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
                lblbase.Caption := AlinNumD(10,atotTipo[cds_tipo_pgto.fieldbyname('codigo').asInteger-1]);

                parent := self;
             end;


             printcaixa.Say(L,36,lblbase.caption);




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
       left := 8;
       top := A;
       lblbase.Caption := 'TROCO';
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
       lblbase.Caption := formatfloat('###,###,##0.00',ftotIngestao);
       lblbase.Caption := AlinNumD(10,ftotingestao);


       parent := self;
    end;

    printcaixa.Say(L,36,lblbase.caption);

    L := L + 1;

    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'SANGRIA';
       parent := self;
    end;

    printcaixa.Say(L,5,lblbase.caption);

    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := tarightjustify;
       left := 120;
       top := A;
       lblbase.Caption := formatfloat('###,###,##0.00',ftotSangria);
       lblbase.Caption := AlinNumD(10,ftotSangria);

       parent := self;
    end;


    printcaixa.Say(L,36,lblbase.caption);

    L := L + 1;



    A := A + 16;
    lblbase := tlabel.Create(self);
    with lblbase do begin
       alignment := taleftjustify;
       left := 8;
       top := A;
       lblbase.Caption := 'TOTAL';
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
       lblbase.Caption := formatfloat('###,###,##0.00',ftotAbertura+ftotcredg+ftotingestao-ftotsangria);
       lblbase.Caption := AlinNumD(10,ftotAbertura+ftotcredg+ftotingestao-ftotsangria);

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


    z:= z + 1;

   end;
//endi


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

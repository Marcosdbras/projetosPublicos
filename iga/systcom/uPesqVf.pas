unit uPesqVf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr;

type
  TfrmPesqVf = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgvenda: TDBGrid;
    dbgdetvenda: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    Label6: TLabel;
    lbltotals: TLabel;
    Label7: TLabel;
    lbltotale: TLabel;
    cbxnomecli: TDBLookupComboBox;
    Label8: TLabel;
    edicodigo: TEdit;
    Label9: TLabel;
    dbgvencto: TDBGrid;
    lbldin: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblaprazo: TLabel;
    Label10: TLabel;
    lbltotal: TLabel;
    btncancelap: TButton;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaEnter(Sender: TObject);
    procedure dbgdetvendaEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edicodigoExit(Sender: TObject);
    procedure edicodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btncancelapClick(Sender: TObject);
    procedure dbgvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdetvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgvenctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqVf: TfrmPesqVf;

implementation

uses uGeral, uPrincipal, uDados, umrvf ;

{$R *.DFM}

procedure TfrmPesqVf.FormShow(Sender: TObject);
var
   vardir: String;
begin
   lblaprazo.Caption := '0,00';
   lbldin.Caption := '0,00';
   lbltotal.Caption := '0,00';


   vardir := ExtractFilePath(Application.ExeName);

   with frmdados do
     begin
       cds_clientes.Active := false;
       dbx_clientes.Active := false;
       dbx_clientes.SQL.Clear;
       dbx_clientes.SQL.Add('Select * from clientes order by nome');
       dbx_clientes.Active := true;
       cds_clientes.Active := true;

       cds_tipo_pgto.Active := false;
       dbx_tipo_pgto.Active := false;
       dbx_tipo_pgto.SQL.Clear;
       dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto');
       dbx_tipo_pgto.Active := true;
       cds_tipo_pgto.Active := true;

     end;
   //endi

   spdlimpar.Click;
   edicodigo.Text := '';

   //showmessage(frmdados.Cds_Clientes.FieldByName('codigo').asString);
end;

procedure TfrmPesqVf.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVf.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVf.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqVf.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqVf:=nil;
  form_ativo := '';
end;

procedure TfrmPesqVf.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqVf.dbgvendaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmPesqVf.dbgvendaEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqVf.dbgdetvendaEnter(Sender: TObject);
begin
tabela := 'Vendab';
end;

procedure TfrmPesqVf.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVf.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVf.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqVf.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF : String;
  ftotcusto, ftotpreco:real;
  icCli : integer;
begin
  

  with frmdados do
    begin

      Cds_sVenda.Active := false;
      Dbx_sVenda.Active := false;

      Cds_Vendab.Active := false;
      dbx_vendab.Active := false;

      cds_Vencto.Active := false;
      dbx_Vencto.Active := false;

      dbx_Exec.Active := false;

    end;
  //end;

  // inicializando variáveis comuns
  sCompo := '(coalesce (nco,0) > 0) and (tipoop > 0)';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  icCli := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := bar_is_point( sDataI  );

  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := bar_is_point( sDataF  );

  if cbxnomecli.Text <> '' then
     begin
       //showmessage(frmdados.Cds_Clientes.FieldByName('codigo').asString);
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
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
  // executando o filtro

  try
    with frmdados.Dbx_sVenda do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from sVenda where '+sCompo+'order by datacad, numped')
         else
            sql.Add('select * from sVenda order by datacad, numped');
         //endi
         active := true;
       end;
    //endi
    //showmessage(frmdados.dbx_svenda.SQL.text);
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin

      Cds_sVenda.Active := true;

      Cds_Vendab.Active := false;
      dbx_vendab.Active := false;

      cds_Vencto.Active := false;
      dbx_Vencto.Active := false;

      dbx_Exec.Active := false;

      //showmessage(cds_svenda.fieldbyname('nco').asString);

     if cds_svenda.fieldbyname('nco').asInteger > 0 then
        begin
          cds_vendab.Active := false;
          dbx_vendab.Active := false;
          dbx_vendab.SQL.Clear;
          dbx_vendab.SQL.Add('Select * from vendab where controle = '+cds_svenda.fieldbyname('nco').asString);
          dbx_vendab.Active := true;
          cds_vendab.Active := true;

          cds_Vencto.Active := false;
          dbx_Vencto.Active := false;
          dbx_Vencto.SQL.Clear;
          dbx_Vencto.SQL.Add('Select * from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
          dbx_Vencto.Active := true;
          cds_Vencto.Active := true;

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('S')+')');
          dbx_Exec.Active := true;
          lbltotals.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('E')+')');
          dbx_Exec.Active := true;
          lbltotale.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(valorreal) as total from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
          dbx_Exec.Active := true;
          lblaprazo.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;

        end;
     //endi


       if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totpagar').asfloat then
          begin

            lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('totpagar').asfloat);

          end
       else
          begin

            lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('din').asfloat);

          end;
       //endi

       lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos( lblaprazo.Caption  )) +  strtofloat(tirapontos( lbldin.Caption  ))  )

    end;
  //endth;
end;

procedure TfrmPesqVf.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  lbltotals.Caption := '0,00';
  lbltotale.Caption := '0,00';


  //cbxnomecli.KeyField := 'codigo';
  //cbxnomecli.ListSource.DataSet  := frmdados.Cds_Clientes;
  //cbxnomecli.ListField := 'Nome';

  spdfiltrar.Click;
end;

procedure TfrmPesqVf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqVf.edicodigoExit(Sender: TObject);
begin
  frmdados.cds_svenda.Locate('NumPed',edicodigo.text,[]);

end;

procedure TfrmPesqVf.edicodigoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqVf.btncancelapClick(Sender: TObject);
begin
  if application.MessageBox('Este cancelamento não afeta os caixas individuais do ECF'+chr(13)+chr(10)+'caso você queira cancelar vendas do caixa individual do usuário utilize cancelamento de pedido do venda balcão ECF'+chr(13)+chr(10)+'Deseja Realmente Cancelar Este Pedido?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       tabela := 'sVenda';
       with frmdados do
          begin
            cds_sVenda.Delete;
          end;
       //endth



     end;
  //endi

end;

procedure TfrmPesqVf.dbgvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVf.dbgdetvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVf.dbgvenctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVf.SpeedButton1Click(Sender: TObject);
begin
 frmmrvf:=tfrmmrvf.create(self);
 frmmrvf.showmodal;
 frmmrvf.free;
end;

end.

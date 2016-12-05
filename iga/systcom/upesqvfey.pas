unit upesqvfey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, RpDefine,
  RpCon, RpConDS, RpConBDE;

type
  Tfrmpesqvefy = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    DtpDataI: TDateTimePicker;
    DtpDataF: TDateTimePicker;
    pnlinferior: TPanel;
    pnldir: TPanel;
    Bevel2: TBevel;
    Label4: TLabel;
    dbgvenda: TDBGrid;
    lbltitprcusto: TLabel;
    lbltitprpreco: TLabel;
    lbltitlucro: TLabel;
    lbltotcusto: TLabel;
    lbltotpreco: TLabel;
    lbllucro: TLabel;
    spdprinter: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdfiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdprinterClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpesqvefy: Tfrmpesqvefy;

implementation
  Uses uGeral, uPrincipal, uDados, urelitenv;

{$R *.dfm}

procedure Tfrmpesqvefy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmpesqvefy:=nil;
  form_ativo := '';
end;

procedure Tfrmpesqvefy.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF : String;
  ftotcusto, ftotpreco:real;
begin
  


  frmDados.CdsAdo_ItensV.Active := false;
  
  // inicializando variáveis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := datainvertida( sDataI  );

  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := datainvertida( sDataF  );

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( itVenda >= #' + sDataI + '#)';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( itVenda >= #' + sDataI + '#)';
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
            sCompo := '( itVenda <= #' + sDataF + '#)';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( itVenda <= #' + sDataF + '#)';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  try
    with frmdados.DbxAdo_ItensV do
       begin
         active := false;
         sql.Clear;
         sql.Add('select sum(itcusto*itquantidade) as Custo, sum(itunitario*itquantidade) as Preco from tabitens where '+sCompo);
         active := true;

         ftotcusto := fieldbyname('custo').AsFloat;
         ftotpreco := fieldbyname('preco').asFloat;

         active := false;
         sql.Clear;
         //if sCompo <> '' then
         //   sql.Add('select sum(itquantidade) as Qtde, itund as Unidade, itDescricao as Descricao, '+
         //           'itvenda as Data, sum(itcusto*itquantidade) as Custo, sum(itunitario*itquantidade)'+
         //           ' as Preco from tabitens group by itDescricao, itCodigo, itund, itvenda having '+sCompo+
         //           ' order by itvenda desc, itcodigo')
         //else
         //   sql.Add('select sum(itquantidade) as Qtde, itund as Unidade, itDescricao as Descricao, '+
         //           'itvenda as Data, sum(itcusto*itquantidade) as Custo, sum(itunitario*itquantidade)'+
         //           ' as Preco from tabitens group by itDescricao, itCodigo, itund, itvenda '+
         //           'order by itvendas desc, itcodigo');
         //endi


         //   sql.Add('select sum(itquantidade) as Qtde, itund as Unidade, itDescricao as Descricao, '+
         //           'itvenda as Data, sum(itcusto*itquantidade) as Custo, sum(itunitario*itquantidade)'+
         //           ' as Preco from tabitens where '+sCompo+' group by itDescricao, itCodigo, itund, itvenda '+
         //           ' order by itvenda desc, itcodigo');


          sql.Add('select sum(itquantidade) as Qtde, itund as Unidade, itDescricao as Descricao, '+
                    'sum(itcusto*itquantidade) as Custo, sum(itunitario*itquantidade)'+
                    ' as Preco from tabitens group by itDescricao, itCodigo, itund '+
                    ' order by itcodigo');



         active := true;
       end;
    //endi
  except
    showmessage(frmdados.DbxAdo_ItensV.SQL.text);
    showmessage('Não consegui conectar a tabela itens vendidos, operação abortada!!!');
    exit;
  end;
  with frmdados do
    begin
      //CdsAdo_ItensV.Active := true;
      //CdsAdo_ItensV.Refresh;
    end;
  //end;

  lbltotcusto.Caption := formatfloat('###,###,##0.00',ftotcusto);
  lbltotpreco.Caption := formatfloat('###,###,##0.00',ftotpreco);
  lbllucro.Caption := formatfloat('###,###,##0.00',ftotpreco-ftotcusto);;


end;

procedure Tfrmpesqvefy.FormShow(Sender: TObject);
begin
  lbltotcusto.Caption := '0,00';
  lbltotpreco.Caption := '0,00';
  lbllucro.Caption := '0,00';


  spdlimpar.Click;
end;

procedure Tfrmpesqvefy.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;


  spdfiltrar.Click;
end;

procedure Tfrmpesqvefy.spdconfirmaClick(Sender: TObject);
begin
close; 
end;

procedure Tfrmpesqvefy.spdprinterClick(Sender: TObject);
var
  vardir:string;
begin
vardir := extractfilepath(application.ExeName);
//with frmdados do
//  begin
//    RvPItensV.ProjectFile := vardir+'rItensV.rav';
//    RvPItensV.Execute;
//  end;
//endth
frmrelitenv := tfrmrelitenv.Create(self);
frmrelitenv.relatorio.Preview;
frmrelitenv.Free; 

end;

procedure Tfrmpesqvefy.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

end.

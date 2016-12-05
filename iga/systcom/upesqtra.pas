unit upesqtra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Buttons, ComCtrls, StdCtrls,
  WinSkinData, ExtCtrls, Menus;

type
  Tfrmpesqtra = class(TForm)
    Label3: TLabel;
    lbltitdatai: TLabel;
    DtpDataI: TDateTimePicker;
    spdfiltrar: TSpeedButton;
    DtpDataF: TDateTimePicker;
    spdlimpar: TSpeedButton;
    Label18: TLabel;
    cbxnomecli: TDBLookupComboBox;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    dbgos: TDBGrid;
    spdnova: TSpeedButton;
    skin: TSkinData;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label9: TLabel;
    spdalterar: TSpeedButton;
    spdexcluir: TSpeedButton;
    spdcancelar: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label2: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    SpeedButton8: TSpeedButton;
    Shape4: TShape;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    btninfo: TButton;
    Shape2: TShape;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    spdcomissao: TSpeedButton;
    SpeedButton11: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure habdedidesc;
    procedure cbxclassificarClick(Sender: TObject);
    procedure spdnovaClick(Sender: TObject);
    procedure spdalterarClick(Sender: TObject);
    procedure spdexcluirClick(Sender: TObject);
    procedure DtpDataIKeyPress(Sender: TObject; var Key: Char);
    procedure dbgosDblClick(Sender: TObject);
    procedure spdcancelarClick(Sender: TObject);
    procedure btninfoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure spdcomissaoClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);

  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo,  sTipocodM:string;
    icuni, iccf, icsita, icsitb, icicms, icipi, icMar,  iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst :integer;
    fQtdeEstq:real;
    bMostrar, bMostrarM:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;
    ftvalor, ftvalliq, fvaltot, fvalsobra:real;



  public
    { Public declarations }
    sTitRel:string;
    scoluna:string;
    sOPcao:string;



  end;

var
  frmpesqtra: Tfrmpesqtra;

implementation

uses ugeral, uloginutradental, uDados, uTra, uinfo, uagenda, upesqrecbtop,
  ureltra, ureltrat, upesqclip, upesqfuncp, upesqforcp, upesqpagp,
  upesqclasp, upesqcmobrap, upesqtipopgtovp, upesqcfunp, ucaixaapap;

{$R *.dfm}

procedure Tfrmpesqtra.FormShow(Sender: TObject);
var
  vardir:string;
  x:integer;

begin

vardir := extractfilepath(application.ExeName);


skin.SkinFile := vardir+'SKIN.SKN';
skin.Active := true;

frmloginutradental := tfrmloginutradental.create(self);
frmloginutradental.showmodal;
frmloginutradental.free;

tabela := 'sVenda';

x:=0;


with frmdados do
  begin

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'ncli';
    dbgos.Columns[x].Title.caption     := 'NOME CLIENTE';
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'ccli';
    dbgos.Columns[x].Title.caption     := 'COD. CLI.';
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'DATACAD';
    dbgos.Columns[x].Title.caption     := 'DATA CADASTRO';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'nos';
    dbgos.Columns[x].Title.caption     := 'N.O ORDEM';
    dbgos.Columns[x].Width := 80;
    x := x + 1;

    if (cds_indice.FieldByName('ID1').asString <> '') then
        begin
          dbgos.Columns.Add;
          dbgos.Columns[x].FieldName  := 'ID1';
          dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('ID1').asString;
          dbgos.Columns[x].Width := 100;
          x := x + 1;
        end;
    //endi


    if (cds_indice.FieldByName('DESC1').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC1';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC1').asString;
         dbgos.Columns[x].Width := 130;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC2').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC2';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC2').asString;
         dbgos.Columns[x].Width := 130;
         x := x + 1;
       end;
    //endi


    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'totg';
    dbgos.Columns[x].Title.caption     := 'TOTAL';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'pdesc_p';
    dbgos.Columns[x].Title.caption     := '% DESC.';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'valdesc_p';
    dbgos.Columns[x].Title.caption     := 'VLR. DESC.';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'liquido_p';
    dbgos.Columns[x].Title.caption     := 'LIQUIDO';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'ftotp';
    dbgos.Columns[x].Title.caption     := 'Outros';
    dbgos.Columns[x].Width := 100;
    x := x + 1;

    dbgos.Columns.Add;
    dbgos.Columns[x].FieldName  := 'ftotm';
    dbgos.Columns[x].Title.caption     := 'VLR';
    dbgos.Columns[x].Width := 100;
    x := x + 1;


    if (cds_indice.FieldByName('DESC3').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC3';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC3').asString;
         x := x + 1;
       end;
    //endi

    if (cds_indice.FieldByName('DESC4').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC4';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC4').asString;
         x := x + 1;
       end;
    //endi

    if (cds_indice.FieldByName('DESC5').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC5';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC5').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC6').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC6';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC6').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC7').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC7';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC7').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC8').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC8';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC8').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC9').asString <> '')then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC9';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC9').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC10').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC10';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC10').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC11').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC11';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC11').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC12').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC12';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC12').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC13').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC13';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC13').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC14').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC14';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC14').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC15').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC15';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC15').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC16').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC16';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC16').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC17').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC17';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC17').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC18').asString <> '') then
        begin
          dbgos.Columns.Add;
          dbgos.Columns[x].FieldName  := 'DESC18';
          dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC18').asString;
          x := x + 1;
        end;
    //endi
    if (cds_indice.FieldByName('DESC19').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC19';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC19').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC20').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC20';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC20').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC21').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC21';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC21').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC22').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC22';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC22').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC23').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC23';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC23').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC24').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC24';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC24').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC25').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC25';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC25').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC26').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC26';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC26').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC27').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC27';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC27').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC28').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC28';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC28').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC29').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC29';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC29').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC30').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC30';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC30').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC31').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC31';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC31').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC32').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC32';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC32').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC33').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC33';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC33').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC34').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC34';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC34').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC35').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC35';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC35').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC36').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC36';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC36').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC37').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC37';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC37').asString;
         x := x + 1;
       end;
    //endi
    if (cds_indice.FieldByName('DESC38').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'DESC38';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC38').asString;
         x := x + 1;
       end;
    //endi

    if (cds_indice.FieldByName('ID2').asString <> '') then
       begin
         dbgos.Columns.Add;
         dbgos.Columns[x].FieldName  := 'ID2';
         dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('ID2').asString;
         x := x + 1;
       end;
    //endi


  end;
//endth

cbxclassificar.Items.Clear;

cbxclassificar.Items.Add('Data');
cbxclassificar.Items.Add('N.O ORDEM');


with frmdados do
  begin
    if cds_indice.FieldByName('ID1').asString <> '' then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('ID1').asString);
       end;
    //endi
    if cds_indice.FieldByName('ID2').asString <> '' then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('ID2').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC1').asString <> '')  then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC1').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC2').asString <> '')  then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC2').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC3').asString <> '')  then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC3').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC4').asString <> '')  then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC4').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC5').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC5').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC6').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC6').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC7').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC7').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC8').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC8').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC9').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC9').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC10').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC10').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC11').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC11').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC12').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC12').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC13').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC13').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC14').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC14').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC15').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC15').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC16').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC16').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC17').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC17').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC18').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC18').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC19').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC19').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC20').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC20').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC21').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC21').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC22').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC22').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC23').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC23').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC24').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC24').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC25').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC25').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC26').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC26').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC27').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC27').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC28').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC28').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC29').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC29').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC30').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC30').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC31').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC31').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC32').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC32').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC33').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC33').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC34').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC34').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC35').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC35').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC36').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC36').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC37').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC37').asString);
       end;
    //endi
    if (cds_indice.FieldByName('DESC38').asString <> '') then
       begin
         cbxclassificar.Items.Add(cds_indice.FieldByName('DESC38').asString);
       end;
    //endi
  end;
//endi

cbxclassificar.ItemIndex := 0;

edidesc.Enabled := false;

vardir := ExtractFilePath(Application.ExeName);



with frmdados do
  begin

    Cds_Temp.Active := false;
    Cds_Tempcod4.DefaultExpression  := '1';
    Dbx_Temp.Active := false;
    Dbx_Temp.SQL.Clear;
    Dbx_Temp.SQL.Add('Select * from Temp order by codigo');
    Dbx_Temp.Active := true;
    Cds_Temp.Active := true;

    Cds_Mat_Restaurar.Active := false;
    Dbx_Mat_Restaurar.Active := false;
    Dbx_Mat_Restaurar.SQL.Clear;
    Dbx_Mat_Restaurar.SQL.Add('Select * from Mat_Restaurar order by codigo');
    Dbx_Mat_Restaurar.Active := true;
    Cds_Mat_Restaurar.Active := true;

    Cds_Funcionarios.Active := false;
    Dbx_Funcionarios.Active := false;
    Dbx_Funcionarios.SQL.Clear;
    Dbx_Funcionarios.SQL.Add('Select * from Funcionarios order by nome');
    Dbx_Funcionarios.Active := true;
    Cds_Funcionarios.Active := true;

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

    //cds_Funcionarios.Active := false;
    //dbx_Funcionarios.Active := false;
    //dbx_Funcionarios.SQL.Clear;
    //dbx_Funcionarios.SQL.Add('select * from Funcionarios order by nome');
    //dbx_Funcionarios.Active := true;
    //cds_Funcionarios.Active := true;

    cds_modulo.Active := false;
    dbx_modulo.Active := false;
    dbx_modulo.SQL.Clear;
    dbx_modulo.SQL.Add('select * from modulo order by codigo');
    dbx_modulo.Active := true;
    cds_modulo.Active := true;

    cds_cmobra.Active := false;
    dbx_cmobra.Active := false;
    dbx_cmobra.SQL.Clear;
    dbx_cmobra.SQL.Add('select * from cmobra order by descr');
    dbx_cmobra.Active := true;
    cds_cmobra.Active := true;

    cds_tipotab.Active := false;
    dbx_tipotab.Active := false;
    dbx_tipotab.SQL.Clear;
    dbx_tipotab.SQL.Add('select * from tipotab order by descricao');
    dbx_tipotab.Active := true;
    cds_tipotab.Active := true;

    //cds_Mat_Rest_ID.Active := false;
    //dbx_Mat_Rest_ID.Active := false;
    //dbx_Mat_Rest_ID.SQL.Clear;
    //dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +' order by m.codigo');
    //dbx_Mat_Rest_ID.Active := true;
    //cds_Mat_Rest_ID.Active := true;


    tabela := 'Temp';

    cds_temp.Edit;
    cds_tempcod4.Value := 1;

    Tabela := 'sVenda';

  end;
//endth

   spdlimpar.Click;

   frmdados.cds_mat_restaurar.First;

   tabela := 'Temp';
   frmdados.cds_temp.Edit;
   frmdados.cds_temp.FieldByName('cod10').asInteger := frmdados.cds_mat_restaurar.fieldbyname('codigo').asInteger;






end;

procedure Tfrmpesqtra.spdfiltrarClick(Sender: TObject);
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
      Cds_sVendatpo.DefaultExpression := '1';
      Cds_sVendadatacad.DefaultExpression := quotedstr( datetostr( date ) );
      Cds_sVendahrcad.DefaultExpression := quotedstr(copy(timetostr(time),1,5));
      //showmessage( copy(timetostr(time),1,5) );
      Cds_dVenda.Active := false;
      Cds_Vencto.Active := false;
      Cds_dmobra.Active := false;
    end;
  //end;


  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('ID1').Text then
     begin
       sClassificar := 'ID1';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('ID2').Text then
     begin
       sClassificar := 'ID2';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC1').Text then
     begin
       sClassificar := 'DESC1';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC2').Text then
     begin
       sClassificar := 'DESC2';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC3').Text then
     begin
       sClassificar := 'DESC3';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC4').Text then
     begin
       sClassificar := 'DESC4';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC5').Text then
     begin
       sClassificar := 'DESC5';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC6').Text then
     begin
       sClassificar := 'DESC6';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC7').Text then
     begin
       sClassificar := 'DESC7';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC8').Text then
     begin
       sClassificar := 'DESC8';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC9').Text then
     begin
       sClassificar := 'DESC9';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC10').Text then
     begin
       sClassificar := 'DESC10';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC11').Text then
     begin
       sClassificar := 'DESC11';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC12').Text then
     begin
       sClassificar := 'DESC12';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC13').Text then
     begin
       sClassificar := 'DESC13';
     end;
  //endi

  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC14').Text then
     begin
       sClassificar := 'DESC14';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC15').Text then
     begin
       sClassificar := 'DESC15';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC16').Text then
     begin
       sClassificar := 'DESC16';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC17').Text then
     begin
       sClassificar := 'DESC17';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC18').Text then
     begin
       sClassificar := 'DESC18';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC19').Text then
     begin
       sClassificar := 'DESC19';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC20').Text then
     begin
       sClassificar := 'DESC20';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC21').Text then
     begin
       sClassificar := 'DESC21';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC22').Text then
     begin
       sClassificar := 'DESC22';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC23').Text then
     begin
       sClassificar := 'DESC23';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC24').Text then
     begin
       sClassificar := 'DESC24';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC25').Text then
     begin
       sClassificar := 'DESC25';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC26').Text then
     begin
       sClassificar := 'DESC26';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC27').Text then
     begin
       sClassificar := 'DESC27';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC28').Text then
     begin
       sClassificar := 'DESC28';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC29').Text then
     begin
       sClassificar := 'DESC29';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC30').Text then
     begin
       sClassificar := 'DESC30';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC31').Text then
     begin
       sClassificar := 'DESC31';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC32').Text then
     begin
       sClassificar := 'DESC32';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC33').Text then
     begin
       sClassificar := 'DESC33';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC34').Text then
     begin
       sClassificar := 'DESC34';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC35').Text then
     begin
       sClassificar := 'DESC35';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC36').Text then
     begin
       sClassificar := 'DESC36';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC37').Text then
     begin
       sClassificar := 'DESC37';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC38').Text then
     begin
       sClassificar := 'DESC38';
     end;
  //endi

  if cbxclassificar.Text = 'Data' then
     sClassificar := 'DataCad';
  //endi
  if cbxclassificar.Text = 'N.O ORDEM' then
     sClassificar := 'nos';
  //endi


  // inicializando variáveis comuns
  sCompo := '(coalesce (nco,0) = 0) and (coalesce (tpo,0) = 1)';
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
  //if cbxnomefun.Text <> '' then
  //   begin
  //     icfun := frmdados.Cds_Funcionarios.FieldByName('codigo').asInteger;
  //   end;
  //endi
  //if cbxnomeRep.Text <> '' then
  //   begin
  //     icRep := frmdados.Cds_Representantes.FieldByName('codigo').asInteger;
  //   end;
  //endi

  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Abertura de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Abertura de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
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
         //showmessage(sql.Text);
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


    //showmessage(frmdados.dbx_svenda.SQL.Text);


    if frmdados.cds_svenda.RecordCount > 0 then
       begin
         spdalterar.Enabled := true;
         spdexcluir.Enabled := true;
       end
    else
       begin
         spdalterar.Enabled := false;
         spdexcluir.Enabled := false;
       end;
    //endi


  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

end;

procedure Tfrmpesqtra.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;

end;

procedure tfrmPesqtra.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     //lbltitdatai.Caption := 'Venda de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := True;
     //lbltitdatai.Caption := 'Venda de'
   end;
//endi
end;


procedure Tfrmpesqtra.cbxclassificarClick(Sender: TObject);
begin
  spdfiltrar.Click;
  habdedidesc;

end;

procedure Tfrmpesqtra.spdnovaClick(Sender: TObject);
begin
sOpcao := 'I';
frmtra := tfrmtra.create(self);
frmtra.showmodal;
frmtra.free;
end;

procedure Tfrmpesqtra.spdalterarClick(Sender: TObject);
begin
sOpcao := 'A';
frmtra := tfrmtra.create(self);
frmtra.showmodal;
frmtra.free;

end;

procedure Tfrmpesqtra.spdexcluirClick(Sender: TObject);
begin

  if dbgos.Focused then
     begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_sVenda.Delete;
            if frmdados.Cds_sVenda.RecordCount = 0 then
               begin
                 spdalterar.Enabled := false;
                 spdexcluir.Enabled := false;
               end;
            //endi
          end
       //endi
     end
  else
     begin
       Showmessage('Nenhum Item Selecionado');
     end;
  //endi

end;

procedure Tfrmpesqtra.DtpDataIKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqtra.dbgosDblClick(Sender: TObject);
begin
spdalterar.Click; 
end;

procedure Tfrmpesqtra.spdcancelarClick(Sender: TObject);
begin
if application.MessageBox('Deseja Realmente Sair do Sistema?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin
     close;
   end;
//endi
end;

procedure Tfrmpesqtra.btninfoClick(Sender: TObject);
begin
frminfo := tfrminfo.create(self);
frminfo.showmodal;
frminfo.free;
end;

procedure Tfrmpesqtra.SpeedButton1Click(Sender: TObject);
begin
frmagenda := tfrmagenda.create(self);
frmagenda.showmodal;
frmagenda.free;
end;

procedure Tfrmpesqtra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmpesqtra:=nil;
  form_ativo := '';

end;

procedure Tfrmpesqtra.SpeedButton2Click(Sender: TObject);
begin
frmpesqrecbtop := tfrmpesqrecbtop.create(self);
frmpesqrecbtop.showmodal;
frmpesqrecbtop.free;

end;

procedure Tfrmpesqtra.SpeedButton3Click(Sender: TObject);
begin
frmreltrat := tfrmreltrat.Create(self);
frmreltrat.relatorio.Preview;
frmreltrat.Free;
end;

procedure Tfrmpesqtra.SpeedButton4Click(Sender: TObject);
begin
frmpesqclip := tfrmpesqclip.Create(self);
frmpesqclip.ShowModal;
frmpesqclip.Free;
end;

procedure Tfrmpesqtra.SpeedButton5Click(Sender: TObject);
begin
frmpesqfuncp := tfrmpesqfuncp.Create(self);
frmpesqfuncp.ShowModal;
frmpesqfuncp.Free;

end;

procedure Tfrmpesqtra.SpeedButton6Click(Sender: TObject);
begin
frmpesqforcp := tfrmpesqforcp.Create(self);
frmpesqforcp.ShowModal;
frmpesqforcp.Free;

end;

procedure Tfrmpesqtra.SpeedButton8Click(Sender: TObject);
begin
frmpesqpagp := tfrmpesqpagp.Create(self);
frmpesqpagp.ShowModal;
frmpesqpagp.Free;

end;

procedure Tfrmpesqtra.SpeedButton7Click(Sender: TObject);
begin
frmpesqclasp := tfrmpesqclasp.Create(self);
frmpesqclasp.ShowModal;
frmpesqclasp.Free;

end;

procedure Tfrmpesqtra.SpeedButton9Click(Sender: TObject);
begin
  frmpesqcmobrap := tfrmpesqcmobrap.create(self);
  frmpesqcmobrap.showmodal;
  frmpesqcmobrap.free;
end;

procedure Tfrmpesqtra.SpeedButton10Click(Sender: TObject);
begin
  frmpesqtipopgtovp := tfrmpesqtipopgtovp.create(self);
  frmpesqtipopgtovp.showmodal;
  frmpesqtipopgtovp.free;
end;

procedure Tfrmpesqtra.spdcomissaoClick(Sender: TObject);
begin
  frmpesqcfunp := tfrmpesqcfunp.create(self);
  frmpesqcfunp.showmodal;
  frmpesqcfunp.free;
end;

procedure Tfrmpesqtra.SpeedButton11Click(Sender: TObject);
begin
  frmcaixaapap := tfrmcaixaapap.create(self);
  frmcaixaapap.showmodal;
  frmcaixaapap.free;

end;

end.

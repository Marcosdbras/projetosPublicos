unit uconsserv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB;

type
  Tfrmconsserv = class(TForm)
    lbllocalizar: TLabel;
    edilocalizar: TEdit;
    Label4: TLabel;
    CbxOrdPor: TComboBox;
    dbg_cmobra: TDBGrid;
    ckbfechar: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CbxOrdPorClick(Sender: TObject);
    procedure edilocalizarChange(Sender: TObject);
    procedure entracodigo;
    procedure dbg_cmobraKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_cmobraDblClick(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CbxOrdPorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOrdem:string;
  public
    { Public declarations }
  end;

var
  frmconsserv: Tfrmconsserv;

implementation
   uses upesqnf, ugeral, udados;
{$R *.dfm}

procedure Tfrmconsserv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_cmobra.Filtered  := false;

  Action:=caFree;
  frmconsserv:=nil;
  form_ativo := '';

end;

procedure Tfrmconsserv.FormShow(Sender: TObject);
begin
  edilocalizar.Text := '';
  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('DESCRIÇÃO');

  cbxOrdPor.ItemIndex := 1;

  sOrdem:='descricao';
  lbllocalizar.Caption := 'DESCRIÇÃO';


end;

procedure Tfrmconsserv.CbxOrdPorClick(Sender: TObject);
begin
  CASE cbxOrdPor.ItemIndex OF
    0:begin
        sOrdem :='codigo';
        lbllocalizar.Caption := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='descricao';
        lbllocalizar.Caption := 'DESCRIÇÃO';
      end;
  ELSE
    sOrdem:='';
  END;

  frmdados.cds_cmobra.IndexName:=sOrdem;
  edilocalizar.Text := '';

end;

procedure Tfrmconsserv.edilocalizarChange(Sender: TObject);
begin
  if sOrdem <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_cmobra.Locate(sOrdem,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
      end;
   //endi
//endi

end;

procedure tfrmconsserv.entracodigo;
begin
  frmpesqnf.edicdesc.Text := frmdados.cds_cmobra.fieldbyname('codigo').asString;

  if ckbfechar.Checked then
     begin
       close;
     end
  else
     begin
       frmpesqnf.ediqtdes.Text := '1';
       frmpesqnf.icmobra := frmdados.cds_cmobra.fieldbyname('codigo').asInteger;
       frmpesqnf.edindesc.Text := frmdados.cds_cmobra.fieldbyname('descricao').asString;
       frmpesqnf.ediprves.Text := floattostr( frmdados.cds_cmobra.fieldbyname('prve').asfloat );
       frmpesqnf.edisubtotals.Text := floattostr( strtofloat(tirapontos(frmpesqnf.ediqtdes.Text)) * strtofloat(tirapontos(frmpesqnf.ediprves.Text)) );
       frmpesqnf.btngravaserv.Click;
     end;
  //endi


end;

procedure Tfrmconsserv.dbg_cmobraKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   entracodigo;
//endi
end;

procedure Tfrmconsserv.dbg_cmobraDblClick(Sender: TObject);
begin
entracodigo;
end;

procedure Tfrmconsserv.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

if cbxordpor.ItemIndex = 0 then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmconsserv.SpeedButton1Click(Sender: TObject);
begin
  if edilocalizar.Text = '' then
     exit;
  //endi

  frmdados.cds_cmobra.Filtered  := false;
  if cbxordpor.ItemIndex > 0 then
     begin
       frmdados.cds_cmobra.Filter := sOrdem + ' LIKE '+quotedstr('%'+edilocalizar.Text+'%');
     end
  else
     begin
       frmdados.cds_cmobra.Filter := sOrdem + ' = '+quotedstr(edilocalizar.Text);
     end;
  //endi
  frmdados.cds_cmobra.Filtered := true;

end;

procedure Tfrmconsserv.SpeedButton2Click(Sender: TObject);
begin
  frmdados.cds_cmobra.Filtered  := false;
  edilocalizar.Text := '';
end;

procedure Tfrmconsserv.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key := #0;
end;

end.

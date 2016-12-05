unit ufecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, SqlExpr,
  Db, DBTables, Mask, DBCtrls;

type
  Tfrmfecha = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlcentral: TPanel;
    SpeedButton1: TSpeedButton;
    mmoobs: TMemo;
    Label1: TLabel;
    pnlfecha: TPanel;
    Label13: TLabel;
    Label23: TLabel;
    Data: TLabel;
    lblData: TLabel;
    Label16: TLabel;
    lbltotal: TLabel;
    lbltroco: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    Label75: TLabel;
    edipdesc: TEdit;
    edivaldesc: TEdit;
    editotpagar: TEdit;
    ediDin: TEdit;
    edincopias: TEdit;
    pnlparcelamento: TPanel;
    Label30: TLabel;
    spdalterarparc: TSpeedButton;
    spdexcluirparc: TSpeedButton;
    spdincluirparc: TSpeedButton;
    spdsalvarparc: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lbldocumento: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label15: TLabel;
    spdaddparc: TSpeedButton;
    Label11: TLabel;
    cbxtipo1: TDBLookupComboBox;
    edipra1: TEdit;
    edidoc1: TEdit;
    edijuros1: TEdit;
    edivalor1: TEdit;
    dbgparcelamento: TDBGrid;
    edidv1: TMaskEdit;
    ediParc: TEdit;
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdadd178Click(Sender: TObject);
    procedure edinomecliChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edinomecliEnter(Sender: TObject);
    procedure edinomecliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edinomecliKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sClassificar, sFantasia, sNovoCli:string;
    
  public
    { Public declarations }
  end;

var
  frmfecha: Tfrmfecha;

implementation
   uses ugeral, ufrente, uDados;
{$R *.dfm}

procedure Tfrmfecha.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure Tfrmfecha.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;
end;

procedure Tfrmfecha.spdconfirmaClick(Sender: TObject);
begin
   //frmfrente.iccli := strtoint(lblcodcli.Caption);
   //frmfrente.sNomeCli := edinomecli.Text;
   //frmfrente.sFantasia := sfantasia;
   //frmfrente.sEnderecoent := ediendereco.Text;
   //frmfrente.sComplent := edicomplement.Text;
   //frmfrente.sBairroent := edibairro.Text;
   //frmfrente.sCidadeent := edicidade.Text;
   //frmfrente.sEstadoent := ediestado.Text;
   //frmfrente.sCepent := edicep.Text;
   //frmfrente.sTelefoneent := editelefone.Text;
   //frmfrente.sEmail := ediemail.Text;
   //frmfrente.sContato := edicontato.Text;
   //frmfrente.sCpf := edicpf.Text;
   //frmfrente.sRG := edirg.Text;
   //frmfrente.mmoinfent := mmoobs.Text;
   close;
end;



procedure Tfrmfecha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmfrente.bprocura := true;
end;

procedure Tfrmfecha.spdadd178Click(Sender: TObject);
var
  contador, x: Integer;
begin
end;

procedure Tfrmfecha.edinomecliChange(Sender: TObject);
begin
//if edinomecli.Text <> '' then
//   frmdados.cds_clientes.Locate(frmpesqclic.sClassificar,edinomecli.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure Tfrmfecha.FormShow(Sender: TObject);
begin
   sClassificar := 'Nome';
   //lblcodcli.Caption  := formatfloat('00000',frmfrente.iccli);
   //edinomecli.Text  := frmfrente.sNomeCli;
   //sfantasia := frmfrente.sFantasia;
   //ediendereco.Text  := frmfrente.sEnderecoent;
   //edicomplement.Text  := frmfrente.sComplent;
   //edibairro.Text  := frmfrente.sBairroent;
   //edicidade.Text  := frmfrente.sCidadeent;
   //ediestado.Text  := frmfrente.sEstadoent;
   //edicep.Text  := frmfrente.sCepent;
   //editelefone.Text  := frmfrente.sTelefoneent;
   //ediemail.Text  := frmfrente.sEmail;
   //edicontato.Text  := frmfrente.sContato;
   //edicpf.Text  := frmfrente.sCpf;
   //edirg.Text  := frmfrente.sRG;
   //mmoobs.Clear;
   //mmoobs.Lines.Add(frmfrente.mmoinfent);;
end;

procedure Tfrmfecha.edinomecliEnter(Sender: TObject);
begin
//pnllistacli.visible := true;

end;

procedure Tfrmfecha.edinomecliExit(Sender: TObject);
begin
//if not dbgcli.Focused then
//   pnllistacli.visible := false;
//endi
//if edinomecli.Text = frmdados.Cds_Clientes.FieldByName('nome').asString then
//   begin
//     sNovoCli := 'Não';
//     edinomecli.text := frmdados.cds_clientes.fieldbyname('nome').asString;
//     lblCodCli.Caption   := FormatFloat('00000',frmdados.cds_Clientes.FieldByName('codigo').AsFloat);
//     sFantasia    := frmdados.cds_Clientes.FieldByName('fantasia').AsString;
//     ediEndereco.Text    := frmdados.cds_clientes.FieldByName('enderecoent').AsString;
//     ediComplement.Text := frmdados.cds_clientes.FieldByName('complement').AsString;
//     ediBairro.Text      := frmdados.cds_clientes.FieldByName('Bairroent').asString;
//     ediCidade.Text      := frmdados.cds_clientes.FieldByName('cidadeent').AsString;
//     ediEstado.Text      := frmdados.cds_clientes.FieldByName('estadoent').AsString;
//     ediCep.Text         := frmdados.cds_clientes.FieldByName('cepent').AsString;
//     ediTelefone.Text    := frmdados.cds_clientes.FieldByName('telefoneent').AsString;
//     ediEmail.Text        := frmdados.cds_clientes.FieldByName('Email').AsString;
//     ediContato.Text     := frmdados.cds_clientes.FieldByName('Contato').AsString;
//     ediCpf.Text     := frmdados.cds_clientes.FieldByName('cpf').AsString;
//     edirg.Text     := frmdados.cds_clientes.FieldByName('ie').AsString;
//   end
//else
//   begin
//     sNovoCli := 'Sim';
//     lblCodCli.Caption   := '00000';
//     sfantasia    := '';
//     ediEndereco.Text    := '';
//     ediComplement.Text := '';
//     ediBairro.Text      := '';
//     ediCidade.Text      := frmdados.Cds_Config.fieldbyname('Campo5').asString;
//     ediEstado.Text      := frmdados.Cds_Config.fieldbyname('Campo16').asString;
//     ediCep.Text         := '';
//     ediTelefone.Text    := '';
//     ediEmail.Text       := '';
//     ediContato.Text     := '';
//     ediCpf.Text     := '';
//     edirg.Text     := '';
//     if not dbgcli.Focused then
//        begin
//          try
//            ediendereco.setfocus;
//          except
//          end;
//        end;
     //endi
//   end;
//endi

end;

procedure Tfrmfecha.SpeedButton1Click(Sender: TObject);
begin
   frmfrente.iccli := 0;
   close;
end;

procedure Tfrmfecha.edinomecliKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

end.

unit ufiltroregtrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroregtrib = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    ediinformacao: TEdit;
    CbxCampo: TComboBox;
    CbxOrdPor: TComboBox;
    CbxOperacao: TComboBox;
    Operador: TLabel;
    cbxoperador: TComboBox;
    btnaplicar: TBitBtn;
    btnlimpar: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxoperadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxCampoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOperacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxoperadorKeyPress(Sender: TObject; var Key: Char);
    procedure CbxCampoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOperacaoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOrdPorKeyPress(Sender: TObject; var Key: Char);
    procedure aplicarfiltro;
    procedure btnaplicarClick(Sender: TObject);
    procedure ediinformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure CbxCampoDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroregtrib: TFrmFiltroregtrib;

implementation

uses udados, ugeral, upesqregtrib;

{$R *.dfm}

procedure TFrmFiltroregtrib.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroregtrib.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroregtrib.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('NOME');
  cbxcampo.Items.Add('SIGLA');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('NOME');
  cbxOrdPor.Items.Add('SIGLA');
  cbxOrdPor.ItemIndex := frmpesqregtrib.iClassificar;

  cbxOperacao.Items.Clear;
  cbxOperacao.Items.Add('IGUAL');
  cbxOperacao.Items.Add('DIFERENTE DE');
  cbxOperacao.Items.Add('MENOR OU IGUAL');
  cbxOperacao.Items.Add('MAIOR OU IGUAL');
  cbxOperacao.Items.Add('MENOR');
  cbxOperacao.Items.Add('MAIOR');
  cbxOperacao.Items.Add('QUALQUER PARTE');
  cbxOperacao.ItemIndex := 0;

  cbxOperador.Items.Clear;
  cbxOperador.Items.Add('E');
  cbxOperador.Items.Add('OU');


  if frmpesqregtrib.sfiltro = '' then
     begin
       cbxOperador.Enabled := false;
     end
  else
     begin
       cbxOperador.Enabled := true;
       cbxOPerador.ItemIndex := 0;
     end;
  //endi


  ediinformacao.SetFocus;
end;

procedure TFrmFiltroregtrib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltroregtrib:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroregtrib.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroregtrib.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroregtrib.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroregtrib.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroregtrib.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroregtrib.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroregtrib.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroregtrib.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroregtrib.aplicarfiltro;
var
  sCampo:STRING;
  sOperacao:STRING;
  sOrdem:STRING;
  sFiltro:STRING;
  sInformacao:string;
begin

  CASE cbxOrdPor.ItemIndex OF
    0:begin
        sOrdem:='codigo';
        frmpesqregtrib.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='nome';
        frmpesqregtrib.sclassificar := 'NOME';
      end;
    2:begin
        sOrdem:='sigla';
        frmpesqregtrib.sclassificar := 'SIGLA';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_regtrib.IndexName :=  sOrdem;
      frmpesqregtrib.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqregtrib.sOrdenado := sOrdem;
      frmpesqregtrib.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqregtrib.sclassificar;
      frmpesqregtrib.lbllocalizar.Caption :=  frmpesqregtrib.sclassificar;
      frmpesqregtrib.edilocalizar.Text := '';
    end;
  //endth

  if(ediinformacao.Text <> '')then
    begin

      if (cbxoperador.Enabled) then
         if (cbxoperador.Text = '') then
            exit;
         //endi
      //endi


      if cbxCampo.Text = '' then
         Exit;
      //endi

      if cbxoperacao.Text = '' then
         Exit;
      //endi

      if cbxOrdPor.Text = '' then
         Exit;
      //endi

      Case cbxcampo.ItemIndex OF
        0:sCampo:='CODIGO';
        1:sCampo:='NOME';
        2:sCampo:='SIGLA';
      Else
        exit;
      End;

      CASE CbxOperacao.ItemIndex OF
        0:sOperacao:='=';
        1:sOperacao:='<>';
        2:sOperacao:='<=';
        3:sOperacao:='>=';
        4:sOperacao:='<';
        5:sOperacao:='>';
        6:sOPeracao:=' LIKE '+QUOTEDSTR('%'+ediinformacao.Text+'%');
      ELSE
        exit;
      END;

      if (CbxOperacao.ItemIndex<=5) then
         begin
           if cbxcampo.ItemIndex = 0 then
              sinformacao := ediinformacao.Text
           else
              sinformacao := Quotedstr(ediinformacao.Text);
           //endi
           sFiltro:=sFiltro + sCampo + sOperacao + sinformacao;
         end
      else
         begin
           sFiltro:= sCampo + sOperacao ;
         end;
      //endi

      if cbxOperador.Enabled then
         begin
           if cbxOperador.ItemIndex = 0 then
              begin
                frmpesqregtrib.sfiltro := frmpesqregtrib.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqregtrib.sfiltro := frmpesqregtrib.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqregtrib.stitrel := frmpesqregtrib.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqregtrib.stbrodape.Panels[0].Text := frmpesqregtrib.stitrel;

         end
      else
         begin
           frmpesqregtrib.sfiltro :='('+sfiltro+')';
           frmpesqregtrib.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqregtrib.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqregtrib.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_regtrib.Filtered := false;
          cds_regtrib.Filter := frmpesqregtrib.sfiltro;
          cds_regtrib.Filtered := true;
        end;
      //endth

      if frmpesqregtrib.pctdados.TabIndex = 1 then
         frmpesqregtrib.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi
end;

procedure TFrmFiltroregtrib.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroregtrib.ediinformacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if cbxcampo.ItemIndex = 0 then
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

procedure TFrmFiltroregtrib.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_regtrib.Filtered := false;
    cds_regtrib.Filter := '';
  end;
//endi

frmpesqregtrib.stbrodape.Panels[0].Text := '';
frmpesqregtrib.sfiltro := '';
frmpesqregtrib.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqregtrib.pctdados.TabIndex = 1 then
   frmpesqregtrib.carregaficha;
//endi



end;

procedure TFrmFiltroregtrib.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.

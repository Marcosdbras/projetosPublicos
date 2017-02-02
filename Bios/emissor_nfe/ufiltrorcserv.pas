unit ufiltrorcserv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltrorcserv = class(TForm)
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
  FrmFiltrorcserv: TFrmFiltrorcserv;

implementation

uses udados, ugeral, upesqrcserv;

{$R *.dfm}

procedure TFrmFiltrorcserv.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltrorcserv.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltrorcserv.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('DESCRIÇÃO');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('DESCRIÇÃO');
  cbxOrdPor.ItemIndex := frmpesqrcserv.iClassificar;
  
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


  if frmpesqrcserv.sfiltro = '' then
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

procedure TFrmFiltrorcserv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltrorcserv:=nil;
  form_ativo := '';

end;

procedure TFrmFiltrorcserv.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltrorcserv.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltrorcserv.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltrorcserv.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltrorcserv.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltrorcserv.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltrorcserv.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltrorcserv.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltrorcserv.aplicarfiltro;
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
        frmpesqrcserv.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='descricao';
        frmpesqrcserv.sclassificar := 'DESCRICAO';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_rcserv.IndexName :=  sOrdem;
      frmpesqrcserv.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqrcserv.sOrdenado := sOrdem;
      frmpesqrcserv.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqrcserv.sclassificar;
      frmpesqrcserv.lbllocalizar.Caption :=  frmpesqrcserv.sclassificar;
      frmpesqrcserv.edilocalizar.Text := '';
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
        1:sCampo:='DESCRICAO';
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
              if cbxcampo.ItemIndex = 2 then
                 sinformacao := ediinformacao.Text
              else
                 if cbxcampo.ItemIndex = 3 then
                    sinformacao := ediinformacao.Text
                 else
                    sinformacao := Quotedstr(ediinformacao.Text);
                 //endi
              //endi
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
                frmpesqrcserv.sfiltro := frmpesqrcserv.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqrcserv.sfiltro := frmpesqrcserv.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqrcserv.stitrel := frmpesqrcserv.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqrcserv.stbrodape.Panels[0].Text := frmpesqrcserv.stitrel;

         end
      else
         begin
           frmpesqrcserv.sfiltro :='('+sfiltro+')';
           frmpesqrcserv.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqrcserv.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqrcserv.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_rcserv.Filtered := false;
          cds_rcserv.Filter := frmpesqrcserv.sfiltro;
          cds_rcserv.Filtered := true;
        end;
      //endth

      if frmpesqrcserv.pctdados.TabIndex = 1 then
         frmpesqrcserv.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi



end;

procedure TFrmFiltrorcserv.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltrorcserv.ediinformacaoKeyPress(Sender: TObject;
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

if cbxcampo.ItemIndex = 2 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi


if cbxcampo.ItemIndex = 3 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi



end;

procedure TFrmFiltrorcserv.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_rcserv.Filtered := false;
    cds_rcserv.Filter := '';
  end;
//endi

frmpesqrcserv.stbrodape.Panels[0].Text := '';
frmpesqrcserv.sfiltro := '';
frmpesqrcserv.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqrcserv.pctdados.TabIndex = 1 then
   frmpesqrcserv.carregaficha;
//endi


end;

procedure TFrmFiltrorcserv.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.

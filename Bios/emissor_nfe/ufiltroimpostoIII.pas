unit ufiltroimpostoIII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroImpostoIII = class(TForm)
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
  FrmFiltroImpostoIII: TFrmFiltroImpostoIII;

implementation

uses udados, ugeral, upesqimpostoIII;

{$R *.dfm}

procedure TFrmFiltroImpostoIII.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroImpostoIII.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroImpostoIII.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('DESCRIÇÃO');
  cbxcampo.Items.Add('ALIQUOTA');
  cbxcampo.Items.Add('REDUÇÃO');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('DESCRIÇÃO');
  cbxOrdPor.Items.Add('ALIQUOTA');
  cbxOrdPor.Items.Add('REDUÇÃO');
  cbxOrdPor.ItemIndex := frmpesqimpostoIII.iClassificar;
  
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


  if frmpesqimpostoIII.sfiltro = '' then
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

procedure TFrmFiltroImpostoIII.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltroimpostoIII:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroImpostoIII.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroImpostoIII.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroImpostoIII.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroImpostoIII.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroImpostoIII.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroImpostoIII.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroImpostoIII.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroImpostoIII.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroImpostoIII.aplicarfiltro;
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
        frmpesqimpostoIII.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='descricao';
        frmpesqimpostoIII.sclassificar := 'DESCRICAO';
      end;
    2:begin
        sOrdem:='aliquota';
        frmpesqimpostoIII.sclassificar := 'ALÍQUOTA';
      end;
    3:begin
        sOrdem:='reducao';
        frmpesqimpostoIII.sclassificar := 'REDUÇÃO';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_impostoIII.IndexName :=  sOrdem;
      frmpesqimpostoIII.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqimpostoIII.sOrdenado := sOrdem;
      frmpesqimpostoIII.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqimpostoIII.sclassificar;
      frmpesqimpostoIII.lbllocalizar.Caption :=  frmpesqimpostoIII.sclassificar;
      frmpesqimpostoIII.edilocalizar.Text := '';
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
        2:sCampo:='ALIQUOTA';
        3:sCampo:='REDUCAO';
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
                frmpesqimpostoIII.sfiltro := frmpesqimpostoIII.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqimpostoIII.sfiltro := frmpesqimpostoIII.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqimpostoIII.stitrel := frmpesqimpostoIII.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqimpostoIII.stbrodape.Panels[0].Text := frmpesqimpostoIII.stitrel;

         end
      else
         begin
           frmpesqimpostoIII.sfiltro :='('+sfiltro+')';
           frmpesqimpostoIII.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqimpostoIII.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqimpostoIII.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_impostoIII.Filtered := false;
          cds_impostoIII.Filter := frmpesqimpostoIII.sfiltro;
          cds_impostoIII.Filtered := true;
        end;
      //endth

      if frmpesqimpostoIII.pctdados.TabIndex = 1 then
         frmpesqimpostoIII.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi



end;

procedure TFrmFiltroImpostoIII.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroImpostoIII.ediinformacaoKeyPress(Sender: TObject;
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

procedure TFrmFiltroImpostoIII.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_impostoIII.Filtered := false;
    cds_impostoIII.Filter := '';
  end;
//endi

frmpesqimpostoIII.stbrodape.Panels[0].Text := '';
frmpesqimpostoIII.sfiltro := '';
frmpesqimpostoIII.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqimpostoIII.pctdados.TabIndex = 1 then
   frmpesqimpostoIII.carregaficha;
//endi


end;

procedure TFrmFiltroImpostoIII.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.

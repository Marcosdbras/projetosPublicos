unit URelFichaIndAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelFichaIndAlu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    Lbl71: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    Lbl72: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel13: TQRLabel;
    Lbl73: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel15: TQRLabel;
    Lbl74: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel17: TQRLabel;
    Lbl75: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel19: TQRLabel;
    Lbl76: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel21: TQRLabel;
    Lbl77: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel23: TQRLabel;
    Lbl78: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel25: TQRLabel;
    Lbl79: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel27: TQRLabel;
    Lbl710: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel29: TQRLabel;
    Lbl711: TQRLabel;
    LblBim7: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel31: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel32: TQRLabel;
    Lbl81: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel34: TQRLabel;
    Lbl82: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel36: TQRLabel;
    Lbl83: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel38: TQRLabel;
    Lbl84: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel40: TQRLabel;
    Lbl85: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel42: TQRLabel;
    Lbl86: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel44: TQRLabel;
    lBL87: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel46: TQRLabel;
    lBL88: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel48: TQRLabel;
    Lbl89: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel50: TQRLabel;
    Lbl810: TQRLabel;
    LblBim8: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel52: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel53: TQRLabel;
    Lbl91: TQRLabel;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel56: TQRLabel;
    Lbl92: TQRLabel;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel58: TQRLabel;
    Lbl93: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRLabel60: TQRLabel;
    Lbl94: TQRLabel;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel62: TQRLabel;
    Lbl95: TQRLabel;
    LblBim9: TQRLabel;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRLabel65: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRLabel66: TQRLabel;
    Lbl101: TQRLabel;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRLabel68: TQRLabel;
    Lbl102: TQRLabel;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRLabel70: TQRLabel;
    Lbl103: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLabel72: TQRLabel;
    Lbl104: TQRLabel;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel74: TQRLabel;
    Lbl105: TQRLabel;
    LblBim10: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel77: TQRLabel;
    QRShape73: TQRShape;
    QRLabel78: TQRLabel;
    Lbl111: TQRLabel;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRLabel80: TQRLabel;
    Lbl112: TQRLabel;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRLabel82: TQRLabel;
    Lbl113: TQRLabel;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRLabel84: TQRLabel;
    Lbl114: TQRLabel;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRLabel86: TQRLabel;
    Lbl115: TQRLabel;
    QRLabel89: TQRLabel;
    QRBand2: TQRBand;
    QRLabel90: TQRLabel;
    QRLabel92: TQRLabel;
    QRShape83: TQRShape;
    QRLabel93: TQRLabel;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRLabel94: TQRLabel;
    QRShape86: TQRShape;
    QRShape74: TQRShape;
    LblBim11: TQRLabel;
    QRLabel91: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape90: TQRShape;
    QRShape89: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFichaIndAlu: TFrmRelFichaIndAlu;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelFichaIndAlu.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
//var
  //sBim:String;
begin
  with FrmDados do
  begin
   { if CDS_FichaIndalu.FieldByName('BIM').AsString = '1º Bimestre' then
    begin
      sBim := '1º Bim.';
    end
    else if CDS_FichaIndalu.FieldByName('BIM').AsString = '2º Bimestre' then
    begin
      sBim := '2º Bim.';
    end
    else if CDS_FichaIndalu.FieldByName('BIM').AsString = '3º Bimestre' then
    begin
      sBim := '3º Bim.';
    end
    else if CDS_FichaIndalu.FieldByName('BIM').AsString = '4º Bimestre' then
    begin
      sBim := '4º Bim.';
    end; }
      LblBim7.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;
      LblBim8.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;
      LblBim9.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;
      LblBim10.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;
      LblBim11.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;
      LblBim7.Caption := CDS_FichaIndalu.FieldByName('BIM').AsString;

      Lbl71.Caption := '';
      Lbl72.Caption := '';
      Lbl73.Caption := '';
      Lbl74.Caption := '';
      Lbl75.Caption := '';
      Lbl76.Caption := '';
      Lbl77.Caption := '';
      Lbl78.Caption := '';
      Lbl79.Caption := '';
      Lbl710.Caption := '';
      Lbl711.Caption := '';
      Lbl81.Caption := '';
      Lbl82.Caption := '';
      Lbl83.Caption := '';
      Lbl84.Caption := '';
      Lbl85.Caption := '';
      Lbl86.Caption := '';
      Lbl87.Caption := '';
      Lbl88.Caption := '';
      Lbl89.Caption := '';
      Lbl810.Caption := '';
      Lbl91.Caption := '';
      Lbl92.Caption := '';
      Lbl93.Caption := '';
      Lbl94.Caption := '';
      Lbl95.Caption := '';
      Lbl101.Caption := '';
      Lbl102.Caption := '';
      Lbl103.Caption := '';
      Lbl104.Caption := '';
      Lbl105.Caption := '';
      Lbl111.Caption := '';
      Lbl112.Caption := '';
      Lbl113.Caption := '';
      Lbl114.Caption := '';
      Lbl115.Caption := '';

    if CDS_FichaIndAlu.FieldByName('N_Ent_Com').AsString = 'S' then
      Lbl71.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Faz_Licao_Casa').AsString = 'S' then
      Lbl72.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Anota_Dev').AsString = 'S' then
      Lbl73.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Faz_Licao_Classe').AsString = 'S' then
      Lbl74.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Conversa_Mt').AsString = 'S' then
      Lbl75.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Desatencioso').AsString = 'S' then
      Lbl76.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Apatico').AsString = 'S' then
      Lbl77.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Entrega_Trab').AsString = 'S' then
      Lbl78.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Falta_Excesso').AsString = 'S' then
      Lbl79.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Atrasa_Frequencia').AsString = 'S' then
      Lbl710.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Brinca_Inoportuna').AsString = 'S' then
      Lbl711.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Lent_Escrever').AsString = 'S' then
      Lbl81.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Assim_Conteudo').AsString = 'S' then
      Lbl82.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Concentracao').AsString = 'S' then
      Lbl83.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Dislexia').AsString = 'S' then
      Lbl84.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Equil_Emocional').AsString = 'S' then
      Lbl85.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Interpre_Texto').AsString = 'S' then
      Lbl86.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Caligrafia').AsString = 'S' then
      Lbl87.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Rac_Logico').AsString = 'S' then
      Lbl88.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Coord_Motora').AsString = 'S' then
      Lbl89.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Rel_Prof_Col').AsString = 'S' then
      Lbl810.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Atencao').AsString = 'S' then
      Lbl91.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Faz_Dev_Casa').AsString = 'S' then
      Lbl92.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Est_Atento_Ativ_Prop').AsString = 'S' then
      Lbl93.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Faltar_Aulas').AsString = 'S' then
      Lbl94.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Maior_Cons_Pessoas').AsString = 'S' then
      Lbl95.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Rec_Cont').AsString = 'S' then
      Lbl101.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Rec_Par_Trab_Orientacao').AsString = 'S' then
      Lbl102.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Rec_Par_Aulas_Ext').AsString = 'S' then
      Lbl103.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Reforco_Licoes_Casa').AsString = 'S' then
      Lbl104.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Com_Pais').AsString = 'S' then
      Lbl105.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Acom_Dia_Est').AsString = 'S' then
      Lbl111.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Faz_Licoes_Cor_Tempo').AsString = 'S' then
      Lbl112.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Ver_Com_Enviar_Ass').AsString = 'S' then
      Lbl113.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('N_Dxa_Faltar').AsString = 'S' then
      Lbl114.Caption := 'X';
    if CDS_FichaIndAlu.FieldByName('Entrar_Contato_Sem').AsString = 'S' then
      Lbl115.Caption := 'X';
  end;
  //endth
end;

end.

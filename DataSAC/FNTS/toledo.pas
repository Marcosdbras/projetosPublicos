{Versão do Programa - 1.13}
unit toledo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Menus,UConstantes,IniFiles, Collection,
  TFlatPanelUnit;

type
  TfrmToledo = class(TForm)
    tCapturar: TTimer;
    popTray: TPopupMenu;
    Configurar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    btnSair: TBitBtn;
    ViewSplit1: TViewSplit;
    btnMinimizar: TBitBtn;
    Panel1: TPanel;
    FlatPanel1: TFlatPanel;
    btnCapturar: TBitBtn;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    btnContinuo: TButton;
    HeaderView1: THeaderView;
    rgPorta: TRadioGroup;
    rgBaudRate: TRadioGroup;
    rgDataBits: TRadioGroup;
    rgParidade: TRadioGroup;
    GroupBox1: TGroupBox;
    lbLiq: TLabel;
    rgOpcoesDiponibilizar: TRadioGroup;
    ViewSplit2: TViewSplit;
    ViewSplit3: TViewSplit;
    procedure btnSairClick(Sender: TObject);
    procedure btnCapturarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnContinuoClick(Sender: TObject);
    procedure tCapturarTimer(Sender: TObject);
    procedure lmdTrayDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PegaPesoBalanca;
    procedure SalvaConfiguracoesNoArquivoINI;
    procedure LeConfiguracoesNoArquivoINI;
  public
    { Public declarations }
  end;

var
  frmToledo: TfrmToledo;

implementation

uses modulo;
var
  EParaFechar:Boolean;
{$R *.DFM}

procedure TfrmToledo.PegaPesoBalanca;
var
  Peso: array[0..5]of char;
begin
  if PegaPeso(rgOpcoesDiponibilizar.ItemIndex,Peso,pchar('c:\')) = cSucesso then
    lbLiq.Caption:=StrPas(Peso)
  else
    lbLiq.Caption:='Erro!';
end;

procedure TfrmToledo.btnSairClick(Sender: TObject);
begin
  EParaFechar:=True;
  Close;
end;

procedure TfrmToledo.btnCapturarClick(Sender: TObject);
begin
  tCapturar.Enabled:= False;
  Screen.Cursor:=crHourGlass;
  try
    PegaPesoBalanca;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfrmToledo.btnAbrirClick(Sender: TObject);
begin
    if AbrePorta(rgPorta.ItemIndex+1,rgBaudRate.ItemIndex,rgDataBits.ItemIndex,rgParidade.ItemIndex) = cSucesso then
      ShowMessage('Porta Aberta com Sucesso!!!')
    else
    ShowMessage('Falha na Abertura da Porta!!!');

end;

procedure TfrmToledo.btnFecharClick(Sender: TObject);
begin
  if FechaPorta = cSucesso then
    ShowMessage('Porta Fechada com Sucesso!!!')
  else
    ShowMessage('Falha no Fechamento da Porta!!!');
end;

procedure TfrmToledo.btnContinuoClick(Sender: TObject);
begin
  if btnContinuo.Tag = 1 then
    begin
      tCapturar.Enabled:= False;
      btnCapturar.Enabled:= True;
      btnContinuo.Caption:= 'Contínuo...';
      btnContinuo.Tag:= 0;
    end
  else
    begin
      tCapturar.Enabled:= True;
      btnCapturar.Enabled:= False;
      btnContinuo.Caption:= 'Parar';
      btnContinuo.Tag:= 1;
    end;
end;

procedure TfrmToledo.tCapturarTimer(Sender: TObject);
var
  Peso: array[0..5]of char;
begin
  tCapturar.Enabled:= False;
  try
    if PegaPeso(0,Peso,pchar('c:\')) = cSucesso then
      lbLiq.Caption:=StrPas(Peso)
    else
      lbLiq.Caption:='Erro!';
  finally
    {Como este timer está rodando constantemente quando se está em modo contínuo,
     é necessário Marcar que foi realmente encerrado o programa no botão}
    if btnContinuo.Tag <> 0 then
      begin
        if EParaFechar then
          Close
        else
          tCapturar.Enabled:= True;
      end
    else
      lbLiq.Caption:='';
  end;
end;

procedure TfrmToledo.lmdTrayDblClick(Sender: TObject);
begin
//  lmdTray.Active:= False;
  Show;
end;

procedure TfrmToledo.SalvaConfiguracoesNoArquivoINI;
var
  ArquivoINI:TIniFile;
begin
  ArquivoINI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
  try
    ArquivoINI.WriteInteger(cSessaoConf,cPorta,rgPorta.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cBaudRate,rgBaudRate.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cParidade,rgParidade.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cDataBits,rgDataBits.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cDiponibi,rgOpcoesDiponibilizar.ItemIndex);
//    ArquivoINI.WriteBool(cSessaoConf,cMinimizado,lmdTray.Active);
    ArquivoINI.WriteBool(cSessaoConf,cContinuo,not btnCapturar.Enabled);
    ArquivoINI.WriteString(cSessaoConf,cDirPESO,'c:\');
  finally
    ArquivoINI.Free;
  end;
end;

procedure TfrmToledo.FormDestroy(Sender: TObject);
begin
  FechaPorta;
  SalvaConfiguracoesNoArquivoINI;
end;

procedure TfrmToledo.LeConfiguracoesNoArquivoINI;
var
  ArquivoINI:TIniFile;
begin
  ArquivoINI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
  try
    rgPorta.ItemIndex                   := ArquivoINI.ReadInteger(cSessaoConf,cPorta,0);
    rgBaudRate.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cBaudRate,0);
    rgParidade.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cParidade,2);
    rgDataBits.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cDataBits,0);
    rgOpcoesDiponibilizar.ItemIndex     := ArquivoINI.ReadInteger(cSessaoConf,cDiponibi,0);
//    lmdTray.Active                      := ArquivoINI.ReadBool(cSessaoConf,cMinimizado,False);
//    edDir.Text                          := ArquivoINI.ReadString(cSessaoConf,cDirPESO,ExtractFilePath(ParamStr(0)));
//    edDir.Hint                          := edDir.Text;                           
    if ArquivoINI.ReadBool(cSessaoConf,cContinuo,False) then
      if AbrePorta(rgPorta.ItemIndex+1,rgBaudRate.ItemIndex,rgDataBits.ItemIndex,rgParidade.ItemIndex) = cSucesso then
        btnContinuoClick(nil);
  finally
    ArquivoINI.Free;
  end;
end;

procedure TfrmToledo.FormCreate(Sender: TObject);
begin
  EParaFechar:=False;
  LeConfiguracoesNoArquivoINI;
end;

procedure TfrmToledo.btnDirClick(Sender: TObject);
begin
{  if SelectDir.Execute then
    begin
      edDir.Text:= SelectDir.SelectedFolder;
      edDir.Hint:= edDir.Text;
    end;}
end;

procedure TfrmToledo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.



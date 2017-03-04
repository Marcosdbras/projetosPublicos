unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  pngimage, ExtCtrls, AdvToolBarStylers, StdCtrls, AdvReflectionLabel,
  AdvGlowButton, RzLabel, RzBorder, AdvReflectionImage, AdvPanel,
  TFlatGroupBoxUnit, Collection, RXCtrls, acPNG;

type
  TForm_sobre = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvReflectionImage3: TAdvReflectionImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    AdvPanel2: TAdvPanel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    FlatGroupBox1: TFlatGroupBox;
    AdvReflectionImage6: TAdvReflectionImage;
    FlatGroupBox2: TFlatGroupBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    FlatGroupBox3: TFlatGroupBox;
    RxLabel7: TRxLabel;
    AdvReflectionImage1: TAdvReflectionImage;
    RxLabel8: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sobre: TForm_sobre;

implementation
   uses principal;
{$R *.dfm}

procedure TForm_sobre.FormShow(Sender: TObject);
begin
   label1.Caption := '';
   Label1.Caption := 'ID da instalação : '+ IntToStr(frmprincipal.bloqueio.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(frmprincipal.bloqueio.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data Vencimento : ' + frmprincipal.bloqueio.Data_VencimentoU + #13;
   Label1.Caption := Label1.Caption + 'Chave : ' + frmprincipal.bloqueio.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + frmprincipal.bloqueio.Email_ClienteU + #13;
   Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(frmprincipal.bloqueio.Versao_Sistema) + #13;
   if frmprincipal.bloqueio.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'DEMO'
   else
         Label1.Caption := Label1.Caption + 'REGISTRADO';

   //dados.Clear;
   //dados.Lines.Add(  l.Cliente_Nome );
   //dados.Lines.Add(  l.Cliente_CPF );
   //dados.Lines.Add(  l.Cliente_Endereco );
   //dados.Lines.Add(  l.Cliente_Cidade );
   //dados.Lines.Add(  l.Cliente_Estado );
   //dados.Lines.Add(  l.Cliente_Telefone );

end;

end.

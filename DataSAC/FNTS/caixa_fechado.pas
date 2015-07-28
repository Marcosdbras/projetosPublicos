unit caixa_fechado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Menus, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmcaixa_fechado = class(TForm)
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    SairdoSistema1: TMenuItem;
    query: TZQuery;
    image_fechado: TImage;
    procedure AbrirCaixa1Click(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public                                                                
    { Public declarations }
  end;

var
  frmcaixa_fechado: Tfrmcaixa_fechado;

implementation

uses principal, caixa_abertura_individual, modulo;

{$R *.dfm}

procedure Tfrmcaixa_fechado.AbrirCaixa1Click(Sender: TObject);
begin
  if  frmprincipal.autentica_caixa('Abrir Caixa',0) then
  begin

      query.close;
      query.sql.clear;
      query.sql.add('select * from c000045 where codigo = ''000099''');
      query.open;
      if frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring = query.fieldbyname('codigo').asstring then
      begin
        showmessage('Este caixa não pode ser utilizado em PDV!');
        exit;
      end;

      frmcaixa_abertura_individual := tfrmcaixa_abertura_individual.create(self);
      frmcaixa_abertura_individual.edata.Date := query.fieldbyname('data').AsDateTime;
      frmcaixa_abertura_individual.rsaldo.value := 0;
      frmcaixa_abertura_individual.ShowModal;
      if situacao_caixa = 'ABERTO' then close;
  end
  else
  begin
    application.messagebox('Não autorizado!','Erro!',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmcaixa_fechado.SairdoSistema1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_fechado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF situacao_caixa = 'FECHADO' then
  begin
    close;
    Application.Terminate;
  end
  else
    action := cafree;
end;

procedure Tfrmcaixa_fechado.FormShow(Sender: TObject);
begin
  image_fechado.Picture.LoadFromFile('\DataSAC\IMG\faixa_fechado.JPG');
end;

end.

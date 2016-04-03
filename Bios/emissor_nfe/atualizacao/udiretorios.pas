unit udiretorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Outline, DirOutln, StdCtrls;

type
  Tfrmdiretorios = class(TForm)
    DirectoryOutline1: TDirectoryOutline;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdiretorios: Tfrmdiretorios;

implementation
   uses uAtualizar;
{$R *.dfm}

procedure Tfrmdiretorios.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdiretorios.Button1Click(Sender: TObject);
begin
if BackupMySQL.tipo = 1 then
  begin
     BackupMySQL.edtpastabackup.Text := DirectoryOutline1.Directory+'\';
  end;

if BackupMySQL.tipo = 2 then
   begin
     BackupMySQL.edtcaminhogbase.Text := DirectoryOutline1.Directory+'\';
   end;

close;   
end;

end.

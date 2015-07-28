unit unFTP;

interface

uses
  Classes,Messages,sysutils, IniFiles,Dialogs, AdvShapeButton,
  Windows;

type
  threadupdate = class(TThread)
  private

    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure conectar();
  end;


implementation

uses StdCtrls, Forms, Math, principal;

procedure threadupdate.conectar;
var
  txt : textfile;
  chave : string;
  lista : TStringList;
  d,i : integer;
  lista_arquivos : string;
  conexao : string;
  ServerIni: TIniFile;
  passivo, arquivo, diretorio,diretorio_ftp:string ;
  atual : string;
  texto : string;
begin
  achei := 0;

  while not terminated do
  begin
    // abrindo arquivo de config de FTP
    ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'FTPConfig.ini');
    // lendo e atribuindo a variavel PASSIVO
    passivo := ServerIni.ReadString('CONEXAO','PASSIVO','');
    try
      // passando informacoes do arquivo ini para o componente de ftp
      frmprincipal.conexao_ftp.Host     := ServerIni.ReadString('CONEXAO','FTP','');
      frmprincipal.conexao_ftp.Username := ServerIni.ReadString('CONEXAO','USUARIO','');
      frmprincipal.conexao_ftp.Password := 'elpr1014';

      // lendo e atribuindo as variaveis arquivo, diretorio, diretorio_ftp
      // Nome do Arquivo a Baixar do FTP
      arquivo              :=ServerIni.ReadString('CONEXAO','MSGARQUIVOFTP','');



      // diretorio onde se encontra o arquivo no ftp
      diretorio_ftp        :=ServerIni.ReadString('CONEXAO','MSGPASTAFTP','');
      // Local onde o arquivo sera salvo
      diretorio            :=ServerIni.ReadString('CONEXAO','MSGSALVAR','');

      if passivo='S' then
         frmprincipal.conexao_ftp.Passive := true
      else
         frmprincipal.conexao_ftp.passive := false;

      // fechado arquivo ini
      ServerIni.Free;

      if not DirectoryExists(diretorio) then
      begin
        ForceDirectories(diretorio);
      end;
      frmprincipal.conexao_ftp.Connect();
      frmprincipal.conexao_ftp.ChangeDir(diretorio_ftp);
    except
       frmprincipal.conexao_ftp.Disconnect;
       vatualiza_exe := 0;
       achei := 0;
       frmprincipal.Timer1.Enabled := true;
       terminate;
       exit;
    end;
    frmprincipal.conexao_ftp.List(nil);
    Tamanho_arquivo := frmprincipal.conexao_ftp.Size(arquivo);

    if frmprincipal.conexao_ftp.DirectoryListing.Count = 0 then
       //
    else
    begin
      if frmprincipal.conexao_ftp.DirectoryListing.Count <> 0 then
      begin
        if not frmprincipal.conexao_ftp.Connected then exit;

        while i < frmprincipal.conexao_ftp.DirectoryListing.Count do
        begin
          if frmprincipal.conexao_ftp.DirectoryListing[I].FileName = arquivo then
          begin
            ExeAtualiza := frmprincipal.conexao_ftp.DirectoryListing[I].FileName;
            ExeAtual    := ExtractFilePath(ParamStr(0))+diretorio+'\'+arquivo;
            achei := 1;
            if not FileExists(diretorio+'\'+arquivo) then
            begin
              // tem um novo arquivo... inicio do download
                 achei := 2;
                 frmprincipal.conexao_ftp.get(arquivo,diretorio+'\'+arquivo,true); // baixa o arquivo
                 FileSetDate(diretorio+'\' + arquivo, DateTimeToFileDate(frmprincipal.conexao_ftp.DirectoryListing.Items[i].ModifiedDate));
            end
            else
            begin
              // verificando data do arquivo
              if FormatDateTime('dd/mm/yyyy HH:mm', FileDateToDateTime(FileAge(diretorio+'\'+arquivo))) <>
                 FormatDateTime('dd/mm/yyyy HH:mm', frmprincipal.conexao_ftp.DirectoryListing.Items[i].ModifiedDate ) then
              begin
                // achou uma atualizacao... inicio do download
                  achei := 2;
                  frmprincipal.conexao_ftp.get(arquivo,diretorio+'\'+arquivo,true); // baixa o arquivo
                  FileSetDate(diretorio+'\' + arquivo, DateTimeToFileDate(frmprincipal.conexao_ftp.DirectoryListing.Items[i].ModifiedDate));
              end;
            end;
          end;
          i := i + 1;
        end;
      end;
    end;
    frmprincipal.conexao_ftp.Disconnect;
    vatualiza_exe := 2;
    frmprincipal.Timer1.Enabled := true;
    terminate;
  end;
end;

procedure threadupdate.Execute;
begin
 conectar();
end;

end.

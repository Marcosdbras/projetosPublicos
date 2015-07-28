Unit email;

interface
uses SysUtils,IdMessage, IdSMTP;
type
TEmail = class
IdSMTP1: TIdSMTP;
IdMessage1: TIdMessage;
Constructor Create;
private

public
function EnviarEmail(De,Para,Titulo,Corpo,Arquivo:String;usuario:string; senha:string; servidor_smtp:string; porta:integer):boolean;
end;

implementation

Constructor TEmail.Create;
begin
IdSMTP1 := TIdSMTP.Create(nil);
IdMessage1 := TIdMessage.Create(nil);
end;

function TEmail.EnviarEmail(De,Para,Titulo,Corpo,Arquivo:String;usuario:string; senha:string; servidor_smtp:string; porta:integer):boolean;
begin
try
IdMessage1.Clear;
IdMessage1.From.Text :=De;
IdMessage1.ReplyTo.EMailAddresses:=De;
IdMessage1.Recipients.EMailAddresses:=Para;
IdMessage1.Date:=Now;
IdMessage1.Subject:=Titulo;
IdMessage1.Priority:=mpNormal;
if (Arquivo<>'') then
TIdAttachment.Create(IdMessage1.MessageParts,Arquivo);
IdMessage1.Body.Add(Corpo);
IdSMTP1.AuthenticationType:= atLogin;
IdSMTP1.Host:=servidor_smtp;
IdSMTP1.Port:=porta;
IdSMTP1.UserName:=usuario;
IdSMTP1.Password:=senha;
IdSMTP1.Connect;
result := true;
try
try
IdSMTP1.Send(IdMessage1);
except
result := false;
end;
finally
IdSMTP1.Disconnect;
end;
except
result := false;
end
end;
end.

 
unit uenviaxml;

interface

uses
  Classes;

type
  threadenviaxml = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
     uses uprincipal;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure threadenviaxml.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ threadenviaxml }

procedure threadenviaxml.Execute;


begin
  { Place thread code here }

  if not terminated then
    begin
      frmprincipal.atualizacaoBaseRemota;
    end;

 

end;

end.

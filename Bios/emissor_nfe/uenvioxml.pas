unit uenvioxml;

interface

uses
  Classes;

type
  envioxml = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure envioxml.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ envioxml }

procedure envioxml.Execute;
begin
  { Place thread code here }
  
end;

end.

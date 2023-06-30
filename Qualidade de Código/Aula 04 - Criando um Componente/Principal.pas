unit Principal;

interface

uses
  System.Classes;

procedure register;

type
  TNotifyEvent = procedure (Sender : TObject) of Object;

type
  TEventos = class(TComponent)
    private
    FSobreNome: String;
    FStatus: TNotifyEvent;
    procedure SetSobreNome(const Value: String);
    procedure SetStatus(const Value: TNotifyEvent);
    public
      function TamanhoString(Value : String) : Integer;
    published
      property SobreNome : String read FSobreNome write SetSobreNome;
      property Status : TNotifyEvent read FStatus write SetStatus;
  end;

implementation

{ TEventos }

procedure register;
begin
  RegisterComponents('Other ', [TEventos]);
end;

procedure TEventos.SetSobreNome(const Value: String);
begin
  FSobreNome := Value;
end;

procedure TEventos.SetStatus(const Value: TNotifyEvent);
begin
  FStatus := Value;
end;

function TEventos.TamanhoString(Value: String): Integer;
begin
  Result:= Length(Value);
end;

end.

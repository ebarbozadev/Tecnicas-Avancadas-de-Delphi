unit Model.Cliente;

interface

uses
  Model.Interfaces;

type
  TModelCliente = class(TInterfacedObject, iCliente)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCliente;
  end;

implementation

{ TModelCliente }

constructor TModelCliente.Create;
begin

end;

destructor TModelCliente.Destroy;
begin

  inherited;
end;

class function TModelCliente.New: iCliente;
begin
  Result:= Self.Create;
end;

end.

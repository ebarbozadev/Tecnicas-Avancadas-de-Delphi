<<<<<<< HEAD
unit Model.Cliente;

interface

uses
  Model.Interfaces;

type
=======
unit Model.Cliente;

interface

uses
  Model.Interfaces;

type
>>>>>>> e569085b03d77a6071220260059459b3f617824c
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

<<<<<<< HEAD
end.
=======
end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

<<<<<<< HEAD
unit Model.Pessoa;

interface

uses
  Model.Interfaces;

type
=======
unit Model.Pessoa;

interface

uses
  Model.Interfaces;

type
>>>>>>> e569085b03d77a6071220260059459b3f617824c
  TModelPessoa = class(TInterfacedObject, iPessoa)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

  inherited;
end;

class function TModelPessoa.New: iPessoa;
begin
  Result:= Self.Create;
end;

<<<<<<< HEAD
end.
=======
end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

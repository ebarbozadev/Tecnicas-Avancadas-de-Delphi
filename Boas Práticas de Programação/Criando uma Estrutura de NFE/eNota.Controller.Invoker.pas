<<<<<<< HEAD
unit eNota.Controller.Invoker;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, System.Generics.Collections;

Type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
    private
      FLista : TList<iCommand>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInvoker;
      function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TControllerInvoker }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TControllerInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
var
  I: Integer;
begin
  Result := Self;
  for I := 0 to Pred(FLista.Count) do
    FLista[I].Execute;
end;

class function TControllerInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
=======
unit eNota.Controller.Invoker;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, System.Generics.Collections;

Type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
    private
      FLista : TList<iCommand>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInvoker;
      function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TControllerInvoker }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TControllerInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
var
  I: Integer;
begin
  Result := Self;
  for I := 0 to Pred(FLista.Count) do
    FLista[I].Execute;
end;

class function TControllerInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

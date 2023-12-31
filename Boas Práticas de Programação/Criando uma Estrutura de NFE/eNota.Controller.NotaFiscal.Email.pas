<<<<<<< HEAD
unit eNota.Controller.NotaFiscal.Email;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

Type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
    private
      FParent : iNotaFiscal;
    public
      constructor Create(Parent : iNotaFiscal);
      destructor Destroy; override;
      class function New(Parent : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TControllerNotaFiscalEmail }

constructor TControllerNotaFiscalEmail.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Email;
end;

class function TControllerNotaFiscalEmail.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
=======
unit eNota.Controller.NotaFiscal.Email;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

Type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
    private
      FParent : iNotaFiscal;
    public
      constructor Create(Parent : iNotaFiscal);
      destructor Destroy; override;
      class function New(Parent : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TControllerNotaFiscalEmail }

constructor TControllerNotaFiscalEmail.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Email;
end;

class function TControllerNotaFiscalEmail.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

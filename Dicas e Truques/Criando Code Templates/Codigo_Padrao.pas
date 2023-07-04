<<<<<<< HEAD
unit Codigo_Padrao;

interface

type
  TMinhaClasse = class(TInterfacedObject, iMinhaInterface)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iMinhaInterface;
  end;

implementation

{ TMinhaClasse }

constructor TMinhaClasse.Create;
begin

end;

destructor TMinhaClasse.Destroy;
begin

  inherited;
end;

class function TMinhaClasse.New: iMinhaInterface;
begin
  Result:= Self.Create;
end;

end.
=======
unit Codigo_Padrao;

interface

type
  TMinhaClasse = class(TInterfacedObject, iMinhaInterface)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iMinhaInterface;
  end;

implementation

{ TMinhaClasse }

constructor TMinhaClasse.Create;
begin

end;

destructor TMinhaClasse.Destroy;
begin

  inherited;
end;

class function TMinhaClasse.New: iMinhaInterface;
begin
  Result:= Self.Create;
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

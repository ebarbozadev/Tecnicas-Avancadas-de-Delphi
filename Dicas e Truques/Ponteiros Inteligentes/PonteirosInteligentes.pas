unit PonteirosInteligentes;

interface

type
  // S� vai trabalhar com classe, porque s� precisamos finalizar as classes
  TPonteirosInteligentes<T : class> = record
    strict private
        // Objeto gen�rico que estou recebendo
        FValue : T;
        function GetValue : T;
      public
        class operator Implicit(smart: TPonteirosInteligentes <T>) : T;
        class operator Implicit(AValue: T) : TPonteirosInteligentes<T>;
        constructor Create(aValue : T);
        property Value : T read GetValue;
  end;

  // Classe para limpar o valor
  TFreeTheValue = class (TInterfacedObject)
    private
      fObjectToFree : TObject;
    public
      constructor Create(anObjectToFree : TObject);
      destructor Destroy; override;
  end;

implementation

{ TPonteirosInteligentes<T> }

constructor TPonteirosInteligentes<T>.Create(aValue: T);
begin
  FValue := aValue;
end;

function TPonteirosInteligentes<T>.GetValue: T;
begin
  Result := FValue;
end;

{ TFreeTheValue }

constructor TFreeTheValue.Create(anObjectToFree: TObject);
begin
  fObjectToFree := anObjectToFree;
end;

destructor TFreeTheValue.Destroy;
begin
  fObjectToFree.Free;
  inherited;
end;

end.

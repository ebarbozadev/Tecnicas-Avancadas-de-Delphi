unit Carro;

interface

type
  TCarro = class
    type TRoda = class
      private
        FTamanho: String;
        procedure SetTamanho(const Value: String);
      published
      Property Tamanho  : String read FTamanho write SetTamanho;
    end;
    private
    FModelo: String;
    FNome: String;
    procedure SetModelo(const Value: String);
    procedure SetNome(const Value: String);
    public
      Property Nome     : String read FNome write SetNome;
      Property Modelo   : String read FModelo write SetModelo;
  end;

implementation

{ TCarro.TRoda }

procedure TCarro.TRoda.SetTamanho(const Value: String);
begin
  FTamanho := Value;
end;

{ TCarro }

procedure TCarro.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TCarro.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.

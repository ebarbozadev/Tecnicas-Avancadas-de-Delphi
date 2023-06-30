unit Classe.Carro;

interface

type
  TCarro = class
    type
      TRoda = class
        NomeRoda  : String;
      end;
    private
    public
      Nome        : String;
      Modelo      : String;
      Dado        : String;
      Roda        : TRoda;

    function mostraCarro : String;
  end;

implementation

{ TCarro }

{ TCarro }

function TCarro.mostraCarro: String;
begin
  Nome           := 'BWM';
  Modelo         := 'e180';
  Roda.NomeRoda  := '15';

  Dado           := Self.Nome + ' - ' + Modelo + ' - ' + Roda.NomeRoda;

  Result         := Dado;
end;

end.

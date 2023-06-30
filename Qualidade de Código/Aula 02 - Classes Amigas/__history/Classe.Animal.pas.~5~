unit Classe.Animal;

interface

type
  TAnimal = class
    function Voz: String; virtual; abstract;
  end;

  TCachorro = class(TAnimal)
    function Voz : String; override;
  end;

  TGato = class (TAnimal)
    function Voz : String; override; final;
  end;

  TPeixe = class(TGato)
    function Voz : String; override;
  end;

implementation

end.

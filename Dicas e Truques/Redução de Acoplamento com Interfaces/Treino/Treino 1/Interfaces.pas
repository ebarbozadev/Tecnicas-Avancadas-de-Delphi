<<<<<<< HEAD
unit Interfaces;

interface

type
  iPessoa = interface
    ['{DB5D193D-05AE-40A7-947D-61D0263E3F7E}']
    Nome : String;
    function recebeNome(Nome : String) : String;
    procedure mostraTexto;
  end;

  iCliente = interface
    ['{F6E508B2-5D85-4856-A904-4DC9946F04C6}']
    procedure VIP(Resposta : String);
  end;

implementation

end.
=======
unit Interfaces;

interface

type
  iPessoa = interface
    ['{DB5D193D-05AE-40A7-947D-61D0263E3F7E}']
    Nome : String;
    function recebeNome(Nome : String) : String;
    procedure mostraTexto;
  end;

  iCliente = interface
    ['{F6E508B2-5D85-4856-A904-4DC9946F04C6}']
    procedure VIP(Resposta : String);
  end;

implementation

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

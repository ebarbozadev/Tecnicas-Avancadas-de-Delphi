<<<<<<< HEAD
unit Interfaces;

interface

type
  // Interface para a conexão
  IConexao = interface
    ['{8D127BDA-64D9-4075-8D55-797047C3A505}']
    procedure Gravar;
  end;

implementation

end.
=======
<<<<<<< HEAD
unit Interfaces;

interface

type
  // Utilizamos o 'i' para Interface
  iConexao = interface
    // Gerar uma assinatura da interface
    ['{F84C8953-0ADD-4E77-91DE-020D16F3040C}']
    procedure Gravar;
  end;

  iCliente = interface
    ['{85B122F8-CFBD-44F4-8D5E-BAA3A1802A0B}']
    function Nome : String;
  end;

implementation

end.
=======
unit Interfaces;

interface

type
  // Utilizamos o 'i' para Interface
  iConexao = interface
    // Gerar uma assinatura da interface
    ['{F84C8953-0ADD-4E77-91DE-020D16F3040C}']
    procedure Gravar;
  end;

  iCliente = interface
    ['{85B122F8-CFBD-44F4-8D5E-BAA3A1802A0B}']
    function Nome : String;
  end;

implementation

end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
>>>>>>> e569085b03d77a6071220260059459b3f617824c

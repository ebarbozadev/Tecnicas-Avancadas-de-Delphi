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

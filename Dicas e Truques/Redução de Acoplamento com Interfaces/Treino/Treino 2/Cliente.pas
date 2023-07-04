unit Cliente;

interface

uses
  Interfaces, System.Classes;

type
  TCliente = class
    public
      Nome      : String;
      DataHoje  : String;
      Dados     : String;
      Conexao   : IConexao;

      procedure CadastraCliente;

      function MostraDados : String;

      constructor Create(QualBanco : IConexao);
      destructor Destroy;
  end;

implementation

{ TCliente }

constructor TCliente.Create(QualBanco : IConexao);
begin
  Conexao   := QualBanco;
  DataHoje  := '04/07/2023';
end;

procedure TCliente.CadastraCliente;
var
  Lista   : TStringList;
begin
  Lista   := TStringList.Create;
  try
    Lista.Add('Nome: ' + Nome);
    Lista.Add('Data de Hoje' + DataHoje);
    Dados:= Nome + ' - ' + DataHoje;
    Lista.Add('Resumo: ' + Dados);

    Conexao.Gravar;
  finally
    Lista.Free;
  end;
end;

destructor TCliente.Destroy;
begin

end;

function TCliente.MostraDados : String;
begin
  Result:=  Self.Dados;
end;

end.

<<<<<<< HEAD
unit Cliente;

interface

uses
  System.Classes, Interfaces;

type
  TCliente = class
    public
      Nome      : String;
      Telefone  : String;
      Endereco  : String;
      Cidade    : String;
      UF        : String;
      Saldo     : Currency;

      Conexao   : IConexao;

      constructor Create(aConexao : IConexao);
      procedure CadastrarCliente;
      procedure CriarFinanceiro;
  end;

implementation

{ TCliente }

procedure TCliente.CadastrarCliente;
var
  Lista  : TStringList;
begin
  Lista  := TStringList.Create;
  try
    Lista.Add('Nome: ' + Nome);
    Lista.Add('Telefone: ' + Telefone);
    Lista.Add('Endereço: ' + Endereco);
    Lista.Add('Cidade: ' + Cidade);
    Lista.Add('UF: ' + UF);
    Lista.SaveToFile(Nome + '_Cliente.txt');

    Conexao.Gravar;

  finally
    Lista.Free;
  end;
end;

// Ele vai receber uma conexão do tipo IConexao
constructor TCliente.Create(aConexao : IConexao);
begin
  Conexao  := aConexao;
  UF       := 'PR';
  Saldo    := 1000;
end;

procedure TCliente.CriarFinanceiro;
begin

end;

end.
=======
unit Cliente;

interface

uses
  System.Classes, Interfaces;

type
  TCliente = class
    private
    public
      function Nome : String;

      Conexao  : iConexao;

      procedure CadastrarCliente;

      constructor Create(aConexao : iConexao);
      destructor Destroy; override;
  end;

implementation

{ TCliente }

procedure TCliente.CadastrarCliente;
var
  Lista    : TStringList;
begin
  Lista  := TStringList.Create;
  try
    Lista.Add('Nome: ' + Nome);
    Conexao.Gravar;
  finally
    Lista.Free;
  end;
end;

constructor TCliente.Create(aConexao : iConexao);
begin
  Conexao := aConexao;
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

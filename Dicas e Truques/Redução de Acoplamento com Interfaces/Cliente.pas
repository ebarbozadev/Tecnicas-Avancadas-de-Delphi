unit Cliente;

interface

uses
  System.Classes, Interfaces;

type
  TCliente = class
    private
    public
      Nome     : String;
      Conexao  : iConexao;

      procedure CadastrarCliente;

      constructor Create;
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

constructor TCliente.Create;
begin

end;

destructor TCliente.Destroy;
begin

  inherited;
end;

end.

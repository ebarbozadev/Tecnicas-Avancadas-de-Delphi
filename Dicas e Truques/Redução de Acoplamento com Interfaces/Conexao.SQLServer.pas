unit Conexao.SQLServer;

interface

uses
  Interfaces;

type
  TConexaoSQLServer = class(TInterfacedObject, IConexao)
    procedure Gravar;
  private
    Teste: string;
  end;

implementation

{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
begin
  Teste := 'Testando SQL';
end;

end.

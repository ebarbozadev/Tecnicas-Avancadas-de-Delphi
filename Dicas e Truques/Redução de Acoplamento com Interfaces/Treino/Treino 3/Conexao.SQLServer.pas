unit Conexao.SQLServer;

interface

uses
  Interfaces;

type
  TConexaoSQLServer = class(TInterfacedObject, IConexao)
  private
    Mensagem: string;
    public
      procedure Gravar;
  end;

implementation

{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
begin
  Mensagem   := 'SQLServer';
end;

end.

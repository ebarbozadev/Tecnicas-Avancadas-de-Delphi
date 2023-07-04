unit Conexao.MySQL;

interface

uses
  Interfaces;

type
  TConexaoMySQL = class(TInterfacedObject, IConexao)
  private
    Mensagem: string;
    public
      procedure Gravar;
  end;

implementation

{ TConexaoMySQL }

procedure TConexaoMySQL.Gravar;
begin
  Mensagem   := 'MySQL';
end;

end.

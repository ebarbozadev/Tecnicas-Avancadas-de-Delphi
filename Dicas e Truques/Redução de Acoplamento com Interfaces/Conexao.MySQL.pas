unit Conexao.MySQL;

interface

uses
  Interfaces;

type
  TConexaoMySQL = class(TInterfacedObject, IConexao)
    procedure Gravar;
  private
    Teste: string;
  end;

implementation

{ TConexaoMySQL }

procedure TConexaoMySQL.Gravar;
begin
  Teste  := 'Teste MySQL';
end;

end.

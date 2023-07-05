<<<<<<< HEAD
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
=======
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
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5

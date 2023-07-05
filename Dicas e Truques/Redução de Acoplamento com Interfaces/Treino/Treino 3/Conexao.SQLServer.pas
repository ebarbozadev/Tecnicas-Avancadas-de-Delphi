<<<<<<< HEAD
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
=======
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
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5

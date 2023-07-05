<<<<<<< HEAD
unit Conexao.SQLServer;

interface

uses
  Interfaces;

type
  TConexaoSQLServer = class(TInterfacedObject, iConexao)
    procedure Gravar;
  end;

implementation

{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
begin
  // Gravando no Banco
end;

end.
=======
unit Conexao.SQLServer;

interface

uses
  Interfaces;

type
  TConexaoSQLServer = class(TInterfacedObject, iConexao)
    procedure Gravar;
  end;

implementation

{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
begin
  // Gravando no Banco
end;

end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5

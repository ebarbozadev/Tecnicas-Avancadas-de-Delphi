<<<<<<< HEAD
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
=======
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
  // Gravar no Banco
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
  // Gravar no Banco
end;

end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
>>>>>>> e569085b03d77a6071220260059459b3f617824c

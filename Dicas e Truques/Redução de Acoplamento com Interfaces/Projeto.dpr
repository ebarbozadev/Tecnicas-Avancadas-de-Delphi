<<<<<<< HEAD
program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Cliente in 'Cliente.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas',
  Interfaces in 'Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown   := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
=======
program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Cliente in 'Cliente.pas',
  Interfaces in 'Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

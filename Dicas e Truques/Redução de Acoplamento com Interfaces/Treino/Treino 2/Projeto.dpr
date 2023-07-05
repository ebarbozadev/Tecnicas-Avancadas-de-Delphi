<<<<<<< HEAD
program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  Cliente in 'Cliente.pas',
  Interfaces in 'Interfaces.pas',
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas';

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
  Cliente in 'Cliente.pas',
  Interfaces in 'Interfaces.pas',
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown   := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5

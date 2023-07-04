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

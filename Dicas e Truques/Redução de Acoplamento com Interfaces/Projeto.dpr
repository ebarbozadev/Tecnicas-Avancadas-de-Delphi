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

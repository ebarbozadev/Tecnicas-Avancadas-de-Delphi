program eUsuario;

uses
  Vcl.Forms,
  eUsuario.View.Principal in 'eUsuario.View.Principal.pas' {Form1},
  eUsuario.Model.Conexao.Firedac in 'eUsuario.Model.Conexao.Firedac.pas',
  eUsuario.Model.Conexao.Interfaces in 'eUsuario.Model.Conexao.Interfaces.pas',
  eUsuario.Model.Query.Firedac in 'eUsuario.Model.Query.Firedac.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

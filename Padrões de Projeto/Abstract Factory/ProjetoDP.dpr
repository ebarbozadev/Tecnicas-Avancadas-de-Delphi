program ProjetoDP;

uses
  Vcl.Forms,
  Projeto in 'Projeto.pas' {Form1},
  Model.Interfaces in 'Model.Interfaces.pas',
  Model.Pessoa in 'Model.Pessoa.pas',
  Model.Cliente in 'Model.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

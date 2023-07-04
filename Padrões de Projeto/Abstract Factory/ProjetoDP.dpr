<<<<<<< HEAD
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
=======
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
>>>>>>> e569085b03d77a6071220260059459b3f617824c

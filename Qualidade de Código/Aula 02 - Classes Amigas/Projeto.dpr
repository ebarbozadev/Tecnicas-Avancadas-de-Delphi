program Projeto;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {Form1},
  Classe.Animal in 'Classe.Animal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

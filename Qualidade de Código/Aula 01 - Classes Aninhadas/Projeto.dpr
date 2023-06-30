program Projeto;

uses
  Vcl.Forms,
  View.Form in 'View.Form.pas' {Form1},
  Classe.Carro in 'Classe.Carro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

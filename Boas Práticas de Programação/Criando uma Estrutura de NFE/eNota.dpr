<<<<<<< HEAD
program eNota;

uses
  Vcl.Forms,
  eNota.View.Principal in 'eNota.View.Principal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
=======
program eNota;

uses
  Vcl.Forms,
  eNota.View.Principal in 'eNota.View.Principal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

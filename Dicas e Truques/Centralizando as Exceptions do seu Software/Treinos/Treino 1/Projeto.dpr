program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  TratarException in '..\..\..\..\..\..\..\..\Documents\Embarcadero\Studio\Projects\TratarException.pas',
  TratarErro in 'TratarErro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

<<<<<<< HEAD
unit eNota.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eNota.Controller.NotaFiscal.Interfaces;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  eNota.Controller.NotaFiscal;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;
end;

end.
=======
unit eNota.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eNota.Controller.NotaFiscal.Interfaces;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  eNota.Controller.NotaFiscal;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

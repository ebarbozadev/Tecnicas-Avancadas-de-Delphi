unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Cliente,
  Conexao.SQLServer, Conexao.MySQL;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Cliente : TCliente;
begin
  Cliente   := TCliente.Create(TConexaoMySQL.Create);
  Cliente.Nome             := 'Emanuel';
  Cliente.Sobrenome        := 'Barboza';
  Cliente.DataNascimento   := '18/04/2003';
  Cliente.CadastrarUsuario;
  try
    ShowMessage(Cliente.Dados);
  finally

  end;
end;

end.

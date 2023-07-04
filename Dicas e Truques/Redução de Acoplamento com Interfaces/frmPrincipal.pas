<<<<<<< HEAD
unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Cliente, Conexao.MySQL,
  Conexao.SQLServer, Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Cliente  : TCliente;
begin
  Cliente  := TCliente.Create(TConexaoMySQL.Create);
  try
    Cliente.Nome      := 'Emanuel';
    Cliente.Telefone  := '01 12 4567-8910';
    Cliente.Endereco  := 'Rua Teste';
    Cliente.Cidade    := 'Asbord';
    Cliente.CadastrarCliente;
    Cliente.CriarFinanceiro;
  finally
    Cliente.Free;
  end;
end;

end.
=======
unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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

end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

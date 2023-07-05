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
  Cliente   : TCliente;
begin
  Cliente:= TCliente.Create(TConexaoSQLServer.Create);
  Cliente.Nome := 'Carlos';
  try
    Cliente.CadastraCliente;
    ShowMessage(Cliente.Nome + ' - ' + Cliente.DataHoje + ' - ' + Cliente.Dados);
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
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Cliente, Conexao.MySQL,
  Conexao.SQLServer, Interfaces;

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
  Cliente   : TCliente;
begin
  Cliente:= TCliente.Create(TConexaoSQLServer.Create);
  Cliente.Nome := 'Carlos';
  try
    Cliente.CadastraCliente;
    ShowMessage(Cliente.Nome + ' - ' + Cliente.DataHoje + ' - ' + Cliente.Dados);
  finally
    Cliente.Free;
  end;
end;

end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5

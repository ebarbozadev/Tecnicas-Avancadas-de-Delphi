unit Cliente;

interface

uses
  System.SysUtils, Interfaces;

type
  TCliente = class
    public
      Nome             : String;
      Sobrenome        : String;
      DataNascimento   : String;
      Idade            : String;
      DataDeHoje       : String;

      Dados            : String;

      Conexao          : IConexao;
      procedure Gravar;

      procedure CadastrarUsuario;

      // Trunc((now - DataNascimento) / 365.25)

      constructor Create(QualBanco : IConexao);
      destructor Destroy; override;
  end;

implementation

{ TCliente }

procedure TCliente.CadastrarUsuario;
begin
  Idade        := DateToStr(Trunc((Now - StrToDate(DataNascimento)) / 365.25));
  DataDeHoje   := DateToStr(now);
  Dados:= 'Nome: ' + Nome +
          ' - Sobrenome: ' + Sobrenome +
          ' - DataNascimento: ' + DataNascimento +
          ' - Idade: ' + Idade + ' - Hoje �: ' + DataDeHoje;

  Conexao.Gravar;
end;

constructor TCliente.Create(QualBanco : IConexao);
begin
  Conexao      := QualBanco;
  DataDeHoje   := DateToStr(now);
end;

destructor TCliente.Destroy;
begin

end;
procedure TCliente.Gravar;
begin

end;

end.

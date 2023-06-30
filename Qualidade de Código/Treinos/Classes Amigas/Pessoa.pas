unit Pessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  public
    Property Nome : String read FNome write SetNome;

    Procedure Deficiente (Valor : String);
end;

type
  TDeficiente = class(TPessoa)
    private
    public
  end;


implementation

{ TPessoa }

procedure TPessoa.Deficiente(Valor: String);
begin

end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.

unit Classe.Pessoa;

interface

type
  TEventoMemo = procedure (Valor : String) of object;

type
  TPessoa = class
    private
    FSobrenome: String;
    FNome: String;
    FEventoMemo: TEventoMemo;
    procedure SetNome(const Value: String);
    procedure SetSobrenome(const Value: String);
    procedure SetEventoMemo(const Value: TEventoMemo);
    public
      property Nome : String read FNome write SetNome;
      property Sobrenome : String read FSobrenome write SetSobrenome;
      property EventoMemo : TEventoMemo read FEventoMemo write SetEventoMemo;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetEventoMemo(const Value: TEventoMemo);
begin
  FEventoMemo := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.SetSobrenome(const Value: String);
begin
  FSobrenome := Value;
end;

end.

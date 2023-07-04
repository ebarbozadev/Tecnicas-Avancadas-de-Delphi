<<<<<<< HEAD
unit Pessoa;

interface

uses
  Interfaces;

type
  TPessoa = class(TInterfacedObject, iPessoa)
    private
    public
      property Nome: String read FNome write FNome;

      function recebeNome(Nome : String) : String;
      procedure mostraTexto;

      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.mostraTexto;
begin
  ShowMessage()
end;

function TPessoa.recebeNome(Nome: String) : String;
begin
  Result:= Nome;
end;

class function TPessoa.New: iPessoa;
begin
  Result:= Self.Create;
end;

end.
=======
unit Pessoa;

interface

uses
  Interfaces;

type
  TPessoa = class(TInterfacedObject, iPessoa)
    private
    public
      property Nome: String read FNome write FNome;

      function recebeNome(Nome : String) : String;
      procedure mostraTexto;

      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.mostraTexto;
begin
  ShowMessage()
end;

function TPessoa.recebeNome(Nome: String) : String;
begin
  Result:= Nome;
end;

class function TPessoa.New: iPessoa;
begin
  Result:= Self.Create;
end;

end.
>>>>>>> e569085b03d77a6071220260059459b3f617824c

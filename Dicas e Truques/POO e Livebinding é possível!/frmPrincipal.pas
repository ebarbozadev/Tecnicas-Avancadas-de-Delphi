<<<<<<< HEAD
unit frmPrincipal;
<<<<<<< HEAD
interface
=======

interface

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Generics.Collections,
  Data.Bind.Controls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Grid,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator, Data.Bind.GenData;
<<<<<<< HEAD
=======

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    public
      constructor Create(vNome : String; vIdade : Integer);
<<<<<<< HEAD
      property Nome    : String read FNome write SetNome;
      property Idade   : Integer read FIdade write SetIdade;
  end;
=======

      property Nome    : String read FNome write SetNome;
      property Idade   : Integer read FIdade write SetIdade;
  end;

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    AdapterBindSource1: TAdapterBindSource;
    NavigatorAdapterBindSource1: TBindNavigator;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceAdapterBindSource1: TLinkGridToDataSource;
    DataGeneratorAdapter1: TDataGeneratorAdapter;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure AdapterBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    { Private declarations }
  public
    { Public declarations }
    function carregarLista : TList<TPessoa>;
  end;
<<<<<<< HEAD
var
  Form1: TForm1;
implementation
{$R *.dfm}
{ TPessoa }
=======

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
constructor TPessoa.Create(vNome: String; vIdade: Integer);
begin
  FNome   := vNome;
  FIdade  := vIdade;
end;
<<<<<<< HEAD
=======

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;
<<<<<<< HEAD
=======

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;
<<<<<<< HEAD
{ TForm1 }
=======

{ TForm1 }

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
procedure TForm1.AdapterBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter   := TListBindSourceAdapter<TPessoa>.Create(Self, carregarLista);
end;
<<<<<<< HEAD
=======

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
function TForm1.carregarLista: TList<TPessoa>;
var
  I: Integer;
begin
  Result:= TList<TPessoa>.Create;
<<<<<<< HEAD
=======

>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
  for I := 0 to 10 do
  begin
    Result.Add(TPessoa.Create('Usu�rio' + IntToStr(I), 10 + I));
  end;
end;
end.
=======
<<<<<<< HEAD
unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Grids, System.Generics.Collections;

type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
  public
      constructor Create(vNome : String; vIdade : Integer);
      property Nome    : String  read FNome  write SetNome;
      property Idade   : Integer read FIdade write SetIdade;
  end;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    AdapterBindSource1: TAdapterBindSource;
  private
    procedure SetListaPessoa(const Value: TList<TPessoa>);
    { Private declarations }
  public
    { Public declarations }
    function carregarLista : TList<TPessoa>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

constructor TPessoa.Create(vNome: String; vIdade: Integer);
begin
  FNome  := vNome;
  FIdade := vIdade;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TForm1 }

procedure TForm1.carregarLista;
begin
  // Carregar Lista
end;

procedure TForm1.SetListaPessoa(const Value: TList<TPessoa>);
begin
  FListaPessoa := Value;
end;

end.
=======
unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Grids, System.Generics.Collections;

type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
  public
      constructor Create(vNome : String; vIdade : Integer);
      property Nome    : String  read FNome  write SetNome;
      property Idade   : Integer read FIdade write SetIdade;
  end;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    AdapterBindSource1: TAdapterBindSource;
  private
    procedure SetListaPessoa(const Value: TList<TPessoa>);
    { Private declarations }
  public
    { Public declarations }
    function carregarLista : TList<TPessoa>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

constructor TPessoa.Create(vNome: String; vIdade: Integer);
begin
  FNome  := vNome;
  FIdade := vIdade;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TForm1 }

procedure TForm1.carregarLista;
begin
  // Carregar Lista
end;

procedure TForm1.SetListaPessoa(const Value: TList<TPessoa>);
begin
  FListaPessoa := Value;
end;

end.
>>>>>>> 70d4b2583594a60171b4bfbeb152e61faa99fee5
>>>>>>> e569085b03d77a6071220260059459b3f617824c

unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Generics.Collections,
  Data.Bind.Controls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Grid,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator, Data.Bind.GenData;

type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    public
      constructor Create(vNome : String; vIdade : Integer);

      property Nome    : String read FNome write SetNome;
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

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

constructor TPessoa.Create(vNome: String; vIdade: Integer);
begin
  FNome   := vNome;
  FIdade  := vIdade;
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

procedure TForm1.AdapterBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter   := TListBindSourceAdapter<TPessoa>.Create(Self, carregarLista);
end;

function TForm1.carregarLista: TList<TPessoa>;
var
  I: Integer;
begin
  Result:= TList<TPessoa>.Create;

  for I := 0 to 10 do
  begin
    Result.Add(TPessoa.Create('Usu�rio' + IntToStr(I), 10 + I));
  end;
end;
end.

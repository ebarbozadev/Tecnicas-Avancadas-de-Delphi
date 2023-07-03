unit eUsuario.Model.Query.Firedac;

interface

uses
  eUsuario.Model.Conexao.Interfaces, Data.DB, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TModelQueryFiredac = class(TInterfacedObject, iQuery)
    private
      FParent : iConexao;
      FQuery:
    public
      constructor Create(Parent : iConexao);
      destructor Destroy; override;
      class function New(Parent : iConexao) : iQuery;
  end;

implementation

{ TModelQueryFiredac }

constructor TModelQueryFiredac.Create;
begin
  FParent:= Parent;

end;

destructor TModelQueryFiredac.Destroy;
begin

  inherited;
end;

class function TModelQueryFiredac.New(Parent : iConexao) : iQuery;
begin
  Result:= Self.Create(Parent : iConexao);
end;

end.

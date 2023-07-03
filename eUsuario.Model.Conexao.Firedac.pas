unit eUsuario.Model.Conexao.Firedac;

interface

uses
  eUsuario.Model.Conexao.Interfaces, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB;

type
  tModelConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConexao : TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexao;
      function Connection : TCustomConnection;
  end;

implementation

{ tModelConexaoFiredac }

function tModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result:= FConexao;
end;

constructor tModelConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(Nil);
end;

destructor tModelConexaoFiredac.Destroy;
begin

  inherited;
end;

class function tModelConexaoFiredac.New: iConexao;
begin
  Result:= Self.Create;
end;

end.

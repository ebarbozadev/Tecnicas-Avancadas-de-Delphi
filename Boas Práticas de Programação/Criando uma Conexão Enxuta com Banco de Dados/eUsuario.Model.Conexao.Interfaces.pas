unit eUsuario.Model.Conexao.Interfaces;

interface

uses
  Data.DB, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  iConexao = interface
    ['{B983D399-013F-4582-8E52-4C52DDBED6BF}']
    function Connection : TCustomConnection;
  end;

  iQuery = interface
    ['{9AE909A6-632A-4E86-A987-DD6709B4E090}']
  end;

implementation

end.

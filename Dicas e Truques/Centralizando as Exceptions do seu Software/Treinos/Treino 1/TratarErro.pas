unit TratarErro;

interface

uses
  System.SysUtils, Vcl.Forms, System.Classes, Vcl.Dialogs;

type
  TException = class
    private
      // Arquivo que vai conter todos os erros
      FArquivoDeErro : String;
    public
      constructor Create;
      {
        'Responsavel' � aonde que qualquer erro que der, vai executar
        'Erro' vai pegar a excess�o que der

        Ou seja, a procedure 'TratarExcessao' vai receber dois para�metros, um respons�vel do tipo objeto por receber o erro
          e um erro do tipo exception
      }
      procedure TratarExcessao(Responsavel: TObject; Erro: Exception);
      // Procedure respons�vel por gravar o erro no arquivo
      procedure GravarNoArquivoDeErro(Valor : String);
  end;

implementation

{ TException }

constructor TException.Create;
begin
  // Pega a vari�vel e faz uma mudan�a retornando seu pr�prio nome e alterando a extens�o para .log
  FArquivoDeErro := ChangeFileExt(ParamStr(0), '.log');
  // Pegamos a aplica��o do VLC e colocamos que toda vez que houver uma excess�o que n�o foi tratada, ir� receber nossa procedure
  Application.OnException := TratarExcessao;
end;

procedure TException.GravarNoArquivoDeErro(Valor: String);
var
  // Cria uma vari�vel que recebe um arquivo de texto
  textoGravadoNoArquivo : TextFile;
begin
  // Vai fazer a jun��o do que est� no arquivo e o do �ltimo erro
  AssignFile(textoGravadoNoArquivo, FArquivoDeErro);
  if FileExists(FArquivoDeErro) then
    Append(textoGravadoNoArquivo)
  else
    Rewrite(textoGravadoNoArquivo);
    Writeln(textoGravadoNoArquivo, FormatDateTime('dd/mm/YY hh:nn:ss - ', Now) + Valor);
    CloseFile(textoGravadoNoArquivo);
end;

procedure TException.TratarExcessao(Responsavel: TObject; Erro: Exception);
begin
  GravarNoArquivoDeErro('===================');
  if TComponent(Responsavel) is TForm then
  begin
    GravarNoArquivoDeErro('Form: ' + TForm(TComponent(Responsavel)).Name);
    GravarNoArquivoDeErro('Caption: ' + TForm(TComponent(Responsavel)).Caption);
    GravarNoArquivoDeErro('Erro: ' + Erro.ClassName);
    GravarNoArquivoDeErro('Erro: ' + Erro.Message);
  end
  else
  begin
    GravarNoArquivoDeErro('Form: ' + TForm(TComponent(Responsavel).Owner).Name);
    GravarNoArquivoDeErro('Caption: ' + TForm(TComponent(Responsavel).Owner).Caption);
    GravarNoArquivoDeErro('Erro: ' + Erro.ClassName);
    GravarNoArquivoDeErro('Erro: ' + Erro.Message);
  end;
  ShowMessage(Erro.Message);
end;

var
  MinhaException : TException;

initialization
  MinhaException:= TException.Create;
finalization
  MinhaException.Free;

end.

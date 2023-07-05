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
        'Responsavel' é aonde que qualquer erro que der, vai executar
        'Erro' vai pegar a excessão que der

        Ou seja, a procedure 'TratarExcessao' vai receber dois paraâmetros, um responsável do tipo objeto por receber o erro
          e um erro do tipo exception
      }
      procedure TratarExcessao(Responsavel: TObject; Erro: Exception);
      // Procedure responsável por gravar o erro no arquivo
      procedure GravarNoArquivoDeErro(Valor : String);
  end;

implementation

{ TException }

constructor TException.Create;
begin
  // Pega a variável e faz uma mudança retornando seu próprio nome e alterando a extensão para .log
  FArquivoDeErro := ChangeFileExt(ParamStr(0), '.log');
  // Pegamos a aplicação do VLC e colocamos que toda vez que houver uma excessão que não foi tratada, irá receber nossa procedure
  Application.OnException := TratarExcessao;
end;

procedure TException.GravarNoArquivoDeErro(Valor: String);
var
  // Cria uma variável que recebe um arquivo de texto
  textoGravadoNoArquivo : TextFile;
begin
  // Vai fazer a junção do que está no arquivo e o do último erro
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

program CalculaArea;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ExemploCirculo in 'ExemploCirculo.pas';
var
  UmCirculo : Circulo;
  RaioLido : real;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    UmCirculo := Circulo.Cria;
    Writeln('Digite o valor do raio');
    Readln(RaioLido);
    UmCirculo.SetRaio(RaioLido);
    Writeln(UmCirculo.CalulaArea:5:2);
    sleep(1000);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

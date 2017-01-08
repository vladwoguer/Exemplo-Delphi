unit ExemploCirculo;

interface
  type Circulo = class
    private
      raio : real;
    public
      procedure SetRaio(VRaio: real);
      function CalulaArea : real;
      constructor Cria;
      destructor Destroi;
  end;

implementation
      procedure Circulo.SetRaio(VRaio: real);
      begin
           raio := VRaio;
      end;
      function Circulo.CalulaArea : real;
      begin
             CalulaArea:= 3.14*raio*raio;
      end;
      constructor Circulo.Cria;
      begin

      end;
      destructor Circulo.Destroi;
      begin

      end;

end.

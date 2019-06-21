#Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un
#string con las medidas de los lados.
#Crear un módulo llamado Formula.
#Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos
#(lados) y devuelva el perímetro.
#Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y
#devuelva el área.
#Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
#Instanciar un Rectangulo y un Cuadrado.
#Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo
#implementado.
module Formula
  def perimetro
    return 2*(self.ancho+self.largo)
  end
  def area
    return (self.ancho*self.largo)
  end

end

class Rectangulo
  attr_accessor :largo,:ancho

  include Formula

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "El largo mide #{@largo} y el Ancho es #{@ancho}"
  end
end
class Cuadrado
  attr_accessor :largo,:ancho
  include Formula

  def initialize(lado)
    @lado = lado
    @ancho = lado
    @largo = lado
  end
  def lados
    puts "El lado mide #{@lado}"
  end
end

rectangulo = Rectangulo.new(5,10)
cuadrado = Cuadrado.new(4)

rectangulo.lados
cuadrado.lados

pp "El area del rectangulo es #{rectangulo.area}"
pp "El perimetro del rectangulo es #{rectangulo.perimetro}"
pp "El area del cuadrado es #{cuadrado.area}"
pp "El perimetro del rectangulo es #{cuadrado.perimetro}"

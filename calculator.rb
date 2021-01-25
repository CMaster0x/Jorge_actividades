require 'pry'

class Calculadora

  attr_reader :last_value
  
  def suma(number1, number2)
    process(number1, number2, "+")
  end

  def resta(number1, number2)
    process(number1, number2, "-")
  end

  def multiplicacion(number1, number2)
    process(number1, number2, "*")
  end

  def division(number1, number2)
    process(number1, number2, "/")
  end

  def process(number1, number2, operation)
    @last_value = number1.send(operation, number2)
    puts @last_value
  end
end


calculator = Calculadora.new
calculator.suma(2,3)
puts calculator.last_value
calculator.resta(5,2)
calculator.multiplicacion(3,5)
puts calculator.last_value
calculator.division(-3, 3)


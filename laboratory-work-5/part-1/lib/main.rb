# frozen_string_literal: true

require_relative 'input'
require_relative 'calc'
require_relative '../data/messages'

# Main class is responsible for calling Input (user terminal interaction class)
# and calling Calc (class for making calculations)
class Main
  attr_accessor :var_a, :var_b, :result, :input, :calc

  def initialize
    @input = Input.new
    @calc = Calc.new
    @var_a, @var_b, @result = 0
  end

  def read
    self.var_a, self.var_b = input.read
  end

  def write(hash)
    input.write(hash)
  end

  def calculate
    self.result = calc.calculate(var_a, var_b)
  end
end

main = Main.new
main.read
main.write({
             VAR_A_MSG => main.var_a,
             VAR_B_MSG => main.var_b
           })
main.calculate
main.write({
             RESULT_MSG => main.result
           })

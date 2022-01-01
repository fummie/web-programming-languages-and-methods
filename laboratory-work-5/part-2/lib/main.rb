# frozen_string_literal: true

require_relative 'input'
require_relative 'algorithm'
require_relative '../data/messages'

# Main class is responsible for calling Input (user terminal interaction class)
# and calling Calc (class for making calculations)
class Main
  attr_accessor :array, :min_array, :max_array, :number, :input, :algorithm

  def initialize
    @input = Input.new
    @algorithm = Algorithm.new
    @array, @min_array, @max_array = []
    @number = 0
  end

  def read
    self.array, self.number = input.read
  end

  def write(hash)
    input.write(hash)
  end

  def operate
    self.min_array, self.max_array = algorithm.operate(array, number)
  end
end

main = Main.new
main.read
main.write({
             ARRAY_MSG => main.array,
             NUMBER_MSG => main.number
           })
main.operate
main.write({
             MIN_ARRAY_MSG => main.min_array,
             MAX_ARRAY_MSG => main.max_array
           })

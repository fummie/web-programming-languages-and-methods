# frozen_string_literal: true

require_relative 'input'
require_relative 'algorithm'
require_relative '../data/messages'

# Main class is responsible for calling Input (user terminal interaction class)
# and calling Algorithm (class for making calculations)
class Main
  attr_accessor :input, :algorithm, :radius, :perimeter

  def initialize
    @input = Input.new
    @algorithm = Algorithm.new
  end

  def read
    self.radius = input.read
  end

  def write(hash)
    input.write(hash)
  end

  def calculate
    self.perimeter = algorithm.calculate(radius, radius, 6)
  end
end

main = Main.new
main.read
main.write({
             RADIUS_MSG => main.radius
           })
main.calculate
main.write({
             PERIMETER_E3_MSG => main.perimeter.round(3),
             PERIMETER_E4_MSG => main.perimeter.round(4)
           })

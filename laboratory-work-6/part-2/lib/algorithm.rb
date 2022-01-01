# frozen_string_literal: true

# Algorithm class is responsible for performing algorithm operation
class Algorithm
  def calculate(radius, edge, edge_number)
    perimeters = Enumerator.produce do |prev|
      edge = expression(radius, edge)
      edge_number *= 2
      perimeter = edge_number * edge
      raise StopIteration if perimeter == prev

      perimeter
    end
    perimeters.max
  end

  private

  def expression(radius, edge)
    Math.sqrt((2 * (radius**2)) - (2 * radius * Math.sqrt((radius**2) - ((edge**2) / 4))))
  end
end

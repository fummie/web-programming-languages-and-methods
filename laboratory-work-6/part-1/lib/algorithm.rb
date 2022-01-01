# frozen_string_literal: true

# Algorithm class is responsible for performing algorithm operation
class Algorithm
  def calculate(radius, edge, edge_number)
    last_perimeter = 0
    loop do
      edge = Math.sqrt(2 * radius**2 - 2 * radius * Math.sqrt(radius**2 - (edge**2) / 4))
      edge_number *= 2
      perimeter = edge * edge_number
      return perimeter if last_perimeter == perimeter

      last_perimeter = perimeter
    end
  end
end

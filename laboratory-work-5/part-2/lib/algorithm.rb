# frozen_string_literal: true

# Algorithm class is responsible for performing algorithm operation
class Algorithm
  def operate(array, number)
    [array.min(number), array.max(number)]
  end
end

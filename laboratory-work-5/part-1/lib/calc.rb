# frozen_string_literal: true

# Calc class is resposible for making math calculations
class Calc
  def calculate(var_a, var_b)
    numerator = Math.sin(var_a) - var_b
    denominator = var_b.abs + Math.cos(var_b**2)
    numerator / denominator
  end
end

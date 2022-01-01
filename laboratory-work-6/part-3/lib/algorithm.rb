# frozen_string_literal: true

require_relative 'wolfram'

# Algorithm class is responible for performing mathematical operations
class Algorithm
  def self.root(expression)
    roots = Wolfram.roots(expression)
    roots.map!(&:to_c).reject! { |root| root.real >= 0 }
    return '' if roots.empty?

    min = roots.min
    min_str = min.to_s
    return min.real.to_s if min_str.end_with?('0i')

    min_str
  end
end

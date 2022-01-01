# frozen_string_literal: true

require_relative '../data/messages'

# Input class is responible for reading and writing to and from console and
# quering user
class Input
  def read
    print "#{QUERY_MSG}\n> "
    input = gets.split(' ').reject(&:empty?)
    return input.map(&:to_f) if valid?(input)

    puts INVALID_MSG
    read
  end

  def write(hash)
    hash.each { |key, value| puts "#{key} #{value}" }
  end

  private

  def valid?(input)
    input.length == 2 and input.all? { |element| number?(element) }
  end

  def number?(element)
    /\A[+-]?\d+(\.\d+)?\z/.match(element)
  end
end

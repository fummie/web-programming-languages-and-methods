# frozen_string_literal: true

require_relative '../data/messages'

# Input class is responsible for reading and writing to and from console and
# querying user
class Input
  def read
    print "#{ARRAY_QUERY_MSG}\n> "
    array = gets.split(' ').reject(&:empty?)
    print "#{NUMBER_QUERY_MSG}\n> "
    number = gets.strip
    return [array.map(&:to_f), number.to_i] if valid?(array, number)

    puts INVALID_MSG
    read
  end

  def write(hash)
    hash.each { |key, value| puts "#{key} #{value}" }
  end

  private

  def valid?(array, number)
    array.all? { |element| number?(element) } &&
      integer?(number) &&
      number.to_i < array.length
  end

  def number?(number)
    /\A[+-]?\d+(\.\d+)?\z/.match(number)
  end

  def integer?(number)
    /\A[+-]?\d+\z/.match(number)
  end
end

# frozen_string_literal: true

# Char class is a char implementation
class Char
  attr_reader :ascii, :char

  def initialize(char)
    inspected = char.inspect
    raise "Expecting a String type: #{inspected}" unless char.instance_of?(String)
    raise "Char should be ascii only: #{inspected}" unless char.ascii_only?
    raise "Should be 1 symbol in the Char: #{inspected}" unless char.length == 1

    @ascii = char[0].ord
    @char = char
  end

  def to_stdout
    print @char
  end
end

# frozen_string_literal: true

require_relative 'char'

# Superchar class is a Char class with blackjack and hookers
class Superchar < Char
  attr_reader :font

  def initialize(char, mode, font = nil)
    raise "Invalid mode: #{mode.inspect}" unless %w[ascii char].include?(mode)
    font && raise("Expect a String type: #{font.inspect}") unless font.instance_of?(String)

    case mode
    when 'ascii'
      super(char.chr)
    when 'char'
      super(char)
    end

    @font = font
  end
end

# frozen_string_literal: true

require_relative 'superchar'

char_a = Superchar.new(97, 'ascii')
char_b = Superchar.new('b', 'char', 'Times New Roman')

char_a.to_stdout
print "\n"
puts char_a.ascii
puts char_a.char
puts char_a.font

char_b.to_stdout
print "\n"
puts char_b.ascii
puts char_b.char
puts char_b.font

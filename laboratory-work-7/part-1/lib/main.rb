# frozen_string_literal: true

require_relative 'console'

DATA_DIR = File.expand_path('../data', __dir__)

def main(test_size = nil, test_range = nil, test_array = nil, test_f = nil, test_g = nil)
  size = (test_size || Console.read || 1000)
  range = (test_range || Console.read || 100)
  array = (test_array || Array.new(size) { rand(-range..range) })
  f = (test_f || File.join(DATA_DIR, 'F'))
  g = (test_g || File.join(DATA_DIR, 'G'))

  File.new(f, 'w+')
  File.new(g, 'w+')

  File.write(f, array.join("\n"), mode: 'a')
  File.write(g, File.open(f).readlines.uniq.join, mode: 'a')
end

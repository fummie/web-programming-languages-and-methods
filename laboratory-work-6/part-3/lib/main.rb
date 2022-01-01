# frozen_string_literal: true

require_relative 'input'
require_relative 'algorithm'

# Lambda root realization
lambda_root = lambda do |expression|
  Algorithm.root(expression)
end

# Block root realization
def self.block_root(expression)
  Algorithm.root(expression)
end

Input.write("Enter expression\n")
expression = Input.read
Input.write("\n")

Input.write("Block method realization result:\n")
Input.write("#{block_root(expression)}\n")
Input.write("\n")

Input.write("Lambda method realization result\n")
Input.write("#{lambda_root.call(expression)}\n")
Input.write("\n")

# frozen_string_literal: true

# IndexController class is a controller class for index
class IndexController < ApplicationController
  def input; end

  def output
    array = params[:array].split.map(&:to_i)
    number = params[:number].to_f

    if number == array.size
      enum = array.slice_when do |before, after|
        before_mod = (before % 5).zero?
        after_mod = (after % 5).zero?
        (!before_mod && after_mod) || (before_mod && !after_mod)
      end
    end

    @sequences = enum.to_a.select { |array| array.any? { |element| (element % 5).zero? } } || []
    @maxsequence = @sequences.max
    @sequences_number = @sequences.size
  end
end

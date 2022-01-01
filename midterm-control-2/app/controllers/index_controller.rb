# frozen_string_literal: true

# IndexController class is a controller class for index
class IndexController < ApplicationController
  def input; end

  def output
    array = params[:array].split(' ').map(&:to_f)
    range = params[:range].to_f

    max = array.max
    @result = array.reject { |number| (max - number).abs > range }
  end
end

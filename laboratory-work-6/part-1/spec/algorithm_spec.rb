# frozen_string_literal: true

require 'algorithm'
require_relative '../data/messages'
require_relative '../data/rspec/circle_parameters'

RSpec.describe Algorithm do
  let(:algorithm) { described_class.new }

  describe '#calculate' do
    CIRCLE_PARAMETERS.each do |radius, expected_result|
      context "with radius \"#{radius}\"" do
        it 'calculates circle perimeter' do
          result = algorithm.calculate(radius, radius, 6)
          expect(result).to be_within(1e-5).of(expected_result)
        end
      end
    end
  end
end

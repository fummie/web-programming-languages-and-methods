# frozen_string_literal: true

require 'algorithm'
require_relative '../data/messages'

RSpec.describe Algorithm do
  let(:algorithm) { described_class.new }

  describe '#operate' do
    it 'takes array and number "n" and returns array of "n" min elements and array of "n" max elements' do
      expect(algorithm.operate([4.0, 24.0, 1.0, 5.0, 251.0, 25.0, 1.0, 24.0, 124.0, -8.0], 4))
        .to eq([[-8.0, 1.0, 1.0, 4.0], [251.0, 124.0, 25.0, 24.0]])
    end
  end
end

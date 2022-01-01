# frozen_string_literal: true

require 'input'
require_relative '../data/messages'

RSpec.describe Input do
  let(:input) { described_class.new }

  describe '#write' do
    it 'print to conslole array of pairs (hashes)' do
      hash = { MIN_ARRAY_MSG => MIN_ARRAY_MSG }
      expect { input.write(hash) }.to output("#{MIN_ARRAY_MSG} #{MIN_ARRAY_MSG}\n").to_stdout
    end
  end

  describe '#read' do
    it 'ask user for array and number and returns them in an array on valid input"' do
      input.stub(:gets).and_return(" 4 24 1 5 251 25 1 24 124 -8\n", "4\n")
      expect(input.read).to eq([[4.0, 24.0, 1.0, 5.0, 251.0, 25.0, 1.0, 24.0, 124.0, -8.0], 4])
    end
  end

  describe '#valid?' do
    it 'tells if input is valid' do
      expect(input.send(:valid?, ['4', '24', '1', '5', '-8'], '4')).to be_truthy
    end
  end

  describe '#number?' do
    it 'tells if string is a number' do
      expect(input.send(:number?, '-5.65')).to be_truthy
    end
  end

  describe '#integer?' do
    it 'tells if string is an integer' do
      expect(input.send(:integer?, '-5')).to be_truthy
    end
  end
end

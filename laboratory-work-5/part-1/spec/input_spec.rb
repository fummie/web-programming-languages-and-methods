# frozen_string_literal: true

require 'input'
require_relative '../data/messages'

RSpec.describe Input do
  let(:input) { described_class.new }

  describe '#write' do
    it 'print to conslole array of pairs (hashes)' do
      hash = { VAR_A_MSG => VAR_A_MSG }
      expect { input.write(hash) }.to output("#{VAR_A_MSG} #{VAR_A_MSG}\n").to_stdout
    end
  end

  describe '#read' do
    it 'ask user for array and number and returns them in an array on valid input"' do
      input.stub(:gets).and_return(" 4 -8\n")
      expect(input.read).to eq([4.0, -8.0])
    end
  end

  describe '#valid?' do
    it 'tells if input is valid' do
      expect(input.send(:valid?, ['4', '-8'])).to be_truthy
    end
  end

  describe '#number?' do
    it 'tells if string is a number' do
      expect(input.send(:number?, '-5.65')).to be_truthy
    end
  end
end

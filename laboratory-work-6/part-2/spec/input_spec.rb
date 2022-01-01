# frozen_string_literal: true

require 'input'
require_relative '../data/messages'
require_relative '../data/rspec/invalid_inputs'
require_relative '../data/rspec/valid_inputs'

RSpec.describe Input do
  let(:input) { described_class.new }

  describe '#read' do
    INVALID_INPUTS.each do |invalid_input|
      context "with invalid input \"#{invalid_input}\"" do
        it 'raises an exeption' do
          allow(input).to receive(:gets).and_return(invalid_input)
          expect { input.read }.to raise_error(RuntimeError, INVALID_MSG)
        end
      end
    end

    VALID_INPUTS.each do |valid_input, matching_value|
      context "with valid input \"#{valid_input}\"" do
        it 'returns matching float value' do
          allow(input).to receive(:gets).and_return(valid_input)
          expect(input.read).to eq matching_value
        end
      end
    end
  end

  describe '#write' do
    it 'prints to conslole array of pairs (hashes)' do
      hash = { 'message' => 'value' }
      expect { input.write(hash) }.to output("message value\n").to_stdout
    end
  end
end

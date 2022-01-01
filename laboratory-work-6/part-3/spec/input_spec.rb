# frozen_string_literal: true

require 'input'

RSpec.describe Input do
  describe '#write' do
    it 'prints value to console' do
      expect { Input.write('value') }.to output('value').to_stdout
    end
  end

  describe '#read' do
    it 'reads expression from console' do
      allow(Input).to receive(:gets).and_return(' x^5+3x^3+x^2+1 ')
      expect(Input.read).to eq 'x^5+3x^3+x^2+1'
    end
  end
end

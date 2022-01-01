# frozen_string_literal: true

require 'algorithm'

RSpec.describe Algorithm do
  describe '#root' do
    it 'finds minimal negative root of the expession' do
      expect(Algorithm.root('x^5+3x^3+x^2+1')).to eq('-0.761328')
      expect(Algorithm.root('-x^2+sin(x/2)')).to eq('')
    end
  end
end

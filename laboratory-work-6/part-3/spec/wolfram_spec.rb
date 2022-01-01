# frozen_string_literal: true

require 'wolfram'

RSpec.describe Wolfram do
  describe '#roots' do
    it 'finds roots of the expression' do
      expect(Wolfram.roots('x^5+3x^3+x^2+1')).to eq(['-0.761328', '0.1115-1.7358i', '0.1115+1.7358i', '0.26912-0.60144i', '0.26912+0.60144i'])
      expect(Wolfram.roots('-x^2+sin(x/2)')).to eq(['0', '0.494913+0i'])
    end
  end
end

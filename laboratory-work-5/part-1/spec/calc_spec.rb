# frozen_string_literal: true

require 'calc'

describe Calc do
  let(:calc) { described_class.new }

  it 'calculates result depending on 2 variables' do
    result = calc.calculate(-5.0, 60.56)
    expect(result).to be_within(0.000001).of(-0.988926)
  end
end

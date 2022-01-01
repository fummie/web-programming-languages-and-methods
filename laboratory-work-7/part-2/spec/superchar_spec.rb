# frozen_string_literal: true

require 'superchar'

RSpec.describe Superchar do
  it 'should inherit behavior from Char' do
    expect(Superchar.superclass).to eq(Char)
  end

  it 'should create char based on ascii code' do
    superchar = Superchar.new(97, 'ascii')
    expect(superchar.char).to eq('a')
  end

  it 'should create char based on char' do # no shit, bruh
    superchar = Superchar.new('a', 'char')
    expect(superchar.char).to eq('a')
  end

  it 'should create ascii code based on char' do
    superchar = Superchar.new('a', 'char')
    expect(superchar.ascii).to eq(97)
  end

  it 'should create ascii code based on ascii' do # really
    superchar = Superchar.new(97, 'ascii')
    expect(superchar.ascii).to eq(97)
  end

  it 'should print char to_stdout' do
    superchar = Superchar.new('a', 'char')
    expect { superchar.to_stdout }.to output('a').to_stdout
  end

  it 'should create info about font' do
    superchar = Superchar.new('a', 'char', 'Times New Roman')
    expect(superchar.font).to eq('Times New Roman')
  end
end

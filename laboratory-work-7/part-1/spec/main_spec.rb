# frozen_string_literal: true

require 'main'

describe 'main' do
  it 'Creates first file with integers and second file with removed duplicates' do
    array = [2, 3, 3, 3, 2, 4, 5]

    tmp_dir = File.expand_path('../tmp', __dir__)
    f = File.join(tmp_dir, 'F')
    g = File.join(tmp_dir, 'G')

    open = ->(file) { File.open(file).readlines.map(&:chomp).map(&:to_i) }

    main(nil, nil, array, f, g)
    expect(open.call(f)).to eq array
    expect(open.call(g)).to eq array.uniq

    File.delete(f, g)
  end
end

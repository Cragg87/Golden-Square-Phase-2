require_relative '../lib/count_words.rb'

RSpec.describe 'count_words' do
  it 'returns 0 when passed a string' do
    expect(count_words("")).to eq (0)
  end

  it 'returns number of words as integer' do
    expect(count_words("Hello World")).to eq (2)
  end
end
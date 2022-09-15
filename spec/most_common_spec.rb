require_relative '../lib/most_common.rb'

RSpec.describe 'get_most_common_letter' do
  it 'returns the most common letter of a given string' do
    expect(get_most_common_letter("the roof, the roof, the roof is on fire!")).to eq ("o")
  end
end
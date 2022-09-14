require_relative '../lib/reading_time.rb'

RSpec.describe 'reading_time_calculator' do
  it 'returns 0 if the string is empty' do
    expect(reading_time_calculator("")).to eq (0)
  end

  it 'returns 1 if the string is 200 words or fewer' do
    expect(reading_time_calculator("two words")).to eq (1)
  end

  it 'returns 2 if the string is 201-400 words long' do
    expect(reading_time_calculator("a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a")).to eq (2)
  end
end
require_relative '../lib/diary.rb'

RSpec.describe 'make_snippet(string)' do
  it 'returns the string passed' do
    expect(make_snippet("Here are five word examples.")).to eq "Here are five word examples."
  end

  it 'returns the first five words of the string passed, plus "..." if more than five words' do
    expect(make_snippet("Here is an example with more than five words")).to eq "Here is an example with..."
  end
end
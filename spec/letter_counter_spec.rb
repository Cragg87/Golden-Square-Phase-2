require_relative '../lib/letter_counter.rb'

RSpec.describe LetterCounter do
  context 'the string "Digital Punk" is passed' do
    it 'returns array [2, "i"]' do
      counter = LetterCounter.new("Digital Punk")
      expect(counter.calculate_most_common).to eq [2, "i"]
    end
  end
end
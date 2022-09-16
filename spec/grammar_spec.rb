require_relative '../lib/grammar.rb'

RSpec.describe GrammarStats do
  it 'returns false for empty string' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("")).to eq false
  end

  it 'returns true if string starts with capital and ends with .' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("A.")).to eq true
  end

  it 'returns true if string starts with capital and ends with !' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Huge big enormous example sentence!")).to eq true
  end

  it 'returns true if string starts with capital and ends with ?' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Zebras. Why did it have to be Zebras?")).to eq true
  end

  it 'returns false if string starts with "."' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check(".")).to eq false
  end

  describe '#percentage_good' do
    context '.check method returns true for a given string' do
      it 'returns 100 when one text is given and passes' do
        grammar_stats = GrammarStats.new
        grammar_stats.check("A.")
        expect(grammar_stats.percentage_good).to eq 100
      end
    end

    context 'a number of texts are ".checked", some returning true and some false' do
      it 'returns percentage of texts returning true' do
        grammar_stats = GrammarStats.new
        grammar_stats.check("A.")
        grammar_stats.check("B!")
        grammar_stats.check("c")
        grammar_stats.check(".")
        expect(grammar_stats.percentage_good).to eq 50
      end
    end

    context 'an empty string is passed' do
      it 'returns 0' do
        grammar_stats = GrammarStats.new
        grammar_stats.check("")
        expect(grammar_stats.percentage_good).to eq 0
      end
    end
  end
end
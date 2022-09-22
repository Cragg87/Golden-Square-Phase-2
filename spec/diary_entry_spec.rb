require_relative '../lib/diary_entry.rb'

RSpec.describe DiaryEntry do
  it 'returns the title as a string' do
    entry = DiaryEntry.new("Monday", "Bring in the milk")
    expect(entry.title).to eq "Monday"
  end

  it 'returns the contents as a string' do
    entry = DiaryEntry.new("Monday", "Bring in the milk")
    expect(entry.contents).to eq "Bring in the milk"
  end

  describe '#count_words' do
    it 'returns the number of words in the contents as an integer' do
      entry = DiaryEntry.new("Monday", "Bring in the milk")
      expect(entry.count_words).to eq 4
    end

    it 'returns zero when contents is empty' do
      entry = DiaryEntry.new("Monday", "")
      expect(entry.count_words).to eq 0
    end
  end

  it 'returns the reading time for the contents' do
    entry = DiaryEntry.new("Monday", "Bring in the milk")
    expect(entry.reading_time(2)).to eq 2
  end

  context 'given a wpm of 0' do
    it 'fails' do
      entry = DiaryEntry.new("Monday", "Bring in the milk")
      expect{ entry.reading_time(0) }.to raise_error "Reading time must be above 0"
    end
  end

  describe '#reading_chunk' do
    context 'with a text readable within the given minutes' do 
      it 'returns the given contents' do
        entry = DiaryEntry.new("Monday", "Bring in the milk")
        expect(entry.reading_chunk(200, 3)).to eq "Bring in the milk"
      end
    end

    context 'when not enough time to read text in given minutes' do
      it 'returns a chunk of the contents' do
        entry = DiaryEntry.new("Shopping", "Beans, bread, butter, biscuits")
        expect(entry.reading_chunk(2, 1)).to eq "Bring in"
      end
    end
  end
end
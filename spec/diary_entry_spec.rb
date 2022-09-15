require_relative '../lib/diary_entry.rb'

RSpec.describe DiaryEntry do
  it 'returns the title as a string' do
    diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
    expect(diary_entry.title).to eq "Shopping"
  end

  it 'returns the contents as a string' do
    diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
    expect(diary_entry.contents).to eq "Beans, bread, butter"
  end

  describe '#count_words' do
    it 'returns the number of words in the contents as an integer' do
      diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
      expect(diary_entry.count_words).to eq 3
    end

    it 'returns zero when contents is empty' do
      diary_entry = DiaryEntry.new("Shopping", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  it 'returns the reading time for the contents' do
    diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
    expect(diary_entry.reading_time(1)).to eq 3
  end

  context 'given a wpm of 0' do
    it 'fails' do
      diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
      expect{ diary_entry.reading_time(0) }.to raise_error "Reading time must be above 0"
    end
  end

  describe '#reading_chunk' do
    context 'with a text readable within the given minutes' do 
      it 'returns the given contents' do
        diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter")
        expect(diary_entry.reading_chunk(200, 3)).to eq "Beans, bread, butter"
      end
    end

    context 'when not enough time to read text in given minutes' do
      it 'returns a chunk of the contents' do
        diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter, biscuits")
        expect(diary_entry.reading_chunk(2, 1)).to eq "Beans, bread,"
      end

      it 'returns the next chunk next time it is called' do
        diary_entry = DiaryEntry.new("Shopping", "Beans, bread, butter, biscuits")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "butter, biscuits"
      end
    end
  end
end
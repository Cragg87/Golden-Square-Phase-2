require_relative '../lib/diary.rb'
require_relative '../lib/diary_entry.rb'

RSpec.describe 'Diary Integration' do
  context 'when entries added to array' do
    it 'gets all entries' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
      entry_2 = DiaryEntry.new("Tuesday", "Make tea")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all).to eq [entry_1, entry_2]
    end

    it 'counts all words for each entry' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
      entry_2 = DiaryEntry.new("Tuesday", "Make tea")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 6
    end
  end
end
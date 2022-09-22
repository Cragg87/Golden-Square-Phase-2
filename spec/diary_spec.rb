require_relative '../lib/diary.rb'

RSpec.describe Diary do
  context 'initially' do
    it 'has an empty array' do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end
end
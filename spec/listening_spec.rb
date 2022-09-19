require_relative '../lib/listening.rb'

RSpec.describe Listening do
  context 'user enters a track' do
    it 'returns a list containing entered track' do
      listening = Listening.new
      listening.add("Track 1")
      expect(listening.track_list).to eq ("Track list: \n" + "1. Track 1")
    end
  end

  context 'user enters two tracks' do
    it 'returns a list containing entered tracks' do
      listening = Listening.new
      listening.add("Track 1")
      listening.add("Track 2")
      expect(listening.track_list).to eq ("Track list: \n" + "1. Track 1 \n" + "2. Track 2")
    end
  end
end
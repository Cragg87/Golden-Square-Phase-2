class Listening
  def initialize
    @tracks = Array.new
    @track_number = 1
  end

  def add(track)
    fail "You must enter a track title" if track == nil
    @tracks << "#{@track_number.to_s}. #{track}"
    @track_number += 1
  end

  def track_list
    "Track list: \n" + @tracks.join(" \n")
  end
end
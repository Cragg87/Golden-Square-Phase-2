Recipe:

1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
```ruby
class Listening
  def initialize
    @tracks = Array.new # added tracks will be stored in this array
    track_number = 1
  end

  def add(track) # track is a string
    # adds track and track number to @tracks array
    # adds 1 to track_number count
  end

  def track_list
    # returns heading and @tracks array as a string
  end
end

3. Create Examples as Tests
# 1
listening = Listening
listening.add("Track 1")
listening.track_list # => "Track list: \n 1. Track 1" 
# Not sure about that \n above - will need to test.

# 2
listening = Listening
listening.add("Track 1")
listenign.add("Track 2")
listening.track_list # => "Track list: \n 1. Track 1 \n 2. Track 2" 

# 3
listening = Listening
listening.add(nil) # fails with "No track added."
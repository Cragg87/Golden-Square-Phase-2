class DiaryEntry
  def initialize(title, contents) # title and contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split(" ").length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    fail "Reading time must be above 0" unless wpm > 0
    count_words / wpm.to_f.ceil
  end

  def reading_chunk(wpm, minutes) # 'wpm' is an integer representing the number
                                  # of words the user can read per minute
                                  # 'minutes' is an integer representing the 
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, 'reading_chunk' should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    chunk_size = wpm * minutes
    start_at = @furthest_word_read
    end_at = @furthest_word_read + chunk_size
    chunk = words[start_at, end_at]
    @furthest_word_read = end_at
    chunk.join(" ")
  end

  private

  def words
    @contents.split(" ")
  end
end

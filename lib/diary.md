Examples:

# 1 Gets all entries

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
entry_2 = DiaryEntry.new("Tuesday", "Make tea")
diary.add(entry_1)
diary.add(entry_2)
diary.all # => [entry_1, entry_2]

# 2 Counts all words for each entry

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
entry_2 = DiaryEntry.new("Tuesday", "Make tea")
diary.add(entry_1)
diary.add(entry_2)
diary.count_words # => 6

# 3 Gets estimated reading time for all diary entries

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
entry_2 = DiaryEntry.new("Tuesday", "Make tea")
diary.add(entry_1)
diary.add(entry_2)
diary.reading_time(2) # => 3

# 4 Gets best instance of diary entry for time given to read

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Bring in the milk")
entry_2 = DiaryEntry.new("Tuesday", "Make tea")
diary.add(entry_1)
diary.add(entry_2)
diary.find_best_entry_for_reading_time(2, 1) # => [entry_2]

# 5 Gets diary entry title

entry = DiaryEntry.new("Monday", "Bring in the milk")
entry.title # => "Monday"

# 6 Gets diary entry contents

entry = DiaryEntry.new("Monday", "Bring in the milk")
entry.contents # => "Bring in the milk"

# 7 Gets number of words in diary entry

entry = DiaryEntry.new("Monday", "Bring in the milk")
entry.contents # => 4

# 8 Gets estimated reading time for diary entry

entry = DiaryEntry.new("Monday", "Bring in the milk")
entry.reading_time(2) # => 2

# 9 Gets chunk of text from entry that can be read in given minutes

entry = DiaryEntry.new("Monday", "Bring in the milk")
entry.reading_chunk(2, 1) # => "Bring in"
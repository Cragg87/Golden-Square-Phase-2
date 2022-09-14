def reading_time_calculator(string)
  word_count = string.split(" ").count
  return (word_count / 200.to_f).ceil
end
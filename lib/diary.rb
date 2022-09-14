# Design

# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

# Examples:

# "Here are five word examples." -> "Here are five word examples."
# "Here is an example with more than five words." -> "Here is an example with..."
# "Here are four words." -> "Here are four words."
# "" -> ""

def make_snippet(string)
  if string.split.size > 5
    string.split[0...5].join(" ") + "..."
  else
    string.split[0...5].join(" ")
  end
end
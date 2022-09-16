class GrammarStats
  def initialize
    @texts_checked = 0
    @pass_rate = 0
  end

  def check(text)
    @texts_checked += 1
    if text.match?(/^[A-Z]/) && text.match?(/\.|\!|\?$/)
      @pass_rate += 1
      true
    else
      false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    (@pass_rate.to_f / @texts_checked.to_f) * 100
  end
end
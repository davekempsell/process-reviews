class Report
  def initialize(input)
    @input = input
  end

  def run
    fail "ERROR: Input Invalid" if @input.to_s != @input
    greens = @input.split(", ").count("Green")
    reds = @input.split(", ").count("Red")
    ambers = @input.split(", ").count("Amber")
    uncounted = @input.split(", ").count - [reds, greens, ambers].sum
    if uncounted == 0
      return "Green: #{greens}\nRed: #{reds}\nAmber: #{ambers}"
    else 
      return "Green: #{greens}\nRed: #{reds}\nAmber: #{ambers}\nUncounted: #{uncounted}"
    end
  end
end
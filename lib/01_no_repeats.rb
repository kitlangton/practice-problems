def no_repeats(year_start, year_end)
  years = []
  year_start.upto(year_end) do |year|
    years << year if no_repeat?(year)
  end
  years
end

def no_repeat?(year)
  arr = year.to_s.chars
  arr.each do |digit|
    return false if arr.count(digit) > 1
  end
  true
end

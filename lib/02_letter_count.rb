def letter_count(str)
  counts = Hash.new(0)
  str.scan(/\w/) do |char|
    counts[char] += 1
  end
  counts
end

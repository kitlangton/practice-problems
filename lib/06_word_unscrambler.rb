def word_unscrambler(str, words)
  dict = Hash.new { |h,k| h[k] = [] }
  words.each do |word|
    dict[word.chars.sort.join] << word
  end
  dict.map { |k, v| v if k == str.chars.sort.join }.flatten.compact
end

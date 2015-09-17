VOWELS = %W[a e i o u]

def ordered_vowel_words(str)
  str.split.map do |word|
    word if ordered_vowel_word?(word)
  end.compact.join(" ")
end

def ordered_vowel_word?(word)
  vowels_array = word.chars.select { |char| VOWELS.include?(char) }
  vowels_array.each_cons(2) do |a,b|
    return false unless a <= b
  end
  true
end

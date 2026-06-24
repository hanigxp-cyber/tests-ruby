def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  ([str] * n).join(" ")
end

def first_word(str)
  str.split.first
end

def start_of_word(str , n)
  str[0, n]
end

def titleize(str)
  little_words = ["and", "or", "the", "a", "an", "in", "of", "for", "but", "nor"]
  str.split.each_with_index.map do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end.join(" ")
end
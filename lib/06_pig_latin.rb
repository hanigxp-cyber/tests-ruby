def translate(string)
  string.split(' ').map { |word| translate_word(word) }.join(' ')
end

def translate_word(word)
  vowels = %w[a e i o u]

  if vowels.include?(word[0])
    word + "ay"
  else
    i = 0
    while i < word.length && !vowels.include?(word[i])
      if word[i] == 'q' && word[i + 1] == 'u'
        i += 2
        break
      end
      i += 1
    end
    word[i..] + word[0...i] + "ay"
  end
end
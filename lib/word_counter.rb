def word_counter(corpus, dictionary)
  result = {}
  clean = corpus.downcase

  dictionary.each do |word|
    count = clean.scan(word).length
    result[word] = count if count > 0
  end

  result
end
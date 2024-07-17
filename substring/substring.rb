# def substrings (word, dictionary)
#   result = Hash.new(0)
#   sentence = word.downcase

#   dictionary.each do |word|
#     result[word] = sentence.scan(word).count
#   end

#   result
# end

def substrings (word, dictionary)
  result = Hash.new(0)
  sentence = word.downcase

  dictionary.each do |word|
    count = sentence.scan(word).count
    result[word] = count if count > 0
  end

  result
end

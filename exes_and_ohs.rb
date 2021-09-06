# https://www.codewars.com/kata/55908aad6620c066bc00002a
def XO(str)
  words = str.split('').map {|w| w.downcase}
  uniq_words = words.uniq
  return true unless (uniq_words.include? 'x') || (uniq_words.include? 'o')
  
  x_words = words.select {|x_word| x_word == 'x'}.size
  o_words = words.select {|o_word| o_word == 'o'}.size
  
  return false if x_words == 0 || o_words == 0
  x_words == o_words
end
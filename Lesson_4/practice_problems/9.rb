words = "the flintstones rock"

def titleize(string)
  array = string.split(' ')
  array.map! {|word| word.capitalize}
  array.join(' ')
end

p titleize(words)

def titleize(words)
  words.split.map { |word| word.capitalize }.join(' ')
end
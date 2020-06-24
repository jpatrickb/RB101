statement = "The Flintstones Rock"

statement_array = statement.split('')
statement_array.each_with_object({}) do |let,hash|
  hash[let] = statement_array.count(let)
end


result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
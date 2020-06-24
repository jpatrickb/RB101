# question 2
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match?("Dino")

#6 #7
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
flinstones.concat(["Dino"])
flinstones.push("Dino")
flinstones.push("Dino","Hoppy")
flintstones.concat(%w(Dino Hoppy))

#8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

#9
statement = "The Flintstones Rock!"
statement.count('t')

#10

#1
10.times {|i| puts (" " * i) + "The Flinstones Rock!"}

#2
puts "the value of 40 + 2 is " + (40 + 2)
# fixes:
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}."

#3
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end



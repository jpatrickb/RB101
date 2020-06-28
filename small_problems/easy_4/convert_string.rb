#The String#to_i method converts a string of numeric characters (including an optional plus or 
#minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. 
#In this exercise, you will create a method that does the same thing.

#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#You may not use any of the methods mentioned above.

#For now, do not worry about leading + or - signs, nor should you worry about invalid 
#characters; assume all characters will be numeric.

#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, 
#Integer(), etc. Your method should do this the old-fashioned way and calculate the result by 
#analyzing the characters in the string.

#Examples

#string_to_integer('4321') == 4321
#string_to_integer('570') == 570

=begin

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: string of digits 


output: number
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Problem Domain: analyze characters in string and replace them with numeric alias

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.
1. 
2.
3.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A summary of the "entire problem" written in your own words.  *What* the problem requires,
not *how*.  (How is implemented in the Algorithm)
  
As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model: use a constant variable that is a hash that defines the string numbers



===================================================================================================

*** Examples / Test Cases / Edge Cases: ***

Examples: 

Come up with examples that validate your understanding of the problem, confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples: 

   


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Test Cases:
Note: Rules for a specific problem are an excellent place to find test cases.  If you're 
working with collections, it's a good idea to find test cases that deal with zero, one or multiple
elements in the collection.  
Try to provide test cases that handle any edge cases you can find.
If you're working with collections, it's a good idea to find test cases that deal with zero, one or
multiple elements in the collection.

Your Test Cases: 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Edge Cases:
Edge cases are situations that occur along the "edge" of a specific problem.  For example: problems that 
involve iterating over numbers have edge cases that are at both ends of the range.  Typically can 
involve working with negative numbers, 0, or extremely high values, empty, nil, {}, [].

Your Edge Cases:


===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.
Are you going to use arrays, hashes, etc?
Your data structure will influence your program.




==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

    1. create hash that has each string number assigned to actual number
    2. turn sting argument into an array
    3. iterate (map for transformation) over each array element like so: hash[array[index]]
    4. end

=end

#code

def string_to_integer(num_string)

hash = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=> 6, '7'=>7, '8'=>8, '9'=>9, '0'=>0}
digits = num_string.split('')
digits.map! {|string| hash[string]}

value = 0
digits.each {|digit| value = 10 * value + digit}
value
end



#==========================================================================================

HEXA = {'0'=>0, '1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=>6, '7'=>7,
'8'=>8, '9'=>9, 'a'=>10, 'b'=>11, 'c'=>12, 'd'=>13, 'e'=>14, 'f'=>15}

#hexadecimal_to_integer('4D9f') == 19871 == 15 * 144 * 3328 * 16384

#hexadecimal to integer formula = number/letter = value * (16** to a power
                  #starting with 0 and power incresed by 1 depending on location
                    # power by location in hexadecimal = ....[4][3][2][1][0], etc.

def hexadecimal_to_integer(hexadecimal)
  hexadecimal = hexadecimal.downcase.chars.map {|char| HEXA[char]}
  power = hexadecimal.map {|num| hexadecimal.size - (hexadecimal.index(num) + 1)}

  index = 0
  numbers = []
  loop do
    number = hexadecimal[index] * (16**power[index])
    numbers << number
    index += 1
    break if index == power.size
  end
  
  numbers.inject(:+)

end

p hexadecimal_to_integer('4D9f')

    
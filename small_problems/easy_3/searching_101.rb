#Write a program that solicits 6 numbers from the user, then prints a message that describes 
#whether or not the 6th number appears amongst the first 5 numbers.

#Examples:

#==> Enter the 1st number:
#25
#==> Enter the 2nd number:
#15
#==> Enter the 3rd number:
#20
#==> Enter the 4th number:
#17
#==> Enter the 5th number:
#23
#==> Enter the last number:
#17
#The number 17 appears in [25, 15, 20, 17, 23].


#==> Enter the 1st number:
#25
#==> Enter the 2nd number:
#15
#==> Enter the 3rd number:
#20
#==> Enter the 4th number:
#17
#==> Enter the 5th number:
#23
#==> Enter the last number:
#18
#The number 18 does not appear in [25, 15, 20, 17, 23].

=begin

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: 6 numbers, one at a time


output: the first five numbers in an array and a description if the 6th number is included 
in the array.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Problem Domain: seeing if a number is included in a group of numbers

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.
1. negative numbers, 0?, floats?
2.
3.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A summary of the "entire problem" written in your own words.  *What* the problem requires,
not *how*.  (How is implemented in the Algorithm)
  
As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model: retrieve each number one at a time putting them into an array,
see if the array includes the 6th number.

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


array

==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

1. retrieve a number
2. append number to array
3. stop loop after 6th iteration of number
4. see if the 6th number is already included in the array
5. print array and answer about inclusion of 6th number 
=end

#code
array = []
list = ['1st', '2nd', '3rd', '4th', '5th']
index = 0
loop do
  puts "===>Enter the #{list[index]} number:"
  array << gets.chomp.to_i
  break if index == 4
  index += 1
end

puts "===>Enter the last number:"
  last = gets.chomp.to_i
  if array.include?(last)
    puts "#{last} is included in the numbers #{array}."
  else
    puts "#{last} is not included in the numbers #{array}."
  end




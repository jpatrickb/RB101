=begin
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, 
between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: number


output: array of numbers from 1 to number in sequence
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Explicit Domain: 

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
  


Your Mental Model: 


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

  1. 1 upto number, append to empty array
  2. return array
    

=end
#code

def sequence(number)
  array = []
  1.upto(number) {|num| array << num}
  array
end

#p sequence(5) #== [1, 2, 3, 4, 5]
#p sequence(3) #== [1, 2, 3]
#p sequence(1) #== [1]

def sequencey(number)
  if number > 0 
    (1..number).to_a 
  else number <= 0
    (number..0).to_a
  end
end

p sequencey(10) #== [1, 2, 3, 4, 5]
p sequencey(-7) #== [1, 2, 3]
p sequencey(0) #==
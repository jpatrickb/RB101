#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other 
#number, and then compute the sum of those multiples. For instance, if the supplied number 
#is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#You may assume that the number passed in is an integer greater than 1.

#Examples

#multisum(3) == 3
#multisum(5) == 8
#multisum(10) == 33
#multisum(1000) == 234168

=begin

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: number greater than 1


output: sum of all multiples of 3 or 5 that exist btween 1 and the given number
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Problem Domain: finding the multiples of 3 and the multiples of 5 of a number, then adding

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: what is a multiple

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.
1. if a number is both a multiple of 3 and 5 do you count it twice...no...3 or 5
2.
3.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A summary of the "entire problem" written in your own words.  *What* the problem requires,
not *how*.  (How is implemented in the Algorithm)
  
As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model: a number is a multiple of a number if number % multiple ==0...find out where 
  which numbers between 1 and given input == 0 when divided by 3 or 5.  Add these numbers.


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

multiples placed in an array, then added



==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

1. get number from argument
2. select the numbers of a range upto the given number where number == 0 when % 5 or % 3
3. append them to an array 
4. add array numbers
5. end
=end

#code

def multisum(number)
  total = 0
  1.upto(number) do |n|
   if n % 5 == 0 || n % 3 == 0
      total += n
   end
  end
  total
end

p multisum(87)
p multisum(3)  #3
p multisum(5)  #8
p multisum(10)  #33
p multisum(1000) #234168

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  multiples = []
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      multiples << number
    end
  end
  multiples.inject(:+)
end

p multisum(87)
p multisum(3)  #3
p multisum(5)  #8
p multisum(10)  #33
p multisum(1000) #234168
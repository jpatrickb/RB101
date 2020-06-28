#Write a method that takes one integer argument, which may be positive, negative, or zero. 
#This method returns true if the number's absolute value is odd. You may assume that the 
#argument is a valid integer value.

#Examples:

#puts is_odd?(2)    # => false
#puts is_odd?(5)    # => true
#puts is_odd?(-17)  # => true
#puts is_odd?(-8)   # => false
#puts is_odd?(0)    # => false
#puts is_odd?(7)    # => true

#Keep in mind that you're not allowed to use #odd? or #even? in your solution.




=begin

*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: number


output: boolean (true/false)
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem. 

Problem Domain: know if the absolute value of the number is odd

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: the meaning of absolute value...which is the number without
the + or - consideration....or perhaps the + expression of the number, only.

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

Your Mental Model: the method will take the number and convert to it's absolute value
then it will decide if it is an odd number or not 



===================================================================================================

*** Examples / Test Cases / Edge Cases: ***

Examples: 

Come up with examples that validate your understanding of the problem, confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:  is_odd?(3)   => true

   


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

Your Edge Cases: is_odd(0) => false


===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.
THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.
Are you going to use arrays, hashes, etc?
Your data structure will influence your program.

method that evaluates the argument


==================================================================================================
*** Algorithm: ***

Start with your mental model if you have one.  While you're still learning to solve problems,
it would be a good idea to consistently create mental models to assist you.
Otherwise you can start with your Data Structure, and think about how you'd build and manipulate
it to get to the output.  For example, if you're going to use an array maybe you would want to focus
on constructing or iterating over a collection.
** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    - The challenege is to get to the right amount of detail (think about the steps to creating a
    peanut butter and jelly sandwich.)
    - You want something that you can readily convert to code without actually writing code.
    - Before implementing the algorithm, you should test it manually with test cases.  

1.using method definition provide one integer argument
2.make sure it's the absolute or positive expression of the integer
3.see if the argument % 2 != 0
4.return answer

=end

#code

def is_odd?(number)
  number = number.abs
  number % 2 != 0
end

puts is_odd?(-99)

def is_odd?(number)
  number = number.abs
  number.remainder(2) == 1
end

puts is_odd?(-987)
=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the 
values from the argument Arrays. There should be no duplication of values in the returned Array, 
even if there are duplicates in the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: two arrays


output: one combined array with duplicates deleted
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
  


Your Mental Model: compare two arrays, edit, and then combine


===================================================================================================

*** Examples / Test Cases / Edge Cases: ***

Examples: 

Come up with examples that validate your understanding of the problem, confirm
that you are working in the right direction.  

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


arrays

==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases.

1. get arrays from argument
2. combine array by concacting each element unless new array include? element  
 3.end   

=end
#code

def merge(array1,array2)
  new_array = []
  array1.each {|num| new_array << num unless new_array.include?(num)}
  array2.each {|num| new_array << num unless new_array.include?(num)}
new_array
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]

def merge(array_1, array_2)
  array_1 | array_2
end

=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and 
returns a new Array that contains the product of every pair of numbers that can be formed between 
the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: two arrays


output: the multiplication of each possible pair
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
  


Your Mental Model: multiply each number of first array by each of second

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

 1. get argument from method
 2. use a loop
 a. set result array to empty
 b. concat first array index0 * second array index0
 c. then first array index0 * second array index1
 d. etc
 3. sort result
 4. end 
  
=end
#code

def multiply_all_pairs(array1, array2)
  result = []
  
  array1.each do |number|
    index = 0
    loop do
      result << number * array2[index] 
      index += 1
      break if index == array2.size
    end 
  end
result.sort
end
 
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

def multiply_all_pairss(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairss([2, 4], [4, 3, 1, 2])

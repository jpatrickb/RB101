=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those 
Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, 
fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: array of numbers


output: array of same numbers in alphabetical order
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Explicit Domain: how to sort numbers by the first letter of that number

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

Your Mental Model: will make a hash with the english words, translate, then sort, then re-translate


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

hash, array


==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

  1.make a hash with the english words as a constant
  2.translate the numbers into an array of words
  3.sort those words
  4.translate back into an array of numbers
  5.end
  
    

=end
#code

NUMBER_WORDS = {0=>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 
  8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 
14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'}

def alphabetic_number_sort(array)
  
  array.map! {|number| NUMBER_WORDS[number]}
  array.sort.map {|word| NUMBER_WORDS.key(word)}
end


p alphabetic_number_sort((0..19).to_a) #== [
  #8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  #6, 16, 10, 13, 3, 12, 2, 0
#]

NUMBER_WORD = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
numbers.sort_by { |number| NUMBER_WORD[number] }
end

  
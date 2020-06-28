#Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

#Examples:

#puts reverse_sentence('') == ''
#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'
#The tests above should print true.

=begin

  *** (Understand the) Problem: ***
  
  First identify the inputs and the outputs of the problem.
  
  input: string
  
  
  output: string in reverse order
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
  examined to solve a problem. 
  
  Problem Domain: iterating through string, reversing the order of words
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Check for Implicit Requirements.  Are there requirements that are not explicitly stated?
  
  Implicit Requirements: 
  
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
  understand the problem.
  1. should we reverse punctuation or try and keep it a sentence?
  2.
  3.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Mental Model:  A summary of the "entire problem" written in your own words.  *What* the problem requires,
  not *how*.  (How is implemented in the Algorithm)
    
  As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
  captures the requirements of the problem.
  
  Your Mental Model: make the string into an array and then reverse the order of indexes, then 
  put it back into string form
  
  ===================================================================================================
  
  *** Examples / Test Cases / Edge Cases: ***
  
  Examples: 
  
  Come up with examples that validate your understanding of the problem, confirm
  that you are working in the right direction.  Typically the confirmation will come from documentation of 
  a process, or a person.
  
  Your Examples: 
  
     'I think it's pretty clear. => 'clear. pretty it's think I'
  
  
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
  THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.
  Are you going to use arrays, hashes, etc?
  Your data structure will influence your program.
  
  String to Array to  transformed string
  
  ==================================================================================================
  *** Algorithm: ***
  
1.split string into separate words
2. push string into an array one word at a time by prepending word (unshift)
3. join array into string again
4. end 
  
=end
  
#code

def reverse(string)
  rev_array = []
  split_string = string.split(' ') 
  split_string.each do |word| 
    rev_array.unshift(word)
  end
    puts rev_array.join(' ')
end

reverse('Hello dooly doly doll!')

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

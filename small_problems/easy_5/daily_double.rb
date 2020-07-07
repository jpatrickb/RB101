=begin
Write a method that takes a string argument and returns a new string that contains the value of 
the original string with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: string


output: given string with consecutive duplicate characters collapsed
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Problem Domain: anaylyze a word so as to delete consecutive duplicates

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
  

Your Mental Model: iterate over string words to delete doubles and then return to string


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

string to array to string


==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

  1. get string from argument
  2. split into words in an array
  3. with each word find out if there are consecutive letters
    a.rebuild word with iteration, if letter already exists delete it
  4. join string
  5.end
  
    

=end
#code

def cruncht(text)
  crunch_text = ''
  text.each_char do |c|
   crunch_text << c unless crunch_text[-1] == c
  end
  crunch_text
end

p cruncht('ddaaiillyy ddoouubbllee') #== 'daily double'
p cruncht('4444abcabccba') #== '4abcabcba'
p cruncht('ggggggggggggggg') #== 'g'
p cruncht('a') #== 'a'
p cruncht('')

def crunch(text)
  
  crunch_text = text[0]
  text.each_char do |c|
   crunch_text << c unless crunch_text[-1].match(c)
  end
  
  if crunch_text == nil
    ''
  else crunch_text
  end
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('')


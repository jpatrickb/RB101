#In the previous exercise, you developed a method that converts simple numeric strings to 
#Integers. In this exercise, you're going to extend that method to work with signed numbers.

#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#The String may have a leading + or - sign; if the first character is a +, your method should 
#return a positive number; if it is a -, your method should return a negative number. If no sign 
#is given, you should return a positive number.

#You may assume the string will always contain a valid number.

#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, 
#Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

#Examples

#string_to_signed_integer('4321') == 4321
#string_to_signed_integer('-570') == -570
#string_to_signed_integer('+100') == 100

=begin

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: string number with + or - or no indicator (implied +)


output: actual number with - indicator for negative number
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Problem Domain: 

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

Your Mental Model: -int returns integer negated...determine if symbol is in string and delete
but negate final number if - was in string



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

    1.get number from argument
    2.if string array includes -, negate final value, else return positive number
    3. end

=end

#code

def string_to_signed_integer(num_string)
  new_string = num_string.delete('-').delete('+') 
  
  hash = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=> 6, '7'=>7, '8'=>8, '9'=>9, '0'=>0}
  digits = new_string.split('')
  digits.map! {|string| hash[string]}
  
  value = 0
  digits.each {|digit| value = 10 * value + digit}
  if num_string[0] == '-'
    -value
  else
    value
  end
  
  
end

  
  
  p string_to_signed_integer('570') #== 570
  p string_to_signed_integer('+570')
  p string_to_signed_integer('-570')

  def string_to_integer(num_string)

    hash = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=> 6, '7'=>7, '8'=>8, '9'=>9, '0'=>0}
    digits = num_string.split('')
    digits.map! {|string| hash[string]}
    
    value = 0
    digits.each {|digit| value = 10 * value + digit}
    value
    end
    
  
  def string_to_signed_integer(string)
    case string[0]
    when '-' then -string_to_integer(string[1..-1])
    when '+' then string_to_integer(string[1..-1])
    else          string_to_integer(string)
    end
  end
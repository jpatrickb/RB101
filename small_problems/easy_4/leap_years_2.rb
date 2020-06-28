#A continuation of the previous exercise.

#The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, 
#the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is 
#evenly divisible by 4.

#Using this information, update the method from the previous exercise to determine leap years both 
#before and after 1752.

#leap_year?(2016) == true
#leap_year?(2015) == false
#leap_year?(2100) == false
#leap_year?(2400) == true
#leap_year?(240000) == true
#leap_year?(240001) == false
#leap_year?(2000) == true
#leap_year?(1900) == false
#leap_year?(1752) == true
#leap_year?(1700) == true
#leap_year?(1) == false
#leap_year?(100) == true
#leap_year?(400) == true

=begin

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: year


output: boolean
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

Your Mental Model: calculate if year is leap year with given conditionals



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


numbers / conditionals

==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

    1.year given as argument
    2.if year is <= 1752, true if year % 4 == 0
    3.if year is > 1752, previous logic used
    4.end

=end

#code

def leap_year?(year)
  counter = 0
  counter += 1 if year % 4 == 0
  counter -= 2 if year % 100 == 0
  counter += 3 if year % 400 == 0
  
  if counter > 0
    true
  else
    false
  end
end

def leap_julian?(year)
  if year <= 1752
    year % 4 == 0
    
  elsif year > 1752
    leap_year?(year)
  end
end

p leap_julian?(2016) #== true
p leap_julian?(2015) #== false
p leap_julian?(2100) #== false
p leap_julian?(2400) #== true
p leap_julian?(240000) #== true
p leap_julian?(240001) #== false
p leap_julian?(2000) #== true
p leap_julian?(1900) #== false
p leap_julian?(1752) #== true
p leap_julian?(1700) #== true
p leap_julian?(1) #== false
p leap_julian?(100) #== true
p leap_julian?(400) #== true

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
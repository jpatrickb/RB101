=begin
Write a method that takes a String as an argument, and returns a new String that contains the 
original value using a staggered capitalization scheme in which every other character is 
capitalized, and the remaining characters are lowercase. Characters that are not letters should not 
be changed, but count as characters when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: string


output: looks like every othe letter is capitalized within each word, not sentence
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Explicit Domain: 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: the every other rule applies to spaces as well

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.
1. 
2.
3.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A summary of the "entire problem" written in your own words.  *What* the problem requires,
not *how*.  (How is implemented in the Algorithm)
  


Your Mental Model: apply caps rule to array of chars


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

string to array to string


==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

 1. get string form argument
 2. make into array
 3. apply caps at odd index unless non-letter
 4. apply downcase at even index unless non-letter
 5. join chars

  
    

=end
#code

def staggered_case(string)
  array = string.chars
  array.each do |let|
    if array.index(let) % 2 == 0
      let.upcase!
    else
      let.downcase!
    end
  end
p array[12]
  array.join
end
#p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
#p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
#p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_cases(string, boolean)
  result = ''
  need_upper = boolean
  
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_cases('I Love Launch School!', true) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_cases('ALL_CAPS', false) #== 'AlL_CaPs'
p staggered_cases('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'
=begin

Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

===================================================================================================
*** (Understand the) Problem: ***

First identify the inputs and the outputs of the problem.

input: line of text as string


output: string printed inside of a box
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain/Explicit requirements: The Problem Domain is the area of expertise or 
application that needs to be examined to solve a problem. 

Explicit Domain: building a box relative to size of string

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
  


Your Mental Model: build the box one line at a time with specs determined by size of string


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

strings


==================================================================================================
*** Algorithm: ***

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    Test manually with test cases?

  1. get argument from method
  2. build each box line one or two char bigger on each side of string
    a.get length of string
    b. use + then ---- length of string +2 then +
    c. use | then space length of string +2 then +
    d. use | then space then string then space then |
    e. repeat c
    f. repeat a
  3. end
    

=end
#code

def split_message(message)
  if message.size > 76
    messageA = []
    messageB = []
    index = 0
    array = message.split(' ')
  
    loop do
       
      messageB << array[index] if index >= (array.size / 2)
      messageA << array[index] if index < (array.size / 2)
      index += 1
      break if index == array.size
        
    end
    messageA = messageA.join(' ')
    messageB = messageB.join(' ')
  else 
    messageA = message
    messageB = 'z'
  end
return messageA, messageB

end





def print_in_box(string)
  messageA = split_message(string)[0] 
  messageB = split_message(string)[1]
  messageA.size > messageB.size ? size = (messageA.size) + 2 : size = (messageB.size) + 2
  fill_space = ' ' * (messageA.size - messageB.size)
  horizontal = '+' + ('-' * size) + '+'
  empty_line ='|' + (' ' * size) + '|'
  messageA1 = '|' + ' ' + messageA + ' ' + '|'
  messageB1 = '|' + ' ' + messageB + fill_space + ' ' + '|'
  puts horizontal 
  puts empty_line
  puts messageA1
  puts messageB1 if messageB != 'z'
  puts empty_line 
  puts horizontal
end
#end


print_in_box('To boldly go where no one has gone before.')
#print_in_box('')
print_in_box("Don't hurt yourself")
print_in_box("this is a really long string that I'm hoping will split itself into two lines or so so that the method can make a box of a bigger size.")
print_in_box("this is a really long string that will hopefully be put into a double line so that will show that the method")


def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

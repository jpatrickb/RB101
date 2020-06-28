#The || operator returns a truthy value if either or both of its operands are truthy, a falsey 
#value if both operands are falsey. The && operator returns a truthy value if both of its 
#operands are truthy, and a falsey value if either operand is falsey. This works great until you 
#need only one of two conditions to be truthy, the so-called exclusive or.

#In this exercise, you will write a method named xor that takes two arguments, and returns 
#true if exactly one of its arguments is truthy, false otherwise.

#Examples:

#xor?(5.even?, 4.even?) == true
#xor?(5.odd?, 4.odd?) == true
#xor?(5.odd?, 4.even?) == false
#xor?(5.even?, 4.odd?) == false

def xor?(first,second)
  if first && !second || !first && second 
      true
  else
    false
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end
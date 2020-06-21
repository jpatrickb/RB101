def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f > 0
end

prompt "Welcome to Mortgage Calculator! Enter your name:"

name = ''
loop do
  name = Kernel.gets().chomp().capitalize!

  if name.empty?()
    prompt "Make sure you use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  p = ''
  loop do
    prompt "What is your loan amount?"
    p = Kernel.gets().chomp().to_f

    if valid_number?(p)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end
  apr = ''
  loop do
    prompt "What is your APR?"
    apr = Kernel.gets().chomp().to_f

    if valid_number?(apr)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end
  n = ''
  loop do
    prompt "What is your loan duration in months"
    n = Kernel.gets().chomp().to_f
    if valid_number?(n)
      break
    else
      prompt "Hmm... that doesn't look like a valid number."
    end
  end
  j = (apr / 12) * 0.01
  payment = p * (j / (1 - (1 + j)**(-n)))
  payment = payment.round(2)
  prompt "Your payment is $#{payment} per month"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with? 'y'
end

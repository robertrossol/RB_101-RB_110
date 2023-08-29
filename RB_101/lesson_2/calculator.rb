# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt "Welcome to Calculator! Enter your name:"
# same as: prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

loop do
  num1 = ''
  loop do
    prompt "Enter a number"
    num1 = gets.chomp.to_f

    break if valid_number?(num1)

    prompt "Hmm... that doesn't look like a valid number"
  end

  num2 = ''
  loop do
    prompt "Enter a second number"
    num2 = gets.chomp.to_f

    break if valid_number?(num2)
    prompt "Hmm... that doesn't look like a valid number"
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt operator_prompt
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "must choose 1, 2, 3, or 4"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator.to_i
           when 1
             num1 + num2
           when 2
             num1 - num2
           when 3
             num1 * num2
           when 4
             num1 / num2
           end
  prompt "The result is #{result}"

  prompt "Would you like to perform another calculation? (y/n)"
  input = gets.chomp
  break unless input.downcase.start_with?('y')
end

prompt "Thank you for using the calculator. Goodbye."

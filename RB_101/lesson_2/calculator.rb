# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
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

prompt(MESSAGES['welcome'])
# prompt "Welcome to Calculator! Enter your name:"
# same as: prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt MESSAGES['valid_name']
  else
    break
  end
end

loop do
  num1 = ''
  loop do
    prompt MESSAGES['enter_first_argument']
    num1 = gets.chomp

    break if valid_number?(num1)

    prompt MESSAGES['valid_number']
  end

  num2 = ''
  loop do
    prompt MESSAGES['enter_second_argument']

    num2 = gets.chomp

    break if valid_number?(num2)
    prompt MESSAGES['valid_number']
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
      prompt MESSAGES['valid_operator']
    end
  end

  prompt "#{operation_to_message(operator)}" + MESSAGES['computing']

  result = case operator.to_i
           when 1
             num1.to_f + num2.to_f
           when 2
             num1.to_f - num2.to_f
           when 3
             num1.to_f * num2.to_f
           when 4
             num1.to_f / num2.to_f
           end
  prompt MESSAGES['result'] + "#{result}"


  prompt MESSAGES['another_calculation']
  input = gets.chomp
  break unless input.downcase.start_with?('y')
end

prompt MESSAGES['goodbye']

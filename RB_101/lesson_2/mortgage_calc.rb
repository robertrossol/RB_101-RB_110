require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_amount(loan)
  # loan.to_i.to_s == loan && loan.to_i > 0
  loan.to_i > 0 # should be good enough
end

def valid_apr(apr)
  if apr.to_i == 0
    apr.to_f.to_s == apr ? apr.to_f.between?(0, 100) : false
  else
    apr.to_f.between?(0, 100)
  end
end

def decimal_apr(apr)
  apr.to_f / 100
end

loop do
  prompt(MESSAGES['welcome'])

  name = ''
  loop do
    name = gets.chomp

    if name.empty?
      prompt MESSAGES['valid_name']
    else
      break
    end
  end

  loan_amount = ''
  loop do
    prompt MESSAGES['enter_loan_amount']
    loan_amount = gets.chomp.to_i
    break if valid_amount(loan_amount)
    prompt MESSAGES['valid_loan_amount']
  end

  apr = ''
  loop do
    prompt MESSAGES['enter_APR']
    prompt MESSAGES['apr_example']
    apr = gets.chomp
    if valid_apr(apr)
      apr = decimal_apr(apr)
      break
    else
      prompt MESSAGES['valid_APR']
    end
  end

  duration = ''

  loop do
    prompt MESSAGES['enter_duration']
    duration = gets.chomp
    if valid_amount(duration)
      duration = duration.to_i
      break
    else
      prompt MESSAGES['valid_duration']
    end
  end

  monthly_rate = apr / 12

  monthly_payment =
    loan_amount *
    (monthly_rate / (1 - ((1 + monthly_rate)**(-duration))))

  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}")

  prompt MESSAGES['again']
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt MESSAGES['goodbye']

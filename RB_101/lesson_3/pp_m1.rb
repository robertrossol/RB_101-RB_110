# Q1
10.times { |number| puts (" " * number) + 'The Flintstones Rock!' }

#Q2
# This errors, why? 
puts "the value of 40 + 2 is " + (40 + 2)
# trying to add a string and an integer
puts "the value of 40 + 2 is " + "#{(40 + 2)}"
# or
puts "the value of 40 + 2 is " + (40 + 2).to_s

#Q3
# refactor so this doesn't fail on 0 or negative input:
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

def dot_separated_ip_address?(input_string) #"10.55.4.6"
  dot_separated_words = input_string.split(".") #["10", "55", "4", "6"]
  return false if dot_separated_words.size != 4
  # or 
  # return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do #while 4 > 0
    word = dot_separated_words.pop 
    return false unless is_an_ip_number?(word)
  end
  true
end
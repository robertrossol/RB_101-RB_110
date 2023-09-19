#Q1 How to check if a hash contains something?
  #- hash.key?(query) or hash.include?(query) or hash.member?(query)

#Q2 
munsters_description = "The Munsters are creepy in a good way."
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY." #munsters_description.swapcase!
"The munsters are creepy in a good way." #munsters_description.capitalize!
"the munsters are creepy in a good way." #munsters_description.downcase!
"THE MUNSTERS ARE CREEPY IN A GOOD WAY." #munsters_description.upcase!

#Q3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

#A3
ages.merge!(additional_ages)

#Q4
# See if the name "dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
#A4
advice.include?('dino') #or
advice.match?("dino")

#Q5 
# Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

#A5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Q6 
# How can we add the family pet "Dino" to our usual array:
flintstones << "Dino"

#Q7
# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# or
flintstones.push("Dino", "Hoppy")  # push can take multiple arguments
# or
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

#Q8
# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")
# or
advice.slice!(0, 39)
# or, better
advice.slice!(0, advice.index('house'))

#Q9
# Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

statement.count('t')

#Q10
# center the title in a 40 space width table
title = "Flintstone Family Members"

title.center(40)

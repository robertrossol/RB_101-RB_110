#Q1
# What would the following code print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#A1
# 1
# 2
# 2
# 3
# puts numbers.inspect or p numbers would've output [1, 2, 2, 3]

#Q2 
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
  # != means 'is not equal to', use to check equality
# put ! before something, like !user_name
  # returns the opposite of the object's boolean equivalent. Often used to verfiy existence of something (or lack thereof)
# put ! after something, like words.uniq!
  # usually used to indicate that a method modifies the caller, but not necessarily
# put ? before something
  # ternary operator. If the preceeding expression is true the following expression to the left of ':' is returned, if false the expression to the right is returned
# put ? after something
  # part of the method name
# put !! before something, like !!user_name
  # used to turn an object into its the boolean equivalent 

#Q3
# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

#A3 advice.gsub!('important', 'urgent')

#Q4
# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
#A [1, 3, 4, 5] (return value is 2)
numbers.delete(1)
#A [2, 3, 4, 5] (return value is 1)

#Q5
# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

#A5 (10..100).cover?(42) or (10..100).include?(42)

#Q6

# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

#A6
"Four score and " + famous_words
# or
famous_words.prepend("Four score and ")
# or
"Four score and " << famous_words

#Q7 
# This:
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# creates this (nested array):
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# un-nest it

#A7
flintstones.flatten!

#Q8
# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Create an array containing only two elements: Barney's name and Barney's number.
#A8 
flintstones.assoc("Barney")
#flintstones.select {|key, value| key == "Barney" }.to_a.flatten
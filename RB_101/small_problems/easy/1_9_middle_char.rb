#Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

def center_of(text)
  length = text.size
  midpoint = length/2
  length.odd? ? text[midpoint] : text[midpoint - 1..midpoint] 
  #or one-liner:
  # text.size.odd? ? text[text.size/2] : text[text.size/2 - 1..text.size/2] 
end


puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
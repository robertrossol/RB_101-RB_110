# Write a method that will take a short line of text, and print it within a box.
# Examples:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

#basic

def print_in_box(text)
  length = text.size + 2
  border_row = "+#{("-" * length)}+"
  empty_row = "|#{(" " * length)}|"

  puts border_row
  puts empty_row
  puts "| #{text} |"
  puts empty_row
  puts border_row
end

print_in_box("Hello There, mortal!")
print_in_box("")

#intermediate

def print_in_box(text)
  length = (text.size > 75 ? 76 : text.size)
  border_row = "+#{("-" * (length + 2))}+"
  empty_row = "|#{(" " * (length + 2))}|"

  puts border_row
  puts empty_row
  puts "| #{text[0...length]} |"
  puts empty_row
  puts border_row
end

print_in_box("Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!")
print_in_box("")

#advanced

def print_in_box(text)
  # text_rows = text.size/76 + 1
  length = (text.size > 75 ? 76 : text.size)
  border_row = "+#{("-" * (length + 2))}+"
  empty_row = "|#{(" " * (length + 2))}|"

  puts border_row
  puts empty_row
  while text.size > 0
    puts "| #{(text.slice!(0,76) + ' ' * 76)[0, 76]} |" #or .slice(0,76)
  end
  puts empty_row
  puts border_row
end

print_in_box("Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!Hello There, mortal!")
print_in_box("")
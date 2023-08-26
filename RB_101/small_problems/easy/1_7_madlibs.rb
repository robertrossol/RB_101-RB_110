# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# simpler, but less concise:
    # puts "Enter a noun:"
    # noun = gets.chomp

    # puts "Enter a verb:"
    # verb = gets.chomp

def madlib
  inputs = {
              "noun" => "",
              "verb" => "",
              "adjective" => "",
              "adverb" => "",
  }

  inputs.keys.each do |x|
    puts "Enter a #{x}:"
    inputs[x] = gets.chomp
  end

  puts "Do you #{inputs["verb"]} your #{inputs["adjective"]} #{inputs["noun"]} #{inputs["adverb"]}? That's hilarious!"
end

madlib
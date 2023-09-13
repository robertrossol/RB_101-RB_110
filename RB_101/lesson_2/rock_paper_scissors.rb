VALID_CHOICES = %w(rock paper scissors lizard spock)
ABBREVIATIONS = %w(r p sc l sp)

MOVES = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(spock paper),
  'spock' => %w(rock scissors)
}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  MOVES[first].include?(second)
end

def display_score(p1, p2)
  prompt("Player Wins: #{p1}")
  prompt("Computer Wins: #{p2}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end
loop do
  player_wins = 0
  computer_wins = 0
  game_number = 1

  while player_wins < 3 && computer_wins < 3
    choice = ''
    loop do
      prompt("Game ##{game_number}")
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      elsif ABBREVIATIONS.include?(choice)
        choice = VALID_CHOICES.select do |option|
          option.start_with?(choice)
        end.first
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}. Computer chose: #{computer_choice}")
    prompt("")

    player_wins += 1 if win?(choice, computer_choice)
    computer_wins += 1 if win?(computer_choice, choice)
    game_number += 1

    display_results(choice, computer_choice)
    prompt("")
    display_score(player_wins, computer_wins)
    prompt("")

  end
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")

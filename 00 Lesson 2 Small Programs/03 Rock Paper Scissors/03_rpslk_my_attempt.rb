# Rock Paper Scissors Lizard Spock My Attempt

VALID_CHOICES = %w[r p sc l sp].freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "r" && (second.include?("sc") || second.include?("l"))) ||
    (first == "p" && (second.include?("r") || second.include?("sp"))) ||
    (first == "sc" && (second.include?("p") || second.include?("l"))) ||
    (first == "l" && (second.include?("sp") || second.include?("p"))) ||
    (first == "sp" && (second.include?("sc") || second.include?("r")))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Is a tie")
  end
end

player_counter = 0
computer_counter = 0

loop do # Main Program loop
  choice = ""
  loop do
    prompt("Choose Rock, Paper, Scissors, lizard or Spock (r, p, sc, l, sp):")
    choice = Kernel.gets().chomp()

    break if VALID_CHOICES.include?(choice)

    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if choice != computer_choice
    win?(choice, computer_choice) ? player_counter += 1 : computer_counter += 1
  end

  prompt("Player: #{player_counter}. Computer: #{computer_counter}")

  if player_counter == 5
    prompt("PLAYER WINS THE GAME!!!")
    break
  elsif computer_counter == 5
    prompt("COMPUTER WINS THE GAME!!!")
    break
  end
end

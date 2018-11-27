# Rock Paper Scissors Lizard Spock My Attempt, after corrections from LS

NUMBER_OF_PLAYS = 5

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

RULES = {
  "rock" => %w(lizard scissors),
  "paper" => %w(spock rock),
  "scissors" => %w(paper lizard),
  "lizard" => %w(spock paper),
  "spock" => %w(rock scissors)
}.freeze

ABBREVIATIONS = {
  "r" => "rock",
  "p" => "paper",
  "sc" => "scissors",
  "l" => "lizard",
  "sp" => "spock"
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  RULES[first].include?(second)
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

def clear_screen
  system("clear") || system("cls")
end
clear_screen()
prompt("Welcompe to Rock, Paper, Scissors, Lizard, Spock")
prompt("Every win gives a point. The first to get #{NUMBER_OF_PLAYS} points wins the game!!!")


loop do # Main Program loop
  player_counter = 0
  computer_counter = 0
  loop do 
    choice = ""
    loop do
      prompt("Choose Rock(r), Paper(p), Scissors(sc), lizard(l) or Spock(sp):")
      choice = Kernel.gets().chomp().downcase()

      choice = ABBREVIATIONS[choice] if ABBREVIATIONS[choice]

      break if VALID_CHOICES.include?(choice)

      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice.capitalize}; Computer chose: #{computer_choice.capitalize}")

    display_results(choice, computer_choice)

    if choice != computer_choice
      win?(choice, computer_choice) ? player_counter += 1 : computer_counter += 1
    end

    prompt("Player: #{player_counter}. Computer: #{computer_counter}")
    Kernel.puts("")

    if player_counter == NUMBER_OF_PLAYS || computer_counter == NUMBER_OF_PLAYS
      winner = player_counter == NUMBER_OF_PLAYS ? "PLAYER" : "COMPUTER"
      prompt("#{winner} WINS THE GAME!!!")
      break
    end

    prompt("Do you want to quit the game? (y) / Enter to continue")
    answer = Kernel.gets().chomp()
    break if answer.downcase.start_with?("y")

    clear_screen()
  end

  prompt("Do you want to restart the game? (y)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")

  clear_screen()
end
prompt("Thank you for Playing Rock Paper Scissors Lizard Spock. Bye!!!")
Kernel.puts("")
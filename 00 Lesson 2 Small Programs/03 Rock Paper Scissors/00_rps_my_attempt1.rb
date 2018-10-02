# My attempt to produce a game of Rock Paper Scissors, prior to the lesson. 

def game_throw
  rand(3)
end

def input_value
  val = ""
  Kernel.puts("Please Choose Rock Paper or Scissors (r, p, s):")
  loop do
    val = Kernel.gets().chomp().downcase()
    break if val == "r" || val == "p" || val == "s"

    Kernel.puts("Please choose the letters (r) for Rock, (p) for paper or (s) for sissors:")
  end
  val
end

def player_win
  Kernel.puts("Player win...")
end

def pc_win
  Kernel.puts("Computer win...")
end

def compare_scores(pyr, pct)
  case pyr
  when "r"
    if pct == "p"
      pc_win
    else
      player_win
    end
  when "p"
    if pct == "s"
      pc_win
    else
      player_win
    end
  when "s"
    if pct == "r"
      pc_win
    else
      player_win
    end
  end
end

Kernel.puts("Welcome to Rock, Paper, Scissors. You will play against the Computer!!!")

loop do # This is the main loop for the game. 
  player_throw = input_value

  case player_throw
  when "r"
    Kernel.puts("Player choose Rock!!!")
  when "p"
    Kernel.puts("Player choose Paper!!!")
  when "s"
    Kernel.puts("Player choose Scissors!!!")
  end

  pc_value = game_throw
  pc_throw = ""

  case pc_value
  when 0
    pc_throw = "r"
    Kernel.puts("Computer choose Rock!!!")
  when 1
    pc_throw = "p"
    Kernel.puts("Computer choose Paper!!!")
  when 2
    pc_throw = "s"
    Kernel.puts("Computer choose Scissors!!!")
  end

  if player_throw == pc_throw 
    Kernel.puts("The Game is Tied!!!")
  else
    compare_scores(player_throw, pc_throw)
  end

  Kernel.puts("Do you want to play again? (y)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

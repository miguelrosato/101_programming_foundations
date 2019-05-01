INITIAL_MARKER = " ".freeze
PLAYER_MARKER = "X".freeze
COMPUTER_MARKER = "O".freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # Rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # Columns
                [[1, 5, 9], [3, 5, 7]]              # Diagonals

NUMBER_OF_PLAYS = 5

def prompt(msg)
  puts "=> #{msg}"
end

# Cleans the screen and shows board with current game status
def display_board(brd, pco, cco)
  system "clear"
  prompt("You are a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}.")
  prompt("Player Score = #{pco}, Computer score = #{cco}")
  puts ""
  puts "1    |2    |3"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----|-----"
  puts "4    |5    |6"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----|-----"
  puts "7    |8    |9"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# Return a string with the remaining number of available squares
def joinor(arr, sep = ", ", art = "or ")
  case arr.size
  when 0 then ""
  when 1 then arr.first
  when 2 then arr.join(" #{art} ")
  else
    arr[-1] = "#{art} #{arr.last}"
    arr.join(sep)
  end
end

def current_places_piece!(brd, cur)
  if cur == "p"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def next_player(cur)
  cur == "p" ? "c" : "p"
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt("Incorrect Choice. Please choose one of these numbers #{joinor(empty_squares(brd), ' ', 'and')}")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # Offense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # Defense
  unless square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # just pick a square
  unless square
    if brd[5] == INITIAL_MARKER
      brd[5] = COMPUTER_MARKER
    else
      square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return "Player" if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return "Computer" if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

# This is the main code of the program

prompt("Welcome to Tic Tac Toe!")
prompt("The first Player to reach #{NUMBER_OF_PLAYS} wins the game")
current_player = " "

loop do
  prompt("Please choose who plays first: Press 'C' for Computer or 'P' for player or 'I' for Indifferent")
  current_player = gets.chomp.downcase
  current_player = %w(c p).sample if current_player == "i"
  break if %w(c p).include?(current_player)

  prompt("your choice is not valid. Please press 'C' for Computer or 'P' for player or 'I' for Indifferent")
end

player_counter = 0
computer_counter = 0

loop do
  board = initialize_board

  loop do
    display_board(board, player_counter, computer_counter)

    current_places_piece!(board, current_player)
    current_player = next_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, player_counter, computer_counter)

  if someone_won?(board)
    prompt("#{detect_winner(board)} won!")
    if detect_winner(board) == "Player"
      player_counter += 1
    elsif detect_winner(board) == "Computer"
      computer_counter += 1
    end
  else
    prompt("It's a tie!")
  end
  prompt("Player Score = #{player_counter}, Computer score = #{computer_counter}")
  if player_counter == NUMBER_OF_PLAYS
    prompt("Player wins the Game!")
    break
  elsif computer_counter == NUMBER_OF_PLAYS
    prompt("Computer Wins the Game!")
    break
  end
  prompt("Play again? press 'Y' to continue or any other key to exit")
  answer = gets.chomp
  break unless answer.downcase.start_with?(/[yY]/)
end

prompt("Thanks for playing Tic Tac Toe! Good bye!")

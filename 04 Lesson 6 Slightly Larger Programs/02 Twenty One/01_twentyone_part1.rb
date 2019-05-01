MAX_SCORE = 21
STAY_SCORE = 17

SUITS = %w(HEARTS DIAMONDS CLUBS SPADES).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

def prompt(msg)
  puts "=> #{msg}"
end

def valid_key_press
  input_key = gets.chomp
  loop do
    break if input_key.empty?

    prompt("Invalid key value. Please press 'Enter' to continue")
    input_key = gets.chomp
  end
end

def first_deal_cards
  result = []
  2.times { result << [SUITS[rand(0..3)], VALUES[rand(0..12)]] }
  result
end

def current_score(hand)
  score = 0
  score_arr = hand.each_with_object([]) { |sub_arr, arr| arr << sub_arr[1] }
  score_arr.each do |val|
    if val == "A"
      score += 11
    elsif val.to_i.zero?
      score += 10
    else
      score += val.to_i
    end
  end

  # In case of too many ACES, or ACES addition exceed 21:
  score_arr.select { |val| val == "A" }.count.times do
    score -= 10 if score > MAX_SCORE
  end

  score
end

def hit(hand)
  hand << [SUITS[rand(0..3)], VALUES[rand(0..12)]]
end

def play_again?
  answer = gets.chomp
  answer.downcase.start_with?(/[yY]/)
end

# Main Body of program
system "clear"
prompt("Welcome to Twenty-One")
prompt("The Player with the score closer to #{MAX_SCORE} wins the game!")

comp_overall_score = 0
player_overall_score = 0

loop do
  prompt("Please press 'Enter' to deal!")
  valid_key_press

  c_hand = first_deal_cards # Computer hand
  p_hand = first_deal_cards # Player hand

  prompt("Dealer got #{c_hand[0][1]} of #{c_hand[0][0]} and an unknown card")
  prompt("Your cards:")
  prompt("#{p_hand[0][1]} of #{p_hand[0][0]}")
  prompt("#{p_hand[1][1]} of #{p_hand[1][0]}")

  player_current_score = current_score(p_hand)
  comp_current_score = current_score(c_hand)

  prompt("Your current score is #{player_current_score}")
  prompt("Dealer will now play. Please press 'Enter' to continue")
  valid_key_press

  loop do # COMPUTER GAME LOOP
    if comp_current_score < STAY_SCORE
      c_hand = hit(c_hand)
      comp_current_score = current_score(c_hand)
    elsif comp_current_score >= STAY_SCORE && comp_current_score <= MAX_SCORE
      prompt("Dealer current score is #{comp_current_score}. Dealer stays!!!")
      break
    elsif comp_current_score > MAX_SCORE
      break
    end
  end

  if comp_current_score > MAX_SCORE
    prompt("Dealer score is #{comp_current_score}.")
    prompt("Dealer is busted. Player wins!!!")
    player_overall_score += 1
  else
    loop do # Main Game
      prompt("============================================================")
      prompt("Dealer score is #{comp_current_score}")
      prompt("Your current score is #{player_current_score}")
      prompt("Do you want to hit? 'Y' to continue or any other key to stay")
      prompt("============================================================")
      puts " "

      break unless play_again?

      p_hand = hit(p_hand)
      player_current_score = current_score(p_hand)
      break if player_current_score > MAX_SCORE
    end

    if player_current_score > MAX_SCORE
      prompt("Player score is #{player_current_score}.")
      prompt("Player is busted. Dealer wins!!!")
      comp_overall_score += 1
    elsif player_current_score < comp_current_score
      prompt("Dealer score is #{comp_current_score}.")
      prompt("Player score is #{player_current_score}.")
      prompt("Dealer Wins!!!")
      comp_overall_score += 1
    elsif comp_current_score < player_current_score
      prompt("Dealer score is #{comp_current_score}.")
      prompt("Player score is #{player_current_score}.")
      prompt("Player Wins!!!")
      player_overall_score += 1
    else
      prompt("Dealer score is #{comp_current_score}.")
      prompt("Player score is #{player_current_score}.")
      prompt("It's a Tie!!!")
    end
  end

  if player_overall_score >= 5
    puts " "
    prompt("=========================================")
    prompt("Player Overall score is #{player_overall_score}. PLAYER WINS!!!")
    prompt("=========================================")
    puts " "
    break
  elsif comp_overall_score >= 5 
    puts " "
    prompt("=========================================")
    prompt("Dealer Overall score is #{comp_overall_score}. DEALER WINS!!!")
    prompt("=========================================")
    puts " "
    break
  else
    prompt("Play again? press 'Y' to continue or any other key to exit")
    break unless play_again?
  end

  system "clear"

  prompt("Computer Overall Score is #{comp_overall_score}")
  prompt("Player Overall Score is #{player_overall_score}")
  prompt("==============================")
  puts " "
end

prompt("Thank you for playing #{MAX_SCORE}. Bye!!!")

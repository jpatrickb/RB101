require 'pry'
require 'colorize'

CARDS = ['Ace', '2', '3', '4', '5', '6', '7', '8',
          '9', '10', 'Jack', 'Queen', 'King']
WINNING_HAND_SCORE = 21
COMPUTER_HIT_SCORE = 17
GAMES_TO_WIN = 5

def build_deck(array)
  deck = []
  array.each do |element|
    deck << [element, 'Hearts']
    deck << [element, 'Diamonds']
    deck << [element, 'Clubs']
    deck << [element, 'Spades']
  end
  deck
end

def deal_cards(array)
  hand = []
  hand << array.shuffle.pop
  hand << array.shuffle.pop
  hand
end

def translate_card(array)
  suit = array[1]
  value = array[0]
  card = "#{value} of #{suit}".black if suit == 'Spades' || suit == 'Clubs'
  card = "#{value} of #{suit}".red if suit == 'Hearts' || suit == 'Diamonds'
  card
end

def tally_cards(hand)
  values = hand.map { |card| card[0] }

  sum = 0
  values.each do |value|
    sum = if value == "Ace"
            sum + 11
          elsif value.to_i == 0 # J, Q, K
            sum + 10
          else
            sum + value.to_i
          end
  end

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > WINNING_HAND_SCORE
  end

  sum
end

def hit(hand)
  hand << build_deck(CARDS)[rand(52)]
end

def announce_cards(hand)
  hand.each do |card|
    sleep(0.5)
    puts translate_card(card).to_s
    sleep(0.5)
  end
end

def busted?(tally)
  true if tally > WINNING_HAND_SCORE
end

def announce_tally(hand)
  puts "Total : #{tally_cards(hand)}"
end

def player_wins?(player_score, computer_score)
  if player_score == WINNING_HAND_SCORE
    true
  elsif computer_score > WINNING_HAND_SCORE
    true
  elsif player_score > WINNING_HAND_SCORE
    false
  else
    player_score > computer_score
  end
end

def tie?(player_score, computer_score)
  player_score == computer_score
end

def announce_winner(player_score, computer_score)
  if player_wins?(player_score, computer_score)
    "Player is the winner!"
  elsif tie?(player_score, computer_score)
    "It's a tie."
  else
    "Computer is the winner!"
  end
end

def play_again?
  puts "-------------"
  puts "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def announce_grand_winner(player_round_score, computer_round_score)
  if player_round_score == GAMES_TO_WIN
    puts "Player is the Grand Winner!"
  elsif computer_round_score == GAMES_TO_WIN
    puts "Computer is the Grand Winner!"
  end
end

def grand_winner?(player_round_score, computer_round_score)
  true if player_round_score == GAMES_TO_WIN || computer_round_score == GAMES_TO_WIN
end

# game play
player_round_score = 0
computer_round_score = 0
loop do
  system 'clear'
  puts "Tournament Score....Player: #{player_round_score}, Computer: #{computer_round_score}."
  deck = build_deck(CARDS)
  player_hand = deal_cards(deck)
  computer_hand = deal_cards(deck)
  player_score = tally_cards(player_hand)
  computer_score = tally_cards(computer_hand)
  puts "Your cards are:"
  announce_cards(player_hand)
  announce_tally(player_hand)
  puts "Computer is showing #{translate_card(computer_hand[0])}"

  loop do
    loop do
      player_score = tally_cards(player_hand)
      if busted?(player_score) == true
        puts "Busted!"
        break
      elsif player_score == WINNING_HAND_SCORE
        puts "Winner, winner!"
        break
      end
      puts "Would you like to hit or stay (H or S)?"
      answer = gets.chomp.downcase
      if answer == 'h'
        hit(player_hand)
        puts "Your cards are:"
        announce_cards(player_hand)
        announce_tally(player_hand)
      elsif answer == 's'
        break
      else
        next
      end
    end

    break if player_score == WINNING_HAND_SCORE
    break if busted?(player_score)

    puts "Computer plays..."

    loop do
      computer_score = tally_cards(computer_hand)
      announce_cards(computer_hand)
      announce_tally(computer_hand)
      if computer_score > WINNING_HAND_SCORE
        puts "Computer busted!"
        break
      end
      break if computer_score >= COMPUTER_HIT_SCORE
      sleep(1)
      hit(computer_hand) if computer_score < COMPUTER_HIT_SCORE
    end

    break
  end

  puts announce_winner(player_score, computer_score)
  sleep(2)

  if announce_winner(player_score, computer_score) == "Player is the winner!"
    player_round_score += 1
  elsif announce_winner(player_score, computer_score) == "Computer is the winner!"
    computer_round_score += 1
  end

  if grand_winner?(player_round_score, computer_round_score)
    announce_grand_winner(player_round_score, computer_round_score)
    break
  else
    next
  end
end

puts "Thanks for playing."

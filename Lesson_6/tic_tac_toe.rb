require 'pry'
require 'colorize'

FIRST_MOVE = 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'.green
COMPUTER_MARKER = 'O'.magenta
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
                


def prompt(msg)
  puts "==> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  
  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end  
  
  if !square 
    square = empty_squares(brd).sample
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
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def place_piece!(brd, current_player)
    case current_player
    when true
    sleep(1)
    computer_places_piece!(brd)
    when false
    player_places_piece!(brd)
    end
end
 
def alternate_player(current_player)
  current_player = !current_player
end

def starting_player(constant)
  case constant
  when 'computer'
    true
  when 'player'
    false
  when 'choose'
    answer = ''
    loop do
      puts "Please choose a starting player: (P or C)"
      answer = gets.chomp.downcase
      break if answer == 'p' || answer == 'c'
      puts "Invalid input."
    end
    case answer
    when 'p'
      false
    when 'c'
      true
    end
  end
end

current_player = starting_player(FIRST_MOVE)
player_score = 0
computer_score = 0  

loop do
  board = intialize_board

  loop do
    display_board(board)
    puts "Player score: #{player_score}  Computer score: #{computer_score}"
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
  
  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!" 
  else 
    prompt "It's a tie."
  end
  
  player_score += 1 if detect_winner(board) == 'Player'
  computer_score += 1 if detect_winner(board) == 'Computer'
 
  sleep(2)
  next unless player_score == 5 or computer_score == 5 
 
  prompt "#{detect_winner(board)} is the grand winner! Play again? (y or no)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end
prompt "Thanks for playing Tic Tac Toe."

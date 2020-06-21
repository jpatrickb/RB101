require 'yaml'

MESSAGES = YAML.load_file('rps_lizard_spock.yml')
VALID_CHOICES = ['r', 'p', 's', 'l', 'sp']
GAME_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
WIN_SCENARIOS = { rock: ['scissors', 'lizard'],
                paper: ['rock', 'spock'], 
                scissors: ['paper', 'lizard'],
                lizard: ['spock', 'paper'], 
                spock: ['scissors', 'rock'] }
YES = ['y']
NO = ['n']
MATCH_WIN_NUMBER = 5

def prompt(message)
  puts("...>>#{message}")
end

def win?(first, second)
  WIN_SCENARIOS[first.to_sym].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    MESSAGES['win']
  elsif win?(computer, player)
    MESSAGES['lose']
  else
    MESSAGES['tie']
  end
end

def display_choices
  display = []
  GAME_CHOICES.each do |choice|
    display << choice + ' (' + VALID_CHOICES[GAME_CHOICES.index(choice)] + ')'
  end
  display.join(', ')
end

def game_choice
  loop do
    prompt(format(MESSAGES['game_instruction'], choices: display_choices))
    ans = gets.chomp.downcase
    if VALID_CHOICES.include?(ans)
      ans = GAME_CHOICES[VALID_CHOICES.index(ans)]
    end

    return ans if GAME_CHOICES.include?(ans)
    prompt(MESSAGES['invalid_choice'])
  end
end

def retrieve_continue_answer(initial_msg, criteria_msg)
  puts "\n"
  prompt(initial_msg)

  loop do
    prompt(criteria_msg)
    ans = gets.chomp.downcase

    return ans if YES.include?(ans) || NO.include?(ans)
  end
end

def display_welcome
  puts "\n"
  prompt(format(MESSAGES['rpsls_intro'], game_name: GAME_CHOICES.join(', ')))
  prompt(format(MESSAGES['rpsls_description'],
                match_condition: MATCH_WIN_NUMBER))
  puts "\n"
end

def display_game_start(scores)
  puts format(MESSAGES['game_num'], number: scores[:total_games])
  prompt(display_score(scores))
end

def update_scores(game_result,scores)
  if game_result == MESSAGES['win']
    scores[:player] += 1
  elsif game_result == MESSAGES['lose']
    scores[:computer] += 1
  end

  scores[:total_games] += 1
end

def display_score(scores)
  format(MESSAGES['current_score'],
         player_wins: scores[:player],
         computer_wins: scores[:computer])
end

def winner?(score)
  score == MATCH_WIN_NUMBER
end

def display_match_winner(scores)
  if winner?(scores[:player])
    MESSAGES['player_is_champion']
  elsif winner?(scores[:computer])
    MESSAGES['computer_is_champion']
  end
end

#start of game

display_welcome
  
loop do # Match loop begin
  puts MESSAGES['new_match']

  match_scores = { player: 0,
                   computer: 0,
                   total_games: 1 }

  loop do # Game loop begin
    display_game_start(match_scores)

    # Player choice
    choice = game_choice

    # Computer choice
    computer_choice = GAME_CHOICES.sample

    # Display choices
    prompt(format(MESSAGES['selected_choices'],
                  player: choice,
                  computer: computer_choice))

    result = display_result(choice, computer_choice)
    prompt(result)

    update_scores(result, match_scores)

    prompt(display_score(match_scores))

    # Check if player/computer has enough wins to end match
    result = display_match_winner(match_scores)

    unless result.nil?
      prompt(result)
      break
    end

    # Continue match?
    answer = retrieve_continue_answer(MESSAGES['continue_match'],
                                      MESSAGES['continue_match_choices'])
    break if NO.include?(answer)

    system("clear")
  end # Game loop end

  # New match?
  answer = retrieve_continue_answer(MESSAGES['another_match'],
                                    MESSAGES['another_match_choices'])
  break if NO.include?(answer)

  system("clear")
end # Match loop end

puts("\n")
prompt(MESSAGES['thank_you'])  

    
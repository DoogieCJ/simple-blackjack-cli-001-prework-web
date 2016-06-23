def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  output = rand(1..11)
  output
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  users_card1 = deal_card
  users_card2 = deal_card
  users_hand = users_card1 + users_card2
  display_card_total (users_hand)
  users_hand
end

def hit? (card_total)
  prompt_user
  position = get_user_input
  if position == "h"
    card_total += deal_card
  elsif position != "s"
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  user_card_total = initial_round
  while user_card_total <= 21
    user_card_total = hit? (user_card_total)
    display_card_total (user_card_total)
  end
  end_game(user_card_total)
end

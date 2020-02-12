require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(num)
  prompt_user
  turn = get_user_input
  if turn == 'h'
    num += deal_card
  elsif turn == 's'
    num 
  elsif turn != 'h' || 's'
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_total = initial_round
  turn = hit?(initial_total)
  display_card_total(turn)
  unless turn > 21
    if turn == initial_total
      hit?(initial_total)
    elsif turn > initial_total
      display_card_total(turn)
    end
  else 
    end_game(turn)
  end
  # binding.pry
end
    

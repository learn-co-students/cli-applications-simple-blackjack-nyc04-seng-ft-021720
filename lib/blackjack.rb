def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def get_user_input
  return gets.chomp
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(total = card1+card2)
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    # don't deal
    total = card_total
  elsif input == 'h'
    # deal
    new_card = deal_card
    total = card_total + new_card
  else
    # bad input
    invalid_command
    return hit?(card_total)
  end
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total <= 21
    total = hit?(total)
  end
  end_game(total)
end

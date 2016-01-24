def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total(card_total = 0)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def end_game(card_total = 0)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
end


def hit?(card_total = 0)  
  # code hit? here
  prompt_user
    
  input = get_user_input
    
  case input
  when 's'
    display_card_total(card_total)
    return card_total
  when 'h'
    card_total += deal_card
    display_card_total(card_total)
    return card_total
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
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
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
  end
  end_game(card_total)
end

runner

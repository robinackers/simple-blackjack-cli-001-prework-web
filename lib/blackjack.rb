def welcome
  # code #welcome here
  phrase = "Welcome to the Blackjack Table"
  puts phrase
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  phrase = "Type 'h' to hit or 's' to stay"
  puts phrase
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  phrase = "Sorry, you hit #{card_total}. Thanks for playing!"
  puts phrase
end

def initial_round 
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
  # code #initial_round here
end

def hit?(card_total)
  # code hit? here
  prompt_user
  choice = get_user_input
  if choice == "s"
    card_total
  elsif choice == "h" 
    card_total = deal_card + card_total
    card_total
  else invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
 until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
end
  end_game(card_total)

end
    

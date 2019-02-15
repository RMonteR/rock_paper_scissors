
USER_WINS = " Dammit... You win."
RUBY_WINS = "  Yeah! You lose!"

puts "Welcome! This game will help you making impossible decisions."

def game_core

  possible_choices = ["rock", "paper", "scissors"]
  computer_choice = possible_choices.sample

  begin
    user_choice = gets.chomp.downcase

    if possible_choices.include?(user_choice)
      valid_choice = user_choice
    else
      puts "Did you say \"#{user_choice}\"? Nah, dunno. Try again."
    end
  end while !valid_choice

  puts "  You say #{user_choice}"
  puts "  I say #{computer_choice}"

    if user_choice == "rock" && computer_choice == "paper"
    puts RUBY_WINS
    elsif user_choice == "rock" && computer_choice == "scissors"
    puts USER_WINS
    end

    if user_choice == "paper" && computer_choice == "rock"
    puts USER_WINS
    elsif user_choice == "paper" && computer_choice == "scissors"
    puts RUBY_WINS
    end

    if user_choice == "scissors" && computer_choice == "rock"
    puts RUBY_WINS
    elsif user_choice == "scissors" && computer_choice == "paper"
    puts USER_WINS
    end

    if user_choice == computer_choice
    puts "  Same same. Tie!"
    end
end

def game
  3.times do
    puts "Rock, paper or scissors? Choose one and press enter."
    game_core
  end
end

game

# def final_score
#   store number of user_wins in a variable total_user_wins
#   store number of ruby_wins in another variable
#   compare their length
#   if total_user_wins is > than total_ruby_wins
#
#     puts "NO WAY! You win."
#   elsif total_user_wins is < than total_ruby_wins
#     puts "HA!!!! Loser."
#   end
# end
#
# final_score

def another_game
  puts "So? Another one? Type Y or N please"
  answer = gets.chomp.upcase
  if answer == "Y"
    game
  elsif answer == "N"
    puts "Ok, see ya!"
  else
    puts "I\'ll take it as a no... Bye!"
  end
end

another_game

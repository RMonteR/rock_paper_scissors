puts "Welcome! This game will help you making impossible decisions."

def game
  3.times do
    puts "Rock, paper or scissors? Choose one and press enter."

    def game_core
      possible_choices = ["rock", "paper", "scissors"]
      computer_choice = possible_choices.shuffle.first
      user_choice = gets.chomp.downcase

      puts "  You say #{user_choice}"
      puts "  I say #{computer_choice}"

        if user_choice == "rock" && computer_choice == "paper"
        puts "  Yeah! You lose!"
        elsif user_choice == "rock" && computer_choice == "scissors"
        puts "  Dammit... You win."
        end

        if user_choice == "paper" && computer_choice == "rock"
        puts "  Dammit... You win."
        elsif user_choice == "paper" && computer_choice == "scissors"
        puts "  Yeah! You lose!"
        end

        if user_choice == "scissors" && computer_choice == "rock"
        puts "  Yeah! You lose!"
        elsif user_choice == "scissors" && computer_choice == "paper"
        puts "  Dammit... You win."
        end

        if user_choice == computer_choice
        puts "  Same same. Tie!"
        end
      # possible_choices.each do |item|
      #   if item != user_choice
      #     puts "What!"
      #     break
      #   else
      #     next
      #   end
      # end
    end
    game_core
  end
end

game

puts "So? Another one? Type Y or N please"
answer = gets.chomp.upcase
if answer == "Y"
  game
elsif answer == "N"
  puts "Ok, see ya!"
else
  puts "I\'ll take it as a no... Bye!"
end

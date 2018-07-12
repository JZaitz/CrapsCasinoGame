##Craps Casino Game

  def dice_roll
    roll_value = (1 + rand(6)) + (1 + rand(6))
  end

class Player
  attr_accessor :name, :account_bal

  def initialize(name, account_bal)
    @name = name
    @account_bal = account_bal
  end


end

puts "Hello, please enter your name:"
name = gets.chomp

Jason = Player.new("#{name}", 1000)

puts "Your account balance is: $#{Jason.account_bal}."
puts "#{Jason.name}, let's play Craps!!!"
puts "********************"




loop do
#start play again loop

  def craps (roll_value)



    if roll_value == 7 || roll_value == 11
      puts "The shooter wins on the come out!!"
      Jason.account_bal = Jason.account_bal.to_i + 20
      puts "You win $20, your new account balance is: $#{Jason.account_bal}."


    elsif roll_value == 2 || roll_value == 3 || roll_value == 12
      puts "Craps, the shooter loses."
      Jason.account_bal = Jason.account_bal.to_i - 20
      puts "You lose $20, your new account balance is: $#{Jason.account_bal}."


    elsif roll_value == 4 || roll_value == 5 || roll_value == 6 || roll_value == 8 || roll_value == 9 || roll_value == 10
    puts "#{roll_value} is the point!"
    point = roll_value

      loop do
        another_roll = dice_roll
        puts "And the roll is...#{another_roll}."
        if another_roll == point
          puts "Good roll, you win on the point!"
          Jason.account_bal = Jason.account_bal.to_i + 20
          puts "You win $20, your new account balance is: $#{Jason.account_bal}."


        elsif another_roll == 7
          puts "7, You lose on the point."
          Jason.account_bal = Jason.account_bal.to_i - 20
          puts "You lose $20, your new account balance is: $#{Jason.account_bal}."

        end

      break if another_roll == point || another_roll == 7

      end

      puts "Thanks for playing!"
      puts "********************"


    else
      puts "Play again."
    end

    end



roll_value = dice_roll

craps(roll_value)
play_again = "y"
puts "Would you like to play again? (y or n)"
play_again = gets.chomp
play_again.downcase

break if play_again == "n"
end


puts "Thanks for playing #{Jason.name}!"
puts "********************"

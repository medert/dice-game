require_relative './dice.rb'

# Start the game
print "How many sides does your dice have? > "
size = gets.chomp.to_i
print "How many times would you like to roll your pair of dice? > "
num_rolls = gets.chomp.to_i

begin
  dice = Dice.new(size)

  puts ""
  num_rolls.times do
    dice.roll
    puts "You rolled a #{dice.dice_1} and a #{dice.dice_2}. Total: #{dice.total}"
  end

  print "\nRoll Again? (y/n) > "
  input = gets.chomp
end while input != "n"

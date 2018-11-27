# YOUR CODE, HERE
class Dice
  attr_accessor :dice_1, :dice_2, :dice_size

  def initialize(dice_size)
    @dice_1 = dice_1
    @dice_2 = dice_2
    @dice_size = dice_size
  end

  def roll
    @dice_1 = rand(@dice_size) + 1
    @dice_2 = rand(@dice_size) + 1
  end

  def total
    @dice_1 + @dice_2
  end
end

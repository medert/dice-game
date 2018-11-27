require 'rspec'
require 'pry'
require_relative "../dice.rb"

RSpec.describe Dice do
  dice = Dice.new(6)
  describe ".dice_1 & .dice_2" do
    it "should set first dice to nil" do
      expect(dice.dice_1).to eq(nil)
      expect(dice.dice_2).to eq(nil)
    end
  end

  describe ".roll" do
    it "should set dices to random value from 1 to dice size" do
      200.times do
        dice.roll
        expect(dice.dice_1).to be_between(1,dice.dice_size)
        expect(dice.dice_2).to be_between(1,dice.dice_size)
      end
    end
    it "should not set dices to less than 1 or higher than dice size " do
      200.times do
        expect(dice.dice_1).not_to be > dice.dice_size
        expect(dice.dice_1).not_to be < 1
        expect(dice.dice_2).not_to be > dice.dice_size
        expect(dice.dice_2).not_to be < 1
        expect(dice.dice_1).not_to be_nil
        expect(dice.dice_2).not_to be_nil
      end
    end
  end

  describe ".total" do
    it "should output the sum of dice sides" do
      200.times do
        dice.roll
        dice.total
        expect(dice.dice_1 + dice.dice_2).to be_between(2,dice.dice_size * 2).inclusive
      end
    end

    it "should not output" do
      200.times do
        dice.roll
        dice.total
        expect(dice.total).not_to be < 2
        expect(dice.total).not_to be > dice.dice_size * 2
      end
    end
  end

end

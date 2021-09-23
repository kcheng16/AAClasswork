# require "rspec"

class Array
  def my_uniq
    self.uniq
  end

  def two_sum 
    new_arr = []
    self.each.with_index do |num1, idx1|
      self.each.with_index do |num2, idx2|
        if idx2 > idx1 and num1 + num2 == 0
          new_arr << [idx1, idx2]
        end
      end
    end
    new_arr
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    return nil if self.length < 2
    range = 0
    best_days = []
    self.each.with_index do |buy_price, buy_day|
      self.each.with_index do |sell_price, sell_day|
        if buy_day < sell_day && (sell_price - buy_price) > range
          range = (sell_price - buy_price)
          best_days = [buy_day, sell_day]
        end
      end
    end
    best_days
  end
end


class Towers

  attr_reader :num_of_discs, :stacks

  def initialize(num_of_discs)
    @num_of_discs = num_of_discs
    @stacks = Array.new(3){Array.new}
  end

  def move
    from_stack = gets.chomp
    to_stack = gets.chomp

    #first in last out, starting from front of the array 
    last_disc = @stacks[from_stack].pop
    @stacks[to_stack].push(last_disc)

    #TODO render the stacks 
  end

  def won?
    won = true
    (0...self.stacks.length).each do |i|
      (0...self.stacks[i].length - 1).each do |j|
        if self.stacks[i][j] < self.stacks[i][j+1]
          won = false 
        end 
      end 
    end
    won 
  end

  def render 
  end

end


#Towers of Hanoi should use 3 stacks 
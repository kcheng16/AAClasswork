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
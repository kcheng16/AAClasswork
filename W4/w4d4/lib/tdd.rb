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
end
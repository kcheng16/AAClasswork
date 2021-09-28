class Integer
  # Integer#hash already implemented for you
  
end

class Array #this function affects other problem sets (p03,04,05,etc)
  def hash#(n = nil)
    #n ||= 1
    # self.map.with_index do |ele, i|
    #   if ele.is_a?(Array)
    #     ele.hash(i + n)
    #   else
    #   i.hash + ele.hash
    #   end
    # end.join("").to_i + n

    answer = []
    self.each.with_index do |ele, i|
      if ele.is_a?(Array)
        answer << ele.sum + i
      else
        answer << ele
      end
    end
    answer.join("").to_i

  end
end

class String
  def hash
    array = [1]
    az = ('a'..'z').to_a + ('A'..'Z').to_a


    self.each_char do |char|
      i = az.index(char)
      # p i
      # p char
      if i < 10
        array << "0#{i}"
      else
        array << i
      end
    end
    array.join("").to_i
  end
end


class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    arr = []
    self.each do |key,value|
      arr << (key.hash + value.hash)
    end
    arr.sum
    # arr.sort!
    # arr.map.with_index do |el, i|
    #   el + i
    # end
  end
end

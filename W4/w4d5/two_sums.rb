require"benchmark"

def bad_two_sum?(arr, target)
  arr.each.with_index do |el1, i1|
    arr.each.with_index do |el2, i2|
      if i2 > i1 && el1 + el2 == target
        return true
      end
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
  sorted = arr.sort

  i = 0 
  j = sorted.length - 1 

  while i != j
    if sorted[i] + sorted[j] == target
      return true
    elsif sorted[i] + sorted[j] > target
      j -= 1
    else
      i += 1
    end
  end
  false
  # sorted.each.with_index do |el1, i1|
  #   sorted.each.with_index do |el2, i2|
  #     if i2 > i1 && el1 + el2 == target
  #       return true
  #     end
  #   end
  # end
  # false
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false


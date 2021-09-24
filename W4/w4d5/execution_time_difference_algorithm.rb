#phase 1: (n^2)
# def my_min(array)
  
#   array.each do |ele1|
#     return ele1 if array.all? { |ele2| ele2 >= ele1}
#   end
  
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#phase 2: O(n)
#  def my_min(array)
#   array.inject do |min, ele|
#     if ele < min
#       ele
#     else
#       min
#     end
#   end
#  end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#phase 3: O(n^2)
def largest_contiguous_subsum(array)
  subarrays = []
  array.each_index do |i|
    array.each_index do |j|
      if i <= j
        subarrays << array[i..j]
      end
    end
  end
  subarrays.inject(0) do |max, sub|
    if max < sub.sum
      sub.sum
    else
      max
    end
  end

end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
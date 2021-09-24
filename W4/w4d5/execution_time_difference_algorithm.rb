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
# def largest_contiguous_subsum(array)
#   subarrays = []
#   array.each_index do |i|
#     array.each_index do |j|
#       if i <= j
#         subarrays << array[i..j]
#       end
#     end
#   end
#   subarrays.inject(nil) do |max, sub|
#     if max.nil? || max < sub.sum
#       sub.sum
#     else
#       max
#     end
#   end
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

#phase 4: O(n)
def largest_contiguous_subsum(array)
  current = nil
  max = nil
  array.each_index do |i|
    if current.nil?
      current = array[i]
    else
      current += array[i]
    end
    max = current if max.nil? || current > max
    current = nil if current < 0
  end
  max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])

list = [-1, -2, -3, 4, 5, 6, 7, -8, -9, 0]
p largest_contiguous_subsum(list)
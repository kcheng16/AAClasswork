class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max
    @store = Array.new(max) {false}
  end

  def insert(num)
    raise "Out of bounds" if num < 0 || num > @max - 1
    @store[num] = true
  end

  def remove(num)
    raise "Out of bounds" unless is_valid?(num)
    @store[num] = false
  end

  def include?(num)
    raise "Out of bounds" unless is_valid?(num)
    @store[num] == true

  end

  private

  def is_valid?(num)
    num.between?(0, @max - 1)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    i = num % num_buckets
    @store[i]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0  #N: number of all of the inputs
  end

  def insert(num)
    return if self.include?(num)
    resize! if @count == num_buckets - 1
    @count += 1
    self[num] << num
  end

  def remove(num)
    @count -= 1 if include?(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    i = num % num_buckets
    @store[i]
  end

  def num_buckets
    @store.length
  end

  def resize!
    if @count + 1 == num_buckets
      old_store = @store.dup
      @store = Array.new(num_buckets * 2){[]}
      @count = 0
      old_store.flatten.each do |num|
        self.insert(num)
      end
    end
  end

#   0     1
# [[6,4] [1,3,9]] % 2
# 1 3 6 9 4

#   0  1    2  3
# [[4][1,9][6][3]] %4
# 1 3 6 9 4

  # def inspect"#<"
  # end
end

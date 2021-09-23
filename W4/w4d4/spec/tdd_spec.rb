require 'tdd.rb'

describe Array do
  # let(:array) { [-1, 0, 2, -2, 1] } #let used like a 2nd subject
  subject(:array) { [-1, 0, 2, -2, 1] }
  subject(:array2) { [1,2,3,4,5] }
  subject(:empty_array) { [] }
  subject(:array_length_1) { [1] }

  describe "#my_uniq" do
    it "should remove duplicate elements" do
      expect(array.my_uniq.length).to eq(array.uniq.length)
    end
    it "should't remove other elements" do
      expect(array2.my_uniq.length).to eq(array2.uniq.length)
    end
  end

  describe "#two_sum" do 
    it "should find all pairs of position where the elements sum to zero" do
      expect(array.two_sum).to eq([[0,4],[2,3]])
    end

    it "should display the output in order of ascending indicies" do
      expect(array.two_sum).to eq(array.two_sum.sort)
    end
  end

  describe "#my_transpose" do
    subject(:darray) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    subject(:messed_up_array) { [["wolf"],3, 4, 5, [[[6]]], 7] }

    it "takes in a 2d array" do
      expect{messed_up_array.my_transpose}.to raise_error(TypeError)
    end

    it "should transpose a 2d array" do
      expect(darray.my_transpose).to eq(darray.transpose)
    end

  end
  # subject(:array) { [-1, 0, 2, -2, 1] }
  # subject(:array2) { [1,2,3,4,5] }
  describe "#stock_picker" do
    it "should return the indices between the 2 farthest values" do
      expect(array.stock_picker).to eq([0, 2])
      expect(array2.stock_picker).to eq([0, 4])
    end

    it "should return nil if array.length is <= 1" do
      expect(empty_array.stock_picker).to be_nil
      expect(array_length_1.stock_picker).to be_nil
    end
  end


end

describe Towers do
  subject(:towers) {Towers.new(5)}

  describe "#initialize" do
    it "should accept an integer" do
      expect(towers.num_of_discs).to eq(5)
    end
  end

  describe "#won?" do
  #false, when it should be false
  # context "when all the discs are in 1 stack" do
    it "numbers of the stack should be in a descending order" do
      won = true
      (0...towers.stacks.length).each do |i|
        (0...towers.stacks[i].length - 1).each do |j|
          if towers.stacks[i][j] < towers.stacks[i][j+1]
            won = false 
          end 
        end 
      end
      expect(towers.won?).to eq(won)
    end
  end

end 
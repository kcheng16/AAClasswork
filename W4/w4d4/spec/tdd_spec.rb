require 'tdd.rb'

describe Array do
  subject(:array) { [1,2,5,6,2] }
  subject(:array2) { [1,2,3,4,5] }

  describe "#my_uniq" do
    it "should remove duplicate elements" do
      expect(array.my_uniq.length).to eq(4)
    end
    it "should't remove other elements" do
      expect(array2.my_uniq.length).to eq(5)
    end

  end

end
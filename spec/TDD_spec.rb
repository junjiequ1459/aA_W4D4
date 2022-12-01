require "TDD"
require "rspec"
describe "#my_uniq" do
  it "remove duplicate in arrsay" do
    expect(my_uniq([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end
  it "removes dup in array" do
    expect(my_uniq([3, 4, 5, 3, 4])).to eq([3, 4, 5])
  end
end

describe "Array#two_sum" do
  it "return array of index where each element sum to zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "my_transpose" do
  it "returns 2d array with row and column swapped" do
    expect(my_transpose([
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
    ])).to eq([[0, 3, 6],
               [1, 4, 7],
               [2, 5, 8]])
  end
end

describe "stock_picker" do
  it "return the most pofitable pair of days to buy and sell stocks" do
    expect(stock_picker([10, 9.5, 12, 6, 30, 2])).to eq([3, 4])
  end
end

describe TowersOfHanoi do
  let (:tower) { TowersOfHanoi.new }
  describe "won?" do
    it "return true if user won" do
      tower.arr3 = [3, 2, 1]
      expect(tower.won?).to eq true
    end
  end
  describe "move" do
    it "should allow player to move" do
      tower.move(tower.arr1, tower.arr3)
      expect(tower.arr3).to eq([1])
    end
    it "should not allow player to make illegal move" do
      tower.move(tower.arr1, tower.arr3)
      tower.move(tower.arr1, tower.arr3)
      expect(tower.arr3).to eq([1])
    end
  end
end

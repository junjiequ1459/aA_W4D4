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

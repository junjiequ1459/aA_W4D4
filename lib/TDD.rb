def my_uniq(arr)
  newhash = Hash.new(0)
  arr.each { |ele| newhash[ele] += 1 }
  return newhash.keys
end

class Array
  def two_sum
    newarr = []

    self.each_with_index do |ele, i|
      self.each_with_index do |ele, j|
        if self[i] + self[j] == 0 && j > i
          newarr << [i, j]
        end
      end
    end
    newarr
  end
end

def my_transpose(arr)
  arr.transpose
end

def stock_picker(arr)
  counter = 0 #20
  result = [] #[0,4]
  arr.each_with_index do |ele, i|
    arr.each_with_index do |ele2, j|
      if arr[j] - arr[i] > counter && j > i
        counter = arr[j] - arr[i]
        result = [i, j]
      end
    end
  end
  result
end

# p stock_picker([10, 9.5, 12, 6, 30, 2])
# [10,9.5,12,6,30,2] => [3,4]

class TowersOfHanoi
  attr_accessor :arr1, :arr2, :arr3

  def initialize
    @arr1 = [3, 2, 1]
    @arr2 = []
    @arr3 = []
  end

  def play
    while !won?
      p "please enter a number"

      num1 = gets.chomp.to_i

      p "please enter another number"
      num2 = gets.chomp.to_i

      move(num1, num2)
    end
  end

  def move(num1, num2)
    if num1 == 1
      cur = arr1
    elsif num1 == 2
      cur = arr2
    elsif num1 == 3
      cur = arr3
    end
#test
    if num2 == 1
      nex = arr1
    elsif num2 == 2
      nex = arr2
    elsif num2 == 3
      nex = arr3
    end

    if nex.empty?
      nex << cur[-1]
      cur.pop
    elsif !nex.empty? && nex[-1] > cur[-1]
      nex << cur[-1]
      cur.pop
    end
    p arr1
    p arr2
    p arr3
  end

  def won?
    p "you win"
    return true if arr3 == [3, 2, 1]
    false
  end
end

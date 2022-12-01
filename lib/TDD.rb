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

p stock_picker([10, 9.5, 12, 6, 30, 2])
# [10,9.5,12,6,30,2] => [3,4]

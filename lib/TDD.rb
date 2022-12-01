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

# p [-1, 0, 2, -2, 1].two_sum

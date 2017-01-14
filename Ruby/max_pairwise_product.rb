class Array
  def max_pairwise_product!
    # naive implementation
    # replace it
    result = 0
    (0...self.length).to_a.each do |i|
      (i+1...self.length).to_a.each do |j|
        if self[i]*self[j] > result
          result = self[i]*self[j]
        end
      end
    end
    result
  end
end

data = [7, 5, 14, 2, 8, 8, 10, 1, 2, 3]
p data.max_pairwise_product!

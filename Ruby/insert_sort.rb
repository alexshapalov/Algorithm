def insert_sort!
  (0...self.length).to_a.each do |j|
    key = self[j]
    i = j - 1;
    while i >= 0 and self[i] > key
      self[i+1] = self[i]
      i = i-1
    end
    self[i+1] = key
  end
  self
end

# https://ruby-china-files.b0.upaiyun.com/photo/2014/9c37b8be54c219e9edc5605376cadeeb.gif

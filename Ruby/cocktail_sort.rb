def cocktail_sort!
  f  = 0
  while f < self.length/2
    i = 0
    while i < self.length - 1
      self[i], self[i+1] = self[i+1], self[i] if self[i] > self[i+1]
      i += 1;
    end
    t = self.length - 1
    while t > 0
       self[t], self[t-1] = self[t-1], self[t] if self[t] < self[t-1]
       t -= 1
    end
    f += 1
  end
  self
end

# http://en.wikipedia.org/wiki/Cocktail_sort
#
# https://upload.wikimedia.org/wikipedia/commons/e/ef/Sorting_shaker_sort_anim.gif

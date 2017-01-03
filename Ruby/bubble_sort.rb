def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array = [7,3,22,4,12,46,88,323,4,1,64,7]
bubble_sort(array)

# version 2

def bubble_sort!
  f = 1
  while f < self.length
    (0...(self.length-f)).to_a.each do |i|
      self[i], self[i+1] = self[i+1], self[i] if self[i] > self[i+1]
    end
    f += 1
  end
  self
end

# http://upload.wikimedia.org/wikipedia/commons/5/54/Sorting_bubblesort_anim.gif

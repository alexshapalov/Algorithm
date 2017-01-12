def quick_sort!
  return [] if self.empty?
  x, *a = self
  left, right = a.partition{|t| t < x}
  left.quick_sort + [x] + right.quick_sort
end

# http://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif
#
# wikipediai: http://en.wikipedia.org/wiki/Quicksort
#
# quick_sort: http://c2.com/cgi/wiki?QuickSortInRuby
#
# quick_sort: http://www.csanimated.com/animation.php?t=Quicksort

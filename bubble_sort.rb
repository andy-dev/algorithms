# The Problem:
# source: http://www.sitepoint.com/sorting-algorithms-ruby/
# The input to our algorithm will be an array of arbitraty length
# Array has integers
# Output: array sorted in ascending order

# We walk through the list put two adjacent elements in descending order until there are no longer swaps

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array [i + 1]
        # temp = array[i]
        # array[i], = array[i+1]
        # array[i+1] = temp
        #lines 14-17 are equivalent to line 19 below
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

my_array = [2,5,6,7,3,2,4,5]
p bubble_sort(my_array) == [2, 2, 3, 4, 5, 5, 6, 7]

# notes
# bubble sort is bad at scaling, the larger the input we see an increase in the running time of the algorithm
# time O(n^2)
# space O(1) the sort is in place so we dont use additional memory

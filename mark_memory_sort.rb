def mark_sort(array)
  array_max = array.max
  array_min = array.min
  markings = [0] * (array_max - array_min + 1)

  array.each do |a|
    markings[a - array_min] += 1
  end

  result = []
   markings.length.times do |i|
     markings[i].times do
       result << i + array_min;
    end
  end

  result
end

p mark_sort([3,2,19,18,17])



# Steps

# Find the difference between the largest and the smallest integers (add + 1 to include all)
# We create an array that all 0's where its length == to the difference
# We go through our original array and add ones where we have a number i.e [2,4] == [1,0,1]
# We go over the array of 1s and 0s and if it has a one, we take the index and we add min and add it to our results

# Notes
# This method is fast fast but takes up a lot of memory, O(n)
Merge sort is all about divide and conquer
Sort the left half of a and then the right half and combine them

def merge_sort(arr)
  def merge(left_sorted, right_sorted)
    result = []
    l = 0
    r = 0

    loop do
      break if r >= right_sorted.length && l >= left_sorted.length

      if r >= right_sorted.length || (l < left_sorted.length && left_sorted[l] < right_sorted[r])
        result << left_sorted[l]
        l += 1
      else
        result << right_sorted[r]
        r += 1
      end
    end

    return result
  end

  def mergesort_iter(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length/2 - 1
    left_sorted = mergesort_iter(array_sliced[0..mid])
    right_sorted = mergesort_iter(array_sliced[mid+1..-1])
    return merge(left_sorted, right_sorted)

  end

  mergesort_iter(arr)

end



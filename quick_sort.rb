def quick_sort(array)
  return array if array.length <=1

  pivot = array.length/2
  pivot_value = array[pivot]
  array.delete_at(pivot)

  right_side = []
  left_side = []

  array.each do |x|
    if x <= pivot_value
      left_side << x
    else
      right_side << x
    end
  end

  return quick_sort(left_side) + [pivot_value] + quick_sort(right_side)
end

my_array = [5,4,3,2,1]
p quick_sort(my_array)



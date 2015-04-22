#Find the highest possible product of 3 integers in an array

###### GIVEN ######

  # array_of_integers
  # array_of_integers.length >= 3

###### Input | Output ######

  # input: array of integers
  # output: the highest product of 3 int

###### Key Points ######

  # What hapens if we have zero
  # What happens if we hve negative numbers

###### CODE #######

  # Pseudo
  # Sort the array
  # multiply the last 3 integers--save result
  # multiply the first 2 and the last integer -- save result
  # return highest result

  # lets work with a couple of possible arrays

  array_one = [-1,0,3,5,1] #=> 15
  array_two = [-10,-10,1,3,5] #=> 500
  array_three = [-4,0,5,1] #=>0

  def get_highest_product_of_three_int(array_of_integers)
    results = []
    array_of_integers.sort
    results << array_of_integers[0] * array_of_integers[1] * array_of_integers[-1]
    array_of_integers.reverse!
    results << array_of_integers[0] * array_of_integers[1] * array_of_integers[2]
    return results.max
  end

p get_highest_product_of_three_int(array_one) == 15
p get_highest_product_of_three_int(array_two) == 500
p get_highest_product_of_three_int(array_three) == 0

# notes
# O(nlgn) time O(n) space



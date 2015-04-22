# Array of integers and for each index you want product of all integers exept integers at that index

###### GIVEN ######

array_of_integers = [ 1, 7, 3, 4]

###### Input | Output ######

  # input: array of integers
  # output: product_of_integers = [84, 12, 28, 21]

###### Key Points ######

  # We do not want the product of the current index

###### CODE #######


  def get_product_integers(array_of_integers)

    results = []
    array_of_integers.each_with_index do |num1,index1|
      product = 1
      array_of_integers.each_with_index do |num2,index2|
        next if index1 == index2
        product *= num2
      end
      results << product
    end
    p results

  end

get_product_integers(array_of_integers)

# notes
# O(n**2) time O(n) space
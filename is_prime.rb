#-------------------------
# Solution 1
#-------------------------

def is_prime(num)

  return true if num == 2 || num == 1
  return false if num %2 == 0


  counter = 3
  while counter <= num
    if num/counter == 1
      return true
    end
    counter += 2
  end

end

p is_prime(2) == true
p is_prime(4) == false
p is_prime(5) == true
p is_prime(101) == true

#-------------------------
# Solution 2
#-------------------------

#   counter = 3
#   while counter < num
#     if num%counter == 0
#       return false
#     end
#     counter += 1
#   end
#   return true

# end

#-------------------------
# Solution 3
#-------------------------

# def isPrime?(num)
#   (2..Math.sqrt(num)).each { |i|
#   if num % i == 0 && i < num
#     return false
#   end
#   }
#   true
#   end
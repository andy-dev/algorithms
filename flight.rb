###### Input | Output ######

  # input - integer, flight length in minutes
  # output - array of movie length and returns true if two movies are viewable,exact time

###### Things to consider ######

  # users will watch two movies
  # users can not watch the same movie two times
  # optimize for runtime over memory
  # will equal exact flight length

####### Code ######

#brute force

def brute_fly_times(flight_length,array_movies)
  i = 0
  while i < array_movies.length
    j = i+1
    while j < array_movies.length
      return true if array_movies[i] + array_movies[j] == flight_length
      j += 1
    end
    i+=1
  end
  return false
end

array_movies = [120, 90, 100]
array_movies2 = [120, 90, 70, 70, 100, 250]
array_movies3 = [120, 95, 100, 75, 60, 250]

p brute_fly_times(190, array_movies) == true
p brute_fly_times(190, array_movies2) == true
p brute_fly_times(190, array_movies3) == false


# Complexity
# O(n2) time and O(1) space

####### Code ######

#Greedy

def flight_length(flight_length, array_movies)

  first_movie_index = 0
  next_movie_index = 1

  number_of_combinations = (array_movies.length).downto(1).inject(:*)/(((array_movies.length - 2).downto(1).inject(:*))*2)

  number_of_combinations.times do
    if array_movies[first_movie_index].to_i + array_movies[next_movie_index].to_i == flight_length
      return true
    else
      next_movie_index +=1
    end

    if next_movie_index == array_movies.length
      first_movie_index +=1
      next_movie_index = first_movie_index + 1
    end
  end
end


####### Driver Code ######

array_movies = [120, 90, 100]
array_movies2 = [120, 90, 100, 70, 60, 250]
array_movies3 = [120, 95, 100, 75, 60, 250]

p flight_length(190, array_movies) == true
p flight_length(190, array_movies2) == true
p flight_length(190, array_movies3) != true


# Complexity
# we go through the array once O(n) time and O(1) space? check


###### Code 3 Using a hash ######

   # def get_two_movies_to_fill_flight(array_movies, flight_length):

   #  movie_lengths_seen_hash = {}

   #  for first_movie_length in movie_lengths

   #    first_movie_length = array_movies[0]
   #    second_movie_length = array_movies[1]

   #    matching_second_movie_length = flight_length - first_movie_length

   #    if matching_second_movie_length in hash return true
   #    end

   #    movie_lengths_seen_hash[first_movie_length] = True

   #    return false


   #  return False


###### Driver Code ######

# array_movies = [120, 90, 100]
# array_movies2 = [120, 90, 100, 70, 60, 250]
# array_movies3 = [120, 95, 100, 75, 60, 250]

# p flight_length(190, array_movies) == true
# p flight_length(190, array_movies2) == true
# p flight_length(190, array_movies3) != true



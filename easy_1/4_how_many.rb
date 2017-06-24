# Write a method that counts the number of occurrences of each element in a given array.
# Once counted, print each element alongside the number of occurrences.

# Output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

### Notes ###

# create a second array of uniq values
# use the elements of the second array to count the number of occurences in the original array
# Store the elements and the count to a hash as a key value pair? OR
# puts the elements and the count using interpolation

def count_occurrences(ary)
  new_ary = ary.uniq
  new_ary.each { |e| puts "#{e} => #{ary.count(e)}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# Solution used the hash idea to store and later print the key value pairs

def count_occurrences_again(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

# My solution can also be done on 1 line:

def count_occurrences_thrice(ary)
  ary.uniq.each { |e| puts "#{e} => #{ary.count(e)}" }
end

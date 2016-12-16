i = 0
numbers = [ ]

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The number: "

#remember you can write this 2 other ways?
numbers.each {|num| puts num }

=begin
initialize the first value to i
create an empty array called numbers

  WHILE i is less than 6
    display the number and display the position the number is in the array
    add the ith number to the array

    increment the number by 1
    display the amount number in the array
    display the number and its spot in the array
  ENDWHILE

display a list of numbers in the array


Year Up empowers low-income young adults to go from poverty to professional careers in a single year.

=end
# Ex 33 #1
# website: https://learnrubythehardway.org/book/ex33.html
#Convert this while-loop to a function that you can call, and replace 6 in the test (i < 6) with a variable.



def repeat(input)
  # while i < 6
  i = 0
  numbers = [ ]
  for i in (1 .. input)
    puts "At the top i is #{i}"
    numbers.push(i)

    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The number: "
  numbers.each {|num| puts num }
end


  repeat(10)

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

input_file = ARGV.first #will take the first input given

def print_all(f) #define a method called print_all that takes a parameter 'f'
  puts f.read #read the content of f, method body
end #end of definition

def rewind(f) #defines a method called rewind that takes a parameter f
  f.seek(0) # method body that will
end

def print_a_line(line_count, f) #defines a method called print_a_line that takes two parameters
  puts "#{line_count}, #{f.gets.chomp}" #print a string that uses string interporlation to show line_count number and feta a number from user.
end

current_file = open(input_file) #opens the input_file listed in the terminal and makes it equal to current_file

puts "First let's print the whole file:\n" #put a string out to see the whole file.

print_all(current_file) 

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

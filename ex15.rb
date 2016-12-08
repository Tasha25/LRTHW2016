#argument value, and it is taking the first value in the array.
filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
#read is a function
print txt.read

print "Type the filename again: "
# something to note
# gets.chomp() = read ARGV first
# STDIN.gets.chomp() = read user's input

file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

txt.close()
txt_again.close()

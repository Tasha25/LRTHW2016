puts "*** BEGIN	- Run this block when the script starts.  ***"
BEGIN { puts "Tasha is the best!" }
if 5<10
  puts "true"
elsif
  puts "false"
end


puts "*** END	- Run this block when the script is done. ***"
END { puts "the end" }
if 5<10
  puts "true"
elsif
  puts "false"
end

puts "*** alias	- Create another name for a function.  ***"
	alias X Y

  def fun
    puts "Let's go have fun!"
  end

  alias friends fun

  fun
  friends


puts "*** and	- Logical and, but lower priority than &&. ***"
puts "Warm" and "Weather"

puts "*** begin	- Start a block, usually for exceptions.	begin end ***"


puts "*** break -	Break out of a loop right now. ***"
i = 0
while i < 5
  puts "#{i}"
  i+=1
  if i == 3
    puts "I am free"
    break
  else
    next
  end
end


puts "*** case -	Case style conditional, like an if.
 ***"
feelings = "sad"

case feelings
when "happy"
  puts "I am happy she is happy."
when "sad"
  puts "I am sad she is sad"
else
  puts "I do not know what to say"
end

puts "*** class	- Define a new class.	class X; end ***"


puts "*** def -	Define a new function.	def X(); end ***"


puts "*** defined? -	Is this class/function/etc. defined already? ***"
defined? Class == "constant"

def x; end
p defined?(x)

puts "*** do -	Create a block that maybe takes a parameter. ***"
	(0..10).each do |x| puts "#{x} is the number" end

puts "*** else	Else conditional. ***"
	if 5!=5
    puts "equal"
  else
    puts "not equal"
  end

puts "*** elsif -	Else if conditional	 ***"
if X; elsif Y; else; end

puts "*** end -	Ends blocks, functions, classes, everything. ***"
puts "*** ensure -	Run this code whether an exception happens or not.***"
def create_or_update_batch
  # this will opt to the method in the begin block
  @batch ||= begin
    BookBatch.create(book_batch.batch_attrs)
  end

  @batch.update
# functions to handle exceptions, and takes a single argument: the class/type of error that you want to rescue from
rescue
  raise_book_batch_error
 # Ensure is the last thing that will run no matter what.
ensure
  clean_up_orphaned_book_batches
end

puts "*** for	- For loop syntax. The .each syntax is preferred. ***"
for i in 0..5
   puts "Value of local variable is #{i}"
end

puts "*** if -	If conditional.  ***"
if true = true
  puts "The truth is all over the place"
end

puts "*** in - In part of for-loops. ***"
for i in 0..5
  if i <2 then
    next
  end
  puts "Value of local variable is #{i}"
end #will skip 0 and 1


puts "*** module -	Define a new module.	module X; end ***"
module Mod
  include Math
  CONST = 1
  def meth
    #  ...
  end
end
Mod.class              #=> Module
Mod.constants          #=> [:CONST, :PI, :E]
Mod.instance_methods   #=> [:meth]

puts "*** next -	Skip to the next element of a .each iterator.  ***"
	(0..5).each {|y| next puts "#{y}"}

puts "*** not	Logical not. But use ! instead.	not true == false
  ***"
not true == false
#=> true

puts "*** or - Logical or.	puts 'Hello' or 'Goodbye' ***"


puts "*** redo	- Rerun a code block exactly the same. ***"
	(0..5).each {|i| redo if i > 2}
(0..5).each do |i|
  puts i
  redo if i>2
  # This gets stuck at 3
end

puts "***rescue	- Run this code if an exception happens. ***"
def raise_exception
  puts 'I am before the raise.'
  raise 'An error has occured'
  puts 'I am after the raise'
end
raise_exception

puts "*** retry	- In a rescue clause, says to try the block again. ***"

  begin
    retries ||= 0
    puts "try ##{ retries }"
    raise "the roof"
  rescue
    retry if (retries += 1) < 3
  end

  # ... outputs the following:
  # try #0
  # try #1
  # try #2
puts "***  return - Returns a value from a function. Mostly optional.	return X  ***"
def test
   i = 100
   j = 200
   k = 300
return i, j, k
end
var = test
puts var

puts "*** self	The current object, class, or module.	defined?  ***"
 self == "self"

 class Post
   attr_accessor :title

   def replace_title(new_title)
     title = new_title #by not having self.title = new_title you will not have the new_title persists to the next method.
   end

   def print_title
     puts title
   end
 end

 pst = Post.new
 pst.title = "Cream of Broccoli"
 pst.replace_title("Cream of Spinach")
 pst.print_title
 # "Cream of Broccoli"

puts "*** super -	The parent class of this class.	super   ***"
class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end

t = Tandem.new(2)
puts t.gears
puts t.wheels
puts t.seats
b = Bicycle.new
puts b.gears
puts b.wheels
puts b.seats


puts "*** then	Can be used with if optionally.	  ***"
if true then
  puts "hi"
end

puts "*** undef	Remove a function definition from a class.  ***"
class Shape < ActiveRecord::Base
end

class Circle < Shape
end

class Square < Shape
  undefine_method :radius
end

puts "*** unless -	Inverse of if.  ***"
	unless false then puts "not" end

puts "*** until	Inverse of while, execute block as long as false  ***"
  $i = 0
  $num = 5

  until $i > $num  do
     puts("Inside the loop i = #$i" )
     $i +=1;
  end

puts "*** when -	Part of case conditionals.   ***"
 a = 7
  case a
  when 1..5
    "It's between 1 and 5"
  when 6
    "It's 6"
  when String
    "You passed a string"
  else
    "You gave me #{a} -- I have no idea what to do with that."
  end

puts "*** while	While loop.	 ***"

$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

puts "*** yield	Pause and transfer control to the code block.   ***"
def test
 puts "You are in the method"
 yield
 puts "You are again back to the method"
 yield
end
test {puts "You are in the block"}

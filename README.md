# LRTHW2016

## Timeline to get work done by December 15, 2016 is 4 chapters a day


## Some questions:

## Study Drills exercise 12
Problem: I am getting the wrong Answer
print "Give me some money:"
money = gets.chomp.to_f
print "10% of the money is #{money*0.10}"

Answer:  your script gives me back 10.34 in change
My answer: 10.340000000000002

## Study Drills Exercise 13
Problem, there is no gets.chomp in the code. <br/>
3. Change your script to use $stdin.gets.chomp everywhere that you have gets.chomp. You should use $stdin.gets.chomp from now on since the action gets.chomp has problems with ARGV.

4. Now that you are using $stdin.gets.chomp (see #3) you can add ARGV to your script to get something from the user. Don't over think this. Just use ARGV to get one thing, then $stdin.gets.chomp to get something else.

## Study Drills Exercise 14
Problem, need to come back to this. <br/>
3. There's too much repetition in this file. Use strings, formats, and escapes to print out line1, line2, and line3 with just one target.write() command instead of six.

## Study Drills Exercise 17
Problem, don't know how to do these drills. <br/>
1. This script is really annoying. There's no need to ask you before doing the copy, and it prints too much out to the screen. Try to make the script more friendly to use by removing features.

2. See how short you can make the script. I could make this one line long.

3. Notice at the end of the What You Should See I used something called cat? It's an old command that "con*cat*enates" files together, but mostly it's just an easy way to print a file to the screen. Type man cat to read about it.

4. Find out why you had to write out_file.close in the code.


## Question on ex24.rb
multiple variables secret_formula is not working in the code.

beans, jars, crates = secret_formula(start_point)
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end



##Some cool learnings:

Ex15
- you can type ri "File#open" or ri "Kernel#gets" to read more about the methods (?)

Ex16
* close -- Closes the file. Like File->Save.. in your editor.
* read -- Reads the contents of the file. You can assign the result to a variable.
* readline -- Reads just one line of a text file.
* truncate -- Empties the file. Watch out if you care about the file.
* write('stuff') -- Writes "stuff" to the file.


StudyDrills_1_to_9.md
* 12/7/16  - Chapter 1 - 4
* 12/8/16 - Chapter 5 - 9

StudyDrills_10_to_19.md
* 12/9/16 - Chapter 10 - 14
* 12/10/16 - Chapter 14 - 19

StudyDrills_20_to_29.md
* 12/11/16 - Chapter 20 - 24
* 12/12/16 - Chapter 25 - 29

StudyDrills_30_to_35.md
* 12/13/16 - Chapter 30 - 34
* 12/14/16 - Chapter 35

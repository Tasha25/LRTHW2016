puts "I am thinking of a number 1 to 5. Can you guess it?"
puts "You can pick yes, no, and why?"

print  = "> "

answer = $stdin.gets.chomp

if answer == "yes"
  puts "Well, what number are you going to guess?"
  number = $stdin.gets.chomp.to_i
  if number >= 1 && number <= 3
    puts "You win a prize! A hug from me."
  elsif number = 4
    puts "You get a firm handshake 4 times"
  elsif number = 5
    puts "You get 5 kisses on your cheeck."
  else
    puts "You are playing games."
  end

elsif answer == "no"
  puts "That sucks, you lost a big prize."

elsif answer == "why"
  puts "Why what? Just play the game."

else
  puts "You are a fool you should have played the game with me."
end

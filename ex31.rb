puts "You enter a dark room with two doors. Do you go through door #1,door #2 , door #3 ?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake. "
  puts "2. Scream at the bear"
  puts "3. Hug the bear "


  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "the bear eats your face off. Good job!"
    elseif bear == "2"
    puts "The bear eats your legs off. Good job!"
    elseif bear == "3"
    puts "The bear scratches your back."
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1"  || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

  elseif door == "3"
  puts "You are looking at the duck!"
  puts "1. Give the duck crackers."
  puts "2. Shoot the duck to make soup"
  puts "3. Quack at the duck."

  print "> "
  duck_response = $stdin.gets.chomp

  if duck_response = "1"
    puts " Thank you for feeding the duck...It is going to die!"
  elsif duck_response = "2"
    puts "Thank you for shooting the duck. You have decreased the duck population."
  else duck_response = "3"
    puts "What are you doing?"
  end
end



else
  puts "You stumble around and fall on a knife and die. Good job!"
end

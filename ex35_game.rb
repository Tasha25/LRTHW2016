def chemistry
  puts "You picked #{@question.capitalize}."
  chemistry_bank
end

def chemistry_bank
  array_chemistry = ["What is the first element on the periodic table?", "What is the centre of an atom called?", "True or false? Acids have a pH level below 7.", "What is the main gas found in the air we breathe?", "True or false? An electron carries a positive charge?", "Is sodium hydroxide (NaOH) an acid or base?"]

  bank_chemistry = {"What is the first element on the periodic table?" => "Hydrogen", "What is the centre of an atom called?" => "A nucleus", "True or false? Acids have a pH level below 7." => "True", "What is the main gas found in the air we breathe?" => "False", "True or false? An electron carries a positive charge?" => "False", "Is sodium hydroxide (NaOH) an acid or base?" => "Base"}


  sample_question = array_chemistry.sample
  puts sample_question
  print "> "

  # user answers question
  answer = $stdin.gets.chomp

  if answer == bank_chemistry[sample_question]
    puts "Correct, you get 10 points."
    game_points "correct"
  else answer == !bank_chemistry[sample_question]
    puts "Incorrect, the computer gets 10 points."
    game_points "incorrect"
  end

end

def mathematics
  puts "You picked #{@question.capitalize}."
  mathematics_bank
end

def mathematics_bank
  array_mathematics = ["What is the first element on the periodic table?", "What is the centre of an atom called?", "True or false? Acids have a pH level below 7.", "What is the main gas found in the air we breathe?", "True or false? An electron carries a positive charge?", "Is sodium hydroxide (NaOH) an acid or base?"]

  bank_mathematics = {"He was a Greek mathematician whose school got burned down" => "Pythagoras", "He worked for King Hieron. He conducted experiments to figure out if the king's crown had gold and silver in it." => "Archimedes", "This mathematician is famous for experiments involving light, prisms, and the eye." => "Isaac Newton", "This Italian mathematician made telescopes and introduced the scientific method." => "Galileo", "He was an English mathematician who was born on Christmas Day." => "Isacc Newton"}


  sample_question = array_mathematics.sample
  puts sample_question
  print "> "

  # user answers question
  answer = $stdin.gets.chomp

  if answer == bank_mathematics[sample_question]
    puts "Correct, you get 10 points."
    game_points "correct"
  else answer == !bank_mathematics[sample_question]
    puts "Incorrect, the computer gets 10 points."
    game_points "incorrect"
  end

end

def politics
  puts "You picked #{@question.capitalize}."
  puts "Are you ready for your question?"

  print "Yes or No > "
  ready = $stdin.gets.chomp.downcase

  if ready == "yes" || "y"
    politics_bank
  else
    puts "I will wait when you are ready."
  end
end

def politics_bank
  array_politics = ["Who is the president of the United States?", "Who is the vice-president of the United States?", "Who is the secretary of the United States", "Who was the first Roman Catholic to be Vice President of the United States of America?", "Who was the first First Lady to be elected to public office?", "How many US Supreme Court justices are there?"]

  bank_politics = {"Who is the president of the United States?" => "Barak Obama", "Who is the vice-president of the United States?" => "Joe Biden", "Who is the secretary of the United States" => "John Kerry", "Who was the first Roman Catholic to be Vice President of the United States of America?" => "Joe Biden", "Who was the first First Lady to be elected to public office?" => "Hillary Clinton", "How many US Supreme Court justices are there?" => "9"}


  sample_question = array_politics.sample
  puts sample_question
  print "> "

  # user answers question
  answer = $stdin.gets.chomp

  if answer == bank_politics[sample_question]
    puts "Correct, you get 10 points."
    game_points "correct"
    # start
  else answer == !bank_politics[sample_question]
    puts "Incorrect, the computer gets 10 points."
    game_points "incorrect"
    # start
  end

end

def init
  @user_points_total = 0
  @computer_points_total = 0
  start
end

def start

  puts "Pick the category you would like a question from: Politics, Mathematics, or Chemistry"

  print "> "
  @question = $stdin.gets.chomp.downcase

  if @question == "politics"
    politics
  elsif @question == "mathematics"
    mathematics
  elsif @question == "chemistry"
    chemistry
  else
    puts "I don't understand your choice."
  end

end


def game_win
  # if @user_points_total || @computer_points_total > 0
  if @user_points_total == 50
    puts "You won!"
    return
  elsif
    @computer_points_total == 50
    puts "Computer won!"
    return
  elsif
    puts "The first to 50 win! Keep playing to win"
   else
    "There is a bug."
  end
   start
end


def game_points(points)

  if points == "correct"
    @user_points_total = @user_points_total + 10
    puts "You have #{@user_points_total} points."
    puts "The computer has #{@computer_points_total} points."
    game_win
  elsif points == "incorrect"
    puts "points = #{points} in else @incorrect"
    @computer_points_total = @computer_points_total + 10
    puts "You have #{@user_points_total} points."
    puts "The computer has #{@computer_points_total} points."
    game_win
  else
    puts "There is an error."
  end

end

init

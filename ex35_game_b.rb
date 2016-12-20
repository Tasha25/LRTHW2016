class GamePoints
  def correct
    puts "points = #{points} in if @correct"
    @user_points_total = @user_points_total + 10
    puts "You have #{@user_points_total} points."
    puts "The computer has #{@computer_points_total} points."

    if @user_points_total || @computer_points_total > 0
      if @user_points_total > 50
        puts "You won!"
      elsif
        @computer_points_total > 50
        puts "Computer won!"
      else
        puts "Keep playing to win"
        start
      end
      start
    end

    def incorrect
      puts "points = #{points} in else @incorrect"
      @computer_points_total = @computer_points_total + 10
      puts "You have #{@user_points_total} points."
      puts "The computer has #{@computer_points_total} points."

      if @user_points_total || @computer_points_total > 0
        if @user_points_total > 50
          puts "You won!"
        elsif
          @computer_points_total > 50
          puts "Computer won!"
        else
          puts "Keep playing to win"
          start
        end
        start
      end
    end
  end
end

class Game < GamePoints
  def politics
    puts "You picked #{@question.capitalize}."
    puts "Are you ready for you question?"

    print "Yes or No > "
    ready = $stdin.gets.chomp.downcase

    if ready == "yes"
      politics_bank
    else
      puts "I will wait when you are ready."
    end
  end

  def mathematics
    puts "You picked #{@question.capitalize}."
  end

  def chemistry
    puts "You picked #{@question.capitalize}."
  end


  def politics_bank
    array_politics = ["Who is the president of the United States?", "Who is the vice-president of the United States?", "Who is the secretary of the United States", "Who was the first Roman Catholic to be Vice President of the United States of America?", "Who was the first First Lady to be elected to public office?", "How many US Supreme Court justices are there?"]

    bank_politics = {"Who is the president of the United States?" => "Barak Obama", "Who is the vice-president of the United States?" => "Joe Biden", "Who is the secretary of the United States" => "John Kerry", "Who was the first Roman Catholic to be Vice President of the United States of America?" => "Joe Biden", "Who was the first First Lady to be elected to public office?" => "Hillary Clinton", "How many US Supreme Court justices are there?" => "9"}

    # pick a random question from bank
    # print question out on screen

    sample_question = array_politics.sample
    puts sample_question
    print "> "

    # user answers question
    answer = $stdin.gets.chomp

    if answer == bank_politics[sample_question]
      puts "You get 10 points."
      GamePoints.correct
      # start
    else answer == !bank_politics[sample_question]
      puts "The computer gets 10 points."
      GamePoints.incorrect
      # start
    end

  end

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

def init
  @user_points_total = 0
  @computer_points_total = 0
  start
end
